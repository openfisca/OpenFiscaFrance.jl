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


module OpenFiscaFrance


export tax_benefit_system


using Dates

using OpenFiscaCore


# typealias Enumeration Dict{Int, String}


entity_definition_by_name = (String => EntityDefinition)[]
parameter_by_name = (String => Union(Parameter, TaxScale))[]
variable_definition_by_name = (String => VariableDefinition)[]
VOUS = Role(1)


macro define_entity(entity, args...)
  global entity_definition_by_name
  entity_name = string(entity)
  entity_definition = symbol(entity_name * "_definition")
  return esc(quote
    @assert !($entity_name in entity_definition_by_name)
    $entity_definition = EntityDefinition($entity_name, $(args...))
    entity_definition_by_name[$entity_name] = $entity_definition
  end)
end


macro define_parameter(parameter_path, parameter)
  global parameter_by_name
  parameter_name = string(parameter_path)
  return esc(quote
    @assert !($parameter_name in parameter_by_name)
    parameter_by_name[$parameter_name] = $parameter
  end)
end


macro define_variable(function_or_variable, args...)
  global variable_definition_by_name
  if isa(function_or_variable, Symbol)
    variable_name = string(function_or_variable)
    return esc(quote
      @assert !($variable_name in variable_definition_by_name)
      variable_definition_by_name[$variable_name] = VariableDefinition($variable_name, $(args...))
    end)
  else
    variable_name = string(args[1])
    args = args[2:end]
    return esc(quote
      @assert !($variable_name in variable_definition_by_name)
      variable_definition_by_name[$variable_name] = VariableDefinition($function_or_variable, $variable_name,
        $(args...))
    end)
  end
end


@define_entity(famille, index_variable_name = "idfam", role_variable_name ="quifam")
@define_entity(foyer_fiscal, index_variable_name = "idfoy", role_variable_name ="quifoy")
@define_entity(individu, is_person = true)
@define_entity(menage, index_variable_name = "idmen", role_variable_name ="quimen")


include("formulas.jl")
include("input_variables.jl")
include("parameters.jl")


tax_benefit_system = TaxBenefitSystem(entity_definition_by_name, parameter_by_name, variable_definition_by_name)


end # module
