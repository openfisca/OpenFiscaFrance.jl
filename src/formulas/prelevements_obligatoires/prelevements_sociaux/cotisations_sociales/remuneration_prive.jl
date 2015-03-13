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


@define_formula(assiette_cotisations_sociales, individu_definition, Float32, requested_period_default_value,
  label = "Assiette des cotisations sociales des salaries",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(assiette_cotisations_sociales_prive, period)
  @calculate(assiette_cotisations_sociales_public, period)
  return period, assiette_cotisations_sociales_prive .+ assiette_cotisations_sociales_public
end


@define_formula(assiette_cotisations_sociales_prive, individu_definition, Float32, requested_period_default_value,
  label = "Assiette des cotisations sociales des salaries du prive",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(avantages_en_nature, period)
  @calculate(hsup, period)
  @calculate(indemnites_compensatrices_conges_payes, period)
  @calculate(indemnite_residence, period)
  @calculate(primes_fonction_publique, period)
  @calculate(primes_salaires, period)
  @calculate(reintegration_titre_restaurant_employeur, period)
  @calculate(salaire_de_base, period)
  @calculate(type_sal, period)
  @calculate(smic_proratise, period)
  assiette = (salaire_de_base .+ primes_salaires .+ avantages_en_nature .+ hsup .+ indemnites_compensatrices_conges_payes .+ (type_sal .== CAT["public_non_titulaire"]) .* (indemnite_residence .+ primes_fonction_publique) .+ reintegration_titre_restaurant_employeur)
  return period, max(assiette, smic_proratise) .* (assiette .> 0)
end


@define_formula(avantages_en_nature, individu_definition, Float32, requested_period_default_value,
  label = "Avantages en nature",
) do simulation, variable, period
  period = period
  @calculate(avantages_en_nature_valeur_reelle, period)
  @calculate(avantages_en_nature_valeur_forfaitaire, period)
  return period, avantages_en_nature_valeur_reelle .+ avantages_en_nature_valeur_forfaitaire
end


@define_formula(avantages_en_nature_valeur_forfaitaire, individu_definition, Float32, requested_period_default_value,
  label = "Evaluation fofaitaire des avantages en nature ",
) do simulation, variable, period
  period = period
  @calculate(avantages_en_nature_valeur_reelle, period)
  return period, avantages_en_nature_valeur_reelle .* 0
end


@define_formula(depense_cantine_titre_restaurant_employe, individu_definition, Float32, requested_period_default_value,
  label = "Dépense de cantine et de titre restaurant à charge de l'employe",
) do simulation, variable, period
  period = period
  valeur_unitaire = calculate(simulation, "titre_restaurant_valeur_unitaire", period)
  volume = calculate(simulation, "titre_restaurant_volume", period)
  taux_employeur = calculate(simulation, "titre_restaurant_taux_employeur", period)
  return period, -valeur_unitaire .* volume .* (1 .- taux_employeur)
end


@define_formula(depense_cantine_titre_restaurant_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Dépense de cantine et de titre restaurant à charge de l'employeur",
) do simulation, variable, period
  period = period
  valeur_unitaire = calculate(simulation, "titre_restaurant_valeur_unitaire", period)
  volume = calculate(simulation, "titre_restaurant_volume", period)
  taux_employeur = calculate(simulation, "titre_restaurant_taux_employeur", period)
  return period, valeur_unitaire .* volume .* taux_employeur
end


@define_formula(nombre_jours_calendaires, individu_definition, Float32, requested_period_default_value,
  label = "Nombre de jours calendaires travaillés",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(contrat_de_travail_arrivee, period)
  @calculate(contrat_de_travail_depart, period)
  debut_mois = firstdayofmonth(period.start)
  fin_mois = lastdayofmonth(period.start)
  jours_travailles = max(
    int(min(contrat_de_travail_depart, fin_mois)) .- int(max(contrat_de_travail_arrivee, debut_mois))
      .+ 1,
    0,
  )
  return period, jours_travailles
end


@define_formula(reintegration_titre_restaurant_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Prise en charge de l'employeur des dépenses de cantine et des titres restaurants non exonérés de charges sociales",
) do simulation, variable, period
  period = period
  valeur_unitaire = calculate(simulation, "titre_restaurant_valeur_unitaire", period)
  volume = calculate(simulation, "titre_restaurant_volume", period)
  taux_employeur = calculate(simulation, "titre_restaurant_taux_employeur", period)
  cantines_titres_restaurants = legislation_at(simulation, period.start)["cotsoc"]["assiette"]["cantines_titres_restaurants"]
  taux_minimum_exoneration = cantines_titres_restaurants["taux_minimum_exoneration"]
  taux_maximum_exoneration = cantines_titres_restaurants["taux_maximum_exoneration"]
  seuil_prix_titre = cantines_titres_restaurants["seuil_prix_titre"]
  condition_exoneration_taux = ((taux_minimum_exoneration .<= taux_employeur) .* (taux_maximum_exoneration .>= taux_employeur))
  montant_reintegration = volume .* (condition_exoneration_taux .* max(valeur_unitaire .* taux_employeur .- seuil_prix_titre, 0) .+ !(condition_exoneration_taux .!= 0) .* valeur_unitaire .* taux_employeur)
  return period, montant_reintegration
end


@define_formula(remboursement_transport, individu_definition, Float32, requested_period_default_value,
  label = "Remboursement partiel des frais de transport par l'employeur",
) do simulation, variable, period
  @calculate(remboursement_transport_base, period)
  return period, -0.5 .* remboursement_transport_base
end
