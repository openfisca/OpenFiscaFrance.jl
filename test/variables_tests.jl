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


PARENT1 = Role(1)
PARENT2 = Role(2)


first_day_of_year = firstdayofyear(today())
simulation = Simulation(tax_benefit_system, YearPeriod(first_day_of_year))
famille = get_entity(simulation, "famille")
famille.count = 1
famille.roles_count = 2
famille.step_size = 1
individu = get_entity(simulation, "individu")
individu.count = 2
individu.step_size = 2
set_array(simulation, "birth", [first_day_of_year - Year(40), first_day_of_year - Year(39)])
set_array(simulation, "idfam", [1, 1])
set_array(simulation, "quifam", [PARENT1, PARENT2])
assert_near(calculate(simulation, "age"), [40, 39], error_margin = 0)
