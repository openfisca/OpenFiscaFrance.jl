# OpenFisca -- A versatile microsimulation software
# By: OpenFisca Team <contact@openfisca.fr>
#
# Copyright (C) 2011, 2012, 2013, 2014 OpenFisca Team
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


@register_variable(VariableDefinition("nom_foyer_fiscal", foyer_fiscal, UTF8String,
  label = "Nom",
  permanent = true,
))

@register_variable(VariableDefinition("b1ab", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Valeur de la résidence principale avant abattement",
))

@register_variable(VariableDefinition("b1ac", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Valeur des autres immeubles avant abattement",
))

@register_variable(VariableDefinition("b1bc", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Immeubles non bâtis : bois, fôrets et parts de groupements forestiers",
))

@register_variable(VariableDefinition("b1be", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Immeubles non bâtis : biens ruraux loués à long termes",
))

@register_variable(VariableDefinition("b1bh", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Immeubles non bâtis : parts de groupements fonciers agricoles et de groupements agricoles fonciers",
))

@register_variable(VariableDefinition("b1bk", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Immeubles non bâtis : autres biens",
))

@register_variable(VariableDefinition("b1cl", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Parts et actions détenues par les salariés et mandataires sociaux",
))

@register_variable(VariableDefinition("b1cb", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Parts et actions de sociétés avec engagement de conservation de 6 ans minimum",
))

@register_variable(VariableDefinition("b1cd", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Droits sociaux de sociétés dans lesquelles vous exercez une fonction ou une activité",
))

@register_variable(VariableDefinition("b1ce", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Autres valeurs mobilières",
))

@register_variable(VariableDefinition("b1cf", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Liquidités",
))

@register_variable(VariableDefinition("b1cg", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Autres biens meubles",
))

@register_variable(VariableDefinition("b1co", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Autres biens meubles : contrats d'assurance-vie",
))

@register_variable(VariableDefinition("b2gh", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Total du passif et autres déductions",
))

@register_variable(VariableDefinition("b2mt", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour investissements directs dans une société",
))

@register_variable(VariableDefinition("b2ne", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour investissements directs dans une société",
))

@register_variable(VariableDefinition("b2mv", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour investissements par sociétés interposées, holdings",
))

@register_variable(VariableDefinition("b2nf", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour investissements par sociétés interposées, holdings",
))

@register_variable(VariableDefinition("b2mx", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour investissements par le biais de FIP",
))

@register_variable(VariableDefinition("b2na", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour investissements par le biais de FCPI ou FCPR",
))

@register_variable(VariableDefinition("b2nc", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Réductions pour dons à certains organismes d'intérêt général",
))

@register_variable(VariableDefinition("b4rs", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Montant de l'impôt acquitté hors de France",
))

@register_variable(VariableDefinition("rev_or", foyer_fiscal, Int32,
  cell_format = "monetary",
))

@register_variable(VariableDefinition("rev_exo", foyer_fiscal, Int32,
  cell_format = "monetary",
))

@register_variable(VariableDefinition("tax_fonc", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Taxe foncière",
))

@register_variable(VariableDefinition("restit_imp", foyer_fiscal, Int32,
  cell_format = "monetary",
))

@register_variable(VariableDefinition("f1aw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "1AW",
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : Moins de 50 ans",
))

@register_variable(VariableDefinition("f1bw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "1BW",
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : De 50 à 59 ans",
))

@register_variable(VariableDefinition("f1cw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "1CW",
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : De 60 à 69 ans",
))

@register_variable(VariableDefinition("f1dw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "1DW",
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : A partir de 70 ans",
))

@register_variable(VariableDefinition("jour_xyz", foyer_fiscal, Int32,
  cell_default = 360,
  label = "Jours décomptés au titre de cette déclaration",
))

@register_variable(VariableDefinition("nbN", foyer_fiscal, Int32,
  cerfa_field = "N",
  label = "Nombre d'enfants mariés/pacsés et d'enfants non mariés chargés de famille",
))

@register_variable(VariableDefinition("nbR", foyer_fiscal, Int32,
  cerfa_field = "R",
  label = "Nombre de titulaires (autres que les enfants) de la carte invalidité d'au moins 80 %",
))

@register_variable(VariableDefinition("caseE", foyer_fiscal, Bool,
  cerfa_field = "E",
  label = "Situation pouvant donner droit à une demi-part supplémentaire : vous vivez seul au 1er janvier de l'année de perception des revenus et vous avez élevé un enfant pendant moins de 5 ans durant la période où vous viviez seul",
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("caseF", foyer_fiscal, Bool,
  cerfa_field = "F",
  label = "Situation pouvant donner droit à une demi-part supplémentaire : conjoint titulaire d'une pension ou d'une carte d'invalidité (vivant ou décédé l'année de perception des revenus)",
))

@register_variable(VariableDefinition("caseG", foyer_fiscal, Bool,
  cerfa_field = "G",
  label = "Titulaire d'une pension de veuve de guerre",
))

@register_variable(VariableDefinition("caseH", foyer_fiscal, Int32,
  cerfa_field = "H",
  label = "Année de naissance des enfants à charge en garde alternée",
))

@register_variable(VariableDefinition("caseK", foyer_fiscal, Bool,
  cerfa_field = "K",
  label = "Situation pouvant donner droit à une demi-part supplémentaire: vous avez eu un enfant décédé après l’âge de 16 ans ou par suite de faits de guerre",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("caseL", foyer_fiscal, Bool,
  cerfa_field = "L",
  label = "Situation pouvant donner droit à une demi-part supplémentaire: vous vivez seul au 1er janvier de l'année de perception des revenus et vous avez élevé un enfant pendant au moins 5 ans durant la période où vous viviez seul",
))

@register_variable(VariableDefinition("caseN", foyer_fiscal, Bool,
  cerfa_field = "N",
  label = "Vous ne viviez pas seul au 1er janvier de l'année de perception des revenus",
))

@register_variable(VariableDefinition("caseP", foyer_fiscal, Bool,
  cerfa_field = "P",
  label = "Titulaire d'une pension pour une invalidité d'au moins 40 % ou d'une carte d'invalidité d'au moins 80%",
))

@register_variable(VariableDefinition("caseS", foyer_fiscal, Bool,
  cerfa_field = "S",
  label = "Vous êtes mariés/pacsés et l'un des deux déclarants âgé de plus de 75 ans est titulaire de la carte du combattant ou d'une pension militaire d'invalidité ou de victime de guerre",
))

@register_variable(VariableDefinition("caseT", foyer_fiscal, Bool,
  cerfa_field = "T",
  label = "Vous êtes parent isolé au 1er janvier de l'année de perception des revenus",
))

@register_variable(VariableDefinition("caseW", foyer_fiscal, Bool,
  cerfa_field = "W",
  label = "Vous ou votre conjoint (même s'il est décédé), âgés de plus de 75 ans, êtes titulaire de la carte du combattant ou d'une pension militaire d'invalidité ou de victime de guerre",
))

@register_variable(VariableDefinition("rfr_n_1", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Revenu fiscal de référence année n - 1",
))

@register_variable(VariableDefinition("rfr_n_2", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Revenu fiscal de référence année n - 2",
))

@register_variable(VariableDefinition("nbptr_n_2", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Nombre de parts année n - 2",
))

@register_variable(VariableDefinition("f2da", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2DA",
  label = "Revenus des actions et parts soumis au prélèvement libératoire de 21 %",
  start_date = Date(2008, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f2dh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2DH",
  label = "Produits d’assurance-vie et de capitalisation soumis au prélèvement libératoire de 7.5 %",
))

@register_variable(VariableDefinition("f2ee", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2EE",
  label = "Autres produits de placement soumis aux prélèvements libératoires",
))

@register_variable(VariableDefinition("f2dc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2DC",
  label = "Revenus des actions et parts donnant droit à abattement",
))

@register_variable(VariableDefinition("f2fu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2FU",
  label = "Revenus imposables des titres non côtés détenus dans le PEA et distributions perçues via votre entreprise donnant droit à abattement",
))

@register_variable(VariableDefinition("f2ch", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2CH",
  label = "Produits des contrats d'assurance-vie et de capitalisation d'une durée d'au moins 6 ou 8 ans donnant droit à abattement",
))

@register_variable(VariableDefinition("f2ts", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2TS",
  label = "Revenus de valeurs mobilières, produits des contrats d'assurance-vie d'une durée inférieure à 8 ans et distributions (n'ouvrant pas droit à abattement)",
))

@register_variable(VariableDefinition("f2go", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2GO",
  label = "Autres revenus distribués et revenus des structures soumises hors de France à un régime fiscal privilégié (n'ouvrant pas droit à abattement)",
))

@register_variable(VariableDefinition("f2tr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2TR",
  label = "Produits de placements à revenu fixe, intérêts et autres revenus assimilés (n'ouvrant pas droit à abattement)",
))

@register_variable(VariableDefinition("f2cg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2CG",
  label = "Revenus des lignes 2DC, 2CH, 2TS, 2TR déjà soumis au prélèvement sociaux sans CSG déductible",
))

@register_variable(VariableDefinition("f2bh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2BH",
  label = "Revenus des lignes 2DC, 2CH, 2TS, 2TR déjà soumis au prélèvement sociaux avec CSG déductible",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f2ca", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2CA",
  label = "Frais et charges déductibles",
))

@register_variable(VariableDefinition("f2ck", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2CK",
  label = "Crédit d'impôt égal au prélèvement forfaitaire déjà versé",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f2ab", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AB",
  label = "Crédits d'impôt sur valeurs étrangères",
))

@register_variable(VariableDefinition("f2bg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2BG",
  label = "Crédits d'impôt 'directive épargne' et autres crédits d'impôt restituables",
))

@register_variable(VariableDefinition("f2aa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AA",
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f2al", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AL",
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f2am", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AM",
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f2an", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AN",
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f2aq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AQ",
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f2ar", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2AR",
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f2as", foyer_fiscal, Int32,
  cell_format = "monetary",
  label = "Déficits des années antérieures non encore déduits: année 2012",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f2dm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2DM",
  label = "Impatriés: revenus de capitaux mobiliers perçus à l'étranger, abattement de 50 %",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f2gr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "2GR",
  label = "Revenus distribués dans le PEA (pour le calcul du crédit d'impôt de 50 %)",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f3si", foyer_fiscal, Int32,
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f3sa", foyer_fiscal, Int32,
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f3sf", foyer_fiscal, Int32,
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f3sd", foyer_fiscal, Int32,
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f3vc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VC",
  label = "Produits et plus-values exonérés provenant de structure de capital-risque",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f3ve", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VE",
  label = "Plus-values réalisées par les non-résidents pour lesquelles vous demandez le remboursement de l'excédent du prélèvement de 45 %",
))

@register_variable(VariableDefinition("f3vl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VL",
  label = "Distributions par des sociétés de capital-risque taxables à 19 %",
))

@register_variable(VariableDefinition("f3vm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VM",
  label = "Clôture du PEA avant l'expiration de la 2e année: gains taxables à 22.5 %",
))

@register_variable(VariableDefinition("f3vt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VT",
  label = "Clôture du PEA  entre la 2e et la 5e année: gains taxables à 19 %",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f3vg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VG",
  label = "Plus-value imposable sur gains de cession de valeurs mobilières, de droits sociaux et gains assimilés",
))

@register_variable(VariableDefinition("f3vh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VH",
  label = "Perte de l'année de perception des revenus",
))

@register_variable(VariableDefinition("f3vu", foyer_fiscal, Int32,
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f3vv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VV",
  label = "Plus-values réalisées par les non-résidents: montant du prélèvement de 45 % déjà versé",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f3vv_end_2010", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VV",
  label = "Pertes ouvrant droit au crédit d’impôt de 19 % ",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f3vz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "3VZ",
  label = "Plus-values imposables sur cessions d’immeubles ou de biens meubles",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f4ba", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4BA",
  label = "Revenus fonciers imposables",
))

@register_variable(VariableDefinition("f4bb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4BB",
  label = "Déficit imputable sur les revenus fonciers",
))

@register_variable(VariableDefinition("f4bc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4BC",
  label = "Déficit imputable sur le revenu global",
))

@register_variable(VariableDefinition("f4bd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4BD",
  label = "Déficits antérieurs non encore imputés",
))

@register_variable(VariableDefinition("f4be", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4BE",
  label = "Micro foncier: recettes brutes sans abattement",
))

@register_variable(VariableDefinition("f4bf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4BF",
  label = "Primes d'assurance pour loyers impayés des locations conventionnées",
))

@register_variable(VariableDefinition("f4bl", foyer_fiscal, Int32,
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("mbic_mvct", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5HU",
  label = "Moins-values industrielles et commerciales nettes à court terme du foyer (régime micro entreprise)",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("macc_mvct", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5IU",
  label = "Moins-values industrielles et commerciales non professionnelles nettes à court terme du foyer (régime micro entreprise)",
))

@register_variable(VariableDefinition("mncn_mvct", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "JU",
  label = "Moins-values non commerciales non professionnelles nettes à court terme du foyer (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("f5qf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5QF",
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-6)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5qg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5QG",
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-5)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5qn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5QN",
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-4)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5qo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5QO",
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-3)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5qp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5QP",
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-2)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5qq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5QQ",
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-1)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5ga", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GA",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-10)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GB",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-9)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GC",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-8)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GD",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-7)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5ge", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GE",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-6)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GF",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-5)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GG",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-4)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GH",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-3)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GI",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-2)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5gj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5GJ",
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-1)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5rn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5RN",
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-6)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f5ro", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5RO",
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-5)",
))

