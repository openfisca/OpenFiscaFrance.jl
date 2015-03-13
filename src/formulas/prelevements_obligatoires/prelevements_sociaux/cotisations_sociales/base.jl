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


function apply_bareme(simulation, period; cotisation_type = nothing, bareme_name = nothing, variable_name = nothing)
  cotisation_mode_recouvrement = calculate(simulation, "cotisation_sociale_mode_recouvrement", period)
  cotisation = (cotisation_mode_recouvrement .== 1) .* (compute_cotisation_annuelle(simulation, period, cotisation_type = cotisation_type, bareme_name = bareme_name)) .+ (cotisation_mode_recouvrement .== 0) .* (compute_cotisation_anticipee(simulation, period, cotisation_type = cotisation_type, bareme_name = bareme_name, variable_name = variable_name))
  return cotisation
end


function apply_bareme_for_relevant_type_sal(; bareme_by_type_sal_name = nothing, bareme_name = nothing, type_sal = nothing, base = nothing, plafond_securite_sociale = nothing, round_base_decimals = 2)
  @assert bareme_by_type_sal_name !== nothing
  @assert bareme_name !== nothing
  @assert base !== nothing
  @assert plafond_securite_sociale !== nothing
  @assert type_sal !== nothing
  cotisation = zeros(Float32, length(base))
  for (type_sal_name, type_sal_index) in CAT
    if !(type_sal_name in keys(bareme_by_type_sal_name))
      continue
    end
    bareme = get(bareme_by_type_sal_name[type_sal_name], bareme_name, nothing)
    if bareme !== nothing
      cotisation += apply_tax_scale(bareme, base .* (type_sal .== type_sal_index), factor = plafond_securite_sociale, round_base_decimals = round_base_decimals)
    end
  end
  return -cotisation
end


function compute_cotisation(simulation, period; cotisation_type = nothing, bareme_name = nothing)
  @assert cotisation_type !== nothing
  law = legislation_at(simulation, period.start)
  if cotisation_type == "employeur"
    bareme_by_type_sal_name = law["cotsoc"]["cotisations_employeur"]
  elseif cotisation_type == "salarie"
    bareme_by_type_sal_name = law["cotsoc"]["cotisations_salarie"]
  end
  @assert bareme_name !== nothing
  @calculate_add(assiette_cotisations_sociales, period)
  @calculate_add(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  cotisation = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = bareme_by_type_sal_name, bareme_name = bareme_name, base = assiette_cotisations_sociales, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return cotisation
end


function compute_cotisation_annuelle(simulation, period; cotisation_type = nothing, bareme_name = nothing)
  if month(period.start) < 12
    return 0
  end
  if month(period.start) == 12
    return compute_cotisation(simulation, YearPeriod(firstdayofyear(period.start)), cotisation_type = cotisation_type, bareme_name = bareme_name)
  end
end


function compute_cotisation_anticipee(simulation, period; cotisation_type = nothing, bareme_name = nothing, variable_name = nothing)
  if month(period.start) < 12
    return compute_cotisation(simulation, MonthPeriod(firstdayofmonth(period.start)), cotisation_type = cotisation_type, bareme_name = bareme_name)
  end
  if month(period.start) == 12
    @assert variable_name !== nothing
    cumul = calculate_add(simulation, variable_name, MonthPeriod((firstdayofmonth(period.start) - Month(11)), 11))
    return compute_cotisation(simulation, YearPeriod(firstdayofyear(period.start)), cotisation_type = cotisation_type, bareme_name = bareme_name) .- cumul
  end
end
