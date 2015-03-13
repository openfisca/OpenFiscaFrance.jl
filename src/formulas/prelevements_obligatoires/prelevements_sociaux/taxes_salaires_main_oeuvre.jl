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


@define_formula(conge_individuel_formation_cdd, individu_definition, Float32, requested_period_default_value,
  label = "Contribution au financement des congé individuel de formation (CIF) des salariées en CDD",
) do simulation, variable, period
  @calculate(contrat_de_travail_duree, period)
  @calculate(assiette_cotisations_sociales, period)
  law = legislation_at(simulation, period.start)["cotsoc"]["conge_individuel_formation"]
  cotisation = -law["cdd"] .* (contrat_de_travail_duree .== 1) .* assiette_cotisations_sociales
  return period, cotisation
end


@define_formula(contribution_developpement_apprentissage, individu_definition, Float32, requested_period_default_value,
  label = "Contribution additionnelle au développement de l'apprentissage",
) do simulation, variable, period
  @calculate(redevable_taxe_apprentissage, period)
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "apprentissage_add", variable_name = variable.definition.name)
  return period, cotisation .* redevable_taxe_apprentissage
end


@define_formula(contribution_supplementaire_apprentissage, individu_definition, Float32, requested_period_default_value,
  label = "Contribution supplémentaire à l'apprentissage",
) do simulation, variable, period
  if Date(2010, 1, 1) <= period.start
    @calculate(redevable_taxe_apprentissage, period)
    @calculate(assiette_cotisations_sociales, period)
    @calculate(ratio_alternants, period)
    @calculate(effectif_entreprise, period)
    taux = legislation_at(simulation, period.start)["cotsoc"]["contribution_supplementaire_apprentissage"]
    if year(period.start) > 2012
      taux_contribution = redevable_taxe_apprentissage .* ((effectif_entreprise .< 2000) .* (ratio_alternants .< 0.01) .* taux["moins_2000_moins_1pc_alternants"] .+ (effectif_entreprise .>= 2000) .* (ratio_alternants .< 0.01) .* taux["plus_2000_moins_1pc_alternants"] .+ (0.01 .<= ratio_alternants) .* (ratio_alternants .< 0.02) .* taux["entre_1_2_pc_alternants"] .+ (0.02 .<= ratio_alternants) .* (ratio_alternants .< 0.03) .* taux["entre_2_3_pc_alternants"] .+ (0.03 .<= ratio_alternants) .* (ratio_alternants .< 0.04) .* taux["entre_3_4_pc_alternants"] .+ (0.04 .<= ratio_alternants) .* (ratio_alternants .< 0.05) .* taux["entre_4_5_pc_alternants"])
    else
      taux_contribution = (effectif_entreprise .>= 250) .* taux["plus_de_250"] .* redevable_taxe_apprentissage
    end
    return period, -taux_contribution .* assiette_cotisations_sociales
  else
    return period, default_array(variable)
  end
end


@define_formula(fnal_tranche_a, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation fonds national action logement (FNAL tout employeur)",
) do simulation, variable, period
  @calculate(taille_entreprise, period)
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "fnal1", variable_name = variable.definition.name)
  return period, cotisation .* (taille_entreprise .<= 2)
end


@define_formula(fnal_tranche_a_plus_20, individu_definition, Float32, requested_period_default_value,
  label = "Fonds national action logement (FNAL, employeur avec plus de 20 salariés)",
) do simulation, variable, period
  @calculate(taille_entreprise, period)
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "fnal2", variable_name = variable.definition.name)
  return period, cotisation .* (taille_entreprise .> 2)
end


@define_formula(formation_professionnelle, individu_definition, Float32, requested_period_default_value,
  label = "Formation professionnelle",
) do simulation, variable, period
  @calculate(taille_entreprise, period)
  cotisation_0_9 = (taille_entreprise .== 1) .* apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "formprof_09", variable_name = variable.definition.name)
  cotisation_10_19 = (taille_entreprise .== 2) .* apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "formprof_1019", variable_name = variable.definition.name)
  cotisation_20 = (taille_entreprise .> 2) .* apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "formprof_20", variable_name = variable.definition.name)
  return period, cotisation_0_9 .+ cotisation_10_19 .+ cotisation_20
end


@define_formula(participation_effort_construction, individu_definition, Float32, requested_period_default_value,
  label = "Participation à l'effort de construction",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "construction", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(taux_versement_transport, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(localisation_entreprise, period)
  _P = legislation_at(simulation, period.start)
  aot_salarie = 0
  smt_salarie = 0
  entreprise_seuil_employe_aot = 0
  rate = _P["cotsoc"]["cotisations_employeur"]["prive_non_cadre"]["transport"].rates[1] # MANUAL_FIX changed [0] to [1]
  return period, rate * ones(length(localisation_entreprise))
end


@define_formula(taxe_apprentissage, individu_definition, Float32, requested_period_default_value,
  label = "Taxe d'apprentissage (employeur, entreprise redevable de la taxe d'apprentissage uniquement)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(redevable_taxe_apprentissage, period)
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "apprentissage", variable_name = variable.definition.name)
  return period, redevable_taxe_apprentissage .* cotisation
end


@define_formula(taxe_salaires, individu_definition, Float32, requested_period_default_value,
  label = "Taxe sur les salaires",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(assujettie_taxe_salaires, period)
  @calculate(assiette_cotisations_sociales, period)
  @calculate(prevoyance_obligatoire_cadre, period)
  law = legislation_at(simulation, period.start)
  bareme = law["cotsoc"]["taxes_sal"]["taux_maj"]
  base = assiette_cotisations_sociales .- prevoyance_obligatoire_cadre
  return period, -(apply_tax_scale(bareme, base, factor = 1 / 12, round_base_decimals = 2) + round(law["cotsoc"]["taxes_sal"]["taux"]["metro"] .* base, 2)) .* assujettie_taxe_salaires
end


@define_formula(versement_transport, individu_definition, Float32, requested_period_default_value,
  label = "Versement transport",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(assiette_cotisations_sociales, period)
  @calculate(taux_versement_transport, period)
  cotisation = -taux_versement_transport .* assiette_cotisations_sociales
  return period, cotisation
end