@register_variable(VariableDefinition("f5rp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5RP",
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-4)",
))

@register_variable(VariableDefinition("f5rq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5RQ",
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-3)",
))

@register_variable(VariableDefinition("f5rr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5RR",
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-2)",
))

@register_variable(VariableDefinition("f5rw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5RW",
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-1)",
))

@register_variable(VariableDefinition("f5ht", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5HT",
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-6)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5it", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5IT",
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-5)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5jt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5JT",
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-4)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5kt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5KT",
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-3)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5lt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5LT",
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-2)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f5mt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "5MT",
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-1)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f6de", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6DE",
  label = "CSG déductible calculée sur les revenus du patrimoine",
))

@register_variable(VariableDefinition("f6gi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6GI",
  label = "Pensions alimentaires versées à des enfants majeurs (décision de justice définitive avant 2006): 1er enfant",
))

@register_variable(VariableDefinition("f6gj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6GJ",
  label = "Pensions alimentaires versées à des enfants majeurs (décision de justice définitive avant 2006): 2eme enfant",
))

@register_variable(VariableDefinition("f6el", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6EL",
  label = "Autres pensions alimentaires versées à des enfants majeurs: 1er enfant",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f6em", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6EM",
  label = "Autres pensions alimentaires versées à des enfants majeurs: 2eme enfant",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f6gp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6GP",
  label = "Autres pensions alimentaires versées décision de justice définitive avant 2006 (mineurs, ascendants)",
))

@register_variable(VariableDefinition("f6gu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6GU",
  label = "Autres pensions alimentaires versées (mineurs, ascendants)",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f6eu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6EU",
  label = "Frais d'accueil de personnes de plus de 75 ans dans le besoin",
))

@register_variable(VariableDefinition("f6ev", foyer_fiscal, Int32,
  cerfa_field = "6EV",
  label = "Nombre de personnes de plus de 75 ans dans le besoin accueillies sous votre toit",
))

@register_variable(VariableDefinition("f6dd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6DD",
  label = "Déductions diverses",
))

@register_variable(VariableDefinition("f6aa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6AA",
  label = "Souscriptions en faveur du cinéma ou de l’audiovisuel",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2006, 12, 31),
))

@register_variable(VariableDefinition("f6cc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "CC",
  label = "Souscriptions au capital des SOFIPÊCHE",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2005, 12, 31),
))

@register_variable(VariableDefinition("f6eh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "EH",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2005, 12, 31),
))

@register_variable(VariableDefinition("f6da", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "DA",
  label = "Pertes en capital consécutives à la souscription au capital de sociétés nouvelles ou de sociétés en difficulté",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2005, 12, 31),
))

