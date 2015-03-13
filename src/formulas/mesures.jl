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


@define_formula(aides_logement, famille_definition, Float32, requested_period_default_value,
  label = "Allocations logements",
  url = "http://vosdroits.service-public.fr/particuliers/N20360.xhtml",
) do simulation, variable, period
  "Prestations logement"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate_add(apl, period)
  @calculate_add(als, period)
  @calculate_add(alf, period)
  @calculate_add(crds_logement, period)
  return period, apl .+ als .+ alf .+ crds_logement
end


@define_formula(check_crds, menage_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  crds_cap_bar_declarant1_holder = calculate(simulation, "crds_cap_bar_declarant1", period)
  crds_pv_mo_holder = calculate(simulation, "crds_pv_mo", period)
  crds_fon_holder = calculate(simulation, "crds_fon", period)
  crds_cap_bar = sum_person_in_entity(crds_cap_bar_declarant1_holder, get_entity(variable), period)
  crds_pv_mo = entity_to_person(crds_pv_mo_holder, period, CHEF)
  crds_pv_mo = sum_person_in_entity(crds_pv_mo, get_entity(variable), period)
  crds_fon = entity_to_person(crds_fon_holder, period, CHEF)
  crds_fon = sum_person_in_entity(crds_fon, get_entity(variable), period)
  return period, crds_cap_bar .+ crds_pv_mo .+ crds_fon
end


@define_formula(check_csg, menage_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  csg_cap_bar_declarant1_holder = calculate(simulation, "csg_cap_bar_declarant1", period)
  csg_pv_mo_holder = calculate(simulation, "csg_pv_mo", period)
  csg_fon_holder = calculate(simulation, "csg_fon", period)
  csg_cap_bar = sum_person_in_entity(csg_cap_bar_declarant1_holder, get_entity(variable), period)
  csg_pv_mo = entity_to_person(csg_pv_mo_holder, period, CHEF)
  csg_pv_mo = sum_person_in_entity(csg_pv_mo, get_entity(variable), period)
  csg_fon = entity_to_person(csg_fon_holder, period, CHEF)
  csg_fon = sum_person_in_entity(csg_fon, get_entity(variable), period)
  return period, csg_cap_bar .+ csg_pv_mo .+ csg_fon
end


@define_formula(check_csk, menage_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  prelsoc_cap_bar_declarant1_holder = calculate(simulation, "prelsoc_cap_bar_declarant1", period)
  prelsoc_pv_mo_holder = calculate(simulation, "prelsoc_pv_mo", period)
  prelsoc_fon_holder = calculate(simulation, "prelsoc_fon", period)
  prelsoc_cap_bar = sum_person_in_entity(prelsoc_cap_bar_declarant1_holder, get_entity(variable), period)
  prelsoc_pv_mo = entity_to_person(prelsoc_pv_mo_holder, period, CHEF)
  prelsoc_pv_mo = sum_person_in_entity(prelsoc_pv_mo, get_entity(variable), period)
  prelsoc_fon = entity_to_person(prelsoc_fon_holder, period, CHEF)
  prelsoc_fon = sum_person_in_entity(prelsoc_fon, get_entity(variable), period)
  return period, prelsoc_cap_bar .+ prelsoc_pv_mo .+ prelsoc_fon
end


@define_formula(cotsoc_bar_declarant1, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales sur les revenus du capital imposés au barème",
) do simulation, variable, period
  "Cotisations sociales sur les revenus du capital imposés au barème"
  period = first_day(YearPeriod(period.start))
  @calculate(csg_cap_bar_declarant1, period)
  @calculate(prelsoc_cap_bar_declarant1, period)
  @calculate(crds_cap_bar_declarant1, period)
  return period, csg_cap_bar_declarant1 .+ prelsoc_cap_bar_declarant1 .+ crds_cap_bar_declarant1
end


@define_formula(cotsoc_lib_declarant1, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales sur les revenus du capital soumis au prélèvement libératoire",
) do simulation, variable, period
  "Cotisations sociales sur les revenus du capital soumis au prélèvement libératoire"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(csg_cap_lib_declarant1, period)
  @calculate(prelsoc_cap_lib_declarant1, period)
  @calculate(crds_cap_lib_declarant1, period)
  return period, csg_cap_lib_declarant1 .+ prelsoc_cap_lib_declarant1 .+ crds_cap_lib_declarant1
end


@define_formula(cotsoc_noncontrib, individu_definition, Float32, requested_period_default_value,
  label = "Cotisations sociales non contributives",
) do simulation, variable, period
  "Cotisations sociales non contributives (hors prelsoc_cap_lib, prelsoc_cap_bar)"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(cotisations_patronales_non_contributives, period)
  @calculate(cotisations_salariales_non_contributives, period)
  return period, cotisations_patronales_non_contributives .+ cotisations_salariales_non_contributives
end


@define_formula(crds, individu_definition, Float32, requested_period_default_value,
  label = "Total des contributions au remboursement de la dette sociale",
) do simulation, variable, period
  "Contribution au remboursement de la dette sociale"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate_add(crdssal, period)
  @calculate_add(crdsrst, period)
  @calculate_add(crdscho, period)
  crds_fon_holder = calculate(simulation, "crds_fon", period)
  @calculate(crds_cap_bar_declarant1, period)
  @calculate(crds_cap_lib_declarant1, period)
  crds_pfam_holder = calculate(simulation, "crds_pfam", period)
  crds_logement_holder = calculate_add(simulation, "crds_logement", period)
  crds_mini_holder = calculate_add(simulation, "crds_mini", period)
  crds_pv_mo_holder = calculate(simulation, "crds_pv_mo", period)
  crds_pv_immo_holder = calculate(simulation, "crds_pv_immo", period)
  crds_fon = entity_to_person(crds_fon_holder, period, VOUS)
  crds_logement = entity_to_person(crds_logement_holder, period, CHEF)
  crds_mini = entity_to_person(crds_mini_holder, period, CHEF)
  crds_pfam = entity_to_person(crds_pfam_holder, period, CHEF)
  crds_pv_immo = entity_to_person(crds_pv_immo_holder, period, VOUS)
  crds_pv_mo = entity_to_person(crds_pv_mo_holder, period, VOUS)
  return period, (crdssal .+ crdsrst .+ crdscho .+ crds_fon .+ crds_cap_bar_declarant1 .+ crds_cap_lib_declarant1 .+ crds_pv_mo .+ crds_pv_immo .+ crds_pfam .+ crds_logement .+ crds_mini)
end


@define_formula(csg, individu_definition, Float32, requested_period_default_value,
  label = "Total des contributions sociale généralisée",
) do simulation, variable, period
  "Contribution sociale généralisée"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate_add(csgsali, period)
  @calculate_add(csgsald, period)
  @calculate_add(csgchoi, period)
  @calculate_add(csgchod, period)
  @calculate_add(csgrsti, period)
  @calculate_add(csgrstd, period)
  csg_fon_holder = calculate(simulation, "csg_fon", period)
  @calculate(csg_cap_lib_declarant1, period)
  @calculate(csg_cap_bar_declarant1, period)
  csg_pv_mo_holder = calculate(simulation, "csg_pv_mo", period)
  csg_pv_immo_holder = calculate(simulation, "csg_pv_immo", period)
  csg_fon = entity_to_person(csg_fon_holder, period, VOUS)
  csg_pv_immo = entity_to_person(csg_pv_immo_holder, period, VOUS)
  csg_pv_mo = entity_to_person(csg_pv_mo_holder, period, VOUS)
  return period, (csgsali .+ csgsald .+ csgchoi .+ csgchod .+ csgrsti .+ csgrstd .+ csg_fon .+ csg_cap_lib_declarant1 .+ csg_pv_mo .+ csg_pv_immo .+ csg_cap_bar_declarant1)
end


@define_formula(impo, menage_definition, Float32, requested_period_default_value,
  label = "Impôts sur le revenu",
  url = "http://fr.wikipedia.org/wiki/Imp%C3%B4t_direct",
) do simulation, variable, period
  "Impôts directs"
  period = YearPeriod(firstdayofmonth(period.start))
  irpp_holder = calculate(simulation, "irpp", period)
  @calculate(taxe_habitation, period)
  irpp = entity_to_person(irpp_holder, period, VOUS)
  irpp = sum_person_in_entity(irpp, get_entity(variable), period)
  return period, irpp .+ taxe_habitation
end


@define_formula(mini, famille_definition, Float32, requested_period_default_value,
  label = "Minima sociaux",
  url = "http://fr.wikipedia.org/wiki/Minima_sociaux",
) do simulation, variable, period
  "Minima sociaux"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate_add(aspa, period)
  aah_holder = calculate(simulation, "aah", period)
  caah_holder = calculate(simulation, "caah", period)
  @calculate_add(asi, period)
  @calculate_add(rsa, period)
  @calculate(aefa, period)
  @calculate(api, period)
  @calculate(ass, period)
  @calculate_add(psa, period)
  aah = sum_person_in_entity(aah_holder, get_entity(variable), period)
  caah = sum_person_in_entity(caah_holder, get_entity(variable), period)
  return period, aspa .+ aah .+ caah .+ asi .+ rsa .+ aefa .+ api .+ ass .+ psa
end


@define_formula(nivvie, menage_definition, Float32, requested_period_default_value,
  label = "Niveau de vie du ménage",
) do simulation, variable, period
  """Niveau de vie du ménage
  'men'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(revdisp, period)
  @calculate(uc, period)
  return period, revdisp ./ uc
end


@define_formula(nivvie_ini, menage_definition, Float32, requested_period_default_value,
  label = "Niveau de vie initial du ménage",
) do simulation, variable, period
  """Niveau de vie initial du ménage
  'men'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(revini, period)
  @calculate(uc, period)
  return period, revini ./ uc
end


@define_formula(nivvie_net, menage_definition, Float32, requested_period_default_value,
  label = "Niveau de vie net du ménage",
) do simulation, variable, period
  """Niveau de vie net du ménage
  'men'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(revnet, period)
  @calculate(uc, period)
  return period, revnet ./ uc
end


@define_formula(pen, individu_definition, Float32, requested_period_default_value,
  label = "Total des pensions et revenus de remplacement",
  url = "http://fr.wikipedia.org/wiki/Rente",
) do simulation, variable, period
  "Pensions"
  period = first_day(YearPeriod(period.start))
  @calculate(chonet, period)
  @calculate(rstnet, period)
  @calculate(alr, period)
  @calculate(alv_declarant1, period)
  @calculate(rto_declarant1, period)
  return period, chonet .+ rstnet .+ alr .+ alv_declarant1 .+ rto_declarant1
end


@define_formula(pfam, famille_definition, Float32, requested_period_default_value,
  label = "Total des prestations familiales",
  url = "http://www.social-sante.gouv.fr/informations-pratiques,89/fiches-pratiques,91/prestations-familiales,1885/les-prestations-familiales,12626.html",
) do simulation, variable, period
  "Prestations familiales"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate_add(af, period)
  @calculate_add(cf, period)
  @calculate(ars, period)
  @calculate(aeeh, period)
  @calculate_add(paje, period)
  @calculate_add(asf, period)
  @calculate(crds_pfam, period)
  return period, af .+ cf .+ ars .+ aeeh .+ paje .+ asf .+ crds_pfam
end


@define_formula(prelsoc_cap, individu_definition, Float32, requested_period_default_value,
  label = "Prélèvements sociaux sur les revenus du capital",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&paf_dm=popup&paf_gm=content&typePage=cpr02&sfid=501&espId=1&impot=CS",
) do simulation, variable, period
  "Prélèvements sociaux sur les revenus du capital"
  period = YearPeriod(firstdayofmonth(period.start))
  prelsoc_fon_holder = calculate(simulation, "prelsoc_fon", period)
  @calculate(prelsoc_cap_lib_declarant1, period)
  @calculate(prelsoc_cap_bar_declarant1, period)
  prelsoc_pv_mo_holder = calculate(simulation, "prelsoc_pv_mo", period)
  prelsoc_pv_immo_holder = calculate(simulation, "prelsoc_pv_immo", period)
  prelsoc_fon = entity_to_person(prelsoc_fon_holder, period, VOUS)
  prelsoc_pv_immo = entity_to_person(prelsoc_pv_immo_holder, period, VOUS)
  prelsoc_pv_mo = entity_to_person(prelsoc_pv_mo_holder, period, VOUS)
  return period, prelsoc_fon .+ prelsoc_cap_lib_declarant1 .+ prelsoc_cap_bar_declarant1 .+ prelsoc_pv_mo .+ prelsoc_pv_immo
end


@define_formula(psoc, famille_definition, Float32, requested_period_default_value,
  label = "Total des prestations sociales",
  url = "http://fr.wikipedia.org/wiki/Prestation_sociale",
) do simulation, variable, period
  "Prestations sociales"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(pfam, period)
  @calculate(mini, period)
  @calculate(aides_logement, period)
  return period, pfam .+ mini .+ aides_logement
end


@define_formula(rev_cap, individu_definition, Float32, requested_period_default_value,
  label = "Revenus du patrimoine",
  url = "http://fr.wikipedia.org/wiki/Revenu#Revenu_du_Capital",
) do simulation, variable, period
  "Revenus du patrimoine"
  period = YearPeriod(firstdayofmonth(period.start))
  fon_holder = calculate(simulation, "fon", period)
  rev_cap_bar_holder = calculate(simulation, "rev_cap_bar", period)
  @calculate(cotsoc_bar_declarant1, period)
  rev_cap_lib_holder = calculate(simulation, "rev_cap_lib", period)
  @calculate(cotsoc_lib_declarant1, period)
  imp_lib_holder = calculate(simulation, "imp_lib", period)
  @calculate(rac, period)
  fon = entity_to_person(fon_holder, period, VOUS)
  imp_lib = entity_to_person(imp_lib_holder, period, VOUS)
  rev_cap_bar = entity_to_person(rev_cap_bar_holder, period, VOUS)
  rev_cap_lib = entity_to_person(rev_cap_lib_holder, period, VOUS)
  return period, fon .+ rev_cap_bar .+ cotsoc_bar_declarant1 .+ rev_cap_lib .+ cotsoc_lib_declarant1 .+ imp_lib .+ rac
end


@define_formula(rev_trav, individu_definition, Float32, requested_period_default_value,
  label = "Revenus du travail (salariés et non salariés)",
  url = "http://fr.wikipedia.org/wiki/Revenu_du_travail",
) do simulation, variable, period
  "Revenu du travail"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_sal, period)
  @calculate(rag, period)
  @calculate(ric, period)
  @calculate(rnc, period)
  return period, rev_sal .+ rag .+ ric .+ rnc
end


@define_formula(revdisp, menage_definition, Float32, requested_period_default_value,
  label = "Revenu disponible du ménage",
  url = "http://fr.wikipedia.org/wiki/Revenu_disponible",
) do simulation, variable, period
  """Revenu disponible - ménage
  'men'
  """
  period = first_day(YearPeriod(period.start))
  rev_trav_holder = calculate(simulation, "rev_trav", period)
  pen_holder = calculate(simulation, "pen", period)
  rev_cap_holder = calculate(simulation, "rev_cap", period)
  psoc_holder = calculate(simulation, "psoc", period)
  ppe_holder = calculate(simulation, "ppe", period)
  @calculate(impo, period)
  pen = sum_person_in_entity(pen_holder, get_entity(variable), period)
  ppe = entity_to_person(ppe_holder, period, VOUS)
  ppe = sum_person_in_entity(ppe, get_entity(variable), period)
  psoc = entity_to_person(psoc_holder, period, CHEF)
  psoc = sum_person_in_entity(psoc, get_entity(variable), period)
  rev_cap = sum_person_in_entity(rev_cap_holder, get_entity(variable), period)
  rev_trav = sum_person_in_entity(rev_trav_holder, get_entity(variable), period)
  return period, rev_trav .+ pen .+ rev_cap .+ psoc .+ ppe .+ impo
end


@define_formula(revenu_initial_individu, individu_definition, Float32, requested_period_default_value,
  label = "Revenu initial de l'individu",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(cotisations_patronales_contributives, period)
  @calculate(cotisations_salariales_contributives, period)
  @calculate(pen, period)
  @calculate(rev_cap, period)
  @calculate(rev_trav, period)
  return period, rev_trav .+ pen .+ rev_cap .- cotisations_patronales_contributives .- cotisations_salariales_contributives
end


@define_formula(revenu_net_individu, individu_definition, Float32, requested_period_default_value,
  label = "Revenu net de l'individu",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(pen, period)
  @calculate(rev_cap, period)
  @calculate(rev_trav, period)
  return period, pen .+ rev_cap .+ rev_trav
end


@define_formula(revini, menage_definition, Float32, entity_to_entity_period_value,
  label = "Revenu initial du ménage",
) do simulation, variable, period
  @calculate(revenu_initial_individu, period, accept_other_period = true)
  return period, sum_person_in_entity(revenu_initial_individu, get_entity(variable))
end


@define_formula(revnet, menage_definition, Float32, entity_to_entity_period_value,
  label = "Revenu net du ménage",
  url = "(u'http://impotsurlerevenu.org/definitions/115-revenu-net-imposable.php',)",
) do simulation, variable, period
  @calculate(revenu_net_individu, period, accept_other_period = true)
  return period, sum_person_in_entity(revenu_net_individu, get_entity(variable))
end


@define_formula(typ_men, menage_definition, Int32, requested_period_last_value,
  label = "Type de ménage",
) do simulation, variable, period
  """type de menage
  'men'
  TODO: prendre les enfants du ménage et non ceux de la famille
  """
  period = YearPeriod(firstdayofmonth(period.start))
  isol_holder = calculate(simulation, "isol", period)
  af_nbenf_holder = calculate(simulation, "af_nbenf", period)
  af_nbenf = entity_to_person(af_nbenf_holder, period, CHEF)
  af_nbenf = sum_person_in_entity(af_nbenf, get_entity(variable), period)
  isol = entity_to_person(isol_holder, period, CHEF)
  isol = sum_person_in_entity(isol, get_entity(variable), period)
  _0_kid = af_nbenf .== 0
  _1_kid = af_nbenf .== 1
  _2_kid = af_nbenf .== 2
  _3_kid = af_nbenf .>= 3
  return period, (0 .* (isol & _0_kid) .+ 1 .* (!isol & _0_kid) .+ 2 .* (!isol & _1_kid) .+ 3 .* (!isol & _2_kid) .+ 4 .* (!isol & _3_kid) .+ 5 .* (isol & _1_kid) .+ 6 .* (isol & _2_kid) .+ 7 .* (isol & _3_kid))
end


@define_formula(uc, menage_definition, Float32, requested_period_default_value,
  label = "Unités de consommation",
) do simulation, variable, period
  """Calcule le nombre d'unités de consommation du ménage avec l'échelle de l'insee
  'men'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  agem_holder = calculate(simulation, "agem", period)
  agem = split_person_by_role(agem_holder, get_entity(variable), period)
  uc_adt = 0.5
  uc_enf = 0.3
  uc = 0.5
  for agm in values(agem)
    age = floor(agm ./ 12)
    adt = (15 .<= age) & (age .<= 150)
    enf = (0 .<= age) & (age .<= 14)
    uc += adt .* uc_adt .+ enf .* uc_enf
  end
  return period, uc
end
