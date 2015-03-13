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


function _traitement_brut_mensuel(indice_maj, law)
  Indice_majore_100_annuel = law["fonc"]["IM_100"]
  traitement_brut = Indice_majore_100_annuel * indice_maj / 100 / 12
  return traitement_brut
end


@define_formula(allocations_temporaires_invalidite, individu_definition, Float32, requested_period_default_value,
  label = "Allocations temporaires d'invalidité (ATI, fonction publique et collectivités locales)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(assiette_cotisations_sociales_public, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  _P = legislation_at(simulation, period.start)
  base = assiette_cotisations_sociales_public
  cotisation_etat = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = _P["cotsoc"]["cotisations_employeur"], bareme_name = "ati", base = base, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  cotisation_collectivites_locales = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = _P["cotsoc"]["cotisations_employeur"], bareme_name = "atiacl", base = base, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return period, cotisation_etat + cotisation_collectivites_locales
end


@define_formula(contribution_exceptionnelle_solidarite_employe, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation exceptionnelle de solidarité (employe)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(traitement_indiciaire_brut, period)
  @calculate(hsup, period)
  @calculate(type_sal, period)
  @calculate(indemnite_residence, period)
  @calculate(primes_fonction_publique, period)
  @calculate(rafp_employe, period)
  @calculate(pension_civile_employe, period)
  @calculate(cotisations_salariales_contributives, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(salaire_de_base, period)
  _P = legislation_at(simulation, period.start)
  seuil_assuj_fds = seuil_fds(_P)
  assujettis = ((type_sal .== CAT["public_titulaire_etat"]) .+ (type_sal .== CAT["public_titulaire_territoriale"]) .+ (type_sal .== CAT["public_titulaire_hospitaliere"]) .+ (type_sal .== CAT["public_non_titulaire"])) .* ((traitement_indiciaire_brut .+ salaire_de_base .- hsup) .> seuil_assuj_fds)
  cotisation = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = _P["cotsoc"]["cotisations_salarie"], bareme_name = "excep_solidarite", base = assujettis .* min((traitement_indiciaire_brut .+ salaire_de_base .- hsup .+ indemnite_residence .+ rafp_employe .+ pension_civile_employe .+ primes_fonction_publique .+ (type_sal .== CAT["public_non_titulaire"]) .* cotisations_salariales_contributives), _P["cotsoc"]["sal"]["fonc"]["commun"]["plafond_base_solidarite"]), plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return period, cotisation
end


@define_formula(fonds_emploi_hospitalier, individu_definition, Float32, requested_period_default_value,
  label = "Fonds pour l'emploi hospitalier (employeur)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(assiette_cotisations_sociales_public, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  _P = legislation_at(simulation, period.start)
  cotisation = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = _P["cotsoc"]["cotisations_employeur"], bareme_name = "feh", base = assiette_cotisations_sociales_public, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return period, cotisation
end


@define_formula(gipa, individu_definition, Float32, requested_period_default_value,
  label = "Indemnité de garantie individuelle du pouvoir d'achat",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate(type_sal, period)
  return period, zeros(Float32, length(type_sal))
end


@define_formula(indemnite_residence, individu_definition, Float32, requested_period_default_value,
  label = "Indemnité de résidence des fonctionnaires",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(traitement_indiciaire_brut, period)
  @calculate(salaire_de_base, period)
  @calculate(type_sal, period)
  @calculate(zone_apl_individu, period)
  _P = legislation_at(simulation, period.start)
  zone_apl = zone_apl_individu
  P = _P["fonc"]["indem_resid"]
  min_zone_1, min_zone_2, min_zone_3 = P["min"] * P["taux"]["zone1"], P["min"] * P["taux"]["zone2"], P["min"] * P["taux"]["zone3"]
  taux = P["taux"]["zone1"] .* (zone_apl .== 1) .+ P["taux"]["zone2"] .* (zone_apl .== 2) .+ P["taux"]["zone3"] .* (zone_apl .== 3)
  plancher = min_zone_1 .* (zone_apl .== 1) .+ min_zone_2 .* (zone_apl .== 2) .+ min_zone_3 .* (zone_apl .== 3)
  return period, max(plancher, taux .* (traitement_indiciaire_brut .+ salaire_de_base)) .* (type_sal .>= 2)
end


@define_formula(indice_majore, individu_definition, Float32, requested_period_default_value,
  label = "Indice majoré",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(type_sal, period)
  @calculate(traitement_indiciaire_brut, period)
  _P = legislation_at(simulation, period.start)
  traitement_annuel_brut = _P["fonc"]["IM_100"]
  return period, (traitement_indiciaire_brut .* 100 .* 12 ./ traitement_annuel_brut) .* (type_sal .>= 2)
end


@define_formula(ircantec_employe, individu_definition, Float32, requested_period_default_value,
  label = "Ircantec employé",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(assiette_cotisations_sociales, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  _P = legislation_at(simulation, period.start)
  ircantec = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = _P["cotsoc"]["cotisations_salarie"], bareme_name = "ircantec", base = assiette_cotisations_sociales, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return period, ircantec
end


@define_formula(ircantec_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Ircantec employeur",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(assiette_cotisations_sociales, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(type_sal, period)
  _P = legislation_at(simulation, period.start)
  ircantec = apply_bareme_for_relevant_type_sal(bareme_by_type_sal_name = _P["cotsoc"]["cotisations_employeur"], bareme_name = "ircantec", base = assiette_cotisations_sociales, plafond_securite_sociale = plafond_securite_sociale, type_sal = type_sal)
  return period, ircantec
end


@define_formula(pension_civile_employe, individu_definition, Float32, requested_period_default_value,
  label = "Pension civile employé",
  url = "(u'http://www.ac-besancon.fr/spip.php?article2662',)",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(traitement_indiciaire_brut, period)
  @calculate(type_sal, period)
  _P = legislation_at(simulation, period.start)
  sal = _P["cotsoc"]["cotisations_salarie"]
  terr_or_hosp = (type_sal .== CAT["public_titulaire_territoriale"]) | (type_sal .== CAT["public_titulaire_hospitaliere"])
  pension_civile_employe = ((type_sal .== CAT["public_titulaire_etat"]) .* apply_tax_scale(sal["public_titulaire_etat"]["pension"], traitement_indiciaire_brut) .+ terr_or_hosp .* apply_tax_scale(sal["public_titulaire_territoriale"]["cnracl1"], traitement_indiciaire_brut))
  return period, -pension_civile_employe
end


@define_formula(pension_civile_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Cotisation patronale pension civile",
  url = "http://www.ac-besancon.fr/spip.php?article2662",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(assiette_cotisations_sociales_public, period)
  @calculate(type_sal, period)
  _P = legislation_at(simulation, period.start)
  pat = _P["cotsoc"]["cotisations_employeur"]
  terr_or_hosp = ((type_sal .== CAT["public_titulaire_territoriale"]) | (type_sal .== CAT["public_titulaire_hospitaliere"]))
  cot_pat_pension_civile = ((type_sal .== CAT["public_titulaire_etat"]) .* apply_tax_scale(pat["public_titulaire_etat"]["pension"], assiette_cotisations_sociales_public) .+ terr_or_hosp .* apply_tax_scale(pat["public_titulaire_territoriale"]["cnracl"], assiette_cotisations_sociales_public))
  return period, -cot_pat_pension_civile
end


@define_formula(primes_fonction_publique, individu_definition, Float32, requested_period_default_value,
  label = "Calcul des primes pour les fonctionnaries",
  url = "http://vosdroits.service-public.fr/particuliers/F465.xhtml",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(type_sal, period)
  @calculate(traitement_indiciaire_brut, period)
  public = ((type_sal .== CAT["public_titulaire_etat"]) .+ (type_sal .== CAT["public_titulaire_territoriale"]) .+ (type_sal .== CAT["public_titulaire_hospitaliere"]))
  return period, TAUX_DE_PRIME .* traitement_indiciaire_brut .* public
end


@define_formula(rafp_employe, individu_definition, Float32, requested_period_default_value,
  label = "Part salariale de la retraite additionelle de la fonction publique",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(traitement_indiciaire_brut, period)
  @calculate(type_sal, period)
  @calculate(primes_fonction_publique, period)
  @calculate(supp_familial_traitement, period)
  @calculate(indemnite_residence, period)
  _P = legislation_at(simulation, period.start)
  eligible = ((type_sal .== CAT["public_titulaire_etat"]) .+ (type_sal .== CAT["public_titulaire_territoriale"]) .+ (type_sal .== CAT["public_titulaire_hospitaliere"]))
  plaf_ass = _P["cotsoc"]["sal"]["fonc"]["etat"]["rafp_plaf_assiette"]
  base_imposable = primes_fonction_publique .+ supp_familial_traitement .+ indemnite_residence
  assiette = min(base_imposable, plaf_ass .* traitement_indiciaire_brut .* eligible)
  rafp_employe = eligible .* apply_tax_scale(_P["cotsoc"]["cotisations_salarie"]["public_titulaire_etat"]["rafp"], assiette)
  return period, -rafp_employe
end


@define_formula(rafp_employeur, individu_definition, Float32, requested_period_default_value,
  label = "Part patronale de la retraite additionnelle de la fonction publique",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(traitement_indiciaire_brut, period)
  @calculate(type_sal, period)
  @calculate(primes_fonction_publique, period)
  @calculate(supp_familial_traitement, period)
  @calculate(indemnite_residence, period)
  _P = legislation_at(simulation, period.start)
  eligible = ((type_sal .== CAT["public_titulaire_etat"]) .+ (type_sal .== CAT["public_titulaire_territoriale"]) .+ (type_sal .== CAT["public_titulaire_hospitaliere"]))
  plaf_ass = _P["cotsoc"]["sal"]["fonc"]["etat"]["rafp_plaf_assiette"]
  base_imposable = primes_fonction_publique .+ supp_familial_traitement .+ indemnite_residence
  assiette = min(base_imposable, plaf_ass .* traitement_indiciaire_brut .* eligible)
  bareme_rafp = _P["cotsoc"]["cotisations_employeur"]["public_titulaire_etat"]["rafp"]
  rafp_employeur = eligible .* apply_tax_scale(bareme_rafp, assiette)
  return period, -rafp_employeur
end


function seuil_fds(law)
  "Calcul du seuil mensuel d'assujetissement à la contribution au fond de solidarité"
  ind_maj_ref = law["cotsoc"]["sal"]["fonc"]["commun"]["ind_maj_ref"]
  pt_ind_mensuel = law["cotsoc"]["sal"]["fonc"]["commun"]["pt_ind"] / 12
  seuil_mensuel = floor((pt_ind_mensuel * ind_maj_ref))
  return seuil_mensuel
end


@define_formula(supp_familial_traitement, individu_definition, Float32, requested_period_default_value,
  label = "Supplément familial de traitement",
) do simulation, variable, period
  period = first_day(MonthPeriod(period.start))
  @calculate(type_sal, period)
  @calculate(traitement_indiciaire_brut, period)
  af_nbenf_holder = calculate(simulation, "af_nbenf", period)
  _P = legislation_at(simulation, period.start)
  fonc_nbenf = entity_to_person(af_nbenf_holder, period, CHEF)
  P = _P["fonc"]["supp_fam"]
  part_fixe_1 = P["fixe"]["enf1"]
  part_fixe_2 = P["fixe"]["enf2"]
  part_fixe_supp = P["fixe"]["enfsupp"]
  part_fixe = (part_fixe_1 .* (fonc_nbenf .== 1) .+ part_fixe_2 .* (fonc_nbenf .== 2) .+ part_fixe_supp .* max(0, fonc_nbenf .- 2))
  pct_variable_2 = P["prop"]["enf2"]
  pct_variable_3 = P["prop"]["enf3"]
  pct_variable_supp = P["prop"]["enfsupp"]
  pct_variable = (pct_variable_2 .* (fonc_nbenf .== 2) .+ pct_variable_3 .* (fonc_nbenf .== 3) .+ pct_variable_supp .* max(0, fonc_nbenf .- 3))
  indice_maj_min = P["IM_min"]
  indice_maj_max = P["IM_max"]
  traitement_brut_mensuel_min = _traitement_brut_mensuel(indice_maj_min, _P)
  plancher_mensuel_1 = part_fixe
  plancher_mensuel_2 = part_fixe .+ traitement_brut_mensuel_min * pct_variable_2
  plancher_mensuel_3 = part_fixe .+ traitement_brut_mensuel_min * pct_variable_3
  plancher_mensuel_supp = traitement_brut_mensuel_min * pct_variable_supp
  plancher = (plancher_mensuel_1 .* (fonc_nbenf .== 1) .+ plancher_mensuel_2 .* (fonc_nbenf .== 2) .+ plancher_mensuel_3 .* (fonc_nbenf .>= 3) .+ plancher_mensuel_supp .* max(0, fonc_nbenf .- 3))
  traitement_brut_mensuel_max = _traitement_brut_mensuel(indice_maj_max, _P)
  plafond_mensuel_1 = part_fixe
  plafond_mensuel_2 = part_fixe .+ traitement_brut_mensuel_max * pct_variable_2
  plafond_mensuel_3 = part_fixe .+ traitement_brut_mensuel_max * pct_variable_3
  plafond_mensuel_supp = traitement_brut_mensuel_max * pct_variable_supp
  plafond = (plafond_mensuel_1 .* (fonc_nbenf .== 1) .+ plafond_mensuel_2 .* (fonc_nbenf .== 2) .+ plafond_mensuel_3 .* (fonc_nbenf .== 3) .+ plafond_mensuel_supp .* max(0, fonc_nbenf .- 3))
  sft = min(max(part_fixe .+ pct_variable .* traitement_indiciaire_brut, plancher), plafond) .* (type_sal .>= 2)
  return period, sft
end
