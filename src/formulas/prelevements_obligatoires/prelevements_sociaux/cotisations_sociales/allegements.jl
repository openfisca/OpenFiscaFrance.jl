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


@define_formula(allegement_fillon, individu_definition, Float32, requested_period_default_value,
  label = "Allègement de charges patronales sur les bas et moyens salaires (dit allègement Fillon)",
) do simulation, variable, period
  if Date(2005, 7, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(allegement_fillon_mode_recouvrement, period)
    allegement = (allegement_fillon_mode_recouvrement .== 0) .* (compute_allegement_fillon_annuel(simulation, period)) .+ (allegement_fillon_mode_recouvrement .== 1) .* (compute_allegement_fillon_anticipe(simulation, period)) .+ (allegement_fillon_mode_recouvrement .== 2) .* (compute_allegement_fillon_progressif(simulation, period))
    return period, allegement
  else
    return period, default_array(variable)
  end
end


@define_formula(assiette_allegement, individu_definition, Float32, requested_period_default_value,
  label = "Assiette des allègements de cotisations sociales patronales",
) do simulation, variable, period
  @calculate_add(assiette_cotisations_sociales, period)
  @calculate(type_sal, period)
  period = period
  return period, assiette_cotisations_sociales .* ((type_sal .== CAT["prive_non_cadre"]) | (type_sal .== CAT["prive_cadre"]))
end


function compute_allegement_fillon(simulation, period)
  """Exonération Fillon
  http://www.securite-sociale.fr/comprendre/dossiers/exocotisations/exoenvigueur/fillon.htm
  """
  @calculate_add(assiette_allegement, period)
  @calculate_add(smic_proratise, period)
  @calculate(taille_entreprise, period)
  majoration = (taille_entreprise .<= 2)
  Pf = legislation_at(simulation, period.start)["cotsoc"]["exo_bas_sal"]["fillon"]
  seuil = Pf["seuil"]
  tx_max = (Pf["tx_max"] .* !majoration .+ Pf["tx_max2"] .* majoration)
  if seuil <= 1
    return 0
  end
  ratio_smic_salaire = smic_proratise ./ (assiette_allegement .+ 1e-16)
  taux_fillon = round(tx_max .* min(1, max(seuil .* ratio_smic_salaire .- 1, 0) ./ (seuil - 1)), 4)
  allegement_fillon = taux_fillon .* assiette_allegement
  return allegement_fillon
end


function compute_allegement_fillon_annuel(simulation, period)
  if month(period.start) < 12
    return 0
  end
  if month(period.start) == 12
    return compute_allegement_fillon(simulation, YearPeriod(firstdayofyear(period.start)))
  end
end


function compute_allegement_fillon_anticipe(simulation, period)
  if month(period.start) < 12
    return compute_allegement_fillon(simulation, MonthPeriod(firstdayofmonth(period.start)))
  end
  if month(period.start) == 12
    cumul = calculate_add(simulation, "allegement_fillon", MonthPeriod((firstdayofmonth(period.start) - Month(11)), 11))
    return compute_allegement_fillon(simulation, YearPeriod(firstdayofyear(period.start))) .- cumul
  end
end


function compute_allegement_fillon_progressif(simulation, period)
  if month(period.start) == 1
    return compute_allegement_fillon(simulation, MonthPeriod(firstdayofmonth(period.start)))
  end
  if month(period.start) > 1
    up_to_this_month = MonthPeriod(firstdayofyear(period.start), month(period.start))
    up_to_previous_month = MonthPeriod(firstdayofyear(period.start), month(period.start) - 1)
    cumul = calculate_add(simulation, "allegement_fillon", up_to_previous_month)
    up_to_this_month = MonthPeriod(firstdayofyear(period.start), month(period.start))
    return compute_allegement_fillon(simulation, up_to_this_month) .- cumul
  end
end


@define_formula(credit_impot_competitivite_emploi, individu_definition, Float32, requested_period_default_value,
  label = "Crédit d'imôt pour la compétitivité et l'emploi",
) do simulation, variable, period
  if Date(2013, 1, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(smic_proratise, period)
    @calculate(assiette_allegement, period)
    cotsoc = legislation_at(simulation, period.start)["cotsoc"]
    taux_cice = taux_exo_cice(assiette_allegement, smic_proratise, cotsoc)
    credit_impot_competitivite_emploi = (taux_cice .* assiette_allegement)
    return period, credit_impot_competitivite_emploi
  else
    return period, default_array(variable)
  end
end


@define_formula(smic_proratise, individu_definition, Float32, requested_period_default_value,
  label = "SMIC proratisé",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(coefficient_proratisation, period)
  smic_horaire_brut = legislation_at(simulation, period.start)["cotsoc"]["gen"]["smic_h_b"]
  smic_proratise = coefficient_proratisation .* smic_horaire_brut .* 35 .* 52 ./ 12
  return period, smic_proratise
end


function taux_exo_cice(assiette_allegement, smic_proratise, P)
  Pc = P["exo_bas_sal"]["cice"]
  taux_cice = ((assiette_allegement ./ (smic_proratise .+ 1e-16)) .<= Pc["max"]) .* Pc["taux"]
  return taux_cice
end
