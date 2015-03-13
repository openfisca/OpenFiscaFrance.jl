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


@define_formula(exoneration_cotisations_patronales_apprenti, individu_definition, Float32, requested_period_default_value,
  label = "Exonération de cotisations patronales pour l'emploi d'un apprenti",
  url = "http://www.apce.com/pid927/contrat-d-apprentissage.html?espace=1&tp=1&pagination=2",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(remuneration_apprenti, period)
  bareme_by_name = legislation_at(simulation, period.start)["cotsoc"]["cotisations_employeur"]["prive_non_cadre"]
  taux_max = (bareme_by_name["vieillessedeplaf"].rates[0] + bareme_by_name["vieillesseplaf"].rates[0] + bareme_by_name["maladie"].rates[0] + bareme_by_name["famille"].rates[0])
  return period, -taux_max .* remuneration_apprenti
end


@define_formula(exoneration_cotisations_salariales_apprenti, individu_definition, Float32, requested_period_default_value,
  label = "Exonération de cotisations salariales pour l'emploi d'un apprenti",
  url = "http://www.apce.com/pid927/contrat-d-apprentissage.html?espace=1&tp=1&pagination=2",
) do simulation, variable, period
  @calculate(cotisations_salariales, period)
  return period, -cotisations_salariales
end
