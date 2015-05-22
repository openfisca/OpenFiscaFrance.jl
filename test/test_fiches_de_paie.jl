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


function assert_near2(value::Union(Array, Number), target_value::Union(Array, Number); absolute_error_margin = 0,
    message = "", relative_error_margin = -1)
  # A rewrite of assert near that considers that two values are nearly equal also when one is 12 times the other.
  @assert absolute_error_margin >= 0 || relative_error_margin >= 0
  if absolute_error_margin >= 0
    @assert(all(abs(target_value .- value) .<= absolute_error_margin) ||
      all(abs(target_value .- value .* 12) .<= absolute_error_margin) ||
      all(abs(target_value .- value ./ 12) .<= absolute_error_margin),
      "$message$value differs from $target_value with an absolute margin $(abs(target_value .- value)) .>" *
      " $absolute_error_margin")
  end
  if relative_error_margin >= 0
    @assert(all(abs(target_value .- value) .<= abs(relative_error_margin .* target_value)) ||
      all(abs(target_value .- value .* 12) .<= abs(relative_error_margin .* target_value)) ||
      all(abs(target_value .- value ./ 12) .<= abs(relative_error_margin .* target_value)),
      "$message$value differs from $target_value with a relative margin $(abs(target_value .- value)) .>" *
      " $(abs(relative_error_margin .* target_value))")
  end
end

function assert_near2(value::Union(Array{Bool}, BitArray, Bool), target_value::Union(Array{Bool}, BitArray, Bool);
    absolute_error_margin = 0, message = "", relative_error_margin = -1)
  # Note: Ignore error margin when comparing booleans.
  @assert(all(target_value .== value), "$message$value differs from $target_value")
end

assert_near2(left::Union(Array, BitArray, Number), right::ArrayHandle; absolute_error_margin = 0, message = "",
  relative_error_margin = -1
) = assert_near2(left, get_array(right), absolute_error_margin = absolute_error_margin, message = message,
  relative_error_margin = relative_error_margin)

assert_near2(left::ArrayHandle, right::Union(Array, BitArray, Number); absolute_error_margin = 0, message = "",
  relative_error_margin = -1
) = assert_near2(get_array(left), right, absolute_error_margin = absolute_error_margin, message = message,
  relative_error_margin = relative_error_margin)

assert_near2(left::ArrayHandle, right::ArrayHandle; absolute_error_margin = 0, message = "", relative_error_margin = -1
) = assert_near2(get_array(left), get_array(right), absolute_error_margin = absolute_error_margin, message = message,
  relative_error_margin = relative_error_margin)


function test_fiches_de_paie()
  const tests_dir = Pkg.dir("OpenFiscaFrance", "test", "fiches_de_paie")

  for (test_index, file_name) in enumerate(sort(readdir(tests_dir)))
    if !endswith(file_name, ".yaml")
      continue
    end

    test_data = YAML.load_file(string(tests_dir, '/', file_name))
    test, error = Convertible(test_data) |> to_test(tax_benefit_system) |> to_value_error
    if error !== nothing
      info("=" ^ 120)
      info("Test ", string(test_index), ": ", file_name)
      info("=" ^ 120)
      embedding_error = embed_error(test, error)
      @assert(embedding_error === nothing, embedding_error)
      warn("Error: ", string(error))
      warn("Value: ", string(test))
	    continue
    end
    info("=" ^ 120)
    scenario = test["scenario"]
    info("Test ", string(test_index), ": ", get(test, "name", file_name), " - ", string(scenario.period))
    info("=" ^ 120)
    if get(test, "ignore", false)
      info("  Ignoring test.")
      continue
    end

    suggest(scenario)
    simulation = Simulation(scenario, debug = true)
    output_variables = get(test, "output_variables", nothing)
    if output_variables !== nothing
      for (variable_name, expected_value_by_period) in output_variables
        for (requested_period, expected_value) in expected_value_by_period
          # assert_near(calculate(simulation, variable_name, requested_period), expected_value,
          #   absolute_error_margin = 0.51, message = "$variable_name: ")
          assert_near2(calculate(simulation, variable_name, requested_period, accept_other_period = true), expected_value,
            absolute_error_margin = 0.51, message = "$variable_name: ")
        end
      end
    end
  end
end


test_fiches_de_paie()
