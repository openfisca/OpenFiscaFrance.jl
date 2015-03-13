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


@define_formula(acs, famille_definition, Float32, requested_period_default_value,
  label = "Éligibilité à l'ACS",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(cmu_c, period)
  @calculate(cmu_base_ressources, period)
  @calculate(acs_plafond, period)
  @calculate(acs_montant, period)
  @calculate(residence_mayotte, period)
  return period, !residence_mayotte .* !cmu_c .* (cmu_base_ressources .<= acs_plafond) .* acs_montant ./ 12
end


@define_formula(acs_montant, famille_definition, Float32, requested_period_default_value,
  label = "Montant de l'ACS en cas d'éligibilité",
) do simulation, variable, period
  if Date(2000, 1, 1) <= period.start && period.start <= Date(2009, 7, 31)
    period = MonthPeriod(firstdayofmonth(period.start))
    age_holder = calculate(simulation, "age", period)
    ages = single_person_in_entity(age_holder, get_entity(variable), period, CHEF)
    return period, 0 .* ages
  elseif Date(2009, 8, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    age_holder = calculate(simulation, "age", period)
    P = legislation_at(simulation, period.start)["cmu"]
    ages_couple = split_person_by_role(age_holder, get_entity(variable), period, [CHEF, PART])
    ages_pac = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    return period, ((nb_par_age(ages_couple, 0, 15) .+ nb_par_age(ages_pac, 0, 15)) .* P["acs_moins_16_ans"] .+ (nb_par_age(ages_couple, 16, 49) .+ nb_par_age(ages_pac, 16, 25)) .* P["acs_16_49_ans"] .+ nb_par_age(ages_couple, 50, 59) .* P["acs_50_59_ans"] .+ nb_par_age(ages_couple, 60, 200) .* P["acs_plus_60_ans"])
  else
    return period, default_array(variable)
  end
end


@define_formula(acs_plafond, famille_definition, Float32, requested_period_default_value,
  label = "Plafond annuel de ressources pour l'éligibilité à l'ACS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(cmu_c_plafond, period)
  P = legislation_at(simulation, period.start)["cmu"]
  return period, cmu_c_plafond .* (1 + P["majoration_plafond_acs"])
end


@define_formula(cmu_base_ressources, famille_definition, Float32, requested_period_default_value,
  label = "Base de ressources prise en compte pour l'éligibilité à la CMU-C / ACS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(aspa, period)
  @calculate(ass, period)
  @calculate(asi, period)
  @calculate(af, period)
  @calculate_divide(cf, period)
  @calculate_divide(asf, period)
  @calculate_divide(paje_clca, period)
  statut_occupation_holder = calculate(simulation, "statut_occupation", period)
  @calculate(aide_logement, period)
  @calculate(cmu_forfait_logement_base, period)
  @calculate(cmu_forfait_logement_al, period)
  age_holder = calculate(simulation, "age", period)
  cmu_base_ressources_i_holder = calculate(simulation, "cmu_base_ressources_i", period)
  P = legislation_at(simulation, period.start)["cmu"]
  statut_occupation = entity_to_person(statut_occupation_holder, period)
  statut_occupation = single_person_in_entity(statut_occupation, get_entity(variable), period, CHEF)
  cmu_br_i_par = split_person_by_role(cmu_base_ressources_i_holder, get_entity(variable), period, [CHEF, PART])
  cmu_br_i_pac = split_person_by_role(cmu_base_ressources_i_holder, get_entity(variable), period, ENFS)
  age_pac = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  forfait_logement = (((statut_occupation .== 2) .+ (statut_occupation .== 6)) .* cmu_forfait_logement_base .+ (aide_logement .> 0) .* min(cmu_forfait_logement_al, aide_logement .* 12))
  res = cmu_br_i_par[CHEF] .+ cmu_br_i_par[PART] .+ forfait_logement
  res += 12 .* (aspa .+ ass .+ asi .+ af .+ cf .+ asf .+ paje_clca)
  for (key, age) in age_pac
    res += (0 .<= age) .* (age .<= P["age_limite_pac"]) .* cmu_br_i_pac[key]
  end
  return period, res
end


@define_formula(cmu_base_ressources_i, individu_definition, Float32, requested_period_default_value,
  label = "Base de ressources de l'individu prise en compte pour l'éligibilité à la CMU-C / ACS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  previous_year = YearPeriod(period.start) - Year(1)
  last_month = MonthPeriod(period.start) - Month(1)
  @calculate(activite, period)
  @calculate(salnet, previous_year)
  @calculate(chonet, previous_year)
  @calculate(rstnet, previous_year)
  @calculate(pensions_alimentaires_percues, previous_year)
  @calculate_add(rsa_base_ressources_patrimoine_i, previous_year)
  @calculate(aah, previous_year)
  @calculate(indemnites_journalieres_maternite, previous_year)
  @calculate(indemnites_journalieres_maladie, previous_year)
  @calculate(indemnites_journalieres_maladie_professionnelle, previous_year)
  @calculate(indemnites_journalieres_accident_travail, previous_year)
  @calculate(indemnites_stage, previous_year)
  revenus_stage_formation_pro_annee = calculate(simulation, "revenus_stage_formation_pro", previous_year)
  revenus_stage_formation_pro_dernier_mois = calculate(simulation, "revenus_stage_formation_pro", last_month)
  @calculate(allocation_securisation_professionnelle, previous_year)
  @calculate(prime_forfaitaire_mensuelle_reprise_activite, previous_year)
  @calculate(dedommagement_victime_amiante, previous_year)
  @calculate(prestation_compensatoire, previous_year)
  @calculate(retraite_combattant, previous_year)
  @calculate(pensions_invalidite, previous_year)
  @calculate(indemnites_chomage_partiel, previous_year)
  @calculate(bourse_enseignement_sup, previous_year)
  @calculate(bourse_recherche, previous_year)
  @calculate(gains_exceptionnels, previous_year)
  @calculate_add(tns_total_revenus, previous_year)
  P = legislation_at(simulation, period.start)["cmu"]
  revenus_stage_formation_pro = revenus_stage_formation_pro_annee .* (revenus_stage_formation_pro_dernier_mois .> 0)
  abattement_chomage_fp = ((activite .== 1) | (revenus_stage_formation_pro_dernier_mois .> 0))
  return period, ((salnet .+ indemnites_chomage_partiel) .* (1 .- abattement_chomage_fp .* P["abattement_chomage"]) .+ indemnites_stage .+ aah .+ chonet .+ rstnet .+ pensions_alimentaires_percues .+ rsa_base_ressources_patrimoine_i .+ allocation_securisation_professionnelle .+ indemnites_journalieres_maternite .+ indemnites_journalieres_accident_travail .+ indemnites_journalieres_maladie .+ indemnites_journalieres_maladie_professionnelle .+ prime_forfaitaire_mensuelle_reprise_activite .+ dedommagement_victime_amiante .+ prestation_compensatoire .+ retraite_combattant .+ pensions_invalidite .+ bourse_enseignement_sup .+ bourse_recherche .+ gains_exceptionnels .+ tns_total_revenus .+ revenus_stage_formation_pro)
end


@define_formula(cmu_c, famille_definition, Bool, requested_period_last_value,
  label = "Éligibilité à la CMU-C",
) do simulation, variable, period
  this_month = first_day(MonthPeriod(period.start))
  this_rolling_year = YearPeriod(this_month.start)
  if stop_date(period) > stop_date(this_rolling_year)
    period = this_rolling_year
  else
    period = this_month
  end
  @calculate(cmu_c_plafond, this_month)
  @calculate(cmu_base_ressources, this_month)
  @calculate(residence_mayotte, this_month)
  @calculate(rsa_socle, this_month)
  @calculate(rsa_socle_majore, this_month)
  @calculate(rsa_forfait_logement, this_month)
  @calculate(br_rmi, this_month)
  socle = max(rsa_socle, rsa_socle_majore)
  eligibilite_basique = cmu_base_ressources .<= cmu_c_plafond
  eligibilite_rsa = (socle .> 0) .* (br_rmi .< socle .- rsa_forfait_logement)
  return period, !residence_mayotte .* (eligibilite_basique | (eligibilite_rsa .!= 0))
end


@define_formula(cmu_c_plafond, famille_definition, Float32, requested_period_default_value,
  label = "Plafond annuel de ressources pour l'éligibilité à la CMU-C",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(age, period)
  @calculate(alt, period)
  @calculate(cmu_eligible_majoration_dom, period)
  # @calculate(cmu_nbp_foyer, period)
  P = legislation_at(simulation, period.start)["cmu"]

  PAC = vcat([PART], ENFS)

  # Calcul du coefficient personnes à charge, avec prise en compte de la garde alternée

  # Tableau des coefficients
  coefficients_array = vcat(
    [P["coeff_p2"], P["coeff_p3_p4"], P["coeff_p3_p4"], P["coeff_p5_plus"]],
    zeros(length(PAC) - 4),
  )

  # Tri des personnes à charge, le conjoint en premier, les enfants par âge décroissant
  age_by_role = split_person_by_role(age, get_entity(variable), period, PAC)
  alt_by_role = split_person_by_role(alt, get_entity(variable), period, PAC)

  age_and_alt_matrix = hcat([
    (role == PART) * 10000 .+ age_by_role[role] .* 10 .+ alt_by_role[role] .-
      (age_by_role[role] .< 0) .* 999999
    for role in sort(collect(keys(age_by_role)))
  ]...)
  for row_index in 1:size(age_and_alt_matrix, 1)
    age_and_alt_matrix[row_index, :] = sort(age_and_alt_matrix[row_index, :], 2, rev = true)
  end

  # Calcule weighted_alt_matrix, qui vaut 0.5 pour les enfants en garde alternée, 1 sinon.
  present_matrix = age_and_alt_matrix .>= 0
  alt_matrix = (age_and_alt_matrix .% 10) .* present_matrix
  weighted_alt_matrix = present_matrix .- alt_matrix .* 0.5

  # Calcul final du coefficient
  coeff_pac = weighted_alt_matrix * coefficients_array

  return period, P["plafond_base"] .* (1 .+ cmu_eligible_majoration_dom .* P["majoration_dom"]) .*
    (1 .+ coeff_pac)
end


@define_formula(cmu_eligible_majoration_dom, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(residence_guadeloupe, period)
  @calculate(residence_martinique, period)
  @calculate(residence_guyane, period)
  @calculate(residence_reunion, period)
  return period, residence_guadeloupe | residence_martinique | residence_guyane | residence_reunion
end


@define_formula(cmu_forfait_logement_al, famille_definition, Float32, requested_period_default_value,
  label = "Forfait logement applicable en cas d'aide au logement",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(cmu_nbp_foyer, period)
  P = legislation_at(simulation, period.start)["cmu"]["forfait_logement_al"]
  law_rsa = legislation_at(simulation, period.start)["minim"]["rmi"]
  return period, forfait_logement(cmu_nbp_foyer, P, law_rsa)
end


@define_formula(cmu_forfait_logement_base, famille_definition, Float32, requested_period_default_value,
  label = "Forfait logement applicable en cas de propriété ou d'occupation à titre gratuit",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(cmu_nbp_foyer, period)
  P = legislation_at(simulation, period.start)["cmu"]["forfait_logement"]
  law_rsa = legislation_at(simulation, period.start)["minim"]["rmi"]
  return period, forfait_logement(cmu_nbp_foyer, P, law_rsa)
end


@define_formula(cmu_nb_pac, famille_definition, Int32, requested_period_last_value,
  label = "Nombre de personnes à charge au titre de la CMU",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  P = legislation_at(simulation, period.start)["cmu"]
  ages = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  return period, nb_par_age(ages, 0, P["age_limite_pac"])
end


@define_formula(cmu_nbp_foyer, famille_definition, Int32, requested_period_last_value,
  label = "Nombre de personnes dans le foyer CMU",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(nb_par, period)
  @calculate(cmu_nb_pac, period)
  return period, nb_par .+ cmu_nb_pac
end


function forfait_logement(nbp_foyer, P, law_rsa)
  "Calcule le forfait logement en fonction du nombre de personnes dans le \"foyer CMU\" et d'un jeu de taux"
  return (12 .* rsa_socle_base(nbp_foyer, law_rsa) .* ((nbp_foyer .== 1) .* P["taux_1p"] .+ (nbp_foyer .== 2) .* P["taux_2p"] .+ (nbp_foyer .> 2) .* P["taux_3p_plus"]))
end


function nb_par_age(ages, min, max)
  "Calcule le nombre d'individus ayant un âge compris entre min et max"
  res = nothing
  for (key, age) in ages
    if res === nothing
      res = zeros(Int32, length(age))
    end
    res += (min .<= age) & (age .<= max)
  end
  return res
end


function rsa_socle_base(nbp, P)
  "Calcule le RSA socle du foyer pour nombre de personnes donné"
  return P["rmi"] .* (1 .+ P["txp2"] .* (nbp .>= 2) .+ P["txp3"] .* (nbp .>= 3) .+ P["txps"] .* max(0, nbp .- 3))
end
