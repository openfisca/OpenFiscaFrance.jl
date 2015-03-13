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


function age_aine(ages, smic55, ag1, ag2)
  """Renvoie un vecteur avec l'âge de l'ainé (au sens des allocations
  familiales) de chaque famille
  """
  ageaine = -9999
  for (key, age) in ages
    ispacaf = (ag1 .<= age) & (age .<= ag2) & !(smic55[key])
    isaine = ispacaf & (age .> ageaine)
    ageaine = isaine .* age .+ !isaine .* ageaine
  end
  return ageaine
end


function age_en_mois_benjamin(agems)
  "Renvoie un vecteur (une entree pour chaque famille) avec l'age du benjamin.  # TODO check agem > 0"
  agem_benjamin = 12 * 9999
  for agem in values(agems)
    isbenjamin = (agem .< agem_benjamin) & (agem .!= -9999)
    agem_benjamin = isbenjamin .* agem .+ !isbenjamin .* agem_benjamin
  end
  return agem_benjamin
end


@define_formula(biact, famille_definition, Bool, requested_period_last_value,
  label = "Indicatrice de biactivité",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  annee_fiscale_n_2 = YearPeriod(firstdayofyear(period.start)) - Year(2)
  br_pf_i_holder = calculate(simulation, "br_pf_i", period)
  br_pf_i = split_person_by_role(br_pf_i_holder, get_entity(variable), period, [CHEF, PART])
  pfam = legislation_at(simulation, annee_fiscale_n_2.start)["fam"]
  seuil_rev = 12 * pfam["af"]["bmaf"]
  return period, (br_pf_i[CHEF] .>= seuil_rev) & (br_pf_i[PART] .>= seuil_rev)
end


@define_formula(br_pf, famille_definition, Float32, requested_period_default_value,
  label = "Base ressource des prestations familiales",
) do simulation, variable, period
  """Base ressource des prestations familiales de la famille
  'fam'
  """
  period = MonthPeriod(firstdayofmonth(period.start))
  annee_fiscale_n_2 = YearPeriod(firstdayofyear(period.start)) - Year(2)
  pfam_ressources_i_holder = calculate(simulation, "pfam_ressources_i", period)
  rev_coll_holder = calculate(simulation, "rev_coll", annee_fiscale_n_2)
  br_pf_i_total = sum_person_in_entity(pfam_ressources_i_holder, get_entity(variable), period)
  rev_coll = split_person_by_role(rev_coll_holder, get_entity(variable), period, [CHEF, PART])
  br_pf = br_pf_i_total .+ rev_coll[CHEF] .+ rev_coll[PART]
  return period, br_pf
end


@define_formula(br_pf_i, individu_definition, Float32, requested_period_default_value,
  label = "Base ressource individuelle des prestations familiales",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  annee_fiscale_n_2 = YearPeriod(firstdayofyear(period.start)) - Year(2)
  @calculate(tspr, annee_fiscale_n_2)
  @calculate(hsup, annee_fiscale_n_2)
  @calculate(rpns, annee_fiscale_n_2)
  return period, tspr .+ hsup .+ rpns
end


@define_formula(concub, famille_definition, Bool, requested_period_last_value,
  label = "Indicatrice de vie en couple",
) do simulation, variable, period
  "concub = 1 si vie en couple TODO: pas très heureux"
  @calculate(nb_par, period)
  return period, nb_par .== 2
end


@define_formula(crds_pfam, famille_definition, Float32, requested_period_default_value,
  label = "CRDS (prestations familiales)",
  url = "http://www.cleiss.fr/docs/regimes/regime_francea1.html",
) do simulation, variable, period
  "Renvoie la CRDS des prestations familiales"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate_add(af, period)
  @calculate_add(cf, period)
  @calculate_add(asf, period)
  @calculate(ars, period)
  @calculate_add(paje, period)
  @calculate(ape, period)
  @calculate(apje, period)
  _P = legislation_at(simulation, period.start)
  return period, -(af .+ cf .+ asf .+ ars .+ paje .+ ape .+ apje) * _P["fam"]["af"]["crds"]
end


@define_formula(div, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rpns_pvce, period)
  @calculate(rpns_pvct, period)
  @calculate(rpns_mvct, period)
  @calculate(rpns_mvlt, period)
  f3vc_holder = calculate(simulation, "f3vc", period)
  f3ve_holder = calculate(simulation, "f3ve", period)
  f3vg_holder = calculate(simulation, "f3vg", period)
  f3vh_holder = calculate(simulation, "f3vh", period)
  f3vl_holder = calculate(simulation, "f3vl", period)
  f3vm_holder = calculate(simulation, "f3vm", period)
  f3vc = entity_to_person(f3vc_holder, period, VOUS)
  f3ve = entity_to_person(f3ve_holder, period, VOUS)
  f3vg = entity_to_person(f3vg_holder, period, VOUS)
  f3vh = entity_to_person(f3vh_holder, period, VOUS)
  f3vl = entity_to_person(f3vl_holder, period, VOUS)
  f3vm = entity_to_person(f3vm_holder, period, VOUS)
  return period, f3vc .+ f3ve .+ f3vg .- f3vh .+ f3vl .+ f3vm .+ rpns_pvce .+ rpns_pvct .- rpns_mvct .- rpns_mvlt
end


@define_formula(est_enfant_dans_famille, individu_definition, Bool, requested_period_last_value,
  label = "Indique qe l'individu est un enfant dans une famille",
) do simulation, variable, period
  @calculate(quifam, period)
  return period, quifam .> PART
end


@define_formula(etu, individu_definition, Bool, requested_period_last_value,
  label = "Indicatrice individuelle étudiant",
) do simulation, variable, period
  @calculate(activite, period)
  return period, activite .== 2
end


@define_formula(isol, famille_definition, Bool, requested_period_last_value,
  label = "Parent (s'il y a lieu) isolé",
) do simulation, variable, period
  @calculate(nb_par, period)
  return period, nb_par .== 1
end


@define_formula(maries, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  "couple = 1 si couple marié sinon 0 TODO: faire un choix avec couple ?"
  statmarit_holder = calculate(simulation, "statmarit", period)
  statmarit = single_person_in_entity(statmarit_holder, get_entity(variable), period, CHEF)
  return period, statmarit .== 1
end


function nb_enf(ages, smic55, ag1, ag2)
  "Renvoie le nombre d'enfant au sens des allocations familiales dont l'âge est compris entre ag1 et ag2"
  res = nothing
  for (key, age) in ages
    if res === nothing
      res = zeros(Int32, length(age))
    end
    res += (ag1 .<= age) & (age .<= ag2) & !(smic55[key])
  end
  return res
end


@define_formula(nb_par, famille_definition, Int32, requested_period_last_value,
  label = "Nombre d'adultes (parents) dans la famille",
) do simulation, variable, period
  quifam_holder = calculate(simulation, "quifam", period)
  quifam = single_person_in_entity(quifam_holder, get_entity(variable), period, PART)
  return period, 1 .+ 1 .* (quifam .== PART)
end


@define_formula(pfam_enfant_a_charge, individu_definition, Bool, requested_period_last_value,
  label = "Enfant considéré à charge au sens des prestations familiales",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(est_enfant_dans_famille, period)
  @calculate(smic55, period)
  @calculate(age, period)
  @calculate(rempli_obligation_scolaire, period)
  pfam = legislation_at(simulation, period.start)["fam"]
  condition_enfant = ((age .>= pfam["enfants"]["age_minimal"]) .* (age .< pfam["enfants"]["age_intermediaire"]) .* rempli_obligation_scolaire)
  condition_jeune = (age .>= pfam["enfants"]["age_intermediaire"]) .* (age .< pfam["enfants"]["age_limite"]) .* !smic55
  return period, ((condition_enfant .!= 0) | (condition_jeune .!= 0)) .* est_enfant_dans_famille
end


@define_formula(pfam_ressources_i, individu_definition, Float32, requested_period_default_value,
  label = "Ressources de l'individu prises en compte dans le cadre des prestations familiales",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(br_pf_i, period)
  @calculate(est_enfant_dans_famille, period)
  @calculate(pfam_enfant_a_charge, period)
  return period, (!est_enfant_dans_famille | pfam_enfant_a_charge) .* br_pf_i
end


@define_formula(residence_guadeloupe, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = period
  depcom_holder = calculate(simulation, "depcom", period)
  depcom = entity_to_person(depcom_holder, period)
  depcom = single_person_in_entity(depcom, get_entity(variable), period, CHEF)
  return period, beginswith(depcom, "971")
end


@define_formula(residence_guyane, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = period
  depcom_holder = calculate(simulation, "depcom", period)
  depcom = entity_to_person(depcom_holder, period)
  depcom = single_person_in_entity(depcom, get_entity(variable), period, CHEF)
  return period, beginswith(depcom, "973")
end


@define_formula(residence_martinique, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = period
  depcom_holder = calculate(simulation, "depcom", period)
  depcom = entity_to_person(depcom_holder, period)
  depcom = single_person_in_entity(depcom, get_entity(variable), period, CHEF)
  return period, beginswith(depcom, "972")
end


@define_formula(residence_mayotte, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = period
  depcom_holder = calculate(simulation, "depcom", period)
  depcom = entity_to_person(depcom_holder, period)
  depcom = single_person_in_entity(depcom, get_entity(variable), period, CHEF)
  return period, beginswith(depcom, "976")
end


@define_formula(residence_reunion, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = period
  depcom_holder = calculate(simulation, "depcom", period)
  depcom = entity_to_person(depcom_holder, period)
  depcom = single_person_in_entity(depcom, get_entity(variable), period, CHEF)
  return period, beginswith(depcom, "974")
end


@define_formula(rev_coll, individu_definition, Float32, requested_period_default_value,
  label = "Revenus collectifs",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rto_net_declarant1, first_day(period))
  rev_cap_lib_holder = calculate(simulation, "rev_cap_lib", period)
  rev_cat_rvcm_holder = calculate(simulation, "rev_cat_rvcm", period)
  abat_spe_holder = calculate(simulation, "abat_spe", period)
  @calculate(glo, period)
  fon_holder = calculate(simulation, "fon", period)
  @calculate(alv_declarant1, first_day(period))
  f7ga_holder = calculate(simulation, "f7ga", period)
  f7gb_holder = calculate(simulation, "f7gb", period)
  f7gc_holder = calculate(simulation, "f7gc", period)
  rev_cat_pv_holder = calculate(simulation, "rev_cat_pv", period)
  rev_cap_lib = entity_to_person(rev_cap_lib_holder, period, VOUS)
  rev_cat_rvcm = entity_to_person(rev_cat_rvcm_holder, period, VOUS)
  abat_spe = entity_to_person(abat_spe_holder, period, VOUS)
  fon = entity_to_person(fon_holder, period, VOUS)
  f7ga = entity_to_person(f7ga_holder, period, VOUS)
  f7gb = entity_to_person(f7gb_holder, period, VOUS)
  f7gc = entity_to_person(f7gc_holder, period, VOUS)
  rev_cat_pv = entity_to_person(rev_cat_pv_holder, period, VOUS)
  return period, (rto_net_declarant1 .+ rev_cap_lib .+ rev_cat_rvcm .+ fon .+ glo .+ alv_declarant1 .- f7ga .- f7gb .- f7gc .- abat_spe .+ rev_cat_pv)
end


@define_formula(smic55, individu_definition, Bool, requested_period_last_value,
  label = "Indicatrice d'autonomie financière vis-à-vis des prestations familiales",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate_add(salnet, MonthPeriod(period.start, 6) - Month(6))
  _P = legislation_at(simulation, period.start)
  nbh_travaillees = 169
  smic_mensuel_brut = _P["cotsoc"]["gen"]["smic_h_b"] * nbh_travaillees
  return period, salnet ./ 6 .>= (_P["fam"]["af"]["seuil_rev_taux"] * smic_mensuel_brut)
end