@register_variable(VariableDefinition("f6cb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6CB",
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires (dépenses réalisées au cours de l'année de perception des revenus)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f6hj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6HJ",
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f6hk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6HK",
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f6hl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6HL",
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f6hm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6HM",
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f6gh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6GH",
  label = "Sommes à ajouter au revenu imposable",
))

@register_variable(VariableDefinition("f6fa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6FA",
  label = "Deficits globaux des années antérieures non encore déduits les années précédentes: année de perception des revenus -6",
))

@register_variable(VariableDefinition("f6fb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6FB",
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -5",
))

@register_variable(VariableDefinition("f6fc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6FC",
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -4",
))

@register_variable(VariableDefinition("f6fd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6FD",
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -3",
))

@register_variable(VariableDefinition("f6fe", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6FE",
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -2",
))

@register_variable(VariableDefinition("f6fl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "6FL",
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -1",
))

@register_variable(VariableDefinition("f7ud", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UD",
  label = "Dons à des organismes d'aide aux personnes en difficulté",
))

@register_variable(VariableDefinition("f7uf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UF",
  label = "Dons à d'autres oeuvres d'utilité publique ou fiscalement assimilables aux oeuvres d'intérêt général",
))

@register_variable(VariableDefinition("f7xs", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XS",
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -5",
))

@register_variable(VariableDefinition("f7xt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XT",
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -4",
))

@register_variable(VariableDefinition("f7xu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XU",
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -3",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f7xw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XW",
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -2",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f7xy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XY",
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -1",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f7va", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VA",
  label = "Dons à des organismes d'aides aux personnes établis dans un Etat européen",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7vc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VC",
  label = "Dons à des autres organismes établis dans un Etat européen",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7db", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7DB",
  label = "Sommes versées pour l'emploi d'un salarié à domicile par les personnes ayant excercé une activité professionnelle ou ayant été demandeur d'emploi l'année de perception des revenus déclarés",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f7df", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7DF",
  label = "Sommes versées pour l'emploi d'un salarié à domicile par les personnes retraités, ou inactives l'année de perception des revenus déclarés",
))

@register_variable(VariableDefinition("f7dq", foyer_fiscal, Bool,
  cerfa_field = "7DQ",
  label = "Emploi direct pour la première fois d'un salarié à domicile durant l'année de perception des revenus déclarés",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7dg", foyer_fiscal, Bool,
  cerfa_field = "7DG",
  label = "Vous, votre conjoint ou une personne à votre charge à une carte d'invalidité d'au moins 80 % l'année de perception des revenus déclarés",
))

@register_variable(VariableDefinition("f7dl", foyer_fiscal, Int32,
  cerfa_field = "7DL",
  label = "Nombre d'ascendants bénéficiaires de l'APA, âgés de plus de 65 ans, pour lesquels des dépenses ont été engagées l'année de perception des revenus déclarés",
))

@register_variable(VariableDefinition("f7uh_2007", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UH",
  label = "Intérêts payés la première année de remboursement du prêt pour l'habitation principale",
  start_date = Date(2007, 1, 1),
  stop_date = Date(2007, 12, 31),
))

@register_variable(VariableDefinition("f7vy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VY",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements anciens (acquis entre le 06/05/2007 et le 30/09/2011) ou neufs (acquis entre le 06/05/2007 et le 31/12/2009): Première annuité",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f7vz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VZ",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements anciens (acquis entre le 06/05/2007 et le 30/09/2011) ou neufs (acquis entre le 06/05/2007 et le 31/12/2009): annuités suivantes",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f7vx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VX",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs BBC acquis ou construits du 01/01/2009 au 30/09/2011",
))

@register_variable(VariableDefinition("f7vw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VW",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2010 au 31/12/2010: première annuité",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7vv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VV",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2010 au 31/12/2010: annuités suivantes",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7vu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VU",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2011 au 30/09/2011: première annuité",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7vt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7VT",
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2011 au 30/09/2011: annuités suivantes",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7cd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CD",
  label = "Dépenses d'accueil dans un établissement pour personnes âgées dépendantes: 1ere personne",
))

@register_variable(VariableDefinition("f7ce", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CE",
  label = "Dépenses d'accueil dans un établissement pour personnes âgées dépendantes: 2éme personne",
))

@register_variable(VariableDefinition("f7ga", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GA",
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 1er enfant à charge",
))

@register_variable(VariableDefinition("f7gb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GB",
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 2ème enfant à charge",
))

@register_variable(VariableDefinition("f7gc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GC",
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 3ème enfant à charge",
))

@register_variable(VariableDefinition("f7ge", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GE",
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 1er enfant à charge en résidence alternée",
))

@register_variable(VariableDefinition("f7gf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GF",
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 2ème enfant à charge en résidence alternée",
))

@register_variable(VariableDefinition("f7gg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GG",
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 3ème enfant à charge en résidence alternée",
))

@register_variable(VariableDefinition("f7ea", foyer_fiscal, Int32,
  cerfa_field = "7EA",
  label = "Nombre d'enfants à charge poursuivant leurs études au collège",
))

@register_variable(VariableDefinition("f7eb", foyer_fiscal, Int32,
  cerfa_field = "7EB",
  label = "Nombre d'enfants à charge en résidence alternée poursuivant leurs études au collège",
))

@register_variable(VariableDefinition("f7ec", foyer_fiscal, Int32,
  cerfa_field = "7EC",
  label = "Nombre d'enfants à charge poursuivant leurs études au lycée",
))

@register_variable(VariableDefinition("f7ed", foyer_fiscal, Int32,
  cerfa_field = "7ED",
  label = "Nombre d'enfants à charge en résidence alternée poursuivant leurs études au lycée",
))

@register_variable(VariableDefinition("f7ef", foyer_fiscal, Int32,
  cerfa_field = "7EF",
  label = "Nombre d'enfants à charge poursuivant leurs études dans l'enseignement supérieur",
))

@register_variable(VariableDefinition("f7eg", foyer_fiscal, Int32,
  cerfa_field = "7EG",
  label = "Nombre d'enfants à charge en résidence alternée poursuivant leurs études dans l'enseignement supérieur",
))

@register_variable(VariableDefinition("f7td", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TD",
  label = "Intérêts des prêts étudiants versés avant l'année de perception des revenus déclarés",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f7vo", foyer_fiscal, Int32,
  cerfa_field = "7VO",
  label = "Nombre d'années de remboursement du prêt étudiant avant l'année de perception des revenus déclarés",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f7uk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UK",
  label = "Intérêts des prêts étudiants versés durant l'année de perception des revenus déclarés",
))

@register_variable(VariableDefinition("f7gz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GZ",
  label = "Primes de rente survie, contrats d'épargne handicap",
))

@register_variable(VariableDefinition("f7wm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WM",
  label = "Prestations compensatoires: Capital fixé en substitution de rente",
))

@register_variable(VariableDefinition("f7wn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WN",
  label = "Prestations compensatoires: Sommes versées l'année de perception des revenus déclarés",
))

@register_variable(VariableDefinition("f7wo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WO",
  label = "Prestations compensatoires: Sommes totales décidées par jugement l'année de perception des revenus déclarés ou capital reconstitué",
))

@register_variable(VariableDefinition("f7wp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WP",
  label = "Prestations compensatoires: Report des sommes décidées l'année de perception des revenus -1",
))

@register_variable(VariableDefinition("f7we", foyer_fiscal, Bool,
  cerfa_field = "7WE",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: éco-prêt à taux zéro avec offre de prêt émise l'année de perception des revenus déclarés",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7wg", foyer_fiscal, Bool,
  cell_format = "monetary",
  cerfa_field = "7WG",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: éco-prêt à taux zéro avec offre de prêt émise l'année de perception des revenus déclarés -1",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7wa", foyer_fiscal, Int32,
  cerfa_field = "7WA",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique des murs avant le 03/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wb", foyer_fiscal, Int32,
  cerfa_field = "7WB",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique des murs à compter du 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wc", foyer_fiscal, Int32,
  cerfa_field = "7WC",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique sur plus de la moitié de la surface des murs extérieurs",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ve", foyer_fiscal, Int32,
  cerfa_field = "7VE",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique de la toiture avant le 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7vf", foyer_fiscal, Int32,
  cerfa_field = "7VF",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique de la toiture à compter du 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7vg", foyer_fiscal, Int32,
  cerfa_field = "7VG",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique de toute la toiture",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sg", foyer_fiscal, Int32,
  cerfa_field = "7SG",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Matériaux d'isolation thermique des murs (acquisitionn et pose)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sj", foyer_fiscal, Int32,
  cerfa_field = "7SJ",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Matériaux d'isolation thermique des parois vitrées",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sk", foyer_fiscal, Int32,
  cerfa_field = "7SK",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Volets isolants",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sl", foyer_fiscal, Int32,
  cerfa_field = "7SL",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Portes d'entrées donnant sur l'extérieur",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sm", foyer_fiscal, Int32,
  cerfa_field = "7SM",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de production d'électricité utilisant l'énergie radiative du soleil",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sn", foyer_fiscal, Int32,
  cerfa_field = "7SN",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Appareils de chauffage au bois ou autres biomasses remplaçant un appareil équivalent",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7so", foyer_fiscal, Int32,
  cerfa_field = "7SO",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Appareils de chauffage au bois ou autres biomasses ne remplaçant pas un appareil équivalent",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sp", foyer_fiscal, Int32,
  cerfa_field = "7SP",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Pompes à chaleur autres que air/air et autres que géothermiques dont la finalité essentielle est la production de chaleur",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sq", foyer_fiscal, Int32,
  cerfa_field = "7SQ",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Pompes à chaleur géothermiques dont la finalité essentielle est la production de chaleur",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sr", foyer_fiscal, Int32,
  cerfa_field = "7SR",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Pompes à chaleur (autres que air/air) dédiées à la production d'eau chaude sanitaire (chauffe-eaux thermodynamiques)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ss", foyer_fiscal, Int32,
  cerfa_field = "7SS",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de fourniture d'eau chaude sanitaire fonctionnant à l'énergie solaire et dotés de capteurs solaires",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7st", foyer_fiscal, Int32,
  cerfa_field = "7ST",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Autres équipements de production d'énergie utilisant une source d'énergie renouvelable (éolien, hydraulique)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7su", foyer_fiscal, Int32,
  cerfa_field = "7SU",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de récupération et de traitement des eaux pluviales",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sv", foyer_fiscal, Int32,
  cerfa_field = "7SV",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Diagnostic de performance énergétique",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sw", foyer_fiscal, Int32,
  cerfa_field = "7SW",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de raccordement à un réseau de chaleur",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7wq", foyer_fiscal, Bool,
  cerfa_field = "7WQ",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolation thermique des parois vitrées du 01/01/2012 au 03/04/2012",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7ws", foyer_fiscal, Bool,
  cerfa_field = "7WS",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolations des parois vitrées à compter du 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wt", foyer_fiscal, Bool,
  cerfa_field = "7WT",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolation thermique des parois vitrées réalisées sur au moins la moitié des fenêtres du logement ",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wu", foyer_fiscal, Bool,
  cerfa_field = "7WU",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de volets avant 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wv", foyer_fiscal, Bool,
  cerfa_field = "7WV",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de volets en 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7ww", foyer_fiscal, Bool,
  cerfa_field = "7WW",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de portes avant 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wx", foyer_fiscal, Bool,
  cerfa_field = "7WX",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de portes en 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wh", foyer_fiscal, Bool,
  cerfa_field = "7WH",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale (logement achevé depuis plus de 2 ans): bouquet de travaux réalisé pendant l'année de perception des revenus",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7wk", foyer_fiscal, Bool,
  cerfa_field = "7WK",
  label = "Votre habitation principale est une maison individuelle",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7wf", foyer_fiscal, Bool,
  cerfa_field = "7WF",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolation thermique des parois vitrées avant le 01/01/n-1",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7wi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WI",
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans l'habitation principale: Ascenseurs électriques à traction",
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7wj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WJ",
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans l'habitation principale: équipements spécialement conçus pour les personnes âgées ou handicapées",
))

@register_variable(VariableDefinition("f7wl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WL",
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans l'habitation principale: travaux de prévention des risques technologiques",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7wr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7WR",
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans des habitations données en location : travaux de prévention des risques technologiques",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ur", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UR",
  label = "Investissements réalisés en n-1, total réduction d’impôt",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f7oz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OZ",
  label = "Investissements outre-mer: report de réduction d'impôt non imputée les années antérieures année n-6",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PZ",
  label = "Investissements outre-mer réalisés en 2007 dans le cadre d'une entreprise: report de réduction d'impôt non imputée les années antérieures",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7qz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QZ",
  label = "Investissements outre-mer réalisés en 2008 dans le casdre d'une entreprise: report de réduction d'impôt non imputée les années antérieures",
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7rz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RZ",
  label = "Investissements outre-mer: report de réduction d'impôt non imputée les années antérieures année n-3",
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f7qv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QV",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements immobliliers engagés avant le 1.1.2011 et investissements ayant reçu un agrément avant le 5.12.2010, nvestissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QO",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements immobliliers engagés avant le 1.1.2011 et investissements ayant reçu un agrément avant le 5.12.2010 à hauteur de 50%",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f7qp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QP",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements immobliliers engagés avant le 1.1.2011 et investissements ayant reçu un agrément avant le 5.12.2010 à hauteur de 60%",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f7pa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PA",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PB",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PC",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt calculée",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PD",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt dont vous demandez l'imputation en 2011",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qe", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QE",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet avant 1.1.2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f7pe", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PE",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PF",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PG",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt calculée",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7ph", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PH",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt dont vous demandez l'imputation en 2011",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PI",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PJ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PK",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise, montant de la réduction d' impôt calculée",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7PL",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise, montant de la réduction d' impôt dont vous demandez l'imputation en 2011",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7pm", foyer_fiscal, Int32,
  cerfa_field = "7PM",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pn", foyer_fiscal, Int32,
  cerfa_field = "7PN",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50 %",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7po", foyer_fiscal, Int32,
  cerfa_field = "7PO",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60 %",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pp", foyer_fiscal, Int32,
  cerfa_field = "7PP",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pq", foyer_fiscal, Int32,
  cerfa_field = "7PQ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pr", foyer_fiscal, Int32,
  cerfa_field = "7PR",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7ps", foyer_fiscal, Int32,
  cerfa_field = "7PS",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50 %",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pt", foyer_fiscal, Int32,
  cerfa_field = "7PT",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60 %",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pu", foyer_fiscal, Int32,
  cerfa_field = "7PU",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pv", foyer_fiscal, Int32,
  cerfa_field = "7PV",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7pw", foyer_fiscal, Int32,
  cerfa_field = "7PW",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7px", foyer_fiscal, Int32,
  cerfa_field = "7PX",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt  à hauteur de 52,63 %",
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7py", foyer_fiscal, Int32,
  cerfa_field = "7PY",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rg", foyer_fiscal, Int32,
  cerfa_field = "7RG",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rh", foyer_fiscal, Int32,
  cerfa_field = "7RH",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ri", foyer_fiscal, Int32,
  cerfa_field = "7RI",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rj", foyer_fiscal, Int32,
  cerfa_field = "7RJ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rk", foyer_fiscal, Int32,
  cerfa_field = "7RK",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rl", foyer_fiscal, Int32,
  cerfa_field = "7RL",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rm", foyer_fiscal, Int32,
  cerfa_field = "7RM",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rn", foyer_fiscal, Int32,
  cerfa_field = "7RN",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ro", foyer_fiscal, Int32,
  cerfa_field = "7RO",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rp", foyer_fiscal, Int32,
  cerfa_field = "7RP",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rq", foyer_fiscal, Int32,
  cerfa_field = "7RQ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rr", foyer_fiscal, Int32,
  cerfa_field = "7RR",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rs", foyer_fiscal, Int32,
  cerfa_field = "7RS",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rt", foyer_fiscal, Int32,
  cerfa_field = "7RT",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ru", foyer_fiscal, Int32,
  cerfa_field = "7RU",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rv", foyer_fiscal, Int32,
  cerfa_field = "7RV",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rw", foyer_fiscal, Int32,
  cerfa_field = "7RW",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rx", foyer_fiscal, Int32,
  cerfa_field = "7RX",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ry", foyer_fiscal, Int32,
  cerfa_field = "7RY",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7nu", foyer_fiscal, Int32,
  cerfa_field = "7NU",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7nv", foyer_fiscal, Int32,
  cerfa_field = "7NV",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7nw", foyer_fiscal, Int32,
  cerfa_field = "7NW",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7nx", foyer_fiscal, Int32,
  cerfa_field = "7NX",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ny", foyer_fiscal, Int32,
  cerfa_field = "7NY",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7mn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7MN",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7lh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LH",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50%",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7mb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7MB",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60%",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7kt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KT",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt, Investissements dans votre entreprise",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7li", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LI",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Autres investissements réalisés en 2010, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50%",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7mc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7MC",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Autres investissements réalisés en 2010, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60%",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7ku", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KU",
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements dans votre entreprise",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7sz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SZ",
  label = "Dépenses en faveur de la qualité environnementale des logements donnés en location",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("fhsa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSA",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2010 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSB",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2010 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSF",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2011 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSG",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2011 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSC",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSH",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSD",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculée en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSI",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculée en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhse", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSE",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSJ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSK",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2010 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSL",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2010 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSP",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2011 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSQ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2011 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSM",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSR",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSN",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhss", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSS",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhso", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSO",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhst", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HST",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSU",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSV",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSW",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements dans votre entreprise",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSX",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculé",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HS",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhsz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HSZ",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhta", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HTA",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhtb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HTB",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhtc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HTC",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculé",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhtd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HTD",
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7fy", foyer_fiscal, Int32,
  cerfa_field = "7FY",
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés: conventions signées avant l'année n-1 et ayant pris fin en année n-1",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7gy", foyer_fiscal, Int32,
  cerfa_field = "7GY",
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés dont handicapés: conventions signées avant l'année n-1 et ayant pris fin en année n-1",
  start_date = Date(2006, 1, 1),
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7hy", foyer_fiscal, Int32,
  cerfa_field = "7HY",
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés: conventions signées en n-1 et n'ayant pas pris fin en n-1",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7ky", foyer_fiscal, Int32,
  cerfa_field = "7KY",
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés dont handicapés: conventions signées en n-1 et ayant pris fin en n-1",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7iy", foyer_fiscal, Int32,
  cerfa_field = "7IY",
  label = "Report du solde de réduction d'impôt non encore imputé sur les investissements réalisés",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ly", foyer_fiscal, Int32,
  cerfa_field = "7LY",
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés: conventions ayant pas pris fin l'année de perception des revenus déclarés",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7my", foyer_fiscal, Int32,
  cerfa_field = "7MY",
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés dont handicapés: conventions ayant pas pris fin l'année de perception des revenus déclarés",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7ra", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RA",
  label = "Travaux de restauration immobilière dans une zone de protection du patrimoine architectural, urbain et paysager",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7rb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RB",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7rc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RC",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7rd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RD",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7re", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RE",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7rf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7RF",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7sx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SX",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7sy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SY",
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gw", foyer_fiscal, Int32,
  cerfa_field = "7GW",
  label = "Investissements achevés en n-2 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna : report de 1/5 de la réduction d'impôt",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gx", foyer_fiscal, Int32,
  cerfa_field = "7GX",
  label = "Investissements achevés en n-2 avec promesse d'achat en n-3 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna : report de 1/5 de la réduction d'impôt",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7xa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XA",
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés avant 2011 dans un village résidentiel de tourisme",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XB",
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés avant 2011 dans une résidence de tourisme classée ou meublée",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XC",
  label = "Investissements locatifs dans le secteur de touristique: prix d'acquisition ou de revient d'un logement neuf acquis ou achevé en n-1",
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xd", foyer_fiscal, Bool,
  cerfa_field = "7XD",
  label = "Investissements locatifs dans le secteur de touristique: logement neuf, demande d'étalement du solde de la réduction d'impôt sur 6 ans",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xe", foyer_fiscal, Bool,
  cerfa_field = "7XE",
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, demande d'étalement du solde de la réduction d'impôt sur 6 ans",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XF",
  label = "Investissements locatifs dans le secteur de touristique, logement neuf: report des dépenses d'investissement des années antérieures",
))

@register_variable(VariableDefinition("f7xh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XH",
  label = "Investissements locatifs dans le secteur de touristique: travaux de reconstruction, agrandissement, réparation dans une résidence de tourisme classée ou un meublé de tourisme",
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XI",
  label = "Investissements locatifs dans le secteur de touristique, logement neuf: report des dépenses d'investissement des années antérieures",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7xj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XJ",
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, report des dépenses d'investissement des années antérieures",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7xk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XK",
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7xl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XL",
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, prix de revient d'un logement réhabilité en n-1 et achevé depuis moins de 15 ans",
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XM",
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, report de dépenses des travaux de réhabilitation achevés les années antérieures",
))

@register_variable(VariableDefinition("f7xn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XN",
  label = "Investissements locatifs dans le secteur de touristique, logement neuf: report des dépenses d'investissement des années antérieures",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7xo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XO",
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f7xp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XP",
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7xq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XQ",
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7xr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XR",
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7xv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XV",
  label = "Investissements locatifs dans le secteur de touristique: Report des dépenses d'investissement des années antérieures",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7xx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XX",
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés après 2012 dans un village résidentiel de tourisme",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7xz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XZ",
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés après 2012 dans une résidence de tourisme classée ou un meublé tourisme",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7uy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UY",
  label = "Investissements locatifs dans le secteur de touristique: Report des dépenses d'investissement des années antérieures",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7uz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UZ",
  label = "Investissements locatifs dans le secteur de touristique: Report des dépenses d'investissement des années antérieures",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7cf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CF",
  label = "Souscriptions au capital des PME non cotées, petites entreprises en phase de démarrage, ou d'expansion",
))

@register_variable(VariableDefinition("f7cl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CL",
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -4",
))

@register_variable(VariableDefinition("f7cm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CM",
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -3",
))

@register_variable(VariableDefinition("f7cn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CN",
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -2",
))

@register_variable(VariableDefinition("f7cc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CC",
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -1",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7cq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CQ",
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -1pour les start-up",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7cu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7CU",
  label = "Souscriptions au capital des PME non cotées, montant versé au titre de souscriptions antérieures",
))

@register_variable(VariableDefinition("f7gs", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GS",
  label = "Reports concernant les investissements achevés ou acquis au cours des années antérieures: Investissements réalisés en n-3 en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ua", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UA",
  stop_date = Date(2007, 12, 31),
))

@register_variable(VariableDefinition("f7ub", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UB",
  stop_date = Date(2007, 12, 31),
))

@register_variable(VariableDefinition("f7uc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UC",
  label = "Cotisations pour la défense des forêts contre l'incendie ",
))

@register_variable(VariableDefinition("f7ui", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UI",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f7uj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UJ",
  stop_date = Date(2007, 12, 31),
))

@register_variable(VariableDefinition("f7qb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QB",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QC",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QD",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QK",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f7qn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QN",
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f7kg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KG",
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("f7ql", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QL",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QT",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QM",
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7qu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QU",
))

@register_variable(VariableDefinition("f7ki", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KI",
))

@register_variable(VariableDefinition("f7qj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QJ",
))

@register_variable(VariableDefinition("f7qw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QW",
))

@register_variable(VariableDefinition("f7qx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QX",
))

@register_variable(VariableDefinition("f7qf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QF",
))

@register_variable(VariableDefinition("f7qg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QG",
))

@register_variable(VariableDefinition("f7qh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QH",
))

@register_variable(VariableDefinition("f7qi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QI",
))

@register_variable(VariableDefinition("f7qq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QQ",
))

@register_variable(VariableDefinition("f7qr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QR",
))

@register_variable(VariableDefinition("f7qs", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7QS",
))

@register_variable(VariableDefinition("f7mm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7MM",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7lg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LG",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7ma", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7MA",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7ks", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KS",
))

@register_variable(VariableDefinition("f7kh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KH",
))

@register_variable(VariableDefinition("f7oa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OA",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% avant 2009",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ob", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OB",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2009",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7oc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OC",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2010",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7oh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OH",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% avant 2009",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7oi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OI",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2009",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7oj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OJ",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2010",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ok", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OK",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Autres investissements",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ol", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OL",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % avant 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7om", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OM",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7on", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7ON",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7oo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OO",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % avant 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7op", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OP",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7oq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OQ",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7or", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OR",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7os", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OS",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % avant 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ot", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OT",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ou", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OU",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ov", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OV",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ow", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7OW",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, ",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("fhod", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOD",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés avant le 1.1.2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhoe", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOE",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhof", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOF",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhog", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOG",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés en 2012 ou 2013, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhox", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOX",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés en 2012 ou 2013, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhoy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOY",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés en 2012 ou 2013, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhoz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HOZ",
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Autres investissements",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhra", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HRA",
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Investissements ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhrb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HRB",
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Investissements ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhrc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HRC",
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Investissements ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("fhrd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "HRD",
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Autres investissements",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GQ",
  label = "Souscription de parts de fonds communs de placement dans l'innovation",
))

@register_variable(VariableDefinition("f7fq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FQ",
  label = "Souscription de parts de fonds d'investissement de proximité",
))

@register_variable(VariableDefinition("f7fm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FM",
  label = "Souscription de parts de fonds d'investissement de proximité investis en Corse",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f7fl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FL",
  label = "Souscription de parts de fonds d'investissement de proximité investis outre-mer par des personnes domiciliées outre-mer",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7gn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GN",
  label = "Souscriptions au capital de SOFICA 36 %",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f7fn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FN",
  label = "Souscriptions au capital de SOFICA 30 %",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f7fh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FH",
  label = "Intérêts d'emprunt pour reprise de société",
))

@register_variable(VariableDefinition("f7ff", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FF",
  label = "Frais de comptabilité et d'adhésion à un CGA (centre de gestion agréée) ou à une AA (association agréée)",
))

@register_variable(VariableDefinition("f7fg", foyer_fiscal, Int32,
  cerfa_field = "7FG",
  label = "Frais de comptabilité et d'adhésion à un CGA ou à une AA: nombre d'exploitations",
))

@register_variable(VariableDefinition("f7nz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NZ",
  label = "Travaux de conservation et de restauration d’objets classés monuments historiques",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f7ka", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KA",
  label = "Dépenses de protection du patrimoine naturel",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7kb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KB",
  label = "Dépenses de protection du patrimoine naturel (excédent de réduction d’impôt d’années antérieures qui n’a pu être imputé)",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7kc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KC",
  label = "Dépenses de protection du patrimoine naturel (excédent de réduction d’impôt d’années antérieures qui n’a pu être imputé)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7kd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7KD",
  label = "Dépenses de protection du patrimoine naturel (excédent de réduction d’impôt d’années antérieures qui n’a pu être imputé)",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7uh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UH",
  label = "Dons et cotisations versés aux partis politiques",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("f7un", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UN",
  label = "Investissements forestiers: acquisition",
))

@register_variable(VariableDefinition("f7ul", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UL",
  label = "Investissements forestiers",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7uu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UU",
  label = "Investissements forestiers",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7uv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UV",
  label = "Investissements forestiers",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7uw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UW",
  label = "Investissements forestiers",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7th", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TH",
  label = "Investissements forestiers",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ux", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UX",
  label = "Investissements forestiers",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7tg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TG",
  label = "Investissements forestiers",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7tf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TF",
  label = "Investissements forestiers",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2013, 12, 31),
))

@register_variable(VariableDefinition("f7ut", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UT",
  label = "Investissements forestiers",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7um", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UM",
  label = "Intérêts pour paiement différé accordé aux agriculteurs",
))

@register_variable(VariableDefinition("f7hj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HJ",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 en métropole",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7hk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HK",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 dans les DOM-COM",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7hn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HN",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 en métropole avec promesse d'achat avant le 1er janvier 2010",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7ho", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HO",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 dans les DOM-COM avec promesse d'achat avant le 1er janvier 2010",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7hl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HL",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2009 (métropole et DOM ne respectant pas les plafonds)",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7hm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HM",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2009 dans les DOM et respectant les plafonds",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7hr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HR",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés et achevés en 2009, en métropole en 2009; dans les DOM du 1.1.2009 au 26.5.2009 ; dans les DOM du 27.5.2009 au 30.12.2009 lorsqu'ils ne respectent pas les plafonds spécifiques",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7hs", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HS",
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés et achevés en 2009 dans les DOM COM du 27.5.2009 au 31.12.2009 respectant les plafonds spécifiques",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7la", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LA",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report de l'année 2009",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7lb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LB",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report de l'année 2010",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7lc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LC",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report de l'année 2010",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ld", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LD",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report de l'année 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7le", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LE",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report de l'année 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7lf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LF",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2011 : report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ls", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LS",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7lm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LM",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7lz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7LZ",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7mg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7MG",
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2012 : report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7na", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NA",
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NB",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NC",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7ND",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ne", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NE",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NF",
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ng", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NG",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NH",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, Investissement réalisé du 1.1.2011 au 31.1.2011, métropole, non-BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ni", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NI",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, métropole, non-BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NJ",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, métropole, non-BBC",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NK",
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NL",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NM",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, Investissement réalisé du 1.1.2011 au 31.1.2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NN",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7no", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NO",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7np", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NP",
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NQ",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NR",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, Investissement réalisé du 1.1.2011 au 31.1.2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ns", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NS",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7nt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7NT",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7hv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HV",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 en métropole",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7hw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HW",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 dans les DOM COM",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7hx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HX",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 en métropole avec promesse d'achat avant le 1.1.2010",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7hz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HZ",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 dans les DOM COM avec promesse d'achat avant le 1.1.2010",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ht", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HT",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2009, Investissements réalisés en 2009 et achevés en 2010, en métropole en 2009; dans les DOM du 1.1.2009 au 26.5.2009 ; dans les DOM du 27.5.2009 au 30.12.2009 lorsqu'ils ne respectent pas les plafonds spécifiques",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7hu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HU",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2009, Investissements réalisés en 2009 et achevés en 2010, dans les DOM COM du 27.5.2009 au 31.12.2009 respectant les plafonds spécifiques",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ha", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HA",
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés et réalisés en 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7hb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HB",
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés et réalisés en 2011, avec promesse d'achat en 2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7hg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HG",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2011 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7hh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HH",
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2011 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna avec promesse d'achat en 2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7hd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HD",
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés en 2011, réalisés en 2010, en métropole et dans les DOM-COM",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7he", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HE",
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés en 2011, en métropole et dans les DOM-COM avec promesse d'achat avant le 1.1.2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7hf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7HF",
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés en 2011, Investissements réalisés en 2009 en métropole et dans les DOM-COM",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ja", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JA",
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2012, métropole, BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JB",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, métropole, BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JD",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, métropole, BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7je", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JE",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, métropole, BBC ",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JF",
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JG",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JH",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JJ",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JK",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JL",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jm", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JM",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jn", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JN",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JO",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JP",
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JQ",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JR",
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7gj", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GJ",
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés et réalisés en 2012, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GK",
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés et réalisés en 2012, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon, avec promesse d'achat en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GL",
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés en 2012 et réalisés en 2011, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GP",
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés en 2012 et réalisés en 2011, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon, avec promesse d'achat en 2010s",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7fa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FA",
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013, métropole, BBC",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7fb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FB",
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013, métropole, non-BBC",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7fc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FC",
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013, DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7fd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7FD",
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013 en Polynésie, en Nouvelle Calédonie et à Wallis et Futuna",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ij", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IJ",
  label = "Investissement destinés à la location meublée non professionnelle: Investissements réalisés en 2011 et achevés en 2012, engagement de réalisation de l'investissement en 2011",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7il", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IL",
  label = "Investissement destinés à la location meublée non professionnelle: Investissements réalisés en 2011 et achevés en 2012, promesse d'achat en 2010",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7im", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IM",
  label = "Investissement destinés à la location meublée non professionnelle: Investissements réalisés en 2010 et achevés en 2012 avec promesse d'achat en 2009",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7ik", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IK",
  label = "Investissements destinés à la location meublée non professionnelle : Reports de 1/9 de l'investissement réalisé et achevé en 2009",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7in", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IN",
  label = "Investissements destinés à la location meublée non professionnelle : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, investissement réalisé du 1.1.2011 au 31.3.2011",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7iv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IV",
  label = "Investissements destinés à la location meublée non professionnelle : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, investissement réalisé du 1.4.2011 au 31.12.2011",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7iw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IW",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2010 et achevés en 2012",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7io", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IO",
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ip", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IP",
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7ir", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IR",
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7iq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IQ",
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7iu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IU",
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7it", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IT",
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("f7is", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IS",
  label = "Investissements destinés à la location meublée non professionnelle : Report du solde de réduction d'impôt non encore imputé: année  n-4",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7ia", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IA",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ib", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IB",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 avec promesse d'achat en 2010 ou réalisés en 2010",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ic", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IC",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2010 et achevés en 2011 avec promesse d'achat en 2009 ou réalisés en 2009",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7id", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7ID",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Engagement de réalisation de l'investissement en 2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ie", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IE",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Promesse d'achat en 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7if", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IF",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, investissement réalisé du 1.1.2012 au 31.3.2012, investissement réalisé du 1.1.2012 au 31.3.2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ig", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IG",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Investissements destinés à la location meublée non professionnelle : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, investissement réalisé du 1.4.2012 au 31.12.2012",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ix", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IX",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2009; réalisés en 2009 et achevés en 2010; réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7ih", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IH",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7iz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7IZ",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 : report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7jt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JT",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2013, Engagement de réalisation de l'investissement en 2013",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ju", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JU",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2013, Engagement de réalisation de l'investissement en 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7jv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JV",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7jw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JW",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2011 ou réalisés en 2012 avec promesse d'achat en 2011",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7jx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JX",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2011 avec promesse d'achat en 2010 ou réalisés en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7jy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JY",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2010 avec promesse d'achat en 2009 ou réalisés en 2009",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7jc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JC",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7ji", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JI",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 ; réalisés en 2011 et achevés en 2011 ou 2012 ; réalisés en 2012 avec promesse d'achat en 2011 et achevés en 2012, Report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7js", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7JS",
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 ; réalisés en 2011 et achevés en 2011 ou 2012 ; réalisés en 2012 avec promesse d'achat en 2011 et achevés en 2012, Report du solde de réduction d’impôt de l’année 2012",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GT",
  label = "Scellier: report de 1/9 de la réduction d'impôt des investissements achevés en 2012 avec promesse d'achat en 2010",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GU",
  label = "Scellier: report de 1/9 de la réduction d'impôt des investissements achevés en 2012 avec promesse d'achat en 2009",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GV",
  label = "Scellier: report de 1/5 de la réduction d'impôt des investissements réalisés et achevés en 2012 en Polynésie, en Nouvelle Calédonie et à Wallis et Futuna ",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7xg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7XG",
  label = "Investissement locatif dans le secteur touristique, travaux réalisés dans un village résidentiel de tourisme",
  stop_date = Date(2012, 12, 1),
))

@register_variable(VariableDefinition("f7uo", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UO",
  label = "Acquisition de biens culturels",
))

@register_variable(VariableDefinition("f7us", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7US",
  label = "Réduction d'impôt mécénat d'entreprise",
))

@register_variable(VariableDefinition("f7sb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SB",
  label = "Dépenses en faveur de la qualité environnementale des logements donnés en location: crédit à 25 %",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 12, 31),
))

@register_variable(VariableDefinition("f7sc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SC",
  label = "Crédits d’impôt pour dépenses en faveur de la qualité environnementale",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 1),
))

@register_variable(VariableDefinition("f7sd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SD",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale, économie d'énergie: chaudières à condensation",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7se", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SE",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale, économie d'énergie: chaudières à micro-cogénération gaz",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7sh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SH",
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale, isolation thermique: matériaux d'isolation des toitures (acquisition et pose)",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7up", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UP",
  label = "Crédit d'impôt pour investissements forestiers: travaux",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f7uq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7UQ",
  label = "Crédit d'impôt pour investissements forestiers: contrat de gestion",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("f1ar", foyer_fiscal, Bool,
  cerfa_field = "1AR",
  label = "Crédit d'impôt aide à la mobilité : le déclarant déménage à plus de 200 km pour son emploi",
  stop_date = Date(2080, 12, 31),
))

@register_variable(VariableDefinition("f1br", foyer_fiscal, Bool,
  cerfa_field = "1BR",
  label = "Crédit d'impôt aide à la mobilité : le conjoint déménage à plus de 200 km pour son emploi",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f1cr", foyer_fiscal, Bool,
  cerfa_field = "1CR",
  label = "Crédit d'impôt aide à la mobilité : la 1ère personne à charge déménage à plus de 200 km pour son emploi",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f1dr", foyer_fiscal, Bool,
  cerfa_field = "1DR",
  label = "Crédit d'impôt aide à la mobilité : la 2è personne à charge déménage à plus de 200 km pour son emploi",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f1er", foyer_fiscal, Bool,
  cerfa_field = "1ER",
  label = "Crédit d'impôt aide à la mobilité : la 3è personne à charge déménage à plus de 200 km pour son emploi",
  stop_date = Date(2006, 12, 31),
))

@register_variable(VariableDefinition("f4tq", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "4TQ",
  label = "Crédit d’impôt représentatif de la taxe additionnelle au droit de bail",
))

@register_variable(VariableDefinition("f7sf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SF",
  label = "Crédit de travaux en faveur d'aides aux personnes pour des logements en location (avant 2012 ) / Appareils de régulation du chauffage, matériaux de calorifugeage (après 2011)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7si", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7SI",
  label = "Matériaux d’isolation des planchers bas sur sous-sol, sur vide sanitaire ou sur passage couvert (acquisition et pose)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f7te", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TE",
  label = "Dépenses d'investissement forestier",
  start_date = Date(2010, 1, 1),
))

@register_variable(VariableDefinition("f7tu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TU",
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7tt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TT",
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7tv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TV",
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7tx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TX",
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7ty", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TY",
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7tw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7TW",
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f7gh", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GH",
  label = "Investissements locatifs intermédiaires en métropole",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f7gi", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "7GI",
  label = "Investissements locatifs intermédiaires outre-mer",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f8ta", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TA",
  label = "Retenue à la source en France ou impôt payé à l'étranger",
))

@register_variable(VariableDefinition("f8tb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TB",
  label = "Crédit d'impôt recherche (entreprises bénéficiant de la restitution immédiate)",
))

@register_variable(VariableDefinition("f8tf", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TF",
  label = "Reprises de réductions ou de crédits d'impôt",
))

@register_variable(VariableDefinition("f8tg", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TG",
  label = "Crédits d'impôt en faveur des entreprises: Investissement en Corse",
))

@register_variable(VariableDefinition("f8th", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TH",
  label = "Retenue à la source élus locaux",
))

@register_variable(VariableDefinition("f8tc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TC",
  label = "Crédit d'impôt autres entreprises (recherche non encore remboursé (années antérieures))",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f8td_2002_2005", foyer_fiscal, Int32,
  cerfa_field = "8TD",
  label = "Contribution exceptionnelle sur les hauts revenus",
  start_date = Date(2002, 1, 1),
  stop_date = Date(2005, 12, 31),
))

@register_variable(VariableDefinition("f8td", foyer_fiscal, Bool,
  cerfa_field = "8TD",
  label = "Revenus non imposables dépassent la moitié du RFR",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2014, 12, 31),
))

@register_variable(VariableDefinition("f8te", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TE",
  label = "Crédit d'impôt en faveur des entreprises: adhésion à un groupement de prévention agréé",
))

@register_variable(VariableDefinition("f8ti", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TK",
  label = "Revenus de l'étranger exonérés d'impôt",
))

@register_variable(VariableDefinition("f8tk", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TK",
  label = "Revenus de l'étranger imposables",
))

@register_variable(VariableDefinition("f8tl", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TL",
  label = "Crédit d'impôt compétitivité emploi (CICE), entreprises bénéficiant de la restitution immédiate",
))

@register_variable(VariableDefinition("f8to", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TO",
  label = "Crédit d'impôt en faveur des entreprises: investissement en Corse, report non imputé les années antérieures",
))

@register_variable(VariableDefinition("f8tp", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TP",
  label = "Crédit d'impôt en faveur des entreprises: investissement en Corse, reprise de crédit d'impôt",
))

@register_variable(VariableDefinition("f8ts", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TS",
  label = "Crédit d'impôt en faveur des entreprises: investissement en Corse, crédit d'impôt",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f8uz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8UZ",
  label = "Crédit d'impôt en faveur des entreprises: Famille",
))

@register_variable(VariableDefinition("f8uw", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8UW",
  label = "Crédit d'impôt compétitivité emploi (CICE), autres entreprises",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f8tz", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8TZ",
  label = "Crédit d'impôt en faveur des entreprises: Apprentissage",
))

@register_variable(VariableDefinition("f8wa", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WA",
  label = "Crédit d'impôt en faveur des entreprises: Agriculture biologique",
))

@register_variable(VariableDefinition("f8wb", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WB",
  label = "Crédit d'impôt en faveur des entreprises: Prospection commerciale",
))

@register_variable(VariableDefinition("f8wc__2008", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WC",
  label = "Crédit d'impôt en faveur des entreprises: Nouvelles technologies",
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f8wc", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WC",
  label = "Crédit d'impôt en faveur des entreprises: Prêts sans intérêt",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("f8wd", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WD",
  label = "Crédit d'impôt en faveur des entreprises: Formation des chefs d'entreprise",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f8we", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WE",
  label = "Crédit d'impôt en faveur des entreprises: Intéressement",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f8wr", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WR",
  label = "Crédit d'impôt en faveur des entreprises: Métiers d'art",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f8ws", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WS",
  label = "Crédit d'impôt en faveur des entreprises: Emploi de salariés réservistes",
  start_date = Date(2006, 1, 1),
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f8wt", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WT",
  label = "Crédit d'impôt en faveur des entreprises: Remplacement pour congé des agriculteurs",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f8wu", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WU",
  label = "Crédit d'impôt en faveur des entreprises: Maître restaurateur",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f8wv", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WV",
  label = "Crédit d'impôt en faveur des entreprises: Débitants de tabac",
  start_date = Date(2007, 1, 1),
  stop_date = Date(2012, 12, 31),
))

@register_variable(VariableDefinition("f8wx", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8WX",
  label = "Crédit d'impôt en faveur des entreprises: Formation des salariés à l'économie d'entreprise",
  start_date = Date(2007, 1, 1),
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("elig_creimp_exc_2008", foyer_fiscal, Int32,
  cell_default = 1,
  cell_format = "monetary",
  label = "Éligibilité au crédit d'impôt exceptionnel sur les revenus 2008",
  start_date = Date(2008, 1, 1),
  stop_date = Date(2008, 12, 31),
))

@register_variable(VariableDefinition("f8uy", foyer_fiscal, Int32,
  cell_format = "monetary",
  cerfa_field = "8UY",
  label = "Auto-entrepreneur : versements libératoires d’impôt sur le revenu dont le remboursement est demandé",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("idmen", individu, Int32,
  label = "Identifiant du ménage",
  permanent = true,
))

@register_variable(VariableDefinition("idfoy", individu, Int32,
  label = "Identifiant du foyer",
  permanent = true,
))

@register_variable(VariableDefinition("idfam", individu, Int32,
  label = "Identifiant de la famille",
  permanent = true,
))

@register_variable(VariableDefinition("quimen", individu, Int16,
  permanent = true,
  values = [
    0 => "pref",
    1 => "cref",
    2 => "enf1",
    3 => "enf2",
    4 => "enf3",
    5 => "enf4",
    6 => "enf5",
    7 => "enf6",
    8 => "enf7",
    9 => "enf8",
    10 => "enf9",
  ],
))

@register_variable(VariableDefinition("quifoy", individu, Int16,
  permanent = true,
  values = [
    0 => "vous",
    1 => "conj",
    2 => "pac1",
    3 => "pac2",
    4 => "pac3",
    5 => "pac4",
    6 => "pac5",
    7 => "pac6",
    8 => "pac7",
    9 => "pac8",
    10 => "pac9",
  ],
))

@register_variable(VariableDefinition("quifam", individu, Int16,
  permanent = true,
  values = [
    0 => "chef",
    1 => "part",
    2 => "enf1",
    3 => "enf2",
    4 => "enf3",
    5 => "enf4",
    6 => "enf5",
    7 => "enf6",
    8 => "enf7",
    9 => "enf8",
    10 => "enf9",
  ],
))

@register_variable(VariableDefinition("birth", individu, Date,
  cell_format = "date",
  label = "Date de naissance",
  permanent = true,
))

@register_variable(VariableDefinition("nom_individu", individu, UTF8String,
  label = "Prénom",
  permanent = true,
))

@register_variable(VariableDefinition("enceinte", individu, Bool,
  label = "Est enceinte",
))

@register_variable(VariableDefinition("categ_inv", individu, Int32,
  label = "Catégorie de handicap (AEEH)",
))

@register_variable(VariableDefinition("coloc", individu, Bool,
  label = "Vie en colocation",
))

@register_variable(VariableDefinition("csg_rempl", individu, Int16,
  cell_default = 3,
  label = "Taux retenu sur la CSG des revenus de remplacment",
  values = [
    0 => "Non renseigné/non pertinent",
    1 => "Exonéré",
    2 => "Taux réduit",
    3 => "Taux plein",
  ],
))

@register_variable(VariableDefinition("aer", individu, Int32,
  label = "Allocation équivalent retraite (AER)",
))

@register_variable(VariableDefinition("f5sq", individu, Int32))

@register_variable(VariableDefinition("adoption", individu, Bool,
  label = "Enfant adopté",
))

@register_variable(VariableDefinition("ass_precondition_remplie", individu, Bool,
  label = "Éligible à l'ASS",
))

@register_variable(VariableDefinition("elig_creimp_jeunes", individu, Bool,
  label = "Éligible au crédit d'impôt jeunes",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("indemnites_journalieres_maternite", individu, Float32,
  label = "Indemnités journalières de maternité",
))

@register_variable(VariableDefinition("indemnites_journalieres_paternite", individu, Float32,
  label = "Indemnités journalières de paternité",
))

@register_variable(VariableDefinition("indemnites_journalieres_adoption", individu, Float32,
  label = "Indemnités journalières d'adoption",
))

@register_variable(VariableDefinition("indemnites_journalieres_maladie", individu, Float32,
  label = "Indemnités journalières de maladie",
))

@register_variable(VariableDefinition("indemnites_journalieres_accident_travail", individu, Float32,
  label = "Indemnités journalières d'accident du travail",
))

@register_variable(VariableDefinition("indemnites_journalieres_maladie_professionnelle", individu, Float32,
  label = "Indemnités journalières de maladie professionnelle",
))

@register_variable(VariableDefinition("indemnites_chomage_partiel", individu, Float32,
  label = "Indemnités de chômage partiel",
))

@register_variable(VariableDefinition("allocation_aide_retour_emploi", individu, Float32,
  label = "Allocation d'aide au retour à l'emploi",
))

@register_variable(VariableDefinition("allocation_securisation_professionnelle", individu, Float32,
  label = "Allocation de sécurisation professionnelle",
))

@register_variable(VariableDefinition("prime_forfaitaire_mensuelle_reprise_activite", individu, Float32,
  label = "Prime forfaitaire mensuelle pour la reprise d'activité",
))

@register_variable(VariableDefinition("indemnites_volontariat", individu, Float32,
  label = "Indemnités de volontariat",
))

@register_variable(VariableDefinition("dedommagement_victime_amiante", individu, Float32,
  label = "Dédommagement versé aux victimes de l'amiante",
))

@register_variable(VariableDefinition("prestation_compensatoire", individu, Float32,
  label = "Dédommagement versé aux victimes de l'amiante",
))

@register_variable(VariableDefinition("aah", individu, Float32,
  label = "Allocation de l'adulte handicapé",
))

@register_variable(VariableDefinition("caah", individu, Float32,
  label = "Complément de l'allocation de l'adulte handicapé",
))

@register_variable(VariableDefinition("gains_exceptionnels", individu, Float32,
  label = "Gains exceptionnels",
))

@register_variable(VariableDefinition("pensions_invalidite", individu, Float32,
  label = "Pensions d'invalidité",
))

@register_variable(VariableDefinition("bourse_enseignement_sup", individu, Float32,
  label = "Bourse de l'enseignement supérieur",
))

@register_variable(VariableDefinition("bourse_recherche", individu, Float32,
  label = "Bourse de recherche",
))

@register_variable(VariableDefinition("retraite_combattant", individu, Float32,
  label = "Retraite du combattant",
))

@register_variable(VariableDefinition("indemnites_stage", individu, Float32,
  label = "Indemnités de stage",
))

@register_variable(VariableDefinition("revenus_stage_formation_pro", individu, Float32,
  label = "Revenus de stage de formation professionnelle",
))

@register_variable(VariableDefinition("pensions_alimentaires_percues", individu, Float32,
  label = "Pensions alimentaires perçues",
))

@register_variable(VariableDefinition("etr", individu, Int32))

@register_variable(VariableDefinition("interets_epargne_sur_livrets", individu, Float32,
  label = "Intérêts versés pour l'épargne sur livret",
  permanent = true,
))

@register_variable(VariableDefinition("epargne_non_remuneree", individu, Float32,
  label = "Épargne non rémunérée",
  permanent = true,
))

@register_variable(VariableDefinition("revenus_capital", individu, Float32,
  label = "Revenus du capital",
))

@register_variable(VariableDefinition("valeur_locative_immo_non_loue", individu, Float32,
  label = "Valeur locative des biens immobiliés possédés et non loués",
  permanent = true,
))

@register_variable(VariableDefinition("valeur_locative_terrains_non_loue", individu, Float32,
  label = "Valeur locative des terrains possédés et non loués",
  permanent = true,
))

@register_variable(VariableDefinition("revenus_locatifs", individu, Float32,
  label = "Revenus locatifs",
  permanent = true,
))

@register_variable(VariableDefinition("cho_ld", individu, Bool,
  cerfa_field = [0 => "1AI", 1 => "1BI", 2 => "1CI", 3 => "1DI", 4 => "1EI"],
  label = "Demandeur d'emploi inscrit depuis plus d'un an",
))

@register_variable(VariableDefinition("sali", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AJ", 1 => "1BJ", 2 => "1CJ", 3 => "1DJ", 4 => "1EJ"],
  label = "Revenus d'activité imposables",
))

@register_variable(VariableDefinition("fra", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AK", 1 => "1BK", 2 => "1CK", 3 => "1DK", 4 => "1EK"],
  label = "Frais réels",
))

@register_variable(VariableDefinition("alr", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AO", 1 => "1BO", 2 => "1CO", 3 => "1DO", 4 => "1EO"],
  label = "Pensions alimentaires perçues",
))

@register_variable(VariableDefinition("alr_decl", individu, Bool,
  cell_default = true,
  label = "Pension déclarée",
))

@register_variable(VariableDefinition("choi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AP", 1 => "1BP", 2 => "1CP", 3 => "1DP", 4 => "1EP"],
  label = "Autres revenus imposables (chômage, préretraite)",
))

@register_variable(VariableDefinition("rsti", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AS", 1 => "1BS", 2 => "1CS", 3 => "1DS", 4 => "1ES"],
  label = "Pensions, retraites, rentes connues imposables",
))

@register_variable(VariableDefinition("hsup", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AU", 1 => "1BU", 2 => "1CU", 3 => "1DU"],
  label = "Heures supplémentaires : revenus exonérés connus",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("inv", individu, Bool,
  label = "Invalide",
))

@register_variable(VariableDefinition("alt", individu, Bool,
  label = "Enfant en garde alternée",
))

@register_variable(VariableDefinition("ppe_du_sa", individu, Int32,
  cerfa_field = [0 => "1AV", 1 => "1BV", 2 => "1CV", 3 => "1DV", 4 => "1QV"],
  label = "Prime pour l'emploi des salariés: nombre d'heures payées dans l'année",
))

@register_variable(VariableDefinition("ppe_tp_sa", individu, Bool,
  cerfa_field = [0 => "1AX", 1 => "1BX", 2 => "1CX", 3 => "1DX", 4 => "1QX"],
  label = "Prime pour l'emploi des salariés: indicateur de travail à temps plein sur l'année entière",
))

@register_variable(VariableDefinition("activite", individu, Int16,
  cell_default = 4,
  label = "Activité",
  values = [
    0 => "Actif occupé",
    1 => "Chômeur",
    2 => "Étudiant, élève",
    3 => "Retraité",
    4 => "Autre inactif",
  ],
))

@register_variable(VariableDefinition("nbsala", individu, Int16,
  label = "Nombre de salariés dans l'établissement de l'emploi actuel",
  values = [
    0 => "Sans objet",
    1 => "Aucun salarié",
    2 => "1 à 4 salariés",
    3 => "5 à 9 salariés",
    4 => "10 à 19 salariés",
    5 => "20 à 49 salariés",
    6 => "50 à 199 salariés",
    7 => "200 à 499 salariés",
    8 => "500 à 999 salariés",
    9 => "1000 salariés ou plus",
    10 => "Ne sait pas",
  ],
))

@register_variable(VariableDefinition("tva_ent", individu, Bool,
  cell_default = true,
  label = "L'entreprise employant le salarié paye de la TVA",
))

@register_variable(VariableDefinition("exposition_accident", individu, Int16,
  label = "Exposition au risque pour les accidents du travail",
  values = [
    0 => "Faible",
    1 => "Moyen",
    2 => "Élevé",
    3 => "Très élevé",
  ],
))

@register_variable(VariableDefinition("boursier", individu, Bool,
  label = "Élève ou étudiant boursier",
))

@register_variable(VariableDefinition("statmarit", individu, Int16,
  cell_default = 2,
  label = "Statut marital",
  values = [
    1 => "Marié",
    2 => "Célibataire",
    3 => "Divorcé",
    4 => "Veuf",
    5 => "Pacsé",
    6 => "Jeune veuf",
  ],
))

@register_variable(VariableDefinition("f1tv", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1TV", 1 => "1UV"],
  label = "Gains de levée d'options sur titres en cas de cession ou de conversion au porteur dans le délai d'indisponibilité: entre 1 et 2 ans",
))

@register_variable(VariableDefinition("f1tw", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1TW", 1 => "1UW"],
  label = "Gains de levée d'options sur titres en cas de cession ou de conversion au porteur dans le délai d'indisponibilité: entre 2 et 3 ans",
))

@register_variable(VariableDefinition("f1tx", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1TX", 1 => "1UX"],
  label = "Gains de levée d'options sur titres en cas de cession ou de conversion au porteur dans le délai d'indisponibilité: entre 3 et 4 ans",
))

@register_variable(VariableDefinition("sal_pen_exo_etr", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AC", 1 => "1BC", 2 => "1CC", 3 => "1DC"],
  label = "Salaires et pensions exonérés de source étrangère retenus pour le calcul du taux effectif",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("f3vd", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VD", 1 => "3SD"],
  label = "Gains de levée d'options sur titres et gains d'acquisition d'actions taxables à 18 %",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("f3vf", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VF", 1 => "3SF"],
  label = "Gains de levée d'options sur titres et gains d'acquisition d'actions taxables à 41 %",
))

@register_variable(VariableDefinition("f3vi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VI", 1 => "3SI"],
  label = "Gains de levée d'options sur titres et gains d'acquisition d'actions taxables à 30 %",
))

@register_variable(VariableDefinition("f3vj", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VJ", 1 => "3VK"],
  label = "Gains imposables sur option dans la catégorie des salaires",
))

@register_variable(VariableDefinition("f3va", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VA", 1 => "3VB"],
  label = "Abattement pour durée de détention des titres en cas de départ à la retraite d'un dirigeant appliqué sur des plus-values",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("f5qm", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QM", 1 => "5RM"],
  label = "Agents généraux d’assurances: indemnités de cessation d’activité",
))

@register_variable(VariableDefinition("ppe_du_ns", individu, Int32,
  cerfa_field = [0 => "5NV", 1 => "5OV", 2 => "5PV"],
  label = "Prime pour l'emploi des non-salariés: nombre de jours travaillés dans l'année",
  stop_date = Date(2006, 12, 31),
))

@register_variable(VariableDefinition("ppe_tp_ns", individu, Bool,
  cerfa_field = [0 => "5NW", 1 => "5OW", 2 => "5PW"],
  label = "Prime pour l'emploi des non-salariés: indicateur de travail à temps plein sur l'année entière",
  stop_date = Date(2006, 12, 31),
))

@register_variable(VariableDefinition("frag_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HN", 1 => "5IN", 2 => "5JN"],
  label = "Revenus agricoles exonérés (régime du forfait)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("frag_impo", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HO", 1 => "5IO", 2 => "5JO"],
  label = "Revenus agricoles imposables (régime du forfait)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("arag_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HB", 1 => "5IB", 2 => "5JB"],
  label = "Revenus agricoles exonérés yc plus-values (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur), activités exercées en Corse",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("arag_impg", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HC", 1 => "5IC", 2 => "5JC"],
  label = "Revenus agricoles imposables, cas général moyenne triennale (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("arag_defi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HF", 1 => "5IF", 2 => "5JF"],
  label = "Déficits agricoles (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("nrag_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HH", 1 => "5IH", 2 => "5JH"],
  label = "Revenus agricoles exonérés yc plus-values (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur), activités exercées en Corse",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("nrag_impg", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HI", 1 => "5II", 2 => "5JI"],
  label = "Revenus agricoles imposables, cas général moyenne triennale (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("nrag_defi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HL", 1 => "5IL", 2 => "5JL"],
  label = "Déficits agricoles (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("nrag_ajag", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HM", 1 => "5IM", 2 => "5JM"],
  label = "Jeunes agriculteurs, Abattement de 50% ou 100% (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("ebic_impv", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TA", 1 => "5UA", 2 => "5VA"],
  label = "Revenus industriels et commerciaux professionnels imposables: vente de marchandises et assimilées (régime auto-entrepreneur)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("ebic_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TB", 1 => "5UB", 2 => "5VB"],
  label = "Revenus industriels et commerciaux professionnels imposables: prestations de services et locations meublées (régime auto-entrepreneur)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("ebnc_impo", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TE", 1 => "5UE", 2 => "5VE"],
  label = "Revenus non commerciaux (régime auto-entrepreneur ayant opté pour le versement libératoire)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("mbic_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KN", 1 => "5LN", 2 => "5MN"],
  label = "Revenus industriels et commerciaux professionnels nets exonérés (régime micro entreprise)",
))

@register_variable(VariableDefinition("abic_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KB", 1 => "5LB", 2 => "5MB"],
  label = "Revenus industriels et commerciaux nets exonérés yc plus-values avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nbic_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KH", 1 => "5LH", 2 => "5MH"],
  label = "Revenus industriels et commerciaux nets exonérés yc plus-values sans CGA (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("mbic_impv", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KO", 1 => "5LO", 2 => "5MO"],
  label = "Revenus industriels et commerciaux professionnels imposables: vente de marchandises (régime micro entreprise)",
))

@register_variable(VariableDefinition("mbic_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KP", 1 => "5LP", 2 => "5MP"],
  label = "Revenus industriels et commerciaux professionnels imposables: prestations de services et locations meublées (régime micro entreprise)",
))

@register_variable(VariableDefinition("abic_impn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KC", 1 => "5LC", 2 => "5MC"],
  label = "Revenus industriels et commerciaux imposables: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("abic_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KD", 1 => "5LD", 2 => "5MD"],
  label = "Revenus industriels et commerciaux imposables: régime simplifié avec CGA ou viseur (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("nbic_impn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KI", 1 => "5LI", 2 => "5MI"],
  label = "Revenus industriels et commerciaux professionnels imposables: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nbic_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KJ", 1 => "5LJ", 2 => "5MJ"],
  label = "Revenus industriels et commerciaux professionnels imposables: régime simplifié sans CGA (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("nbic_mvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KJ", 1 => "5LJ", 2 => "5MJ"],
  label = "Revenus industriels et commerciaux professionnels moins-values nettes à court terme",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("abic_defn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KF", 1 => "5LF", 2 => "5MF"],
  label = "Déficits industriels et commerciaux: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("abic_defs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KG", 1 => "5LG", 2 => "5MG"],
  label = "Déficits industriels et commerciaux: simplifié avec CGA ou viseur (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 1),
))

@register_variable(VariableDefinition("nbic_defn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KL", 1 => "5LL", 2 => "5ML"],
  label = "Déficits industriels et commerciaux: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nbic_defs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KL", 1 => "5LM", 2 => "5MM"],
  label = "Locations déjà soumises aux prélèvements sociaux sans CGA (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("nbic_apch", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KS", 1 => "5LS", 2 => "5MS"],
  label = "Artisans pêcheurs : abattement 50% avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("macc_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NN", 1 => "5ON", 2 => "5PN"],
  label = "Revenus industriels et commerciaux non professionnels nets exonérés (régime micro entreprise)",
))

