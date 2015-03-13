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


@define_formula(cd1, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Charges déductibles non plafonnées",
  url = "http://impotsurlerevenu.org/definitions/215-charge-deductible.php",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2003, 12, 31)
    "Renvoie la liste des charges déductibles avant rbg_int pour 2002"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_penali, period)
    @calculate(cd_acc75a, period)
    @calculate(cd_percap, period)
    @calculate(cd_deddiv, period)
    @calculate(cd_doment, period)
    niches1 = cd_penali .+ cd_acc75a .+ cd_percap .+ cd_deddiv .+ cd_doment
    return period, niches1
  elseif Date(2004, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Renvoie la liste des charges déductibles avant rbg_int pour 2004"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_penali, period)
    @calculate(cd_acc75a, period)
    @calculate(cd_percap, period)
    @calculate(cd_deddiv, period)
    @calculate(cd_doment, period)
    @calculate(cd_eparet, period)
    niches1 = cd_penali .+ cd_acc75a .+ cd_percap .+ cd_deddiv .+ cd_doment .+ cd_eparet
    return period, niches1
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    "Renvoie la liste des charges déductibles avant rbg_int pour 2006"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_penali, period)
    @calculate(cd_acc75a, period)
    @calculate(cd_percap, period)
    @calculate(cd_deddiv, period)
    @calculate(cd_eparet, period)
    niches1 = cd_penali .+ cd_acc75a .+ cd_percap .+ cd_deddiv .+ cd_eparet
    return period, niches1
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Renvoie la liste des charges déductibles avant rbg_int pour 2007"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_penali, period)
    @calculate(cd_acc75a, period)
    @calculate(cd_deddiv, period)
    @calculate(cd_eparet, period)
    niches1 = cd_penali .+ cd_acc75a .+ cd_deddiv .+ cd_eparet
    return period, niches1
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2013, 12, 31)
    "Renvoie la liste des charges déductibles avant rbg_int pour 2009"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_penali, period)
    @calculate(cd_acc75a, period)
    @calculate(cd_deddiv, period)
    @calculate(cd_eparet, period)
    @calculate(cd_grorep, period)
    niches1 = cd_penali .+ cd_acc75a .+ cd_deddiv .+ cd_eparet .+ cd_grorep
    return period, niches1
  elseif Date(2014, 1, 1) <= period.start && period.start <= Date(2014, 12, 31)
    "Renvoie la liste des charges déductibles avant rbg_int pour 2014"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_penali, period)
    @calculate(cd_acc75a, period)
    @calculate(cd_deddiv, period)
    @calculate(cd_eparet, period)
    @calculate(cd_grorep, period)
    niches1 = cd_penali .+ cd_acc75a .+ cd_deddiv .+ cd_eparet .+ cd_grorep
    return period, niches1
  else
    return period, default_array(variable)
  end
end


@define_formula(cd2, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Charges déductibles plafonnées",
  url = "http://impotsurlerevenu.org/definitions/215-charge-deductible.php",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Renvoie la liste des charges déductibles à intégrer après le rbg_int"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_sofipe, period)
    @calculate(cd_cinema, period)
    niches2 = cd_sofipe .+ cd_cinema
    return period, niches2
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    "Renvoie la liste des charges déductibles à intégrer après le rbg_int"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_sofipe, period)
    niches2 = cd_sofipe
    return period, niches2
  elseif Date(2007, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Renvoie la liste des charges déductibles à intégrer après le rbg_int"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(cd_ecodev, period)
    niches2 = cd_ecodev
    return period, niches2
  else
    return period, default_array(variable)
  end
end


@define_formula(cd_acc75a, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Frais d’accueil sous votre toit d’une personne de plus de 75 ans"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6eu, period)
  @calculate(f6ev, period)
  acc75a = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["acc75a"]
  amax = acc75a["max"] .* max(1, f6ev)
  return period, min(f6eu, amax)
end


@define_formula(cd_cinema, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2005, 12, 31),
) do simulation, variable, period
  """Souscriptions en faveur du cinéma ou de l’audiovisuel (case AA de la
  déclaration n° 2042 complémentaire)
  2002-2005
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6aa, period)
  @calculate(rbg_int, period)
  cinema = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["cinema"]
  max1 = min(cinema["taux"] .* rbg_int, cinema["max"])
  return period, min(f6aa, max1)
end


@define_formula(cd_deddiv, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Déductions diverses (case DD)"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6dd, period)
  return period, f6dd
end


@define_formula(cd_doment, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2005, 12, 31),
) do simulation, variable, period
  """Investissements DOM-TOM dans le cadre d’une entreprise (case EH de la
  déclaration n° 2042 complémentaire)
  2002-2005
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6eh, period)
  return period, f6eh
end


