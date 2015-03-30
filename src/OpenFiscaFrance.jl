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


export default_decomposition, single_entity_scenario, suggest, tax_benefit_system


importall Biryani
importall Biryani.DatesConverters
import DataStructures: OrderedDict, OrderedSet
import Dates: Date, Day, day, firstdayofmonth, firstdayofyear, lastdayofmonth, Month, month, Year, year
import JSON: JSON
importall OpenFiscaCore
import UUID: UUID


# typealias Enumeration Dict{Int, String}
typealias Enumeration Dict{String, Int}


const CAT = Enumeration([
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
const PAC2 = Role(4)
const PAC3 = Role(5)
const PART = Role(2)
const PREF = Role(1)
const SCOLARITE_COLLEGE = 1
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


macro define_formula(function_definition, variable, args...)
  global variable_definition_by_name
  variable_name = string(variable)
  return esc(quote
    @assert !haskey(variable_definition_by_name, $variable_name)
    variable_definition_by_name[$variable_name] = VariableDefinition($function_definition, $variable_name, $(args...))
  end)
end


macro define_parameter(parameter_path, parameter)
  global legislation
  return esc(quote
    add_to_legislation(legislation, $(string(parameter_path)), $parameter)
  end)
end


macro define_variable(variable, args...)
  global variable_definition_by_name
  variable_name = string(variable)
  return esc(quote
    @assert !haskey(variable_definition_by_name, $variable_name)
    variable_definition_by_name[$variable_name] = VariableDefinition(nothing, $variable_name, $(args...))
  end)
end


function each_famille_person_id_and_role(member)
  id_and_role_couples = (String, Int)[]

  role = 1
  parents_id = member["parents"]
  @assert 1 <= length(parents_id) <= 2
  for (parent_index, parent_id) in enumerate(parents_id)
    @assert parent_id !== nothing
    push!(id_and_role_couples, (parent_id, role + parent_index - 1))
  end

  role += 2
  enfants_id = get(member, "enfants", [])
  for (enfant_index, enfant_id) in enumerate(enfants_id)
    @assert enfant_id !== nothing
    push!(id_and_role_couples, (enfant_id, role + enfant_index - 1))
  end

  return id_and_role_couples
end


function each_foyer_fiscal_person_id_and_role(member)
  id_and_role_couples = (String, Int)[]

  role = 1
  declarants_id = member["declarants"]
  @assert 1 <= length(declarants_id) <= 2
  for (declarant_index, declarant_id) in enumerate(declarants_id)
    @assert declarant_id !== nothing
    push!(id_and_role_couples, (declarant_id, role + declarant_index - 1))
  end

  role += 2
  personnes_a_charge_id = get(member, "personnes_a_charge", [])
  for (personne_a_charge_index, personne_a_charge_id) in enumerate(personnes_a_charge_id)
    @assert personne_a_charge_id !== nothing
    push!(id_and_role_couples, (personne_a_charge_id, role + personne_a_charge_index - 1))
  end

  return id_and_role_couples
end


function each_menage_person_id_and_role(member)
  id_and_role_couples = (String, Int)[]

  role = 1
  personne_de_reference_id = member["personne_de_reference"]
  @assert personne_de_reference_id !== nothing
  push!(id_and_role_couples, (personne_de_reference_id, role))

  role += 1
  conjoint_id = get(member, "conjoint", nothing)
  if conjoint_id !== nothing
    push!(id_and_role_couples, (conjoint_id, role))
  end

  role += 1
  enfants_id = get(member, "enfants", [])
  autres_id = get(member, "autres", [])
  for (enfant_index, enfant_id) in enumerate(vcat(enfants_id, autres_id))
    @assert enfant_id !== nothing
    push!(id_and_role_couples, (enfant_id, role + enfant_index - 1))
  end

  return id_and_role_couples
end


@define_entity(famille, "familles",
  each_person_id_and_role = each_famille_person_id_and_role,
  index_variable_name = "idfam",
  label = "famille",
  label_by_role_name = ["enfants" => "enfants", "parents" => "parents"],
  label_plural = "familles",
  max_persons_by_role_name = ["parents" => 2],
  roles_name = ["parents", "enfants"],
  role_variable_name = "quifam",
)
@define_entity(foyer_fiscal, "foyers_fiscaux",
  each_person_id_and_role = each_foyer_fiscal_person_id_and_role,
  index_variable_name = "idfoy",
  label = "foyer fiscal",
  label_by_role_name = ["declarants" => "déclarants", "personnes_a_charge" => "personnes à charge"],
  label_plural = "foyers fiscaux",
  max_persons_by_role_name = ["declarants" => 2],
  roles_name = ["declarants", "personnes_a_charge"],
  role_variable_name = "quifoy",
)
@define_entity(individu, "individus", is_person = true, label = "personne", label_plural = "personnes")
@define_entity(menage, "menages",
  each_person_id_and_role = each_menage_person_id_and_role,
  index_variable_name = "idmen",
  label = "ménage",
  label_by_role_name = [
    "autres" => "autres",
    "conjoint" => "conjoint",
    "enfants" => "enfants",
    "personne_de_reference" => "personne de référence",
  ],
  label_plural = "ménages",
  max_persons_by_role_name = ["conjoint" => 1, "personne_de_reference" => 1],
  roles_name = ["personne_de_reference", "conjoint", "enfants", "autres"],
  role_variable_name = "quimen",
)


include("formulas.jl")
include("input_variables.jl")
include("legislations.jl")
include("parameters.jl")
include("scenarios.jl")


preprocess(legislation)
tax_benefit_system = TaxBenefitSystem(entity_definition_by_name, legislation, variable_definition_by_name,
  to_test_case = to_test_case)
preload_zone_apl()


macro define_decomposition(args...)
  global tax_benefit_system
  visit_decomposition(tax_benefit_system, args...)
end


include("decompositions.jl")


end # module
