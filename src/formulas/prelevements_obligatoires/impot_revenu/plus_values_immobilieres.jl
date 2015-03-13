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


@define_formula(ir_pv_immo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Impôt sur le revenu afférent à la plus-value immobilière",
  url = "http://www.impots.gouv.fr/portal/dgi/public/popup?espId=1&typePage=cpr02&docOid=documentstandard_2157",
) do simulation, variable, period
  "Impôt sur le revenu afférent à la plus-value immobilière (CGI, art. 150 U, 150 UC-I et 150 UD)"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vz, period)
  pv_immo = legislation_at(simulation, period.start)["ir"]["pv_immo"]
  impo = pv_immo["taux"] .* f3vz
  return period, -impo
end
