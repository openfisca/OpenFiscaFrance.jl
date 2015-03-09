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


function test_formulas()
  const tests_dir = "test/formulas"

  test_index = 0
  for filename in sort(readdir(tests_dir))
    if !endswith(filename, ".yaml")
      continue
    end

    test_data = YAML.load_file(string(tests_dir, '/', filename))
    tests, error = Convertible(test_data) |> pipe(
      item_to_singleton,
      uniform_sequence(
        to_test(tax_benefit_system),
        drop_nothing = true,
      ),
    ) |> to_value_error
    if error !== nothing
      test_index += 1
      info("=" ^ 120)
      info("Test ", string(test_index), ": ", filename)
      info("=" ^ 120)
      embedding_error = embed_error(tests, error)
      @assert(embedding_error === nothing, embedding_error)
      warn("Error: ", string(error))
      warn("Value: ", string(tests))
	    continue
    end
    for test in tests
      test_index += 1
      info("=" ^ 120)
      scenario = test["scenario"]
      info("Test ", string(test_index), ": ", get(test, "name", filename), " - ", string(scenario.period))
      info("=" ^ 120)
      if get(test, "ignore", false)
        info("  Ignoring test.")
        continue
      end

      suggest(scenario)
      simulation = Simulation(scenario, debug = true)
      output_variables = get(test, "output_variables", nothing)
      if output_variables !== nothing
        for (variable_name, expected_value) in output_variables
          if isa(expected_value, Union(Dict, OrderedDict))
            for (requested_period, expected_value_at_period) in expected_value
              assert_near(calculate(simulation, variable_name, requested_period), expected_value_at_period,
                error_margin = 0.005, message = "$variable_name@$requested_period: ")
            end
          else
            assert_near(calculate(simulation, variable_name), expected_value, error_margin = 0.005,
              message = "$variable_name@$(scenario.period): ")
          end
        end
      end
    end
  end
end


test_formulas()
