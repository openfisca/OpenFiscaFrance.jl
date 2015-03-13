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
# License, || (at your option) any later version.
#
# OpenFisca is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY || FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


function find_age(individu, date; default = nothing)
  birth = get(individu, "birth", nothing)
  if birth !== nothing
    age = year(date) - year(birth)
    if month(date) < month(birth) || month(date) == month(birth) && day(date) < day(birth)
      age -= 1
    end
    return age
  end
  age = get(individu, "age", nothing)
  if age !== nothing
    return age
  end
  agem = get(individu, "agem", nothing)
  if agem !== nothing
    return agem / 12
  end
  return default
end


function find_famille_and_role(test_case, individu_id)
  for famille in test_case["familles"]
    for role in ("parents", "enfants")
      if individu_id in famille[role]
        return famille, role
      end
    end
  end
  return nothing, nothing
end


function find_foyer_fiscal_and_role(test_case, individu_id)
  for foyer_fiscal in test_case["foyers_fiscaux"]
    for role in ("declarants", "personnes_a_charge")
      if individu_id in foyer_fiscal[role]
        return foyer_fiscal, role
      end
    end
  end
  return nothing, nothing
end


function find_menage_and_role(test_case, individu_id)
  for menage in test_case["menages"]
    for role in ("personne_de_reference", "conjoint")
      if menage[role] == individu_id
        return menage, role
      end
    end
    for role in ("enfants", "autres")
      if individu_id in menage[role]
        return menage, role
      end
    end
  end
  return nothing, nothing
end


function single_entity_scenario(tax_benefit_system::TaxBenefitSystem, period; axes = nothing, enfants = nothing,
    famille = nothing, foyer_fiscal = nothing, menage = nothing, parent1 = nothing, parent2 = nothing)
  if enfants === nothing
    enfants = Any[]
  end
  @assert parent1 !== nothing
  famille = famille === nothing ? (String => Any)[] : copy(famille)
  foyer_fiscal = foyer_fiscal === nothing ? (String => Any)[] : copy(foyer_fiscal)
  individus = Any[]
  menage = menage === nothing ? (String => Any)[] : copy(menage)
  for (index, individu) in enumerate(vcat([parent1, parent2], enfants))
    if individu === nothing
      continue
    end
    id = get(individu, "id", nothing)
    if id === nothing
      individu = copy(individu)
      individu["id"] = id = string("ind", index)
    end
    push!(individus, individu)
    if index <= 2
      push!(get!(() -> String[], famille, "parents"), id)
      push!(get!(() -> String[], foyer_fiscal, "declarants"), id)
      if index == 1
        menage["personne_de_reference"] = id
      else:
        menage["conjoint"] = id
      end
    else
      push!(get!(() -> String[], famille, "enfants"), id)
      push!(get!(() -> String[], foyer_fiscal, "personnes_a_charge"), id)
      push!(get!(() -> String[], menage, "enfants"), id)
    end
  end
  return Convertible([
    "axes" => axes,
    "period" => period,
    "test_case" => [
      "familles" => [famille],
      "foyers_fiscaux" => [foyer_fiscal],
      "individus" => individus,
      "menages" => [menage],
    ],
  ]) |> to_scenario(tax_benefit_system) |> to_value
end


suggest(scenario::InputVariablesScenario) = nothing

