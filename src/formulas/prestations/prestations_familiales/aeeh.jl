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


@define_formula(aeeh, famille_definition, Float32, requested_period_default_value,
  label = "Allocation d'éducation de l'enfant handicapé",
  url = "http://vosdroits.service-public.fr/particuliers/N14808.xhtml",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    """Allocation d'éducation de l'enfant handicapé (Allocation d'éducation spécialisée avant le 1er janvier 2006)

    Ce montant peut être majoré par un complément accordé par la Cdaph qui prend en compte :
    le coût du handicap de l'enfant,
    la cessation ou la réduction d'activité professionnelle d'un ou l'autre des deux parents,
    l'embauche d'une tierce personne rémunérée.

    Une majoration est versée au parent isolé bénéficiaire d'un complément d'Aeeh lorsqu'il cesse ou réduit son activité
    professionnelle ou lorsqu'il embauche une tierce personne rémunérée.
    """
    period = YearPeriod(firstdayofmonth(period.start))
    age_holder = calculate(simulation, "age", period)
    inv_holder = calculate(simulation, "inv", period)
    categ_inv_holder = calculate(simulation, "categ_inv", period)
    P = legislation_at(simulation, period.start)["fam"]
    age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    categ_inv = split_person_by_role(categ_inv_holder, get_entity(variable), period, ENFS)
    inv = split_person_by_role(inv_holder, get_entity(variable), period, ENFS)
    aeeh = 0
    for enfant in keys(age)
      enfhand = inv[enfant] .* (age[enfant] .< P["aeeh"]["age"]) ./ 12
      categ = categ_inv[enfant]
      aeeh += 0 .* enfhand
    end
    return period, 12 * aeeh
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    """Allocation d'éducation de l'enfant handicapé (Allocation d'éducation spécialisée avant le 1er janvier 2006)

    Ce montant peut être majoré par un complément accordé par la Cdaph qui prend en compte :
    le coût du handicap de l'enfant,
    la cessation ou la réduction d'activité professionnelle d'un ou l'autre des deux parents,
    l'embauche d'une tierce personne rémunérée.

    Une majoration est versée au parent isolé bénéficiaire d'un complément d'Aeeh lorsqu'il cesse ou réduit son activité
    professionnelle ou lorsqu'il embauche une tierce personne rémunérée.
    """
    period = YearPeriod(firstdayofmonth(period.start))
    age_holder = calculate(simulation, "age", period)
    inv_holder = calculate(simulation, "inv", period)
    @calculate(isol, period)
    categ_inv_holder = calculate(simulation, "categ_inv", period)
    P = legislation_at(simulation, period.start)["fam"]
    age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    categ_inv = split_person_by_role(categ_inv_holder, get_entity(variable), period, ENFS)
    inv = split_person_by_role(inv_holder, get_entity(variable), period, ENFS)
    aeeh = 0
    for enfant in keys(age)
      enfhand = inv[enfant] .* (age[enfant] .< P["aeeh"]["age"]) ./ 12
      categ = categ_inv[enfant]
      aeeh += enfhand .* (P["af"]["bmaf"] .* (P["aeeh"]["base"] .+ P["aeeh"]["cpl1"] .* (categ .== 1) .+ (categ .== 2) .* (P["aeeh"]["cpl2"] .+ P["aeeh"]["maj2"] .* isol) .+ (categ .== 3) .* (P["aeeh"]["cpl3"] .+ P["aeeh"]["maj3"] .* isol) .+ (categ .== 4) .* (P["aeeh"]["cpl4"] .+ P["aeeh"]["maj4"] .* isol) .+ (categ .== 5) .* (P["aeeh"]["cpl5"] .+ P["aeeh"]["maj5"] .* isol) .+ (categ .== 6) .* (P["aeeh"]["maj6"] .* isol)) .+ (categ .== 6) .* P["aeeh"]["cpl6"])
    end
    return period, 12 * aeeh
  else
    return period, default_array(variable)
  end
end