@define_formula(cd_ecodev, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2007, 1, 1),
  stop_date = Date(2008, 12, 31),
) do simulation, variable, period
  """Versements sur un compte épargne codéveloppement (case EH de la déclaration
  complémentaire)
  2007-2008
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6eh, period)
  @calculate(rbg_int, period)
  ecodev = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["ecodev"]
  max1 = min(ecodev["taux"] .* rbg_int, ecodev["max"])
  return period, min(f6eh, max1)
end


@define_formula(cd_eparet, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2004, 1, 1),
) do simulation, variable, period
  """Épargne retraite - PERP, PRÉFON, COREM et CGOS
  2004-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  f6ps_holder = calculate(simulation, "f6ps", period)
  f6rs_holder = calculate(simulation, "f6rs", period)
  f6ss_holder = calculate(simulation, "f6ss", period)
  f6ps = single_person_in_entity(f6ps_holder, get_entity(variable), period, VOUS)
  f6pt = single_person_in_entity(f6ps_holder, get_entity(variable), period, CONJ)
  f6pu = single_person_in_entity(f6ps_holder, get_entity(variable), period, PAC1)
  f6rs = single_person_in_entity(f6rs_holder, get_entity(variable), period, VOUS)
  f6rt = single_person_in_entity(f6rs_holder, get_entity(variable), period, CONJ)
  f6ru = single_person_in_entity(f6rs_holder, get_entity(variable), period, PAC1)
  f6ss = single_person_in_entity(f6ss_holder, get_entity(variable), period, VOUS)
  f6st = single_person_in_entity(f6ss_holder, get_entity(variable), period, CONJ)
  f6su = single_person_in_entity(f6ss_holder, get_entity(variable), period, PAC1)
  return period, ((f6ps .== 0) .* (f6rs .+ f6ss) .+ (f6ps .!= 0) .* min(f6rs .+ f6ss, f6ps) .+ (f6pt .== 0) .* (f6rt .+ f6st) .+ (f6pt .!= 0) .* min(f6rt .+ f6st, f6pt) .+ (f6pu .== 0) .* (f6ru .+ f6su) .+ (f6pu .!= 0) .* min(f6ru .+ f6su, f6pu))
end


@define_formula(cd_grorep, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  """Dépenses de grosses réparations des nus-propriétaires (case 6CB et 6HJ)
  2009-
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6cb, period)
  @calculate(f6hj, period)
  @calculate(f6hk, period)
  @calculate(f6hl, period)
  grorep = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["grorep"]
  return period, min(f6cb .+ f6hj .+ f6hk .+ f6hl, grorep["max"])
end


@define_formula(cd_penali, foyer_fiscal_definition, Float32, requested_period_default_value,
  url = "http://frederic.anne.free.fr/Cours/ITV.htm",
) do simulation, variable, period
  "Pensions alimentaires"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6gi, period)
  @calculate(f6gj, period)
  @calculate(f6gp, period)
  @calculate(f6el, period)
  @calculate(f6em, period)
  @calculate(f6gu, period)
  penalim = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["penalim"]
  max1 = penalim["max"]
  taux_jgt_2006 = penalim["taux_jgt_2006"]
  return period, (min(f6gi .* (1 + taux_jgt_2006), max1) .+ min(f6gj .* (1 + taux_jgt_2006), max1) .+ min(f6el, max1) .+ min(f6em, max1) .+ f6gp .* (1 + taux_jgt_2006) .+ f6gu)
end


@define_formula(cd_percap, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2002, 12, 31)
    """Pertes en capital consécutives à la souscription au capital de sociétés
    nouvelles ou de sociétés en difficulté (cases CB et DA de la déclaration
    complémentaire)
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f6cb, period)
    @calculate(marpac, period)
    percap = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["percap"]
    max_cb = percap["max_cb"] .* (1 .+ marpac)
    return period, min(f6cb, max_cb)
  elseif Date(2003, 1, 1) <= period.start && period.start <= Date(2006, 12, 31)
    """Pertes en capital consécutives à la souscription au capital de sociétés
    nouvelles ou de sociétés en difficulté (cases CB et DA de la déclaration
    complémentaire)
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f6cb, period)
    @calculate(f6da, period)
    @calculate(marpac, period)
    percap = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["percap"]
    max_cb = percap["max_cb"] .* (1 .+ marpac)
    max_da = percap["max_da"] .* (1 .+ marpac)
    return period, min(min(f6cb, max_cb) .+ min(f6da, max_da), max_da)
  else
    return period, default_array(variable)
  end
end


@define_formula(cd_sofipe, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2002, 1, 1),
  stop_date = Date(2006, 12, 31),
) do simulation, variable, period
  """Souscriptions au capital des SOFIPÊCHE (case CC de la déclaration
  complémentaire)
  2002-2006
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6cc, period)
  @calculate(rbg_int, period)
  @calculate(marpac, period)
  sofipe = legislation_at(simulation, period.start)["ir"]["charges_deductibles"]["sofipe"]
  max1 = min(sofipe["taux"] .* rbg_int, sofipe["max"] .* (1 .+ marpac))
  return period, min(f6cc, max1)
end


@define_formula(charges_deduc, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Charges déductibles",
  url = "http://impotsurlerevenu.org/definitions/215-charge-deductible.php",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(cd1, period)
  @calculate(cd2, period)
  return period, cd1 .+ cd2
end


@define_formula(rbg_int, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu brut global intermédiaire",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rbg, period)
  @calculate(cd1, period)
  return period, max(rbg .- cd1, 0)
end


@define_formula(rfr_cd, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Charges déductibles entrant dans le revenus fiscal de référence",
  url = "http://impotsurlerevenu.org/definitions/215-charge-deductible.php",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(cd_acc75a, period)
  @calculate(cd_doment, period)
  @calculate(cd_eparet, period)
  @calculate(cd_sofipe, period)
  return period, cd_acc75a .+ cd_doment .+ cd_eparet .+ cd_sofipe
end
