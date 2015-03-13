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


@define_formula(ass_isf, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(isf_imm_bati, period)
  @calculate(isf_imm_non_bati, period)
  @calculate(isf_droits_sociaux, period)
  @calculate(b1cg, period)
  @calculate(b2gh, period)
  P = legislation_at(simulation, period.start)["isf"]["forf_mob"]
  total = isf_imm_bati .+ isf_imm_non_bati .+ isf_droits_sociaux
  forf_mob = (b1cg .!= 0) .* b1cg .+ (b1cg .== 0) .* total .* P["taux"]
  actif_brut = total .+ forf_mob
  return period, actif_brut .- b2gh
end


@define_formula(bouclier_fiscal, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
  stop_date = Date(2010, 12, 31),
  url = "http://fr.wikipedia.org/wiki/Bouclier_fiscal",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(bouclier_sumimp, period)
  @calculate(bouclier_rev, period)
  P = legislation_at(simulation, period.start)["bouclier_fiscal"]
  return period, max(0, bouclier_sumimp .- (bouclier_rev .* P["taux"]))
end


@define_formula(bouclier_imp_gen, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
  stop_date = Date(2010, 12, 31),
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(irpp, period)
  taxe_habitation_holder = calculate(simulation, "taxe_habitation", period)
  @calculate(tax_fonc, period)
  @calculate(isf_tot, period)
  cotsoc_lib_declarant1_holder = calculate(simulation, "cotsoc_lib_declarant1", period)
  cotsoc_bar_declarant1_holder = calculate(simulation, "cotsoc_bar_declarant1", period)
  csgsald_holder = calculate(simulation, "csgsald", period)
  csgsali_holder = calculate(simulation, "csgsali", period)
  crdssal_holder = calculate(simulation, "crdssal", period)
  csgchoi_holder = calculate(simulation, "csgchoi", period)
  csgchod_holder = calculate(simulation, "csgchod", period)
  csgrstd_holder = calculate(simulation, "csgrstd", period)
  csgrsti_holder = calculate(simulation, "csgrsti", period)
  @calculate(imp_lib, period)
  cotsoc_bar = sum_person_in_entity(cotsoc_bar_declarant1_holder, get_entity(variable), period)
  cotsoc_lib = sum_person_in_entity(cotsoc_lib_declarant1_holder, get_entity(variable), period)
  crdssal = sum_person_in_entity(crdssal_holder, get_entity(variable), period)
  csgchod = sum_person_in_entity(csgchod_holder, get_entity(variable), period)
  csgchoi = sum_person_in_entity(csgchoi_holder, get_entity(variable), period)
  csgsald = sum_person_in_entity(csgsald_holder, get_entity(variable), period)
  csgsali = sum_person_in_entity(csgsali_holder, get_entity(variable), period)
  csgrstd = sum_person_in_entity(csgrstd_holder, get_entity(variable), period)
  csgrsti = sum_person_in_entity(csgrsti_holder, get_entity(variable), period)
  taxe_habitation = entity_to_person(taxe_habitation_holder, period, PREF)
  taxe_habitation = sum_person_in_entity(taxe_habitation, get_entity(variable), period)
  imp1 = cotsoc_lib .+ cotsoc_bar .+ csgsald .+ csgchod .+ crdssal .+ csgrstd .+ imp_lib
  "Impôts payés en l'année 'n' au titre des revenus réalisés sur l'année 'n'"
  imp2 = irpp .+ isf_tot .+ taxe_habitation .+ tax_fonc .+ csgsali .+ csgchoi .+ csgrsti
  "Impôts payés en l'année 'n' au titre des revenus réalisés en 'n-1'"
  return period, imp1 .+ imp2
end


@define_formula(bouclier_rev, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
  stop_date = Date(2010, 12, 31),
) do simulation, variable, period
  "Total des revenus sur l'année 'n' net de charges"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rbg, period)
  @calculate(maj_cga, period)
  @calculate(csg_deduc, period)
  @calculate(rvcm_plus_abat, period)
  @calculate(rev_cap_lib, period)
  @calculate(rev_exo, period)
  @calculate(rev_or, period)
  @calculate(cd_penali, period)
  @calculate(cd_eparet, period)
  null = 0 .* rbg
  deficit_ante = null
  frac_rvcm_rfr = 0.7 .* rvcm_plus_abat
  rev_bar = rbg .- maj_cga .- csg_deduc .- deficit_ante
  rev_lib = rev_cap_lib
  rev_exo = null
  revenus = rev_bar .+ rev_lib .+ rev_exo .+ rev_or
  charges = cd_penali .+ cd_eparet
  return period, revenus .- charges
end


@define_formula(bouclier_sumimp, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
  stop_date = Date(2010, 12, 31),
) do simulation, variable, period
  "Somme totale des impôts moins restitutions et degrèvements"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(bouclier_imp_gen, period)
  @calculate(restitutions, period)
  return period, -bouclier_imp_gen .+ restitutions
end


@define_formula(decote_isf, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Décote de l'ISF",
  start_date = Date(2013, 1, 1),
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ass_isf, period)
  P = legislation_at(simulation, period.start)["isf"]["decote"]
  elig = (ass_isf .>= P["min"]) & (ass_isf .<= P["max"])
  LB = P["base"] .- P["taux"] .* ass_isf
  return period, LB .* elig
end


@define_formula(isf_actions_sal, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
) do simulation, variable, period
  "Parts ou actions détenues par les salariés et mandataires sociaux"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(b1cl, period)
  P = legislation_at(simulation, period.start)["isf"]["droits_soc"]
  return period, b1cl .* P["taux1"]
end


@define_formula(isf_apres_plaf, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Impôt sur la fortune après plafonnement",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2011, 12, 31)
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(tot_impot, period)
    @calculate(revetproduits, period)
    @calculate(isf_avant_plaf, period)
    P = legislation_at(simulation, period.start)["isf"]["plaf"]
    plafonnement = max(tot_impot .- revetproduits, 0)
    limitationplaf = ((isf_avant_plaf .<= P["seuil1"]) .* plafonnement .+ (P["seuil1"] .<= isf_avant_plaf) .* (isf_avant_plaf .<= P["seuil2"]) .* min(plafonnement, P["seuil1"]) .+ (isf_avant_plaf .>= P["seuil2"]) .* min(isf_avant_plaf .* P["taux"], plafonnement))
    return period, max(isf_avant_plaf .- limitationplaf, 0)
  elseif Date(2012, 1, 1) <= period.start && period.start <= Date(2012, 12, 31)
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(isf_avant_plaf, period)
    return period, isf_avant_plaf
  elseif Date(2013, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    "Impôt sur la fortune après plafonnement"
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(tot_impot, period)
    @calculate(revetproduits, period)
    @calculate(isf_avant_plaf, period)
    plafond = max(0, tot_impot .- revetproduits)
    return period, max(isf_avant_plaf .- plafond, 0)
  else
    return period, default_array(variable)
  end
end


@define_formula(isf_avant_plaf, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Montant de l'impôt avant plafonnement"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(isf_avant_reduction, period)
  @calculate(isf_inv_pme, period)
  @calculate(isf_org_int_gen, period)
  @calculate(isf_reduc_pac, period)
  borne_max = legislation_at(simulation, period.start)["isf"]["pme"]["max"]
  return period, max(0, isf_avant_reduction .- min(isf_inv_pme .+ isf_org_int_gen, borne_max) .- isf_reduc_pac)
end


@define_formula(isf_avant_reduction, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(isf_iai, period)
  @calculate(decote_isf, period)
  return period, isf_iai .- decote_isf
end


@define_formula(isf_droits_sociaux, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(isf_actions_sal, period)
  @calculate(b1cb, period)
  @calculate(b1cd, period)
  @calculate(b1ce, period)
  @calculate(b1cf, period)
  @calculate(b1cg, period)
  P = legislation_at(simulation, period.start)["isf"]["droits_soc"]
  b1cc = b1cb .* P["taux2"]
  return period, isf_actions_sal .+ b1cc .+ b1cd .+ b1ce .+ b1cf .+ b1cg
end


@define_formula(isf_iai, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2010, 12, 31)
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(ass_isf, period)
    bareme = legislation_at(simulation, period.start)["isf"]["bareme"]
    return period, apply_tax_scale(bareme, ass_isf)
  elseif Date(2011, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    period = YearPeriod(firstdayofmonth(period.start))
    @calculate(ass_isf, period)
    bareme = legislation_at(simulation, period.start)["isf"]["bareme"]
    ass_isf = (ass_isf .>= bareme.rates[1]) .* ass_isf
    return period, apply_tax_scale(bareme, ass_isf)
  else
    return period, default_array(variable)
  end
end


@define_formula(isf_imm_bati, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Immeubles bâtis"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(b1ab, period)
  @calculate(b1ac, period)
  P = legislation_at(simulation, period.start)["isf"]["res_princ"]
  return period, (1 - P["taux"]) .* b1ab .+ b1ac
end


@define_formula(isf_imm_non_bati, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Immeubles non bâtis"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(b1bc, period)
  @calculate(b1be, period)
  @calculate(b1bh, period)
  @calculate(b1bk, period)
  P = legislation_at(simulation, period.start)["isf"]["nonbat"]
  b1bd = b1bc .* P["taux_f"]
  b1bf = min(b1be, P["seuil"]) .* P["taux_r1"]
  b1bg = max(b1be .- P["seuil"], 0) .* P["taux_r2"]
  b1bi = min(b1bh, P["seuil"]) .* P["taux_r1"]
  b1bj = max(b1bh .- P["seuil"], 0) .* P["taux_r2"]
  return period, b1bd .+ b1bf .+ b1bg .+ b1bi .+ b1bj .+ b1bk
end


@define_formula(isf_inv_pme, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2008, 1, 1),
) do simulation, variable, period
  """Réductions pour investissements dans les PME
  à partir de 2008!
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(b2mt, period)
  @calculate(b2ne, period)
  @calculate(b2mv, period)
  @calculate(b2nf, period)
  @calculate(b2mx, period)
  @calculate(b2na, period)
  P = legislation_at(simulation, period.start)["isf"]["pme"]
  inv_dir_soc = b2mt .* P["taux2"] .+ b2ne .* P["taux1"]
  holdings = b2mv .* P["taux2"] .+ b2nf .* P["taux1"]
  fip = b2mx .* P["taux1"]
  fcpi = b2na .* P["taux1"]
  return period, holdings .+ fip .+ fcpi .+ inv_dir_soc
end


@define_formula(isf_org_int_gen, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(b2nc, period)
  P = legislation_at(simulation, period.start)["isf"]["pme"]
  return period, b2nc .* P["taux2"]
end


@define_formula(isf_reduc_pac, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Réductions pour personnes à charges"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(nb_pac, period)
  @calculate(nbH, period)
  P = legislation_at(simulation, period.start)["isf"]["reduc_pac"]
  return period, P["reduc_1"] .* nb_pac .+ P["reduc_2"] .* nbH
end


@define_formula(isf_tot, foyer_fiscal_definition, Float32, requested_period_default_value,
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?pageId=part_isf&espId=1&impot=ISF&sfid=50",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(b4rs, period)
  @calculate(isf_avant_plaf, period)
  @calculate(isf_apres_plaf, period)
  @calculate(irpp, period)
  return period, min(-((isf_apres_plaf .- b4rs) .* ((-irpp) .> 0) .+ (isf_avant_plaf .- b4rs) .* ((-irpp) .<= 0)), 0) # MANUAL_FIX used undotted operators
end


@define_formula(maj_cga, foyer_fiscal_definition, Float32, entity_to_entity_period_value,
  label = "Majoration pour non adhésion à un centre de gestion agréé",
) do simulation, variable, period
  @calculate(maj_cga_i, period, accept_other_period = true)
  return period, sum_person_in_entity(maj_cga_i, get_entity(variable))
end


@define_formula(maj_cga_i, individu_definition, Float32, requested_period_default_value,
  label = "Majoration pour non adhésion à un centre de gestion agréé (pour chaque individu du foyer)",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(frag_impo, period)
  @calculate(nrag_impg, period)
  @calculate(nbic_impn, period)
  @calculate(nbic_imps, period)
  @calculate(nbic_defn, period)
  @calculate(nbic_defs, period)
  @calculate(nacc_impn, period)
  @calculate(nacc_meup, period)
  @calculate(nacc_defn, period)
  @calculate(nacc_defs, period)
  @calculate(nbnc_impo, period)
  @calculate(nbnc_defi, period)
  P = legislation_at(simulation, period.start)["ir"]["rpns"]
  nbic_timp = (nbic_impn .+ nbic_imps) .- (nbic_defn .+ nbic_defs)
  nacc_timp = max(0, (nacc_impn .+ nacc_meup) .- (nacc_defn .+ nacc_defs))
  nbnc_timp = nbnc_impo .- nbnc_defi
  ntimp = nrag_impg .+ nbic_timp .+ nacc_timp .+ nbnc_timp
  return period, max(0, P["cga_taux2"] .* (ntimp .+ frag_impo))
end


@define_formula(restitutions, foyer_fiscal_definition, Float32, requested_period_default_value,
  start_date = Date(2006, 1, 1),
  stop_date = Date(2010, 12, 31),
) do simulation, variable, period
  "Restitutions d'impôt sur le revenu et degrèvements percus en l'année 'n'"
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(ppe, period)
  @calculate(restit_imp, period)
  return period, ppe .+ restit_imp
end


@define_formula(revetproduits, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenus et produits perçus (avant abattement)",
) do simulation, variable, period
  """Utilisé pour calculer le montant du plafonnement de l'ISF
  Cf.
  http://www.impots.gouv.fr/portal/deploiement/p1/fichedescriptiveformulaire_8342/fichedescriptiveformulaire_8342.pdf
  """
  period = YearPeriod(firstdayofmonth(period.start))
  salcho_imp_holder = calculate(simulation, "salcho_imp", period)
  pen_net_holder = calculate(simulation, "pen_net", period)
  @calculate(rto_net, period)
  @calculate(rev_cap_bar, period)
  @calculate(fon, period)
  ric_holder = calculate(simulation, "ric", period)
  rag_holder = calculate(simulation, "rag", period)
  rpns_exon_holder = calculate(simulation, "rpns_exon", period)
  rpns_pvct_holder = calculate(simulation, "rpns_pvct", period)
  @calculate(rev_cap_lib, period)
  @calculate(imp_lib, period)
  P = legislation_at(simulation, period.start)["isf"]["plafonnement"]
  pen_net = sum_person_in_entity(pen_net_holder, get_entity(variable), period)
  rag = sum_person_in_entity(rag_holder, get_entity(variable), period)
  ric = sum_person_in_entity(ric_holder, get_entity(variable), period)
  rpns_exon = sum_person_in_entity(rpns_exon_holder, get_entity(variable), period)
  rpns_pvct = sum_person_in_entity(rpns_pvct_holder, get_entity(variable), period)
  salcho_imp = sum_person_in_entity(salcho_imp_holder, get_entity(variable), period)
  pt = max(0, salcho_imp .+ pen_net .+ rto_net .+ rev_cap_bar .+ rev_cap_lib .+ ric .+ rag .+ rpns_exon .+ rpns_pvct .+ imp_lib .+ fon)
  return period, pt .* P["taux"]
end


@define_formula(rvcm_plus_abat, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  "Revenu catégoriel avec abattement de 40% réintégré."
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(rev_cat_rvcm, period)
  @calculate(rfr_rvcm, period)
  return period, rev_cat_rvcm .+ rfr_rvcm
end


@define_formula(tot_impot, foyer_fiscal_definition, Float32, requested_period_default_value) do simulation, variable, period
  """Total des impôts dus au titre des revenus et produits (irpp, cehr, pl, prélèvements sociaux) + ISF
  Utilisé pour calculer le montant du plafonnement de l'ISF
  """
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(irpp, period)
  @calculate(isf_avant_plaf, period)
  crds_holder = calculate(simulation, "crds", period)
  csg_holder = calculate(simulation, "csg", period)
  prelsoc_cap_holder = calculate(simulation, "prelsoc_cap", period)
  crds = split_person_by_role(crds_holder, get_entity(variable), period, [VOUS, CONJ])
  csg = split_person_by_role(csg_holder, get_entity(variable), period, [VOUS, CONJ])
  prelsoc_cap = split_person_by_role(prelsoc_cap_holder, get_entity(variable), period, [VOUS, CONJ])
  return period, (-irpp .+ isf_avant_plaf .- (crds[VOUS] .+ crds[CONJ]) .- (csg[VOUS] .+ csg[CONJ]) .- (prelsoc_cap[VOUS] .+ prelsoc_cap[CONJ]))
end
