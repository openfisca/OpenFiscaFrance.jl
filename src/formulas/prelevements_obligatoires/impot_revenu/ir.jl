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


@define_formula(abat_sal_pen, individu_definition, Float32, requested_period_default_value,
  label = "Abattement de 20% sur les salaires",
  start_date = Date(2002, 1, 1),
  stop_date = Date(2005, 12, 31),
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(salcho_imp, period)
  @calculate(pen_net, period)
  abatsalpen = legislation_at(simulation, period.start)["ir"]["tspr"]["abatsalpen"]
  return period, min(abatsalpen["taux"] .* max(salcho_imp .+ pen_net, 0), abatsalpen["max"])
end


@define_formula(abat_spe, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Abattements spéciaux",
  url = "http://bofip.impots.gouv.fr/bofip/2036-PGP",
) do simulation, variable, period
  """Abattements spéciaux

  - pour personnes âges ou invalides : âgé(e) de plus de 65 ans
    ou invalide (titulaire d’une pension d’invalidité militaire ou d’accident
    du travail d’au moins 40 % ou titulaire de la carte d’invalidité),
    abattement de 2 172 € si rng du foyer fiscal inférieur à 13 370 €
                  1 086 € si rng  compris entre 13 370 € et 21 570 €.
    Abattement doublé si conjoint remplit également ces conditions
    d’âge ou d’invalidité.
  - pour enfants à charge ayant fondé un foyer distinct : Si  rattachement
    enfants mariés ou pacsés ou enfants  célibataires, veufs, divorcés, séparés, chargés de famille,
    abattement 5 495 € par personne ainsi rattachée.
    Si l’enfant de la personne rattachée est réputé à charge de
    l’un et l’autre de ses parents (garde alternée), cet abattement est divisé
    par deux soit 2 748€. Exemple : 10 990 € pour un jeune ménage et 8 243 €
    pour un célibataire avec un jeune enfant en résidence alternée.
  """
  period = YearPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  @calculate(caseP, period)
  @calculate(caseF, period)
  @calculate(rng, period)
  @calculate(nbN, period)
  abattements_speciaux = legislation_at(simulation, period.start)["ir"]["abattements_speciaux"]
  age = split_person_by_role(age_holder, get_entity(variable), period, [VOUS, CONJ])
  ageV, ageC = age[VOUS], age[CONJ]
  invV, invC = caseP, caseF
  nb_elig_as = (1 .* (((ageV .>= 65) | invV) & (ageV .> 0)) .+ 1 .* (((ageC .>= 65) | invC) & (ageC .> 0)))
  as_inv = (nb_elig_as .* abattements_speciaux["inv_montant"] .* ((rng .<= abattements_speciaux["inv_max1"]) .+ ((rng .> abattements_speciaux["inv_max1"]) & (rng .<= abattements_speciaux["inv_max2"])) .* 0.5))
  as_enf = nbN .* abattements_speciaux["enf_montant"]
  return period, min(rng, as_inv .+ as_enf)
end


@define_formula(age, individu_definition, Int32, requested_period_last_value,
  cell_default = -9999,
  cell_format = "age",
  label = "Âge (en années)",
  value_at_period_to_cell = variable_definition::VariableDefinition -> pipe(
    value_at_period_to_integer(variable_definition),
    first_match(
      test_greater_or_equal(0),
      test_equal(-9999),
    ),
  ),
) do simulation, variable, period
  @variable_at(birth, period, nothing)
  if birth === nothing
    @variable_at(agem, period, nothing)
    if agem !== nothing
      return period, div(agem, 12)
    end
    @calculate(birth, period)
  end
  return period, floor(int((period.start .- birth)) / 365.25)
end


@define_formula(agem, individu_definition, Int32, requested_period_last_value,
  cell_default = -9999,
  cell_format = "months",
  label = "Âge (en mois)",
  value_at_period_to_cell = variable_definition::VariableDefinition -> pipe(
    value_at_period_to_integer(variable_definition),
    first_match(
      test_greater_or_equal(0),
      test_equal(-9999),
    ),
  ),
) do simulation, variable, period
  @variable_at(birth, period, nothing)
  if birth === nothing
    @variable_at(age, period, nothing)
    if age !== nothing
      return period, age .* 12
    end
    @calculate(birth, period)
  end
  return period, floor(int((period.start .- birth)) * 12 / 365.25)
end


@define_formula(alv, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Pensions alimentaires versées",
  url = "http://vosdroits.service-public.fr/particuliers/F2.xhtml",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(f6gi, period)
  @calculate(f6gj, period)
  @calculate(f6el, period)
  @calculate(f6em, period)
  @calculate(f6gp, period)
  @calculate(f6gu, period)
  return period, -(f6gi .+ f6gj .+ f6el .+ f6em .+ f6gp .+ f6gu)
end


@define_formula(alv_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "Pensions alimentaires versées (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(alv, period, accept_other_period = true)
  return period, entity_to_person(alv, [VOUS])
end


@define_formula(assiette_proflib, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  "Assiette régime microsociale pour les professions libérales"
  period = YearPeriod(firstdayofmonth(period.start))
  ebnc_impo_holder = calculate(simulation, "ebnc_impo", period)
  P = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  return period, sum_person_in_entity(ebnc_impo_holder, get_entity(variable), period)
end


@define_formula(assiette_service, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  "Assiette régime microsociale pour les prestations et services"
  period = YearPeriod(firstdayofmonth(period.start))
  ebic_imps_holder = calculate(simulation, "ebic_imps", period)
  return period, sum_person_in_entity(ebic_imps_holder, get_entity(variable), period)
end


@define_formula(assiette_vente, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  "Assiette régime microsociale pour les ventes"
  period = YearPeriod(firstdayofmonth(period.start))
  ebic_impv_holder = calculate(simulation, "ebic_impv", period)
  return period, sum_person_in_entity(ebic_impv_holder, get_entity(variable), period)
end


@define_formula(avantage_qf, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ir_ss_qf, period)
  @calculate(ir_plaf_qf, period)
  return period, ir_ss_qf .- ir_plaf_qf
end


@define_formula(avf, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Avoir fiscal et crédits d'impôt (zavff)"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f2ab, period)
  return period, f2ab
end


@define_formula(cehr, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Contribution exceptionnelle sur les hauts revenus",
  url = "http://www.legifrance.gouv.fr/affichCode.do?cidTexte=LEGITEXT000006069577&idSectionTA=LEGISCTA000025049019",
) do simulation, variable, period
  """Contribution exceptionnelle sur les hauts revenus
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rfr, period)
  @calculate(nb_adult, period)
  bareme = legislation_at(simulation, period.start)["ir"]["cehr"]
  return period, apply_tax_scale(bareme, rfr ./ nb_adult) .* nb_adult
end


@define_formula(celdiv, foyer_fiscal_definition, Bool, requested_period_last_value) do simulation, variable, period
  """Célibataire (2) ou divorcé (3)
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  statmarit_holder = calculate(simulation, "statmarit", period)
  statmarit = single_person_in_entity(statmarit_holder, get_entity(variable), period, VOUS)
  return period, (statmarit .== 2) | (statmarit .== 3)
end


@define_formula(cont_rev_loc, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2001, 1, 1),
) do simulation, variable, period
  "Contribution sur les revenus locatifs"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f4bl, period)
  crl = legislation_at(simulation, period.start)["ir"]["crl"]
  return period, round(crl["taux"] .* (f4bl .>= crl["seuil"]) .* f4bl)
end


@define_formula(csg_deduc, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Csg déductible sur le patrimoine",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&typePage=cpr02&sfid=503&espId=1&communaute=1&impot=CS",
) do simulation, variable, period
  "CSG déductible"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rbg, period)
  @calculate(csg_deduc_patrimoine, period)
  return period, min(csg_deduc_patrimoine, max(rbg, 0))
end


@define_formula(csg_deduc_patrimoine, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Csg déductible sur le patrimoine",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&typePage=cpr02&sfid=503&espId=1&communaute=1&impot=CS",
) do simulation, variable, period
  """CSG déductible sur les revenus du patrimoine
  http://bofip.impots.gouv.fr/bofip/887-PGP
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6de, period)
  return period, max(f6de, 0)
end


@define_formula(csg_deduc_patrimoine_simulated, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Csg déductible sur le patrimoine simulée",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&typePage=cpr02&sfid=503&espId=1&communaute=1&impot=CS",
) do simulation, variable, period
  """Cette fonction simule le montant mentionné dans la case f6de de la déclaration 2042
  http://bofip.impots.gouv.fr/bofip/887-PGP
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_cat_rfon, period)
  @calculate(rev_cap_bar, period)
  @calculate(rto, period)
  taux = legislation_at(simulation, period.start)["csg"]["capital"]["deduc"]
  patrimoine_deduc = rev_cat_rfon .+ rev_cap_bar .+ rto
  return period, taux .* patrimoine_deduc
end


@define_formula(decote, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "décote",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ir_plaf_qf, period)
  decote = legislation_at(simulation, period.start)["ir"]["decote"]
  return period, (ir_plaf_qf .< decote["seuil"]) .* (decote["seuil"] .- ir_plaf_qf) .* 0.5
end


@define_formula(defacc, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Déficit industriels et commerciaux non professionnels des années antérieures",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f5rn, period)
  @calculate(f5ro, period)
  @calculate(f5rp, period)
  @calculate(f5rq, period)
  @calculate(f5rr, period)
  @calculate(f5rw, period)
  macc_impv_holder = calculate(simulation, "macc_impv", period)
  macc_imps_holder = calculate(simulation, "macc_imps", period)
  nacc_impn_holder = calculate(simulation, "nacc_impn", period)
  macc_pvct_holder = calculate(simulation, "macc_pvct", period)
  aacc_impn_holder = calculate(simulation, "aacc_impn", period)
  cga = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  microentreprise = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  
  function abat_rpns(rev, P)
    return max(0, rev .- min(rev, max(P["taux"] .* min(P["max"], rev), P["min"])))
  end

  nacc_impn = sum_person_in_entity(nacc_impn_holder, get_entity(variable), period)
  macc_pvct = sum_person_in_entity(macc_pvct_holder, get_entity(variable), period)
  macc_impv = sum_person_in_entity(macc_impv_holder, get_entity(variable), period)
  macc_imps = sum_person_in_entity(macc_imps_holder, get_entity(variable), period)
  aacc_impn = sum_person_in_entity(aacc_impn_holder, get_entity(variable), period)
  macc_timp = abat_rpns(macc_impv, microentreprise["vente"]) .+ abat_rpns(macc_imps, microentreprise["servi"])
  return period, (min(f5rn .+ f5ro .+ f5rp .+ f5rq .+ f5rr .+ f5rw, aacc_impn .+ macc_pvct .+ macc_timp .+ (1 + cga) .* nacc_impn))
end


@define_formula(deficit_ante, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Déficit global antérieur",
  url = "http://impotsurlerevenu.org/declaration-de-revenus-fonciers-2044/796-deficits-anterieurs-restant-a-imputer-cadre-450.php",
) do simulation, variable, period
  "Déficits antérieurs"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f6fa, period)
  @calculate(f6fb, period)
  @calculate(f6fc, period)
  @calculate(f6fd, period)
  @calculate(f6fe, period)
  @calculate(f6fl, period)
  return period, f6fa .+ f6fb .+ f6fc .+ f6fd .+ f6fe .+ f6fl
end


@define_formula(deficit_rcm, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Deficit capitaux mobiliers",
  start_date = Date(2009, 1, 1),
  url = "http://www.lefigaro.fr/impots/2008/04/25/05003-20080425ARTFIG00254-les-subtilites-des-revenus-de-capitaux-mobiliers-.php",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f2aa, period)
  @calculate(f2al, period)
  @calculate(f2am, period)
  @calculate(f2an, period)
  @calculate(f2aq, period)
  @calculate(f2ar, period)
  _P = legislation_at(simulation, period.start)
  return period, f2aa .+ f2al .+ f2am .+ f2an .+ f2aq .+ f2ar
end


@define_formula(defmeu, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Déficit des locations meublées non professionnelles des années antérieures",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f5ga, period)
  @calculate(f5gb, period)
  @calculate(f5gc, period)
  @calculate(f5gd, period)
  @calculate(f5ge, period)
  @calculate(f5gf, period)
  @calculate(f5gg, period)
  @calculate(f5gh, period)
  @calculate(f5gi, period)
  @calculate(f5gj, period)
  alnp_imps_holder = calculate(simulation, "alnp_imps", period)
  nacc_defs_holder = calculate(simulation, "nacc_defs", period)
  nacc_defs = sum_person_in_entity(nacc_defs_holder, get_entity(variable), period)
  alnp_imps = sum_person_in_entity(alnp_imps_holder, get_entity(variable), period)
  return period, min(f5ga .+ f5gb .+ f5gc .+ f5gd .+ f5ge .+ f5gf .+ f5gg .+ f5gh .+ f5gi .+ f5gj, alnp_imps .+ nacc_defs)
end


@define_formula(defncn, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Déficit non commerciaux non professionnels des années antérieures",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f5ht, period)
  @calculate(f5it, period)
  @calculate(f5jt, period)
  @calculate(f5kt, period)
  @calculate(f5lt, period)
  @calculate(f5mt, period)
  mncn_impo_holder = calculate(simulation, "mncn_impo", period)
  mncn_pvct_holder = calculate(simulation, "mncn_pvct", period)
  cncn_aimp_holder = calculate(simulation, "cncn_aimp", period)
  cncn_bene_holder = calculate(simulation, "cncn_bene", period)
  cga = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  spbnc = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]["specialbnc"]
  
  function abat_rpns(rev, P)
    return max(0, rev .- min(rev, max(P["taux"] .* min(P["max"], rev), P["min"])))
  end

  cncn_bene = sum_person_in_entity(cncn_bene_holder, get_entity(variable), period)
  mncn_impo = sum_person_in_entity(mncn_impo_holder, get_entity(variable), period)
  mncn_pvct = sum_person_in_entity(mncn_pvct_holder, get_entity(variable), period)
  cncn_aimp = sum_person_in_entity(cncn_aimp_holder, get_entity(variable), period)
  return period, min(f5ht .+ f5it .+ f5jt .+ f5kt .+ f5lt .+ f5mt, abat_rpns(mncn_impo, spbnc) .+ mncn_pvct .+ cncn_aimp .+ (1 + cga) .* cncn_bene)
end


@define_formula(defrag, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Déficit agricole des années antérieures",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f5qf, period)
  @calculate(f5qg, period)
  @calculate(f5qn, period)
  @calculate(f5qo, period)
  @calculate(f5qp, period)
  @calculate(f5qq, period)
  frag_impo_holder = calculate(simulation, "frag_impo", period)
  nrag_impg_holder = calculate(simulation, "nrag_impg", period)
  frag_fore_holder = calculate(simulation, "frag_fore", period)
  frag_pvct_holder = calculate(simulation, "frag_pvct", period)
  arag_impg_holder = calculate(simulation, "arag_impg", period)
  cga = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  frag_fore = sum_person_in_entity(frag_fore_holder, get_entity(variable), period)
  frag_impo = sum_person_in_entity(frag_impo_holder, get_entity(variable), period)
  arag_impg = sum_person_in_entity(arag_impg_holder, get_entity(variable), period)
  nrag_impg = sum_person_in_entity(nrag_impg_holder, get_entity(variable), period)
  frag_pvct = sum_person_in_entity(frag_pvct_holder, get_entity(variable), period)
  return period, min(f5qf .+ f5qg .+ f5qn .+ f5qo .+ f5qp .+ f5qq, (1 + cga) .* (frag_impo .+ nrag_impg .+ frag_pvct) .+ arag_impg .+ frag_fore)
end


@define_formula(enfant_a_charge, individu_definition, Bool, requested_period_last_value,
  label = "Enfant à charge non marié, de moins de 18 ans au 1er janvier de l'année de perception des revenus, ou né durant la même année, ou handicapés quel que soit son âge",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(age, period)
  @calculate(alt, period)
  @calculate(inv, period)
  @calculate(quifoy, period)
  return period, (((quifoy .>= 2) & ((age .< 18) | inv)) & !alt)
end


@define_formula(enfant_a_charge_garde_alternee, individu_definition, Bool, requested_period_last_value,
  label = "Enfant à charge en résidence alternée, non marié, de moins de 18 ans au 1er janvier de l'année de perception des revenus, ou né durant la même année ou handicapés quel que soit son âge",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(age, period)
  @calculate(alt, period)
  @calculate(inv, period)
  @calculate(quifoy, period)
  return period, (((quifoy .>= 2) & ((age .< 18) | inv)) & alt)
end


@define_formula(enfant_a_charge_garde_alternee_invalide, individu_definition, Bool, requested_period_last_value,
  label = "Enfant à charge en résidence alternée titulaire de la carte d'invalidité",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(alt, period)
  @calculate(inv, period)
  @calculate(quifoy, period)
  return period, (((quifoy .>= 2) & inv) & alt)
end


@define_formula(enfant_a_charge_invalide, individu_definition, Bool, requested_period_last_value,
  label = "Enfant à charge titulaire de la carte d'invalidité",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(alt, period)
  @calculate(inv, period)
  @calculate(quifoy, period)
  return period, (((quifoy .>= 2) & inv) & !alt)
end


@define_formula(enfant_majeur_celibataire_sans_enfant, individu_definition, Bool, requested_period_last_value,
  label = "Enfant majeur célibataire sans enfant",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(age, period)
  @calculate(inv, period)
  @calculate(quifoy, period)
  return period, (((quifoy .>= 2) & (age .>= 18)) & !inv)
end


@define_formula(fon, foyer_fiscal_definition, Float32, requested_period_default_value,
  url = "http://impotsurlerevenu.org/definitions/220-revenu-foncier.php",
) do simulation, variable, period
  "Revenus fonciers"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f4ba, period)
  @calculate(f4bb, period)
  @calculate(f4bc, period)
  @calculate(f4bd, period)
  @calculate(f4be, period)
  microfoncier = legislation_at(simulation, period.start)["ir"]["microfoncier"]
  return period, f4ba .- f4bb .- f4bc .+ round(f4be .* (1 - microfoncier["taux"]))
end


@define_formula(glo, individu_definition, Float32, requested_period_default_value,
  label = "Gain de levée d'options",
  url = "http://www.officeo.fr/imposition-au-bareme-progressif-de-l-impot-sur-le-revenu-des-gains-de-levee-d-options-sur-actions-et-attributions-d-actions-gratuites",
) do simulation, variable, period
  "Gains de levée d'option"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f1tv, period)
  @calculate(f1tw, period)
  @calculate(f1tx, period)
  @calculate(f3vf, period)
  @calculate(f3vi, period)
  @calculate(f3vj, period)
  return period, f1tv .+ f1tw .+ f1tx .+ f3vf .+ f3vi .+ f3vj
end


@define_formula(iai, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Impôt avant imputations",
  url = "http://forum-juridique.net-iris.fr/finances-fiscalite-assurance/43963-declaration-impots.html",
) do simulation, variable, period
  "impôt avant imputation de l'irpp"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(iaidrdi, period)
  @calculate(plus_values, period)
  @calculate(cont_rev_loc, period)
  @calculate(teicaa, period)
  return period, iaidrdi .+ plus_values .+ cont_rev_loc .+ teicaa
end


@define_formula(iaidrdi, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Impôt après imputation des réductions d'impôt"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ip_net, period)
  @calculate(reductions, period)
  return period, ip_net .- reductions
end


@define_formula(imp_lib, foyer_fiscal_definition, Float32, requested_period_default_value,
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_ctrb_soc&paf_dm=popup&paf_gm=content&typePage=cpr02&sfid=501&espId=1&impot=CS",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    "Prelèvement libératoire sur les revenus du capital"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2dh, period)
    @calculate(f2ee, period)
    _P = legislation_at(simulation, period.start)
    prelevement_liberatoire = legislation_at(simulation, period.start)["ir"]["rvcm"]["prelevement_liberatoire"]
    out = -(prelevement_liberatoire["assvie"] .* f2dh .+ prelevement_liberatoire["autre"] .* f2ee)
    return period, out
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Prelèvement libératoire sur les revenus du capital"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2da, period)
    @calculate(f2dh, period)
    @calculate(f2ee, period)
    _P = legislation_at(simulation, period.start)
    finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
    prelevement_liberatoire = legislation_at(simulation, period.start)["ir"]["rvcm"]["prelevement_liberatoire"]
    out = -(prelevement_liberatoire["action"] .* f2da .+ prelevement_liberatoire["autre"] .* f2ee) * !finpfl .- prelevement_liberatoire["assvie"] .* f2dh
    return period, out
  else
    return period, default_array(variable)
  end
end


@define_formula(indu_plaf_abat_pen, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Plafonnement de l'abattement de 10% sur les pensions du foyer
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  rev_pen_holder = calculate(simulation, "rev_pen", period)
  pen_net_holder = calculate(simulation, "pen_net", period)
  abatpen = legislation_at(simulation, period.start)["ir"]["tspr"]["abatpen"]
  pen_net = sum_person_in_entity(pen_net_holder, get_entity(variable), period)
  rev_pen = sum_person_in_entity(rev_pen_holder, get_entity(variable), period)
  abat = rev_pen .- pen_net
  return period, abat .- min(abat, abatpen["max"])
end


@define_formula(ip_net, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "irpp après décote"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ir_plaf_qf, period)
  cncn_info_holder = calculate(simulation, "cncn_info", period)
  @calculate(decote, period)
  taux = legislation_at(simulation, period.start)["ir"]["rpns"]["taux16"]
  return period, max(0, ir_plaf_qf .+ sum_person_in_entity(cncn_info_holder, get_entity(variable), period) .* taux .- decote)
end


@define_formula(ir_brut, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Impot sur le revenu avant non imposabilité et plafonnement du quotient
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nbptr, period)
  @calculate(taux_effectif, period)
  @calculate(rni, period)
  bareme = legislation_at(simulation, period.start)["ir"]["bareme"]
  return period, (taux_effectif .== 0) .* nbptr .* apply_tax_scale(bareme, rni ./ nbptr) .+ taux_effectif .* rni
end


@define_formula(ir_plaf_qf, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Impôt après plafonnement du quotient familial et réduction complémentaire"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ir_brut, period)
  @calculate(ir_ss_qf, period)
  @calculate(nb_adult, period)
  @calculate(nb_pac, period)
  @calculate(nbptr, period)
  @calculate(marpac, period)
  @calculate(veuf, period)
  @calculate(jveuf, period)
  @calculate(celdiv, period)
  @calculate(caseE, period)
  @calculate(caseF, period)
  @calculate(caseG, period)
  @calculate(caseH, period)
  @calculate(caseK, period)
  @calculate(caseN, period)
  @calculate(caseP, period)
  @calculate(caseS, period)
  @calculate(caseT, period)
  @calculate(caseW, period)
  @calculate(nbF, period)
  @calculate(nbG, period)
  @calculate(nbH, period)
  @calculate(nbI, period)
  @calculate(nbR, period)
  plafond_qf = legislation_at(simulation, period.start)["ir"]["plafond_qf"]
  A = ir_ss_qf
  I = ir_brut
  aa0 = (nbptr .- nb_adult) .* 2
  aa1 = min((nbptr .- 1) .* 2, 2) ./ 2
  aa2 = max((nbptr .- 2) .* 2, 0)
  condition61 = celdiv & caseT
  B1 = plafond_qf["celib_enf"] .* aa1 .+ plafond_qf["marpac"] .* aa2
  B2 = plafond_qf["marpac"] .* aa0
  condition63 = (celdiv | (veuf & !jveuf)) & !caseN & (nb_pac .== 0) & (caseK | caseE) & (caseH .< 1981)
  B3 = plafond_qf["celib"]
  B = B1 .* condition61 .+ B2 .* !(condition61 | condition63) .+ B3 .* (condition63 & !condition61)
  C = max(0, A .- B)
  IP0 = max(I, C)
  condition62a = (I .>= C)
  condition62b = (I .< C)
  condition62caa0 = (celdiv | (veuf & !jveuf))
  condition62caa1 = (nb_pac .== 0) & (caseP | caseG | caseF | caseW)
  condition62caa2 = caseP & ((nbF .- nbG .> 0) | (nbH .- nbI .> 0))
  condition62caa3 = !caseN & (caseE | caseK) & (caseH .>= 1981)
  condition62caa = condition62caa0 & (condition62caa1 | condition62caa2 | condition62caa3)
  condition62cab = (marpac | jveuf) & caseS & !(caseP | caseF)
  condition62ca = (condition62caa | condition62cab)
  condition62cb = ((nbG .+ nbR .+ nbI) .> 0) | caseP | caseF
  D = plafond_qf["reduc_postplafond"] .* (condition62ca .+ ~condition62ca .* condition62cb .* (1 .* caseP .+ 1 .* caseF .+ nbG .+ nbR .+ nbI ./ 2))
  E = max(0, A .- I .- B)
  Fo = D .* (D .<= E) .+ E .* (E .< D)
  IP1 = IP0 .- Fo
  return period, condition62a .* IP0 .+ condition62b .* IP1
end


@define_formula(ir_ss_qf, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Impôt sans quotient familial"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ir_brut, period)
  @calculate(rni, period)
  @calculate(nb_adult, period)
  bareme = legislation_at(simulation, period.start)["ir"]["bareme"]
  A = apply_tax_scale(bareme, rni ./ nb_adult)
  return period, nb_adult .* A
end


@define_formula(irpp, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Impôt sur le revenu des personnes physiques",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_impot_revenu&espId=1&impot=IR&sfid=50",
) do simulation, variable, period
  "Montant après seuil de recouvrement (hors ppe)"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(iai, period)
  @calculate(credits_impot, period)
  @calculate(cehr, period)
  P = legislation_at(simulation, period.start)["ir"]["recouvrement"]
  pre_result = iai .- credits_impot .+ cehr
  return period, ((iai .> P["seuil"]) .* ((pre_result .< P["min"]) .* (pre_result .> 0) .* iai .* 0 .+ ((pre_result .<= 0) .+ (pre_result .>= P["min"])) .* (-pre_result)) .+ (iai .<= P["seuil"]) .* ((pre_result .< 0) .* (-pre_result) .+ (pre_result .>= 0) .* 0 .* iai))
end


@define_formula(jveuf, foyer_fiscal_definition, Bool, requested_period_last_value) do simulation, variable, period
  """Jeune Veuf
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  statmarit_holder = calculate(simulation, "statmarit", period)
  statmarit = single_person_in_entity(statmarit_holder, get_entity(variable), period, VOUS)
  return period, statmarit .== 6
end


@define_formula(marpac, foyer_fiscal_definition, Bool, requested_period_last_value) do simulation, variable, period
  """Marié (1) ou Pacsé (5)
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  statmarit_holder = calculate(simulation, "statmarit", period)
  statmarit = single_person_in_entity(statmarit_holder, get_entity(variable), period, VOUS)
  return period, (statmarit .== 1) | (statmarit .== 5)
end


@define_formula(microentreprise, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  ebnc_impo_holder = calculate(simulation, "ebnc_impo", period)
  ebic_imps_holder = calculate(simulation, "ebic_imps", period)
  ebic_impv_holder = calculate(simulation, "ebic_impv", period)
  me = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  ebnc_impo = sum_person_in_entity(ebnc_impo_holder, get_entity(variable), period)
  ebic_imps = sum_person_in_entity(ebic_imps_holder, get_entity(variable), period)
  ebic_impv = sum_person_in_entity(ebic_impv_holder, get_entity(variable), period)
  return period, (ebnc_impo .* (1 - me["specialbnc"]["taux"]) .+ ebic_imps .* (1 - me["servi"]["taux"]) .+ ebic_impv .* (1 - me["vente"]["taux"]))
end


@define_formula(microsocial, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
  url = "http://fr.wikipedia.org/wiki/R%C3%A9gime_micro-social",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(assiette_service, period)
  @calculate(assiette_vente, period)
  @calculate(assiette_proflib, period)
  microsocial = legislation_at(simulation, period.start)["ir"]["rpns"]["microsocial"]
  return period, (assiette_service .* microsocial["servi"] .+ assiette_vente .* microsocial["vente"] .+ assiette_proflib .* microsocial["bnc"])
end


@define_formula(nat_imp, foyer_fiscal_definition, Bool, requested_period_last_value) do simulation, variable, period
  "Renvoie True si le foyer est imposable, False sinon"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(iai, period)
  @calculate(credits_impot, period)
  @calculate(cehr, period)
  return period, (iai .- credits_impot .+ cehr) .> 0
end


@define_formula(nbF, foyer_fiscal_definition, Int32, entity_to_entity_period_value,
  cerfa_field = "F",
  label = "Nombre d'enfants à charge  non mariés, de moins de 18 ans au 1er janvier de l'année de perception des revenus, ou nés durant la même année ou handicapés quel que soit leur âge",
) do simulation, variable, period
  @calculate(enfant_a_charge, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_a_charge, get_entity(variable))
end


@define_formula(nbG, foyer_fiscal_definition, Int32, entity_to_entity_period_value,
  cerfa_field = "G",
  label = "Nombre d'enfants à charge titulaires de la carte d'invalidité",
) do simulation, variable, period
  @calculate(enfant_a_charge_invalide, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_a_charge_invalide, get_entity(variable))
end


@define_formula(nbH, foyer_fiscal_definition, Int32, entity_to_entity_period_value,
  cerfa_field = "H",
  label = "Nombre d'enfants à charge en résidence alternée, non mariés de moins de 18 ans au 1er janvier de l'année de perception des revenus, ou nés durant la même année ou handicapés quel que soit leur âge",
) do simulation, variable, period
  @calculate(enfant_a_charge_garde_alternee, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_a_charge_garde_alternee, get_entity(variable))
end


@define_formula(nbI, foyer_fiscal_definition, Int32, entity_to_entity_period_value,
  cerfa_field = "I",
  label = "Nombre d'enfants à charge en résidence alternée titulaires de la carte d'invalidité",
) do simulation, variable, period
  @calculate(enfant_a_charge_garde_alternee_invalide, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_a_charge_garde_alternee_invalide, get_entity(variable))
end


@define_formula(nbJ, foyer_fiscal_definition, Int32, entity_to_entity_period_value,
  cerfa_field = "J",
  label = "Nombre d'enfants majeurs célibataires sans enfant",
) do simulation, variable, period
  @calculate(enfant_majeur_celibataire_sans_enfant, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_majeur_celibataire_sans_enfant, get_entity(variable))
end


@define_formula(nb_adult, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(marpac, period)
  @calculate(celdiv, period)
  @calculate(veuf, period)
  return period, 2 .* marpac .+ 1 .* (celdiv | veuf)
end


@define_formula(nb_pac, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nbF, period)
  @calculate(nbJ, period)
  @calculate(nbR, period)
  return period, nbF .+ nbJ .+ nbR
end


@define_formula(nbptr, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Nombre de parts",
  url = "http://vosdroits.service-public.fr/particuliers/F2705.xhtml",
) do simulation, variable, period
  """Nombre de parts du foyer
  'foy'
  note 1 enfants et résidence alternée (formulaire 2041 GV page 10)

  quotient_familial.conj : nb part associées au conjoint d'un couple marié ou pacsé
  quotient_familial.enf1 : nb part 2 premiers enfants
  quotient_familial.enf2 : nb part enfants de rang 3 ou plus
  quotient_familial.inv1 : nb part supp enfants invalides (I, G)
  quotient_familial.inv2 : nb part supp adultes invalides (R)
  quotient_familial.not31 : nb part supp note 3 : cases W ou G pour veuf, celib ou div
  quotient_familial.not32 : nb part supp note 3 : personne seule ayant élevé des enfants
  quotient_familial.not41 : nb part supp adultes invalides (vous et/ou conjoint) note 4
  quotient_familial.not42 : nb part supp adultes anciens combattants (vous et/ou conjoint) note 4
  quotient_familial.not6 : nb part supp note 6
  quotient_familial.isol : demi-part parent isolé (T)
  quotient_familial.edcd : enfant issu du mariage avec conjoint décédé;
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nb_pac, period)
  @calculate(marpac, period)
  @calculate(celdiv, period)
  @calculate(veuf, period)
  @calculate(jveuf, period)
  @calculate(nbF, period)
  @calculate(nbG, period)
  @calculate(nbH, period)
  @calculate(nbI, period)
  @calculate(nbR, period)
  @calculate(nbJ, period)
  @calculate(caseP, period)
  @calculate(caseW, period)
  @calculate(caseG, period)
  @calculate(caseE, period)
  @calculate(caseK, period)
  @calculate(caseN, period)
  @calculate(caseF, period)
  @calculate(caseS, period)
  @calculate(caseL, period)
  @calculate(caseT, period)
  quotient_familial = legislation_at(simulation, period.start)["ir"]["quotient_familial"]
  no_pac = nb_pac .== 0
  has_pac = !no_pac
  no_alt = nbH .== 0
  has_alt = !no_alt
  enf1 = (no_pac & has_alt) .* (quotient_familial["enf1"] .* min(nbH, 2) .* 0.5 .+ quotient_familial["enf2"] .* max(nbH .- 2, 0) .* 0.5)
  enf2 = (has_pac & has_alt) .* ((nb_pac .== 1) .* (quotient_familial["enf1"] .* min(nbH, 1) .* 0.5 .+ quotient_familial["enf2"] .* max(nbH .- 1, 0) .* 0.5) .+ (nb_pac .> 1) .* (quotient_familial["enf2"] .* nbH .* 0.5))
  enf3 = quotient_familial["enf1"] .* min(nb_pac, 2) .+ quotient_familial["enf2"] .* max((nb_pac .- 2), 0)
  enf = enf1 .+ enf2 .+ enf3
  n2 = quotient_familial["inv1"] .* (nbG .+ nbI ./ 2) .+ quotient_familial["inv2"] .* nbR
  n31a = quotient_familial["not31a"] .* (no_pac & no_alt & caseP)
  n31b = quotient_familial["not31b"] .* (no_pac & no_alt & (caseW | caseG))
  n31 = max(n31a, n31b)
  n32 = quotient_familial["not32"] .* (no_pac & no_alt & ((caseE | caseK) & !caseN))
  n3 = max(n31, n32)
  n4 = max(quotient_familial["not41"] .* (1 .* caseP .+ 1 .* caseF), quotient_familial["not42"] .* (caseW | caseS))
  n51 = quotient_familial["cdcd"] .* (caseL & ((nbF .+ nbJ) .> 0))
  n52 = quotient_familial["isol"] .* caseT .* (((no_pac & has_alt) .* ((nbH .== 1) .* 0.5 .+ (nbH .>= 2))) .+ 1 .* has_pac)
  n5 = max(n51, n52)
  n6 = quotient_familial["not6"] .* (caseP & (has_pac | has_alt))
  n7 = quotient_familial["isol"] .* caseT .* ((no_pac & has_alt) .* ((nbH .== 1) .* 0.5 .+ (nbH .>= 2)) .+ 1 .* has_pac)
  m = 1 .+ quotient_familial["conj"] .+ enf .+ n2 .+ n4
  v = 1 .+ enf .+ n2 .+ n3 .+ n5 .+ n6
  c = 1 .+ enf .+ n2 .+ n3 .+ n6 .+ n7
  return period, (marpac | jveuf) .* m .+ (veuf & !jveuf) .* v .+ celdiv .* c
end


@define_formula(nombre_enfants_a_charge_menage, menage_definition, Int32, entity_to_entity_period_value,
  label = "Nombre d'enfants à charge  non mariés, de moins de 18 ans au 1er janvier de l'année de perception des revenus, ou nés durant la même année ou handicapés quel que soit leur âge",
) do simulation, variable, period
  @calculate(enfant_a_charge, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_a_charge, get_entity(variable))
end


@define_formula(nombre_enfants_majeurs_celibataires_sans_enfant, menage_definition, Int32, entity_to_entity_period_value,
  label = "Nombre d'enfants majeurs célibataires sans enfant",
) do simulation, variable, period
  @calculate(enfant_majeur_celibataire_sans_enfant, period, accept_other_period = true)
  return period, sum_person_in_entity(enfant_majeur_celibataire_sans_enfant, get_entity(variable))
end


@define_formula(pen_net, individu_definition, Float32, requested_period_default_value,
  label = "Pensions après abattements",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_pen, period)
  abatpen = legislation_at(simulation, period.start)["ir"]["tspr"]["abatpen"]
  return period, max(0, rev_pen .- round(max(abatpen["taux"] .* rev_pen, abatpen["min"])))
end


@define_formula(plus_values, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2007, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    """Taxation des plus value
    TODO: f3vt, 2013 f3Vg au barème / tout refaire
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    @calculate(f3vh, period)
    @calculate(f3vl, period)
    @calculate(f3vm, period)
    f3vi_holder = calculate(simulation, "f3vi", period)
    f3vf_holder = calculate(simulation, "f3vf", period)
    f3vd_holder = calculate(simulation, "f3vd", period)
    rpns_pvce_holder = calculate(simulation, "rpns_pvce", period)
    _P = legislation_at(simulation, period.start)
    plus_values = legislation_at(simulation, period.start)["ir"]["plus_values"]
    rpns_pvce = sum_person_in_entity(rpns_pvce_holder, get_entity(variable), period)
    f3vd = single_person_in_entity(f3vd_holder, get_entity(variable), period, VOUS)
    f3sd = single_person_in_entity(f3vd_holder, get_entity(variable), period, CONJ)
    f3vi = single_person_in_entity(f3vi_holder, get_entity(variable), period, VOUS)
    f3si = single_person_in_entity(f3vi_holder, get_entity(variable), period, CONJ)
    f3vf = single_person_in_entity(f3vf_holder, get_entity(variable), period, VOUS)
    f3sf = single_person_in_entity(f3vf_holder, get_entity(variable), period, CONJ)
    rdp = max(0, f3vg .- f3vh) .+ f3vl .+ rpns_pvce .+ f3vm .+ f3vi .+ f3vf
    out = (plus_values["pvce"] .* rpns_pvce .+ plus_values["taux1"] .* max(0, f3vg .- f3vh) .+ plus_values["caprisque"] .* f3vl .+ plus_values["pea"] .* f3vm .+ plus_values["taux3"] .* f3vi .+ plus_values["taux4"] .* f3vf)
    return period, round(out)
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    """Taxation des plus value
    TODO: f3vt, 2013 f3Vg au barème / tout refaire
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    @calculate(f3vh, period)
    @calculate(f3vl, period)
    @calculate(f3vm, period)
    f3vi_holder = calculate(simulation, "f3vi", period)
    f3vf_holder = calculate(simulation, "f3vf", period)
    f3vd_holder = calculate(simulation, "f3vd", period)
    rpns_pvce_holder = calculate(simulation, "rpns_pvce", period)
    plus_values = legislation_at(simulation, period.start)["ir"]["plus_values"]
    rpns_pvce = sum_person_in_entity(rpns_pvce_holder, get_entity(variable), period)
    f3vd = single_person_in_entity(f3vd_holder, get_entity(variable), period, VOUS)
    f3sd = single_person_in_entity(f3vd_holder, get_entity(variable), period, CONJ)
    f3vi = single_person_in_entity(f3vi_holder, get_entity(variable), period, VOUS)
    f3si = single_person_in_entity(f3vi_holder, get_entity(variable), period, CONJ)
    f3vf = single_person_in_entity(f3vf_holder, get_entity(variable), period, VOUS)
    f3sf = single_person_in_entity(f3vf_holder, get_entity(variable), period, CONJ)
    rdp = max(0, f3vg .- f3vh) .+ f3vl .+ rpns_pvce .+ f3vm .+ f3vi .+ f3vf
    out = (plus_values["pvce"] .* rpns_pvce .+ plus_values["taux1"] .* max(0, f3vg .- f3vh) .+ plus_values["caprisque"] .* f3vl .+ plus_values["pea"] .* f3vm .+ plus_values["taux3"] .* f3vi .+ plus_values["taux4"] .* f3vf)
    rdp += f3vd
    out += plus_values["taux1"] .* f3vd
    return period, round(out)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    """Taxation des plus value
    TODO: f3vt, 2013 f3Vg au barème / tout refaire
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    @calculate(f3vh, period)
    @calculate(f3vl, period)
    @calculate(f3vm, period)
    f3vi_holder = calculate(simulation, "f3vi", period)
    f3vf_holder = calculate(simulation, "f3vf", period)
    f3vd_holder = calculate(simulation, "f3vd", period)
    rpns_pvce_holder = calculate(simulation, "rpns_pvce", period)
    plus_values = legislation_at(simulation, period.start)["ir"]["plus_values"]
    rpns_pvce = sum_person_in_entity(rpns_pvce_holder, get_entity(variable), period)
    f3vd = single_person_in_entity(f3vd_holder, get_entity(variable), period, VOUS)
    f3sd = single_person_in_entity(f3vd_holder, get_entity(variable), period, CONJ)
    f3vi = single_person_in_entity(f3vi_holder, get_entity(variable), period, VOUS)
    f3si = single_person_in_entity(f3vi_holder, get_entity(variable), period, CONJ)
    f3vf = single_person_in_entity(f3vf_holder, get_entity(variable), period, VOUS)
    f3sf = single_person_in_entity(f3vf_holder, get_entity(variable), period, CONJ)
    rdp = max(0, f3vg .- f3vh) .+ f3vl .+ rpns_pvce .+ f3vm .+ f3vi .+ f3vf
    out = (plus_values["pvce"] .* rpns_pvce .+ plus_values["taux1"] .* max(0, f3vg .- f3vh) .+ plus_values["caprisque"] .* f3vl .+ plus_values["pea"] .* f3vm .+ plus_values["taux3"] .* f3vi .+ plus_values["taux4"] .* f3vf)
    rdp += f3vd
    out += plus_values["taux1"] .* f3vd
    out = (plus_values["taux2"] .* (f3vd .+ f3sd) .+ plus_values["taux3"] .* (f3vi .+ f3si) .+ plus_values["taux4"] .* (f3vf .+ f3sf) .+ plus_values["taux1"] .* max(0, f3vg .- f3vh) .+ plus_values["pvce"] .* rpns_pvce)
    return period, round(out)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    """Taxation des plus value
    TODO: f3vt, 2013 f3Vg au barème / tout refaire
    """
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f3vg, period)
    @calculate(f3vh, period)
    @calculate(f3vl, period)
    @calculate(f3vm, period)
    f3vi_holder = calculate(simulation, "f3vi", period)
    f3vf_holder = calculate(simulation, "f3vf", period)
    f3vd_holder = calculate(simulation, "f3vd", period)
    @calculate(f3sa, period)
    rpns_pvce_holder = calculate(simulation, "rpns_pvce", period)
    _P = legislation_at(simulation, period.start)
    plus_values = legislation_at(simulation, period.start)["ir"]["plus_values"]
    rpns_pvce = sum_person_in_entity(rpns_pvce_holder, get_entity(variable), period)
    f3vd = single_person_in_entity(f3vd_holder, get_entity(variable), period, VOUS)
    f3sd = single_person_in_entity(f3vd_holder, get_entity(variable), period, CONJ)
    f3vi = single_person_in_entity(f3vi_holder, get_entity(variable), period, VOUS)
    f3si = single_person_in_entity(f3vi_holder, get_entity(variable), period, CONJ)
    f3vf = single_person_in_entity(f3vf_holder, get_entity(variable), period, VOUS)
    f3sf = single_person_in_entity(f3vf_holder, get_entity(variable), period, CONJ)
    rdp = max(0, f3vg .- f3vh) .+ f3vl .+ rpns_pvce .+ f3vm .+ f3vi .+ f3vf
    out = (plus_values["pvce"] .* rpns_pvce .+ plus_values["taux1"] .* max(0, f3vg .- f3vh) .+ plus_values["caprisque"] .* f3vl .+ plus_values["pea"] .* f3vm .+ plus_values["taux3"] .* f3vi .+ plus_values["taux4"] .* f3vf)
    rdp += f3vd
    out += plus_values["taux1"] .* f3vd
    out = (plus_values["taux2"] .* (f3vd .+ f3sd) .+ plus_values["taux3"] .* (f3vi .+ f3si) .+ plus_values["taux4"] .* (f3vf .+ f3sf) .+ plus_values["taux1"] * max(0, -f3vh) .+ plus_values["pvce"] .* (rpns_pvce .+ f3sa))
    return period, round(out)
  else
    return period, default_array(variable)
  end
end


@define_formula(ppe, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prime pour l'emploi",
  url = "http://vosdroits.service-public.fr/particuliers/F2882.xhtml",
) do simulation, variable, period
  """PPE effectivement versée
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ppe_brute, period)
  rsa_act_i_holder = calculate(simulation, "rsa_act_i", period)
  rsa_act_i = split_person_by_role(rsa_act_i_holder, get_entity(variable), period, [VOUS, CONJ])
  ppe = max(ppe_brute .- rsa_act_i[VOUS] .- rsa_act_i[CONJ], 0)
  return period, ppe
end


@define_formula(ppe_base, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ppe_rev, period)
  @calculate(ppe_coef_tp, period)
  ppe_coef_holder = calculate(simulation, "ppe_coef", period)
  ppe_coef = entity_to_person(ppe_coef_holder, period)
  return period, ppe_rev ./ (ppe_coef_tp .+ (ppe_coef_tp .== 0)) .* ppe_coef
end


@define_formula(ppe_brute, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Prime pour l'emploi brute",
) do simulation, variable, period
  """Prime pour l'emploi (avant éventuel dispositif de cumul avec le RSA)
  'foy'
  Cf. http://travail-emploi.gouv.fr/informations-pratiques,89/fiches-pratiques,91/remuneration,113/la-prime-pour-l-emploi-ppe,1034.html
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ppe_elig, period)
  ppe_elig_i_holder = calculate(simulation, "ppe_elig_i", period)
  ppe_rev_holder = calculate(simulation, "ppe_rev", period)
  ppe_base_holder = calculate(simulation, "ppe_base", period)
  @calculate(ppe_coef, period)
  ppe_coef_tp_holder = calculate(simulation, "ppe_coef_tp", period)
  @calculate(nb_pac, period)
  @calculate(marpac, period)
  @calculate(celdiv, period)
  @calculate(veuf, period)
  @calculate(caseT, period)
  @calculate(caseL, period)
  @calculate(nbH, period)
  ppe = legislation_at(simulation, period.start)["ir"]["credits_impot"]["ppe"]
  ppe_base = split_person_by_role(ppe_base_holder, get_entity(variable), period)
  ppe_coef_tp = split_person_by_role(ppe_coef_tp_holder, get_entity(variable), period)
  ppe_elig_i = split_person_by_role(ppe_elig_i_holder, get_entity(variable), period)
  ppe_rev = split_person_by_role(ppe_rev_holder, get_entity(variable), period)
  eliv, elic, eli1, eli2, eli3 = ppe_elig_i[VOUS], ppe_elig_i[CONJ], ppe_elig_i[PAC1], ppe_elig_i[PAC2], ppe_elig_i[PAC3]
  basevi, baseci = ppe_rev[VOUS], ppe_rev[CONJ]
  basev, basec, base1, base2, base3 = ppe_base[VOUS], ppe_base[CONJ], ppe_base[PAC1], ppe_base[PAC2], ppe_base[PAC1]
  coef_tpv, coef_tpc, coef_tp1, coef_tp2, coef_tp3 = ppe_coef_tp[VOUS], ppe_coef_tp[CONJ], ppe_coef_tp[PAC1], ppe_coef_tp[PAC2], ppe_coef_tp[PAC1]
  nb_pac_ppe = max(0, nb_pac .- eli1 .- eli2 .- eli3)
  ligne2 = marpac & ((basevi .>= ppe["seuil1"]) $ (baseci .>= ppe["seuil1"]))
  ligne3 = (celdiv | veuf) & caseT & !(veuf & caseT & caseL)
  ligne1 = !ligne2 & !ligne3
  base_monact = ligne2 .* (eliv .* basev .+ elic .* basec)
  base_monacti = ligne2 .* (eliv .* basevi .+ elic .* baseci)
  
  function ppe_bar1(base)
    return (1 ./ ppe_coef) .* ((base .<= ppe["seuil2"]) .* base .* ppe["taux1"] .+ ((base .> ppe["seuil2"]) & (base .<= ppe["seuil3"])) .* (ppe["seuil3"] .- base) .* ppe["taux2"] .+ ligne2 .* ((base .> ppe["seuil4"]) & (base .<= ppe["seuil5"])) .* (ppe["seuil5"] .- base) .* ppe["taux3"])
  end

  
  function ppe_bar2(base)
    return (1 ./ ppe_coef) .* ((base .<= ppe["seuil2"]) .* base .* ppe["taux1"] .+ ((base .> ppe["seuil2"]) & (base .<= ppe["seuil3"])) .* (ppe["seuil3"] .- base1) .* ppe["taux2"])
  end

  ppev = eliv .* ppe_bar1(basev)
  ppec = elic .* ppe_bar1(basec)
  ppe1 = eli1 .* ppe_bar2(base1)
  ppe2 = eli2 .* ppe_bar2(base2)
  ppe3 = eli3 .* ppe_bar2(base3)
  ppe_monact_vous = (eliv & ligne2 & (basevi .>= ppe["seuil1"]) & (basev .<= ppe["seuil4"])) .* ppe["monact"]
  ppe_monact_conj = (elic & ligne2 & (baseci .>= ppe["seuil1"]) & (basec .<= ppe["seuil4"])) .* ppe["monact"]
  maj_pac = ppe_elig .* (eliv | elic) .* ((ligne1 & marpac & ((ppev .+ ppec) .!= 0) & (min(basev, basec) .<= ppe["seuil3"])) .* ppe["pac"] .* (nb_pac_ppe .+ nbH .* 0.5) .+ (ligne1 & (celdiv | veuf) & eliv & (basev .<= ppe["seuil3"])) .* ppe["pac"] .* (nb_pac_ppe .+ nbH .* 0.5) .+ (ligne2 & (base_monacti .>= ppe["seuil1"]) & (base_monact .<= ppe["seuil3"])) .* ppe["pac"] .* (nb_pac_ppe .+ nbH .* 0.5) .+ (ligne2 & (base_monact .> ppe["seuil3"]) & (base_monact .<= ppe["seuil5"])) .* ppe["pac"] .* ((nb_pac_ppe .!= 0) .+ 0.5 .* ((nb_pac_ppe .== 0) & (nbH .!= 0))) .+ (ligne3 & (basevi .>= ppe["seuil1"]) & (basev .<= ppe["seuil3"])) .* ((min(nb_pac_ppe, 1) .* 2 .* ppe["pac"] .+ max(nb_pac_ppe .- 1, 0) .* ppe["pac"]) .+ (nb_pac_ppe .== 0) .* (min(nbH, 2) .* ppe["pac"] .+ max(nbH .- 2, 0) .* ppe["pac"] .* 0.5)) .+ (ligne3 & (basev .> ppe["seuil3"]) & (basev .<= ppe["seuil5"])) .* ppe["pac"] .* ((nb_pac_ppe .!= 0) .* 2 .+ ((nb_pac_ppe .== 0) & (nbH .!= 0))))
  
  function coef(coef_tp)
    return (coef_tp .<= 0.5) .* coef_tp .* 1.45 .+ (coef_tp .> 0.5) .* (0.55 .* coef_tp .+ 0.45)
  end

  ppe_vous = ppe_elig .* (ppev .* coef(coef_tpv) .+ ppe_monact_vous)
  ppe_conj = ppe_elig .* (ppec .* coef(coef_tpc) .+ ppe_monact_conj)
  ppe_pac1 = ppe_elig .* (ppe1 .* coef(coef_tp1))
  ppe_pac2 = ppe_elig .* (ppe2 .* coef(coef_tp2))
  ppe_pac3 = ppe_elig .* (ppe3 .* coef(coef_tp3))
  ppe_tot = ppe_vous .+ ppe_conj .+ ppe_pac1 .+ ppe_pac2 .+ ppe_pac3 .+ maj_pac
  ppe_tot = (ppe_tot .!= 0) .* max(ppe["versmin"], ppe_tot)
  return period, ppe_tot
end


@define_formula(ppe_coef, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "PPE: coefficient de conversion en cas de changement en cours d'année"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(jour_xyz, period)
  nb_jour = (jour_xyz .== 0) .+ jour_xyz
  return period, 360 ./ nb_jour
end


@define_formula(ppe_coef_tp, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """PPE: coefficient de conversion temps partiel
  'ind'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ppe_du_sa, period)
  @calculate(ppe_du_ns, period)
  @calculate(ppe_tp_sa, period)
  @calculate(ppe_tp_ns, period)
  ppe = legislation_at(simulation, period.start)["ir"]["credits_impot"]["ppe"]
  frac_sa = ppe_du_sa ./ ppe["TP_nbh"]
  frac_ns = ppe_du_ns ./ ppe["TP_nbj"]
  tp = ppe_tp_sa | ppe_tp_ns | (frac_sa .+ frac_ns .>= 1)
  return period, tp .+ !tp .* (frac_sa .+ frac_ns)
end


@define_formula(ppe_elig, foyer_fiscal_definition, Bool, requested_period_last_value) do simulation, variable, period
  """PPE: eligibilité à la ppe, condition sur le revenu fiscal de référence
  'foy'
  CF ligne 1: http://bofip.impots.gouv.fr/bofip/3913-PGP.html
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rfr, period)
  @calculate(ppe_coef, period)
  @calculate(marpac, period)
  @calculate(veuf, period)
  @calculate(celdiv, period)
  @calculate(nbptr, period)
  ppe = legislation_at(simulation, period.start)["ir"]["credits_impot"]["ppe"]
  seuil = (veuf | celdiv) .* (ppe["eligi1"] .+ 2 .* max(nbptr .- 1, 0) .* ppe["eligi3"]) .+ marpac .* (ppe["eligi2"] .+ 2 .* max(nbptr .- 2, 0) .* ppe["eligi3"])
  return period, (rfr .* ppe_coef) .<= seuil
end


@define_formula(ppe_elig_i, individu_definition, Bool, requested_period_last_value) do simulation, variable, period
  """Eligibilité individuelle à la ppe
  Attention : condition de plafonnement introduite dans ppe brute
  'ind'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ppe_rev, period)
  @calculate(ppe_coef_tp, period)
  ppe = legislation_at(simulation, period.start)["ir"]["credits_impot"]["ppe"]
  return period, (ppe_rev .>= ppe["seuil1"]) & (ppe_coef_tp .!= 0)
end


@define_formula(ppe_rev, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """base ressource de la ppe
  'ind'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(sal, period)
  @calculate(hsup, period)
  @calculate(rpns, period)
  ppe = legislation_at(simulation, period.start)["ir"]["credits_impot"]["ppe"]
  rev_sa = sal .+ hsup
  rev_ns = min(0, rpns) ./ ppe["abatns"] .+ max(0, rpns) .* ppe["abatns"]
  return period, rev_sa .+ rev_ns
end


@define_formula(rac, individu_definition, Float32, requested_period_default_value,
  url = "http://vosdroits.service-public.fr/particuliers/F1225.xhtml",
) do simulation, variable, period
  """Revenus accessoires individuels
  'ind'
  macc_exon (f5nn, f5on, f5pn)
  aacc_exon (f5nb, f5ob, f5pb)
  nacc_exon (f5nh, f5oh, f5ph)
  macc_impv (f5no, f5oo, f5po)
  macc_imps (f5np, f5op, f5pp)
  aacc_impn (f5nc, f5oc, f5pc)
  aacc_imps (f5nd, f5od, f5pd)
  aacc_defn (f5nf, f5of, f5pf)
  aacc_defs (f5ng, f5og, f5pg)
  nacc_impn (f5ni, f5oi, f5pi)
  nacc_defn (f5nl, f5ol, f5pl)
  nacc_defs (f5nm, f5om, f5pm)
  mncn_impo (f5ku, f5lu, f5mu)
  cncn_bene (f5sn, f5ns, f5os)
  cncn_defi (f5sp, f5nu, f5ou, f5sr)
  f5sv????
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(macc_exon, period)
  @calculate(macc_impv, period)
  @calculate(macc_imps, period)
  @calculate(aacc_exon, period)
  @calculate(aacc_impn, period)
  @calculate(aacc_imps, period)
  @calculate(aacc_defn, period)
  @calculate(aacc_defs, period)
  @calculate(nacc_exon, period)
  @calculate(nacc_impn, period)
  @calculate(nacc_defn, period)
  @calculate(nacc_defs, period)
  @calculate(mncn_impo, period)
  @calculate(cncn_bene, period)
  @calculate(cncn_defi, period)
  microentreprise = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  zacc = (macc_exon .+ macc_impv .+ macc_imps .+ aacc_exon .+ aacc_impn .+ aacc_imps .- aacc_defn .- aacc_defs .+ nacc_exon .+ nacc_impn .- nacc_defn .- nacc_defs .+ mncn_impo .+ cncn_bene .- cncn_defi)
  cond = (macc_impv .> 0) & (macc_imps .== 0)
  taux = microentreprise["vente"]["taux"] .* cond .+ microentreprise["servi"]["taux"] .* !cond
  cacc = min(macc_impv .+ macc_imps .+ macc_exon .+ mncn_impo, max(microentreprise["vente"]["min"], round(macc_impv .* microentreprise["vente"]["taux"] .+ macc_imps .* microentreprise["servi"]["taux"] .+ macc_exon .* taux .+ mncn_impo .* microentreprise["specialbnc"]["taux"])))
  return period, zacc .- cacc
end


@define_formula(rag, individu_definition, Float32, requested_period_default_value,
  url = "http://www.impots.gouv.fr/portal/dgi/public/professionnels.impot?espId=2&impot=BA&pageId=prof_ba&sfid=50",
) do simulation, variable, period
  """Revenus agricoles
  'ind'
  frag_exon (f5hn, f5in, f5jn)
  frag_impo (f5ho, f5io, f5jo)
  arag_exon (f5hb, f5ib, f5jb)
  arag_impg (f5hc, f5ic, f5jc)
  arag_defi (f5hf, f5if, f5jf)
  nrag_exon (f5hh, f5ih, f5jh)
  nrag_impg (f5hi, f5ii, f5ji)
  nrag_defi (f5hl, f5il, f5jl)
  nrag_ajag (f5hm, f5im, f5jm)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(frag_exon, period)
  @calculate(frag_impo, period)
  @calculate(arag_exon, period)
  @calculate(arag_impg, period)
  @calculate(arag_defi, period)
  @calculate(nrag_exon, period)
  @calculate(nrag_impg, period)
  @calculate(nrag_defi, period)
  @calculate(nrag_ajag, period)
  return period, (frag_exon .+ frag_impo .+ arag_exon .+ arag_impg .- arag_defi .+ nrag_exon .+ nrag_impg .- nrag_defi .+ nrag_ajag)
end


@define_formula(rbg, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu brut global",
  url = "http://www.documentissime.fr/dossiers-droit-pratique/dossier-19-l-impot-sur-le-revenu-les-modalites-generales-d-imposition/la-determination-du-revenu-imposable/le-revenu-brut-global.html",
) do simulation, variable, period
  "Revenu brut global"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_cat, period)
  @calculate(deficit_ante, period)
  @calculate(f6gh, period)
  nbic_impm_holder = calculate(simulation, "nbic_impm", period)
  nacc_pvce_holder = calculate(simulation, "nacc_pvce", period)
  cga = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  nacc_pvce = sum_person_in_entity(nacc_pvce_holder, get_entity(variable), period)
  return period, max(0, rev_cat .+ f6gh .+ (sum_person_in_entity(nbic_impm_holder, get_entity(variable), period) .+ nacc_pvce) .* (1 + cga) .- deficit_ante)
end


@define_formula(rev_act, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Revenus d'activités"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_act_nonsal, period)
  @calculate(rev_act_sal, period)
  return period, rev_act_nonsal .+ rev_act_sal
end


@define_formula(rev_act_nonsal, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Revenus d'activités non salariées"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rpns_i, period)
  return period, rpns_i
end


@define_formula(rev_act_sal, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Revenus d'activités salariées"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(sali, period)
  return period, sali
end


@define_formula(rev_cap_bar, foyer_fiscal_definition, Float32, requested_period_default_value,
  url = "http://fr.wikipedia.org/wiki/Revenu#Revenu_du_Capital",
) do simulation, variable, period
  "Revenus du capital imposés au barème"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f2dc, period)
  @calculate(f2gr, period)
  @calculate(f2ch, period)
  @calculate(f2ts, period)
  @calculate(f2go, period)
  @calculate(f2tr, period)
  @calculate(f2fu, period)
  @calculate(avf, period)
  @calculate(f2da, period)
  @calculate(f2ee, period)
  finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
  majGO = legislation_at(simulation, period.start)["ir"]["rvcm"]["majGO"]
  return period, f2dc .+ f2gr .+ f2ch .+ f2ts .+ f2go .* majGO .+ f2tr .+ f2fu .- avf .+ (f2da .+ f2ee) .* finpfl
end


@define_formula(rev_cap_lib, foyer_fiscal_definition, Float32, requested_period_default_value,
  url = "http://fr.wikipedia.org/wiki/Revenu#Revenu_du_Capital",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    "Revenu du capital imposé au prélèvement libératoire"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2dh, period)
    @calculate(f2ee, period)
    _P = legislation_at(simulation, period.start)
    finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
    out = f2dh .+ f2ee
    return period, out .* !finpfl
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    "Revenu du capital imposé au prélèvement libératoire"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(f2da, period)
    @calculate(f2dh, period)
    @calculate(f2ee, period)
    _P = legislation_at(simulation, period.start)
    finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
    out = f2da .+ f2dh .+ f2ee
    return period, out .* !finpfl
  else
    return period, default_array(variable)
  end
end


@define_formula(rev_cat, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenus catégoriels",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/revenus-categoriesl.htm",
) do simulation, variable, period
  "Revenus Categoriels"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_cat_tspr, period)
  @calculate(rev_cat_rvcm, period)
  @calculate(rev_cat_rfon, period)
  @calculate(rev_cat_rpns, period)
  @calculate(rev_cat_pv, period)
  return period, rev_cat_tspr .+ rev_cat_rvcm .+ rev_cat_rfon .+ rev_cat_rpns .+ rev_cat_pv
end


@define_formula(rev_cat_pv, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu catégoriel - Plus-values",
  start_date = Date(2013, 1, 1),
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/revenus-categoriesl.htm",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f3vg, period)
  @calculate(f3vh, period)
  return period, f3vg .- f3vh
end


@define_formula(rev_cat_rfon, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu catégoriel - Foncier",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/revenus-categoriesl.htm",
) do simulation, variable, period
  """Revenus fonciers
  TODO: add assert in validator
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(f4ba, period)
  @calculate(f4bb, period)
  @calculate(f4bc, period)
  @calculate(f4bd, period)
  @calculate(f4be, period)
  microfoncier = legislation_at(simulation, period.start)["ir"]["microfoncier"]
  if any(((f4be .!= 0) & ((f4ba .!= 0) | (f4bb .!= 0) | (f4bc .!= 0))))
    log.error(("Problème de déclarations des revenus : incompatibilité de la déclaration des revenus fonciers (f4ba, f4bb, f4bc) et microfonciers (f4be)"))
  end
  a13 = f4ba .+ f4be .- microfoncier["taux"] .* f4be .* (f4be .<= microfoncier["max"])
  b13 = f4bb
  c13 = a13 .- b13
  d13 = f4bc
  e13 = c13 .- d13 .* (c13 .>= 0)
  f13 = f4bd .* (e13 .>= 0)
  g13 = max(0, e13 .- f13)
  rev_cat_rfon = (c13 .>= 0) .* (g13 .+ e13 .* (e13 .< 0)) .- (c13 .< 0) .* d13
  return period, rev_cat_rfon
end


@define_formula(rev_cat_rpns, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu catégoriel - Rpns",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/revenus-categoriesl.htm",
) do simulation, variable, period
  """Revenus personnels non salariés
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  nbnc_pvce_holder = calculate(simulation, "nbnc_pvce", period)
  @calculate(mbic_mvct, period)
  rpns_i_holder = calculate(simulation, "rpns_i", period)
  @calculate(defrag, period)
  @calculate(defacc, period)
  @calculate(defncn, period)
  @calculate(defmeu, period)
  return period, (sum_person_in_entity(rpns_i_holder, get_entity(variable), period) .- sum_person_in_entity(nbnc_pvce_holder, get_entity(variable), period) .- defrag .- defncn .- defacc .- defmeu .- mbic_mvct)
end


@define_formula(rev_cat_rvcm, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu catégoriel - Capitaux",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/revenus-categoriesl.htm",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2004, 12, 31)
    "Revenus des valeurs et capitaux mobiliers"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(deficit_rcm, period)
    @calculate(f2ch, period)
    @calculate(f2dc, period)
    @calculate(f2ts, period)
    @calculate(f2ca, period)
    @calculate(f2fu, period)
    @calculate(f2go, period)
    @calculate(f2gr, period)
    @calculate(f2tr, period)
    _P = legislation_at(simulation, period.start)
    finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
    rvcm = legislation_at(simulation, period.start)["ir"]["rvcm"]
    f2dc_bis = f2dc
    f2tr_bis = f2tr
    b12 = min(f2ch, rvcm["abat_assvie"] .* (1 .+ marpac))
    TOT1 = f2ch .- b12
    den = ((f2dc_bis .+ f2ts) .!= 0) .* (f2dc_bis .+ f2ts) .+ ((f2dc_bis .+ f2ts) .== 0)
    F1 = f2ca ./ den .* f2dc_bis
    g12a = -min(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
    g12b = max(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
    rev = g12b .+ f2gr .+ f2fu .* (1 - rvcm["abatmob_taux"])
    h12 = rvcm["abatmob"] .* (1 .+ marpac)
    TOT2 = max(0, rev .- h12)
    F2 = f2ca .- F1
    TOT3 = (f2ts .- F2) .+ f2go .* rvcm["majGO"] .+ f2tr_bis .- g12a
    DEF = deficit_rcm
    return period, max(TOT1 .+ TOT2 .+ TOT3 .- DEF, 0)
  elseif Date(2005, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    "Revenus des valeurs et capitaux mobiliers"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(deficit_rcm, period)
    @calculate(f2ch, period)
    @calculate(f2dc, period)
    @calculate(f2ts, period)
    @calculate(f2ca, period)
    @calculate(f2fu, period)
    @calculate(f2go, period)
    @calculate(f2gr, period)
    @calculate(f2tr, period)
    finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
    rvcm = legislation_at(simulation, period.start)["ir"]["rvcm"]
    f2dc_bis = f2dc
    f2tr_bis = f2tr
    b12 = min(f2ch, rvcm["abat_assvie"] .* (1 .+ marpac))
    TOT1 = f2ch .- b12
    den = ((f2dc_bis .+ f2ts) .!= 0) .* (f2dc_bis .+ f2ts) .+ ((f2dc_bis .+ f2ts) .== 0)
    F1 = f2ca ./ den .* f2dc_bis
    g12a = -min(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
    g12b = max(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
    rev = g12b .+ f2gr .+ f2fu .* (1 - rvcm["abatmob_taux"])
    h12 = rvcm["abatmob"] .* (1 .+ marpac)
    TOT2 = max(0, rev .- h12)
    F2 = f2ca .- F1
    TOT3 = (f2ts .- F2) .+ f2go .* rvcm["majGO"] .+ f2tr_bis .- g12a
    DEF = deficit_rcm
    return period, max(TOT1 .+ TOT2 .+ TOT3 .- DEF, 0)
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    "Revenus des valeurs et capitaux mobiliers"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(marpac, period)
    @calculate(deficit_rcm, period)
    @calculate(f2ch, period)
    @calculate(f2dc, period)
    @calculate(f2ts, period)
    @calculate(f2ca, period)
    @calculate(f2fu, period)
    @calculate(f2go, period)
    @calculate(f2tr, period)
    @calculate(f2da, period)
    @calculate(f2ee, period)
    finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
    rvcm = legislation_at(simulation, period.start)["ir"]["rvcm"]
    f2dc_bis = f2dc .+ f2da
    f2tr_bis = f2tr .+ f2ee
    b12 = min(f2ch, rvcm["abat_assvie"] .* (1 .+ marpac))
    TOT1 = f2ch .- b12
    den = ((f2dc_bis .+ f2ts) .!= 0) .* (f2dc_bis .+ f2ts) .+ ((f2dc_bis .+ f2ts) .== 0)
    F1 = f2ca ./ den .* f2dc_bis
    g12a = -min(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
    g12b = max(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
    rev = g12b .+ f2fu .* (1 - rvcm["abatmob_taux"])
    h12 = rvcm["abatmob"] .* (1 .+ marpac)
    TOT2 = max(0, rev .- h12)
    F2 = f2ca .- F1
    TOT3 = (f2ts .- F2) .+ f2go .* rvcm["majGO"] .+ f2tr_bis .- g12a
    DEF = deficit_rcm
    return period, max(TOT1 .+ TOT2 .+ TOT3 .- DEF, 0)
  else
    return period, default_array(variable)
  end
end


@define_formula(rev_cat_tspr, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu catégoriel - Traitements, salaires, pensions et rentes",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/revenus-categoriesl.htm",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  tspr_holder = calculate(simulation, "tspr", period)
  @calculate(indu_plaf_abat_pen, period)
  tspr = sum_person_in_entity(tspr_holder, get_entity(variable), period)
  return period, tspr .+ indu_plaf_abat_pen
end


@define_formula(rev_pen, individu_definition, Float32, requested_period_default_value,
  label = "Revenu imposé comme des pensions (retraites, pensions alimentaires, etc.)",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(alr, period)
  @calculate(alr_decl, period)
  @calculate(rst, period)
  return period, alr .* alr_decl .+ rst
end


@define_formula(rev_sal, individu_definition, Float32, requested_period_default_value,
  label = "Revenu imposé comme des salaires (salaires, mais aussi 3vj, 3vk)",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(sal, period)
  @calculate(cho, period)
  return period, sal .+ cho
end


@define_formula(rfr, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu fiscal de référence",
) do simulation, variable, period
  """Revenu fiscal de référence
  f3vg -> rev_cat_pv -> ... -> rni
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rni, period)
  f3va_holder = calculate(simulation, "f3va", period)
  f3vi_holder = calculate(simulation, "f3vi", period)
  @calculate(rfr_cd, period)
  @calculate(rfr_rvcm, period)
  rpns_exon_holder = calculate(simulation, "rpns_exon", period)
  rpns_pvce_holder = calculate(simulation, "rpns_pvce", period)
  @calculate(rev_cap_lib, period)
  @calculate(f3vz, period)
  @calculate(microentreprise, period)
  f3va = sum_person_in_entity(f3va_holder, get_entity(variable), period)
  f3vi = sum_person_in_entity(f3vi_holder, get_entity(variable), period)
  rpns_exon = sum_person_in_entity(rpns_exon_holder, get_entity(variable), period)
  rpns_pvce = sum_person_in_entity(rpns_pvce_holder, get_entity(variable), period)
  return period, (max(0, rni) .+ rfr_cd .+ rfr_rvcm .+ rev_cap_lib .+ f3vi .+ rpns_exon .+ rpns_pvce .+ f3va .+ f3vz .+ microentreprise)
end


@define_formula(rfr_rvcm, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Abattements sur rvcm à réintégrer dans le revenu fiscal de référence"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(marpac, period)
  @calculate(f2dc, period)
  @calculate(f2ts, period)
  @calculate(f2ca, period)
  @calculate(f2gr, period)
  @calculate(f2fu, period)
  @calculate(f2da, period)
  finpfl = legislation_at(simulation, period.start)["ir"]["autre"]["finpfl"]
  rvcm = legislation_at(simulation, period.start)["ir"]["rvcm"]
  if finpfl
    f2dc_bis = f2dc .+ f2da
  else
    f2dc_bis = f2dc
  end
  den = ((f2dc_bis .+ f2ts) .!= 0) .* (f2dc_bis .+ f2ts) .+ ((f2dc_bis .+ f2ts) .== 0)
  F1 = f2ca ./ den .* f2dc_bis
  g12b = max(f2dc_bis .* (1 - rvcm["abatmob_taux"]) .- F1, 0)
  rev = g12b .+ f2gr .+ f2fu .* (1 - rvcm["abatmob_taux"])
  h12 = rvcm["abatmob"] .* (1 .+ marpac)
  i121 = -min(0, rev .- h12)
  return period, max((rvcm["abatmob_taux"]) .* (f2dc_bis .+ f2fu) .- i121, 0)
end


@define_formula(ric, individu_definition, Float32, requested_period_default_value,
  url = "http://www.impots.gouv.fr/portal/dgi/public/professionnels.impot?pageId=prof_bic&espId=2&impot=BIC&sfid=50",
) do simulation, variable, period
  """Bénéfices industriels et commerciaux
  'ind'
  mbic_exon (f5kn, f5ln, f5mn)
  abic_exon (f5kb, f5lb, f5mb)
  nbic_exon (f5kh, f5lh, f5mh)
  mbic_impv (f5ko, f5lo, f5mo)
  mbic_imps (f5kp, f5lp, f5mp)
  abic_impn (f5kc, f5lc, f5mc)
  abic_imps (f5kd, f5ld, f5md)
  nbic_impn (f5ki, f5li, f5mi)
  nbic_imps (f5kj, f5lj, f5mj)
  abic_defn (f5kf, f5lf, f5mf)
  abic_defs (f5kg, f5lg, f5mg)
  nbic_defn (f5kl, f5ll, f5ml)
  nbic_defs (f5km, f5lm, f5mm)
  nbic_apch (f5ks, f5ls, f5ms)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(mbic_exon, period)
  @calculate(mbic_impv, period)
  @calculate(mbic_imps, period)
  @calculate(abic_exon, period)
  @calculate(nbic_exon, period)
  @calculate(abic_impn, period)
  @calculate(nbic_impn, period)
  @calculate(abic_imps, period)
  @calculate(nbic_imps, period)
  @calculate(abic_defn, period)
  @calculate(nbic_defn, period)
  @calculate(abic_defs, period)
  @calculate(nbic_defs, period)
  @calculate(nbic_apch, period)
  microentreprise = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  zbic = (mbic_exon .+ mbic_impv .+ mbic_imps .+ abic_exon .+ nbic_exon .+ abic_impn .+ nbic_impn .+ abic_imps .+ nbic_imps .- abic_defn .- nbic_defn .- abic_defs .- nbic_defs .+ nbic_apch)
  cond = (mbic_impv .> 0) & (mbic_imps .== 0)
  taux = microentreprise["vente"]["taux"] .* cond .+ microentreprise["servi"]["taux"] .* !cond
  cbic = min(mbic_impv .+ mbic_imps .+ mbic_exon, max(microentreprise["vente"]["min"], round(mbic_impv .* microentreprise["vente"]["taux"] .+ mbic_imps .* microentreprise["servi"]["taux"] .+ mbic_exon .* taux)))
  return period, zbic .- cbic
end


@define_formula(rnc, individu_definition, Float32, requested_period_default_value,
  url = "http://www.impots.gouv.fr/portal/dgi/public/professionnels.impot?espId=2&pageId=prof_bnc&impot=BNC&sfid=50",
) do simulation, variable, period
  """Revenus non commerciaux individuels
  'ind'
  mbnc_exon (f5hp, f5ip, f5jp)
  abnc_exon (f5qb, f5rb, f5sb)
  nbnc_exon (f5qh, f5rh, f5sh)
  mbnc_impo (f5hq, f5iq, f5jq)
  abnc_impo (f5qc, f5rc, f5sc)
  abnc_defi (f5qe, f5re, f5se)
  nbnc_impo (f5qi, f5ri, f5si)
  nbnc_defi (f5qk, f5rk, f5sk)
  f5ql, f5qm????
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(mbnc_exon, period)
  @calculate(mbnc_impo, period)
  @calculate(abnc_exon, period)
  @calculate(nbnc_exon, period)
  @calculate(abnc_impo, period)
  @calculate(nbnc_impo, period)
  @calculate(abnc_defi, period)
  @calculate(nbnc_defi, period)
  specialbnc = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]["specialbnc"]
  zbnc = (mbnc_exon .+ mbnc_impo .+ abnc_exon .+ nbnc_exon .+ abnc_impo .+ nbnc_impo .- abnc_defi .- nbnc_defi)
  cbnc = min(mbnc_exon .+ mbnc_impo, max(specialbnc["min"], round((mbnc_exon .+ mbnc_impo) .* specialbnc["taux"])))
  return period, zbnc .- cbnc
end


@define_formula(rng, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu net global",
  url = "http://impotsurlerevenu.org/definitions/114-revenu-net-global.php",
) do simulation, variable, period
  "Revenu net global (total 20)"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rbg, period)
  @calculate(csg_deduc, period)
  @calculate(charges_deduc, period)
  return period, max(0, rbg .- csg_deduc .- charges_deduc)
end


@define_formula(rni, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu net imposable",
  url = "http://impotsurlerevenu.org/definitions/115-revenu-net-imposable.php",
) do simulation, variable, period
  "Revenu net imposable ou déficit à reporter"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rng, period)
  @calculate(abat_spe, period)
  return period, rng .- abat_spe
end


@define_formula(rpns, individu_definition, Float32, requested_period_default_value,
  label = "Revenus individuels des professions non salariées",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rag, period)
  @calculate(ric, period)
  @calculate(rac, period)
  @calculate(rnc, period)
  return period, rag .+ ric .+ rac .+ rnc
end


@define_formula(rpns_exon, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Plus values de cession
  'ind'
  frag_exon (f5hn, f5in, f5jn)
  arag_exon (f5hb, f5ib, f5jb)
  nrag_exon (f5hh, f5ih, f5jh)
  mbic_exon (f5kn, f5ln, f5mn)
  abic_exon (f5kb, f5lb, f5mb)
  nbic_exon (f5kh, f5lh, f5mh)
  macc_exon (f5nn, f5on, f5pn)
  aacc_exon (f5nb, f5ob, f5pb)
  nacc_exon (f5nh, f5oh, f5ph)
  mbnc_exon (f5hp, f5ip, f5jp)
  abnc_exon (f5qb, f5rb, f5sb)
  nbnc_exon (f5qh, f5rh, f5sh)
  nbnc_pvce (f5qj, f5rj, f5sj)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(frag_exon, period)
  @calculate(arag_exon, period)
  @calculate(nrag_exon, period)
  @calculate(mbic_exon, period)
  @calculate(abic_exon, period)
  @calculate(nbnc_proc, period)
  @calculate(nbic_exon, period)
  @calculate(macc_exon, period)
  @calculate(aacc_exon, period)
  @calculate(nacc_exon, period)
  @calculate(mbnc_exon, period)
  @calculate(abnc_proc, period)
  @calculate(nrag_pvce, period)
  @calculate(abnc_exon, period)
  @calculate(nbnc_exon, period)
  @calculate(mncn_exon, period)
  @calculate(cncn_exon, period)
  @calculate(cncn_jcre, period)
  @calculate(cncn_info, period)
  @calculate(nbic_pvce, period)
  cga = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  return period, (frag_exon .+ arag_exon .+ nrag_exon .+ mbic_exon .+ abic_exon .+ nbnc_proc .* (1 + cga) .+ nbic_exon .+ macc_exon .+ aacc_exon .+ nacc_exon .+ mbnc_exon .+ abnc_proc .+ abnc_exon .+ nbnc_exon .+ mncn_exon .+ cncn_exon .+ cncn_jcre .+ cncn_info .+ nbic_pvce .+ nrag_pvce)
end


@define_formula(rpns_i, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Revenus des professions non salariées individuels"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(frag_impo, period)
  @calculate(arag_impg, period)
  @calculate(nrag_impg, period)
  @calculate(arag_defi, period)
  @calculate(nrag_defi, period)
  @calculate(mbic_impv, period)
  @calculate(mbic_imps, period)
  @calculate(abic_impn, period)
  @calculate(abic_imps, period)
  @calculate(abic_defn, period)
  @calculate(abic_defs, period)
  @calculate(nbic_impn, period)
  @calculate(nbic_imps, period)
  @calculate(nbic_defn, period)
  @calculate(nbic_defs, period)
  @calculate(macc_impv, period)
  @calculate(macc_imps, period)
  @calculate(nbic_mvct, period)
  @calculate(aacc_impn, period)
  @calculate(aacc_defn, period)
  @calculate(aacc_gits, period)
  @calculate(nacc_impn, period)
  @calculate(nacc_defn, period)
  @calculate(nacc_defs, period)
  @calculate(aacc_imps, period)
  @calculate(mbnc_impo, period)
  @calculate(nacc_meup, period)
  @calculate(abic_impm, period)
  @calculate(abic_defm, period)
  @calculate(abnc_impo, period)
  @calculate(abnc_defi, period)
  @calculate(nbic_impm, period)
  @calculate(alnp_imps, period)
  @calculate(nbnc_impo, period)
  @calculate(nbnc_defi, period)
  @calculate(alnp_defs, period)
  @calculate(cbnc_assc, period)
  @calculate(mncn_impo, period)
  @calculate(cncn_bene, period)
  @calculate(cncn_defi, period)
  @calculate(abnc_proc, period)
  @calculate(rpns_pvct, period)
  @calculate(rpns_mvct, period)
  @calculate(nbnc_proc, period)
  @calculate(frag_fore, period)
  @calculate(f5sq, period)
  @calculate(mncn_exon, period)
  @calculate(cncn_exon, period)
  @calculate(cncn_aimp, period)
  @calculate(cncn_adef, period)
  @calculate(cncn_info, period)
  @calculate(cncn_jcre, period)
  @calculate(revimpres, period)
  @calculate(pveximpres, period)
  @calculate(pvtaimpres, period)
  cga_taux2 = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  microentreprise = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  
  function abat_rpns(rev, P)
    return max(0, rev .- min(rev, max(P["taux"] .* min(P["max"], rev), P["min"])))
  end

  def_agri = f5sq .+ arag_defi .+ nrag_defi
  mbic_timp = abat_rpns(mbic_impv, microentreprise["vente"]) .+ abat_rpns(mbic_imps, microentreprise["servi"])
  abic_timp = abic_impn .+ abic_imps .- (abic_defn .+ abic_defs)
  nbic_timp = (nbic_impn .+ nbic_imps) .- (nbic_defn .+ nbic_defs)
  macc_timp = abat_rpns(macc_impv, microentreprise["vente"]) .+ abat_rpns(macc_imps, microentreprise["servi"])
  aacc_timp = (max(0, (aacc_impn .+ (aacc_gits .> 0) .* max(microentreprise["servi"]["min"], aacc_gits .* (1 - microentreprise["vente"]["taux"])) .+ (aacc_imps .> 0) .* max(microentreprise["servi"]["min"], aacc_imps .* (1 - microentreprise["servi"]["taux"])) .+ (nacc_meup .> 0) .* max(microentreprise["servi"]["min"], nacc_meup .* (1 - microentreprise["vente"]["taux"])) .+ nacc_defs .- aacc_defn)))
  nacc_timp = max(0, nacc_impn .- nacc_defn)
  mncn_timp = abat_rpns(mncn_impo, microentreprise["specialbnc"])
  cncn_timp = max(0, cncn_bene .- cncn_defi)
  mbnc_timp = abat_rpns(mbnc_impo, microentreprise["specialbnc"])
  abnc_timp = abnc_impo .- abnc_defi
  nbnc_timp = nbnc_impo .- nbnc_defi
  atimp = arag_impg .+ abic_timp .+ aacc_timp .+ abnc_timp
  ntimp = nrag_impg .+ nbic_timp .+ nacc_timp .+ nbnc_timp .+ cncn_timp
  majo_cga = max(0, cga_taux2 .* (ntimp .+ frag_impo))
  rev_NS = frag_impo .+ frag_fore .+ atimp .+ ntimp .+ majo_cga .- def_agri
  rev_NS_mi = mbic_timp .+ max(0, macc_timp) .+ mbnc_timp .+ mncn_timp
  exon = max(0, macc_timp .+ nacc_timp .- rpns_mvct) .- macc_timp .- nacc_timp
  RPNS = (rev_NS .+ rev_NS_mi .+ rpns_pvct .+ exon .+ abic_impm .- abic_defm .+ alnp_imps .+ cncn_aimp .- nbic_mvct)
  return period, RPNS
end


@define_formula(rpns_mvct, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Moins values de court terme

  'ind'
  macc_mvct (f5iu)
  mncn_mvct (f5ju)
  mbnc_mvct (f5kz)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  macc_mvct_holder = calculate(simulation, "macc_mvct", period)
  @calculate(mbnc_mvct, period)
  mncn_mvct_holder = calculate(simulation, "mncn_mvct", period)
  macc_mvct = entity_to_person(macc_mvct_holder, period, VOUS)
  mncn_mvct = entity_to_person(mncn_mvct_holder, period, VOUS)
  return period, mbnc_mvct .+ macc_mvct
end


@define_formula(rpns_mvlt, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Moins values de long terme
  'ind'
  mbic_mvlt (f5kr, f5lr, f5mr)
  macc_mvlt (f5nr, f5or, f5pr)
  mncn_mvlt (f5kw, f5lw, f5mw)
  mbnc_mvlt (f5hs, f5is, f5js)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(mbic_mvlt, period)
  @calculate(macc_mvlt, period)
  @calculate(mbnc_mvlt, period)
  @calculate(mncn_mvlt, period)
  return period, mbic_mvlt .+ macc_mvlt .+ mbnc_mvlt .+ mncn_mvlt
end


@define_formula(rpns_pvce, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Plus values de cession
  'ind'
  frag_pvce (f5hx, f5ix, f5jx)
  arag_pvce (f5he, f5ie, f5je)
  mbic_pvce (f5kq, f5lq, f5mq)
  abic_pvce (f5ke, f5le, f5me)
  macc_pvce (f5nq, f5oq, f5pq)
  aacc_pvce (f5ne, f5oe, f5pe)
  mncn_pvce (f5kv, f5lv, f5mv)
  cncn_pvce (f5so, f5nt, f5ot)
  mbnc_pvce (f5hr, f5ir, f5jr)
  abnc_pvce (f5qd, f5rd, f5sd)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(frag_pvce, period)
  @calculate(arag_pvce, period)
  @calculate(mbic_pvce, period)
  @calculate(abic_pvce, period)
  @calculate(macc_pvce, period)
  @calculate(aacc_pvce, period)
  @calculate(mbnc_pvce, period)
  @calculate(abnc_pvce, period)
  @calculate(mncn_pvce, period)
  @calculate(cncn_pvce, period)
  return period, (frag_pvce .+ arag_pvce .+ mbic_pvce .+ abic_pvce .+ macc_pvce .+ aacc_pvce .+ mbnc_pvce .+ abnc_pvce .+ mncn_pvce .+ cncn_pvce)
end


@define_formula(rpns_pvct, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Plus values de court terme
  'ind'
  frag_pvct (f5hw, f5iw, f5jw)
  mbic_pvct (f5kx, f5lx, f5mx)
  macc_pvct (f5nx, f5ox, f5px)
  mbnc_pvct (f5hv, f5iv, f5jv)
  mncn_pvct (f5ky, f5ly, f5my)
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(frag_pvct, period)
  @calculate(mbic_pvct, period)
  @calculate(macc_pvct, period)
  @calculate(mbnc_pvct, period)
  @calculate(mncn_pvct, period)
  return period, frag_pvct .+ macc_pvct .+ mbic_pvct .+ mbnc_pvct .+ mncn_pvct
end


@define_formula(rto, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Rentes viagères (rentes à titre onéreux)",
  url = "http://fr.wikipedia.org/wiki/Rente_viagère",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(f1aw, period)
  @calculate(f1bw, period)
  @calculate(f1cw, period)
  @calculate(f1dw, period)
  return period, f1aw .+ f1bw .+ f1cw .+ f1dw
end


@define_formula(rto_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "Rentes viagères (rentes à titre onéreux) (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(rto, period, accept_other_period = true)
  return period, entity_to_person(rto, [VOUS])
end


@define_formula(rto_net, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Rentes viagères après abattements",
  url = "http://www.lafinancepourtous.fr/Vie-professionnelle-et-retraite/Retraite/Epargne-retraite/La-rente-viagere/La-fiscalite-de-la-rente-viagere",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(f1aw, period)
  @calculate(f1bw, period)
  @calculate(f1cw, period)
  @calculate(f1dw, period)
  abatviag = legislation_at(simulation, period.start)["ir"]["tspr"]["abatviag"]
  return period, round(abatviag["taux1"] .* f1aw .+ abatviag["taux2"] .* f1bw .+ abatviag["taux3"] .* f1cw .+ abatviag["taux4"] .* f1dw)
end


@define_formula(rto_net_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "Rentes viagères après abattements (pour le premier déclarant du foyer fiscal)",
) do simulation, variable, period
  @calculate(rto_net, period, accept_other_period = true)
  return period, entity_to_person(rto_net, [VOUS])
end


@define_formula(sal_pen_net, individu_definition, Float32, requested_period_default_value,
  label = "Salaires et pensions après abattement de 20% sur les salaires",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(salcho_imp, period)
  @calculate(pen_net, period)
  @calculate(abat_sal_pen, period)
  return period, salcho_imp .+ pen_net .- abat_sal_pen
end


@define_formula(salcho_imp, individu_definition, Float32, requested_period_default_value,
  label = "Salaires et chômage imposables après abattements",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_sal, period)
  @calculate(cho_ld, period)
  @calculate(fra, period)
  abatpro = legislation_at(simulation, period.start)["ir"]["tspr"]["abatpro"]
  amin = abatpro["min"] .* !cho_ld .+ abatpro["min2"] .* cho_ld
  abatfor = round(min(max(abatpro["taux"] .* rev_sal, amin), abatpro["max"]))
  return period, (fra .> abatfor) .* (rev_sal .- fra) .+ (fra .<= abatfor) .* max(0, rev_sal .- abatfor)
end


@define_formula(taux_effectif, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rni, period)
  @calculate(nbptr, period)
  @calculate(microentreprise, period)
  abnc_proc_holder = calculate(simulation, "abnc_proc", period)
  nbnc_proc_holder = calculate(simulation, "nbnc_proc", period)
  bareme = legislation_at(simulation, period.start)["ir"]["bareme"]
  cga = legislation_at(simulation, period.start)["ir"]["rpns"]["cga_taux2"]
  me = legislation_at(simulation, period.start)["ir"]["rpns"]["microentreprise"]
  abnc_proc = sum_person_in_entity(abnc_proc_holder, get_entity(variable), period)
  nbnc_proc = sum_person_in_entity(nbnc_proc_holder, get_entity(variable), period)
  base_fictive = rni .+ microentreprise .+ abnc_proc .+ nbnc_proc .* (1 + cga)
  trigger = (microentreprise .!= 0) | (abnc_proc .!= 0) | (nbnc_proc .!= 0)
  return period, trigger .* nbptr .* apply_tax_scale(bareme, base_fictive ./ nbptr) ./ max(1, base_fictive)
end


@define_formula(teicaa, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Taxe exceptionelle sur l'indemnité compensatrice des agents d'assurance"
  period = YearPeriod(firstdayofmonth(period.start))
  f5qm_holder = calculate(simulation, "f5qm", period)
  bareme = legislation_at(simulation, period.start)["ir"]["teicaa"]
  f5qm = single_person_in_entity(f5qm_holder, get_entity(variable), period, VOUS)
  f5rm = single_person_in_entity(f5qm_holder, get_entity(variable), period, CONJ)
  return period, apply_tax_scale(bareme, f5qm) + apply_tax_scale(bareme, f5rm)
end


@define_formula(tspr, individu_definition, Float32, requested_period_default_value,
  label = "Traitements salaires pensions et rentes individuelles",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(sal_pen_net, period)
  @calculate(rto_net_declarant1, first_day(period))
  return period, sal_pen_net .+ rto_net_declarant1
end


@define_formula(veuf, foyer_fiscal_definition, Bool, requested_period_last_value) do simulation, variable, period
  """Veuf (4)
  'foy'
  """
  period = YearPeriod(firstdayofmonth(period.start))
  statmarit_holder = calculate(simulation, "statmarit", period)
  statmarit = single_person_in_entity(statmarit_holder, get_entity(variable), period, VOUS)
  return period, statmarit .== 4
end
