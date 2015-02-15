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


function assert_near2(value::Union(Array, Number), target_value::Union(Array, Number); error_margin = 1, message = "")
  if error_margin <= 0
    @assert(all(target_value .== value || target_value .* 12 .== value || target_value ./ 12 .== value),
      "$message$value differs from $target_value")
  else
    @assert(all(target_value .- error_margin .< value) && all(value .< target_value .+ error_margin) ||
      all(target_value .- error_margin .< value .* 12) && all(value .* 12 .< target_value .+ error_margin) ||
      all(target_value .- error_margin .< value ./ 12) && all(value ./ 12 .< target_value .+ error_margin),
      "$message$value differs from $target_value with a margin $(abs(value .- target_value)) .>= $error_margin")
  end
end

function assert_near2(value::Union(Array{Bool}, BitArray, Bool), target_value::Union(Array{Bool}, BitArray, Bool);
    error_margin = 0, message = "")
  # Note: Ignore error_margin when comparing booleans.
  @assert(all(target_value .== value), "$message$value differs from $target_value")
end

assert_near2(left::Union(Array, BitArray, Number), right::ArrayHandle; error_margin = 1, message = "") = assert_near2(left,
  get_array(right), error_margin = error_margin, message = message)

assert_near2(left::ArrayHandle, right::Union(Array, BitArray, Number); error_margin = 1, message = "") = assert_near2(
  get_array(left), right, error_margin = error_margin, message = message)

assert_near2(left::ArrayHandle, right::ArrayHandle; error_margin = 1, message = "") = assert_near2(get_array(left),
  get_array(right), error_margin = error_margin, message = message)


function test_mes_aides()
  const tests_dir = "test/mes-aides.gouv.fr"

  for file_name in sort(readdir(tests_dir), by = name -> int(split(name, '_', 3)[2]))
    if !endswith(file_name, ".yaml")
      continue
    end

    test_number = split(file_name, '_', 3)[2]
    file_path = string(tests_dir, '/', file_name)
    open(file_path, "r") do file
      test = YAML.load_file(file_path)
      info("=" ^ 120)
      info("Test ", test_number, ": ", pop!(test, "name"))
      info("=" ^ 120)
      if pop!(test, "ignore", false)
        info("  Ignoring test.")
      else
        pop!(test, "description")
        output_variables = pop!(test, "output_variables")
        scenario_data = [
          "period" => pop!(test, "period"),
          "test_case" => test,
        ]
        scenario = Convertible(scenario_data) |> to_scenario(tax_benefit_system) |> to_value
        suggest(scenario)
        simulation = Simulation(scenario, debug = true)
        if output_variables !== nothing
          for (variable_name, expected_value) in output_variables
            # assert_near(calculate(simulation, variable_name, accept_other_period = true), expected_value,
            #   error_margin = 0.006, message = "$variable_name: ")
            assert_near2(calculate(simulation, variable_name, accept_other_period = true), expected_value,
              error_margin = 0.006, message = "$variable_name: ")
          end
        end
      end
    end
  end
end


test_mes_aides()