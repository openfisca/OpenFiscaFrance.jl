# OpenFisca -- A versatile microsimulation software
# By: OpenFisca Team <contact@openfisca.fr>
#
# Copyright (C) 2011, 2012, 2013, 2014, 2015 OpenFisca Team
# https://github.com/openfisca
#
# This file is part of OpenFisca.
#
# OpenFisca is free software; you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# OpenFisca is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


@define_formula(aide_logement, famille_definition, Float32, requested_period_default_value,
  label = "Aide au logement (tout type)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(apl, period)
  @calculate(als, period)
  @calculate(alf, period)
  return period, max(max(apl, als), alf)
end


@define_formula(aide_logement_abattement_chomage_indemnise, individu_definition, Float32, requested_period_default_value,
  label = "Montant de l'abattement pour personnes au chômage indemnisé (R351-13 du CCH)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  two_years_ago = YearPeriod(firstdayofyear(period.start)) - Year(2)
  chomage_net_m_1 = calculate(simulation, "chonet", period - Month(1))
  chomage_net_m_2 = calculate(simulation, "chonet", period - Month(2))
  revenus_activite_pro = calculate(simulation, "sal", two_years_ago)
  taux_abattement = legislation_at(simulation, period.start)["al"]["ressources"]["abattement_chomage_indemnise"]
  abattement = ((chomage_net_m_1 .> 0) & (chomage_net_m_2 .> 0)) .* taux_abattement .* revenus_activite_pro
  params_abattement_frais_pro = legislation_at(simulation, period.start)["ir"]["tspr"]["abatpro"]
  abattement = round((1 - params_abattement_frais_pro["taux"]) .* abattement)
  return period, abattement
end


@define_formula(aide_logement_base_ressources, famille_definition, Float32, requested_period_default_value,
  label = "Base ressources des allocations logement",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  mois_precedent = period - Month(1)
  last_day_reference_year = stop_date(YearPeriod(firstdayofyear(period.start)) - Year(2))
  base_ressources_defaut = calculate(simulation, "aide_logement_base_ressources_defaut", period)
  base_ressources_eval_forfaitaire = calculate(simulation, "aide_logement_base_ressources_eval_forfaitaire", period)
  @calculate(concub, period)
  aah_holder = calculate(simulation, "aah", mois_precedent)
  aah = sum_person_in_entity(aah_holder, get_entity(variable), period, [CHEF, PART])
  age_holder = calculate(simulation, "age", period)
  age = split_person_by_role(age_holder, get_entity(variable), period, [CHEF, PART])
  smic_horaire_brut_n2 = legislation_at(simulation, last_day_reference_year)["cotsoc"]["gen"]["smic_h_b"]
  sal_holder = calculate(simulation, "sal", period - Month(1))
  somme_salaires = sum_person_in_entity(sal_holder, get_entity(variable), period, [CHEF, PART])
  plafond_eval_forfaitaire = 1015 * smic_horaire_brut_n2
  plafond_salaire_jeune_isole = legislation_at(simulation, period.start)["al"]["ressources"]["dar_8"]
  plafond_salaire_jeune_couple = legislation_at(simulation, period.start)["al"]["ressources"]["dar_9"]
  plafond_salaire_jeune = !concub .* plafond_salaire_jeune_isole .+ concub .* plafond_salaire_jeune_couple
  neutral_jeune = ((age[CHEF] .< 25) | (concub & (age[PART] .< 25)))
  neutral_jeune &= somme_salaires .< plafond_salaire_jeune
  eval_forfaitaire = base_ressources_defaut .<= plafond_eval_forfaitaire
  eval_forfaitaire &= base_ressources_eval_forfaitaire .> 0
  eval_forfaitaire &= aah .== 0
  eval_forfaitaire &= !neutral_jeune
  ressources = (base_ressources_eval_forfaitaire .* eval_forfaitaire .+ base_ressources_defaut .* !eval_forfaitaire)
  Pr = legislation_at(simulation, period.start)["al"]["ressources"]
  etu_holder = calculate(simulation, "etu", period)
  boursier_holder = calculate(simulation, "boursier", period)
  etudiant = split_person_by_role(etu_holder, get_entity(variable), period, [CHEF, PART])
  boursier = split_person_by_role(boursier_holder, get_entity(variable), period, [CHEF, PART])
  montant_plancher_ressources = max(0, etudiant[CHEF] .* Pr["dar_4"] .- boursier[CHEF] .* Pr["dar_5"])
  ressources = max(ressources, montant_plancher_ressources)
  ressources = ceil(ressources ./ 100) * 100
  return period, ressources
end


@define_formula(aide_logement_base_ressources_defaut, famille_definition, Float32, requested_period_default_value,
  label = "Base ressource par défaut des allocations logement",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  two_years_ago = YearPeriod(firstdayofyear(period.start)) - Year(2)
  br_pf_i_holder = calculate(simulation, "br_pf_i", period)
  rev_coll_holder = calculate(simulation, "rev_coll", two_years_ago)
  rev_coll = sum_person_in_entity(rev_coll_holder, get_entity(variable), period)
  @calculate(biact, period)
  Pr = legislation_at(simulation, period.start)["al"]["ressources"]
  br_pf_i = split_person_by_role(br_pf_i_holder, get_entity(variable), period, [CHEF, PART])
  abattement_chomage_indemnise_holder = calculate(simulation, "aide_logement_abattement_chomage_indemnise", period)
  abattement_chomage_indemnise = sum_person_in_entity(abattement_chomage_indemnise_holder, get_entity(variable), period, [CHEF, PART])
  ressources = br_pf_i[CHEF] .+ br_pf_i[PART] .+ rev_coll .- abattement_chomage_indemnise
  abattement_double_activite = biact .* Pr["dar_1"]
  result = max(ressources .- abattement_double_activite, 0)
  return period, result
end


@define_formula(aide_logement_base_ressources_eval_forfaitaire, famille_definition, Float32, requested_period_default_value,
  label = "Base ressources en évaluation forfaitaire des aides au logement (R351-7 du CCH)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  sal_holder = calculate(simulation, "sal", period - Month(1))
  sal = sum_person_in_entity(sal_holder, get_entity(variable), period, [CHEF, PART])
  params_abattement = legislation_at(simulation, period.start)["ir"]["tspr"]["abatpro"]
  somme_salaires_mois_precedent = 12 .* sal
  montant_abattement = round(min(max(params_abattement["taux"] .* somme_salaires_mois_precedent, params_abattement["min"]), params_abattement["max"]))
  result = max(0, somme_salaires_mois_precedent .- montant_abattement)
  return period, result
end


@define_formula(aide_logement_montant, famille_definition, Float32, requested_period_default_value,
  label = "Montant des aides au logement net de CRDS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aide_logement_montant_brut, period)
  @calculate(crds_logement, period)
  montant = round(aide_logement_montant_brut .+ crds_logement, 2)
  return period, montant
end


@define_formula(aide_logement_montant_brut, famille_definition, Float32, requested_period_default_value,
  label = "Formule des aides aux logements en secteur locatif en montant brut avant CRDS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(concub, period)
  @calculate(aide_logement_base_ressources, period)
  statut_occupation_holder = calculate(simulation, "statut_occupation", period)
  loyer_holder = calculate(simulation, "loyer", period)
  coloc_holder = calculate(simulation, "coloc", period)
  logement_chambre_holder = calculate(simulation, "logement_chambre", period)
  @calculate(al_pac, period)
  @calculate(enceinte_fam, period)
  @calculate(zone_apl_famille, period)
  nat_imp_holder = calculate(simulation, "nat_imp", first_day(YearPeriod(period.start)))
  al = legislation_at(simulation, period.start)["al"]
  pfam_n_2 = legislation_at(simulation, (period.start - Year(2)))["fam"]
  couple = (concub | enceinte_fam)
  personne_seule = !couple
  statut_occupation = entity_to_person(statut_occupation_holder, period)
  statut_occupation = single_person_in_entity(statut_occupation, get_entity(variable), period, CHEF)
  loyer = entity_to_person(loyer_holder, period)
  loyer = single_person_in_entity(loyer, get_entity(variable), period, CHEF)
  zone_apl = zone_apl_famille
  coloc = any_person_in_entity(coloc_holder, get_entity(variable), period)
  chambre = any_person_in_entity(logement_chambre_holder, get_entity(variable), period)
  nat_imp = entity_to_person(nat_imp_holder, period)
  nat_imp = any_person_in_entity(nat_imp, get_entity(variable), period)
  loca = (3 .<= statut_occupation) & (5 .>= statut_occupation)
  acce = statut_occupation .== 1
  L1 = round((statut_occupation .== 5) .* loyer .* 2 ./ 3 .+ (statut_occupation .!= 5) .* loyer, 2)
  taux_loyer_plafond = ((!coloc & !chambre) .* 1 .+ chambre .* al["loyers_plafond"]["chambre"] .+ !chambre .* coloc .* al["loyers_plafond"]["colocation"])
  loyer_plafond_personne_seule = (((personne_seule .* (al_pac .== 0)) .!= 0) | chambre)
  loyer_plafond_famille = !loyer_plafond_personne_seule .* (al_pac .> 0)
  loyer_plafond_couple = (!(loyer_plafond_famille .!= 0) & !loyer_plafond_personne_seule)
  z1 = al["loyers_plafond"]["zone1"]
  z2 = al["loyers_plafond"]["zone2"]
  z3 = al["loyers_plafond"]["zone3"]
  Lz1 = (loyer_plafond_personne_seule .* z1["L1"] .+ loyer_plafond_couple .* z1["L2"] .+ loyer_plafond_famille .* (z1["L3"] .+ (al_pac .> 1) .* (al_pac .- 1) .* z1["L4"]))
  Lz2 = (loyer_plafond_personne_seule .* z2["L1"] .+ loyer_plafond_couple .* z2["L2"] .+ loyer_plafond_famille .* (z2["L3"] .+ (al_pac .> 1) .* (al_pac .- 1) .* z2["L4"]))
  Lz3 = (loyer_plafond_personne_seule .* z3["L1"] .+ loyer_plafond_couple .* z3["L2"] .+ loyer_plafond_famille .* (z3["L3"] .+ (al_pac .> 1) .* (al_pac .- 1) .* z3["L4"]))
  L2 = Lz1 .* (zone_apl .== 1) .+ Lz2 .* (zone_apl .== 2) .+ Lz3 .* (zone_apl .== 3)
  L2 = round(L2 .* taux_loyer_plafond, 2)
  L = min(L1, L2)
  P_fc = al["forfait_charges"]
  C = (!coloc .* (P_fc["fc1"] .+ al_pac .* P_fc["fc2"]) .+ coloc .* ((personne_seule .* 0.5 .+ couple) .* P_fc["fc1"] .+ al_pac .* P_fc["fc2"]))
  E = L .+ C
  R = aide_logement_base_ressources
  rmi = al["rmi"]
  R1 = (al["R1"]["taux1"] .* rmi .* personne_seule .* (al_pac .== 0) .+ al["R1"]["taux2"] .* rmi .* couple .* (al_pac .== 0) .+ al["R1"]["taux3"] .* rmi .* (al_pac .== 1) .+ al["R1"]["taux4"] .* rmi .* (al_pac .>= 2) .+ al["R1"]["taux5"] .* rmi .* (al_pac .> 2) .* (al_pac .- 2))
  bmaf = pfam_n_2["af"]["bmaf"]
  R2 = (al["R2"]["taux4"] .* bmaf .* (al_pac .>= 2) .+ al["R2"]["taux5"] .* bmaf .* (al_pac .> 2) .* (al_pac .- 2))
  Ro = round(12 .* (R1 .- R2) .* (1 - al["autres"]["abat_sal"]))
  Rp = max(0, R .- Ro)
  Po = max(al["pp"]["taux"] .* E, al["pp"]["min"])
  TF = (al["TF"]["taux1"] .* personne_seule .* (al_pac .== 0) .+ al["TF"]["taux2"] .* couple .* (al_pac .== 0) .+ al["TF"]["taux3"] .* (al_pac .== 1) .+ al["TF"]["taux4"] .* (al_pac .== 2) .+ al["TF"]["taux5"] .* (al_pac .== 3) .+ al["TF"]["taux6"] .* (al_pac .>= 4) .+ al["TF"]["taux7"] .* (al_pac .> 4) .* (al_pac .- 4))
  L_Ref = (z2["L1"] .* personne_seule .* (al_pac .== 0) .+ z2["L2"] .* couple .* (al_pac .== 0) .+ z2["L3"] .* (al_pac .>= 1) .+ z2["L4"] .* (al_pac .> 1) .* (al_pac .- 1))
  RL = L ./ L_Ref
  TL = max(max(0, al["TL"]["taux2"] .* (RL .- 0.45)), al["TL"]["taux3"] .* (RL .- 0.75) .+ al["TL"]["taux2"] * (0.75 - 0.45))
  Tp = TF .+ TL
  PP = Po .+ Tp .* Rp
  al_loc = max(0, E .- PP) .* loca
  al_loc = al_loc .* (al_loc .>= al["autres"]["nv_seuil"])
  al_acc = 0 .* acce
  al = al_loc .+ al_acc
  return period, al
end


@define_formula(al_pac, famille_definition, Float32, requested_period_default_value,
  label = "Nombre de personne à charge au sens des allocations logement",
) do simulation, variable, period
  """site de la CAF en 2011:

  # Enfant à charge
  Vous assurez financièrement l'entretien et asez la responsabilité
  affective et éducative d'un enfant, que vous ayez ou non un lien de
  parenté avec lui. Il est reconnu à votre charge pour le versement
  des aides au logement jusqu'au mois précédent ses 21 ans.
  Attention, s'il travaille, il doit gagner moins de 836,55 € par mois.

  # Parents âgés ou infirmes
  Sont à votre charge s'ils vivent avec vous et si leurs revenus 2009
  ne dépassent pas 10 386,59 € :
  * vos parents ou grand-parents âgés de plus de 65 ans ou d'au moins
  60 ans, inaptes au travail, anciens déportés,
  * vos proches parents infirmes âgés de 22 ans ou plus (parents,
  grand-parents, enfants, petits enfants, frères, soeurs, oncles,
  tantes, neveux, nièces).
  """
  period = MonthPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", period)
  nbR_holder = calculate(simulation, "nbR", YearPeriod(firstdayofyear(period.start)))
  D_enfch = legislation_at(simulation, period.start)["al"]["autres"]["D_enfch"]
  af = legislation_at(simulation, period.start)["fam"]["af"]
  cf = legislation_at(simulation, period.start)["fam"]["cf"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  nbR = entity_to_person(nbR_holder, period, VOUS)
  al_nbinv = sum_person_in_entity(nbR, get_entity(variable), period)
  age1 = af["age1"]
  age2 = cf["age2"]
  al_nbenf = nb_enf(age, smic55, age1, age2)
  al_pac = D_enfch .* (al_nbenf .+ al_nbinv)
  return period, al_pac
end


@define_formula(alf, famille_definition, Float32, requested_period_default_value,
  label = "Allocation logement familiale",
  url = "http://vosdroits.service-public.fr/particuliers/F13132.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aide_logement_montant, period)
  @calculate(al_pac, period)
  @calculate(statut_occupation_famille, period)
  @calculate(proprietaire_proche_famille, period)
  statut_occupation = statut_occupation_famille
  return period, (al_pac .>= 1) .* (statut_occupation .!= 3) .* !proprietaire_proche_famille .* aide_logement_montant
end


@define_formula(als, famille_definition, Float32, requested_period_default_value,
  label = "Allocation logement sociale",
  url = "http://vosdroits.service-public.fr/particuliers/F1280.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(als_nonet, period)
  @calculate(alset, period)
  result = (als_nonet .+ alset)
  return period, result
end


@define_formula(als_nonet, famille_definition, Float32, requested_period_default_value,
  label = "Allocation logement sociale (non étudiante)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aide_logement_montant, period)
  @calculate(al_pac, period)
  etu_holder = calculate(simulation, "etu", period)
  @calculate(statut_occupation_famille, period)
  @calculate(proprietaire_proche_famille, period)
  statut_occupation = statut_occupation_famille
  etu = split_person_by_role(etu_holder, get_entity(variable), period, [CHEF, PART])
  return period, (al_pac .== 0) .* (statut_occupation .!= 3) .* !proprietaire_proche_famille .* !(etu[CHEF] | etu[PART]) .* aide_logement_montant
end


@define_formula(alset, famille_definition, Float32, requested_period_default_value,
  label = "Allocation logement sociale (étudiante)",
  url = "https://www.caf.fr/actualites/2012/etudiants-tout-savoir-sur-les-aides-au-logement",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aide_logement_montant, period)
  @calculate(al_pac, period)
  etu_holder = calculate(simulation, "etu", period)
  statut_occupation_holder = calculate(simulation, "statut_occupation", period)
  @calculate(proprietaire_proche_famille, period)
  statut_occupation = entity_to_person(statut_occupation_holder, period)
  statut_occupation = single_person_in_entity(statut_occupation, get_entity(variable), period, CHEF)
  etu = split_person_by_role(etu_holder, get_entity(variable), period, [CHEF, PART])
  return period, (al_pac .== 0) .* (statut_occupation .!= 3) .* !proprietaire_proche_famille .* (etu[CHEF] | etu[PART]) .* aide_logement_montant
end


@define_formula(apl, famille_definition, Float32, requested_period_default_value,
  label = " Aide personnalisée au logement",
  url = "(u'http://vosdroits.service-public.fr/particuliers/F12006.xhtml',)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aide_logement_montant, period)
  statut_occupation_holder = calculate(simulation, "statut_occupation", period)
  statut_occupation = entity_to_person(statut_occupation_holder, period)
  statut_occupation = single_person_in_entity(statut_occupation, get_entity(variable), period, CHEF)
  return period, aide_logement_montant .* (statut_occupation .== 3)
end


@define_formula(crds_logement, famille_definition, Float32, requested_period_default_value,
  label = "CRDS des allocations logement",
  url = "http://vosdroits.service-public.fr/particuliers/F17585.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aide_logement_montant_brut, period)
  crds = legislation_at(simulation, period.start)["fam"]["af"]["crds"]
  return period, -aide_logement_montant_brut * crds
end


@define_formula(statut_occupation_famille, famille_definition, Int16, entity_to_entity_period_value,
  label = "Statut d'occupation de la famille",
  values = [
    "Non renseigné" => 0,
    "Accédant à la propriété" => 1,
    "Propriétaire (non accédant) du logement" => 2,
    "Locataire d'un logement HLM" => 3,
    "Locataire ou sous-locataire d'un logement loué vide non-HLM" => 4,
    "Locataire ou sous-locataire d'un logement loué meublé ou d'une chambre d'hôtel" => 5,
    "Logé gratuitement par des parents, des amis ou l'employeur" => 6,
  ],
) do simulation, variable, period
  @calculate(statut_occupation_individu, period, accept_other_period = true)
  return period, single_person_in_entity(statut_occupation_individu, get_entity(variable), CHEF)
end


@define_formula(statut_occupation_individu, individu_definition, Int16, entity_to_entity_period_value,
  label = "Statut d'occupation de l'individu",
  values = [
    "Non renseigné" => 0,
    "Accédant à la propriété" => 1,
    "Propriétaire (non accédant) du logement" => 2,
    "Locataire d'un logement HLM" => 3,
    "Locataire ou sous-locataire d'un logement loué vide non-HLM" => 4,
    "Locataire ou sous-locataire d'un logement loué meublé ou d'une chambre d'hôtel" => 5,
    "Logé gratuitement par des parents, des amis ou l'employeur" => 6,
  ],
) do simulation, variable, period
  @calculate(statut_occupation, period, accept_other_period = true)
  return period, entity_to_person(statut_occupation)
end


@define_formula(zone_apl, menage_definition, Int16, requested_period_last_value,
  cell_default = 2,
  label = "Zone APL",
  values = [
    "Non renseigné" => 0,
    "Zone 1" => 1,
    "Zone 2" => 2,
    "Zone 3" => 3,
  ],
) do simulation, variable, period
  @calculate(depcom, period)
  return period, [
    get(zone_apl_by_depcom, depcom_cell, 2)
    for depcom_cell in depcom
  ]
end

zone_apl_by_depcom = nothing

function preload_zone_apl()
  global zone_apl_by_depcom
  if zone_apl_by_depcom === nothing
    module_dir = Pkg.dir("OpenFiscaFrance")
    array = readcsv(joinpath(module_dir, "assets/apl/20110914_zonage.csv"), String)
    zone_apl_by_depcom = [
      # Keep only first char of Zonage column because of 1bis value considered equivalent to 1.
      depcom => Convertible(string(zone_apl_string[1])) |> input_to_int |> to_value
      for (depcom, zone_apl_string) in zip(array[2:end, 1], array[2:end, 5])
    ]
    commune_depcom_by_subcommune_depcom = JSON.parsefile(
      joinpath(module_dir, "assets/apl/commune_depcom_by_subcommune_depcom.json"))
    for (subcommune_depcom, commune_depcom) in commune_depcom_by_subcommune_depcom
      zone_apl_by_depcom[subcommune_depcom] = zone_apl_by_depcom[commune_depcom]
    end
  end
end


@define_formula(zone_apl_famille, famille_definition, Int16, entity_to_entity_period_value,
  label = "Zone apl de la famille",
  values = [
    "Non renseigné" => 0,
    "Zone 1" => 1,
    "Zone 2" => 2,
    "Zone 3" => 3,
  ],
) do simulation, variable, period
  @calculate(zone_apl_individu, period, accept_other_period = true)
  return period, single_person_in_entity(zone_apl_individu, get_entity(variable), CHEF)
end


@define_formula(zone_apl_individu, individu_definition, Int16, entity_to_entity_period_value,
  label = "Zone apl de la personne",
  values = [
    "Non renseigné" => 0,
    "Zone 1" => 1,
    "Zone 2" => 2,
    "Zone 3" => 3,
  ],
) do simulation, variable, period
  @calculate(zone_apl, period, accept_other_period = true)
  return period, entity_to_person(zone_apl)
end
