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


@define_formula(ape, famille_definition, Float32, requested_period_default_value,
  label = "Allocation parentale d'éducation",
  stop_date = Date(2004, 1, 1),
  url = "http://fr.wikipedia.org/wiki/Allocation_parentale_d'%C3%A9ducation_en_France",
) do simulation, variable, period
  "L'allocation de base de la paje n'est pas cumulable avec le complément familial"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(apje_temp, period)
  @calculate(ape_temp, period)
  @calculate_add(cf_temp, period)
  ape = (apje_temp .< ape_temp) .* (cf_temp .< ape_temp) .* ape_temp
  return period, round(ape, 2)
end


@define_formula(ape_temp, famille_definition, Float32, requested_period_default_value,
  label = "Allocation parentale d'éducation",
  stop_date = Date(2004, 1, 1),
  url = "http://fr.wikipedia.org/wiki/Allocation_parentale_d'%C3%A9ducation_en_France",
) do simulation, variable, period
  """Allocation parentale d'éducation
  'fam'

  L’allocation parentale d’éducation s’adresse aux parents qui souhaitent arrêter ou
  réduire leur activité pour s’occuper de leurs jeunes enfants, à condition que ceux-ci
  soient nés avant le 01/01/2004. En effet, pour les enfants nés depuis cette date,
  dans le cadre de la Prestation d’Accueil du Jeune Enfant, les parents peuvent bénéficier
  du « complément de libre choix d’activité. »

  Les personnes en couple peuvent toutes deux bénéficier de l’APE à taux plein, mais pas en même temps. En revanche,
  elles peuvent cumuler deux taux partiels, à condition que leur total ne dépasse pas le montant du taux plein.

  TODO: cumul,  adoption, triplés,
  Cumul d'allocations : Cette allocation n'est pas cumulable pour un même ménage avec
  - une autre APE (sauf à taux partiel),
  - ou l'allocation pour jeune enfant (APJE) versée à partir de la naissance,
  - ou le complément familial,
  - ou l'allocation d’adulte handicapé (AAH).
  Enfin, il est à noter que cette allocation n’est pas cumulable avec :
  - une pension d’invalidité ou une retraite ;
  - des indemnités journalières de maladie, de maternité ou d’accident du travail ;
  - des allocations chômage. Il est tout de même possible de demander aux ASSEDIC la suspension de ces dernières pour
    percevoir l’APE.

  L'allocation parentale d'éducation n'est pas soumise à condition de ressources, sauf l’APE à taux partiel pour les
  professions non salariées.
  """
  period = YearPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", accept_other_period = true)
  @calculate(inactif, period)
  @calculate(partiel1, period)
  @calculate(partiel2, period)
  P = legislation_at(simulation, period.start)["fam"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  elig = (nb_enf(age, smic55, 0, P["ape"]["age"] - 1) .>= 1) & (nb_enf(age, smic55, 0, P["af"]["age2"]) .>= 2)
  ape = elig .* (inactif .* P["ape"]["tx_inactif"] .+ partiel1 .* P["ape"]["tx_50"] .+ partiel2 .* P["ape"]["tx_80"])
  return period, 12 .* ape
end


@define_formula(apje, famille_definition, Float32, requested_period_default_value,
  label = "Allocation pour le jeune enfant",
  stop_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F2552.xhtml",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(apje_temp, period)
  @calculate(ape_temp, period)
  @calculate_add(cf_temp, period)
  apje = (cf_temp .< apje_temp) .* (ape_temp .< apje_temp) .* apje_temp
  return period, round(apje, 2)
end


@define_formula(apje_temp, famille_definition, Float32, requested_period_default_value,
  label = "Allocation pour le jeune enfant",
  stop_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F2552.xhtml",
) do simulation, variable, period
  "Allocation pour jeune enfant"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(br_pf, MonthPeriod(firstdayofmonth(period.start)))
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", MonthPeriod(firstdayofmonth(period.start)))
  @calculate_add(biact, period)
  @calculate(isol, period)
  P = legislation_at(simulation, period.start)["fam"]
  P_n_2 = legislation_at(simulation, (period.start - Year(2)))["fam"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  nbenf = nb_enf(age, smic55, 0, P["apje"]["age"] - 1)
  bmaf = P["af"]["bmaf"]
  bmaf_n_2 = P_n_2["af"]["bmaf"]
  base = round(P["apje"]["taux"] * bmaf, 2)
  base2 = round(P["apje"]["taux"] * bmaf_n_2, 2)
  plaf_tx = (nbenf .> 0) .+ P["apje"]["plaf_tx1"] .* min(nbenf, 2) .+ P["apje"]["plaf_tx2"] .* max(nbenf .- 2, 0)
  majo = isol | biact
  plaf = P["apje"]["plaf"] .* plaf_tx .+ P["apje"]["plaf_maj"] .* majo
  plaf2 = plaf .+ 12 * base2
  apje = (nbenf .>= 1) .* ((br_pf .<= plaf) .* base .+ (br_pf .> plaf) .* max(plaf2 .- br_pf, 0) ./ 12.0)
  return period, 12 .* apje
end


@define_formula(paje, famille_definition, Float32, requested_period_default_value,
  label = "PAJE - Ensemble des prestations",
  start_date = Date(2004, 1, 1),
  url = "http://www.caf.fr/aides-et-services/s-informer-sur-les-aides/petite-enfance/la-prestation-d-accueil-du-jeune-enfant-paje-0",
) do simulation, variable, period
  "Prestation d'accueil du jeune enfant"
  period = MonthPeriod(firstdayofmonth(period.start))
  period_legacy = YearPeriod(firstdayofmonth(period.start))
  @calculate(paje_base, period)
  @calculate(paje_nais, period_legacy)
  @calculate(paje_clca, period_legacy)
  @calculate(paje_clmg, period_legacy)
  @calculate(paje_colca, period_legacy)
  return period, paje_base .+ (paje_nais .+ paje_clca .+ paje_clmg .+ paje_colca) ./ 12
end


@define_formula(paje_base, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de base de la PAJE",
  start_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F2552.xhtml",
) do simulation, variable, period
  "L'allocation de base de la paje n'est pas cumulable avec le complément familial"
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(paje_base_temp, period)
  @calculate(cf_temp, period)
  paje_base = (paje_base_temp .>= cf_temp) .* paje_base_temp
  return period, paje_base
end


@define_formula(paje_base_temp, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de base de la PAJE sans tenir compte d'éventuels cumuls",
  start_date = Date(2004, 1, 1),
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  annee_fiscale_n_2 = YearPeriod(firstdayofyear(period.start)) - Year(2)
  age_holder = calculate(simulation, "age", period)
  @calculate(af_nbenf, period)
  @calculate(br_pf, period)
  @calculate(biact, period)
  @calculate(isol, period)
  smic55_holder = calculate(simulation, "smic55", period, accept_other_period = true)
  pfam = legislation_at(simulation, period.start)["fam"]
  pfam_n_2 = legislation_at(simulation, (period.start - Year(2)))["fam"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  bmaf = pfam["af"]["bmaf"]
  bmaf2 = pfam_n_2["af"]["bmaf"]
  base = round(pfam["paje"]["base"]["taux"] * bmaf, 2)
  base2 = round(pfam["paje"]["base"]["taux"] * bmaf2, 2)
  nbenf = nb_enf(age, smic55, 0, pfam["paje"]["base"]["age"] - 1)
  plaf_tx = (nbenf .> 0) .+ pfam["paje"]["base"]["plaf_tx1"] .* min(af_nbenf, 2) .+ pfam["paje"]["base"]["plaf_tx2"] .* max(af_nbenf .- 2, 0)
  majo = isol | biact
  plaf = pfam["paje"]["base"]["plaf"] .* plaf_tx .+ (plaf_tx .> 0) .* pfam["paje"]["base"]["plaf_maj"] .* majo
  plaf2 = plaf .+ 12 * base2
  paje_base = (nbenf .> 0) .* ((br_pf .< plaf) .* base .+ (br_pf .>= plaf) .* max(plaf2 .- br_pf, 0) ./ 12)
  return period, paje_base
end


@define_formula(paje_clca, famille_definition, Float32, requested_period_default_value,
  label = "PAJE - Complément de libre choix d'activité",
  start_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F313.xhtml",
) do simulation, variable, period
  """Prestation d'accueil du jeune enfant - Complément de libre choix d'activité
  'fam'

  Parameters:
  -----------

  age :  âge en mois
  af_nbenf : nombre d'enfants aus sens des allocations familiales
  paje_base : allocation de base de la PAJE
  inactif : indicatrice d'inactivité
  partiel1 : Salarié: Temps de travail ne dépassant pas 50 % de la durée du travail fixée dans l'entreprise pour les salariés
             VRP ou non salarié travaillant à temps partiel: Temps de travail ne dépassant pas 76 heures par mois
                et un revenu professionnel mensuel inférieur ou égal à (smic_8.27*169*85 %)
  partiel2 :  Salarié: Temps de travail compris entre 50 et 80 % de la durée du travail fixée dans l'entreprise.
              VRP ou non salarié travaillant à temps partiel: Temps de travail compris entre 77 et 122 heures par mois et un revenu professionnel mensuel ne dépassant pas
                                                              (smic_8.27*169*136 %)

  http://www.caf.fr/wps/portal/particuliers/catalogue/metropole/paje
  """
  period = YearPeriod(firstdayofmonth(period.start))
  period_new = MonthPeriod(period.start)
  agem_holder = calculate(simulation, "agem", period_new)
  @calculate(af_nbenf, period)
  @calculate(paje_base, period_new)
  @calculate(inactif, period)
  @calculate(partiel1, period)
  @calculate(partiel2, period)
  P = legislation_at(simulation, period.start)["fam"]
  agem = split_person_by_role(agem_holder, get_entity(variable), period, ENFS)
  paje = paje_base .>= 0
  age_m_benjamin = age_en_mois_benjamin(agem)
  condition1 = (af_nbenf .== 1) .* (age_m_benjamin .>= 0) .* (age_m_benjamin .< P["paje"]["clca"]["duree1"])
  age_benjamin = floor(age_m_benjamin ./ 12)
  condition2 = (age_benjamin .<= (P["paje"]["base"]["age"] - 1))
  condition = (af_nbenf .>= 2) .* condition2 .+ condition1
  paje_clca = (condition .* P["af"]["bmaf"]) .* (!paje .* (inactif .* P["paje"]["clca"]["sansab_tx_inactif"] .+ partiel1 .* P["paje"]["clca"]["sansab_tx_partiel1"] .+ partiel2 .* P["paje"]["clca"]["sansab_tx_partiel2"]) .+ paje .* (inactif .* P["paje"]["clca"]["avecab_tx_inactif"] .+ partiel1 .* P["paje"]["clca"]["avecab_tx_partiel1"] .+ partiel2 .* P["paje"]["clca"]["avecab_tx_partiel2"]))
  return period, 12 .* paje_clca
end


@define_formula(paje_clca_taux_partiel, famille_definition, Bool, requested_period_last_value,
  label = "Indicatrice Clca taux partiel",
  start_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F313.xhtml",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(paje_clca, period)
  @calculate(partiel1, period)
  return period, (paje_clca .> 0) .* partiel1
end


@define_formula(paje_clca_taux_plein, famille_definition, Bool, requested_period_last_value,
  label = "Indicatrice Clca taux plein",
  start_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F313.xhtml",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(paje_clca, period)
  @calculate(inactif, period)
  return period, (paje_clca .> 0) .* inactif
end


@define_formula(paje_clmg, famille_definition, Float32, requested_period_default_value,
  label = "PAJE - Complément de libre choix du mode de garde",
  start_date = Date(2004, 1, 1),
  url = "http://www.caf.fr/aides-et-services/s-informer-sur-les-aides/petite-enfance/le-complement-de-libre-choix-du-mode-de-garde",
) do simulation, variable, period
  """Prestation d accueil du jeune enfant - Complément de libre choix du mode de garde

  Les conditions

  Vous devez :

      avoir un enfant de moins de 6 ans né, adopté ou recueilli en vue d'adoption à partir du 1er janvier 2004
      employer une assistante maternelle agréée ou une garde à domicile.
      avoir une activité professionnelle minimale
          si vous êtes salarié cette activité doit vous procurer un revenu minimum de :
              si vous vivez seul : une fois la BMAF
              si vous vivez en couple  soit 2 fois la BMAF
          si vous êtes non salarié, vous devez être à jour de vos cotisations sociales d'assurance vieillesse

  Vous n'avez pas besoin de justifier d'une activité min_ si vous êtes :

      bénéficiaire de l'allocation aux adultes handicapés (Aah)
      au chômage et bénéficiaire de l'allocation d'insertion ou de l'allocation de solidarité spécifique
      bénéficiaire du Revenu de solidarité active (Rsa), sous certaines conditions de ressources étudiées par votre Caf, et inscrit dans une démarche d'insertion
      étudiant (si vous vivez en couple, vous devez être tous les deux étudiants).

  Autres conditions à remplir : Assistante maternelle agréée     Garde à domicile
  Son salaire brut ne doit pas dépasser par jour de garde et par enfant 5 fois le montant du Smic horaire brut, soit au max 45,00 €.
  Vous ne devez pas bénéficier de l'exonération des cotisations sociales dues pour la personne employée.
  """
  period = YearPeriod(firstdayofmonth(period.start))
  aah_holder = calculate(simulation, "aah", period)
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", period, accept_other_period = true)
  etu_holder = calculate(simulation, "etu", period)
  sal_holder = calculate(simulation, "sal", period)
  hsup_holder = calculate(simulation, "hsup", period)
  @calculate(concub, period)
  @calculate(af_nbenf, period)
  @calculate(br_pf, MonthPeriod(firstdayofmonth(period.start)))
  @calculate(empl_dir, period)
  @calculate(ass_mat, period)
  @calculate(gar_dom, period)
  @calculate(paje_clca_taux_partiel, period)
  @calculate(paje_clca_taux_plein, period)
  P = legislation_at(simulation, period.start)["fam"]
  P_n_2 = legislation_at(simulation, (period.start - Year(2)))["fam"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  etu = split_person_by_role(etu_holder, get_entity(variable), period, [CHEF, PART])
  hsup = split_person_by_role(hsup_holder, get_entity(variable), period, [CHEF, PART])
  sal = split_person_by_role(sal_holder, get_entity(variable), period, [CHEF, PART])
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  aah = sum_person_in_entity(aah_holder, get_entity(variable), period)
  bmaf_n_2 = P_n_2["af"]["bmaf"]
  cond_age_enf = (nb_enf(age, smic55, P["paje"]["clmg"]["age1"], P["paje"]["clmg"]["age2"] - 1) .> 0)
  cond_sal = (sal[CHEF] .+ sal[PART] .+ hsup[CHEF] .+ hsup[PART] .> 12 .* bmaf_n_2 .* (1 .+ concub))
  cond_act = cond_sal
  cond_nonact = (aah .> 0) | (etu[CHEF] & etu[PART])
  elig = cond_age_enf & (cond_act | cond_nonact)
  nbenf = af_nbenf
  seuil1 = P["paje"]["clmg"]["seuil11"] .* (nbenf .== 1) .+ P["paje"]["clmg"]["seuil12"] .* (nbenf .>= 2) .+ max(nbenf .- 2, 0) .* P["paje"]["clmg"]["seuil1sup"]
  seuil2 = P["paje"]["clmg"]["seuil21"] .* (nbenf .== 1) .+ P["paje"]["clmg"]["seuil22"] .* (nbenf .>= 2) .+ max(nbenf .- 2, 0) .* P["paje"]["clmg"]["seuil2sup"]
  seuil1 = seuil1 .* (1 .- 0.5 .* paje_clca_taux_partiel)
  seuil2 = seuil2 .* (1 .- 0.5 .* paje_clca_taux_partiel)
  clmg = P["af"]["bmaf"] .* ((nb_enf(age, smic55, 0, P["paje"]["clmg"]["age1"] - 1) .> 0) .+ 0.5 .* (nb_enf(age, smic55, P["paje"]["clmg"]["age1"], P["paje"]["clmg"]["age2"] - 1) .> 0)) .* (empl_dir .* ((br_pf .< seuil1) .* P["paje"]["clmg"]["empl_dir1"] .+ ((br_pf .>= seuil1) & (br_pf .< seuil2)) .* P["paje"]["clmg"]["empl_dir2"] .+ (br_pf .>= seuil2) .* P["paje"]["clmg"]["empl_dir3"]) .+ ass_mat .* ((br_pf .< seuil1) .* P["paje"]["clmg"]["ass_mat1"] .+ ((br_pf .>= seuil1) & (br_pf .< seuil2)) .* P["paje"]["clmg"]["ass_mat2"] .+ (br_pf .>= seuil2) .* P["paje"]["clmg"]["ass_mat3"]) .+ gar_dom .* ((br_pf .< seuil1) .* P["paje"]["clmg"]["domi1"] .+ ((br_pf .>= seuil1) & (br_pf .< seuil2)) .* P["paje"]["clmg"]["domi2"] .+ (br_pf .>= seuil2) .* P["paje"]["clmg"]["domi3"]))
  paje_clmg = elig .* !paje_clca_taux_plein .* clmg
  return period, 12 .* paje_clmg
end


@define_formula(paje_colca, famille_definition, Float32, requested_period_default_value,
  label = "PAJE - Complément optionnel de libre choix d'activité",
  start_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F15110.xhtml",
) do simulation, variable, period
  "Prestation d'accueil du jeune enfant - Complément optionnel de libre choix du mode de garde"
  period = YearPeriod(firstdayofmonth(period.start))
  period_new = MonthPeriod(period.start)
  @calculate(af_nbenf, period)
  agem_holder = calculate(simulation, "agem", period_new)
  @calculate(opt_colca, period)
  @calculate(paje_base, period_new)
  P = legislation_at(simulation, period.start)["fam"]
  agem = split_person_by_role(agem_holder, get_entity(variable), period, ENFS)
  age_m_benjamin = age_en_mois_benjamin(agem)
  condition = (age_m_benjamin .< 12 * P["paje"]["colca"]["age"]) .* (age_m_benjamin .>= 0)
  nbenf = af_nbenf
  paje = (paje_base .> 0)
  paje_colca = opt_colca .* condition .* (nbenf .>= 3) .* P["af"]["bmaf"] .* (paje .* P["paje"]["colca"]["avecab"] .+ !paje .* P["paje"]["colca"]["sansab"])
  return period, 12 .* paje_colca
end


@define_formula(paje_nais, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de naissance de la PAJE",
  start_date = Date(2004, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F2550.xhtml",
) do simulation, variable, period
  "Prestation d'accueil du jeune enfant - Allocation de naissance"
  period = MonthPeriod(firstdayofmonth(period.start))
  period_legacy = YearPeriod(period.start)
  agem_holder = calculate(simulation, "agem", period)
  age_holder = calculate(simulation, "age", period)
  @calculate(af_nbenf, period_legacy)
  @calculate(br_pf, period)
  @calculate(isol, period_legacy)
  @calculate(biact, period)
  P = legislation_at(simulation, period.start)["fam"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  agem = split_person_by_role(agem_holder, get_entity(variable), period, ENFS)
  bmaf = P["af"]["bmaf"]
  nais_prime = round(100 * P["paje"]["nais"]["prime_tx"] * bmaf) / 100
  nbnais = 0
  for age_m in values(agem)
    nbnais += (age_m .>= -2) .* (age_m .< 10)
  end
  nbaf = 0
  for age_m in values(agem)
    nbaf += (age_m .>= 10)
  end
  nbenf = nbaf + nbnais
  paje_plaf = P["paje"]["base"]["plaf"]
  # MANUAL_FIX replaced nbenf > 0 by .>
  plaf_tx = (nbenf .> 0) .+ P["paje"]["base"]["plaf_tx1"] .* min(af_nbenf, 2) .+ P["paje"]["base"]["plaf_tx2"] .* max(af_nbenf .- 2, 0)
  majo = isol | biact
  plaf = P["paje"]["base"]["plaf"] .* plaf_tx .+ (plaf_tx .> 0) .* P["paje"]["base"]["plaf_maj"] .* majo
  elig = (br_pf .<= plaf) .* (nbnais != 0)
  nais_brut = nais_prime .* elig .* nbnais
  return period_legacy, nais_brut
end