@register_variable(VariableDefinition("aacc_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NB", 1 => "5OB", 2 => "5PB"],
  label = "Revenus industriels et commerciaux non professionnels exonérés yc plus-values avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nacc_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NH", 1 => "5OH", 2 => "5PH"],
  label = "Revenus industriels et commerciaux non professionnels exonérés yc plus-values sans CGA (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("macc_impv", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NO", 1 => "5OO", 2 => "5PO"],
  label = "Revenus industriels et commerciaux non professionnels imposables: vente de marchandises et assimilées (régime micro entreprise)",
))

@register_variable(VariableDefinition("macc_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NP", 1 => "5OP", 2 => "5PP"],
  label = "Revenus industriels et commerciaux non professionnels imposables: prestations de services (régime micro entreprise)",
))

@register_variable(VariableDefinition("aacc_impn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NC", 1 => "5OC", 2 => "5PC"],
  label = "Revenus industriels et commerciaux non professionnels imposables: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("aacc_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5ND", 1 => "5OD", 2 => "5PD"],
  label = "Locations meublées non professionnelles (régime micro entreprise)",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("aacc_defn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NF", 1 => "5OF", 2 => "5PF"],
  label = "Déficits industriels et commerciaux non professionnels: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("aacc_gits", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NG", 1 => "5OG", 2 => "5PG"],
  label = "Location de gîtes ruraux, chambres d'hôtes et meublés de tourisme (régime micro entreprise)",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("nacc_impn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NI", 1 => "5OI", 2 => "5PI"],
  label = "Revenus industriels et commerciaux non professionnels imposables: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("aacc_defs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NG", 1 => "5OG", 2 => "5PG"],
  label = "Déficits de revenus industriels et commerciaux non professionnels avec CGA (régime simplifié du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("nacc_meup", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NJ", 1 => "5OJ", 2 => "5PJ"],
  label = "Locations meublées non professionnelles: Locations déjà soumises aux prélèvements sociaux (régime micro entreprise)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("nacc_defn", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NL", 1 => "5OL", 2 => "5PL"],
  label = "Déficits industriels et commerciaux non professionnels: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nacc_defs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NM", 1 => "5OM", 2 => "5PM"],
  label = "Locations meublées non professionnelles: Gîtes ruraux et chambres d'hôtes déjà soumis aux prélèvements sociaux avec CGA (régime du bénéfice réel)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("mncn_impo", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KU", 1 => "5LU", 2 => "5MU"],
  label = "Revenus non commerciaux non professionnels imposables (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("cncn_bene", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SN", 1 => "5NS", 2 => "5OS"],
  label = "Revenus non commerciaux non professionnels imposables sans AA (régime de la déclaration controlée)",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("cncn_defi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SP", 1 => "5NU", 2 => "5OU"],
  label = "Déficits non commerciaux non professionnels sans AA (régime de la déclaration controlée)",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("mbnc_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HP", 1 => "5IP", 2 => "5JP"],
  label = "Revenus non commerciaux professionnels nets exonérés (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("abnc_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QB", 1 => "5RB", 2 => "5SB"],
  label = "Revenus non commerciaux professionnels exonérés (yc compris plus-values) (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
))

