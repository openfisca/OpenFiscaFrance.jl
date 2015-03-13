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


@define_formula(aefa, famille_definition, Float32, requested_period_default_value,
  label = "Aide exceptionelle de fin d'année (prime de Noël)",
  url = "http://www.pole-emploi.fr/candidat/aide-exceptionnelle-de-fin-d-annee-dite-prime-de-noel--@/suarticle.jspz?id=70996",
) do simulation, variable, period
  if Date(2009, 1, 1) <= period.start && period.start <= Date(2015, 12, 31)
    period = YearPeriod(firstdayofyear(period.start))
    age_holder = calculate(simulation, "age", period)
    smic55_holder = calculate(simulation, "smic55", period, accept_other_period = true)
    @calculate(af_nbenf, period)
    @calculate(nb_par, period)
    @calculate_add(ass, period)
    aer_holder = calculate(simulation, "aer", period)
    @calculate_add(api, period)
    @calculate(rsa, period)
    P = legislation_at(simulation, period.start)["minim"]["aefa"]
    af = legislation_at(simulation, period.start)["fam"]["af"]
    age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    aer = sum_person_in_entity(aer_holder, get_entity(variable), period)
    smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
    dummy_ass = ass .> 0
    dummy_aer = aer .> 0
    dummy_api = api .> 0
    dummy_rmi = rsa .> 0
    maj = 0
    condition = (dummy_ass .+ dummy_aer .+ dummy_api .+ dummy_rmi .> 0)
    if hasattr(af, "age3")
      nbPAC = nb_enf(age, smic55, af["age1"], af["age3"])
    else
      nbPAC = af_nbenf
    end
    aefa = condition .* P["mon_seul"] .* (1 .+ (nb_par .== 2) .* P["tx_2p"] .+ nbPAC .* P["tx_supp"] .* (nb_par .<= 2) .+ nbPAC .* P["tx_3pac"] .* max(nbPAC .- 2, 0))
    aefa_maj = P["mon_seul"] * maj
    aefa = max(aefa_maj, aefa)
    return period, aefa
  elseif Date(2008, 1, 1) <= period.start && period.start <= Date(2008, 12, 31)
    period = YearPeriod(firstdayofyear(period.start))
    age_holder = calculate(simulation, "age", period)
    smic55_holder = calculate(simulation, "smic55", period, accept_other_period = true)
    @calculate(af_nbenf, period)
    @calculate(nb_par, period)
    @calculate_add(ass, period)
    aer_holder = calculate(simulation, "aer", period)
    @calculate_add(api, period)
    @calculate(rsa, period)
    P = legislation_at(simulation, period.start)["minim"]["aefa"]
    af = legislation_at(simulation, period.start)["fam"]["af"]
    age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    aer = sum_person_in_entity(aer_holder, get_entity(variable), period)
    smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
    dummy_ass = ass .> 0
    dummy_aer = aer .> 0
    dummy_api = api .> 0
    dummy_rmi = rsa .> 0
    maj = 0
    condition = (dummy_ass .+ dummy_aer .+ dummy_api .+ dummy_rmi .> 0)
    if hasattr(af, "age3")
      nbPAC = nb_enf(age, smic55, af["age1"], af["age3"])
    else
      nbPAC = af_nbenf
    end
    aefa = condition .* P["mon_seul"] .* (1 .+ (nb_par .== 2) .* P["tx_2p"] .+ nbPAC .* P["tx_supp"] .* (nb_par .<= 2) .+ nbPAC .* P["tx_3pac"] .* max(nbPAC .- 2, 0))
    aefa += condition .* P["forf2008"]
    aefa_maj = P["mon_seul"] * maj
    aefa = max(aefa_maj, aefa)
    return period, aefa
  elseif Date(2002, 1, 1) <= period.start && period.start <= Date(2007, 12, 31)
    period = YearPeriod(firstdayofyear(period.start))
    age_holder = calculate(simulation, "age", period)
    smic55_holder = calculate(simulation, "smic55", period, accept_other_period = true)
    @calculate(af_nbenf, period)
    @calculate(nb_par, period)
    @calculate_add(ass, period)
    aer_holder = calculate(simulation, "aer", period)
    @calculate_add(api, period)
    @calculate(rsa, period)
    P = legislation_at(simulation, period.start)["minim"]["aefa"]
    af = legislation_at(simulation, period.start)["fam"]["af"]
    age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    aer = sum_person_in_entity(aer_holder, get_entity(variable), period)
    smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
    dummy_ass = ass .> 0
    dummy_aer = aer .> 0
    dummy_api = api .> 0
    dummy_rmi = rsa .> 0
    maj = 0
    condition = (dummy_ass .+ dummy_aer .+ dummy_api .+ dummy_rmi .> 0)
    if hasattr(af, "age3")
      nbPAC = nb_enf(age, smic55, af["age1"], af["age3"])
    else
      nbPAC = af_nbenf
    end
    aefa = condition .* P["mon_seul"] .* (1 .+ (nb_par .== 2) .* P["tx_2p"] .+ nbPAC .* P["tx_supp"] .* (nb_par .<= 2) .+ nbPAC .* P["tx_3pac"] .* max(nbPAC .- 2, 0))
    aefa_maj = P["mon_seul"] * maj
    aefa = max(aefa_maj, aefa)
    return period, aefa
  else
    return period, default_array(variable)
  end
