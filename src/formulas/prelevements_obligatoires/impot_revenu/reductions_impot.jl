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


@define_formula(adhcga, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Frais de comptabilité et d'adhésion à un CGA ou AA
  2002-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7ff, period)
  @calculate(f7fg, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["adhcga"]
  return period, min(f7ff, P["max"] .* f7fg)
end


@define_formula(assvie, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2004, 12, 31),
) do simulation, variable, period
  """Assurance-vie (cases GW, GX et GY de la 2042)
  2002-2004
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nb_pac, period)
  @calculate(f7gw, period)
  @calculate(f7gx, period)
  @calculate(f7gy, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["assvie"]
  max1 = P["max"] .+ nb_pac .* P["pac"]
  return period, P["taux"] .* min(f7gw .+ f7gx .+ f7gy, max1)
end


@define_formula(cappme, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    """Souscriptions au capital des PME
    2002
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cf
    seuil = P["seuil"] .* (marpac .+ 1)
    return period, P["taux"] .* min(base, seuil)
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2003, 12, 31)
    """Souscriptions au capital des PME
    2003
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cf .+ f7cl
    seuil = P["seuil"] .* (marpac .+ 1)
    return period, P["taux"] .* min(base, seuil)
  elseif Date(2004, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    """Souscriptions au capital des PME
    2004
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    @calculate(f7cm, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cf .+ f7cl .+ f7cm
    seuil = P["seuil"] .* (marpac .+ 1)
    return period, P["taux"] .* min(base, seuil)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Souscriptions au capital des PME
    2005-2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    @calculate(f7cm, period)
    @calculate(f7cn, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cf .+ f7cl .+ f7cm .+ f7cn
    seuil = P["seuil"] .* (marpac .+ 1)
    return period, P["taux"] .* min(base, seuil)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Souscriptions au capital des PME
    2009-2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    @calculate(f7cm, period)
    @calculate(f7cn, period)
    @calculate(f7cu, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cf .+ f7cl .+ f7cm .+ f7cn .+ f7cu
    seuil = P["seuil"] .* (marpac .+ 1)
    seuil = P["seuil_tpe"] .* (marpac .+ 1) .* (f7cu .> 0) .+ P["seuil"] .* (marpac .+ 1) .* (f7cu .<= 0)
    return period, P["taux"] .* min(base, seuil)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Souscriptions au capital des PME
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    @calculate(f7cm, period)
    @calculate(f7cn, period)
    @calculate(f7cq, period)
    @calculate(f7cu, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cl .+ f7cm .+ f7cn .+ f7cq
    seuil = P["seuil_tpe"] .* (marpac .+ 1) .* (f7cu .> 0) .+ P["seuil"] .* (marpac .+ 1) .* (f7cu .<= 0)
    max0 = max(seuil .- base, 0)
    return period, max(P["taux25"] .* min(base, seuil), P["taux"] .* min(max0, f7cf .+ f7cu))
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Souscriptions au capital des PME
    2012 cf. 2041 GR
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    @calculate(f7cm, period)
    @calculate(f7cn, period)
    @calculate(f7cq, period)
    @calculate(f7cu, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cl .+ f7cm .+ f7cn
    seuil1 = P["seuil"] .* (marpac .+ 1)
    seuil2 = max(0, P["seuil_tpe"] .* (marpac .+ 1) .- min(base, seuil1) .- min(f7cq, seuil1) .- min(f7cu, seuil1))
    seuil3 = min(P["seuil_tpe"] .* (marpac .+ 1) .- min(base, seuil1) .- min(f7cq, seuil1), seuil1)
    return period, P["taux25"] .* min(base, seuil1) .+ P["taux"] .* min(f7cq, seuil1) .+ P["taux18"] .* (min(f7cf, seuil3) .+ mini(f7cu, seuil2, seuil1))
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Souscriptions au capital des PME
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7cc, period)
    @calculate(f7cf, period)
    @calculate(f7cl, period)
    @calculate(f7cm, period)
    @calculate(f7cn, period)
    @calculate(f7cq, period)
    @calculate(f7cu, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cappme"]
    base = f7cl .+ f7cm
    seuil1 = P["seuil"] .* (marpac .+ 1)
    seuil2 = max(0, P["seuil_tpe"] .* (marpac .+ 1) .- min(base, seuil1) .- min(f7cn, seuil1) .- min(f7cu, seuil1))
    seuil3 = min(P["seuil_tpe"] .* (marpac .+ 1) .- min(base, seuil1) .- min(f7cq, seuil1), seuil1)
    return period, P["taux25"] .* min(base, seuil1) .+ P["taux22"] .* min(f7cn, seuil1) .+ P["taux18"] .* (min(f7cf .+ f7cc, seuil3) .+ min(f7cu .+ f7cq, seuil2))
  else
    return period, default_array(variable)
  end
end


@define_formula(cotsyn, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Cotisations syndicales (2002-20131"
  period = YearPeriod(firstdayofmonth(period.start))
  f7ac_holder = calculate(simulation, "f7ac", period)
  sal_holder = calculate(simulation, "sal", period)
  cho_holder = calculate(simulation, "cho", period)
  rst_holder = calculate(simulation, "rst", period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["cotsyn"]
  f7ac = single_person_in_entity(f7ac_holder, get_entity(variable), period, VOUS)
  f7ae = single_person_in_entity(f7ac_holder, get_entity(variable), period, CONJ)
  f7ag = single_person_in_entity(f7ac_holder, get_entity(variable), period, PAC1)
  cho = split_person_by_role(cho_holder, get_entity(variable), period)
  rst = split_person_by_role(rst_holder, get_entity(variable), period)
  sal = split_person_by_role(sal_holder, get_entity(variable), period)
  tx = P["seuil"]
  salv, salc, salp = sal[VOUS], sal[CONJ], sal[PAC1]
  chov, choc, chop = cho[VOUS], cho[CONJ], cho[PAC1]
  rstv, rstc, rstp = rst[VOUS], rst[CONJ], rst[PAC1]
  maxv = (salv .+ chov .+ rstv) .* tx
  maxc = (salc .+ choc .+ rstc) .* tx
  maxp = (salp .+ chop .+ rstp) .* tx
  return period, P["taux"] .* (min(f7ac, maxv) .+ min(f7ae, maxc) .+ min(f7ag, maxp))
end


@define_formula(creaen, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Aide aux créateurs et repreneurs d'entreprises
    2006-2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7fy, period)
    @calculate(f7gy, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["creaen"]
    return period, (P["base"] .* f7fy .+ P["hand"] .* f7gy)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Aide aux créateurs et repreneurs d'entreprises
    2009
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7fy, period)
    @calculate(f7gy, period)
    @calculate(f7jy, period)
    @calculate(f7hy, period)
    @calculate(f7ky, period)
    @calculate(f7iy, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["creaen"]
    return period, (P["base"] .* ((f7jy .+ f7fy) .+ f7hy ./ 2) .+ P["hand"] .* ((f7ky .+ f7gy) .+ f7iy ./ 2))
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Aide aux créateurs et repreneurs d'entreprises
    2010-2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7fy, period)
    @calculate(f7gy, period)
    @calculate(f7jy, period)
    @calculate(f7hy, period)
    @calculate(f7ky, period)
    @calculate(f7iy, period)
    @calculate(f7ly, period)
    @calculate(f7my, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["creaen"]
    return period, (P["base"] .* ((f7jy .+ f7fy) .+ (f7hy .+ f7ly) ./ 2) .+ P["hand"] .* ((f7ky .+ f7gy) .+ (f7iy .+ f7my) ./ 2))
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2014, 12, 31)
    """Aide aux créateurs et repreneurs d'entreprises
    2012-
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ly, period)
    @calculate(f7my, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["creaen"]
    return period, (P["base"] .* (f7ly ./ 2) .+ P["hand"] .* (f7my ./ 2))
  else
    return period, default_array(variable)
  end
end


@define_formula(daepad, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Dépenses d'accueil dans un établissement pour personnes âgées dépendantes
  ?-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7cd, period)
  @calculate(f7ce, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["daepad"]
  return period, P["taux"] .* (min(f7cd, P["max"]) .+ min(f7ce, P["max"]))
end


@define_formula(deffor, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
) do simulation, variable, period
  """Défense des forêts contre l'incendie
  2006-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7uc, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["deffor"]
  return period, P["taux"] .* min(f7uc, P["max"])
end


@define_formula(dfppce, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2003, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2004, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf .+ f7xs
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf .+ f7xs .+ f7xt
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    @calculate(f7xu, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf .+ f7xs .+ f7xt .+ f7xu
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    @calculate(f7xu, period)
    @calculate(f7xw, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf .+ f7xs .+ f7xt .+ f7xu .+ f7xw
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    @calculate(f7xu, period)
    @calculate(f7xw, period)
    @calculate(f7xy, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf .+ f7xs .+ f7xt .+ f7xu .+ f7xw .+ f7xy
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales (2011-2013)
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    @calculate(f7xu, period)
    @calculate(f7xw, period)
    @calculate(f7xy, period)
    @calculate(f7vc, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = f7uf .+ f7vc .+ f7xs .+ f7xt .+ f7xu .+ f7xw .+ f7xy
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales (2011-2013)
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    @calculate(f7xu, period)
    @calculate(f7xw, period)
    @calculate(f7xy, period)
    @calculate(f7vc, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = min(P["max_niv"], f7uf) .+ f7vc .+ f7xs .+ f7xt .+ f7xu .+ f7xw .+ f7xy
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Dons aux autres oeuvres et dons effectués pour le financement des partis
    politiques et des campagnes électorales (2011-2013)
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rbg_int, period)
    @calculate(f7uf, period)
    @calculate(f7uh, period)
    @calculate(f7xs, period)
    @calculate(f7xt, period)
    @calculate(f7xu, period)
    @calculate(f7xw, period)
    @calculate(f7xy, period)
    @calculate(f7vc, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["dfppce"]
    base = min(P["max_niv"], f7uf .+ f7uh) .+ f7vc .+ f7xs .+ f7xt .+ f7xu .+ f7xw .+ f7xy
    max1 = P["max"] .* rbg_int
    return period, P["taux"] .* min(base, max1)
  else
    return period, default_array(variable)
  end
end


@define_formula(doment, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2005, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ur, period)
    @calculate(f7oz, period)
    @calculate(f7pz, period)
    @calculate(f7qz, period)
    @calculate(f7rz, period)
    return period, f7ur .+ f7oz .+ f7pz .+ f7qz .+ f7rz
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ur, period)
    @calculate(f7oz, period)
    @calculate(f7pz, period)
    @calculate(f7qz, period)
    @calculate(f7rz, period)
    @calculate(f7sz, period)
    return period, f7ur .+ f7oz .+ f7pz .+ f7qz .+ f7rz .+ f7sz
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7oz, period)
    @calculate(f7pz, period)
    @calculate(f7qz, period)
    @calculate(f7rz, period)
    @calculate(f7sz, period)
    @calculate(f7qe, period)
    @calculate(f7qf, period)
    @calculate(f7qg, period)
    @calculate(f7qh, period)
    @calculate(f7qi, period)
    @calculate(f7qj, period)
    return period, f7oz .+ f7pz .+ f7qz .+ f7rz .+ f7sz .+ f7qe .+ f7qf .+ f7qg .+ f7qh .+ f7qi .+ f7qj
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7oz, period)
    @calculate(f7pz, period)
    @calculate(f7qz, period)
    @calculate(f7rz, period)
    @calculate(f7qe, period)
    @calculate(f7qf, period)
    @calculate(f7qg, period)
    @calculate(f7qh, period)
    @calculate(f7qi, period)
    @calculate(f7qj, period)
    @calculate(f7qo, period)
    @calculate(f7qp, period)
    @calculate(f7qq, period)
    @calculate(f7qr, period)
    @calculate(f7qs, period)
    @calculate(f7mm, period)
    @calculate(f7ma, period)
    @calculate(f7lg, period)
    @calculate(f7ks, period)
    @calculate(f7ls, period)
    return period, (f7oz .+ f7pz .+ f7qz .+ f7rz .+ f7qe .+ f7qf .+ f7qg .+ f7qh .+ f7qi .+ f7qj .+ f7qo .+ f7qp .+ f7qq .+ f7qr .+ f7qs .+ f7mm .+ f7ma .+ f7lg .+ f7ks .+ f7ls)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ks, period)
    @calculate(f7kt, period)
    @calculate(f7ku, period)
    @calculate(f7lg, period)
    @calculate(f7lh, period)
    @calculate(f7li, period)
    @calculate(f7mm, period)
    @calculate(f7ma, period)
    @calculate(f7mb, period)
    @calculate(f7mc, period)
    @calculate(f7mn, period)
    @calculate(f7oz, period)
    @calculate(f7pa, period)
    @calculate(f7pb, period)
    @calculate(f7pd, period)
    @calculate(f7pe, period)
    @calculate(f7pf, period)
    @calculate(f7ph, period)
    @calculate(f7pi, period)
    @calculate(f7pj, period)
    @calculate(f7pl, period)
    @calculate(f7pz, period)
    @calculate(f7qz, period)
    @calculate(f7qe, period)
    @calculate(f7qf, period)
    @calculate(f7qg, period)
    @calculate(f7qh, period)
    @calculate(f7qi, period)
    @calculate(f7qo, period)
    @calculate(f7qp, period)
    @calculate(f7qq, period)
    @calculate(f7qr, period)
    @calculate(f7qv, period)
    return period, (f7ks .+ f7kt .+ f7ku .+ f7lg .+ f7lh .+ f7li .+ f7mb .+ f7mn .+ f7mc .+ f7mm .+ f7ma .+ f7oz .+ f7pa .+ f7pb .+ f7pd .+ f7pe .+ f7pf .+ f7ph .+ f7pi .+ f7pj .+ f7pl .+ f7pz .+ f7qz .+ f7qf .+ f7qg .+ f7qh .+ f7qi .+ f7qo .+ f7qp .+ f7qq .+ f7qr .+ f7qe .+ f7qv)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ks, period)
    @calculate(f7kt, period)
    @calculate(f7ku, period)
    @calculate(f7lg, period)
    @calculate(f7lh, period)
    @calculate(f7li, period)
    @calculate(f7ma, period)
    @calculate(f7mb, period)
    @calculate(f7mc, period)
    @calculate(f7mm, period)
    @calculate(f7mn, period)
    @calculate(f7nu, period)
    @calculate(f7nv, period)
    @calculate(f7nw, period)
    @calculate(f7ny, period)
    @calculate(f7pa, period)
    @calculate(f7pb, period)
    @calculate(f7pd, period)
    @calculate(f7pe, period)
    @calculate(f7pf, period)
    @calculate(f7ph, period)
    @calculate(f7pi, period)
    @calculate(f7pj, period)
    @calculate(f7pl, period)
    @calculate(f7pm, period)
    @calculate(f7pn, period)
    @calculate(f7po, period)
    @calculate(f7pp, period)
    @calculate(f7pr, period)
    @calculate(f7ps, period)
    @calculate(f7pt, period)
    @calculate(f7pu, period)
    @calculate(f7pw, period)
    @calculate(f7px, period)
    @calculate(f7py, period)
    @calculate(f7pz, period)
    @calculate(f7qe, period)
    @calculate(f7qf, period)
    @calculate(f7qg, period)
    @calculate(f7qi, period)
    @calculate(f7qo, period)
    @calculate(f7qp, period)
    @calculate(f7qr, period)
    @calculate(f7qv, period)
    @calculate(f7qz, period)
    @calculate(f7rg, period)
    @calculate(f7ri, period)
    @calculate(f7rj, period)
    @calculate(f7rk, period)
    @calculate(f7rl, period)
    @calculate(f7rm, period)
    @calculate(f7ro, period)
    @calculate(f7rp, period)
    @calculate(f7rq, period)
    @calculate(f7rr, period)
    @calculate(f7rt, period)
    @calculate(f7ru, period)
    @calculate(f7rv, period)
    @calculate(f7rw, period)
    @calculate(f7rx, period)
    @calculate(f7ry, period)
    return period, (f7ks .+ f7kt .+ f7ku .+ f7lg .+ f7lh .+ f7li .+ f7ma .+ f7mb .+ f7mc .+ f7mm .+ f7mn .+ f7pz .+ f7nu .+ f7nv .+ f7nw .+ f7ny .+ f7pa .+ f7pb .+ f7pd .+ f7pe .+ f7pf .+ f7ph .+ f7pi .+ f7pj .+ f7pl .+ f7pm .+ f7pn .+ f7po .+ f7pp .+ f7pr .+ f7ps .+ f7pt .+ f7pu .+ f7pw .+ f7px .+ f7py .+ f7qe .+ f7qf .+ f7qg .+ f7qi .+ f7qo .+ f7qp .+ f7qr .+ f7qv .+ f7qz .+ f7rg .+ f7ri .+ f7rj .+ f7rk .+ f7rl .+ f7rm .+ f7ro .+ f7rp .+ f7rq .+ f7rr .+ f7rt .+ f7ru .+ f7rv .+ f7rw)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Investissements dans les DOM-TOM dans le cadre d'une entrepise."
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(fhsa, period)
    @calculate(fhsb, period)
    @calculate(fhsf, period)
    @calculate(fhsg, period)
    @calculate(fhsc, period)
    @calculate(fhsh, period)
    @calculate(fhse, period)
    @calculate(fhsj, period)
    @calculate(fhsk, period)
    @calculate(fhsl, period)
    @calculate(fhsp, period)
    @calculate(fhsq, period)
    @calculate(fhsm, period)
    @calculate(fhsr, period)
    @calculate(fhso, period)
    @calculate(fhst, period)
    @calculate(fhsu, period)
    @calculate(fhsv, period)
    @calculate(fhsw, period)
    @calculate(fhsz, period)
    @calculate(fhta, period)
    @calculate(fhtb, period)
    @calculate(fhtd, period)
    @calculate(f7ks, period)
    @calculate(f7kt, period)
    @calculate(f7ku, period)
    @calculate(f7lg, period)
    @calculate(f7lh, period)
    @calculate(f7li, period)
    @calculate(f7ma, period)
    @calculate(f7mb, period)
    @calculate(f7mc, period)
    @calculate(f7mm, period)
    @calculate(f7mn, period)
    @calculate(f7nu, period)
    @calculate(f7nv, period)
    @calculate(f7nw, period)
    @calculate(f7ny, period)
    @calculate(f7pa, period)
    @calculate(f7pb, period)
    @calculate(f7pd, period)
    @calculate(f7pe, period)
    @calculate(f7pf, period)
    @calculate(f7ph, period)
    @calculate(f7pi, period)
    @calculate(f7pj, period)
    @calculate(f7pl, period)
    @calculate(f7pm, period)
    @calculate(f7pn, period)
    @calculate(f7po, period)
    @calculate(f7pp, period)
    @calculate(f7pr, period)
    @calculate(f7ps, period)
    @calculate(f7pt, period)
    @calculate(f7pu, period)
    @calculate(f7pw, period)
    @calculate(f7px, period)
    @calculate(f7py, period)
    @calculate(f7qe, period)
    @calculate(f7qf, period)
    @calculate(f7qg, period)
    @calculate(f7qi, period)
    @calculate(f7qo, period)
    @calculate(f7qp, period)
    @calculate(f7qr, period)
    @calculate(f7qv, period)
    @calculate(f7qz, period)
    @calculate(f7rg, period)
    @calculate(f7ri, period)
    @calculate(f7rj, period)
    @calculate(f7rk, period)
    @calculate(f7rl, period)
    @calculate(f7rm, period)
    @calculate(f7ro, period)
    @calculate(f7rp, period)
    @calculate(f7rq, period)
    @calculate(f7rr, period)
    @calculate(f7rt, period)
    @calculate(f7ru, period)
    @calculate(f7rv, period)
    @calculate(f7rw, period)
    @calculate(f7ry, period)
    return period, (fhsa .+ fhsb .+ fhsf .+ fhsg .+ fhsc .+ fhsh .+ fhse .+ fhsj .+ fhsk .+ fhsl .+ fhsp .+ fhsq .+ fhsm .+ fhsr .+ fhso .+ fhst .+ fhsu .+ fhsv .+ fhsw .+ fhsz .+ fhta .+ fhtb .+ fhtd .+ f7ks .+ f7kt .+ f7ku .+ f7lg .+ f7lh .+ f7li .+ f7ma .+ f7mb .+ f7mc .+ f7mm .+ f7mn .+ f7nu .+ f7nv .+ f7nw .+ f7ny .+ f7pa .+ f7pb .+ f7pd .+ f7pe .+ f7pf .+ f7ph .+ f7pi .+ f7pj .+ f7pl .+ f7pm .+ f7pn .+ f7po .+ f7pp .+ f7pr .+ f7ps .+ f7pt .+ f7pu .+ f7pw .+ f7px .+ f7py .+ f7qe .+ f7qf .+ f7qg .+ f7qi .+ f7qo .+ f7qp .+ f7qr .+ f7qv .+ f7qz .+ f7rg .+ f7ri .+ f7rj .+ f7rk .+ f7rl .+ f7rm .+ f7ro .+ f7rp .+ f7rq .+ f7rr .+ f7rt .+ f7ru .+ f7rv .+ f7rw)
  else
    return period, default_array(variable)
  end
end


@define_formula(domlog, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2002
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ua, period)
    @calculate(f7ub, period)
    @calculate(f7uc, period)
    @calculate(f7uj, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["domlog"]
    return period, P["taux1"] .* f7uj .+ P["taux2"] .* (f7ua .+ f7ub .+ f7uc)
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2003-2004
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ua, period)
    @calculate(f7ub, period)
    @calculate(f7uc, period)
    @calculate(f7ui, period)
    @calculate(f7uj, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["domlog"]
    return period, P["taux1"] .* f7uj .+ P["taux2"] .* (f7ua .+ f7ub .+ f7uc) .+ f7ui
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2005-2007
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ua, period)
    @calculate(f7ub, period)
    @calculate(f7uc, period)
    @calculate(f7ui, period)
    @calculate(f7uj, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["domlog"]
    return period, P["taux1"] .* f7uj .+ P["taux2"] .* (f7ua .+ f7ub) .+ f7ui
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ui, period)
    return period, f7ui
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2009
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7qb, period)
    @calculate(f7qc, period)
    @calculate(f7qd, period)
    @calculate(f7qk, period)
    return period, f7qb .+ f7qc .+ f7qd .+ f7qk ./ 2
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2010
    TODO: Plafonnement sur la notice
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7qb, period)
    @calculate(f7qc, period)
    @calculate(f7qd, period)
    @calculate(f7ql, period)
    @calculate(f7qt, period)
    @calculate(f7qm, period)
    return period, f7qb .+ f7qc .+ f7qd .+ f7ql .+ f7qt .+ f7qm
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2011
    TODO: Plafonnement sur la notice
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7qb, period)
    @calculate(f7qc, period)
    @calculate(f7qd, period)
    @calculate(f7ql, period)
    @calculate(f7qm, period)
    @calculate(f7qt, period)
    @calculate(f7oa, period)
    @calculate(f7ob, period)
    @calculate(f7oc, period)
    @calculate(f7oh, period)
    @calculate(f7oi, period)
    @calculate(f7oj, period)
    @calculate(f7ok, period)
    return period, f7qb .+ f7qc .+ f7qd .+ f7ql .+ f7qm .+ f7qt .+ f7oa .+ f7ob .+ f7oc .+ f7oh .+ f7oi .+ f7oj .+ f7ok
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2012
    TODO: Plafonnement sur la notice
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7qb, period)
    @calculate(f7qc, period)
    @calculate(f7qd, period)
    @calculate(f7ql, period)
    @calculate(f7qm, period)
    @calculate(f7qt, period)
    @calculate(f7oa, period)
    @calculate(f7ob, period)
    @calculate(f7oc, period)
    @calculate(f7oh, period)
    @calculate(f7oi, period)
    @calculate(f7oj, period)
    @calculate(f7ok, period)
    @calculate(f7ol, period)
    @calculate(f7om, period)
    @calculate(f7on, period)
    @calculate(f7oo, period)
    @calculate(f7op, period)
    @calculate(f7oq, period)
    @calculate(f7or, period)
    @calculate(f7os, period)
    @calculate(f7ot, period)
    @calculate(f7ou, period)
    @calculate(f7ov, period)
    @calculate(f7ow, period)
    return period, (f7qb .+ f7qc .+ f7qd .+ f7ql .+ f7qm .+ f7qt .+ f7oa .+ f7ob .+ f7oc .+ f7oh .+ f7oi .+ f7oj .+ f7ok .+ f7ol .+ f7om .+ f7on .+ f7oo .+ f7op .+ f7oq .+ f7or .+ f7os .+ f7ot .+ f7ou .+ f7ov .+ f7ow)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Investissements OUTRE-MER dans le secteur du logement et autres secteurs d’activité
    2013
    TODO: Plafonnement sur la notice
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(fhod, period)
    @calculate(fhoe, period)
    @calculate(fhof, period)
    @calculate(fhog, period)
    @calculate(fhox, period)
    @calculate(fhoy, period)
    @calculate(fhoz, period)
    @calculate(f7qb, period)
    @calculate(f7qc, period)
    @calculate(f7qd, period)
    @calculate(f7ql, period)
    @calculate(f7qm, period)
    @calculate(f7qt, period)
    @calculate(f7oa, period)
    @calculate(f7ob, period)
    @calculate(f7oc, period)
    @calculate(f7oh, period)
    @calculate(f7oi, period)
    @calculate(f7oj, period)
    @calculate(f7ok, period)
    @calculate(f7ol, period)
    @calculate(f7om, period)
    @calculate(f7on, period)
    @calculate(f7oo, period)
    @calculate(f7op, period)
    @calculate(f7oq, period)
    @calculate(f7or, period)
    @calculate(f7os, period)
    @calculate(f7ot, period)
    @calculate(f7ou, period)
    @calculate(f7ov, period)
    @calculate(f7ow, period)
    return period, (f7qb .+ f7qc .+ f7qd .+ f7ql .+ f7qm .+ f7qt .+ f7oa .+ f7ob .+ f7oc .+ f7oh .+ f7oi .+ f7oj .+ f7ok .+ f7ol .+ f7om .+ f7on .+ f7oo .+ f7op .+ f7oq .+ f7or .+ f7os .+ f7ot .+ f7ou .+ f7ov .+ f7ow .+ fhod .+ fhoe .+ fhof .+ fhog .+ fhox .+ fhoy .+ fhoz)
  else
    return period, default_array(variable)
  end
end


@define_formula(domsoc, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2010, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Investissements outre-mer dans le logement social (déclaration n°2042 IOM)
    2010-
    TODO plafonnement à 15% f7qa / liens avec autres investissments ?
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7qn, period)
    @calculate(f7qk, period)
    @calculate(f7qu, period)
    @calculate(f7kg, period)
    @calculate(f7kh, period)
    @calculate(f7ki, period)
    @calculate(f7qj, period)
    @calculate(f7qs, period)
    @calculate(f7qw, period)
    @calculate(f7qx, period)
    return period, f7qn .+ f7qk .+ f7qu .+ f7kg .+ f7kh .+ f7ki .+ f7qj .+ f7qs .+ f7qw .+ f7qx
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Investissements outre-mer dans le logement social (déclaration n°2042 IOM)
    2013
    TODO plafonnement à 15% f7qa / liens avec autres investissments ?
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(fhra, period)
    @calculate(fhrb, period)
    @calculate(fhrc, period)
    @calculate(fhrd, period)
    @calculate(f7qn, period)
    @calculate(f7qk, period)
    @calculate(f7qu, period)
    @calculate(f7kg, period)
    @calculate(f7kh, period)
    @calculate(f7ki, period)
    @calculate(f7qj, period)
    @calculate(f7qs, period)
    @calculate(f7qw, period)
    @calculate(f7qx, period)
    return period, fhra .+ fhrb .+ fhrc .+ fhrd .+ f7qn .+ f7qk .+ f7qu .+ f7kg .+ f7kh .+ f7ki .+ f7qj .+ f7qs .+ f7qw .+ f7qx
  else
    return period, default_array(variable)
  end
end


@define_formula(donapd, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    "Dons effectués à  des organises d'aide aux personnes en difficulté (2002-2010)"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ud, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["donapd"]
    return period, P["taux"] .* min(f7ud, P["max"])
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Dons effectués à  des organises d'aide aux personnes en difficulté (2011-2013)"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ud, period)
    @calculate(f7va, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["donapd"]
    return period, P["taux"] .* min(f7ud .+ f7va, P["max"])
  else
    return period, default_array(variable)
  end
end


@define_formula(duflot, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2013, 1, 1),
) do simulation, variable, period
  """Investissements locatifs interméiaires (loi Duflot)
  2013-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7gh, period)
  @calculate(f7gi, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["duflot"]
  return period, min(P["plafond"], P["taux_m"] .* f7gh .+ P["taux_om"] .* f7gi) ./ 9
end


@define_formula(ecodev, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
) do simulation, variable, period
  """Sommes versées sur un compte épargne codéveloppement (case 7UH)
  2009
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7uh, period)
  @calculate(rbg_int, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["ecodev"]
  return period, min(f7uh .* P["taux"], min(P["base"] .* rbg_int, P["max"]))
end


@define_formula(ecpess, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Réduction d'impôt au titre des enfants à charge poursuivant leurs études secondaires ou supérieures"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7ea, period)
  @calculate(f7eb, period)
  @calculate(f7ec, period)
  @calculate(f7ed, period)
  @calculate(f7ef, period)
  @calculate(f7eg, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["ecpess"]
  return period, (P["col"] .* (f7ea .+ f7eb ./ 2) .+ P["lyc"] .* (f7ec .+ f7ed ./ 2) .+ P["sup"] .* (f7ef .+ f7eg ./ 2))
end


@define_formula(garext, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    """Frais de garde des enfants à l’extérieur du domicile (cases GA, GB, GC de la 2042)
    et GE, GF, GG
    2002
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ga, period)
    @calculate(f7gb, period)
    @calculate(f7gc, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["garext"]
    max1 = P["max"]
    return period, P["taux"] .* (min(f7ga, max1) .+ min(f7gb, max1) .+ min(f7gc, max1))
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Frais de garde des enfants à l’extérieur du domicile (cases GA, GB, GC de la 2042)
    et GE, GF, GG
    2003-2005
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ga, period)
    @calculate(f7gb, period)
    @calculate(f7gc, period)
    @calculate(f7ge, period)
    @calculate(f7gf, period)
    @calculate(f7gg, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["garext"]
    max1 = P["max"]
    max2 = P["max"] / 2
    return period, P["taux"] .* (min(f7ga, max1) .+ min(f7gb, max1) .+ min(f7gc, max1) .+ min(f7ge, max2) .+ min(f7gf, max2) .+ min(f7gg, max2))
  else
    return period, default_array(variable)
  end
end


@define_formula(intagr, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2005, 1, 1),
) do simulation, variable, period
  """Intérêts pour paiement différé accordé aux agriculteurs
  2005-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7um, period)
  @calculate(marpac, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["intagr"]
  max1 = P["max"] .* (1 .+ marpac)
  return period, P["taux"] .* min(f7um, max1)
end


@define_formula(intcon, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2004, 1, 1),
  stop_date = Date(2005, 12, 31),
) do simulation, variable, period
  """Intérêts des prêts à la consommation (case UH)
  2004-2005
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7uh, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["intcon"]
  max1 = P["max"]
  return period, P["taux"] .* min(f7uh, max1)
end


@define_formula(intemp, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2003, 12, 31),
) do simulation, variable, period
  """Intérêts d'emprunts
  2002-2003
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nb_pac, period)
  @calculate(f7wg, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["intemp"]
  max1 = P["max"] .+ P["pac"] .* nb_pac
  return period, P["taux"] .* min(f7wg, max1)
end


@define_formula(invfor, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Investissements forestiers pour 2002-2005"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7un, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    seuil = P["seuil"] .* (marpac .+ 1)
    return period, P["taux"] .* min(f7un, seuil)
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Investissements forestiers pour 2006-2008"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7un, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    return period, P["taux"] .* f7un
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    "Investissements forestiers pour 2009"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7un, period)
    @calculate(f7up, period)
    @calculate(f7uq, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    return period, P["taux"] .* (min(f7un, P["seuil"] .* (marpac .+ 1)) .+ min(f7up, P["ifortra_seuil"] .* (marpac .+ 1)) .+ min(f7uq, P["iforges_seuil"] .* (marpac .+ 1)))
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    "Investissements forestiers pour 2010"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7te, period)
    @calculate(f7un, period)
    @calculate(f7up, period)
    @calculate(f7uq, period)
    @calculate(f7uu, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    return period, (P["taux"] .* (min(f7un, P["seuil"] .* (marpac .+ 1)) .+ min(f7up .+ f7uu .+ f7te, P["ifortra_seuil"] .* (marpac .+ 1)) .+ min(f7uq, P["iforges_seuil"] .* (marpac .+ 1))))
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    "Investissements forestiers pour 2011 cf. 2041 GK"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7te, period)
    @calculate(f7tf, period)
    @calculate(f7ul, period)
    @calculate(f7un, period)
    @calculate(f7up, period)
    @calculate(f7uq, period)
    @calculate(f7uu, period)
    @calculate(f7uv, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    max0 = max(0, P["ifortra_seuil"] .* (marpac .+ 1) .- f7ul)
    max1 = max(0, max0 .- f7uu .+ f7te .+ f7uv .+ f7tf)
    return period, (P["taux"] .* (min(f7un, P["seuil"] .* (marpac .+ 1)) .+ min(f7up, max1) .+ min(f7uq, P["iforges_seuil"] .* (marpac .+ 1))) .+ P["report10"] .* min(f7uu .+ f7te .+ f7uv .+ f7tf, max0) .+ P["taux_ass"] .* min(f7ul, P["ifortra_seuil"] .* (marpac .+ 1)))
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Investissements forestiers pour 2012 cf. 2041 GK"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7te, period)
    @calculate(f7tf, period)
    @calculate(f7tg, period)
    @calculate(f7ul, period)
    @calculate(f7un, period)
    @calculate(f7up, period)
    @calculate(f7uq, period)
    @calculate(f7uu, period)
    @calculate(f7uv, period)
    @calculate(f7uw, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    max0 = max(0, P["ifortra_seuil"] .* (marpac .+ 1) .- f7ul)
    max1 = max(0, max0 .- f7uu .+ f7te .+ f7uv .+ f7tf)
    max2 = max(0, max1 .- f7tg .- f7uw)
    return period, (P["taux"] .* (min(f7un, P["seuil"] .* (marpac .+ 1)) .+ min(f7up, max2) .+ min(f7uq, P["iforges_seuil"] .* (marpac .+ 1))) .+ P["report10"] .* min(f7uu .+ f7te .+ f7uv .+ f7tf, max0) .+ P["report11"] .* min(f7tg .+ f7uw, max1) .+ P["taux_ass"] .* min(f7ul, P["ifortra_seuil"] .* (marpac .+ 1)))
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Investissements forestiers pour 2013 cf. 2041 GK"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7te, period)
    @calculate(f7tf, period)
    @calculate(f7tg, period)
    @calculate(f7th, period)
    @calculate(f7ul, period)
    @calculate(f7un, period)
    @calculate(f7up, period)
    @calculate(f7uq, period)
    @calculate(f7uu, period)
    @calculate(f7uv, period)
    @calculate(f7uw, period)
    @calculate(f7ux, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invfor"]
    max0 = max(0, P["ifortra_seuil"] .* (marpac .+ 1) .- f7ul)
    max1 = max(0, max0 .- f7uu .+ f7te .+ f7uv .+ f7tf)
    max2 = max(0, max1 .- f7tg .- f7uw)
    max3 = max(0, max2 .- f7th .- f7ux)
    return period, (P["taux"] .* (min(f7un, P["seuil"] .* (marpac .+ 1)) .+ min(f7up, max3) .+ min(f7uq, P["iforges_seuil"] .* (marpac .+ 1))) .+ P["report10"] .* min(f7uu .+ f7te .+ f7uv .+ f7tf, max0) .+ P["report11"] .* min(f7tg .+ f7uw, max1) .+ P["report12"] .* min(f7th .+ f7ux, max2) .+ P["taux_ass"] .* min(f7ul, P["ifortra_seuil"] .* (marpac .+ 1)))
  else
    return period, default_array(variable)
  end
end


@define_formula(invlst, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2004, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    """Investissements locatifs dans le secteur touristique
    2004
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7xc, period)
    @calculate(f7xd, period)
    @calculate(f7xe, period)
    @calculate(f7xf, period)
    @calculate(f7xg, period)
    @calculate(f7xh, period)
    @calculate(f7xi, period)
    @calculate(f7xj, period)
    @calculate(f7xk, period)
    @calculate(f7xl, period)
    @calculate(f7xm, period)
    @calculate(f7xn, period)
    @calculate(f7xo, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invlst"]
    seuil1 = P["seuil1"] .* (1 .+ marpac)
    seuil2 = P["seuil2"] .* (1 .+ marpac)
    seuil3 = P["seuil3"] .* (1 .+ marpac)
    xc = P["taux_xc"] .* min(f7xc, seuil1 ./ 4)
    xd = P["taux_xd"] .* f7xd
    xe = P["taux_xe"] .* min(f7xe, seuil1 ./ 6)
    xf = P["taux_xf"] .* f7xf
    xg = P["taux_xg"] .* min(f7xg, seuil2)
    xh = P["taux_xh"] .* min(f7xh, seuil3)
    xi = P["taux_xi"] .* min(f7xi, seuil1 ./ 4)
    xj = P["taux_xj"] .* f7xj
    xk = P["taux_xk"] .* f7xk
    xl = P["taux_xl"] .* min(f7xl, seuil1 ./ 6)
    xm = P["taux_xm"] .* f7xm
    xn = P["taux_xn"] .* min(f7xn, seuil1 ./ 6)
    xo = P["taux_xo"] .* f7xo
    return period, round(xc .+ xd .+ xe .+ xf .+ xg .+ xh .+ xi .+ xj .+ xk .+ xl .+ xm .+ xn .+ xo)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Investissements locatifs dans le secteur touristique
    2005-2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7xc, period)
    @calculate(f7xd, period)
    @calculate(f7xe, period)
    @calculate(f7xf, period)
    @calculate(f7xg, period)
    @calculate(f7xh, period)
    @calculate(f7xi, period)
    @calculate(f7xj, period)
    @calculate(f7xk, period)
    @calculate(f7xl, period)
    @calculate(f7xm, period)
    @calculate(f7xn, period)
    @calculate(f7xo, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invlst"]
    seuil1 = P["seuil1"] .* (1 .+ marpac)
    seuil2 = P["seuil2"] .* (1 .+ marpac)
    seuil3 = P["seuil3"] .* (1 .+ marpac)
    xc = P["taux_xc"] .* min(f7xc, seuil1 ./ 6)
    xd = P["taux_xd"] .* f7xd
    xe = P["taux_xe"] .* min(f7xe, seuil1 ./ 6)
    xf = P["taux_xf"] .* f7xf
    xg = P["taux_xg"] .* min(f7xg, seuil2)
    xh = P["taux_xh"] .* min(f7xh, seuil2 .- f7xg)
    xi = P["taux_xi"] .* f7xi
    xj = P["taux_xj"] .* f7xj
    xk = P["taux_xk"] .* f7xk
    xl = P["taux_xl"] .* min(f7xl, seuil1 ./ 6)
    xm = P["taux_xm"] .* f7xm
    xn = P["taux_xn"] .* min(f7xn, seuil1 ./ 6)
    xo = P["taux_xo"] .* f7xo
    return period, round(xc .+ xd .+ xe .+ xf .+ xg .+ xh .+ xi .+ xj .+ xk .+ xl .+ xm .+ xn .+ xo)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Investissements locatifs dans le secteur touristique
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7xa, period)
    @calculate(f7xb, period)
    @calculate(f7xc, period)
    @calculate(f7xd, period)
    @calculate(f7xe, period)
    @calculate(f7xf, period)
    @calculate(f7xg, period)
    @calculate(f7xh, period)
    @calculate(f7xi, period)
    @calculate(f7xj, period)
    @calculate(f7xk, period)
    @calculate(f7xl, period)
    @calculate(f7xm, period)
    @calculate(f7xn, period)
    @calculate(f7xo, period)
    @calculate(f7xp, period)
    @calculate(f7xq, period)
    @calculate(f7xr, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invlst"]
    seuil1 = P["seuil1"] .* (1 .+ marpac)
    seuil2 = P["seuil2"] .* (1 .+ marpac)
    seuil3 = P["seuil3"] .* (1 .+ marpac)
    xc = P["taux_xc"] .* min(f7xc, seuil1 ./ 6)
    xa = P["taux_xa"] .* min(f7xa, seuil2)
    xg = P["taux_xg"] .* min(f7xg, seuil2 .- f7xa)
    xb = P["taux_xb"] .* min(f7xb, seuil2 .- f7xa .- f7xg)
    xh = P["taux_xh"] .* min(f7xh, seuil2 .- f7xa .- f7xg .- f7xb)
    xi = P["taux_xi"] .* (f7xf .+ f7xi .+ f7xp)
    xj = P["taux_xj"] .* (f7xm .+ f7xj .+ f7xq)
    xl = P["taux_xl"] .* min(f7xl, seuil1 ./ 6)
    xo = P["taux_xo"] .* (f7xk .+ f7xo .+ f7xr)
    return period, round(xc .+ xa .+ xg .+ xb .+ xh .+ xi .+ xj .+ xl .+ xo)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Investissements locatifs dans le secteur touristique
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7xa, period)
    @calculate(f7xb, period)
    @calculate(f7xc, period)
    @calculate(f7xd, period)
    @calculate(f7xe, period)
    @calculate(f7xf, period)
    @calculate(f7xg, period)
    @calculate(f7xh, period)
    @calculate(f7xi, period)
    @calculate(f7xj, period)
    @calculate(f7xk, period)
    @calculate(f7xl, period)
    @calculate(f7xm, period)
    @calculate(f7xn, period)
    @calculate(f7xo, period)
    @calculate(f7xp, period)
    @calculate(f7xq, period)
    @calculate(f7xr, period)
    @calculate(f7xv, period)
    @calculate(f7xx, period)
    @calculate(f7xz, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invlst"]
    seuil1 = P["seuil1"] .* (1 .+ marpac)
    seuil2 = P["seuil2"] .* (1 .+ marpac)
    seuil3 = P["seuil3"] .* (1 .+ marpac)
    xc = P["taux_xc"] .* min(f7xc, seuil1 ./ 6)
    xa = P["taux_xa"] .* min(f7xa, seuil2)
    xg = P["taux_xg"] .* min(f7xg, seuil2 .- f7xa)
    xx = P["taux_xx"] .* min(f7xx, seuil2 .- f7xa .- f7xg)
    xb = P["taux_xb"] .* min(f7xb, seuil2 .- f7xa .- f7xg .- f7xx)
    xh = P["taux_xh"] .* min(f7xh, seuil2 .- f7xa .- f7xg .- f7xb .- f7xx)
    xz = P["taux_xz"] .* min(f7xz, seuil2 .- f7xa .- f7xg .- f7xb .- f7xx .- f7xh)
    xi = P["taux_xi"] .* (f7xf .+ f7xi .+ f7xp .+ f7xn)
    xj = P["taux_xj"] .* (f7xm .+ f7xj .+ f7xq .+ f7xv)
    xl = P["taux_xl"] .* min(f7xl, seuil1 ./ 6)
    xo = P["taux_xo"] .* (f7xk .+ f7xo .+ f7xr)
    return period, round(xc .+ xa .+ xg .+ xx .+ xb .+ xz .+ xh .+ xi .+ xj .+ xl .+ xo)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Investissements locatifs dans le secteur touristique
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7uy, period)
    @calculate(f7uz, period)
    @calculate(f7xf, period)
    @calculate(f7xi, period)
    @calculate(f7xj, period)
    @calculate(f7xk, period)
    @calculate(f7xm, period)
    @calculate(f7xn, period)
    @calculate(f7xo, period)
    @calculate(f7xp, period)
    @calculate(f7xq, period)
    @calculate(f7xr, period)
    @calculate(f7xv, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invlst"]
    xi = P["taux_xi"] .* (f7xf .+ f7xi .+ f7xp .+ f7xn .+ f7uy)
    xj = P["taux_xj"] .* (f7xm .+ f7xj .+ f7xq .+ f7xv .+ f7uz)
    xo = P["taux_xo"] .* (f7xk .+ f7xo .+ f7xr)
    return period, round(xi .+ xj .+ xo)
  else
    return period, default_array(variable)
  end
end


@define_formula(invrev, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2003, 12, 31),
) do simulation, variable, period
  """Investissements locatifs dans les résidences de tourisme situées dans une zone de
  revitalisation rurale (cases GS, GT, XG, GU et GV)
  2002-2003
  TODO 1/4 codé en dur
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(marpac, period)
  @calculate(f7gs, period)
  @calculate(f7gt, period)
  @calculate(f7xg, period)
  @calculate(f7gu, period)
  @calculate(f7gv, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["invrev"]
  return period, (P["taux_gs"] .* min(f7gs, P["seuil_gs"] .* (1 .+ marpac)) ./ 4 .+ P["taux_gu"] .* min(f7gu, P["seuil_gu"] .* (1 .+ marpac)) ./ 4 .+ P["taux_xg"] .* min(f7xg, P["seuil_xg"] .* (1 .+ marpac)) ./ 4 .+ P["taux_gt"] .* f7gt .+ P["taux_gt"] .* f7gv)
end


@define_formula(locmeu, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences
    2009
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ij, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["locmeu"]
    return period, P["taux"] .* min(P["max"], f7ij) ./ 9
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences
    2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ij, period)
    @calculate(f7ik, period)
    @calculate(f7il, period)
    @calculate(f7im, period)
    @calculate(f7is, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["locmeu"]
    return period, ((min(P["max"], max(f7ij, f7il)) .+ min(P["max"], f7im)) ./ 9 .+ f7ik) .* P["taux"] .+ f7is
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ij, period)
    @calculate(f7ik, period)
    @calculate(f7il, period)
    @calculate(f7im, period)
    @calculate(f7in, period)
    @calculate(f7io, period)
    @calculate(f7ip, period)
    @calculate(f7iq, period)
    @calculate(f7ir, period)
    @calculate(f7is, period)
    @calculate(f7it, period)
    @calculate(f7iu, period)
    @calculate(f7iv, period)
    @calculate(f7iw, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["locmeu"]
    m20 = (maxi(f7ij, f7il, f7in, f7iv) .== max(f7il, f7in))
    return period, ((min(P["max"], maxi(f7ij, f7il, f7in, f7iv)) .* (P["taux20"] .* m20 .+ P["taux18"] .* !m20) .+ P["taux"] .* (min(P["max"], max(f7im, f7iw)) .+ min(P["max"], f7io))) ./ 9 .+ P["taux"] .* max(f7ik, f7ip .+ f7ir .+ f7iq) .+ f7is .+ f7iu .+ f7it)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ia, period)
    @calculate(f7ib, period)
    @calculate(f7ic, period)
    @calculate(f7id, period)
    @calculate(f7ie, period)
    @calculate(f7if, period)
    @calculate(f7ig, period)
    @calculate(f7ih, period)
    @calculate(f7ij, period)
    @calculate(f7ik, period)
    @calculate(f7il, period)
    @calculate(f7im, period)
    @calculate(f7in, period)
    @calculate(f7io, period)
    @calculate(f7ip, period)
    @calculate(f7iq, period)
    @calculate(f7ir, period)
    @calculate(f7is, period)
    @calculate(f7it, period)
    @calculate(f7iu, period)
    @calculate(f7iv, period)
    @calculate(f7iw, period)
    @calculate(f7ix, period)
    @calculate(f7iz, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["locmeu"]
    m18 = (maxi(f7id, f7ie, f7if, f7ig) .== max(f7ie, f7if))
    m20 = (maxi(f7ij, f7il, f7in, f7iv) .== max(f7il, f7in))
    return period, ((min(P["max"], maxi(f7ij, f7il, f7in, f7iv)) .* (P["taux20"] .* m20 .+ P["taux18"] .* !m20) .+ min(P["max"], maxi(f7id, f7ie, f7if, f7ig)) .* (P["taux18"] .* m18 .+ P["taux11"] .* !m18) .+ P["taux"] .* (min(P["max"], max(f7im, f7iw)) .+ min(P["max"], f7io))) ./ 9 .+ P["taux"] .* max(f7ik .+ f7ip, f7ir .+ f7iq) .+ f7ia .+ f7ib .+ f7ic .+ f7ih .+ f7is .+ f7iu .+ f7it .+ f7ix .+ f7iz)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ia, period)
    @calculate(f7ib, period)
    @calculate(f7ic, period)
    @calculate(f7id, period)
    @calculate(f7ie, period)
    @calculate(f7if, period)
    @calculate(f7ig, period)
    @calculate(f7ih, period)
    @calculate(f7ij, period)
    @calculate(f7ik, period)
    @calculate(f7il, period)
    @calculate(f7im, period)
    @calculate(f7in, period)
    @calculate(f7io, period)
    @calculate(f7ip, period)
    @calculate(f7iq, period)
    @calculate(f7ir, period)
    @calculate(f7is, period)
    @calculate(f7it, period)
    @calculate(f7iu, period)
    @calculate(f7iv, period)
    @calculate(f7iw, period)
    @calculate(f7ix, period)
    @calculate(f7iy, period)
    @calculate(f7iz, period)
    @calculate(f7jc, period)
    @calculate(f7ji, period)
    @calculate(f7js, period)
    @calculate(f7jt, period)
    @calculate(f7ju, period)
    @calculate(f7jv, period)
    @calculate(f7jw, period)
    @calculate(f7jx, period)
    @calculate(f7jy, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["locmeu"]
    m18 = (maxi(f7id, f7ie, f7if, f7ig) .== max(f7ie, f7if))
    m20 = (maxi(f7ij, f7il, f7in, f7iv) .== max(f7il, f7in))
    return period, ((min(P["max"], maxi(f7ij, f7il, f7in, f7iv)) .* (P["taux20"] .* m20 .+ P["taux18"] .* !m20) .+ min(P["max"], maxi(f7id, f7ie, f7if, f7ig)) .* (P["taux18"] .* m18 .+ P["taux11"] .* !m18) .+ P["taux11"] .* min(P["max"], f7jt .+ f7ju) .+ P["taux"] .* (min(P["max"], max(f7im, f7iw)) .+ min(P["max"], f7io))) ./ 9 .+ P["taux"] .* max(f7ik .+ f7ip, f7ir .+ f7iq) .+ f7ia .+ f7ib .+ f7ic .+ f7ih .+ f7is .+ f7iu .+ f7it .+ f7ix .+ f7iy .+ f7iz .+ f7jv .+ f7jw .+ f7jx .+ f7jy .+ f7jc .+ f7ji .+ f7js)
  else
    return period, default_array(variable)
  end
end


function maxi(a, b, args...)
  if isempty(args)
    return max(a, b)
  else
    return max(a, maxi(b, args...))
  end
end


function mini(a, b, args...)
  if isempty(args)
    return min(a, b)
  else
    return min(a, mini(b, args...))
  end
end


@define_formula(mohist, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2008, 1, 1),
) do simulation, variable, period
  """Travaux de conservation et de restauration d’objets classés monuments historiques (case NZ)
  2008-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7nz, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["mohist"]
  return period, P["taux"] .* min(f7nz, P["max"])
end


@define_formula(patnat, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Dépenses de protections du patrimoine naturel (case 7KA)
    2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ka, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["patnat"]
    max1 = P["max"]
    return period, P["taux"] .* min(f7ka, max1)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Dépenses de protections du patrimoine naturel (case 7KA, 7KB)
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ka, period)
    @calculate(f7kb, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["patnat"]
    max1 = P["max"]
    return period, P["taux"] .* min(f7ka, max1) .+ f7kb
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Dépenses de protections du patrimoine naturel (case 7KA, 7KB, 7KC)
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ka, period)
    @calculate(f7kb, period)
    @calculate(f7kc, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["patnat"]
    max1 = P["max"]
    return period, P["taux"] .* min(f7ka, max1) .+ f7kb .+ f7kc
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Dépenses de protections du patrimoine naturel (case 7KA, 7KB, 7KC)
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ka, period)
    @calculate(f7kb, period)
    @calculate(f7kc, period)
    @calculate(f7kd, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["patnat"]
    max1 = P["max"]
    return period, P["taux"] .* min(f7ka, max1) .+ f7kb .+ f7kc .+ f7kd
  else
    return period, default_array(variable)
  end
end


@define_formula(prcomp, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Prestations compensatoires
  2002-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7wm, period)
  @calculate(f7wn, period)
  @calculate(f7wo, period)
  @calculate(f7wp, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["prcomp"]
  div = (f7wo .== 0) .* 1 .+ f7wo
  return period, ((f7wm .== 0) .* ((f7wn .== f7wo) .* P["taux"] .* min(f7wn, P["seuil"]) .+ (f7wn .< f7wo) .* (f7wo .<= P["seuil"]) .* P["taux"] .* f7wn .+ max(0, (f7wn .< f7wo) .* (f7wo .> P["seuil"]) .* P["taux"] .* P["seuil"] .* f7wn ./ div)) .+ (f7wm .!= 0) .* ((f7wn .== f7wm) .* (f7wo .<= P["seuil"]) .* P["taux"] .* f7wm .+ max(0, (f7wn .== f7wm) .* (f7wo .>= P["seuil"]) .* P["taux"] .* f7wm ./ div) .+ (f7wn .> f7wm) .* (f7wo .<= P["seuil"]) .* P["taux"] .* f7wn .+ max(0, (f7wn .> f7wm) .* (f7wo .>= P["seuil"]) .* P["taux"] .* f7wn ./ div)) .+ P["taux"] .* f7wp)
end


@define_formula(reductions, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2002"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(assvie, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(dfppce, period)
    @calculate(daepad, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(garext, period)
    @calculate(intemp, period)
    @calculate(invfor, period)
    @calculate(invrev, period)
    @calculate(ip_net, period)
    @calculate(prcomp, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ assvie .+ cappme .+ cotsyn .+ dfppce .+ daepad .+ doment .+ domlog .+ donapd .+ ecpess .+ garext .+ intemp .+ invfor .+ invrev .+ prcomp .+ rsceha .+ saldom .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2003 et 2004"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(assvie, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(dfppce, period)
    @calculate(daepad, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(garext, period)
    @calculate(intemp, period)
    @calculate(invfor, period)
    @calculate(invrev, period)
    @calculate(ip_net, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ assvie .+ cappme .+ cotsyn .+ dfppce .+ daepad .+ doment .+ domlog .+ donapd .+ ecpess .+ garext .+ intemp .+ invfor .+ invrev .+ prcomp .+ repsoc .+ rsceha .+ saldom .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2005"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(daepad, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(intcon, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ daepad .+ dfppce .+ doment .+ domlog .+ donapd .+ ecpess .+ intagr .+ intcon .+ invfor .+ invlst .+ prcomp .+ repsoc .+ rsceha .+ saldom .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2006"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(sofica, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ donapd .+ ecpess .+ intagr .+ invfor .+ invlst .+ prcomp .+ repsoc .+ rsceha .+ saldom .+ sofica .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2007"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(sofica, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ donapd .+ ecpess .+ intagr .+ invfor .+ invlst .+ prcomp .+ repsoc .+ rsceha .+ saldom .+ sofica .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2008"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(mohist, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(sofica, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ donapd .+ ecpess .+ intagr .+ invfor .+ invlst .+ mohist .+ prcomp .+ repsoc .+ rsceha .+ saldom .+ sofica .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2009"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(domsoc, period)
    @calculate(donapd, period)
    @calculate(ecodev, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(locmeu, period)
    @calculate(mohist, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(resimm, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(scelli, period)
    @calculate(sofica, period)
    @calculate(sofipe, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ domsoc .+ donapd .+ ecodev .+ ecpess .+ intagr .+ invfor .+ invlst .+ locmeu .+ mohist .+ prcomp .+ repsoc .+ resimm .+ rsceha .+ saldom .+ scelli .+ sofica .+ sofipe .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2010"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(domsoc, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(locmeu, period)
    @calculate(mohist, period)
    @calculate(patnat, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(resimm, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(scelli, period)
    @calculate(sofica, period)
    @calculate(sofipe, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ domsoc .+ donapd .+ ecpess .+ intagr .+ invfor .+ invlst .+ locmeu .+ mohist .+ patnat .+ prcomp .+ repsoc .+ resimm .+ rsceha .+ saldom .+ scelli .+ sofica .+ sofipe .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2011"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(cotsyn, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(domsoc, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(locmeu, period)
    @calculate(mohist, period)
    @calculate(patnat, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(resimm, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(scelli, period)
    @calculate(sofica, period)
    @calculate(sofipe, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ cotsyn .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ domsoc .+ donapd .+ ecpess .+ intagr .+ invfor .+ invlst .+ locmeu .+ mohist .+ patnat .+ prcomp .+ repsoc .+ resimm .+ rsceha .+ saldom .+ scelli .+ sofica .+ sofipe .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2012"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(domsoc, period)
    @calculate(donapd, period)
    @calculate(ecpess, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(locmeu, period)
    @calculate(mohist, period)
    @calculate(patnat, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(resimm, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(scelli, period)
    @calculate(sofica, period)
    @calculate(spfcpi, period)
    total_reductions = (adhcga .+ cappme .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ domsoc .+ donapd .+ ecpess .+ intagr .+ invfor .+ invlst .+ locmeu .+ mohist .+ patnat .+ prcomp .+ repsoc .+ resimm .+ rsceha .+ saldom .+ scelli .+ sofica .+ spfcpi)
    return period, min(ip_net, total_reductions)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Renvoie la somme des réductions d'impôt à intégrer pour l'année 2013"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(accult, period)
    @calculate(adhcga, period)
    @calculate(cappme, period)
    @calculate(creaen, period)
    @calculate(daepad, period)
    @calculate(deffor, period)
    @calculate(dfppce, period)
    @calculate(doment, period)
    @calculate(domlog, period)
    @calculate(donapd, period)
    @calculate(duflot, period)
    @calculate(ecpess, period)
    @calculate(garext, period)
    @calculate(intagr, period)
    @calculate(invfor, period)
    @calculate(invlst, period)
    @calculate(ip_net, period)
    @calculate(locmeu, period)
    @calculate(mecena, period)
    @calculate(mohist, period)
    @calculate(patnat, period)
    @calculate(prcomp, period)
    @calculate(repsoc, period)
    @calculate(resimm, period)
    @calculate(rsceha, period)
    @calculate(saldom, period)
    @calculate(scelli, period)
    @calculate(sofica, period)
    @calculate(spfcpi, period)
    total_reductions = (accult .+ adhcga .+ cappme .+ creaen .+ daepad .+ deffor .+ dfppce .+ doment .+ domlog .+ donapd .+ duflot .+ ecpess .+ garext .+ intagr .+ invfor .+ invlst .+ locmeu .+ mecena .+ mohist .+ patnat .+ prcomp .+ repsoc .+ resimm .+ rsceha .+ saldom .+ scelli .+ sofica .+ spfcpi)
    return period, min(ip_net, total_reductions)
  else
    return period, default_array(variable)
  end
end


@define_formula(repsoc, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2003, 1, 1),
) do simulation, variable, period
  """Intérèts d'emprunts pour reprises de société
  2003-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(marpac, period)
  @calculate(f7fh, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["repsoc"]
  seuil = P["seuil"] .* (marpac .+ 1)
  return period, P["taux"] .* min(f7fh, seuil)
end


@define_formula(resimm, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2009, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Travaux de restauration immobilière (cases 7RA et 7RB)
    2009-2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ra, period)
    @calculate(f7rb, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["resimm"]
    max1 = P["max"]
    max2 = max(max1 .- f7rb, 0)
    return period, P["taux_rb"] .* min(f7rb, max1) .+ P["taux_ra"] .* min(f7ra, max2)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Travaux de restauration immobilière (cases 7RA, 7RB, 7RC, 7RD)
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ra, period)
    @calculate(f7rb, period)
    @calculate(f7rc, period)
    @calculate(f7rd, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["resimm"]
    max1 = P["max"]
    max2 = max(max1 .- f7rd, 0)
    max3 = max(max2 .- f7rb, 0)
    max4 = max(max3 .- f7rc, 0)
    return period, (P["taux_rd"] .* min(f7rd, max1) .+ P["taux_rb"] .* min(f7rb, max2) .+ P["taux_rc"] .* min(f7rc, max3) .+ P["taux_ra"] .* min(f7ra, max4))
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Travaux de restauration immobilière (cases 7RA, 7RB, 7RC, 7RD, 7RE, 7RF)
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ra, period)
    @calculate(f7rb, period)
    @calculate(f7rc, period)
    @calculate(f7rd, period)
    @calculate(f7re, period)
    @calculate(f7rf, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["resimm"]
    max1 = P["max"]
    max2 = max(max1 .- f7rd, 0)
    max3 = max(max2 .- f7rb, 0)
    max4 = max(max3 .- f7rc .- f7rf, 0)
    max5 = max(max4 .- f7ra, 0)
    return period, (P["taux_rd"] .* min(f7rd, max1) .+ P["taux_rb"] .* min(f7rb, max2) .+ P["taux_rc"] .* min(f7rc .+ f7rf, max3) .+ P["taux_ra"] .* min(f7ra, max4) .+ P["taux_re"] .* min(f7re, max5))
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Travaux de restauration immobilière (cases 7RA, 7RB, 7RC, 7RD, 7RE, 7RF, 7SX, 7SY)
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ra, period)
    @calculate(f7rb, period)
    @calculate(f7rc, period)
    @calculate(f7rd, period)
    @calculate(f7re, period)
    @calculate(f7rf, period)
    @calculate(f7sx, period)
    @calculate(f7sy, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["resimm"]
    max1 = P["max"]
    max2 = max(max1 .- f7rd, 0)
    max3 = max(max2 .- f7rb, 0)
    max4 = max(max3 .- f7rc .- f7sy .- f7rf, 0)
    max5 = max(max4 .- f7ra, 0)
    return period, (P["taux_rd"] .* min(f7rd, max1) .+ P["taux_rb"] .* min(f7rb, max2) .+ P["taux_rc"] .* min(f7sy .+ f7rf .+ f7rc, max3) .+ P["taux_ra"] .* min(f7ra, max4) .+ P["taux_re"] .* min(f7re .+ f7sx, max5))
  else
    return period, default_array(variable)
  end
end


@define_formula(rsceha, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Rentes de survie et contrats d'épargne handicap
  2002-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nb_pac2, period)
  @calculate(nbR, period)
  @calculate(f7gz, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["rsceha"]
  max1 = P["seuil1"] .+ (nb_pac2 .- nbR) .* P["seuil2"]
  return period, P["taux"] .* min(f7gz, max1)
end


@define_formula(saldom, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    """Sommes versées pour l'emploi d'un salariés à  domicile
    2002-2004
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7df, period)
    @calculate(f7dg, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["saldom"]
    isinvalid = f7dg
    max1 = P["max1"] .* !isinvalid .+ P["max3"] .* isinvalid
    return period, P["taux"] .* min(f7df, max1)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    """Sommes versées pour l'emploi d'un salariés à  domicile
    2005-2006
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(nb_pac2, period)
    @calculate(f7df, period)
    @calculate(f7dl, period)
    @calculate(f7dg, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["saldom"]
    isinvalid = f7dg
    nbpacmin = nb_pac2 .+ f7dl
    maxBase = P["max1"]
    maxDuMaxNonInv = P["max2"]
    maxNonInv = min(maxBase .+ P["pac"] .* nbpacmin, maxDuMaxNonInv)
    max1 = maxNonInv .* !isinvalid .+ P["max3"] .* isinvalid
    return period, P["taux"] .* min(f7df, max1)
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Sommes versées pour l'emploi d'un salariés à  domicile
    2007-2008
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(nb_pac2, period)
    @calculate(f7db, period)
    @calculate(f7df, period)
    @calculate(f7dl, period)
    @calculate(f7dg, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["saldom"]
    isinvalid = f7dg
    nbpacmin = nb_pac2 .+ f7dl
    maxBase = P["max1"]
    maxDuMaxNonInv = P["max2"]
    maxNonInv = min(maxBase .+ P["pac"] .* nbpacmin, maxDuMaxNonInv)
    maxEffectif = maxNonInv .* !isinvalid .+ P["max3"] .* isinvalid
    max1 = maxEffectif .- min(f7db, maxEffectif)
    return period, P["taux"] .* min(f7df, max1)
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Sommes versées pour l'emploi d'un salariés à  domicile
    2009-2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(nb_pac2, period)
    @calculate(f7db, period)
    @calculate(f7df, period)
    @calculate(f7dl, period)
    @calculate(f7dq, period)
    @calculate(f7dg, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["saldom"]
    isinvalid = f7dg
    annee1 = f7dq
    nbpacmin = nb_pac2 .+ f7dl
    maxBase = P["max1"] .* !annee1 .+ P["max1_1ereAnnee"] .* annee1
    maxDuMaxNonInv = P["max2"] .* !annee1 .+ P["max2_1ereAnnee"] .* annee1
    maxNonInv = min(maxBase .+ P["pac"] .* nbpacmin, maxDuMaxNonInv)
    maxEffectif = maxNonInv .* !isinvalid .+ P["max3"] .* isinvalid
    max1 = maxEffectif .- min(f7db, maxEffectif)
    return period, P["taux"] .* min(f7df, max1)
  else
    return period, default_array(variable)
  end
end


@define_formula(scelli, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2009, 1, 1) <= period.start && period.start <= Date(2009, 12, 31)
    """Investissements locatif neufs : Dispositif Scellier (cases 7HJ et 7HK)
    2009
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7hj, period)
    @calculate(f7hk, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["scelli"]
    return period, max(P["taux1"] .* min(P["max"], f7hj), P["taux2"] .* min(P["max"], f7hk)) ./ 9
  elseif Date(2010, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Investissements locatif neufs : Dispositif Scellier
    2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7hj, period)
    @calculate(f7hk, period)
    @calculate(f7hn, period)
    @calculate(f7ho, period)
    @calculate(f7hl, period)
    @calculate(f7hm, period)
    @calculate(f7hr, period)
    @calculate(f7hs, period)
    @calculate(f7la, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["scelli"]
    return period, (max(max(P["taux1"] .* min(P["max"], f7hj), P["taux2"] .* min(P["max"], f7hk)), max(P["taux1"] .* min(P["max"], f7hn), P["taux2"] .* min(P["max"], f7ho))) ./ 9 .+ max(P["taux1"] .* min(P["max"], f7hl), P["taux2"] .* min(P["max"], f7hm)) ./ 9 .+ max(P["taux1"] .* f7hr, P["taux2"] .* f7hs) .+ f7la)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Investissements locatif neufs : Dispositif Scellier
    2011
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7hj, period)
    @calculate(f7hk, period)
    @calculate(f7hl, period)
    @calculate(f7hm, period)
    @calculate(f7hn, period)
    @calculate(f7ho, period)
    @calculate(f7hr, period)
    @calculate(f7hs, period)
    @calculate(f7ht, period)
    @calculate(f7hu, period)
    @calculate(f7hv, period)
    @calculate(f7hw, period)
    @calculate(f7hx, period)
    @calculate(f7hz, period)
    @calculate(f7la, period)
    @calculate(f7lb, period)
    @calculate(f7lc, period)
    @calculate(f7na, period)
    @calculate(f7nb, period)
    @calculate(f7nc, period)
    @calculate(f7nd, period)
    @calculate(f7ne, period)
    @calculate(f7nf, period)
    @calculate(f7ng, period)
    @calculate(f7nh, period)
    @calculate(f7ni, period)
    @calculate(f7nj, period)
    @calculate(f7nk, period)
    @calculate(f7nl, period)
    @calculate(f7nm, period)
    @calculate(f7nn, period)
    @calculate(f7no, period)
    @calculate(f7np, period)
    @calculate(f7nq, period)
    @calculate(f7nr, period)
    @calculate(f7ns, period)
    @calculate(f7nt, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["scelli"]
    return period, (min(P["max"], maxi(P["taux13"] .* max(f7nf, f7nj) ./ 9, P["taux15"] .* max(f7ng, f7ni) ./ 9, P["taux22"] .* max(f7na, f7ne) ./ 9, P["taux1"] .* maxi(f7nb, f7nc, f7nd, f7nh) ./ 9, P["taux36"] .* maxi(f7nk ./ 9, f7no ./ 9, f7np ./ 5, f7nt ./ 5), P["taux2"] .* maxi(f7nl ./ 9, f7nm ./ 9, f7nn ./ 9, f7nq ./ 5, f7nr ./ 5, f7ns ./ 5))) .+ min(P["max"], maxi(P["taux1"] .* max(f7hj, f7hn), P["taux2"] .* max(f7hk, f7ho))) ./ 9 .+ min(P["max"], max(P["taux1"] .* f7hl, P["taux2"] .* f7hm)) ./ 9 .+ min(P["max"], maxi(P["taux1"] .* f7hv, P["taux1"] .* f7hx, P["taux2"] .* f7hw, P["taux2"] .* f7hz)) .+ min(P["max"], max(P["taux1"] .* f7ht, P["taux2"] .* f7hu)) .+ min(P["max"], max(P["taux1"] .* f7hr, P["taux2"] .* f7hs)) .+ f7la .+ f7lb .+ f7lc)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Investissements locatif neufs : Dispositif Scellier
    2012
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7ha, period)
    @calculate(f7hb, period)
    @calculate(f7hg, period)
    @calculate(f7hh, period)
    @calculate(f7hd, period)
    @calculate(f7he, period)
    @calculate(f7hf, period)
    @calculate(f7hj, period)
    @calculate(f7hk, period)
    @calculate(f7hl, period)
    @calculate(f7hm, period)
    @calculate(f7hn, period)
    @calculate(f7ho, period)
    @calculate(f7hr, period)
    @calculate(f7hs, period)
    @calculate(f7ht, period)
    @calculate(f7hu, period)
    @calculate(f7hv, period)
    @calculate(f7hw, period)
    @calculate(f7hx, period)
    @calculate(f7hz, period)
    @calculate(f7ja, period)
    @calculate(f7jb, period)
    @calculate(f7jd, period)
    @calculate(f7je, period)
    @calculate(f7jf, period)
    @calculate(f7jg, period)
    @calculate(f7jh, period)
    @calculate(f7jj, period)
    @calculate(f7jk, period)
    @calculate(f7jl, period)
    @calculate(f7jm, period)
    @calculate(f7jn, period)
    @calculate(f7jo, period)
    @calculate(f7jp, period)
    @calculate(f7jq, period)
    @calculate(f7jr, period)
    @calculate(f7la, period)
    @calculate(f7lb, period)
    @calculate(f7lc, period)
    @calculate(f7ld, period)
    @calculate(f7le, period)
    @calculate(f7lf, period)
    @calculate(f7na, period)
    @calculate(f7nb, period)
    @calculate(f7nc, period)
    @calculate(f7nd, period)
    @calculate(f7ne, period)
    @calculate(f7nf, period)
    @calculate(f7ng, period)
    @calculate(f7nh, period)
    @calculate(f7ni, period)
    @calculate(f7nj, period)
    @calculate(f7nk, period)
    @calculate(f7nl, period)
    @calculate(f7nm, period)
    @calculate(f7nn, period)
    @calculate(f7no, period)
    @calculate(f7np, period)
    @calculate(f7nq, period)
    @calculate(f7nr, period)
    @calculate(f7ns, period)
    @calculate(f7nt, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["scelli"]
    return period, (min(P["max"], maxi(P["taux13"] .* max(f7nf, f7nj) ./ 9, P["taux15"] .* max(f7ng, f7ni) ./ 9, P["taux22"] .* max(f7na, f7ne) ./ 9, P["taux1"] .* maxi(f7nb, f7nc, f7nd, f7nh) ./ 9, P["taux36"] .* maxi(f7nk ./ 9, f7no ./ 9, f7np ./ 5, f7nt ./ 5), P["taux2"] .* maxi(f7nl ./ 9, f7nm ./ 9, f7nn ./ 9, f7nq ./ 5, f7nr ./ 5, f7ns ./ 5))) .+ min(P["max"], maxi(P["taux1"] .* max(f7hj, f7hn), P["taux2"] .* max(f7hk, f7ho))) ./ 9 .+ min(P["max"], max(P["taux1"] .* f7hl, P["taux2"] .* f7hm)) ./ 9 .+ min(P["max"], maxi(P["taux1"] .* f7hv, P["taux1"] .* f7hx, P["taux2"] .* f7hw, P["taux2"] .* f7hz)) .+ min(P["max"], max(P["taux1"] .* f7ht, P["taux2"] .* f7hu)) .+ min(P["max"], max(P["taux1"] .* f7hr, P["taux2"] .* f7hs)) .+ f7la .+ f7lb .+ f7lc .+ f7ld .+ f7le .+ f7lf .+ f7ha .+ f7hb .+ f7hg .+ f7hh .+ f7hd .+ f7he .+ f7hf .+ min(P["max"], maxi(P["taux6"] .* max(f7jf, f7jj) ./ 9, P["taux13"] .* maxi(f7ja, f7je, f7jg, f7jh) ./ 9, P["taux22"] .* maxi(f7jb, f7jd) ./ 9, P["taux24"] .* maxi(f7jk ./ 9, f7jn ./ 9, f7jo ./ 5, f7jr ./ 5), P["taux36"] .* maxi(f7jl ./ 9, f7jm ./ 9, f7jp ./ 5, f7jq ./ 5))))
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Investissements locatif neufs : Dispositif Scellier
    2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7fa, period)
    @calculate(f7fb, period)
    @calculate(f7fc, period)
    @calculate(f7fd, period)
    @calculate(f7gj, period)
    @calculate(f7gk, period)
    @calculate(f7gl, period)
    @calculate(f7gp, period)
    @calculate(f7gs, period)
    @calculate(f7gt, period)
    @calculate(f7gu, period)
    @calculate(f7gv, period)
    @calculate(f7gw, period)
    @calculate(f7gx, period)
    @calculate(f7ha, period)
    @calculate(f7hb, period)
    @calculate(f7hg, period)
    @calculate(f7hh, period)
    @calculate(f7hd, period)
    @calculate(f7he, period)
    @calculate(f7hf, period)
    @calculate(f7hj, period)
    @calculate(f7hk, period)
    @calculate(f7hl, period)
    @calculate(f7hm, period)
    @calculate(f7hn, period)
    @calculate(f7ho, period)
    @calculate(f7hr, period)
    @calculate(f7hs, period)
    @calculate(f7ht, period)
    @calculate(f7hu, period)
    @calculate(f7hv, period)
    @calculate(f7hw, period)
    @calculate(f7hx, period)
    @calculate(f7hz, period)
    @calculate(f7ja, period)
    @calculate(f7jb, period)
    @calculate(f7jd, period)
    @calculate(f7je, period)
    @calculate(f7jf, period)
    @calculate(f7jg, period)
    @calculate(f7jh, period)
    @calculate(f7jj, period)
    @calculate(f7jk, period)
    @calculate(f7jl, period)
    @calculate(f7jm, period)
    @calculate(f7jn, period)
    @calculate(f7jo, period)
    @calculate(f7jp, period)
    @calculate(f7jq, period)
    @calculate(f7jr, period)
    @calculate(f7la, period)
    @calculate(f7lb, period)
    @calculate(f7lc, period)
    @calculate(f7ld, period)
    @calculate(f7le, period)
    @calculate(f7lf, period)
    @calculate(f7lm, period)
    @calculate(f7ls, period)
    @calculate(f7lz, period)
    @calculate(f7mg, period)
    @calculate(f7na, period)
    @calculate(f7nb, period)
    @calculate(f7nc, period)
    @calculate(f7nd, period)
    @calculate(f7ne, period)
    @calculate(f7nf, period)
    @calculate(f7ng, period)
    @calculate(f7nh, period)
    @calculate(f7ni, period)
    @calculate(f7nj, period)
    @calculate(f7nk, period)
    @calculate(f7nl, period)
    @calculate(f7nm, period)
    @calculate(f7nn, period)
    @calculate(f7no, period)
    @calculate(f7np, period)
    @calculate(f7nq, period)
    @calculate(f7nr, period)
    @calculate(f7ns, period)
    @calculate(f7nt, period)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["scelli"]
    return period, (min(P["max"], maxi(P["taux13"] .* max(f7nf, f7nj) ./ 9, P["taux15"] .* max(f7ng, f7ni) ./ 9, P["taux22"] .* max(f7na, f7ne) ./ 9, P["taux1"] .* maxi(f7nb, f7nc, f7nd, f7nh) ./ 9, P["taux36"] .* maxi(f7nk ./ 9, f7no ./ 9, f7np ./ 5, f7nt ./ 5), P["taux2"] .* maxi(f7nl ./ 9, f7nm ./ 9, f7nn ./ 9, f7nq ./ 5, f7nr ./ 5, f7ns ./ 5))) .+ min(P["max"], maxi(P["taux1"] .* max(f7hj, f7hn), P["taux2"] .* max(f7hk, f7ho))) ./ 9 .+ min(P["max"], max(P["taux1"] .* f7hl, P["taux2"] .* f7hm)) ./ 9 .+ min(P["max"], maxi(P["taux1"] .* f7hv, P["taux1"] .* f7hx, P["taux2"] .* f7hw, P["taux2"] .* f7hz)) .+ min(P["max"], max(P["taux1"] .* f7ht, P["taux2"] .* f7hu)) .+ min(P["max"], max(P["taux1"] .* f7hr, P["taux2"] .* f7hs)) .+ min(P["max"], maxi(P["taux6"] .* maxi(f7jf, f7jj, f7fb) ./ 9, P["taux13"] .* maxi(f7ja, f7je, f7jg, f7jh, f7fa) ./ 9, P["taux22"] .* maxi(f7jb, f7jd) ./ 9, P["taux24"] .* maxi(f7jk ./ 9, f7jn ./ 9, f7jo ./ 5, f7jr ./ 5, f7fc ./ 9, f7fd ./ 5), P["taux36"] .* maxi(f7jl ./ 9, f7jm ./ 9, f7jp ./ 5, f7jq ./ 5))) .+ f7la .+ f7lb .+ f7lc .+ f7ld .+ f7le .+ f7lf .+ f7lm .+ f7ls .+ f7lz .+ f7mg .+ f7ha .+ f7hb .+ f7hg .+ f7hh .+ f7hd .+ f7he .+ f7hf .+ f7gj .+ f7gk .+ f7gl .+ f7gp .+ f7gs .+ f7gt .+ f7gu .+ f7gv .+ f7gx .+ f7gw)
  else
    return period, default_array(variable)
  end
end


@define_formula(sofica, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
) do simulation, variable, period
  """Souscriptions au capital de SOFICA
  2006-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f7gn, period)
  @calculate(f7fn, period)
  @calculate(rng, period)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["sofica"]
  max0 = min(P["taux1"] .* max(rng, 0), P["max"])
  max1 = max(0, max0 .- f7gn)
  return period, P["taux2"] .* min(f7gn, max0) .+ P["taux3"] .* min(f7fn, max1)
end


@define_formula(sofipe, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 1, 1),
) do simulation, variable, period
  """Souscription au capital d’une SOFIPECHE (case 7GS)
  2009-2011
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(marpac, period)
  @calculate(rbg_int, period)
  @calculate(f7gs, period)
  _P = legislation_at(simulation, period.start)
  P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["sofipe"]
  max1 = min(P["max"] .* (marpac .+ 1), P["base"] .* rbg_int)
  return period, P["taux"] .* min(f7gs, max1)
end


@define_formula(spfcpi, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    """Souscription de parts de fonds communs de placement dans l'innovation,
    de fonds d'investissement de proximité
    2002
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7gq, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["spfcpi"]
    max1 = P["max"] .* (marpac .+ 1)
    return period, P["taux1"] .* min(f7gq, max1)
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    """Souscription de parts de fonds communs de placement dans l'innovation,
    de fonds d'investissement de proximité
    2003-2006
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7gq, period)
    @calculate(f7fq, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["spfcpi"]
    max1 = P["max"] .* (marpac .+ 1)
    return period, (P["taux1"] .* min(f7gq, max1) .+ P["taux1"] .* min(f7fq, max1))
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    """Souscription de parts de fonds communs de placement dans l'innovation,
    de fonds d'investissement de proximité
    2007-2010
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7gq, period)
    @calculate(f7fq, period)
    @calculate(f7fm, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["spfcpi"]
    max1 = P["max"] .* (marpac .+ 1)
    return period, (P["taux1"] .* min(f7gq, max1) .+ P["taux1"] .* min(f7fq, max1) .+ P["taux2"] .* min(f7fm, max1))
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    """Souscription de parts de fonds communs de placement dans l'innovation,
    de fonds d'investissement de proximité
    2011-2013
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(f7gq, period)
    @calculate(f7fq, period)
    @calculate(f7fm, period)
    @calculate(f7fl, period)
    _P = legislation_at(simulation, period.start)
    P = legislation_at(simulation, period.start)["ir"]["reductions_impots"]["spfcpi"]
    max1 = P["max"] .* (marpac .+ 1)
    return period, (P["taux1"] .* min(f7gq, max1) .+ P["taux1"] .* min(f7fq, max1) .+ P["taux2"] .* min(f7fm, max1) .+ P["taux3"] .* min(f7fl, max1))
  elseif Date(2014, 1, 1) <= period.start && period.start <= Date(2014, 12, 31)
    """Souscription de parts de fonds communs de placement dans l'innovation,
    de fonds d'investissement de proximité
    2014
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f7gq, period)
    return period, f7gq .* 0
  else
    return period, default_array(variable)
  end
end
