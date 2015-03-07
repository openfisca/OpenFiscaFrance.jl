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


Convertible([
  "axes" => [["count" => 2, "max" =>  20000, "min" => 0, "name" => "salaire_de_base"]],
  "test_case" => [
    "familles" => (String => Any)["parents" => ["1"]],
    "foyers_fiscaux" => (String => Any)["declarants" => ["1"]],
    "individus" => (String => Any)["id" => "1"],
    "menages" => (String => Any)["personne_de_reference" => "1"],
  ],
  "year" => 2014,
]) |> to_scenario(tax_benefit_system) |> test_isa(Scenario) |> to_value |> Simulation

Convertible([
  "axes" => [["count" => 2, "max" =>  20000, "min" => 0, "name" => "salaire_de_base"]],
  "test_case" => [
    "individus" => [(String => Any)[]],
  ],
  "year" => 2014,
]) |> to_scenario(tax_benefit_system, repair = true) |> test_isa(Scenario) |> to_value |> Simulation

@test isa(single_entity_scenario(tax_benefit_system, 2014, parent1 = (String => Any)[]), Scenario)

@test suggest(single_entity_scenario(tax_benefit_system, 2014, parent1 = (String => Any)[])) == [
  "test_case" => [
    "individus" => [
      "ind1" => [
        "birth" => "1974-01-01",
      ],
    ],
  ],
]