end


@define_formula(api, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de parent isolé",
  url = "(u'http://fr.wikipedia.org/wiki/Allocation_de_parent_isol%C3%A9',)",
) do simulation, variable, period
  if period.start <= Date(2009, 5, 31)
    "Allocation de parent isolé"
    period = MonthPeriod(firstdayofmonth(period.start))
    agem_holder = calculate(simulation, "agem", period)
    age_holder = calculate(simulation, "age", period)
    smic55_holder = calculate(simulation, "smic55", period)
    @calculate(isol, period)
    @calculate(rsa_forfait_logement, period)
    @calculate(br_rmi, period)
    @calculate(af_majo, period)
    @calculate(rsa, period)
    af = legislation_at(simulation, period.start)["fam"]["af"]
    api = legislation_at(simulation, period.start)["minim"]["api"]
    age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
    agem = split_person_by_role(agem_holder, get_entity(variable), period, ENFS)
    smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
    benjamin = age_en_mois_benjamin(agem)
    enceinte = (benjamin .< 0) .* (benjamin .> -6)
    condition = (floor(benjamin ./ 12) .<= api["age"] - 1)
    eligib = isol .* ((enceinte .!= 0) | (nb_enf(age, smic55, 0, api["age"] - 1) .> 0)) .* condition
    api1 = eligib .* af["bmaf"] .* (api["base"] .+ api["enf_sup"] .* nb_enf(age, smic55, af["age1"], api["age_pac"] - 1))
    rsa = (api["age_pac"] >= 25)
    br_api = br_rmi .+ af_majo .* !rsa
    api = max(0, api1 .- rsa_forfait_logement ./ 12 .- br_api ./ 12 .- rsa / 12)
    return period, api
  else
    return period, default_array(variable)
  end
end


