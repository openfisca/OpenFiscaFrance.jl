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


function test_age_from_agem()
  year = 2013
  simulation = Simulation(tax_benefit_system, YearPeriod(Date(year, 1, 1)))
  famille = get_entity(simulation, "famille")
  foyer_fiscal = get_entity(simulation, "foyer_fiscal")
  individu = get_entity(simulation, "individu")
  menage = get_entity(simulation, "menage")

  add_member(famille)
  add_member(foyer_fiscal)
  add_member(menage)
  add_member(individu, agem = 40 * 12 + 6, quifam = 1, quifoy = 1, quimen = 1)
  assert_near(calculate(simulation, "age"), [40], absolute_error_margin = 0)
end


function test_age_from_birth()
  year = 2013
  simulation = Simulation(tax_benefit_system, YearPeriod(Date(year, 1, 1)))
  famille = get_entity(simulation, "famille")
  foyer_fiscal = get_entity(simulation, "foyer_fiscal")
  individu = get_entity(simulation, "individu")
  menage = get_entity(simulation, "menage")

  add_member(famille)
  add_member(foyer_fiscal)
  add_member(menage)
  add_member(individu, birth = Date(year - 40, 1, 1), quifam = 1, quifoy = 1, quimen = 1)
  assert_near(calculate(simulation, "age"), [40], absolute_error_margin = 0)
  assert_near(calculate(simulation, "agem"), [40 * 12], absolute_error_margin = 0)
end


function test_agem_from_age()
  year = 2013
  simulation = Simulation(tax_benefit_system, YearPeriod(Date(year, 1, 1)))
  famille = get_entity(simulation, "famille")
  foyer_fiscal = get_entity(simulation, "foyer_fiscal")
  individu = get_entity(simulation, "individu")
  menage = get_entity(simulation, "menage")

  add_member(famille)
  add_member(foyer_fiscal)
  add_member(menage)
  add_member(individu, age = 40, quifam = 1, quifoy = 1, quimen = 1)
  assert_near(calculate(simulation, "agem"), [40 * 12], absolute_error_margin = 0)
end


function test_agem_from_birth()
  year = 2013
  simulation = Simulation(tax_benefit_system, YearPeriod(Date(year, 1, 1)))
  famille = get_entity(simulation, "famille")
  foyer_fiscal = get_entity(simulation, "foyer_fiscal")
  individu = get_entity(simulation, "individu")
  menage = get_entity(simulation, "menage")

  add_member(famille)
  add_member(foyer_fiscal)
  add_member(menage)
  add_member(individu, birth = Date(year - 40, 1, 1), quifam = 1, quifoy = 1, quimen = 1)
  assert_near(calculate(simulation, "agem"), [40 * 12], absolute_error_margin = 0)
  assert_near(calculate(simulation, "age"), [40], absolute_error_margin = 0)
end


test_age_from_agem()
test_age_from_birth()
test_agem_from_age()
test_agem_from_birth()
