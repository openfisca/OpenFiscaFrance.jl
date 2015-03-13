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


@define_formula(crds_cap_bar, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CRDS sur les revenus du capital soumis au barème",
  url = "http://fr.wikipedia.org/wiki/Contribution_pour_le_remboursement_de_la_dette_sociale",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(rev_cap_bar, period)
  _P = legislation_at(simulation, period.start)
  return period, -rev_cap_bar * _P["crds"]["capital"]
end


@define_formula(crds_cap_bar_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "CRDS sur les revenus du capital soumis au barème (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(crds_cap_bar, period, accept_other_period = true)
  return period, entity_to_person(crds_cap_bar, [VOUS])
end


@define_formula(crds_cap_lib, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CRDS sur les revenus du capital soumis au prélèvement libératoire",
  url = "http://fr.wikipedia.org/wiki/Contribution_pour_le_remboursement_de_la_dette_sociale",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(rev_cap_lib, period)
  _P = legislation_at(simulation, period.start)
  return period, -rev_cap_lib * _P["crds"]["capital"]
end


@define_formula(crds_cap_lib_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "CRDS sur les revenus du capital soumis au prélèvement libératoire (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(crds_cap_lib, period, accept_other_period = true)
  return period, entity_to_person(crds_cap_lib, [VOUS])
end


@define_formula(crds_fon, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CRDS sur les revenus fonciers",
  url = "http://vosdroits.service-public.fr/particuliers/F2329.xhtml",
) do simulation, variable, period
  """Calcule la CRDS sur les revenus fonciers
  Attention : assiette CSG = asiette IR valable 2006-2014 mais pourrait changer
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_cat_rfon, period)
  _P = legislation_at(simulation, period.start)
  return period, -rev_cat_rfon * _P["crds"]["capital"]
end


@define_formula(crds_pv_immo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CRDS sur les plus-values immobilières",
  url = "http://fr.wikipedia.org/wiki/Contribution_pour_le_remboursement_de_la_dette_sociale",
) do simulation, variable, period
  "Calcule la CRDS sur les plus-values de cession immobilière"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vz, period)
  _P = legislation_at(simulation, period.start)
  return period, -f3vz * _P["crds"]["capital"]
end


@define_formula(crds_pv_mo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CRDS sur les plus-values de cession de valeurs mobilières",
  url = "http://fr.wikipedia.org/wiki/Contribution_pour_le_remboursement_de_la_dette_sociale",
) do simulation, variable, period
  "Calcule la CRDS sur les plus-values de cession mobilière"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vg, period)
  _P = legislation_at(simulation, period.start)
  return period, -f3vg * _P["crds"]["capital"]
end


@define_formula(csg_cap_bar, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CSG sur les revenus du capital soumis au barème",
  url = "http://fr.wikipedia.org/wiki/Contribution_sociale_généralisée",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(rev_cap_bar, period)
  _P = legislation_at(simulation, period.start)
  return period, -rev_cap_bar * _P["csg"]["capital"]["glob"]
end


@define_formula(csg_cap_bar_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "CSG sur les revenus du capital soumis au barème (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(csg_cap_bar, period, accept_other_period = true)
  return period, entity_to_person(csg_cap_bar, [VOUS])
end


@define_formula(csg_cap_lib, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CSG sur les revenus du capital soumis au prélèvement libératoire",
  url = "http://fr.wikipedia.org/wiki/Contribution_sociale_généralisée",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(rev_cap_lib, period)
  _P = legislation_at(simulation, period.start)
  return period, -rev_cap_lib * _P["csg"]["capital"]["glob"]
end


@define_formula(csg_cap_lib_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "CSG sur les revenus du capital soumis au prélèvement libératoire (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(csg_cap_lib, period, accept_other_period = true)
  return period, entity_to_person(csg_cap_lib, [VOUS])
end


@define_formula(csg_fon, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CSG sur les revenus fonciers",
  url = "http://fr.wikipedia.org/wiki/Contribution_sociale_g%C3%A9n%C3%A9ralis%C3%A9e",
) do simulation, variable, period
  """Calcule la CSG sur les revenus fonciers
  Attention : assiette CSG = asiette IR valable 2006-2014 mais pourrait changer
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_cat_rfon, period)
  _P = legislation_at(simulation, period.start)
  return period, -rev_cat_rfon * _P["csg"]["capital"]["glob"]
end


@define_formula(csg_pv_immo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CSG sur les plus-values immobilières",
  url = "http://fr.wikipedia.org/wiki/Contribution_sociale_g%C3%A9n%C3%A9ralis%C3%A9e",
) do simulation, variable, period
  "Calcule la CSG sur les plus-values de cession immobilière"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vz, period)
  _P = legislation_at(simulation, period.start)
  return period, -f3vz * _P["csg"]["capital"]["glob"]
end


@define_formula(csg_pv_mo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "CSG sur les plus-values de cession de valeurs mobilières",
  url = "http://vosdroits.service-public.fr/particuliers/F21618.xhtml",
) do simulation, variable, period
  "Calcule la CSG sur les plus-values de cession mobilière"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vg, period)
  _P = legislation_at(simulation, period.start)
  return period, -f3vg * _P["csg"]["capital"]["glob"]
end


@define_formula(prelsoc_cap_bar, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prélèvements sociaux sur les revenus du capital soumis au barème",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&paf_gm=content&typePage=cpr02&sfid=501&espId=1&impot=CS",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    period = first_day(YearPeriod(period.start))
    @calculate(rev_cap_bar, period)
    P = legislation_at(simulation, period.start)["prelsoc"]
    total = P["base_pat"]
    return period, -rev_cap_bar * total
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    period = first_day(YearPeriod(period.start))
    @calculate(rev_cap_bar, period)
    P = legislation_at(simulation, period.start)["prelsoc"]
    total = P["base_pat"] + P["add_pat"]
    return period, -rev_cap_bar * total
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    period = first_day(YearPeriod(period.start))
    @calculate(rev_cap_bar, period)
    P = legislation_at(simulation, period.start)["prelsoc"]
    total = P["base_pat"] + P["add_pat"] + P["rsa"]
    return period, -rev_cap_bar * total
  else
    return period, default_array(variable)
  end
end


@define_formula(prelsoc_cap_bar_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "Prélèvements sociaux sur les revenus du capital soumis au barème (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(prelsoc_cap_bar, period, accept_other_period = true)
  return period, entity_to_person(prelsoc_cap_bar, [VOUS])
end


@define_formula(prelsoc_cap_lib, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prélèvements sociaux sur les revenus du capital soumis au prélèvement libératoire",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&paf_dm=popup&paf_gm=content&typePage=cpr02&sfid=501&espId=1&impot=CS",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(rev_cap_lib, period)
  prelsoc = legislation_at(simulation, period.start)["prelsoc"]
  start_year = year(period.start)
  if start_year < 2006
    total = prelsoc["base_pat"]
  elseif start_year < 2009
    total = prelsoc["base_pat"] + prelsoc["add_pat"]
  else
    total = prelsoc["base_pat"] + prelsoc["add_pat"] + prelsoc["rsa"]
  end
  return period, -rev_cap_lib * total
end


@define_formula(prelsoc_cap_lib_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "Prélèvements sociaux sur les revenus du capital soumis au prélèvement libératoire (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(prelsoc_cap_lib, period, accept_other_period = true)
  return period, entity_to_person(prelsoc_cap_lib, [VOUS])
end


@define_formula(prelsoc_fon, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prélèvements sociaux sur les revenus fonciers",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&paf_dm=popup&paf_gm=content&typePage=cpr02&sfid=501&espId=1&impot=CS",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Calcule le prélèvement social sur les revenus fonciers
    Attention : assiette CSG = asiette IR valable 2006-2014 mais pourrait changer
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rev_cat_rfon, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"]
    return period, -rev_cat_rfon * total
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Calcule le prélèvement social sur les revenus fonciers
    Attention : assiette CSG = asiette IR valable 2006-2014 mais pourrait changer
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rev_cat_rfon, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"] + P["add_pat"]
    return period, -rev_cat_rfon * total
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    """Calcule le prélèvement social sur les revenus fonciers
    Attention : assiette CSG = asiette IR valable 2006-2014 mais pourrait changer
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(rev_cat_rfon, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"] + P["add_pat"] + P["rsa"]
    return period, -rev_cat_rfon * total
  else
    return period, default_array(variable)
  end
end


@define_formula(prelsoc_pv_immo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prélèvements sociaux sur les plus-values immobilières",
  url = "http://www.pap.fr/argent/impots/les-plus-values-immobilieres/a1314/l-imposition-de-la-plus-value-immobiliere",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    "Calcule le prélèvement social sur les plus-values de cession immobilière"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"]
    return period, -f3vz * total
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    "Calcule le prélèvement social sur les plus-values de cession immobilière"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"] + P["add_pat"]
    return period, -f3vz * total
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    "Calcule le prélèvement social sur les plus-values de cession immobilière"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vz, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"] + P["add_pat"] + P["rsa"]
    return period, -f3vz * total
  else
    return period, default_array(variable)
  end
end


@define_formula(prelsoc_pv_mo, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prélèvements sociaux sur les plus-values de cession de valeurs mobilières",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&paf_dm=popup&paf_gm=content&typePage=cpr02&sfid=501&espId=1&impot=CS",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2005, 12, 31)
    """Calcule le prélèvement social sur les plus-values
    de cession de valeurs mobilières
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"]
    return period, -f3vg * total
  elseif Date(2006, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    """Calcule le prélèvement social sur les plus-values
    de cession de valeurs mobilières
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"] + P["add_pat"]
    return period, -f3vg * total
  elseif Date(2009, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    "Calcule le prélèvement social sur les plus-values de cession de valeurs mobilières"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    _P = legislation_at(simulation, period.start)
    P = _P["prelsoc"]
    total = P["base_pat"] + P["add_pat"] + P["rsa"]
    return period, -f3vg * total
  else
    return period, default_array(variable)
  end
end
