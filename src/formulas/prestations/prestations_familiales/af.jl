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


@define_formula(af, famille_definition, Float32, requested_period_default_value,
  label = "Allocations familiales - total des allocations",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(af_base, period)
  @calculate(af_majo, period)
  @calculate(af_forf, period)
  return period, af_base .+ af_majo .+ af_forf
end


@define_formula(af_base, famille_definition, Float32, requested_period_default_value,
  label = "Allocations familiales - allocation de base",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(af_nbenf, period)
    P = legislation_at(simulation, period.start)["fam"]
    bmaf = P["af"]["bmaf"]
    af_1enf = round(bmaf * P["af"]["taux"]["enf1"], 2)
    af_2enf = round(bmaf * P["af"]["taux"]["enf2"], 2)
    af_enf_supp = round(bmaf * P["af"]["taux"]["enf3"], 2)
    return period, (af_nbenf .>= 1) .* af_1enf .+ (af_nbenf .>= 2) .* af_2enf .+ max(af_nbenf .- 2, 0) .* af_enf_supp
  else
    return period, default_array(variable)
  end
end


@define_formula(af_forf, famille_definition, Float32, requested_period_default_value,
  label = "Allocations familiales - forfait",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  @calculate(af_nbenf, period)
  smic55_holder = calculate(simulation, "smic55", period)
  P = legislation_at(simulation, period.start)["fam"]["af"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  bmaf = P["bmaf"]
  nbenf_forf = nb_enf(age, smic55, P["age3"], P["age3"])
  af_forfait = round(bmaf * P["taux"]["forfait"], 2)
  return period, ((af_nbenf .>= 2) .* nbenf_forf) .* af_forfait
end


@define_formula(af_majo, famille_definition, Float32, requested_period_default_value,
  label = "Allocations familiales - majoration pour âge",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", period)
  @calculate(af_nbenf, period)
  P = legislation_at(simulation, period.start)["fam"]["af"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  bmaf = P["bmaf"]
  P_maj = P["maj_age"]
  af_maj1 = round(bmaf * P_maj["taux1"], 2)
  af_maj2 = round(bmaf * P_maj["taux2"], 2)
  ageaine = age_aine(age, smic55, P["age1"], P["age2"])
  
  function age_sf_aine(age, ag1, ag2, ageaine)
    dum = (ag1 .<= ageaine) & (ageaine .<= ag2)
    return nb_enf(age, smic55, ag1, ag2) .- dum .* 1
  end

  nbenf_maj1 = ((af_nbenf .== 2) .* age_sf_aine(age, P_maj["age1"], P_maj["age2"] - 1, ageaine) .+ nb_enf(age, smic55, P_maj["age1"], P_maj["age2"] - 1) .* (af_nbenf .>= 3))
  nbenf_maj2 = ((af_nbenf .== 2) .* age_sf_aine(age, P_maj["age2"], P["age2"], ageaine) .+ nb_enf(age, smic55, P_maj["age2"], P["age2"]) .* (af_nbenf .>= 3))
  return period, nbenf_maj1 .* af_maj1 .+ nbenf_maj2 .* af_maj2
end


@define_formula(af_nbenf, famille_definition, Float32, requested_period_default_value,
  label = "Nombre d'enfants dans la famille au sens des allocations familiales",
) do simulation, variable, period
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", MonthPeriod(firstdayofmonth(period.start)))
  P = legislation_at(simulation, period.start)["fam"]["af"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  af_nbenf = nb_enf(age, smic55, P["age1"], P["age2"])
  return period, af_nbenf
end
