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


export single_entity_scenario, tax_benefit_system, to_test_case


import DataStructures: OrderedDict, OrderedSet
using Dates

using Converters
using OpenFiscaCore
using UUID


# typealias Enumeration Dict{Int, String}
typealias Enumeration Dict{String, Int}


const CAT = Enumeration([
  # 0 => "prive_non_cadre",
  # 1 => "prive_cadre",
  # 2 => "public_titulaire_etat",
  # 3 => "public_titulaire_militaire",
  # 4 => "public_titulaire_territoriale",
  # 5 => "public_titulaire_hospitaliere",
  # 6 => "public_non_titulaire",
  "prive_non_cadre" => 0,
  "prive_cadre" => 1,
  "public_titulaire_etat" => 2,
  "public_titulaire_militaire" => 3,
  "public_titulaire_territoriale" => 4,
  "public_titulaire_hospitaliere" => 5,
  "public_non_titulaire" => 6,
])
const CHEF = Role(1)
const CONJ = Role(2)
const ENFS = [Role(3), Role(4), Role(5), Role(6), Role(7), Role(8), Role(9), Role(10), Role(11)]
const PAC1 = Role(3)
const TAUX_DE_PRIME = 1 / 4  # primes_fonction_publique (hors suppl. familial et indemnité de résidence)/rémunération brute
const VOUS = Role(1)


entity_definition_by_name = (String => EntityDefinition)[]
legislation = Legislation()
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


macro define_parameter(parameter_path, parameter)
  global legislation
  return esc(quote
    add_to_legislation(legislation, $(string(parameter_path)), $parameter)
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


@define_entity(famille, "familles", index_variable_name = "idfam", role_variable_name ="quifam")
@define_entity(foyer_fiscal, "foyers_fiscaux", index_variable_name = "idfoy", role_variable_name ="quifoy")
@define_entity(individu, "individus", is_person = true)
@define_entity(menage, "menages", index_variable_name = "idmen", role_variable_name ="quimen")


include("formulas.jl")
include("input_variables.jl")
include("legislations.jl")
include("parameters.jl")
include("scenarios.jl")


preprocess(legislation)
tax_benefit_system = TaxBenefitSystem(entity_definition_by_name, legislation, variable_definition_by_name)


end # module