function suggest(scenario::TestCaseScenario)
  period_start = scenario.period.start
  period_start_year = year(scenario.period.start)
  test_case = scenario.test_case
  suggestions = (String => Any)[]

  for individu in test_case["individus"]
    individu_id = individu["id"]
    if get(individu, "age", nothing) === nothing && get(individu, "agem", nothing) === nothing &&
        get(individu, "birth", nothing) === nothing
      # Add missing birth date to person (a parent is 40 years old and a child is 10 years old.
      is_parent = any(famille -> individu_id in famille["parents"], test_case["familles"])
      birth_year = is_parent ? period_start_year - 40 : period_start_year - 10
      individu["birth"] = birth = Date(birth_year, 1, 1)
      suggested_test_case = get!(() -> (String => Any)[], suggestions, "test_case")
      suggested_individus = get!(() -> (String => Dict{String, Any})[], suggested_test_case, "individus")
      suggested_individu = get!(() -> (String => Any)[], suggested_individus, individu_id)
      suggested_individu["birth"] = string(birth)
    end
    if get(individu, "activite", nothing) === nothing && find_age(individu, period_start) < 16
      individu["activite"] = activite = 2  # Étudiant, élève
      suggested_test_case = get!(() -> (String => Any)[], suggestions, "test_case")
      suggested_individus = get!(() -> (String => Dict{String, Any})[], suggested_test_case, "individus")
      suggested_individu = get!(() -> (String => Any)[], suggested_individus, individu_id)
      suggested_individu["activite"] = string(activite)
    end
  end

  individu_by_id = [
    individu["id"] => individu
    for individu in test_case["individus"]
    ]

  for foyer_fiscal in test_case["foyers_fiscaux"]
    if length(foyer_fiscal["declarants"]) == 1 && !isempty(foyer_fiscal["personnes_a_charge"])
      # Suggest "parent isolé" when foyer_fiscal contains a single "declarant" with "personnes_a_charge".
      if get(foyer_fiscal, "caseT", nothing) === nothing
        suggested_test_case = get!(() -> (String => Any)[], suggestions, "test_case")
        suggested_foyers_fiscaux = get!(() -> (String => Dict{String, Any})[], suggested_test_case, "foyers_fiscaux")
        suggested_foyer_fiscal = get!(() -> (String => Any)[], suggested_foyers_fiscaux, foyer_fiscal["id"])
        suggested_foyer_fiscal["caseT"] = foyer_fiscal["caseT"] = true
      end
    elseif length(foyer_fiscal["declarants"]) == 2
      # Suggest "PACSé" or "Marié" instead of "Célibataire" when foyer_fiscal contains 2 "declarants" without
      # "statmarit".
      statmarit = 5  # PACSé
      for individu_id in foyer_fiscal["declarants"]
        individu = individu_by_id[individu_id]
        if get(individu, "statmarit", nothing) == 1  # Marié
          statmarit = 1
        end
      end
      for individu_id in foyer_fiscal["declarants"]
        individu = individu_by_id[individu_id]
        if get(individu, "statmarit", nothing) === nothing
          individu["statmarit"] = statmarit
          suggested_test_case = get!(() -> (String => Any)[], suggestions, "test_case")
          suggested_individus = get!(() -> (String => Dict{String, Any})[], suggested_test_case, "individus")
          suggested_individu = get!(() -> (String => Any)[], suggested_individus, individu_id)
          suggested_individu["statmarit"] = string(statmarit)
        end
      end
    end
  end

  return isempty(suggestions) ? nothing : suggestions
end


test_in_pop(values; error = nothing) = pipe(
  test_in(values, error = error),
  call(value -> begin
    delete!(values, value)
    return value
  end),
)


