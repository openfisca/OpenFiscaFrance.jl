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


@define_formula(tns_total_revenus, individu_definition, Float32, requested_period_default_value,
  label = "Total des revenus non salariés",
) do simulation, variable, period
  if Date(2008, 1, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(tns_autres_revenus, period)
    @calculate(tns_type_structure, period)
    @calculate(tns_type_activite, period)
    @calculate(tns_chiffre_affaires_micro_entreprise, period)
    bareme = legislation_at(simulation, period.start)["tns"]
    cs_ae = bareme["auto_entrepreneur"]
    abatt_fp_me = bareme["micro_entreprise"]["abattement_forfaitaire_fp"]
    total_revenus = (tns_autres_revenus ./ 12 .+ (tns_type_structure .== 0) .* tns_chiffre_affaires_micro_entreprise ./ 12 .* (1 .- (tns_type_activite .== 0) .* cs_ae["achat_revente"] .- (tns_type_activite .== 1) .* cs_ae["bic"] .- (tns_type_activite .== 2) .* cs_ae["bnc"]) .+ (tns_type_structure .== 1) .* tns_chiffre_affaires_micro_entreprise ./ 12 .* (1 .- (tns_type_activite .== 0) .* abatt_fp_me["achat_revente"] .- (tns_type_activite .== 1) .* abatt_fp_me["bic"] .- (tns_type_activite .== 2) .* abatt_fp_me["bnc"]) .* (1 - bareme["micro_entreprise"]["cotisations_sociales"]))
    return period, total_revenus
  else
    return period, default_array(variable)
  end
end
