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


@define_formula(accident_du_travail, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations patronales accident du travail et maladie professionelle",
) do simulation, variable, period
  @calculate(assiette_cotisations_sociales, period)
  @calculate(taux_accident_travail, period)
  @calculate(type_sal, period)
  assujetti = type_sal .<= 1
  return period, -assiette_cotisations_sociales .* taux_accident_travail .* assujetti
end


@define_formula(agff_tranche_a_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation retraite AGFF tranche A (employé)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "agff", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(agff_tranche_a_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation retraite AGFF tranche A (employeur)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(assiette_cotisations_sociales, period)
  @calculate(type_sal, period)
  @calculate(plafond_securite_sociale, period)
  law = legislation_at(simulation, period.start)
  cotisation_non_cadre = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = law["cotsoc"]["cotisations_employeur"], bareme_name = "agffnc", base = assiette_cotisations_sociales, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  cotisation_cadre = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = law["cotsoc"]["cotisations_employeur"], bareme_name = "agffc", base = assiette_cotisations_sociales, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return period, cotisation_cadre + cotisation_non_cadre
end


@define_formula(agirc_gmp_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation AGIRC pour la garantie minimale de points (GMP, employé)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(assiette_cotisations_sociales, period)
  @calculate(plafond_securite_sociale, period)
  law = legislation_at(simulation, period.start)["cotsoc"]["agirc_gmp"]
  taux = legislation_at(simulation, period.start)["cotsoc"]["cotisations_salarie"]["prive_cadre"]["agirc"].rates[1]
  salaire_charniere = law["salaire_charniere"]
  cotisation_forfaitaire = law["cotisation_salarie"]
  sous_plafond_securite_sociale = (assiette_cotisations_sociales .<= plafond_securite_sociale)
  cotisation = -(sous_plafond_securite_sociale .* cotisation_forfaitaire .+ !sous_plafond_securite_sociale .* (salaire_charniere / 12 .- assiette_cotisations_sociales) .* taux) .* (assiette_cotisations_sociales .> 0)
  return period, cotisation
end


@define_formula(agirc_gmp_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation AGIRC pour la garantie minimale de points (GMP, employeur)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(assiette_cotisations_sociales, period)
  @calculate(plafond_securite_sociale, period)
  law = legislation_at(simulation, period.start)["cotsoc"]["agirc_gmp"]
  taux = legislation_at(simulation, period.start)["cotsoc"]["cotisations_employeur"]["prive_cadre"]["arrco"].rates[1]
  salaire_charniere = law["salaire_charniere"]
  cotisation_forfaitaire = law["cotisation_employeur"]
  sous_plafond_securite_sociale = (assiette_cotisations_sociales .<= plafond_securite_sociale)
  cotisation = -(sous_plafond_securite_sociale .* cotisation_forfaitaire .+ !sous_plafond_securite_sociale .* (salaire_charniere / 12 .- assiette_cotisations_sociales) .* taux) .* (assiette_cotisations_sociales .> 0)
  return period, cotisation
end


@define_formula(agirc_tranche_b_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation AGIRC tranche B (employé)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "agirc", variable_name = variable.definition.name)
  gmp_employe = calculate_add(simulation, "agirc_gmp_employe", period)
  @calculate(type_sal, period)
  return period, cotisation .+ gmp_employe .* (cotisation .== 0) .* (type_sal .== 1)
end


@define_formula(agirc_tranche_b_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation AGIRC tranche B (employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "agirc", variable_name = variable.definition.name)
  gmp_employeur = calculate(simulation, "agirc_gmp_employeur", period)
  @calculate(type_sal, period)
  return period, cotisation .+ gmp_employeur .* (cotisation .== 0) .* (type_sal .== 1)
end


@define_formula(ags, individu_definition, Float32, requested_period_default_value,
  label = "Contribution à l'association pour la gestion du régime de garantie des créances des salariés (AGS, employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "chomfg", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(apec_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations agence pour l'emploi des cadres (APEC, employé)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "apec", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(apec_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations Agenece pour l'emploi des cadres (APEC, employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "apec", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(arrco_tranche_a_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation ARRCO tranche A (employé)",
) do simulation, variable, period
  cotisation_minimale = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "arrco", variable_name = variable.definition.name)
  @calculate(arrco_tranche_a_taux_salarie, period)
  @calculate_add(assiette_cotisations_sociales, period)
  @calculate_add(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  cotisation_entreprise = -(min(max(assiette_cotisations_sociales, 0), plafond_securite_sociale) .* arrco_tranche_a_taux_salarie)
  return period, (cotisation_minimale .* (arrco_tranche_a_taux_salarie .== 0) .+ cotisation_entreprise) .* (type_sal .<= 1)
end


@define_formula(arrco_tranche_a_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation ARRCO tranche A (employeur)",
) do simulation, variable, period
  cotisation_minimale = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "arrco")
  @calculate(arrco_tranche_a_taux_employeur, period)
  @calculate_add(assiette_cotisations_sociales, period)
  @calculate_add(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  cotisation_entreprise = -(min(max(assiette_cotisations_sociales, 0), plafond_securite_sociale) .* arrco_tranche_a_taux_employeur)
  return period, (cotisation_minimale .* (arrco_tranche_a_taux_employeur .== 0) .+ cotisation_entreprise) .* (type_sal .<= 1)
end


@define_formula(assedic_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation chômage tranche A (employé)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "assedic", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(assedic_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation chômage tranche A (employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "assedic", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(contribution_solidarite_autonomie, individu_definition, Float32, requested_period_default_value,
  label = "Contribution solidarité autonomie (employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "csa", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(cotisation_exceptionnelle_temporaire_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation_exceptionnelle_temporaire (employe)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "cet", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(cotisation_exceptionnelle_temporaire_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation exceptionnelle temporaire (employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "cet", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(famille, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation famille (employeur)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "famille", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(maladie_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation maladie (employé)",
) do simulation, variable, period
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "maladie", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(maladie_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation maladie (employeur)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "maladie", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(mhsup, individu_definition, Float32, requested_period_default_value,
  label = "Heures supplémentaires comptées négativement",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(hsup, period)
  return period, -hsup
end


@define_formula(plafond_securite_sociale, individu_definition, Float32, requested_period_default_value,
  label = "Plafond de la securite sociale",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(heures_non_remunerees_volume)
  @calculate(nombre_jours_calendaires, period)
  _P = legislation_at(simulation, period.start)
  plafond_temps_plein = _P["cotsoc"]["gen"]["plafond_securite_sociale"]
  jours_travailles = nombre_jours_calendaires .- heures_non_remunerees_volume ./ 7
  plafond_securite_sociale = min(jours_travailles, 30) ./ 30 .* plafond_temps_plein
  return period, plafond_securite_sociale
end


@define_formula(prevoyance_obligatoire_cadre, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation de prévoyance pour les cadres et assimilés",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(type_sal, period)
  @calculate(assiette_cotisations_sociales, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(prevoyance_obligatoire_cadre_taux_employeur, period)
  cotisation = -((type_sal .== CAT["prive_cadre"]) .* min(assiette_cotisations_sociales, plafond_securite_sociale) .* prevoyance_obligatoire_cadre_taux_employeur)
  return period, cotisation
end


@define_formula(taille_entreprise, individu_definition, Int16, requested_period_last_value,
  label = "Catégode taille d'entreprise (pour calcul des cotisations sociales)",
  url = "http://www.insee.fr/fr/themes/document.asp?ref_id=ip1321",
  values = [
    "Non pertinent" => 0,
    "Moins de 10 salariés" => 1,
    "De 10 à 19 salariés" => 2,
    "De 20 à 249 salariés" => 3,
    "Plus de 250 salariés" => 4,
  ],
) do simulation, variable, period
  period = period
  @calculate(effectif_entreprise, period)
  taille_entreprise = (int16((effectif_entreprise .> 0)) + int16((effectif_entreprise .> 10)) + int16((effectif_entreprise .> 20)) + int16((effectif_entreprise .> 250)))
  return period, taille_entreprise
end


@define_formula(taux_accident_travail, individu_definition, Float32, requested_period_default_value,
  label = "Approximation du taux accident à partir de l'exposition au risque donnée",
  start_date = Date(2012, 1, 1),
) do simulation, variable, period
  period_extract = first_day(MonthPeriod(period.start))
  @calculate(exposition_accident, period_extract)
  accident = legislation_at(simulation, period_extract.start)["cotsoc"]["accident"]
  return period, (exposition_accident .== 0) .* accident["faible"] .+ (exposition_accident .== 1) .* accident["moyen"] .+ (exposition_accident .== 2) .* accident["eleve"] .+ (exposition_accident .== 3) .* accident["treseleve"]
end


@define_formula(vieillesse_deplafonnee_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation vieillesse déplafonnée (employé)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "vieillessedeplaf", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(vieillesse_deplafonnee_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation vieillesse déplafonnée",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "vieillessedeplaf", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(vieillesse_plafonnee_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation vieillesse plafonnée (employé)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  cotisation = apply_bareme(simulation, period, cotisation_type = "salarie", bareme_name = "vieillesse", variable_name = variable.definition.name)
  return period, cotisation
end


@define_formula(vieillesse_plafonnee_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation vieillesse plafonnée (employeur)",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  cotisation = apply_bareme(simulation, period, cotisation_type = "employeur", bareme_name = "vieillesseplaf", variable_name = variable.definition.name)
  return period, cotisation
end
