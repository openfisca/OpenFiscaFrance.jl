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


@define_formula(cotisations_patronales, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales patronales",
) do simulation, variable, period
  period = period
  @calculate(cotisations_patronales_contributives, period)
  @calculate(cotisations_patronales_non_contributives, period)
  @calculate(cotisations_patronales_main_d_oeuvre, period)
  return period, (cotisations_patronales_contributives .+ cotisations_patronales_non_contributives .+ cotisations_patronales_main_d_oeuvre)
end


@define_formula(cotisations_patronales_contributives, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales patronales contributives",
) do simulation, variable, period
  period = period
  @calculate(ags, period)
  @calculate_add(agff_tranche_a_employeur, period)
  @calculate(apec_employeur, period)
  @calculate(arrco_tranche_a_employeur, period)
  @calculate(assedic_employeur, period)
  @calculate(cotisation_exceptionnelle_temporaire_employeur, period)
  @calculate_add(fonds_emploi_hospitalier, period)
  @calculate_add(ircantec_employeur, period)
  @calculate_add(pension_civile_employeur, period)
  @calculate_add(rafp_employeur, period)
  @calculate_add(vieillesse_deplafonnee_employeur, period)
  @calculate_add(vieillesse_plafonnee_employeur, period)
  cotisations_patronales_contributives = (ags .+ agff_tranche_a_employeur .+ apec_employeur .+ arrco_tranche_a_employeur .+ assedic_employeur .+ cotisation_exceptionnelle_temporaire_employeur .+ vieillesse_deplafonnee_employeur .+ vieillesse_plafonnee_employeur .+ fonds_emploi_hospitalier .+ ircantec_employeur .+ pension_civile_employeur .+ rafp_employeur)
  return period, cotisations_patronales_contributives
end


@define_formula(cotisations_patronales_main_d_oeuvre, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation sociales patronales main d'oeuvre",
) do simulation, variable, period
  period = period
  @calculate(conge_individuel_formation_cdd, period)
  @calculate(contribution_developpement_apprentissage, period)
  @calculate(contribution_solidarite_autonomie, period)
  @calculate(contribution_supplementaire_apprentissage, period)
  @calculate(fnal_tranche_a, period)
  @calculate(fnal_tranche_a_plus_20, period)
  @calculate(formation_professionnelle, period)
  @calculate_add(participation_effort_construction, period)
  @calculate_add(prevoyance_obligatoire_cadre, period)
  @calculate_add(taxe_apprentissage, period)
  @calculate_add(versement_transport, period)
  cotisations_patronales_main_d_oeuvre = (conge_individuel_formation_cdd .+ contribution_developpement_apprentissage .+ contribution_solidarite_autonomie .+ contribution_supplementaire_apprentissage .+ formation_professionnelle .+ fnal_tranche_a .+ fnal_tranche_a_plus_20 .+ participation_effort_construction .+ prevoyance_obligatoire_cadre .+ taxe_apprentissage .+ versement_transport)
  return period, cotisations_patronales_main_d_oeuvre
end


@define_formula(cotisations_patronales_non_contributives, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales patronales non-contributives",
) do simulation, variable, period
  period = period
  @calculate(accident_du_travail, period)
  @calculate_add(allocations_temporaires_invalidite, period)
  @calculate(famille, period)
  @calculate_add(maladie_employeur, period)
  @calculate_add(taxe_salaires, period)
  cotisations_patronales_non_contributives = (allocations_temporaires_invalidite .+ accident_du_travail .+ famille .+ maladie_employeur .+ taxe_salaires)
  return period, cotisations_patronales_non_contributives
end


@define_formula(cotisations_salariales, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales salariales",
) do simulation, variable, period
  period = period
  @calculate(cotisations_salariales_contributives, period)
  @calculate(cotisations_salariales_non_contributives, period)
  return period, cotisations_salariales_contributives .+ cotisations_salariales_non_contributives
end


@define_formula(cotisations_salariales_contributives, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales salariales contributives",
) do simulation, variable, period
  period = period
  @calculate_add(agff_tranche_a_employe, period)
  @calculate_add(agirc_tranche_b_employe, period)
  @calculate_add(apec_employe, period)
  @calculate_add(arrco_tranche_a_employe, period)
  @calculate_add(assedic_employe, period)
  @calculate_add(cotisation_exceptionnelle_temporaire_employe, period)
  @calculate_add(ircantec_employe, period)
  @calculate_add(pension_civile_employe, period)
  @calculate_add(rafp_employe, period)
  @calculate_add(vieillesse_deplafonnee_employe, period)
  @calculate_add(vieillesse_plafonnee_employe, period)
  cotisations_salariales_contributives = (agff_tranche_a_employe .+ agirc_tranche_b_employe .+ apec_employe .+ arrco_tranche_a_employe .+ assedic_employe .+ cotisation_exceptionnelle_temporaire_employe .+ vieillesse_deplafonnee_employe .+ vieillesse_plafonnee_employe .+ ircantec_employe .+ pension_civile_employe .+ rafp_employe)
  return period, cotisations_salariales_contributives
end


@define_formula(cotisations_salariales_non_contributives, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales salariales non-contributives",
) do simulation, variable, period
  period = period
  @calculate_add(contribution_exceptionnelle_solidarite_employe, period)
  @calculate_add(maladie_employe, period)
  cotisations_salariales_non_contributives = (maladie_employe .+ contribution_exceptionnelle_solidarite_employe)
  return period, cotisations_salariales_non_contributives
end
