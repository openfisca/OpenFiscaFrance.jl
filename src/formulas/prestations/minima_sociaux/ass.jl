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


@define_formula(ass, famille_definition, Float32, requested_period_default_value,
  label = "Montant de l'ASS pour une famille",
) do simulation, variable, period
  """L’Allocation de Solidarité Spécifique (ASS) est une allocation versée aux
  personnes ayant épuisé leurs droits à bénéficier de l'assurance chômage.

  Le prétendant doit avoir épuisé ses droits à l’assurance chômage.
  Il doit être inscrit comme demandeur d’emploi et justifier de recherches actives.
  Il doit être apte à travailler.
  Il doit justifier de 5 ans d’activité salariée au cours des 10 ans précédant le chômage.
  À partir de 60 ans, il doit répondre à des conditions particulières.

  Les ressources prises en compte pour apprécier ces plafonds, comprennent l'allocation de solidarité elle-même
  ainsi que les autres ressources de l'intéressé, et de son conjoint, partenaire pacsé ou concubin,
  soumises à impôt sur le revenu.
  Ne sont pas prises en compte, pour déterminer le droit à ASS :
    l'allocation d'assurance chômage précédemment perçue,
    les prestations familiales,
    l'allocation de logement,
    la majoration de l'ASS,
    la prime forfaitaire mensuelle de retour à l'emploi,
    la pension alimentaire ou la prestation compensatoire due par l'intéressé.

  Conditions de versement de l'ASS majorée
      Pour les allocataires admis au bénéfice de l'ASS majorée (avant le 1er janvier 2004),
      le montant de l'ASS majorée est fixé à 22,07 € par jour.
      Pour mémoire, jusqu'au 31 décembre 2003, pouvaient bénéficier de l'ASS majorée, les allocataires :
      âgés de 55 ans ou plus et justifiant d'au moins 20 ans d'activité salariée,
      ou âgés de 57 ans et demi ou plus et justifiant de 10 ans d'activité salariée,
      ou justifiant d'au moins 160 trimestres de cotisation retraite.
  """
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(ass_base_ressources, period)
  ass_eligibilite_i_holder = calculate(simulation, "ass_eligibilite_i", period)
  @calculate(concub, period)
  ass_params = legislation_at(simulation, period.start)["minim"]["ass"]
  ass_eligibilite_i = split_person_by_role(ass_eligibilite_i_holder, get_entity(variable), period, [CHEF, PART])
  majo = 0
  elig = ((ass_eligibilite_i[CHEF]) | (ass_eligibilite_i[PART]))
  plafond_mensuel = ass_params["plaf_seul"] .* !concub .+ ass_params["plaf_coup"] .* concub
  montant_mensuel = 30 * (ass_params["montant_plein"] * !(majo != 0) + majo * ass_params["montant_maj"])
  revenus = ass_base_ressources ./ 12 .+ montant_mensuel
  ass = montant_mensuel .* (revenus .<= plafond_mensuel) .+ (revenus .> plafond_mensuel) .* max(plafond_mensuel .+ montant_mensuel .- revenus, 0)
  ass = ass .* elig
  ass = ass .* !(ass .< ass_params["montant_plein"])
  return period, ass
end


@define_formula(ass_base_ressources, famille_definition, Float32, requested_period_default_value,
  label = "Base de ressources de l'ASS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  ass_base_ressources_i_holder = calculate(simulation, "ass_base_ressources_i", period)
  ass_base_ressources_i = split_person_by_role(ass_base_ressources_i_holder, get_entity(variable), period, [CHEF, PART])
  return period, ass_base_ressources_i[CHEF] .+ ass_base_ressources_i[PART]
end


@define_formula(ass_base_ressources_i, individu_definition, Float32, requested_period_default_value,
  label = "Base de ressources individuelle de l'ASS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  previous_year = YearPeriod(period.start) - Year(1)
  @calculate(salnet, previous_year)
  @calculate(rstnet, previous_year)
  @calculate(pensions_alimentaires_percues, previous_year)
  @calculate(aah, previous_year)
  @calculate(indemnites_stage, previous_year)
  @calculate(revenus_stage_formation_pro, previous_year)
  return period, salnet .+ rstnet .+ pensions_alimentaires_percues .+ aah .+ indemnites_stage .+ revenus_stage_formation_pro
end


@define_formula(ass_eligibilite_i, individu_definition, Bool, requested_period_last_value,
  label = "Éligibilité individuelle à l'ASS",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(activite, period)
  @calculate(ass_precondition_remplie, period)
  return period, ((activite .== 1) & ass_precondition_remplie)
end
