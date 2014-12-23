# OpenFisca -- A versatile microsimulation software
# By: OpenFisca Team <contact@openfisca.fr>
#
# Copyright (C) 2011, 2012, 2013, 2014 OpenFisca Team
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
variable_definition_by_name = (String => VariableDefinition)[]


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


macro define_variable(variable, args...)
  global variable_definition_by_name
  variable_name = string(variable)
  return esc(quote
    @assert !($variable_name in variable_definition_by_name)
    variable_definition_by_name[$variable_name] = VariableDefinition($variable_name, $(args...))
  end)
end


@define_entity(famille, index_variable_name = "idfam", role_variable_name ="quifam")
@define_entity(foyer_fiscal, index_variable_name = "idfoy", role_variable_name ="quifoy")
@define_entity(individu, is_person = true)
@define_entity(menage, index_variable_name = "idmen", role_variable_name ="quimen")


include("input_variables.jl")


tax_benefit_system = TaxBenefitSystem(entity_definition_by_name, variable_definition_by_name)


end # module
