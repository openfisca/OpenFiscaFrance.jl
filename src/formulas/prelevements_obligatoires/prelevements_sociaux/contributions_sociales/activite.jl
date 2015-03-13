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


@define_formula(crdssal, individu_definition, Float32, requested_period_default_value,
  label = "CRDS sur les salaires",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(salaire_de_base, period)
  @calculate(primes_fonction_publique, period)
  @calculate(indemnite_residence, period)
  @calculate(supp_familial_traitement, period)
  @calculate(prevoyance_obligatoire_cadre, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(hsup, period)
  @calculate(remuneration_principale, period)
  law = legislation_at(simulation, period.start)
  montant_crds = montant_csg_crds(law_node = law["crds"]["activite"], base_avec_abattement = (salaire_de_base .+ remuneration_principale .+ primes_fonction_publique .+ indemnite_residence .+ supp_familial_traitement .- hsup), base_sans_abattement = -prevoyance_obligatoire_cadre, plafond_securite_sociale = plafond_securite_sociale)
  return period, montant_crds
end


@define_formula(csgsald, individu_definition, Float32, requested_period_default_value,
  label = "CSG déductible sur les salaires",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(salaire_de_base, period)
  @calculate(primes_fonction_publique, period)
  @calculate(indemnite_residence, period)
  @calculate(supp_familial_traitement, period)
  @calculate(prevoyance_obligatoire_cadre, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(hsup, period)
  @calculate(remuneration_principale, period)
  law = legislation_at(simulation, period.start)
  montant_csg = montant_csg_crds(base_avec_abattement = (remuneration_principale .+ salaire_de_base .+ primes_fonction_publique .+ indemnite_residence .+ supp_familial_traitement .- hsup), base_sans_abattement = -prevoyance_obligatoire_cadre, law_node = law["csg"]["activite"]["deductible"], plafond_securite_sociale = plafond_securite_sociale)
  return period, montant_csg
end


@define_formula(csgsali, individu_definition, Float32, requested_period_default_value,
  label = "CSG imposables sur les salaires",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(salaire_de_base, period)
  @calculate(primes_fonction_publique, period)
  @calculate(indemnite_residence, period)
  @calculate(supp_familial_traitement, period)
  @calculate(prevoyance_obligatoire_cadre, period)
  @calculate(plafond_securite_sociale, period)
  @calculate(remuneration_principale, period)
  @calculate(hsup, period)
  law = legislation_at(simulation, period.start)
  montant_csg = montant_csg_crds(law_node = law["csg"]["activite"]["imposable"], base_avec_abattement = (salaire_de_base .+ remuneration_principale .+ primes_fonction_publique .+ indemnite_residence .+ supp_familial_traitement .- hsup), base_sans_abattement = -prevoyance_obligatoire_cadre, plafond_securite_sociale = plafond_securite_sociale)
  return period, montant_csg
end


@define_formula(forfait_social, individu_definition, Float32, requested_period_default_value,
  label = "Forfait social",
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  @calculate(prevoyance_obligatoire_cadre, period)
  @calculate(prise_en_charge_employeur_prevoyance_complementaire, period)
  taux_plein = legislation_at(simulation, period.start)["forfait_social"]["taux_plein"]
  taux_reduit = legislation_at(simulation, period.start)["forfait_social"]["taux_reduit"]
  assiette_taux_plein = 0
  assiette_taux_reduit = prevoyance_obligatoire_cadre .- prise_en_charge_employeur_prevoyance_complementaire
  return period, (assiette_taux_plein * taux_plein .+ assiette_taux_reduit .* taux_reduit)
end


@define_formula(rev_microsocial, foyer_fiscal_definition, Float32, requested_period_default_value,
  label = "Revenu net des cotisations sociales pour le régime microsocial",
  start_date = Date(2009, 1, 1),
  url = "http://www.apce.com/pid6137/regime-micro-social.html",
) do simulation, variable, period
  period = YearPeriod(firstdayofyear(period.start))
  @calculate(assiette_service, period)
  @calculate(assiette_vente, period)
  @calculate(assiette_proflib, period)
  _P = legislation_at(simulation, period.start)
  P = _P["cotsoc"]["sal"]["microsocial"]
  total = assiette_service .+ assiette_vente .+ assiette_proflib
  prelsoc_ms = assiette_service .* P["servi"] .+ assiette_vente .* P["vente"] .+ assiette_proflib .* P["rsi"]
  return period, total .- prelsoc_ms
end


@define_formula(rev_microsocial_declarant1, individu_definition, Float32, entity_to_entity_period_value,
  label = "Revenu net des cotisations sociales sous régime microsocial (auto-entrepreneur) (pour le premier déclarant du foyer fiscal)",
  start_date = Date(2009, 1, 1),
) do simulation, variable, period
  @calculate(rev_microsocial, period, accept_other_period = true)
  return period, entity_to_person(rev_microsocial, [VOUS])
end


@define_formula(sal, individu_definition, Float32, requested_period_default_value,
  label = "Salaires imposables",
) do simulation, variable, period
  period = period
  @calculate_add(salaire_de_base, period)
  @calculate_add(primes_fonction_publique, period)
  @calculate_add(indemnite_residence, period)
  @calculate_add(supp_familial_traitement, period)
  @calculate_add(csgsald, period)
  @calculate(cotisations_salariales, period)
  @calculate(remuneration_principale, period)
  @calculate(hsup, period)
  @calculate_add_divide(rev_microsocial_declarant1, first_day(period))
  return period, (salaire_de_base .+ remuneration_principale .+ primes_fonction_publique .+ indemnite_residence .+ supp_familial_traitement .+ csgsald .+ cotisations_salariales .- hsup .+ rev_microsocial_declarant1)
end


@define_formula(salaire_net_a_payer, individu_definition, Float32, requested_period_default_value,
  label = "Salaires nets d'après définition INSEE",
) do simulation, variable, period
  """Calcul du salaire net à payer après déduction des sommes
  dues par les salarié avancées par l'employeur
  """
  period = period
  @calculate(salnet, period)
  @calculate(depense_cantine_titre_restaurant_employe)
  @calculate(indemnites_forfaitaires, period)
  salaire_net_a_payer = (salnet .+ depense_cantine_titre_restaurant_employe .+ indemnites_forfaitaires)
  return period, salaire_net_a_payer
end


@define_formula(salnet, individu_definition, Float32, requested_period_default_value,
  label = "Salaires nets d'après définition INSEE",
) do simulation, variable, period
  """Calcul du salaire net d'après définition INSEE
  net = net de csg et crds
  """
  period = period
  @variable_at(salaire_de_base, period, nothing)
  if salaire_de_base === nothing
    return period, zeros(Float32, get_entity(variable).count)
  end
  @calculate(sal, period)
  @calculate_add(crdssal, period)
  @calculate_add(csgsali, period)
  return period, sal .+ crdssal .+ csgsali
end


@define_formula(salsuperbrut, individu_definition, Float32, requested_period_default_value,
  label = "Salaires superbruts/coût du travail",
) do simulation, variable, period
  period = period
  @calculate(salaire_de_base, period)
  @calculate_add(primes_fonction_publique, period)
  @calculate_add(indemnite_residence, period)
  @calculate_add(supp_familial_traitement, period)
  @calculate(cotisations_patronales, period)
  @calculate(depense_cantine_titre_restaurant_employeur, period)
  @calculate_add(allegement_fillon, period)
  @calculate_add(credit_impot_competitivite_emploi, period)
  @calculate(reintegration_titre_restaurant_employeur, period)
  @calculate(remuneration_principale, period)
  @calculate(taxe_salaires, period)
  @calculate_divide(tehr, period)
  salsuperbrut = (salaire_de_base .+ depense_cantine_titre_restaurant_employeur .- reintegration_titre_restaurant_employeur .+ remuneration_principale .+ primes_fonction_publique .+ indemnite_residence .+ supp_familial_traitement .+ -cotisations_patronales .- allegement_fillon .- credit_impot_competitivite_emploi .- taxe_salaires .- tehr)
  return period, salsuperbrut
end


@define_formula(tehr, individu_definition, Float32, requested_period_default_value,
  label = "Taxe exceptionnelle de solidarité sur les très hautes rémunérations",
  url = "http://vosdroits.service-public.fr/professionnels-entreprises/F32096.xhtml",
) do simulation, variable, period
  period = first_day(YearPeriod(period.start))
  @calculate_add(salaire_de_base, period)
  law = legislation_at(simulation, period.start)
  bar = law["cotsoc"]["tehr"]
  return period, -apply_tax_scale(bar, salaire_de_base)
end
