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


@define_formula(ars, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de rentrée scolaire",
  url = "http://vosdroits.service-public.fr/particuliers/F1878.xhtml",
) do simulation, variable, period
  "Allocation de rentrée scolaire brute de CRDS"
  period_br = YearPeriod(firstdayofyear(period.start))
  period = MonthPeriod((firstdayofyear(period.start) + Month(9)))
  age_holder = calculate(simulation, "age", period)
  @calculate(af_nbenf, period)
  smic55_holder = calculate(simulation, "smic55", period)
  @calculate(br_pf, MonthPeriod(firstdayofmonth(period_br.start)))
  P = legislation_at(simulation, period.start)["fam"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  bmaf = P["af"]["bmaf"]
  enf_05 = nb_enf(age, smic55, P["ars"]["agep"] - 1, P["ars"]["agep"] - 1)
  enf_primaire = enf_05 .+ nb_enf(age, smic55, P["ars"]["agep"], P["ars"]["agec"] - 1)
  enf_college = nb_enf(age, smic55, P["ars"]["agec"], P["ars"]["agel"] - 1)
  enf_lycee = nb_enf(age, smic55, P["ars"]["agel"], P["ars"]["ages"])
  arsnbenf = enf_primaire .+ enf_college .+ enf_lycee
  ars_plaf_res = P["ars"]["plaf"] .* (1 .+ af_nbenf .* P["ars"]["plaf_enf_supp"])
  arsbase = bmaf .* (P["ars"]["tx0610"] .* enf_primaire .+ P["ars"]["tx1114"] .* enf_college .+ P["ars"]["tx1518"] .* enf_lycee)
  ars = (arsnbenf .> 0) .* max(0, arsbase .- max(0, (br_pf .- ars_plaf_res) ./ max(1, arsnbenf)))
  return period_br, ars .* (ars .>= P["ars"]["seuil_nv"])
end
