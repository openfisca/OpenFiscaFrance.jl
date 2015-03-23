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


function test_irpp(year, irpp; args...)
  simulation = Simulation(tax_benefit_system, YearPeriod(Date(year, 1, 1)))
  famille = get_entity(simulation, "famille")
  foyer_fiscal = get_entity(simulation, "foyer_fiscal")
  individu = get_entity(simulation, "individu")
  menage = get_entity(simulation, "menage")

  # Dispatch arguments to their respective entities.
  args_by_entity = Dict{Entity, Dict{Symbol, Any}}()
  for (variable_symbol, value) in args
    variable = get_variable!(simulation, string(variable_symbol))
    entity_args = get!(args_by_entity, get_entity(variable)) do
      return Dict{Symbol, Any}()
    end
    entity_args[variable_symbol] = value
  end

  add_member(famille; get(args_by_entity, famille, {})...)
  add_member(foyer_fiscal; get(args_by_entity, foyer_fiscal, {})...)
  add_member(menage; get(args_by_entity, menage, {})...)
  add_member(individu; quifam = 1, quifoy = 1, quimen = 1, get(args_by_entity, individu, {})...)
  assert_near(calculate(simulation, "irpp"), irpp, absolute_error_margin = 0.51)
end


println("sal")

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

println("rst")

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

println("f2da")

test_irpp(2010, 0, f2da = 20000)
test_irpp(2010, 0, f2da = 50000)
test_irpp(2010, 0, f2da = 150000)
test_irpp(2011, 0, f2da = 20000)
test_irpp(2011, 0, f2da = 50000)
test_irpp(2011, 0, f2da = 150000)
test_irpp(2012, 0, f2da = 20000)
test_irpp(2012, 0, f2da = 50000)
test_irpp(2012, 0, f2da = 150000)
# test_irpp(2013, 0, f2da = 20000)
# test_irpp(2013, 0, f2da = 50000)
# test_irpp(2013, 0, f2da = 150000)

println("f2dc")

test_irpp(2010, 0, f2dc = 20000)
test_irpp(2010, -2976, f2dc = 50000)
test_irpp(2010, -22917, f2dc = 150000)
test_irpp(2011, 0, f2dc = 20000)
test_irpp(2011, -2976, f2dc = 50000)
test_irpp(2011, -22917, f2dc = 150000)
test_irpp(2012, 0, f2dc = 20000)
test_irpp(2012, -3434, f2dc = 50000)
test_irpp(2012, -23542, f2dc = 150000)
# test_irpp(2013, 0, f2dc = 20000)
# test_irpp(2013, 0, f2dc = 50000)
# test_irpp(2013, 0, f2dc = 150000)

println("f2dh")

test_irpp(2010, 345, f2dh = 20000)
test_irpp(2010, 345, f2dh = 50000)
test_irpp(2010, 345, f2dh = 150000)
test_irpp(2011, 345, f2dh = 20000)
test_irpp(2011, 345, f2dh = 50000)
test_irpp(2011, 345, f2dh = 150000)
test_irpp(2012, 345, f2dh = 20000)
test_irpp(2012, 345, f2dh = 50000)
test_irpp(2012, 345, f2dh = 150000)
test_irpp(2013, 345, f2dh = 20000)
test_irpp(2013, 345, f2dh = 50000)
test_irpp(2013, 345, f2dh = 150000)

println("f2tr")

test_irpp(2010, -1461, f2tr = 20000)
test_irpp(2010, -9434, f2tr = 50000)
test_irpp(2010, -48142, f2tr = 150000)
test_irpp(2011, -1461, f2tr = 20000)
test_irpp(2011, -9434, f2tr = 50000)
test_irpp(2011, -48142, f2tr = 150000)
test_irpp(2012, -1461, f2tr = 20000)
test_irpp(2012, -9434, f2tr = 50000)
test_irpp(2012, -48142, f2tr = 150000)
test_irpp(2013, -1450, f2tr = 20000)
test_irpp(2013, -9389, f2tr = 50000)
test_irpp(2013, -48036, f2tr = 150000)

println("f2ts")

test_irpp(2010, -1461, f2ts = 20000)
test_irpp(2010, -9434, f2ts = 50000)
test_irpp(2010, -48142, f2ts = 150000)
test_irpp(2011, -1461, f2ts = 20000)
test_irpp(2011, -9434, f2ts = 50000)
test_irpp(2011, -48142, f2ts = 150000)
test_irpp(2012, -1461, f2ts = 20000)
test_irpp(2012, -9434, f2ts = 50000)
test_irpp(2012, -48142, f2ts = 150000)
test_irpp(2013, -1450, f2ts = 20000)
test_irpp(2013, -9389, f2ts = 50000)
test_irpp(2013, -48036, f2ts = 150000)

println("f3vg")

test_irpp(2010, -3600, f3vg = 20000)
test_irpp(2010, -9000, f3vg = 50000)
test_irpp(2010, -27000, f3vg = 150000)
test_irpp(2011, -3800, f3vg = 20000)
test_irpp(2011, -9500, f3vg = 50000)
test_irpp(2011, -28500, f3vg = 150000)
test_irpp(2012, -4800, f3vg = 20000)
test_irpp(2012, -12000, f3vg = 50000)
test_irpp(2012, -36000, f3vg = 150000)
test_irpp(2013, -1450, f3vg = 20000)
test_irpp(2013, -9389, f3vg = 50000)
test_irpp(2013, -48036, f3vg = 150000)

println("f3vz")

# test_irpp(2010, 0, f3vz = 20000)
# test_irpp(2010, 0, f3vz = 50000)
# test_irpp(2010, 0, f3vz = 150000)
test_irpp(2011, 0, f3vz = 20000)
test_irpp(2011, 0, f3vz = 50000)
test_irpp(2011, 0, f3vz = 150000)
test_irpp(2012, 0, f3vz = 20000)
test_irpp(2012, 0, f3vz = 50000)
test_irpp(2012, 0, f3vz = 150000)
test_irpp(2013, 0, f3vz = 20000)
test_irpp(2013, 0, f3vz = 50000)
test_irpp(2013, 0, f3vz = 150000)

println("f4ba")

test_irpp(2010, -1461, f4ba = 20000)
test_irpp(2010, -9434, f4ba = 50000)
test_irpp(2010, -48142, f4ba = 150000)
test_irpp(2011, -1461, f4ba = 20000)
test_irpp(2011, -9434, f4ba = 50000)
test_irpp(2011, -48142, f4ba = 150000)
test_irpp(2012, -1461, f4ba = 20000)
test_irpp(2012, -9434, f4ba = 50000)
test_irpp(2012, -48142, f4ba = 150000)
test_irpp(2013, -1450, f4ba = 20000)
test_irpp(2013, -9389, f4ba = 50000)
test_irpp(2013, -48036, f4ba = 150000)
