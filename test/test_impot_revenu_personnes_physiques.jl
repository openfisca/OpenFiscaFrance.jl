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
  assert_near(calculate(simulation, "irpp"), irpp, error_margin = 0.5)
end


test_irpp(2010, -1181, sal = 20000)