function to_test_case(tax_benefit_system::TaxBenefitSystem, period::DatePeriod; repair = false)
  variable_definition_by_name = tax_benefit_system.variable_definition_by_name

  return function run_to_test_case(convertible::Convertible)
    if convertible.error !== nothing || convertible.value === nothing
      return convertible
    end

    # First validation && conversion step
    converted = pipe(
      test_isa(Union(Dict, OrderedDict)),
      struct(
        [
          "familles" => pipe(
            item_to_singleton,
            test_isa(Array),
            uniform_sequence(
              test_isa(Union(Dict, OrderedDict)),
              drop_nothing = true,
            ),
            call(set_entities_json_id),
            uniform_sequence(
              struct(
                merge(
                  [
                    "enfants" => pipe(
                      item_to_singleton,
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    "id" => pipe(
                      test_isa(Union(Int, String)),
                      to_string,
                      require,
                    ),
                    "parents" => pipe(
                      item_to_singleton,
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                  ],
                  [
                    variable_definition.name => to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "famille"
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            default(Dict{String, Any}[]),
          ),
          "foyers_fiscaux" => pipe(
            item_to_singleton,
            test_isa(Array),
            uniform_sequence(
              test_isa(Union(Dict, OrderedDict)),
              drop_nothing = true,
            ),
            call(set_entities_json_id),
            uniform_sequence(
              struct(
                merge(
                  [
                    "declarants" => pipe(
                      item_to_singleton,
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    "id" => pipe(
                      test_isa(Union(Int, String)),
                      to_string,
                      require,
                    ),
                    "personnes_a_charge" => pipe(
                      item_to_singleton,
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                  ],
                  [
                    variable_definition.name => to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "foyer_fiscal"
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            default(Dict{String, Any}[]),
          ),
          "individus" => pipe(
            item_to_singleton,
            test_isa(Array),
            uniform_sequence(
              test_isa(Union(Dict, OrderedDict)),
              drop_nothing = true,
            ),
            call(set_entities_json_id),
            uniform_sequence(
              struct(
                merge(
                  [
                    "id" => pipe(
                      test_isa(Union(Int, String)),
                      to_string,
                      require,
                    ),
                  ],
                  [
                    variable_definition.name => to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "individu" && !(variable_definition.name in (
                        "idfam", "idfoy", "idmen", "quifam", "quifoy", "quimen"))
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            empty_to_nothing,
            require,
          ),
          "menages" => pipe(
            item_to_singleton,
            test_isa(Array),
            uniform_sequence(
              test_isa(Union(Dict, OrderedDict)),
              drop_nothing = true,
            ),
            call(set_entities_json_id),
            uniform_sequence(
              struct(
                merge(
                  [
                    "autres" => pipe(
                      # personnes ayant un lien autre avec la personne de référence
                      item_to_singleton,
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    # conjoint de la personne de référence
                    "conjoint" => test_isa(Union(Int, String)),
                    "enfants" => pipe(
                      # enfants de la personne de référence ou de son conjoint
                      item_to_singleton,
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    "id" => pipe(
                      test_isa(Union(Int, String)),
                      to_string,
                      require,
                    ),
                    "personne_de_reference" => test_isa(Union(Int, String)),
                  ],
                  [
                    variable_definition.name => to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "menage"
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            default(Dict{String, Any}[]),
          ),
        ],
      ),
    )(convertible)
    if converted.error !== nothing
      return converted
    end
    test_case = converted.value

    # Second validation step
    familles_individus_id = OrderedSet([individu["id"] for individu in test_case["individus"]])
    foyers_fiscaux_individus_id = OrderedSet([individu["id"] for individu in test_case["individus"]])
    menages_individus_id = OrderedSet([individu["id"] for individu in test_case["individus"]])
    converted = struct(
      [
        "familles" => uniform_sequence(
          struct(
            [
              "enfants" => uniform_sequence(test_in_pop(familles_individus_id)),
              "parents" => uniform_sequence(test_in_pop(familles_individus_id)),
            ],
            default = noop,
          ),
        ),
        "foyers_fiscaux" => uniform_sequence(
          struct(
            [
              "declarants" => uniform_sequence(test_in_pop(foyers_fiscaux_individus_id)),
              "personnes_a_charge" => uniform_sequence(test_in_pop(foyers_fiscaux_individus_id)),
            ],
            default = noop,
          ),
        ),
        "menages" => uniform_sequence(
          struct(
            [
              "autres" => uniform_sequence(test_in_pop(menages_individus_id)),
              "conjoint" => test_in_pop(menages_individus_id),
              "enfants" => uniform_sequence(test_in_pop(menages_individus_id)),
              "personne_de_reference" => test_in_pop(menages_individus_id),
            ],
            default = noop,
          ),
        ),
      ],
      default = noop,
    )(converted)
    test_case, error = to_value_error(converted)

    individu_by_id = [
      individu["id"] => individu
      for individu in test_case["individus"]
      ]

    if repair
      # Affecte à une famille chaque individu qui n'appartient à aucune d'entre elles.
      new_famille = (String => Any)[
        "enfants" => Any[],
        "parents" => Any[],
      ]
      new_famille_id = nothing
      for individu_id in copy(familles_individus_id)
        # Tente d'affecter l'individu à une famille d'après son foyer fiscal.
        foyer_fiscal, foyer_fiscal_role = find_foyer_fiscal_and_role(test_case, individu_id)
        if foyer_fiscal_role == "declarants" && length(foyer_fiscal["declarants"]) == 2
          for declarant_id in foyer_fiscal["declarants"]
            if declarant_id != individu_id
              famille, other_role = find_famille_and_role(test_case, declarant_id)
              if other_role == "parents" && length(famille["parents"]) == 1
                # Quand l'individu n'est pas encore dans une famille, mais qu'il est déclarant
                # dans un foyer fiscal, qu'il y a un autre déclarant dans ce même foyer fiscal
                # et que cet autre déclarant est seul parent dans sa famille, alors ajoute
                # l'individu comme autre parent de cette famille.
                push!(famille["parents"], individu_id)
                delete!(familles_individus_id, individu_id)
              end
              break
            end
          end
        elseif foyer_fiscal_role == "personnes_a_charge" && foyer_fiscal["declarants"]
          for declarant_id in foyer_fiscal["declarants"]
            famille, other_role = find_famille_and_role(test_case, declarant_id)
            if other_role == "parents"
              # Quand l'individu n'est pas encore dans une famille, mais qu'il est personne à charge
              # dans un foyer fiscal, qu'il y a un déclarant dans ce foyer fiscal et que ce déclarant
              # est parent dans sa famille, alors ajoute l'individu comme enfant de cette famille.
              push!(famille["enfants"], individu_id)
              delete!(familles_individus_id, individu_id)
            end
            break
          end
        end

        if individu_id in familles_individus_id
          # L'individu n'est toujours pas affecté à une famille.
          # Tente d'affecter l'individu à une famille d'après son ménage.
          menage, menage_role = find_menage_and_role(test_case, individu_id)
          if menage_role == "personne_de_reference"
            conjoint_id = menage["conjoint"]
            if conjoint_id !== nothing
              famille, other_role = find_famille_and_role(test_case, conjoint_id)
              if other_role == "parents" && length(famille["parents"]) == 1
                # Quand l'individu n'est pas encore dans une famille, mais qu'il est personne de
                # référence dans un ménage, qu'il y a un conjoint dans ce ménage et que ce
                # conjoint est seul parent dans sa famille, alors ajoute l'individu comme autre
                # parent de cette famille.
                push!(famille["parents"], individu_id)
                delete!(familles_individus_id, individu_id)
              end
            end
          elseif menage_role == "conjoint"
            personne_de_reference_id = menage["personne_de_reference"]
            if personne_de_reference_id !== nothing
              famille, other_role = find_famille_and_role(test_case, personne_de_reference_id)
              if other_role == "parents" && length(famille["parents"]) == 1
                # Quand l'individu n'est pas encore dans une famille, mais qu'il est conjoint
                # dans un ménage, qu'il y a une personne de référence dans ce ménage et que
                # cette personne est seul parent dans une famille, alors ajoute l'individu comme
                # autre parent de cette famille.
                push!(famille["parents"], individu_id)
                delete!(familles_individus_id, individu_id)
              end
            end
          elseif menage_role == "enfants" && (menage["personne_de_reference"] !== nothing ||
              menage["conjoint"] !== nothing)
            for other_id in (menage["personne_de_reference"], menage["conjoint"])
              if other_id === nothing
                continue
              end
              famille, other_role = find_famille_and_role(test_case, other_id)
              if other_role == "parents"
                # Quand l'individu n'est pas encore dans une famille, mais qu'il est enfant dans un
                # ménage, qu'il y a une personne à charge ou un conjoint dans ce ménage et que
                # celui-ci est parent dans une famille, alors ajoute l'individu comme enfant de
                # cette famille.
                push!(famille["enfants"], individu_id)
                delete!(familles_individus_id, individu_id)
              end
              break
            end
          end
        end

        if individu_id in familles_individus_id
          # L'individu n'est toujours pas affecté à une famille.
          individu = individu_by_id[individu_id]
          age = find_age(individu, period.start)
          if length(new_famille["parents"]) < 2 && (age === nothing || age >= 18)
            push!(new_famille["parents"], individu_id)
          else
            push!(new_famille["enfants"], individu_id)
          end
          if new_famille_id === nothing
            new_famille["id"] = new_famille_id = string(UUID.v4())
            push!(test_case["familles"], new_famille)
          end
          delete!(familles_individus_id, individu_id)
        end
      end

      # Affecte à un foyer fiscal chaque individu qui n'appartient à aucun d'entre eux.
      new_foyer_fiscal = (String => Any)[
        "declarants" => Any[],
        "personnes_a_charge" => Any[],
      ]
      new_foyer_fiscal_id = nothing
      for individu_id in copy(foyers_fiscaux_individus_id)
        # Tente d'affecter l'individu à un foyer fiscal d'après sa famille.
        famille, famille_role = find_famille_and_role(test_case, individu_id)
        if famille_role == "parents" && length(famille["parents"]) == 2
          for parent_id in famille["parents"]
            if parent_id != individu_id
              foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, parent_id)
              if other_role == "declarants" && length(foyer_fiscal["declarants"]) == 1
                # Quand l'individu n'est pas encore dans un foyer fiscal, mais qu'il est parent
                # dans une famille, qu'il y a un autre parent dans cette famille et que cet autre
                # parent est seul déclarant dans son foyer fiscal, alors ajoute l'individu comme
                # autre déclarant de ce foyer fiscal.
                push!(foyer_fiscal["declarants"], individu_id)
                delete!(foyers_fiscaux_individus_id, individu_id)
              end
              break
            end
          end
        elseif famille_role == "enfants" && famille["parents"]
          for parent_id in famille["parents"]
            foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, parent_id)
            if other_role == "declarants"
              # Quand l'individu n'est pas encore dans un foyer fiscal, mais qu'il est enfant dans une
              # famille, qu'il y a un parent dans cette famille et que ce parent est déclarant dans
              # son foyer fiscal, alors ajoute l'individu comme personne à charge de ce foyer fiscal.
              push!(foyer_fiscal["personnes_a_charge"], individu_id)
              delete!(foyers_fiscaux_individus_id, individu_id)
              break
            end
          end
        end

        if individu_id in foyers_fiscaux_individus_id
          # L'individu n'est toujours pas affecté à un foyer fiscal.
          # Tente d'affecter l'individu à un foyer fiscal d'après son ménage.
          menage, menage_role = find_menage_and_role(test_case, individu_id)
          if menage_role == "personne_de_reference"
            conjoint_id = menage["conjoint"]
            if conjoint_id !== nothing
              foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, conjoint_id)
              if other_role == "declarants" && length(foyer_fiscal["declarants"]) == 1
                # Quand l'individu n'est pas encore dans un foyer fiscal, mais qu'il est personne de
                # référence dans un ménage, qu'il y a un conjoint dans ce ménage et que ce
                # conjoint est seul déclarant dans un foyer fiscal, alors ajoute l'individu comme
                # autre déclarant de ce foyer fiscal.
                push!(foyer_fiscal["declarants"], individu_id)
                delete!(foyers_fiscaux_individus_id, individu_id)
              end
            end
          elseif menage_role == "conjoint"
            personne_de_reference_id = menage["personne_de_reference"]
            if personne_de_reference_id !== nothing
              foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, personne_de_reference_id)
              if other_role == "declarants" && length(foyer_fiscal["declarants"]) == 1
                # Quand l'individu n'est pas encore dans un foyer fiscal, mais qu'il est conjoint
                # dans un ménage, qu'il y a une personne de référence dans ce ménage et que
                # cette personne est seul déclarant dans un foyer fiscal, alors ajoute l'individu
                # comme autre déclarant de ce foyer fiscal.
                push!(foyer_fiscal["declarants"], individu_id)
                delete!(foyers_fiscaux_individus_id, individu_id)
              end
            end
          elseif menage_role == "enfants" && (menage["personne_de_reference"] !== nothing ||
              menage["conjoint"] !== nothing)
            for other_id in (menage["personne_de_reference"], menage["conjoint"])
              if other_id === nothing
                continue
              end
              foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, other_id)
              if other_role == "declarants"
                # Quand l'individu n'est pas encore dans un foyer fiscal, mais qu'il est enfant dans
                # un ménage, qu'il y a une personne à charge ou un conjoint dans ce ménage et que
                # celui-ci est déclarant dans un foyer fiscal, alors ajoute l'individu comme
                # personne à charge de ce foyer fiscal.
                push!(foyer_fiscal["declarants"], individu_id)
                delete!(foyers_fiscaux_individus_id, individu_id)
                break
              end
            end
          end
        end

        if individu_id in foyers_fiscaux_individus_id
          # L'individu n'est toujours pas affecté à un foyer fiscal.
          individu = individu_by_id[individu_id]
          age = find_age(individu, period.start)
          if length(new_foyer_fiscal["declarants"]) < 2 && (age === nothing || age >= 18)
            push!(new_foyer_fiscal["declarants"], individu_id)
          else
            push!(new_foyer_fiscal["personnes_a_charge"], individu_id)
          end
          if new_foyer_fiscal_id === nothing
            new_foyer_fiscal["id"] = new_foyer_fiscal_id = string(UUID.v4())
            push!(test_case["foyers_fiscaux"], new_foyer_fiscal)
          end
          delete!(foyers_fiscaux_individus_id, individu_id)
        end
      end

      # Affecte à un ménage chaque individu qui n'appartient à aucun d'entre eux.
      new_menage = (String => Any)[
        "autres" => Any[],
        "conjoint" => nothing,
        "enfants" => Any[],
        "personne_de_reference" => nothing,
      ]
      new_menage_id = nothing
      for individu_id in copy(menages_individus_id)
        # Tente d'affecter l'individu à un ménage d'après sa famille.
        famille, famille_role = find_famille_and_role(test_case, individu_id)
        if famille_role == "parents" && length(famille["parents"]) == 2
          for parent_id in famille["parents"]
            if parent_id != individu_id
              menage, other_role = find_menage_and_role(test_case, parent_id)
              if other_role == "personne_de_reference" && menage["conjoint"] === nothing
                # Quand l'individu n'est pas encore dans un ménage, mais qu'il est parent
                # dans une famille, qu'il y a un autre parent dans cette famille et que cet autre
                # parent est personne de référence dans un ménage et qu'il n'y a pas de conjoint
                # dans ce ménage, alors ajoute l'individu comme conjoint de ce ménage.
                menage["conjoint"] = individu_id
                delete!(menages_individus_id, individu_id)
              elseif other_role == "conjoint" && menage["personne_de_reference"] === nothing
                # Quand l'individu n'est pas encore dans un ménage, mais qu'il est parent
                # dans une famille, qu'il y a un autre parent dans cette famille et que cet autre
                # parent est conjoint dans un ménage et qu'il n'y a pas de personne de référence
                # dans ce ménage, alors ajoute l'individu comme personne de référence de ce ménage.
                menage["personne_de_reference"] = individu_id
                delete!(menages_individus_id, individu_id)
              end
              break
            end
          end
        elseif famille_role == "enfants" && famille["parents"]
          for parent_id in famille["parents"]
            menage, other_role = find_menage_and_role(test_case, parent_id)
            if other_role in ("personne_de_reference", "conjoint")
              # Quand l'individu n'est pas encore dans un ménage, mais qu'il est enfant dans une
              # famille, qu'il y a un parent dans cette famille et que ce parent est personne de
              # référence ou conjoint dans un ménage, alors ajoute l'individu comme enfant de ce
              # ménage.
              push!(menage["enfants"], individu_id)
              delete!(menages_individus_id, individu_id)
              break
            end
          end
        end

        if individu_id in menages_individus_id
          # L'individu n'est toujours pas affecté à un ménage.
          # Tente d'affecter l'individu à un ménage d'après son foyer fiscal.
          foyer_fiscal, foyer_fiscal_role = find_foyer_fiscal_and_role(test_case, individu_id)
          if foyer_fiscal_role == "declarants" && length(foyer_fiscal["declarants"]) == 2
            for declarant_id in foyer_fiscal["declarants"]
              if declarant_id != individu_id
                menage, other_role = find_menage_and_role(test_case, declarant_id)
                if other_role == "personne_de_reference" && menage["conjoint"] === nothing
                  # Quand l'individu n'est pas encore dans un ménage, mais qu'il est déclarant
                  # dans un foyer fiscal, qu'il y a un autre déclarant dans ce foyer fiscal et que
                  # cet autre déclarant est personne de référence dans un ménage et qu'il n'y a
                  # pas de conjoint dans ce ménage, alors ajoute l'individu comme conjoint de ce
                  # ménage.
                  menage["conjoint"] = individu_id
                  delete!(menages_individus_id, individu_id)
                elseif other_role == "conjoint" && menage["personne_de_reference"] === nothing
                  # Quand l'individu n'est pas encore dans un ménage, mais qu'il est déclarant
                  # dans une foyer fiscal, qu'il y a un autre déclarant dans ce foyer fiscal et
                  # que cet autre déclarant est conjoint dans un ménage et qu'il n'y a pas de
                  # personne de référence dans ce ménage, alors ajoute l'individu comme personne
                  # de référence de ce ménage.
                  menage["personne_de_reference"] = individu_id
                  delete!(menages_individus_id, individu_id)
                end
                break
              end
            end
          elseif foyer_fiscal_role == "personnes_a_charge" && foyer_fiscal["declarants"]
            for declarant_id in foyer_fiscal["declarants"]
              menage, other_role = find_menage_and_role(test_case, declarant_id)
              if other_role in ("personne_de_reference", "conjoint")
                # Quand l'individu n'est pas encore dans un ménage, mais qu'il est personne à charge
                # dans un foyer fiscal, qu'il y a un déclarant dans ce foyer fiscal et que ce
                # déclarant est personne de référence ou conjoint dans un ménage, alors ajoute
                # l'individu comme enfant de ce ménage.
                push!(menage["enfants"], individu_id)
                delete!(menages_individus_id, individu_id)
                break
              end
            end
          end
        end

        if individu_id in menages_individus_id
          # L'individu n'est toujours pas affecté à un ménage.
          if new_menage["personne_de_reference"] === nothing
            new_menage["personne_de_reference"] = individu_id
          elseif new_menage["conjoint"] === nothing
            new_menage["conjoint"] = individu_id
          else
            push!(new_menage["enfants"], individu_id)
          end
          if new_menage_id === nothing
            new_menage["id"] = new_menage_id = string(UUID.v4())
            push!(test_case["menages"], new_menage)
          end
          delete!(menages_individus_id, individu_id)
        end
      end
    end

    remaining_individus_id = unique(union(familles_individus_id, foyers_fiscaux_individus_id, menages_individus_id))
    if !isempty(remaining_individus_id)
      individu_index_by_id = [
        individu["id"] => individu_index
        for (individu_index, individu) in enumerate(test_case["individus"])
      ]
      if error === nothing
        error = (Int => Any)[]
      end
      for individu_id in remaining_individus_id
        get!(() -> (String => Any)[], error, "individus")[individu_index_by_id[individu_id]] = context -> _(context,
          string(
            "Individual is missing from ",
            join(
              filter(
                word -> !isempty(word),
                [
                  individu_id in familles_individus_id ? "familles" : "",
                  individu_id in foyers_fiscaux_individus_id ? "foyers_fiscaux" : "",
                  individu_id in menages_individus_id ? "menages" : "",
                ],
              ),
              ", ",
              " & ",
            ),
          )
        )
      end
    end
    if error !== nothing
      return Convertible(test_case, convertible.context, error)
    end

    # Third validation step
    parents_id = OrderedSet(vcat([
      famille["parents"]
      for famille in test_case["familles"]
    ]...))
    return struct(
      [
        "familles" => pipe(
          uniform_sequence(
            struct(
              [
                "enfants" => uniform_sequence(
                  test(
                    individu_id -> find_age(individu_by_id[individu_id], period.start, default = 0) < 25,
                    error = "Une personne à charge d'un foyer fiscal doit avoir moins de 25 ans ou être invalide.",
                  ),
                ),
                "parents" => pipe(
                  empty_to_nothing,
                  require,
                  test(
                    parents -> length(parents) <= 2,
                    error = N_("A family must have at most 2 parents."),
                  ),
                ),
              ],
              default = noop,
            ),
          ),
          empty_to_nothing,
          require,
        ),
        "foyers_fiscaux" => pipe(
          uniform_sequence(
            struct(
              [
                "declarants" => pipe(
                  empty_to_nothing,
                  require,
                  test(
                    parents -> length(parents) <= 2,
                    error = N_("""A "foyer_fiscal" must have at most 2 "declarants"."""),
                  ),
                  uniform_sequence(
                    # test(
                    #   individu_id -> find_age(individu_by_id[individu_id], period.start, default = 100) >= 18,
                    #   error = "Un déclarant d'un foyer fiscal doit être agé d'au moins 18 ans",
                    # ),
                    test(
                      individu_id -> individu_id in parents_id,
                      error = "Un déclarant ou un conjoint sur la déclaration d'impôt, doit être un parent dans sa" *
                        " famille.",
                    ),
                  ),
                ),
                "personnes_a_charge" => uniform_sequence(
                  test(
                    individu_id -> get(individu_by_id[individu_id], "inv", false) ||
                      find_age(individu_by_id[individu_id], period.start, default = 0) < 25,
                    error = "Une personne à charge d'un foyer fiscal doit avoir moins de 25 ans ou être invalide.",
                  ),
                ),
              ],
              default = noop,
            ),
          ),
          empty_to_nothing,
          require,
        ),
        # "individus" => uniform_sequence(
        #   struct(
        #     [
        #       "birth" => test(
        #         birth -> period.start >= birth,
        #         error = "L'individu doit être né au plus tard le jour de la simulation.",
        #       ),
        #     ],
        #     default = noop,
        #     drop_missing = true,
        #   ),
        # ),
        "menages" => pipe(
          uniform_sequence(
            struct(
              [
                "personne_de_reference" => require,
              ],
              default = noop,
            ),
          ),
          empty_to_nothing,
          require,
        ),
      ],
      default = noop,
    )(converted)
  end
end