@register_variable(VariableDefinition("nbnc_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QH", 1 => "5RH", 2 => "5SH"],
  label = "Revenus non commerciaux professionnels exonérés (yc compris plus-values) (régime de la déclaration controlée, revenus ne bénéficiant pas de l'abattement association agrée)",
))

@register_variable(VariableDefinition("mbnc_impo", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HQ", 1 => "5IQ", 2 => "5JQ"],
  label = "Revenus non commerciaux professionnels imposables (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("abnc_impo", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QC", 1 => "5RC", 2 => "5SC"],
  label = "Revenus non commerciaux professionnels imposables (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
))

@register_variable(VariableDefinition("abnc_defi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QE", 1 => "5RE", 2 => "5SE"],
  label = "Déficits non commerciaux professionnels (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
))

@register_variable(VariableDefinition("nbnc_impo", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QI", 1 => "5RI", 2 => "5SI"],
  label = "Revenus non commerciaux professionnels imposables (régime de la déclaration controlée, revenus ne bénéficiant pas de l'abattement association agrée)",
))

@register_variable(VariableDefinition("nbnc_defi", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QK", 1 => "5RK", 2 => "5SK"],
  label = "Déficits non commerciaux professionnels (régime de la déclaration controlée, revenus ne bénéficiant pas de l'abattement association agrée)",
))

