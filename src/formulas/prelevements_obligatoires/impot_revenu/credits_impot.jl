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


@define_formula(accult, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
) do simulation, variable, period
  """Acquisition de biens culturels (case 7UO)
  2002-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7uo, period)
  _P = legislation_at(simulation, period.start)
  P = _P["ir"]["credits_impot"]["accult"]
  return period, P["taux"] .* f7uo
end


@define_formula(acqgpl, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2007, 12, 31),
) do simulation, variable, period
  """Crédit d'impôt pour dépense d'acquisition ou de transformation d'un véhicule GPL ou mixte
  2002-2007
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7up, period)
  @calculate(f7uq, period)
  acqgpl = legislation_at(simulation, period.start)["ir"]["credits_impot"]["acqgpl"]
  return period, f7up .* acqgpl["mont_up"] .+ f7uq .* acqgpl["mont_uq"]
end


@define_formula(aidmob, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
  stop_date = Date(2008, 12, 31),
) do simulation, variable, period
  """Crédit d'impôt aide à la mobilité
  2005-2008
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f1ar, period)
  @calculate(f1br, period)
  @calculate(f1cr, period)
  @calculate(f1dr, period)
  @calculate(f1er, period)
  _P = legislation_at(simulation, period.start)
  return period, (f1ar .+ f1br .+ f1cr .+ f1dr .+ f1er) .* _P["ir"]["credits_impot"]["aidmob"]["montant"]
end


@define_formula(aidper, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2003, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de l’aide aux personnes
    (cases 7WI, 7WJ, 7WL).
    2002-2003
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(nbH, period)
    @calculate(f7wi, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["aidper"]
    n = nb_pac2 .- nbH ./ 2
    max0 = (P["max"] .* (1 .+ marpac) .+ P["pac1"] .* (n .>= 1) .+ P["pac2"] .* (n .>= 2) .+ P["pac3"] .* (max(n .- 2, 0)) .+ ((n .>= 2) .* P["pac3"] .* nbH .+ (n .== 1) .* (P["pac2"] .+ (nbH .> 1) .* P["pac3"] .* (nbH .- 1)) .* (nbH .>= 1) .+ (n .== 0) .* (P["pac1"] .+ (nbH .> 1) .* P["pac2"] .* (nbH .- 1) .+ (nbH .> 2) .* P["pac3"] .* (nbH .- 2)) .* (nbH .>= 1)) ./ 2)
    return period, P["taux_wi"] .* min(f7wi, max0)
  elseif Date(2004, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de l’aide aux personnes
    (cases 7WI, 7WJ).
    2004-2005
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(nbH, period)
    @calculate(f7wi, period)
    @calculate(f7wj, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["aidper"]
    n = nb_pac2 .- nbH ./ 2
    max0 = (P["max"] .* (1 .+ marpac) .+ P["pac1"] .* (n .>= 1) .+ P["pac2"] .* (n .>= 2) .+ P["pac3"] .* (max(n .- 2, 0)) .+ ((n .>= 2) .* P["pac3"] .* nbH .+ (n .== 1) .* (P["pac2"] .+ (nbH .> 1) .* P["pac3"] .* (nbH .- 1)) .* (nbH .>= 1) .+ (n .== 0) .* (P["pac1"] .+ (nbH .> 1) .* P["pac2"] .* (nbH .- 1) .+ (nbH .> 2) .* P["pac3"] .* (nbH .- 2)) .* (nbH .>= 1)) ./ 2)
    max1 = max(0, max0 .- f7wj)
    return period, (P["taux_wj"] .* min(f7wj, max0) .+ P["taux_wi"] .* min(f7wi, max1))
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de l’aide aux personnes
    (cases 7WI, 7WJ).
    2006-2009
    cf. cerfa 50796
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7wi, period)
    @calculate(f7wj, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["aidper"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- f7wj)
    return period, (P["taux_wj"] .* min(f7wj, max0) .+ P["taux_wi"] .* min(f7wi, max1))
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de l’aide aux personnes
    (cases 7SF, 7WI, 7WJ, 7WL).
    2010-2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7sf, period)
    @calculate(f7wi, period)
    @calculate(f7wj, period)
    @calculate(f7wl, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["aidper"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- f7wl .- f7sf)
    max2 = max(0, max1 .- f7wj)
    return period, P["taux_wl"] .* min(f7wl .+ f7sf, max0) .+ P["taux_wj"] .* min(f7wj, max1) .+ P["taux_wi"] .* min(f7wi, max2)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de l’aide aux personnes
    (cases 7WI, 7WJ, 7WL, 7WR).
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7wi, period)
    @calculate(f7wj, period)
    @calculate(f7wl, period)
    @calculate(f7wr, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["aidper"]
    max00 = P["max"] .* (1 .+ marpac)
    max0 = max00 .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- max(0, f7wl .- max00))
    max2 = max(0, max1 .- f7wj)
    return period, (P["taux_wr"] .* f7wr .+ P["taux_wl"] .* min(f7wl, max00) .+ P["taux_wl"] .* max(f7wl .- max00, 0) .+ P["taux_wj"] .* min(f7wj, max1) .+ P["taux_wi"] .* min(f7wi, max2))
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de l’aide aux personnes
    (cases 7WI, 7WJ, 7WL).
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7wj, period)
    @calculate(f7wl, period)
    @calculate(f7wr, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["aidper"]
    max00 = P["max"] .* (1 .+ marpac)
    max0 = max00 .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- max(0, f7wl .- max00))
    return period, (P["taux_wr"] .* f7wr .+ P["taux_wl"] .* min(f7wl, max00) .+ P["taux_wl"] .* max(f7wl .- max00, 0) .+ P["taux_wj"] .* min(f7wj, max1))
  else
    return period, default_array(variable)
  end
end


@define_formula(assloy, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
) do simulation, variable, period
  """Crédit d’impôt primes d’assurance pour loyers impayés (case 4BF)
  2005-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f4bf, period)
  _P = legislation_at(simulation, period.start)
  return period, _P["ir"]["credits_impot"]["assloy"]["taux"] .* f4bf
