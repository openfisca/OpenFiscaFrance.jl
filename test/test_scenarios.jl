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
  "axes" => [["count" => 2, "max" =>  20000, "min" => 0, "name" => "salbrut"]],
  "test_case" => [
    "familles" => [["parents" => ["1"]]],
    "foyers_fiscaux" => [["declarants" => ["1"]]],
    "individus" => [["id" => "1"]],
    "menages" => [["personne_de_reference" => "1"]],
  ],
  "year" => 2014,
]) |> to_scenario(tax_benefit_system, to_test_case) |> test_isa(Scenario) |> to_value

Convertible([
  "axes" => [["count" => 2, "max" =>  20000, "min" => 0, "name" => "salbrut"]],
  "test_case" => [
    "individus" => [(String => Any)[]],
  ],
  "year" => 2014,
]) |> to_scenario(tax_benefit_system, to_test_case, repair = true) |> test_isa(Scenario) |> to_value
