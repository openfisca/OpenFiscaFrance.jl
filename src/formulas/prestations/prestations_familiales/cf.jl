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


@define_formula(cf, famille_definition, Float32, requested_period_default_value,
  label = "Complément familial",
  url = "http://vosdroits.service-public.fr/particuliers/F13214.xhtml",
) do simulation, variable, period
  "L'allocation de base de la paje n'est pas cumulable avec le complément familial"
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(paje_base_temp, period)
  @calculate_divide(apje_temp, period)
  @calculate_divide(ape_temp, period)
  @calculate(cf_temp, period)
  @calculate(residence_mayotte, period)
  cf_brut = (paje_base_temp .< cf_temp) .* (apje_temp .<= cf_temp) .* (ape_temp .<= cf_temp) .* cf_temp
  return period, !residence_mayotte .* round(cf_brut, 2)
end


@define_formula(cf_enfant_a_charge, individu_definition, Bool, requested_period_last_value,
  label = "Complément familial - Enfant considéré à charge",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(est_enfant_dans_famille, period)
  @calculate(smic55, period)
  @calculate(age, period)
  @calculate(rempli_obligation_scolaire, period)
  pfam = legislation_at(simulation, period.start)["fam"]
  condition_enfant = ((age .>= pfam["cf"]["age1"]) .* (age .< pfam["enfants"]["age_intermediaire"]) .* rempli_obligation_scolaire)
  condition_jeune = (age .>= pfam["enfants"]["age_intermediaire"]) .* (age .< pfam["cf"]["age2"]) .* !smic55
  return period, ((condition_enfant .!= 0) | (condition_jeune .!= 0)) .* est_enfant_dans_famille
end


@define_formula(cf_ressources_i, individu_definition, Float32, requested_period_default_value,
  label = "Complément familial - Ressources de l'individu prises en compte",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(br_pf_i, period)
  @calculate(est_enfant_dans_famille, period)
  @calculate(cf_enfant_a_charge, period)
  return period, (!est_enfant_dans_famille | cf_enfant_a_charge) .* br_pf_i
end


@define_formula(cf_temp, famille_definition, Float32, requested_period_default_value,
  label = "Complément familial avant d'éventuels cumuls",
  url = "http://vosdroits.service-public.fr/particuliers/F13214.xhtml",
) do simulation, variable, period
  """Complément familial
  Vous avez au moins 3 enfants à charge tous âgés de plus de 3 ans.
  Vos ressources ne dépassent pas certaines limites.
  Vous avez peut-être droit au Complément Familial à partir du mois
  suivant les 3 ans du 3ème, 4ème, etc. enfant.

  # TODO:
  # En théorie, il faut comparer les revenus de l'année n-2 à la bmaf de
  # l'année n-2 pour déterminer l'éligibilité avec le cf_seuil. Il faudrait
  # pouvoir déflater les revenus de l'année courante pour en tenir compte.
  """
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(isol, period)
  @calculate(biact, period)
  cf_ressources_i_holder = calculate(simulation, "cf_ressources_i", period)
  cf_enfant_a_charge_holder = calculate(simulation, "cf_enfant_a_charge", period)
  pfam = legislation_at(simulation, period.start)["fam"]
  pfam_n_2 = legislation_at(simulation, (period.start - Year(2)))["fam"]
  cf_nbenf = sum_person_in_entity(cf_enfant_a_charge_holder, get_entity(variable), period)
  ressources = sum_person_in_entity(cf_ressources_i_holder, get_entity(variable), period)
  bmaf = pfam["af"]["bmaf"]
  bmaf2 = pfam_n_2["af"]["bmaf"]
  cf_base_n_2 = pfam["cf"]["tx"] * bmaf2
  cf_base = pfam["cf"]["tx"] * bmaf
  cf_plaf_tx = 1 .+ pfam["cf"]["plaf_tx1"] .* min(cf_nbenf, 2) .+ pfam["cf"]["plaf_tx2"] .* max(cf_nbenf .- 2, 0)
  cf_majo = isol | biact
  cf_plaf = pfam["cf"]["plaf"] .* cf_plaf_tx .+ pfam["cf"]["plaf_maj"] .* cf_majo
  cf_plaf2 = cf_plaf .+ 12 * cf_base_n_2
  cf = (cf_nbenf .>= 3) .* ((ressources .<= cf_plaf) .* cf_base .+ (ressources .> cf_plaf) .* max(cf_plaf2 .- ressources, 0) ./ 12)
  return period, cf
end
