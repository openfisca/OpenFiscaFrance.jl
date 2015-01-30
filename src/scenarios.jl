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


entities_to_entity_by_id(convertible::Convertible) = condition(
  test_isa(Array),
  pipe(
    uniform_sequence(
      test_isa(Union(Dict, OrderedDict)),
      drop_nothing = true,
    ),
    call(values -> begin
      value_by_name = OrderedDict(String, Any)
      for (index, value) in enumerate(values)
        id = pop!(value, "id", string(index))
        value_by_name[id] = value
      end
      return value_by_name
    end),
  ),
)(convertible)


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
  for (famille_id, famille) in test_case["familles"]
    for role in ("parents", "enfants")
      if individu_id in famille[role]
        return famille_id, famille, role
      end
    end
  end
  return nothing, nothing, nothing
end


function find_foyer_fiscal_and_role(test_case, individu_id)
  for (foyer_fiscal_id, foyer_fiscal) in test_case["foyers_fiscaux"]
    for role in ("declarants", "personnes_a_charge")
      if individu_id in foyer_fiscal[role]
        return foyer_fiscal_id, foyer_fiscal, role
      end
    end
  end
  return nothing, nothing, nothing
end


function find_menage_and_role(test_case, individu_id)
  for (menage_id, menage) in test_case["menages"]
    for role in ("personne_de_reference", "conjoint")
      if menage[role] == individu_id
        return menage_id, menage, role
      end
    end
    for role in ("enfants", "autres")
      if individu_id in menage[role]
        return menage_id, menage, role
      end
    end
  end
  return nothing, nothing, nothing
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

  return convertible::Convertible -> begin
    if convertible.error !== nothing || convertible.value === nothing
      return convertible
    end

    variable_definition_by_name = tax_benefit_system.variable_definition_by_name

    # First validation && rsion step
    converted = pipe(
      test_isa(Union(Dict, OrderedDict)),
      struct(
        [
          "familles" => pipe(
            entities_to_entity_by_id,
            test_isa(Union(Dict, OrderedDict)),
            uniform_mapping(
              pipe(
                test_isa(String),
                require,
              ),
              test_isa(Union(Dict, OrderedDict)),
              struct(
                merge(
                  [
                    "enfants" => pipe(
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    "parents" => pipe(
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                  ],
                  [
                    variable_definition.name => json_to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "famille"
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            default((String => Any)[]),
          ),
          "foyers_fiscaux" => pipe(
            entities_to_entity_by_id,
            test_isa(Union(Dict, OrderedDict)),
            uniform_mapping(
              pipe(
                test_isa(String),
                require,
              ),
              test_isa(Union(Dict, OrderedDict)),
              struct(
                merge(
                  [
                    "declarants" => pipe(
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    "personnes_a_charge" => pipe(
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                  ],
                  [
                    variable_definition.name => json_to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "foyer_fiscal"
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            default((String => Any)[]),
          ),
          "individus" => pipe(
            entities_to_entity_by_id,
            test_isa(Union(Dict, OrderedDict)),
            uniform_mapping(
              pipe(
                test_isa(Union(Int, String)),
                require,
              ),
              test_isa(Union(Dict, OrderedDict)),
              struct(
                [
                  variable_definition.name => json_to_cell(variable_definition)
                  for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                    return variable_definition.entity_definition.name == "individu" && !(variable_definition.name in (
                      "idfam", "idfoy", "idmen", "quifam", "quifoy", "quimen"))
                  end
                ],
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            empty_to_nothing,
            require,
          ),
          "menages" => pipe(
            entities_to_entity_by_id,
            test_isa(Union(Dict, OrderedDict)),
            uniform_mapping(
              pipe(
                test_isa(String),
                require,
              ),
              test_isa(Union(Dict, OrderedDict)),
              struct(
                merge(
                  [
                    "autres" => pipe(
                      # personnes ayant un lien autre avec la personne de référence
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
                      test_isa(Array),
                      uniform_sequence(
                        test_isa(Union(Int, String)),
                        drop_nothing = true,
                      ),
                      default(Any[]),
                    ),
                    "personne_de_reference" => test_isa(Union(Int, String)),
                  ],
                  [
                    variable_definition.name => json_to_cell(variable_definition)
                    for variable_definition in filter(values(variable_definition_by_name)) do variable_definition
                      return variable_definition.entity_definition.name == "menage"
                    end
                  ],
                ),
                drop_nothing = true,
              ),
              drop_nothing = true,
            ),
            default((String => Any)[]),
          ),
        ],
      ),
    )(convertible)
    if converted.error !== nothing
      return converted
    end
    test_case = converted.value

    # Second validation step
    familles_individus_id = OrderedSet(keys(test_case["individus"])...)
    foyers_fiscaux_individus_id = OrderedSet(keys(test_case["individus"])...)
    menages_individus_id = OrderedSet(keys(test_case["individus"])...)
    converted = struct(
      [
        "familles" => uniform_mapping(
          noop,
          struct(
            [
              "enfants" => uniform_sequence(test_in_pop(familles_individus_id)),
              "parents" => uniform_sequence(test_in_pop(familles_individus_id)),
            ],
            default = noop,
          ),
        ),
        "foyers_fiscaux" => uniform_mapping(
          noop,
          struct(
            [
              "declarants" => uniform_sequence(test_in_pop(foyers_fiscaux_individus_id)),
              "personnes_a_charge" => uniform_sequence(test_in_pop(foyers_fiscaux_individus_id)),
            ],
            default = noop,
          ),
        ),
        "menages" => uniform_mapping(
          noop,
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

    if repair
      # Affecte à une famille chaque individu qui n'appartient à aucune d'entre elles.
      new_famille = [
        "enfants" => Any[],
        "parents" => Any[],
      ]
      new_famille_id = nothing
      for individu_id in copy(familles_individus_id)
        # Tente d'affecter l'individu à une famille d'après son foyer fiscal.
        foyer_fiscal_id, foyer_fiscal, foyer_fiscal_role = find_foyer_fiscal_and_role(test_case, individu_id)
        if foyer_fiscal_role == "declarants" && length(foyer_fiscal["declarants"]) == 2
          for declarant_id in foyer_fiscal["declarants"]
            if declarant_id != individu_id
              famille_id, famille, other_role = find_famille_and_role(test_case, declarant_id)
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
            famille_id, famille, other_role = find_famille_and_role(test_case, declarant_id)
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
          menage_id, menage, menage_role = find_menage_and_role(test_case, individu_id)
          if menage_role == "personne_de_reference"
            conjoint_id = menage["conjoint"]
            if conjoint_id !== nothing
              famille_id, famille, other_role = find_famille_and_role(test_case, conjoint_id)
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
              famille_id, famille, other_role = find_famille_and_role(test_case, personne_de_reference_id)
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
              famille_id, famille, other_role = find_famille_and_role(test_case, other_id)
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
          individu = test_case["individus"][individu_id]
          age = find_age(individu, period.start)
          if length(new_famille["parents"]) < 2 && (age === nothing || age >= 18)
            push!(new_famille["parents"], individu_id)
          else
            push!(new_famille["enfants"], individu_id)
          end
          if new_famille_id === nothing
            new_famille_id = string(UUID.v4())
            test_case["familles"][new_famille_id] = new_famille
          end
          delete!(familles_individus_id, individu_id)
        end
      end

      # Affecte à un foyer fiscal chaque individu qui n'appartient à aucun d'entre eux.
      new_foyer_fiscal = [
        "declarants" => Any[],
        "personnes_a_charge" => Any[],
      ]
      new_foyer_fiscal_id = nothing
      for individu_id in copy(foyers_fiscaux_individus_id)
        # Tente d'affecter l'individu à un foyer fiscal d'après sa famille.
        famille_id, famille, famille_role = find_famille_and_role(test_case, individu_id)
        if famille_role == "parents" && length(famille["parents"]) == 2
          for parent_id in famille["parents"]
            if parent_id != individu_id
              foyer_fiscal_id, foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, parent_id)
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
            foyer_fiscal_id, foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, parent_id)
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
          menage_id, menage, menage_role = find_menage_and_role(test_case, individu_id)
          if menage_role == "personne_de_reference"
            conjoint_id = menage["conjoint"]
            if conjoint_id !== nothing
              foyer_fiscal_id, foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, conjoint_id)
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
              foyer_fiscal_id, foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case,
                personne_de_reference_id)
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
              foyer_fiscal_id, foyer_fiscal, other_role = find_foyer_fiscal_and_role(test_case, other_id)
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
          individu = test_case["individus"][individu_id]
          age = find_age(individu, period.start)
          if length(new_foyer_fiscal["declarants"]) < 2 && (age === nothing || age >= 18)
            push!(new_foyer_fiscal["declarants"], individu_id)
          else
            push!(new_foyer_fiscal["personnes_a_charge"], individu_id)
          end
          if new_foyer_fiscal_id === nothing
            new_foyer_fiscal_id = string(UUID.v4())
            test_case["foyers_fiscaux"][new_foyer_fiscal_id] = new_foyer_fiscal
          end
          delete!(foyers_fiscaux_individus_id, individu_id)
        end
      end

      # Affecte à un ménage chaque individu qui n'appartient à aucun d'entre eux.
      new_menage = [
        "autres" => Any[],
        "conjoint" => nothing,
        "enfants" => Any[],
        "personne_de_reference" => nothing,
      ]
      new_menage_id = nothing
      for individu_id in copy(menages_individus_id)
        # Tente d'affecter l'individu à un ménage d'après sa famille.
        famille_id, famille, famille_role = find_famille_and_role(test_case, individu_id)
        if famille_role == "parents" && length(famille["parents"]) == 2
          for parent_id in famille["parents"]
            if parent_id != individu_id
              menage_id, menage, other_role = find_menage_and_role(test_case, parent_id)
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
            menage_id, menage, other_role = find_menage_and_role(test_case, parent_id)
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
          foyer_fiscal_id, foyer_fiscal, foyer_fiscal_role = find_foyer_fiscal_and_role(test_case, individu_id)
          if foyer_fiscal_role == "declarants" && length(foyer_fiscal["declarants"]) == 2
            for declarant_id in foyer_fiscal["declarants"]
              if declarant_id != individu_id
                menage_id, menage, other_role = find_menage_and_role(test_case, declarant_id)
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
              menage_id, menage, other_role = find_menage_and_role(test_case, declarant_id)
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
            new_menage_id = string(UUID.v4())
            test_case["menages"][new_menage_id] = new_menage
          end
          delete!(menages_individus_id, individu_id)
        end
      end
    end

    remaining_individus_id = unique(union(familles_individus_id, foyers_fiscaux_individus_id, menages_individus_id))
    if !isempty(remaining_individus_id)
      if error === nothing
        error = (String => Any)[]
      end
      for individu_id in remaining_individus_id
        get!(() -> (String => Any)[], error, "individus")[individu_id] = context -> _(context, string(
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
        ))
      end
    end
    if error !== nothing
      return Convertible(test_case, convertible.context, error)
    end

    # Third validation step
    parents_id = OrderedSet(union([
      famille["parents"]
      for famille in values(test_case["familles"])
    ]...)...)
    individu_by_id = test_case["individus"]
    return struct(
      [
        "familles" => pipe(
          uniform_mapping(
            noop,
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
          uniform_mapping(
            noop,
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
        # "individus" => uniform_mapping(
        #   noop,
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
          uniform_mapping(
            noop,
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
