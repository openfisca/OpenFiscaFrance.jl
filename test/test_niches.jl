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


function test_niches()
  tests_data = YAML.load_file(Pkg.dir("OpenFiscaFrance", "test", "niches.yaml"))
  for (test_index, test_data) in enumerate(tests_data)
    test = Convertible(test_data) |> to_test(tax_benefit_system) |> to_value
    info("=" ^ 120)
    info("Test ", string(test_index), ": ", get(test, "name", ""))
    info("=" ^ 120)
    if get(test, "ignore", false)
      info("  Ignoring test.")
      continue
    end

    scenario = test["scenario"]
    suggest(scenario)
    simulation = Simulation(scenario, debug = true)
    output_variables = get(test, "output_variables", nothing)
    if output_variables !== nothing
      for (variable_name, expected_value_by_period) in output_variables
        for (requested_period, expected_value) in expected_value_by_period
          assert_near(calculate(simulation, variable_name, requested_period), expected_value, absolute_error_margin = 1,
            message = "$variable_name@$requested_period: ")
        end
      end
    end
  end
end


test_niches()
