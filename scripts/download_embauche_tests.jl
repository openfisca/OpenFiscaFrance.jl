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


"""Download tests from embauche and store them as YAML tests."""


import JSON
using OpenFiscaCore
using OpenFiscaFrance
using Requests
using YAML


const server_url = "http://embauche.sgmap.fr"
const tests_dir = Pkg.dir("OpenFiscaFrance", "test", "embauche.sgmap.fr")


function print_yaml_field(file::IO, key::String, value; indent = 0, indent_first_line = true)
  first_indent = indent_first_line ? indent : 0
  if isa(value, Array)
    if length(value) == 0
      value = nothing
    elseif length(value) == 1
      value = value[1]
    end
  end

  if value === nothing
    println(file, "  " ^ first_indent, key, ':')
  elseif isa(value, Array)
    println(file, "  " ^ first_indent, key, ':')
    for item in value
      print_yaml_item(file, item; indent = indent + 1, indent_first_line = true)
    end
  elseif isa(value, Dict)
    println(file, "  " ^ first_indent, key, ':')
    for key in sort(collect(keys(value)))
      print_yaml_field(file, key, value[key]; indent = indent + 1, indent_first_line = true)
    end
  elseif isa(value, String)
    if '\n' in value
      println(file, "  " ^ first_indent, key, ": |")
      println(file, join([
        string("  " ^ (indent + 1), line)
        for line in split(value, '\n')
      ], '\n'))
    elseif ':' in value || '-' in value || ismatch(r"^0\d+$", value)
      println(file, "  " ^ first_indent, key, ": ", '"', replace(value, '"', "\\\""), '"')
    else
      println(file, "  " ^ first_indent, key, ": ", value)
    end
  else
    println(file, "  " ^ first_indent, key, ": ", value)
  end
end


function print_yaml_item(file::IO, value; indent = 0, indent_first_line = true)
  first_indent = indent_first_line ? indent : 0
  print(file, "  " ^ first_indent, "- ")

  if isa(value, Array)
    if length(value) == 0
      value = nothing
    elseif length(value) == 1
      value = value[1]
    end
  end

  @assert value !== nothing
  if isa(value, Array)
    for (index, item) in enumerate(value)
      print_yaml_item(file, item; indent = indent + 1, indent_first_line = index > 1)
    end
  elseif isa(value, Dict)
    for (index, key) in enumerate(sort(collect(keys(value))))
      print_yaml_field(file, key, value[key]; indent = indent + 1, indent_first_line = index > 1)
    end
  elseif isa(value, String)
    if '\n' in value
      println(file, '|')
      println(file, join([
        string("  " ^ (indent + 1), line)
        for line in split(value, '\n')
      ], '\n'))
    elseif ':' in value || '-' in value || ismatch(r"^0\d+$", value)
      println(file, '"', replace(value, '"', "\\\""), '"')
    else
      println(file, value)
    end
  else
    println(file, value)
  end
end


url = string(server_url, "/tests/api/public/acceptance-tests")
println("GET ", url)
response = get(url)
tests = JSON.parse(response.data)

if !isdir(tests_dir)
  mkdir(tests_dir)
end
existing_yaml_files_name = Set(readdir(tests_dir))

for (test_index, test) in enumerate(tests)
  @assert(test["currentStatus"] in ("accepted-exact", "accepted-2pct", "accepted-10pct", "rejected"))

  relative_error_margin = [
    "accepted-exact" => 0.,
    "accepted-2pct" => 0.02,
    "accepted-10pct" => 0.1,
    "rejected" => 0.
  ][test["currentStatus"]]
  last_execution = test["lastExecution"]
  @assert(test["currentStatus"] == last_execution["status"])

  println(string("[", join(sort(test["keywords"]), ", "), "] "), test["name"])
  expected_value_by_variable_name = [
    result["code"] => result["result"]
    for result in last_execution["results"]
  ]

  url = test["scenario"]
  println("GET ", url)
  response = get(url)
  openfisca_request = JSON.parse(response.data)

  scenario = openfisca_request["params"]

  file_name = string("test_embauche_", test["_id"], ".yaml")
  file_path = string(tests_dir, '/', file_name)
  period_parts = openfisca_request["period"]
  open(file_path, "w") do file
    print_yaml_field(file, "name", test["name"])
    print_yaml_field(file, "keywords", sort(test["keywords"]))
    print_yaml_field(file, "description", get(test, "description", nothing))
    print_yaml_field(file, "period", string(period_parts[1], ':', join(period_parts[2], '-')))
    if relative_error_margin > 0
      print_yaml_field(file, "relative_error_margin", relative_error_margin)
    end
    print_yaml_field(file, "input_variables", openfisca_request["params"])
    print_yaml_field(file, "output_variables", [
      expected_result["code"] => expected_result["expectedValue"]
      for expected_result in test["expectedResults"]
    ])
  end
  if file_name in existing_yaml_files_name
    pop!(existing_yaml_files_name, file_name)
  end

  # Verify YAML syntax of generated file.
  scenario = YAML.load_file(file_path)
end

for file_name in sort(collect(existing_yaml_files_name))
  println("Deleting obsolete test: ", file_name)
  file_path = string(tests_dir, '/', file_name)
  rm(file_path)
end