@register_variable(VariableDefinition("mbnc_mvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KZ", 1 => "5LZ", 2 => "5MZ"],
  label = "Moins-values non commerciales professionnelles nettes à court terme (régime déclaratif spécial ou micro BNC)",
  start_date = Date(2012, 1, 1),
))

@register_variable(VariableDefinition("frag_pvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HW", 1 => "5IW", 2 => "5JW"],
  label = "Plus-values agricoles  à court terme (régime du forfait)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("mbic_pvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KX", 1 => "5LX", 2 => "5MX"],
  label = "Plus-values industrielles et commerciales professionnels imposables: plus-values nettes à court terme (régime micro entreprise)",
))

@register_variable(VariableDefinition("macc_pvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NX", 1 => "5OX", 2 => "5PX"],
  label = "Plus-values industrielles et commerciales non professionnelles imposables: plus-values nettes à court terme (régime micro entreprise)",
))

@register_variable(VariableDefinition("mbnc_pvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HV", 1 => "5IV", 2 => "5JV"],
  label = "Plus-values non commerciales professionnelles imposables et Plus-values nettes à court terme (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("mncn_pvct", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KY", 1 => "5LY", 2 => "5MY"],
  label = "Plus-values non commerciales non professionnelles imposables et plus-values nettes à court terme (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("mbic_mvlt", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KR", 1 => "5LR", 2 => "5MR"],
  label = "Moins-values industrielles et commerciales professionnels à long terme (régime micro entreprise)",
))

