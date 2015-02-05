# OpenFisca -- A versatile microsimulation software
# By: OpenFisca Team <contact@openfisca.fr>
#
# Copyright (C] 2011, 2012, 2013, 2014, 2015 OpenFisca Team
# https://github.com/openfisca
#
# This file is part of OpenFisca.
#
# OpenFisca is free software; you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option] any later version.
#
# OpenFisca is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


function test_mes_aides()
  const tests_dir = "test/mes-aides.gouv.fr"

  for file_name in readdir(tests_dir)
    if !endswith(file_name, ".yaml")
      continue
    end

    file_path = string(tests_dir, '/', file_name)
    open(file_path, "r") do file
      test = YAML.load_file(file_path)
      info("Test: ", pop!(test, "name"))
      pop!(test, "description")
      output_variables = pop!(test, "output_variables")
      scenario_data = [
        "period" => pop!(test, "period"),
        "test_case" => test,
      ]
      scenario = Convertible(scenario_data) |> to_scenario(tax_benefit_system) |> to_value
      simulation = Simulation(scenario, debug = true)
      for (variable_name, expected_value) in output_variables
        assert_near(calculate(simulation, variable_name), expected_value, error_margin = 0.005,
          message = "$variable_name: ")
      end
    end
  end
end


test_mes_aides()
