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


@define_formula(asf, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de soutien familial (ASF)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(asf_elig, period)
  asf_i_holder = calculate(simulation, "asf_i", period)
  montant = sum_person_in_entity(asf_i_holder, get_entity(variable), period, ENFS)
  return period, asf_elig .* montant
end


@define_formula(asf_elig, famille_definition, Bool, requested_period_last_value,
  label = "Éligibilité à l'ASF",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(isol, period)
  @calculate(residence_mayotte, period)
  return period, !residence_mayotte .* isol
end


@define_formula(asf_elig_i, individu_definition, Bool, requested_period_last_value,
  label = "Éligibilité à l'ASF (individuelle)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(age, period)
  @calculate(smic55, period)
  @calculate(pensions_alimentaires_percues, period)
  pfam = legislation_at(simulation, period.start)["fam"]
  eligibilite = ((age .>= pfam["af"]["age1"]) .* (age .<= pfam["af"]["age3"]) .* !smic55 .* (pensions_alimentaires_percues .== 0))
  return period, eligibilite
end


@define_formula(asf_i, individu_definition, Float32, requested_period_default_value,
  label = "Montant à verser à l'individu pour l'ASF",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(asf_elig_i, period)
  pfam = legislation_at(simulation, period.start)["fam"]
  return period, asf_elig_i .* pfam["af"]["bmaf"] .* pfam["asf"]["taux1"]
end
