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


@define_formula(asi, famille_definition, Float32, requested_period_default_value,
  label = "Allocation supplémentaire d'invalidité",
  start_date = Date(2007, 1, 1),
  url = "http://vosdroits.service-public.fr/particuliers/F16940.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  asi_elig_holder = calculate(simulation, "asi_elig", period)
  aspa_elig_holder = calculate(simulation, "aspa_elig", period)
  @calculate(maries, period)
  @calculate(concub, period)
  @calculate(asi_aspa_nb_alloc, period)
  @calculate(br_mv, period)
  P = legislation_at(simulation, period.start)["minim"]
  asi_elig = split_person_by_role(asi_elig_holder, get_entity(variable), period, [CHEF, PART])
  aspa_elig = split_person_by_role(aspa_elig_holder, get_entity(variable), period, [CHEF, PART])
  elig1 = ((asi_aspa_nb_alloc .== 1) & (asi_elig[CHEF] | asi_elig[PART]))
  elig2 = asi_elig[CHEF] & asi_elig[PART] & maries
  elig3 = asi_elig[CHEF] & asi_elig[PART] & !maries
  elig4 = ((asi_elig[CHEF] & aspa_elig[PART]) | (asi_elig[PART] & aspa_elig[CHEF])) & maries
  elig5 = ((asi_elig[CHEF] & aspa_elig[PART]) | (asi_elig[PART] & aspa_elig[CHEF])) & !maries
  elig = elig1 | elig2 | elig3 | elig4 | elig5
  montant_max = (elig1 .* P["asi"]["montant_seul"] .+ elig2 .* P["asi"]["montant_couple"] .+ elig3 .* 2 .* P["asi"]["montant_seul"] .+ elig4 .* (P["asi"]["montant_couple"] / 2 + P["aspa"]["montant_couple"] / 2) .+ elig5 .* (P["asi"]["montant_seul"] + P["aspa"]["montant_couple"] / 2)) ./ 12
  ressources = br_mv .+ montant_max
  plafond_ressources = (elig1 .* (P["asi"]["plaf_seul"] .* !concub .+ P["asi"]["plaf_couple"] .* concub) .+ elig2 .* P["asi"]["plaf_couple"] .+ elig3 .* P["asi"]["plaf_couple"] .+ elig4 .* P["aspa"]["plaf_couple"] .+ elig5 .* P["aspa"]["plaf_couple"]) ./ 12
  depassement = max(ressources .- plafond_ressources, 0)
  diff = ((elig1 | elig2 | elig3) .* (montant_max .- depassement) .+ elig4 .* (P["asi"]["montant_couple"] / 12 / 2 .- depassement ./ 2) .+ elig5 .* (P["asi"]["montant_seul"] / 12 .- depassement ./ 2))
  montant_servi_asi = max(diff, 0)
  return period, elig .* montant_servi_asi
end


@define_formula(asi_aspa_nb_alloc, famille_definition, Int32, requested_period_default_value,
  label = "Nombre d'allocataires ASI/ASPA",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  aspa_elig_holder = calculate(simulation, "aspa_elig", period)
  asi_elig_holder = calculate(simulation, "asi_elig", period)
  asi_elig = split_person_by_role(asi_elig_holder, get_entity(variable), period, [CHEF, PART])
  aspa_elig = split_person_by_role(aspa_elig_holder, get_entity(variable), period, [CHEF, PART])
  return period, (1 .* aspa_elig[CHEF] .+ 1 .* aspa_elig[PART] .+ 1 .* asi_elig[CHEF] .+ 1 .* asi_elig[PART])
end


@define_formula(asi_elig, individu_definition, Bool, requested_period_last_value,
  label = "Indicatrice individuelle d'éligibilité à l'allocation supplémentaire d'invalidité",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  last_month = MonthPeriod(period.start) - Month(1)
  @calculate(aspa_elig, period)
  @calculate(inv, period)
  @calculate(rstbrut, last_month)
  @calculate(pensions_invalidite, last_month)
  condition_situation = inv & !aspa_elig
  condition_pensionnement = (rstbrut .+ pensions_invalidite) .> 0
  return period, condition_situation .* condition_pensionnement
end


@define_formula(aspa, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de solidarité aux personnes agées",
  url = "http://vosdroits.service-public.fr/particuliers/F16871.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  asi_elig_holder = calculate(simulation, "asi_elig", period)
  aspa_elig_holder = calculate(simulation, "aspa_elig", period)
  @calculate(maries, period)
  @calculate(concub, period)
  @calculate(asi_aspa_nb_alloc, period)
  @calculate(br_mv, period)
  P = legislation_at(simulation, period.start)["minim"]
  asi_elig = split_person_by_role(asi_elig_holder, get_entity(variable), period, [CHEF, PART])
  aspa_elig = split_person_by_role(aspa_elig_holder, get_entity(variable), period, [CHEF, PART])
  elig1 = ((asi_aspa_nb_alloc .== 1) & (aspa_elig[CHEF] | aspa_elig[PART]))
  elig2 = (aspa_elig[CHEF] & aspa_elig[PART])
  elig3 = ((asi_elig[CHEF] & aspa_elig[PART]) | (asi_elig[PART] & aspa_elig[CHEF])) & maries
  elig4 = ((asi_elig[CHEF] & aspa_elig[PART]) | (asi_elig[PART] & aspa_elig[CHEF])) & !maries
  elig = elig1 | elig2 | elig3 | elig4
  montant_max = (elig1 .* P["aspa"]["montant_seul"] .+ elig2 .* P["aspa"]["montant_couple"] .+ elig3 .* (P["asi"]["montant_couple"] / 2 + P["aspa"]["montant_couple"] / 2) .+ elig4 .* (P["asi"]["montant_seul"] + P["aspa"]["montant_couple"] / 2)) ./ 12
  ressources = br_mv .+ montant_max
  plafond_ressources = (elig1 .* (P["aspa"]["plaf_seul"] .* !concub .+ P["aspa"]["plaf_couple"] .* concub) .+ (elig2 | elig3 | elig4) .* P["aspa"]["plaf_couple"]) ./ 12
  depassement = max(ressources .- plafond_ressources, 0)
  diff = ((elig1 | elig2) .* (montant_max .- depassement) .+ (elig3 | elig4) .* (P["aspa"]["montant_couple"] / 12 / 2 .- depassement ./ 2))
  montant_servi_aspa = max(diff, 0)
  return period, elig .* montant_servi_aspa
end


@define_formula(aspa_couple, famille_definition, Bool, requested_period_last_value,
  label = "Couple au sens de l'ASPA",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    period = period
    @calculate(maries, period)
    return period, maries
  elseif Date(2007, 1, 1) <= period.start
    period = period
    @calculate(concub, period)
    return period, concub
  else
    return period, default_array(variable)
  end
end


@define_formula(aspa_elig, individu_definition, Bool, requested_period_last_value,
  label = "Indicatrice individuelle d'éligibilité à l'allocation de solidarité aux personnes agées",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  last_month = MonthPeriod(period.start) - Month(1)
  @calculate(age, period)
  @calculate(inv, period)
  @calculate(taux_invalidite, period)
  @calculate(inapte_travail, period)
  @calculate(rstbrut, last_month)
  @calculate(pensions_invalidite, last_month)
  P = legislation_at(simulation, period.start)["minim"]
  condition_age_base = (age .>= P["aspa"]["age_min"])
  condition_age_anticipe_inaptitude = (age .>= P["aah"]["age_legal_retraite"]) & inapte_travail
  condition_age_anticipe_handicap = (age .>= P["aah"]["age_legal_retraite"]) & inv & (taux_invalidite .>= 50)
  condition_age = condition_age_base | condition_age_anticipe_inaptitude | condition_age_anticipe_handicap
  condition_pensionnement = (rstbrut .+ pensions_invalidite) .> 0
  return period, condition_age .* condition_pensionnement
end


@define_formula(br_mv, famille_definition, Float32, requested_period_default_value,
  label = "Base ressource du minimum vieillesse et assimilés (ASPA)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  br_mv_i_holder = calculate(simulation, "br_mv_i", period)
  @calculate_divide(ass, period)
  br_mv_i = split_person_by_role(br_mv_i_holder, get_entity(variable), period, [CHEF, PART])
  return period, ass .+ br_mv_i[CHEF] .+ br_mv_i[PART]
end


@define_formula(br_mv_i, individu_definition, Float32, requested_period_default_value,
  label = "Base ressources individuelle du minimum vieillesse/ASPA",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  three_previous_months = MonthPeriod(period.start, 3) - Month(3)
  @calculate(aspa_elig, period)
  aspa_couple_holder = calculate(simulation, "aspa_couple", period)
  @calculate(salaire_de_base, three_previous_months)
  @calculate(chonet, three_previous_months)
  @calculate(rstbrut, three_previous_months)
  @calculate(pensions_alimentaires_percues, three_previous_months)
  @calculate_add_divide(rto_declarant1, three_previous_months)
  @calculate_add_divide(rpns, three_previous_months)
  rev_cap_bar_holder = calculate_add_divide(simulation, "rev_cap_bar", three_previous_months)
  rev_cap_lib_holder = calculate_add_divide(simulation, "rev_cap_lib", three_previous_months)
  @calculate_add_divide(rfon_ms, three_previous_months)
  @calculate_add_divide(div_ms, three_previous_months)
  @calculate(revenus_stage_formation_pro, three_previous_months)
  @calculate(allocation_securisation_professionnelle, three_previous_months)
  @calculate(prime_forfaitaire_mensuelle_reprise_activite, three_previous_months)
  @calculate(dedommagement_victime_amiante, three_previous_months)
  @calculate(prestation_compensatoire, three_previous_months)
  @calculate(pensions_invalidite, three_previous_months)
  @calculate(gains_exceptionnels, three_previous_months)
  @calculate(indemnites_journalieres_maternite, three_previous_months)
  @calculate(indemnites_journalieres_maladie, three_previous_months)
  @calculate(indemnites_journalieres_maladie_professionnelle, three_previous_months)
  @calculate(indemnites_journalieres_accident_travail, three_previous_months)
  @calculate(indemnites_chomage_partiel, three_previous_months)
  @calculate(indemnites_volontariat, three_previous_months)
  @calculate_add(tns_total_revenus, three_previous_months)
  @calculate_add(rsa_base_ressources_patrimoine_i, three_previous_months)
  @calculate(aah, three_previous_months)
  legislation = legislation_at(simulation, period.start)
  leg_1er_janvier = legislation_at(simulation, firstdayofyear(period.start))
  aspa_couple = entity_to_person(aspa_couple_holder, period, VOUS)
  rev_cap_bar = entity_to_person(rev_cap_bar_holder, period, VOUS)
  rev_cap_lib = entity_to_person(rev_cap_lib_holder, period, VOUS)
  aah = aah .* !aspa_elig
  abattement_forfaitaire_base = leg_1er_janvier["cotsoc"]["gen"]["smic_h_b"] * legislation["minim"]["aspa"]["abattement_forfaitaire_nb_h"]
  abattement_forfaitaire_taux = (aspa_couple .* legislation["minim"]["aspa"]["abattement_forfaitaire_tx_couple"] .+ !aspa_couple .* legislation["minim"]["aspa"]["abattement_forfaitaire_tx_seul"])
  abattement_forfaitaire = abattement_forfaitaire_base .* abattement_forfaitaire_taux
  salaire_de_base = max(0, salaire_de_base .- abattement_forfaitaire)
  return period, (salaire_de_base .+ chonet .+ rstbrut .+ pensions_alimentaires_percues .+ rto_declarant1 .+ rpns .+ max(0, rev_cap_bar) .+ max(0, rev_cap_lib) .+ max(0, rfon_ms) .+ max(0, div_ms) .+ revenus_stage_formation_pro .+ allocation_securisation_professionnelle .+ prime_forfaitaire_mensuelle_reprise_activite .+ dedommagement_victime_amiante .+ prestation_compensatoire .+ pensions_invalidite .+ gains_exceptionnels .+ indemnites_journalieres_maternite .+ indemnites_journalieres_maladie .+ indemnites_journalieres_maladie_professionnelle .+ indemnites_journalieres_accident_travail .+ indemnites_chomage_partiel .+ indemnites_volontariat .+ tns_total_revenus .+ rsa_base_ressources_patrimoine_i .+ aah) ./ 3
end