@register_variable(VariableDefinition("macc_mvlt", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NR", 1 => "5OR", 2 => "5PR"],
  label = "Moins-values industrielles et commerciales non professionnelles à long terme (régime micro entreprise)",
))

@register_variable(VariableDefinition("mncn_mvlt", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KW", 1 => "5LW", 2 => "5MW"],
  label = "Moins-values non commerciales non professionnelles à long terme (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("mbnc_mvlt", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HS", 1 => "5IS", 2 => "5JS"],
  label = "Moins-values non commerciales professionnelles à long terme (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("frag_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HX", 1 => "5IX", 2 => "5JX"],
  label = "Plus-values agricoles de cession taxables à 16% (régime du forfait)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("arag_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HE", 1 => "5IE", 2 => "5JE"],
  label = "Plus-values agricoles de cession taxables à 16% (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("nrag_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HK", 1 => "5LK", 2 => "5JK"],
  label = "Plus-values agricoles de cession taxables à 16% (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur)",
  stop_date = Date(2006, 12, 31),
))

@register_variable(VariableDefinition("mbic_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KQ", 1 => "5LQ", 2 => "5MQ"],
  label = "Plus-values industrielles et commerciales professionnelles imposables: plus-values de cession taxables à 16% (régime micro entreprise)",
))

@register_variable(VariableDefinition("abic_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KE", 1 => "5LE", 2 => "5ME"],
  label = "Plus-values industrielles et commerciales de cession taxables à 16% avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nbic_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5IK", 1 => "5KK", 2 => "5MK"],
  label = "Revenus non commerciaux non professionnels exonérés sans AA (régime de la déclaration controlée)",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("macc_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NQ", 1 => "5OQ", 2 => "5PQ"],
  label = "Plus-values industrielles et commerciales non professionnelles imposables: plus-values de cession taxables à 16% (régime micro entreprise)",
))

@register_variable(VariableDefinition("aacc_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NE", 1 => "5OE", 2 => "5PE"],
  label = "Plus-values industrielles et commerciales non professionnelles de cession taxables à 16% avec CGA ou viseur (régime du bénéfice réel)",
))

@register_variable(VariableDefinition("nacc_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NK", 1 => "5OK", 2 => "5PK"],
  label = "Locations meublées non professionnelles: Revenus imposables sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("mncn_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KV", 1 => "5LV", 2 => "5MV"],
  label = "Plus-values non commerciales non professionnelles de cession taxables à 16% (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("cncn_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SO", 1 => "5NT", 2 => "5OT"],
  label = "Plus-values non commerciales non professionnelles taxables à 16% avec AA ou viseur (régime de la déclaration controlée)",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("mbnc_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HR", 1 => "5IR", 2 => "5JR"],
  label = "Plus-values non commerciales professionnelles de cession taxables à 16% (régime déclaratif spécial ou micro BNC)",
))

@register_variable(VariableDefinition("abnc_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QD", 1 => "5RD", 2 => "5SD"],
  label = "Plus-values non commerciaux professionnels de cession taxables à 16% (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
))

@register_variable(VariableDefinition("nbnc_pvce", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QJ", 1 => "5RJ", 2 => "5SJ"],
  label = "Déficits industriels et commerciaux: locations meublées sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("frag_fore", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HD", 1 => "5ID", 2 => "5JD"],
  label = "Revenus des exploitants forestiers (régime du forfait)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("arag_sjag", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HZ", 1 => "5IZ", 2 => "5JZ"],
  label = "Abattement pour les jeunes agriculteurs des revenus agricoles sans CGA (régime du bénéfice réel)",
  start_date = Date(2011, 1, 1),
))