@define_formula(br_rmi, famille_definition, Float32, requested_period_default_value,
  label = "Base ressources du Rmi ou du Rsa",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(br_rmi_pf, period)
  @calculate(br_rmi_ms, period)
  br_rmi_i_holder = calculate(simulation, "br_rmi_i", period)
  br_rmi_i_total = sum_person_in_entity(br_rmi_i_holder, get_entity(variable), period)
  return period, br_rmi_pf .+ br_rmi_ms .+ br_rmi_i_total
end


@define_formula(br_rmi_i, individu_definition, Float32, requested_period_default_value,
  label = "Base ressource individuelle du RSA/RMI",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  three_previous_months = MonthPeriod(period.start, 3) - Month(3)
  @calculate(ra_rsa_i, period)
  
  function calcule_type_ressource(variable_name; neutralisable = false)
    ressource_trois_derniers_mois = calculate(simulation, variable_name, three_previous_months)
    if neutralisable
      ressource_mois_courant = calculate(simulation, variable_name, period)
      return (ressource_mois_courant .> 0) .* ressource_trois_derniers_mois
    else
      return ressource_trois_derniers_mois
    end
  end

  chonet = calcule_type_ressource("chonet", neutralisable = true)
  pensions_alimentaires_percues = calcule_type_ressource("pensions_alimentaires_percues", neutralisable = true)
  allocation_aide_retour_emploi = calcule_type_ressource("allocation_aide_retour_emploi", neutralisable = true)
  allocation_securisation_professionnelle = calcule_type_ressource("allocation_securisation_professionnelle", neutralisable = true)
  prestation_compensatoire = calcule_type_ressource("prestation_compensatoire", neutralisable = true)
  rstnet = calcule_type_ressource("rstnet")
  rto_declarant1 = calcule_type_ressource("rto_declarant1")
  rfon_ms = calcule_type_ressource("rfon_ms")
  div_ms = calcule_type_ressource("div_ms")
  gains_exceptionnels = calcule_type_ressource("gains_exceptionnels")
  dedommagement_victime_amiante = calcule_type_ressource("dedommagement_victime_amiante")
  pensions_invalidite = calcule_type_ressource("pensions_invalidite")
  rsa_base_ressources_patrimoine_i = calcule_type_ressource("rsa_base_ressources_patrimoine_i")
  rev_cap_bar_holder = calculate(simulation, "rev_cap_bar", three_previous_months)
  rev_cap_lib_holder = calculate(simulation, "rev_cap_lib", three_previous_months)
  rev_cap_bar = entity_to_person(rev_cap_bar_holder, period, VOUS)
  rev_cap_lib = entity_to_person(rev_cap_lib_holder, period, VOUS)
  return period, ra_rsa_i .+ (chonet .+ rstnet .+ pensions_alimentaires_percues .+ rto_declarant1 .+ rev_cap_bar .+ rev_cap_lib .+ rfon_ms .+ div_ms .+ gains_exceptionnels .+ dedommagement_victime_amiante .+ pensions_invalidite .+ allocation_aide_retour_emploi .+ allocation_securisation_professionnelle .+ prestation_compensatoire .+ rsa_base_ressources_patrimoine_i) ./ 3
end


@define_formula(br_rmi_ms, famille_definition, Float32, requested_period_default_value,
  label = "Minima sociaux inclus dans la base ressource RSA/RMI",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  three_previous_months = MonthPeriod(period.start, 3) - Month(3)
  @calculate(aspa, period)
  @calculate(asi, period)
  @calculate(ass, period)
  aah_holder = calculate(simulation, "aah", three_previous_months)
  caah_holder = calculate(simulation, "caah", three_previous_months)
  aah = sum_person_in_entity(aah_holder, get_entity(variable), period)
  caah = sum_person_in_entity(caah_holder, get_entity(variable), period)
  return period, aspa .+ asi .+ ass .+ aah .+ caah
end


@define_formula(br_rmi_pf, famille_definition, Float32, requested_period_default_value,
  label = "Prestations familiales inclues dans la base ressource RSA/RMI",
) do simulation, variable, period
  if Date(2002, 1, 1) <= period.start && period.start <= Date(2003, 12, 31)
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(af_base, period)
    @calculate_divide(cf, period)
    @calculate(asf, period)
    @calculate_divide(apje, period)
    @calculate_divide(ape, period)
    P = legislation_at(simulation, period.start)["minim"]
    return period, P["rmi"]["pfInBRrmi"] .* (af_base .+ cf .+ asf .+ apje .+ ape)
  elseif Date(2004, 1, 1) <= period.start && period.start <= Date(2014, 3, 31)
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(af_base, period)
    @calculate_divide(cf, period)
    @calculate_divide(asf, period)
    @calculate_divide(paje_base, period)
    @calculate_divide(paje_clca, period)
    @calculate_divide(paje_colca, period)
    P = legislation_at(simulation, period.start)["minim"]
    return period, P["rmi"]["pfInBRrmi"] .* (af_base .+ cf .+ asf .+ paje_base .+ paje_clca .+ paje_colca)
  elseif Date(2014, 4, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(af_base, period)
    @calculate_divide(cf, period)
    @calculate(rsa_forfait_asf, period)
    @calculate_divide(paje_base, period)
    @calculate_divide(paje_clca, period)
    @calculate_divide(paje_colca, period)
    P = legislation_at(simulation, period.start)["minim"]
    return period, P["rmi"]["pfInBRrmi"] .* (af_base .+ rsa_forfait_asf .+ cf .+ paje_base .+ paje_clca .+ paje_colca)
  else
    return period, default_array(variable)
  end
end


@define_formula(crds_mini, famille_definition, Float32, requested_period_default_value,
  label = "CRDS versée sur les minimas sociaux",
) do simulation, variable, period
  if Date(2009, 6, 1) <= period.start
    "CRDS sur les minima sociaux"
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(rsa_act, period)
    taux_crds = legislation_at(simulation, period.start)["fam"]["af"]["crds"]
    return period, -taux_crds .* rsa_act
  else
    return period, default_array(variable)
  end
end


@define_formula(div_ms, individu_definition, Float32, requested_period_default_value) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  f3vc_holder = calculate(simulation, "f3vc", period)
  f3ve_holder = calculate(simulation, "f3ve", period)
  f3vg_holder = calculate(simulation, "f3vg", period)
  f3vl_holder = calculate(simulation, "f3vl", period)
  f3vm_holder = calculate(simulation, "f3vm", period)
  f3vc = entity_to_person(f3vc_holder, period, VOUS)
  f3ve = entity_to_person(f3ve_holder, period, VOUS)
  f3vg = entity_to_person(f3vg_holder, period, VOUS)
  f3vl = entity_to_person(f3vl_holder, period, VOUS)
  f3vm = entity_to_person(f3vm_holder, period, VOUS)
  return period, f3vc .+ f3ve .+ f3vg .+ f3vl .+ f3vm
end


@define_formula(enceinte_fam, famille_definition, Bool, requested_period_last_value) do simulation, variable, period
  period = period
  agem_holder = calculate(simulation, "agem", period)
  enceinte_holder = calculate(simulation, "enceinte", period)
  agem_enf = split_person_by_role(agem_holder, get_entity(variable), period, ENFS)
  enceinte = split_person_by_role(enceinte_holder, get_entity(variable), period, [CHEF, PART])
  benjamin = age_en_mois_benjamin(agem_enf)
  enceinte_compat = ((benjamin .< 0) & (benjamin .> -6))
  return period, ((enceinte_compat | (enceinte[CHEF])) | (enceinte[PART]))
end


@define_formula(psa, famille_definition, Float32, requested_period_default_value,
  label = "Prime de solidarité active",
  url = "http://www.service-public.fr/actualites/001077.html",
) do simulation, variable, period
  if Date(2009, 4, 1) <= period.start && period.start <= Date(2009, 4, 30)
    """Prime de solidarité active (exceptionnelle, 200€ versés une fois en avril 2009)
    Versement en avril 2009 d’une prime de solidarité active (Psa) aux familles modestes qui ont bénéficié
    en janvier, février ou mars 2009 du Rmi, de l’Api (du Rsa expérimental, du Cav ou du Rma pour
    les ex-bénéficiaires du Rmi ou de l’Api), de la prime forfaitaire mensuelle au titre du Rmi ou de l’Api
    ou enfin d’une aide au logement (à condition d’exercer une activité professionnelle et
    d’être âgé de plus de 25 ans ou d’avoir au moins un enfant à charge).
    La Psa, prime exceptionnelle, s’élève à 200 euros par foyer bénéficiaire.
    """
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(api, period)
    @calculate(rsa, period)
    activite_holder = calculate(simulation, "activite", period)
    @calculate(af_nbenf, period)
    @calculate(aide_logement, period)
    P = legislation_at(simulation, period.start)["minim"]["rmi"]
    activite = split_person_by_role(activite_holder, get_entity(variable), period, [CHEF, PART])
    dummy_api = api .> 0
    dummy_rmi = rsa .> 0
    dummy_al = ((aide_logement .> 0) & ((af_nbenf .> 0) | ((activite[CHEF] .== 0) | (activite[PART] .== 0))))
    condition = (dummy_api .+ dummy_rmi .+ dummy_al .> 0)
    psa = condition .* P["psa"]
    return period, psa
  else
    return period, default_array(variable)
  end
end


@define_formula(ra_rsa, famille_definition, Float32, requested_period_default_value,
  label = "Revenus d'activité du RSA",
  start_date = Date(2009, 6, 1),
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  ra_rsa_i_holder = calculate(simulation, "ra_rsa_i", period)
  ra_rsa = sum_person_in_entity(ra_rsa_i_holder, get_entity(variable), period)
  return period, ra_rsa
end


@define_formula(ra_rsa_i, individu_definition, Float32, requested_period_default_value,
  label = "Revenus d'activité du Rsa - Individuel",
  start_date = Date(2009, 6, 1),
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  three_previous_months = MonthPeriod(period.start, 3) - Month(3)
  
  function calcule_type_ressource(variable_name; neutralisable = false)
    ressource_trois_derniers_mois = calculate(simulation, variable_name, three_previous_months)
    if neutralisable
      ressource_mois_courant = calculate(simulation, variable_name, period)
      return (ressource_mois_courant .> 0) .* ressource_trois_derniers_mois
    else
      return ressource_trois_derniers_mois
    end
  end

  salnet = calcule_type_ressource("salnet", neutralisable = true)
  indemnites_chomage_partiel = calcule_type_ressource("indemnites_chomage_partiel", neutralisable = true)
  indemnites_journalieres_maternite = calcule_type_ressource("indemnites_journalieres_maternite", neutralisable = true)
  indemnites_journalieres_paternite = calcule_type_ressource("indemnites_journalieres_paternite", neutralisable = true)
  indemnites_journalieres_adoption = calcule_type_ressource("indemnites_journalieres_adoption", neutralisable = true)
  indemnites_journalieres_maladie = calcule_type_ressource("indemnites_journalieres_maladie", neutralisable = true)
  indemnites_journalieres_accident_travail = calcule_type_ressource("indemnites_journalieres_accident_travail", neutralisable = true)
  indemnites_journalieres_maladie_professionnelle = calcule_type_ressource("indemnites_journalieres_maladie_professionnelle", neutralisable = true)
  indemnites_volontariat = calcule_type_ressource("indemnites_volontariat", neutralisable = true)
  revenus_stage_formation_pro = calcule_type_ressource("revenus_stage_formation_pro", neutralisable = true)
  indemnites_stage = calcule_type_ressource("indemnites_stage", neutralisable = true)
  bourse_recherche = calcule_type_ressource("bourse_recherche", neutralisable = true)
  hsup = calcule_type_ressource("hsup")
  etr = calcule_type_ressource("etr")
  @calculate_add(tns_total_revenus, three_previous_months)
  @calculate_add_divide(rpns, three_previous_months)
  return period, (salnet .+ hsup .+ rpns .+ etr .+ indemnites_chomage_partiel .+ indemnites_journalieres_maternite .+ indemnites_journalieres_paternite .+ indemnites_journalieres_adoption .+ indemnites_journalieres_maladie .+ indemnites_journalieres_accident_travail .+ indemnites_journalieres_maladie_professionnelle .+ indemnites_volontariat .+ revenus_stage_formation_pro .+ indemnites_stage .+ tns_total_revenus .+ bourse_recherche) ./ 3
end


@define_formula(rfon_ms, individu_definition, Float32, requested_period_default_value,
  label = "Revenus fonciers pour la base ressource du rmi/rsa",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  f4ba_holder = calculate(simulation, "f4ba", period)
  f4be_holder = calculate(simulation, "f4be", period)
  f4ba = entity_to_person(f4ba_holder, period, VOUS)
  f4be = entity_to_person(f4be_holder, period, VOUS)
  return period, f4ba .+ f4be
end


@define_formula(rmi, famille_definition, Float32, requested_period_default_value,
  label = "Revenu Minimum d'Insertion",
) do simulation, variable, period
  if Date(1988, 12, 1) <= period.start && period.start <= Date(2009, 5, 31)
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(rsa_socle, period)
    @calculate(rsa_forfait_logement, period)
    @calculate(br_rmi, period)
    return period, max(0, rsa_socle .- rsa_forfait_logement .- br_rmi)
  else
    return period, default_array(variable)
  end
end


@define_formula(rmi_nbp, famille_definition, Int32, requested_period_default_value,
  label = "Nombre de personne à charge au sens du Rmi/Rsa",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", period)
  @calculate(nb_par, period)
  P = legislation_at(simulation, period.start)["minim"]["rmi"]
  age = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55 = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  return period, nb_par .+ nb_enf(age, smic55, 0, P["age_pac"] - 1)
end


@define_formula(rsa, famille_definition, Float32, requested_period_default_value,
  label = "Revenu de solidarité active",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rsa_majore, period)
  @calculate(rsa_non_majore, period)
  rsa = max(rsa_majore, rsa_non_majore)
  return period, rsa
end


@define_formula(rsa_act, famille_definition, Float32, requested_period_default_value,
  label = "Revenu de solidarité active - activité",
  start_date = Date(2009, 6, 1),
) do simulation, variable, period
  if Date(2009, 6, 1) <= period.start
    """Calcule le montant du RSA activité
    Note: le partage en moitié est un point de législation, pas un choix arbitraire
    """
    period = period
    @calculate(rsa, period)
    @calculate(rmi, period)
    return period, max(rsa .- rmi, 0)
  else
    return period, default_array(variable)
  end
end


@define_formula(rsa_act_i, individu_definition, Float32, requested_period_default_value,
  label = "Revenu de solidarité active - activité au niveau de l'individu",
  start_date = Date(2009, 6, 1),
) do simulation, variable, period
  if Date(2009, 6, 1) <= period.start
    period = period
    rsa_act_holder = calculate(simulation, "rsa_act", period)
    concub_holder = calculate(simulation, "concub", period)
    maries_holder = calculate(simulation, "maries", period)
    @calculate(quifam, period)
    concub = entity_to_person(concub_holder, period)
    maries = entity_to_person(maries_holder, period)
    rsa_act = entity_to_person(rsa_act_holder, period)
    conj = (concub | maries)
    rsa_act_i = 0 .* quifam
    chef_filter = quifam .== 0
    rsa_act_i[chef_filter] = rsa_act[chef_filter] / (1 + conj[chef_filter])
    partenaire_filter = quifam .== 1
    rsa_act_i[partenaire_filter] = rsa_act[partenaire_filter] * conj[partenaire_filter] / 2
    return period, rsa_act_i
  else
    return period, default_array(variable)
  end
end


@define_formula(rsa_base_ressources_patrimoine_i, individu_definition, Float32, requested_period_default_value,
  label = "Base de ressources des revenus du patrimoine du RSA",
  start_date = Date(2009, 6, 1),
) do simulation, variable, period
  if Date(2009, 6, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(interets_epargne_sur_livrets, period)
    @calculate(epargne_non_remuneree, period)
    @calculate_divide(revenus_capital, period)
    @calculate(valeur_locative_immo_non_loue, period)
    @calculate(valeur_locative_terrains_non_loue, period)
    @calculate_divide(revenus_locatifs, period)
    rsa = legislation_at(simulation, period.start)["minim"]["rmi"]
    return period, (interets_epargne_sur_livrets ./ 12 .+ epargne_non_remuneree .* rsa["patrimoine"]["taux_interet_forfaitaire_epargne_non_remunere"] ./ 12 .+ revenus_capital .+ valeur_locative_immo_non_loue .* rsa["patrimoine"]["abattement_valeur_locative_immo_non_loue"] .+ valeur_locative_terrains_non_loue .* rsa["patrimoine"]["abattement_valeur_locative_terrains_non_loue"] .+ revenus_locatifs)
  else
    return period, default_array(variable)
  end
end


@define_formula(rsa_forfait_asf, famille_definition, Float32, requested_period_default_value,
  label = "Allocation de soutien familial forfaitisée pour le RSA",
  start_date = Date(2014, 4, 1),
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(asf_elig, period)
  rsa_forfait_asf_i_holder = calculate(simulation, "rsa_forfait_asf_i", period)
  montant = sum_person_in_entity(rsa_forfait_asf_i_holder, get_entity(variable), period, ENFS)
  return period, asf_elig .* montant
end


@define_formula(rsa_forfait_asf_i, individu_definition, Float32, requested_period_default_value,
  label = "RSA - Montant individuel de forfait ASF",
  start_date = Date(2014, 4, 1),
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(asf_elig_i, period)
  pfam = legislation_at(simulation, period.start)["fam"]
  minim = legislation_at(simulation, period.start)["minim"]
  return period, asf_elig_i .* pfam["af"]["bmaf"] .* minim["rmi"]["forfait_asf"]["taux1"]
end


@define_formula(rsa_forfait_logement, famille_definition, Float32, requested_period_default_value,
  label = "Forfait logement intervenant dans le calcul du Rmi ou du Rsa",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  forf_logement = legislation_at(simulation, period.start)["minim"]["rmi"]["forfait_logement"]
  rmi = legislation_at(simulation, period.start)["minim"]["rmi"]["rmi"]
  @calculate(rmi_nbp, period)
  statut_occupation_holder = calculate(simulation, "statut_occupation", period)
  @calculate(aide_logement, period)
  statut_occupation = entity_to_person(statut_occupation_holder, period)
  statut_occupation = single_person_in_entity(statut_occupation, get_entity(variable), period, CHEF)
  avantage_nature = ((statut_occupation .== 2) | (statut_occupation .== 6))
  avantage_al = aide_logement .> 0
  montant_forfait = rmi .* ((rmi_nbp .== 1) .* forf_logement["taux1"] .+ (rmi_nbp .== 2) .* forf_logement["taux2"] .+ (rmi_nbp .>= 3) .* forf_logement["taux3"])
  montant_al = avantage_al .* min(aide_logement, montant_forfait)
  montant_nature = avantage_nature .* montant_forfait
  return period, max(montant_al, montant_nature)
end


@define_formula(rsa_majore, famille_definition, Float32, requested_period_default_value,
  label = "Revenu de solidarité active - majoré",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rsa_socle_majore, period)
  @calculate(ra_rsa, period)
  @calculate(rsa_forfait_logement, period)
  @calculate(br_rmi, period)
  P = legislation_at(simulation, period.start)["minim"]["rmi"]
  base_normalise = max(rsa_socle_majore .- rsa_forfait_logement .- br_rmi .+ P["pente"] .* ra_rsa, 0)
  return period, base_normalise .* (base_normalise .>= P["rsa_nv"])
end


@define_formula(rsa_non_majore, famille_definition, Float32, requested_period_default_value,
  label = "Revenu de solidarité active - non majoré",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rsa_socle, period)
  @calculate(ra_rsa, period)
  @calculate(rsa_forfait_logement, period)
  @calculate(br_rmi, period)
  P = legislation_at(simulation, period.start)["minim"]["rmi"]
  base_normalise = max(rsa_socle .- rsa_forfait_logement .- br_rmi .+ P["pente"] .* ra_rsa, 0)
  return period, base_normalise .* (base_normalise .>= P["rsa_nv"])
end


@define_formula(rsa_socle, famille_definition, Float32, requested_period_default_value,
  label = "RSA socle",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", period)
  activite_holder = calculate(simulation, "activite", period)
  @calculate(nb_par, period)
  rmi = legislation_at(simulation, period.start)["minim"]["rmi"]
  age_parents = split_person_by_role(age_holder, get_entity(variable), period, [CHEF, PART])
  activite_parents = split_person_by_role(activite_holder, get_entity(variable), period, [CHEF, PART])
  age_enf = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55_enf = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  nbp = nb_par .+ nb_enf(age_enf, smic55_enf, 0, rmi["age_pac"])
  eligib = ((age_parents[CHEF] .>= rmi["age_pac"]) & !(activite_parents[CHEF] .== 2)) | ((age_parents[PART] .>= rmi["age_pac"]) & !(activite_parents[PART] .== 2))
  taux = (1 .+ (nbp .>= 2) .* rmi["txp2"] .+ (nbp .>= 3) .* rmi["txp3"] .+ (nbp .>= 4) .* ((nb_par .== 1) .* rmi["txps"] .+ (nb_par .!= 1) .* rmi["txp3"]) .+ max(nbp .- 4, 0) .* rmi["txps"])
  return period, eligib .* rmi["rmi"] .* taux
end


@define_formula(rsa_socle_majore, famille_definition, Float32, requested_period_default_value,
  label = "Majoration pour parent isolé du Revenu de solidarité active socle",
  start_date = Date(2009, 6, 1),
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(enceinte_fam, period)
  age_holder = calculate(simulation, "age", period)
  smic55_holder = calculate(simulation, "smic55", period)
  @calculate(isol, period)
  rmi = legislation_at(simulation, period.start)["minim"]["rmi"]
  age_enf = split_person_by_role(age_holder, get_entity(variable), period, ENFS)
  smic55_enf = split_person_by_role(smic55_holder, get_entity(variable), period, ENFS)
  nbenf = nb_enf(age_enf, smic55_enf, 0, rmi["age_pac"])
  eligib = isol .* (enceinte_fam | (nbenf .> 0))
  taux = rmi["majo_rsa"]["pac0"] .+ rmi["majo_rsa"]["pac_enf_sup"] .* nbenf
  return period, eligib .* rmi["rmi"] .* taux
end
