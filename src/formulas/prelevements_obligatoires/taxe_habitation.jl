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


@define_formula(exonere_taxe_habitation, menage_definition, Bool, requested_period_last_value,
  cell_default = true,
  label = "Exonération de la taxe d'habitation",
  url = "http://vosdroits.service-public.fr/particuliers/F42.xhtml",
) do simulation, variable, period
  """Exonation de la taxe d'habitation

  'men'

  Eligibilité:
  - âgé de plus de 60 ans, non soumis à l'impôt de solidarité sur la fortune (ISF) en n-1
  - veuf quel que soit votre âge et non soumis à l'impôt de solidarité sur la fortune (ISF) n-1
  - titulaire de l'allocation de solidarité aux personnes âgées (Aspa)  ou de l'allocation supplémentaire d'invalidité (Asi),
  bénéficiaire de l'allocation aux adultes handicapés (AAH),
  atteint d'une infirmité ou d'une invalidité vous empêchant de subvenir à vos besoins par votre travail.
  """
  period = YearPeriod(firstdayofmonth(period.start))
  aah_holder = calculate(simulation, "aah", period)
  age_holder = calculate(simulation, "age", period)
  asi_holder = calculate_add(simulation, "asi", period)
  aspa_holder = calculate_add(simulation, "aspa", period)
  isf_tot_holder = calculate(simulation, "isf_tot", period)
  nbptr_holder = calculate(simulation, "nbptr", period)
  rfr_holder = calculate(simulation, "rfr", period)
  statmarit_holder = calculate(simulation, "statmarit", period)
  _P = legislation_at(simulation, period.start)
  aah = sum_person_in_entity(aah_holder, get_entity(variable), period)
  age = single_person_in_entity(age_holder, get_entity(variable), period, PREF)
  asi = entity_to_person(asi_holder, period)
  asi = sum_person_in_entity(asi, get_entity(variable), period)
  aspa = entity_to_person(aspa_holder, period)
  aspa = sum_person_in_entity(aspa, get_entity(variable), period)
  isf_tot = entity_to_person(isf_tot_holder, period, VOUS)
  isf_tot = sum_person_in_entity(isf_tot, get_entity(variable), period)
  nbptr = entity_to_person(nbptr_holder, period, VOUS)
  nbptr = sum_person_in_entity(nbptr, get_entity(variable), period)
  rfr = entity_to_person(rfr_holder, period, VOUS)
  rfr = sum_person_in_entity(rfr, get_entity(variable), period)
  statmarit = single_person_in_entity(statmarit_holder, get_entity(variable), period, PREF)
  P = _P["cotsoc"]["gen"]
  seuil_th = P["plaf_th_1"] .+ P["plaf_th_supp"] .* (max(0, (nbptr .- 1) ./ 2))
  elig = ((age .>= 60) .+ (statmarit .== 4)) .* (isf_tot .<= 0) .* (rfr .< seuil_th) .+ (asi .> 0) .+ (aspa .> 0) .+ (aah .> 0)
  return period, !(elig .!= 0)
end


@define_formula(taxe_habitation, menage_definition, Float32, requested_period_default_value,
  label = "Taxe d'habitation",
  url = "http://www.impots.gouv.fr/portal/dgi/public/particuliers.impot?espId=1&pageId=part_taxe_habitation&impot=TH&sfid=50",
) do simulation, variable, period
  period = YearPeriod(firstdayofmonth(period.start))
  @calculate(exonere_taxe_habitation, period)
  @calculate(nombre_enfants_a_charge_menage, period)
  @calculate(nombre_enfants_majeurs_celibataires_sans_enfant, period)
  rfr_n_1_holder = calculate(simulation, "rfr_n_1", period)
  rfr_n_1 = entity_to_person(rfr_n_1_holder, period, VOUS)
  rfr_n_1 = sum_person_in_entity(rfr_n_1, get_entity(variable), period)
  valeur_locative_brute = 0
  valeur_locative_moyenne = 0
  taux_minimal_2_premiers = 0.1
  majoration_2_premiers = 0
  taux_minimal_3_et_plus = 0.15
  majoration_3_et_plus = 0
  abattement_general_base_forfaitaire = 0
  taux_abattement_general_base = 0.1
  taux_special_modeste = 0
  seuil_elig_special_modeste = 1.3
  seuil_elig_special_modeste_add = 0.1
  taux_special_invalide = 0.1
  taux_imposition = 0.1
  pac_enf = nombre_enfants_a_charge_menage .+ nombre_enfants_majeurs_celibataires_sans_enfant
  pac_asc = 0
  taux_2_premiers = taux_minimal_2_premiers + majoration_2_premiers
  taux_3_et_plus = taux_minimal_3_et_plus + majoration_3_et_plus
  abattement_obligatoire = (min(pac_enf .+ pac_asc, 2) .* taux_2_premiers .+ max(pac_enf .+ pac_asc .- 2, 0) .* taux_3_et_plus) .* valeur_locative_moyenne
  abattement_general = abattement_general_base_forfaitaire + taux_abattement_general_base * valeur_locative_moyenne
  abattement_special_modeste = (valeur_locative_brute .<= ((seuil_elig_special_modeste .+ seuil_elig_special_modeste_add .* (pac_enf .+ pac_asc)) .* valeur_locative_moyenne)) .* taux_special_modeste .* valeur_locative_moyenne
  abattement_special_invalide = 0 * taux_special_invalide
  base_nette = valeur_locative_brute .- (abattement_obligatoire .+ abattement_general .+ abattement_special_modeste .+ abattement_special_invalide)
  cotisation_brute = base_nette .* taux_imposition
  frais_gestion = 0
  prelevement_residence_secondaire = 0
  return period, -exonere_taxe_habitation * 0
end