@register_variable(VariableDefinition("abic_impm", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HA", 1 => "5IA", 2 => "5JA"],
  label = "Locations meublées imposables avec CGA ou viseur (régime du bénéfice réel pour les revenus industriels et commerciaux professionnels)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("nbic_impm", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KA", 1 => "5LA", 2 => "5MA"],
  label = "Locations meublées imposables sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("abic_defm", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QA", 1 => "5RA", 2 => "5SA"],
  label = "Déficits de locations meubléesavec CGA ou viseur (régime du bénéfice réel pour les revenus industriels et commerciaux professionnels)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("alnp_imps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NA", 1 => "5OA", 2 => "5PA"],
  label = "Locations meublées non professionnelles imposables avec CGA ou viseur (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("alnp_defs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NY", 1 => "5OY", 2 => "5PY"],
  label = "Déficits de locations meublées non professionnelles avec CGA ou viseur (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("nlnp_defs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NZ", 1 => "5OZ", 2 => "5PZ"],
  label = "Déficits de locations meublées non professionnelles imposables sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
))

@register_variable(VariableDefinition("cbnc_assc", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QM", 1 => "5RM"],
  label = "Agents généraux d'assurances : indemnités de cessation d'activité (revenus non commerciaux professionnels, régime de la déclaration contrôlée)",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("abnc_proc", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TF", 1 => "5UF", 2 => "5VF"],
  label = "Honoraires de prospection commerciale exonérés avec CGA ou viseur (revenus non commerciaux professionnels, régime de la déclaration contrôlée)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("nbnc_proc", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TI", 1 => "5UI", 2 => "5VI"],
  label = "Honoraires de prospection commerciale exonérés sans CGA (revenus non commerciaux professionnels, régime de la déclaration contrôlée)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("mncn_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TH", 1 => "5UH", 2 => "5VH"],
  label = "Revenus nets exonérés non commerciaux non professionnels (régime déclaratif spécial ou micro BNC)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("cncn_exon", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HK", 1 => "5JK", 2 => "5LK"],
  label = "Revenus nets exonérés non commerciaux non professionnels (régime de la déclaration contrôlée)",
  start_date = Date(2008, 1, 1),
))

@register_variable(VariableDefinition("cncn_aimp", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5JG", 1 => "5RF", 2 => "5SF"],
  label = "Revenus imposables non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("cncn_adef", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5JJ", 1 => "5RG", 2 => "5SG"],
  label = "Déficits non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2007, 1, 1),
))

@register_variable(VariableDefinition("cncn_info", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TC", 1 => "5UC", 2 => "5VC"],
  label = "Inventeurs et auteurs de logiciels : produits taxables à 16%, revenus non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2009, 1, 1),
))

@register_variable(VariableDefinition("cncn_jcre", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SV", 1 => "5SW", 2 => "5SX"],
  label = "Jeunes créateurs : abattement de 50%, revenus non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("revimpres", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HY", 1 => "5IY", 2 => "5JY"],
  label = "Revenus nets à imposer aux prélèvements sociaux",
))

@register_variable(VariableDefinition("pveximpres", individu, Int32,
  cerfa_field = [0 => "5HG", 1 => "5IG"],
  label = "Plus-values à long terme exonérées en cas de départ à la retraite à imposer aux prélèvements sociaux",
  start_date = Date(2006, 1, 1),
))

@register_variable(VariableDefinition("pvtaimpres", individu, Int32,
  cerfa_field = [0 => "5HZ", 1 => "5IZ", 2 => "5JZ"],
  label = "Plus-values à long terme taxables à 16% à la retraite à imposer aux prélèvements sociaux",
  stop_date = Date(2009, 12, 31),
))

@register_variable(VariableDefinition("f6ps", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "6PS", 1 => "6PT", 2 => "6PU"],
  label = "Plafond de déduction épargne retraite (plafond calculé sur les revenus perçus en n-1)",
))

@register_variable(VariableDefinition("f6rs", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "6RS", 1 => "6RT", 2 => "6RU"],
  label = "Cotisations d'épargne retraite versées au titre d'un PERP, PREFON, COREM et C.G.O.S",
))

@register_variable(VariableDefinition("f6ss", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "6SS", 1 => "6ST", 2 => "6SU"],
  label = "Rachat de cotisations PERP, PREFON, COREM et C.G.O.S",
))

@register_variable(VariableDefinition("f7ac", individu, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "7AC", 1 => "7AE", 2 => "7AG"],
  label = "Cotisations syndicales des salariées et pensionnés",
  start_date = Date(2013, 1, 1),
))

@register_variable(VariableDefinition("allegement_fillon_mode_recouvrement", individu, Int16,
  label = "Mode de recouvrement des allègements Fillon",
  values = [
    0 => "fin_d_annee",
    1 => "anticipe_regularisation_fin_de_periode",
    2 => "progressif",
  ],
))

@register_variable(VariableDefinition("contrat_de_travail", individu, Int16,
  label = "Type contrat de travail, de forfait ou de convention de rémunération des heures travaillées",
  values = [
    0 => "temps_plein",
    1 => "temps_partiel",
    2 => "forfait_heures_annee",
    3 => "forfait_jours_annee",
  ],
))

@register_variable(VariableDefinition("contrat_de_travail_arrivee", individu, Date,
  cell_default = Date(1870, 1, 1),
  cell_format = "date",
  label = "Date d'arrivée dans l'entreprise",
))

@register_variable(VariableDefinition("contrat_de_travail_depart", individu, Date,
  cell_default = Date(2099, 12, 31),
  cell_format = "date",
  label = "Date de départ de l'entreprise",
))

@register_variable(VariableDefinition("contrat_de_travail_duree", individu, Int16,
  label = "Date de départ de l'entreprise",
  values = [
    0 => "cdi",
    1 => "cdd",
  ],
))

@register_variable(VariableDefinition("assujettie_taxe_salaires", individu, Bool,
  label = "Entreprise assujettie à la taxe sur les salaires",
))

@register_variable(VariableDefinition("avantages_en_nature_valeur_reelle", individu, Bool,
  label = "Avantages en nature (Valeur réelle)",
))

@register_variable(VariableDefinition("base_remboursement_transport", individu, Bool,
  label = "Base pour le calcul du remboursement des frais de transport",
))

@register_variable(VariableDefinition("effectif_entreprise", individu, Int32,
  label = "Effectif de l'entreprise",
))

@register_variable(VariableDefinition("localisation_entreprise", individu, UTF8String,
  label = "Localisation entreprise",
))

@register_variable(VariableDefinition("nombre_tickets_restaurant", individu, Int32,
  label = "Nombre de tickets restaurant",
))

@register_variable(VariableDefinition("ratio_alternants", individu, Float32,
  label = "Ratio d'alternants dans l'effectif moyen",
))

@register_variable(VariableDefinition("prevoyance_obligatoire_cadre_taux", individu, Float32,
  cell_default = 0.015,
  label = "Taux de cotisation employeur pour la prévoyance obligatoire des cadres",
))

@register_variable(VariableDefinition("primes_salaires", individu, Float32,
  label = "Indemnités, primes et avantages en argent",
))

@register_variable(VariableDefinition("prise_en_charge_employeur_prevoyance_complementaire", individu, Float32,
  label = "Part salariale des cotisations de prévoyance complémentaire prise en charge par l'employeur",
))

@register_variable(VariableDefinition("prise_en_charge_employeur_retraite_complementaire", individu, Float32,
  label = "Part salariale des cotisations de retraite complémentaire prise en charge par l'employeur",
))

@register_variable(VariableDefinition("prise_en_charge_employeur_retraite_supplementaire", individu, Float32,
  label = "Part salariale des cotisations de retraite supplémentaire prise en charge par l'employeur",
))

@register_variable(VariableDefinition("redevable_taxe_apprentissage", individu, Bool,
  cell_default = true,
  label = "Entreprise redevable de la taxe d'apprentissage",
))

@register_variable(VariableDefinition("salarie_au_forfait", individu, Bool,
  label = "Salarié au forfait",
))

@register_variable(VariableDefinition("salaire_de_base", individu, Float32,
  label = "Salaire de base",
))

@register_variable(VariableDefinition("taux_participation_ticket_restaurant", individu, Float32,
  cell_default = 0.5,
  label = "Taux de participation de l'employeur au ticket restaurant",
))

@register_variable(VariableDefinition("type_sal", individu, Int16,
  label = "Catégorie de salarié",
  values = [
    0 => "prive_non_cadre",
    1 => "prive_cadre",
    2 => "public_titulaire_etat",
    3 => "public_titulaire_militaire",
    4 => "public_titulaire_territoriale",
    5 => "public_titulaire_hospitaliere",
    6 => "public_non_titulaire",
  ],
))

@register_variable(VariableDefinition("volume_heures_non_remunerees", individu, Int32,
  label = "Volume des heures non rémunérées (convenance personnelle hors contrat/forfait)",
))

@register_variable(VariableDefinition("volume_heures_remunerees", individu, Int32,
  label = "Volume des heures ou jours rémunérées",
))

@register_variable(VariableDefinition("volume_jours_ijss", individu, Int32,
  label = "Volume des jours pour lesquels sont versés une idemnité journalière par la sécurité sociale",
))

@register_variable(VariableDefinition("valeur_ticket_restaurant", individu, Float32,
  label = "Valeur du ticket restaurant",
))

@register_variable(VariableDefinition("tns_chiffre_affaires_micro_entreprise", individu, Float32,
  label = "Chiffre d'affaires de micro-entreprise ou assimilée",
  permanent = true,
))

@register_variable(VariableDefinition("tns_autres_revenus", individu, Float32,
  label = "Autres revenus non salariés",
  permanent = true,
))

@register_variable(VariableDefinition("tns_type_structure", individu, Int16,
  cell_default = 1,
  label = "Type de structure associée au travailleur non salarié",
  permanent = true,
  values = [
    0 => "auto_entrepreneur",
    1 => "micro_entreprise",
  ],
))

@register_variable(VariableDefinition("tns_type_activite", individu, Int16,
  label = "Valeur locative des biens immobiliés possédés et non loués",
  permanent = true,
  values = [
    0 => "achat_revente",
    1 => "bic",
    2 => "bnc",
  ],
))

@register_variable(VariableDefinition("scolarite", individu, Int16,
  label = "Scolarité de l'enfant : collège, lycée...",
  values = [
    0 => "Inconnue",
    1 => "Collège",
    2 => "Lycée",
  ],
))

@register_variable(VariableDefinition("nom_famille", famille, UTF8String,
  label = "Nom",
  permanent = true,
))

@register_variable(VariableDefinition("inactif", famille, Bool,
  label = "Parent inactif (PAJE-CLCA)",
))

@register_variable(VariableDefinition("partiel1", famille, Bool,
  label = "Parent actif à moins de 50% (PAJE-CLCA)",
))

@register_variable(VariableDefinition("partiel2", famille, Bool,
  label = "Parent actif entre 50% et 80% (PAJE-CLCA)",
))

@register_variable(VariableDefinition("opt_colca", famille, Bool,
  label = "Opte pour le COLCA",
))

@register_variable(VariableDefinition("empl_dir", famille, Bool,
  label = "Emploi direct (CLCMG)",
))

@register_variable(VariableDefinition("ass_mat", famille, Bool,
  label = "Assistante maternelle (CLCMG)",
))

@register_variable(VariableDefinition("gar_dom", famille, Bool,
  label = "Garde à domicile (CLCMG)",
))

@register_variable(VariableDefinition("proprietaire_proche_famille", famille, Bool,
  label = "Le propriétaire du logement a un lien de parenté avec la personne de référence ou son conjoint",
))

@register_variable(VariableDefinition("nom_menage", menage, UTF8String,
  label = "Nom",
  permanent = true,
))

@register_variable(VariableDefinition("zthabm", menage, Int32))

@register_variable(VariableDefinition("loyer", menage, Int32,
  cell_format = "monetary",
  label = "Loyer mensuel",
))

@register_variable(VariableDefinition("so", menage, Int16,
  label = "Statut d'occupation",
  values = [
    0 => "Non renseigné",
    1 => "Accédant à la propriété",
    2 => "Propriétaire (non accédant) du logement",
    3 => "Locataire d'un logement HLM",
    4 => "Locataire ou sous-locataire d'un logement loué vide non-HLM",
    5 => "Locataire ou sous-locataire d'un logement loué meublé ou d'une chambre d'hôtel",
    6 => "Logé gratuitement par des parents, des amis ou l'employeur",
  ],
))

@register_variable(VariableDefinition("depcom", menage, UTF8String,
  label = "Code INSEE (depcom) du lieu de résidence",
))
