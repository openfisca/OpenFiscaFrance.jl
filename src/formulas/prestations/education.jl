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


@define_formula(bourse_college, famille_definition, Float32, requested_period_default_value,
  label = "Montant de la bourse de collège",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rfr, YearPeriod(firstdayofyear(period.start)) - Year(2))
  age_holder = calculate(simulation, "age", period)
  scolarite_holder = calculate(simulation, "scolarite", period)
  P = legislation_at(simulation, period.start)["bourses_education"]["bourse_college"]
  ages = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  nb_enfants = zeros(Float32, length(rfr))
  for age in values(ages)
    nb_enfants += age .>= 0
  end
  plafond_taux_1 = P["plafond_taux_1"] .+ P["plafond_taux_1"] .* nb_enfants .* P["coeff_enfant_supplementaire"]
  plafond_taux_2 = P["plafond_taux_2"] .+ P["plafond_taux_2"] .* nb_enfants .* P["coeff_enfant_supplementaire"]
  plafond_taux_3 = P["plafond_taux_3"] .+ P["plafond_taux_3"] .* nb_enfants .* P["coeff_enfant_supplementaire"]
  eligible_taux_3 = rfr .< plafond_taux_3
  eligible_taux_2 = !eligible_taux_3 .* (rfr .< plafond_taux_2)
  eligible_taux_1 = !((eligible_taux_2 .!= 0) | eligible_taux_3) .* (rfr .< plafond_taux_1)
  scolarites = split_person_by_role(scolarite_holder, get_entity(variable), period, ENFS)
  nb_enfants_college = zeros(Float32, length(rfr))
  for scolarite in values(scolarites)
    nb_enfants_college += scolarite .== SCOLARITE_COLLEGE
  end
  montant = nb_enfants_college .* (eligible_taux_3 .* P["montant_taux_3"] .+ eligible_taux_2 .* P["montant_taux_2"] .+ eligible_taux_1 .* P["montant_taux_1"])
  return period, montant ./ 12
end