end


@define_formula(autent, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  """Auto-entrepreneur : versements d’impôt sur le revenu (case 8UY)
  2009-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f8uy, period)
  return period, f8uy
end


@define_formula(ci_garext, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
) do simulation, variable, period
  """Frais de garde des enfants à l’extérieur du domicile (cases 7GA à 7GC et 7GE à 7GG)
  2005-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7ga, period)
  @calculate(f7gb, period)
  @calculate(f7gc, period)
  @calculate(f7ge, period)
  @calculate(f7gf, period)
  @calculate(f7gg, period)
  _P = legislation_at(simulation, period.start)
  P = _P["ir"]["credits_impot"]["garext"]
  max1 = P["max"]
  return period, P["taux"] .* (min(f7ga, max1) .+ min(f7gb, max1) .+ min(f7gc, max1) .+ min(f7ge, max1 / 2) .+ min(f7gf, max1 / 2) .+ min(f7gg, max1 / 2))
end


@define_formula(credits_impot, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2002"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(acqgpl, period)
    @calculate(aidper, period)
    @calculate(creimp, period)
    @calculate(drbail, period)
    @calculate(prlire, period)
    return period, accult .+ acqgpl .+ aidper .+ creimp .+ drbail .+ prlire
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2003 et 2004"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(acqgpl, period)
    @calculate(aidper, period)
    @calculate(creimp, period)
    @calculate(drbail, period)
    @calculate(mecena, period)
    @calculate(prlire, period)
    return period, accult .+ acqgpl .+ aidper .+ creimp .+ drbail .+ mecena .+ prlire
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2005 et 2006"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(acqgpl, period)
    @calculate(aidmob, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(ci_garext, period)
    @calculate(creimp, period)
    @calculate(divide, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(jeunes, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    return period, (accult .+ acqgpl .+ aidmob .+ aidper .+ assloy .+ ci_garext .+ creimp .+ divide .+ direpa .+ drbail .+ jeunes .+ mecena .+ preetu .+ prlire .+ quaenv)
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2007"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(acqgpl, period)
    @calculate(aidmob, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(ci_garext, period)
    @calculate(creimp, period)
    @calculate(divide, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(jeunes, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ acqgpl .+ aidmob .+ aidper .+ assloy .+ ci_garext .+ creimp .+ divide .+ direpa .+ drbail .+ inthab .+ jeunes .+ mecena .+ preetu .+ prlire .+ quaenv .+ saldom2)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2008"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(aidmob, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(ci_garext, period)
    @calculate(creimp, period)
    @calculate(creimp_exc_2008, period)
    @calculate(divide, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(jeunes, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ aidmob .+ aidper .+ assloy .+ ci_garext .+ creimp .+ creimp_exc_2008 .+ divide .+ direpa .+ drbail .+ inthab .+ jeunes .+ mecena .+ preetu .+ prlire .+ quaenv .+ saldom2)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2009"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(ci_garext, period)
    @calculate(creimp, period)
    @calculate(divide, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ aidper .+ assloy .+ ci_garext .+ creimp .+ divide .+ direpa .+ drbail .+ inthab .+ mecena .+ preetu .+ prlire .+ quaenv .+ saldom2)
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2010"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(autent, period)
    @calculate(ci_garext, period)
    @calculate(creimp, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(jeunes, period)
    @calculate(mecena, period)
    @calculate(percvm, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ aidper .+ assloy .+ autent .+ ci_garext .+ creimp .+ direpa .+ drbail .+ inthab .+ mecena .+ percvm .+ preetu .+ prlire .+ quaenv .+ saldom2)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2011"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(autent, period)
    @calculate(ci_garext, period)
    @calculate(creimp, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ aidper .+ assloy .+ autent .+ ci_garext .+ creimp .+ direpa .+ drbail .+ inthab .+ mecena .+ preetu .+ prlire .+ quaenv .+ saldom2)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Crédits d'impôt pour l'impôt sur les revenus de 2012"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(autent, period)
    @calculate(ci_garext, period)
    @calculate(cotsyn, period)
    @calculate(creimp, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ aidper .+ assloy .+ autent .+ ci_garext .+ cotsyn .+ creimp .+ direpa .+ drbail .+ inthab .+ mecena .+ preetu .+ prlire .+ quaenv .+ saldom2)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Crédits d'impôt crédités l'impôt sur les revenus de 2013"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(aidper, period)
    @calculate(assloy, period)
    @calculate(autent, period)
    @calculate(ci_garext, period)
    @calculate(cotsyn, period)
    @calculate(creimp, period)
    @calculate(direpa, period)
    @calculate(drbail, period)
    @calculate(inthab, period)
    @calculate(mecena, period)
    @calculate(preetu, period)
    @calculate(prlire, period)
    @calculate(quaenv, period)
    @calculate(saldom2, period)
    return period, (accult .+ aidper .+ assloy .+ autent .+ ci_garext .+ cotsyn .+ creimp .+ direpa .+ drbail .+ inthab .+ mecena .+ preetu .+ prlire .+ quaenv .+ saldom2)
  else
    return period, default_array(variable)
  end
end


@define_formula(creimp, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2002"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8td_2002_2005, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8td_2002_2005 .+ f8te .- f8tf .+ f8tg .+ f8th)
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2003, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2003"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8td_2002_2005, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8td_2002_2005 .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp)
  elseif Date(2004, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2004"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8td_2002_2005, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8td_2002_2005 .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2005"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8td_2002_2005, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wc, period)
    @calculate(f8we, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8td_2002_2005 .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wc .+ f8we)
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2006"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wc, period)
    @calculate(f8wd, period)
    @calculate(f8we, period)
    @calculate(f8wr, period)
    @calculate(f8ws, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wc .+ f8wd .+ f8we .+ f8wr .+ f8ws .+ f8wt .+ f8wu)
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2007"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wc, period)
    @calculate(f8wd, period)
    @calculate(f8wr, period)
    @calculate(f8ws, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    @calculate(f8wv, period)
    @calculate(f8wx, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wc .+ f8wd .+ f8wr .+ f8ws .+ f8wt .+ f8wu .+ f8wv .+ f8wx)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2008"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wc, period)
    @calculate(f8wd, period)
    @calculate(f8we, period)
    @calculate(f8wr, period)
    @calculate(f8ws, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    @calculate(f8wv, period)
    @calculate(f8wx, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wc .+ f8wd .+ f8wr .+ f8ws .+ f8wt .+ f8wu .+ f8wv .+ f8wx)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2009"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wd, period)
    @calculate(f8we, period)
    @calculate(f8wr, period)
    @calculate(f8ws, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    @calculate(f8wv, period)
    @calculate(f8wx, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wd .+ f8we .+ f8wr .+ f8ws .+ f8wt .+ f8wu .+ f8wv .+ f8wx)
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2011"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wd, period)
    @calculate(f8we, period)
    @calculate(f8wr, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    @calculate(f8wv, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wd .+ f8we .+ f8wr .+ f8wt .+ f8wu .+ f8wv)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2012"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8ts, period)
    @calculate(f8tz, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wd, period)
    @calculate(f8we, period)
    @calculate(f8wr, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    @calculate(f8wv, period)
    return period, (f2ab .+ f8ta .+ f8tb .+ f8tc .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8ts .+ f8tz .+ f8uz .+ f8wa .+ f8wb .+ f8wd .+ f8we .+ f8wr .+ f8wt .+ f8wu .+ f8wv)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Avoir fiscaux et crédits d'impôt 2013"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2ab, period)
    @calculate(f2ck, period)
    @calculate(f8ta, period)
    @calculate(f8tb, period)
    @calculate(f8tc, period)
    @calculate(f8te, period)
    @calculate(f8tf, period)
    @calculate(f8tg, period)
    @calculate(f8th, period)
    @calculate(f8tl, period)
    @calculate(f8to, period)
    @calculate(f8tp, period)
    @calculate(f8ts, period)
    @calculate(f8tz, period)
    @calculate(f8uw, period)
    @calculate(f8uz, period)
    @calculate(f8wa, period)
    @calculate(f8wb, period)
    @calculate(f8wc, period)
    @calculate(f8wd, period)
    @calculate(f8we, period)
    @calculate(f8wr, period)
    @calculate(f8wt, period)
    @calculate(f8wu, period)
    return period, (f2ab .+ f2ck .+ f8ta .+ f8tb .+ f8tc .+ f8te .- f8tf .+ f8tg .+ f8th .+ f8to .- f8tp .+ f8tl .+ f8ts .+ f8tz .+ f8uw .+ f8uz .+ f8wa .+ f8wb .+ f8wc .+ f8wd .+ f8we .+ f8wr .+ f8wt .+ f8wu)
  else
    return period, default_array(variable)
  end
end


@define_formula(creimp_exc_2008, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Crédit d'impôt exceptionnel sur les revenus 2008
  http://www11.minefi.gouv.fr/boi/boi2009/5fppub/textes/5b2509/5b2509.pdf
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rni, period)
  @calculate(nbptr, period)
  @calculate(iai, period)
  @calculate(mohist, period)
  @calculate(elig_creimp_exc_2008, period)
  rpp = rni ./ nbptr
  return period, (elig_creimp_exc_2008 .* (mohist .< 10700) .* (rpp .<= 12475) .* round((2 / 3) .* min(12475, iai) .* (rpp .< 11674) .+ (rpp .> 11673) .* max(0, 8317 .* (12475 .- rpp) ./ 802)))
end


@define_formula(direpa, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Crédit d’impôt directive « épargne » (case 2BG)
  2006-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f2bg, period)
  return period, f2bg
end


@define_formula(divide, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
  stop_date = Date(2009, 12, 31),
) do simulation, variable, period
  """Crédit d'impôt dividendes
  2005-2009
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(marpac, period)
  @calculate(f2dc, period)
  @calculate(f2gr, period)
  _P = legislation_at(simulation, period.start)
  P = _P["ir"]["credits_impot"]["divide"]
  max1 = P["max"] .* (marpac .+ 1)
  return period, min(P["taux"] .* (f2dc .+ f2gr), max1)
end


@define_formula(drbail, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Crédit d’impôt représentatif de la taxe additionnelle au droit de bail (case 4TQ)
  2002-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f4tq, period)
  _P = legislation_at(simulation, period.start)
  P = _P["ir"]["credits_impot"]["drbail"]
  return period, P["taux"] .* f4tq
end


@define_formula(inthab, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2007, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    """Crédit d’impôt intérêts des emprunts pour l’habitation principale (cases 7UH)
    2007
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(caseP, period)
    @calculate(caseF, period)
    @calculate(nbG, period)
    @calculate(nbR, period)
    @calculate(f7uh, period)
    P = legislation_at(simulation, period.start)["ir"]["credits_impot"]["inthab"]
    invalide = caseP | caseF | (nbG .!= 0) | (nbR .!= 0)
    max0 = P["max"] .* (marpac .+ 1) .* (1 .+ invalide) .+ nb_pac2 .* P["add"]
    return period, P["taux1"] .* min(max0, f7uh)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Crédit d’impôt intérêts des emprunts pour l’habitation principale (cases 7VX, 7VY et 7VZ)
    2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(caseP, period)
    @calculate(caseF, period)
    @calculate(nbG, period)
    @calculate(nbR, period)
    @calculate(f7vy, period)
    @calculate(f7vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["inthab"]
    invalide = caseP | caseF | (nbG .!= 0) | (nbR .!= 0)
    max0 = P["max"] .* (marpac .+ 1) .* (1 .+ invalide) .+ nb_pac2 .* P["add"]
    max1 = max(max0 .- f7vy, 0)
    return period, (P["taux1"] .* min(f7vy, max0) .+ P["taux3"] .* min(f7vz, max1))
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Crédit d’impôt intérêts des emprunts pour l’habitation principale (cases 7VX, 7VY et 7VZ)
    2009
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(caseP, period)
    @calculate(caseF, period)
    @calculate(nbG, period)
    @calculate(nbR, period)
    @calculate(f7vx, period)
    @calculate(f7vy, period)
    @calculate(f7vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["inthab"]
    invalide = caseP | caseF | (nbG .!= 0) | (nbR .!= 0)
    max0 = P["max"] .* (marpac .+ 1) .* (1 .+ invalide) .+ nb_pac2 .* P["add"]
    max1 = max(max0 .- f7vx, 0)
    max2 = max(max1 .- f7vy, 0)
    return period, (P["taux1"] .* min(f7vx, max0) .+ P["taux1"] .* min(f7vy, max1) .+ P["taux3"] .* min(f7vz, max2))
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Crédit d’impôt intérêts des emprunts pour l’habitation principale (cases 7VW, 7VX, 7VY et 7VZ)
    2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(caseP, period)
    @calculate(caseF, period)
    @calculate(nbG, period)
    @calculate(nbR, period)
    @calculate(f7vw, period)
    @calculate(f7vx, period)
    @calculate(f7vy, period)
    @calculate(f7vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["inthab"]
    invalide = caseP | caseF | (nbG .!= 0) | (nbR .!= 0)
    max0 = P["max"] .* (marpac .+ 1) .* (1 .+ invalide) .+ nb_pac2 .* P["add"]
    max1 = max(max0 .- f7vx, 0)
    max2 = max(max1 .- f7vy, 0)
    max3 = max(max2 .- f7vw, 0)
    return period, (P["taux1"] .* min(f7vx, max0) .+ P["taux1"] .* min(f7vy, max1) .+ P["taux2"] .* min(f7vw, max2) .+ P["taux3"] .* min(f7vz, max3))
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Crédit d’impôt intérêts des emprunts pour l’habitation principale (cases 7VW, 7VX, 7VY et 7VZ)
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(caseP, period)
    @calculate(caseF, period)
    @calculate(nbG, period)
    @calculate(nbR, period)
    @calculate(f7vu, period)
    @calculate(f7vw, period)
    @calculate(f7vv, period)
    @calculate(f7vx, period)
    @calculate(f7vy, period)
    @calculate(f7vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["inthab"]
    invalide = caseP | caseF | (nbG .!= 0) | (nbR .!= 0)
    max0 = P["max"] .* (marpac .+ 1) .* (1 .+ invalide) .+ nb_pac2 .* P["add"]
    max1 = max(max0 .- f7vx, 0)
    max2 = max(max1 .- f7vy, 0)
    max3 = max(max2 .- f7vw, 0)
    max4 = max(max3 .- f7vu, 0)
    max5 = max(max4 .- f7vz, 0)
    return period, (P["taux1"] .* min(f7vx, max0) .+ P["taux1"] .* min(f7vy, max1) .+ P["taux2"] .* min(f7vw, max2) .+ P["taux3"] .* min(f7vu, max3) .+ P["taux4"] .* min(f7vz, max4) .+ P["taux5"] .* min(f7vv, max5))
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Crédit d’impôt intérêts des emprunts pour l’habitation principale (cases 7VW, 7VX, 7VY et 7VZ)
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(caseP, period)
    @calculate(caseF, period)
    @calculate(nbG, period)
    @calculate(nbR, period)
    @calculate(f7vt, period)
    @calculate(f7vu, period)
    @calculate(f7vv, period)
    @calculate(f7vw, period)
    @calculate(f7vx, period)
    @calculate(f7vy, period)
    @calculate(f7vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["inthab"]
    invalide = caseP | caseF | (nbG .!= 0) | (nbR .!= 0)
    max0 = P["max"] .* (marpac .+ 1) .* (1 .+ invalide) .+ nb_pac2 .* P["add"]
    max1 = max(max0 .- f7vx, 0)
    max2 = max(max1 .- f7vy, 0)
    max3 = max(max2 .- f7vw, 0)
    max4 = max(max3 .- f7vu, 0)
    max5 = max(max4 .- f7vz, 0)
    max6 = max(max5 .- f7vv, 0)
    return period, (P["taux1"] .* min(f7vx, max0) .+ P["taux1"] .* min(f7vy, max1) .+ P["taux2"] .* min(f7vw, max2) .+ P["taux3"] .* min(f7vu, max3) .+ P["taux4"] .* min(f7vz, max4) .+ P["taux5"] .* min(f7vv, max5) .+ P["taux6"] .* min(f7vt, max6))
  else
    return period, default_array(variable)
  end
end


@define_formula(jeunes, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
  stop_date = Date(2008, 12, 31),
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  jeunes_ind_holder = calculate(simulation, "jeunes_ind", period)
  return period, sum_person_in_entity(jeunes_ind_holder, get_entity(variable), period)
end


@define_formula(jeunes_ind, individu_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
  stop_date = Date(2008, 12, 31),
) do simulation, variable, period
  """Crédit d'impôt en faveur des jeunes
  2005-2008

  rfr de l'année où jeune de moins de 26 à travaillé six mois
  cf. http://www3.finances.gouv.fr/calcul_impot/2009/pdf/form-2041-GY.pdf
  Attention seuls certains
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(age, period)
  nbptr_holder = calculate(simulation, "nbptr", period)
  rfr_holder = calculate(simulation, "rfr", period)
  @calculate(sali, period)
  marpac_holder = calculate(simulation, "marpac", period)
  @calculate(elig_creimp_jeunes, period)
  _P = legislation_at(simulation, period.start)
  P = _P["ir"]["credits_impot"]["jeunes"]
  rfr = entity_to_person(rfr_holder, period)
  nbptr = entity_to_person(nbptr_holder, period)
  marpac = entity_to_person(marpac_holder, period)
  elig = (age .< P["age"]) .* (rfr .< P["rfr_plaf"] .* (marpac .* P["rfr_mult"] .+ !marpac) .+ max(0, nbptr .- 2) .* 0.5 .* P["rfr_maj"] .+ (nbptr .== 1.5) .* P["rfr_maj"])
  montant = (P["min"] .<= sali) .* (sali .< P["int"]) .* P["montant"] .+ (P["int"] .<= sali) .* (sali .<= P["max"]) .* (P["max"] .- sali) .* P["taux"]
  return period, elig_creimp_jeunes .* elig .* max(25, montant)
end


@define_formula(mecena, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2003, 1, 1),
) do simulation, variable, period
  """Mécénat d'entreprise (case 7US)
  2003-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7us, period)
  return period, f7us
end


@define_formula(nb_pac2, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nbF, period)
  @calculate(nbJ, period)
  @calculate(nbR, period)
  @calculate(nbH, period)
  return period, nbF .+ nbJ .+ nbR .- nbH ./ 2
end


@define_formula(percvm, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
) do simulation, variable, period
  """Crédit d’impôt pertes sur cessions de valeurs mobilières (3VV)
  -2010
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vv_end_2010, period)
  _P = legislation_at(simulation, period.start)
  return period, _P["ir"]["credits_impot"]["percvm"]["taux"] .* f3vv_end_2010
end


@define_formula(preetu, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2005, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Crédit d’impôt pour souscription de prêts étudiants (cases 7UK, 7VO et 7TD)
    2005
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7uk, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["preetu"]
    return period, P["taux"] .* min(f7uk, P["max"])
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    """Crédit d’impôt pour souscription de prêts étudiants (cases 7UK, 7VO et 7TD)
    2006-2007
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7uk, period)
    @calculate(f7vo, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["preetu"]
    max1 = P["max"] .* (1 .+ f7vo)
    return period, P["taux"] .* min(f7uk, max1)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    """Crédit d’impôt pour souscription de prêts étudiants (cases 7UK, 7VO et 7TD)
    2008-
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7uk, period)
    @calculate(f7vo, period)
    @calculate(f7td, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["preetu"]
    max1 = P["max"] .* f7vo
    return period, P["taux"] .* min(f7uk, P["max"]) .+ P["taux"] .* min(f7td, max1)
  else
    return period, default_array(variable)
  end
end


@define_formula(prlire, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prélèvement libératoire à restituer (case 2DH)",
  stop_date = Date(2013, 12, 31),
) do simulation, variable, period
  """Prélèvement libératoire à restituer (case 2DH)
  2002-
  http://www2.impots.gouv.fr/documentation/2013/brochure_ir/index.html#122/z
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f2dh, period)
  @calculate(f2ch, period)
  @calculate(marpac, period)
  _P = legislation_at(simulation, period.start)
  plaf_resid = max(_P["ir"]["rvcm"]["abat_assvie"] .* (1 .+ marpac) .- f2ch, 0)
  return period, _P["ir"]["credits_impot"]["prlire"]["taux"] .* min(f2dh, plaf_resid)
end


@define_formula(quaenv, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2005, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de la qualité environnementale
    (cases 7WF, 7WG, 7WH)
    2005
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7wf, period)
    @calculate(f7wg, period)
    @calculate(f7wh, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["quaenv"]
    n = nb_pac2
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* (n .>= 1) .+ P["pac2"] .* (n .>= 2) .+ P["pac2"] .* (max(n .- 2, 0))
    max1 = max(0, max0 .- f7wf)
    max2 = max(0, max1 .- f7wg)
    return period, (P["taux_wf"] .* min(f7wf, max0) .+ P["taux_wg"] .* min(f7wg, max1) .+ P["taux_wh"] .* min(f7wh, max2))
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de la qualité environnementale
    (cases 7WF, 7WG, 7WH, 7WQ)
    2006-2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7wf, period)
    @calculate(f7wg, period)
    @calculate(f7wh, period)
    @calculate(f7wq, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["quaenv"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- f7wf)
    max2 = max(0, max1 .- f7wg)
    max3 = max(0, max2 .- f7wh)
    return period, (P["taux_wf"] .* min(f7wf, max0) .+ P["taux_wg"] .* min(f7wg, max1) .+ P["taux_wh"] .* min(f7wh, max2) .+ P["taux_wq"] .* min(f7wq, max3))
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de la qualité environnementale
    (cases 7WF, 7WG, 7WH, 7WK, 7WQ, 7SB, 7SC, 7SD, 7SE)
    2009
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7we, period)
    @calculate(f7wf, period)
    @calculate(f7wg, period)
    @calculate(f7wh, period)
    @calculate(f7wk, period)
    @calculate(f7wq, period)
    @calculate(f7sb, period)
    @calculate(f7sc, period)
    @calculate(f7sd, period)
    @calculate(f7se, period)
    @calculate(rfr, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["quaenv"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- f7wf)
    max2 = max(0, max1 .- f7se)
    max3 = max(0, max2 .- f7wk)
    max4 = max(0, max3 .- f7sd)
    max5 = max(0, max4 .- f7wg)
    max6 = max(0, max5 .- f7sc)
    max7 = max(0, max6 .- f7wh)
    max8 = max(0, max7 .- f7sb)
    return period, (!f7we | (rfr .< 45000)) .* (P["taux_wf"] .* min(f7wf, max0) .+ P["taux_se"] .* min(f7se, max1) .+ P["taux_wk"] .* min(f7wk, max2) .+ P["taux_sd"] .* min(f7sd, max3) .+ P["taux_wg"] .* min(f7wg, max4) .+ P["taux_sc"] .* min(f7sc, max5) .+ P["taux_wh"] .* min(f7wh, max6) .+ P["taux_sb"] .* min(f7sb, max7) .+ P["taux_wq"] .* min(f7wq, max8))
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de la qualité environnementale
    (cases 7WF, 7WH, 7WK, 7WQ, 7SB, 7SD, 7SE et 7SH)
    2010-2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(f7we, period)
    @calculate(f7wf, period)
    @calculate(f7wg, period)
    @calculate(f7wh, period)
    @calculate(f7wk, period)
    @calculate(f7wq, period)
    @calculate(f7sb, period)
    @calculate(f7sd, period)
    @calculate(f7se, period)
    @calculate(f7sh, period)
    @calculate(rfr, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["credits_impot"]["quaenv"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- f7wf)
    max2 = max(0, max1 .- f7se)
    max3 = max(0, max2 .- f7wk)
    max4 = max(0, max3 .- f7sd)
    max5 = max(0, max4 .- f7wh)
    max6 = max(0, max5 .- f7sb)
    max7 = max(0, max6 .- f7wq)
    return period, !f7wg .* (!f7we | (rfr .< 45000)) .* (P["taux_wf"] .* min(f7wf, max0) .+ P["taux_se"] .* min(f7se, max1) .+ P["taux_wk"] .* min(f7wk, max2) .+ P["taux_sd"] .* min(f7sd, max3) .+ P["taux_wh"] .* min(f7wh, max4) .+ P["taux_sb"] .* min(f7sb, max5) .+ P["taux_wq"] .* min(f7wq, max6) .+ P["taux_sh"] .* min(f7sh, max7))
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de la qualité environnementale
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7sd, period)
    @calculate(f7se, period)
    @calculate(f7sf, period)
    @calculate(f7sg, period)
    @calculate(f7sh, period)
    @calculate(f7si, period)
    @calculate(f7sj, period)
    @calculate(f7sk, period)
    @calculate(f7sl, period)
    @calculate(f7sm, period)
    @calculate(f7sn, period)
    @calculate(f7so, period)
    @calculate(f7sp, period)
    @calculate(f7sq, period)
    @calculate(f7sr, period)
    @calculate(f7ss, period)
    @calculate(f7tt, period)
    @calculate(f7tu, period)
    @calculate(f7tv, period)
    @calculate(f7tw, period)
    @calculate(f7tx, period)
    @calculate(f7ty, period)
    @calculate(f7st, period)
    @calculate(f7su, period)
    @calculate(f7sv, period)
    @calculate(f7sw, period)
    @calculate(f7sz, period)
    @calculate(f7wc, period)
    @calculate(f7we, period)
    @calculate(f7wg, period)
    @calculate(f7wh, period)
    @calculate(f7wk, period)
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(quaenv_bouquet, period)
    @calculate(rfr, period)
    P = legislation_at(simulation, period.start)["ir"]["credits_impot"]["quaenv"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    maxi1 = max(0, max0 .- f7ty)
    maxi2 = max(0, maxi1 .- f7tx)
    maxi3 = max(0, maxi2 .- f7tw)
    maxi4 = max(0, maxi3 .- f7tv)
    maxi5 = max(0, maxi4 .- f7tu)
    collectif = (P["taux_ty"] .* min(f7ty, max0) .+ P["taux_tx"] .* min(f7tx, maxi1) .+ P["taux_tw"] .* min(f7tw, maxi2) .+ P["taux_tv"] .* min(f7tv, maxi3) .+ P["taux_tu"] .* min(f7tu, maxi4) .+ P["taux_tt"] .* min(f7tt, maxi5))
    max1 = max(0, max0 .- quaenv_bouquet .* (f7ss .+ f7st) .- !quaenv_bouquet .* (f7ss .+ f7st .+ f7sv))
    max2 = max(0, max1 .- quaenv_bouquet .* (f7sn .+ f7sr .+ f7sq) .- !quaenv_bouquet .* (f7sn .+ f7sq .+ f7sr))
    max3 = max(0, max2 .- quaenv_bouquet .* f7sv .- !quaenv_bouquet .* f7se)
    max4 = (max(0, max3 .- quaenv_bouquet .* f7se .- !quaenv_bouquet .* (f7sf .+ f7sg .+ f7sh .+ f7si .+ f7so .+ f7su .+ f7sw .+ f7sp)))
    max5 = max(0, max4 .- quaenv_bouquet .* (f7sg .+ f7sh .+ f7so .+ f7sp) .- !quaenv_bouquet .* f7sm)
    max6 = max(0, max5 .- quaenv_bouquet .* (f7sd .+ f7sj))
    max7 = max(0, max6 .- quaenv_bouquet .* (f7sf .+ f7si .+ f7su .+ f7sw))
    max8 = max(0, max7 .- quaenv_bouquet .* f7sm)
    montant = (quaenv_bouquet .* (min(max8, P["taux10"] .* (f7sk .+ f7sl)) .+ min(max7, P["taux11"] .* f7sm) .+ min(max6, P["taux15"] .* (f7sf .+ f7si .+ f7su .+ f7sw)) .+ min(max5, P["taux18"] .* (f7sd .+ f7sj)) .+ min(max4, P["taux23"] .* (f7sg .+ f7sh .+ f7so .+ f7sp)) .+ min(max3, P["taux26"] .* f7se) .+ min(max2, P["taux32"] .* f7sv) .+ min(max1, P["taux34"] .* (f7sn .+ f7sr .+ f7sq)) .+ min(max0, P["taux40"] .* (f7ss .+ f7st))) .+ (!quaenv_bouquet .* (min(max0, P["taux32"] .* (f7ss .+ f7st .+ f7sv)) .+ min(max1, P["taux26"] .* (f7sn .+ f7sq .+ f7sr)) .+ min(max2, P["taux17"] .* f7se) .+ min(max3, P["taux15"] .* (f7sf .+ f7sg .+ f7sh .+ f7si .+ f7so .+ f7su .+ f7sw .+ f7sp)) .+ min(max4, P["taux11"] .* f7sm) .+ min(max5, P["taux10"] .* (f7sd .+ f7wk .* (f7sj .+ f7sk .+ f7sl))))))
    return period, !f7wg .* (!f7we | (rfr .< 30000)) .* (montant .+ collectif) .+ f7sz
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Crédits d’impôt pour dépenses en faveur de la qualité environnementale
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7sd, period)
    @calculate(f7se, period)
    @calculate(f7sf, period)
    @calculate(f7sg, period)
    @calculate(f7sh, period)
    @calculate(f7si, period)
    @calculate(f7sj, period)
    @calculate(f7sk, period)
    @calculate(f7sl, period)
    @calculate(f7sm, period)
    @calculate(f7sn, period)
    @calculate(f7so, period)
    @calculate(f7sp, period)
    @calculate(f7sq, period)
    @calculate(f7sr, period)
    @calculate(f7ss, period)
    @calculate(f7st, period)
    @calculate(f7su, period)
    @calculate(f7sv, period)
    @calculate(f7sw, period)
    @calculate(f7sz, period)
    @calculate(f7wc, period)
    @calculate(f7we, period)
    @calculate(f7wg, period)
    @calculate(f7wh, period)
    @calculate(f7wk, period)
    @calculate(marpac, period)
    @calculate(nb_pac2, period)
    @calculate(quaenv_bouquet, period)
    @calculate(rfr, period)
    P = legislation_at(simulation, period.start)["ir"]["credits_impot"]["quaenv"]
    max0 = P["max"] .* (1 .+ marpac) .+ P["pac1"] .* nb_pac2
    max1 = max(0, max0 .- quaenv_bouquet .* (f7ss .+ f7st) .- !quaenv_bouquet .* (f7ss .+ f7st .+ f7sv))
    max2 = max(0, max1 .- quaenv_bouquet .* (f7sn .+ f7sr .+ f7sq) .- !quaenv_bouquet .* (f7sn .+ f7sq .+ f7sr))
    max3 = max(0, max2 .- quaenv_bouquet .* f7sv .- !quaenv_bouquet .* f7se)
    max4 = (max(0, max3 .- quaenv_bouquet .* f7se .- !quaenv_bouquet .* (f7sf .+ f7sg .+ f7sh .+ f7si .+ f7so .+ f7su .+ f7sw .+ f7sp)))
    max5 = max(0, max4 .- quaenv_bouquet .* (f7sg .+ f7sh .+ f7so .+ f7sp) .- !quaenv_bouquet .* f7sm)
    max6 = max(0, max5 .- quaenv_bouquet .* (f7sd .+ f7sj))
    max7 = max(0, max6 .- quaenv_bouquet .* (f7sf .+ f7si .+ f7su .+ f7sw))
    max8 = max(0, max7 .- quaenv_bouquet .* f7sm)
    montant = (quaenv_bouquet .* (min(max8, P["taux10"] .* (f7sk .+ f7sl)) .+ min(max7, P["taux11"] .* f7sm) .+ min(max6, P["taux15"] .* (f7sf .+ f7si .+ f7su .+ f7sw)) .+ min(max5, P["taux18"] .* (f7sd .+ f7sj)) .+ min(max4, P["taux23"] .* (f7sg .+ f7sh .+ f7so .+ f7sp)) .+ min(max3, P["taux26"] .* f7se) .+ min(max2, P["taux32"] .* f7sv) .+ min(max1, P["taux34"] .* (f7sn .+ f7sr .+ f7sq)) .+ min(max0, P["taux40"] .* (f7ss .+ f7st))) .+ (!quaenv_bouquet .* (min(max0, P["taux32"] .* (f7ss .+ f7st .+ f7sv)) .+ min(max1, P["taux26"] .* (f7sn .+ f7sq .+ f7sr)) .+ min(max2, P["taux17"] .* f7se) .+ min(max3, P["taux15"] .* (f7sf .+ f7sg .+ f7sh .+ f7si .+ f7so .+ f7su .+ f7sw .+ f7sp)) .+ min(max4, P["taux11"] .* f7sm) .+ min(max5, P["taux10"] .* (f7sd .+ f7wk .* (f7sj .+ f7sk .+ f7sl))))))
    return period, (!(f7we | f7wg) | (rfr .< 30000)) .* montant .+ f7sz
  else
    return period, default_array(variable)
  end
end


@define_formula(quaenv_bouquet, foyer_fiscal_definition, Bool, requested_period_last_value,
  start_date = Date(2013, 1, 1),
) do simulation, variable, period
  """Les dépenses de travaux dépendent d'un bouquet de travaux
  2013
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7sd, period)
  @calculate(f7se, period)
  @calculate(f7sn, period)
  @calculate(f7so, period)
  @calculate(f7sp, period)
  @calculate(f7sq, period)
  @calculate(f7sr, period)
  @calculate(f7ss, period)
  @calculate(f7st, period)
  @calculate(f7ve, period)
  @calculate(f7vf, period)
  @calculate(f7vg, period)
  @calculate(f7wa, period)
  @calculate(f7wb, period)
  @calculate(f7wc, period)
  @calculate(f7wf, period)
  @calculate(f7wh, period)
  @calculate(f7wq, period)
  @calculate(f7ws, period)
  @calculate(f7wt, period)
  t1 = ((((f7wt .* f7ws) .!= 0) | f7wq) | f7wf)
  t2 = (((f7wc .* f7wb) .!= 0) | (f7wa .!= 0))
  t3 = (((f7vg .* f7vf) .!= 0) | (f7ve .!= 0))
  t4 = ((f7sn .> 0) | (f7so .> 0))
  t5 = ((f7sr .> 0) | (f7ss .> 0))
  t6 = ((((f7st .> 0) | (f7sp .> 0)) | ((f7sq .> 0) | (f7sd .> 0))) | (f7se .> 0))
  bouquet = (t1 .+ t2 .+ t3 .+ t4 .+ t5 .+ t6 .> 1)
  return period, (bouquet | f7wh)
end


@define_formula(saldom2, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2007, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Crédit d’impôt emploi d’un salarié à domicile (cases 7DB, 7DG)
    2007-2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(nb_pac2, period)
    @calculate(f7db, period)
    @calculate(f7dg, period)
    @calculate(f7dl, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["reductions_impots"]["saldom"]
    isinvalid = f7dg
    nbpacmin = nb_pac2 .+ f7dl
    maxBase = P["max1"]
    maxDuMaxNonInv = P["max2"]
    maxNonInv = min(maxBase .+ P["pac"] .* nbpacmin, maxDuMaxNonInv)
    maxEffectif = maxNonInv .* !isinvalid .+ P["max3"] .* isinvalid
    return period, P["taux"] .* min(f7db, maxEffectif)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Crédit d’impôt emploi d’un salarié à domicile (cases 7DB, 7DG)
    2009-2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(nb_pac2, period)
    @calculate(f7db, period)
    @calculate(f7dg, period)
    @calculate(f7dl, period)
    @calculate(f7dq, period)
    _P = legislation_at(simulation, period.start)
    P = _P["ir"]["reductions_impots"]["saldom"]
    isinvalid = f7dg
    annee1 = f7dq
    nbpacmin = nb_pac2 .+ f7dl
    maxBase = P["max1"] .* !annee1 .+ P["max1_1ereAnnee"] .* annee1
    maxDuMaxNonInv = P["max2"] .* !annee1 .+ P["max2_1ereAnnee"] .* annee1
    maxNonInv = min(maxBase .+ P["pac"] .* nbpacmin, maxDuMaxNonInv)
    maxEffectif = maxNonInv .* !isinvalid .+ P["max3"] .* isinvalid
    return period, P["taux"] .* min(f7db, maxEffectif)
  else
    return period, default_array(variable)
  end
end
