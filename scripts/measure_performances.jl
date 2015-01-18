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


"""Measure performances of formulas calculations to compare to other OpenFisca implementations."""


using Base.Test

using Dates

using OpenFiscaCore
using OpenFiscaFrance


function test_irpp(year, irpp; variables_value_by_name...)
  simulation = Simulation(tax_benefit_system, YearPeriod(Date(year, 1, 1)), debug = false)
  famille = get_entity(simulation, "famille")
  foyer_fiscal = get_entity(simulation, "foyer_fiscal")
  individu = get_entity(simulation, "individu")
  menage = get_entity(simulation, "menage")

  # Dispatch arguments to their respective entities.
  variables_value_by_name_by_entity = Dict{Entity, Dict{Symbol, Any}}()
  for (variable_symbol, value) in variables_value_by_name
    variable = get_variable!(simulation, string(variable_symbol))
    entity_variables_value_by_name = get!(variables_value_by_name_by_entity, get_entity(variable)) do
      return Dict{Symbol, Any}()
    end
    entity_variables_value_by_name[variable_symbol] = value
  end

  add_member(famille; get(variables_value_by_name_by_entity, famille, {})...)
  add_member(foyer_fiscal; get(variables_value_by_name_by_entity, foyer_fiscal, {})...)
  add_member(menage; get(variables_value_by_name_by_entity, menage, {})...)
  add_member(individu; quifam = 1, quifoy = 1, quimen = 1, get(variables_value_by_name_by_entity, individu, {})...)
  assert_near(calculate(simulation, "irpp"), irpp, error_margin = 0.51)
end


test_irpp(2010, -1181, sal = 20000)
test_irpp(2010, -7934, sal = 50000)
test_irpp(2010, -42338, sal = 150000)
test_irpp(2011, -1181, sal = 20000)
test_irpp(2011, -7934, sal = 50000)
test_irpp(2011, -42338, sal = 150000)
test_irpp(2012, -1181, sal = 20000)
test_irpp(2012, -7934, sal = 50000)
test_irpp(2012, -43222, sal = 150000)
test_irpp(2013, -1170, sal = 20000)
test_irpp(2013, -7889, sal = 50000)
test_irpp(2013, -43076, sal = 150000)

test_irpp(2010, -1181, rst = 20000)
test_irpp(2010, -8336, rst = 50000)
test_irpp(2010, -46642, rst = 150000)
test_irpp(2011, -1181, rst = 20000)
test_irpp(2011, -8336, rst = 50000)
test_irpp(2011, -46642, rst = 150000)
test_irpp(2012, -1181, rst = 20000)
test_irpp(2012, -8336, rst = 50000)
test_irpp(2012, -46642, rst = 150000)
test_irpp(2013, -1170, rst = 20000)
test_irpp(2013, -8283, rst = 50000)
test_irpp(2013, -46523, rst = 150000)

@time test_irpp(2010, -1181, sal = 20000)
@time test_irpp(2010, -7934, sal = 50000)
@time test_irpp(2010, -42338, sal = 150000)
@time test_irpp(2011, -1181, sal = 20000)
@time test_irpp(2011, -7934, sal = 50000)
@time test_irpp(2011, -42338, sal = 150000)
@time test_irpp(2012, -1181, sal = 20000)
@time test_irpp(2012, -7934, sal = 50000)
@time test_irpp(2012, -43222, sal = 150000)
@time test_irpp(2013, -1170, sal = 20000)
@time test_irpp(2013, -7889, sal = 50000)
@time test_irpp(2013, -43076, sal = 150000)

println()

@time test_irpp(2010, -1181, rst = 20000)
@time test_irpp(2010, -8336, rst = 50000)
@time test_irpp(2010, -46642, rst = 150000)
@time test_irpp(2011, -1181, rst = 20000)
@time test_irpp(2011, -8336, rst = 50000)
@time test_irpp(2011, -46642, rst = 150000)
@time test_irpp(2012, -1181, rst = 20000)
@time test_irpp(2012, -8336, rst = 50000)
@time test_irpp(2012, -46642, rst = 150000)
@time test_irpp(2013, -1170, rst = 20000)
@time test_irpp(2013, -8283, rst = 50000)
@time test_irpp(2013, -46523, rst = 150000)
