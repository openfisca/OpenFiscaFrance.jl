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


@define_variable(permanent_default_value, nom_foyer_fiscal, foyer_fiscal_definition, UTF8String,
  input_variable = true,
  label = "Nom",
  permanent = true,
)

@define_variable(requested_period_default_value, b1ab, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Valeur de la résidence principale avant abattement",
)

@define_variable(requested_period_default_value, b1ac, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Valeur des autres immeubles avant abattement",
)

@define_variable(requested_period_default_value, b1bc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Immeubles non bâtis : bois, fôrets et parts de groupements forestiers",
)

@define_variable(requested_period_default_value, b1be, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Immeubles non bâtis : biens ruraux loués à long termes",
)

@define_variable(requested_period_default_value, b1bh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Immeubles non bâtis : parts de groupements fonciers agricoles et de groupements agricoles fonciers",
)

@define_variable(requested_period_default_value, b1bk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Immeubles non bâtis : autres biens",
)

@define_variable(requested_period_default_value, b1cl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Parts et actions détenues par les salariés et mandataires sociaux",
)

@define_variable(requested_period_default_value, b1cb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Parts et actions de sociétés avec engagement de conservation de 6 ans minimum",
)

@define_variable(requested_period_default_value, b1cd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Droits sociaux de sociétés dans lesquelles vous exercez une fonction ou une activité",
)

@define_variable(requested_period_default_value, b1ce, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Autres valeurs mobilières",
)

@define_variable(requested_period_default_value, b1cf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Liquidités",
)

@define_variable(requested_period_default_value, b1cg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Autres biens meubles",
)

@define_variable(requested_period_default_value, b1co, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Autres biens meubles : contrats d'assurance-vie",
)

@define_variable(requested_period_default_value, b2gh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Total du passif et autres déductions",
)

@define_variable(requested_period_default_value, b2mt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour investissements directs dans une société",
)

@define_variable(requested_period_default_value, b2ne, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour investissements directs dans une société",
)

@define_variable(requested_period_default_value, b2mv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour investissements par sociétés interposées, holdings",
)

@define_variable(requested_period_default_value, b2nf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour investissements par sociétés interposées, holdings",
)

@define_variable(requested_period_default_value, b2mx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour investissements par le biais de FIP",
)

@define_variable(requested_period_default_value, b2na, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour investissements par le biais de FCPI ou FCPR",
)

@define_variable(requested_period_default_value, b2nc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Réductions pour dons à certains organismes d'intérêt général",
)

@define_variable(requested_period_default_value, b4rs, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Montant de l'impôt acquitté hors de France",
)

@define_variable(requested_period_default_value, rev_or, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
)

@define_variable(requested_period_default_value, rev_exo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
)

@define_variable(requested_period_default_value, tax_fonc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Taxe foncière",
)

@define_variable(requested_period_default_value, restit_imp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
)

@define_variable(requested_period_default_value, f1aw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "1AW",
  input_variable = true,
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : Moins de 50 ans",
)

@define_variable(requested_period_default_value, f1bw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "1BW",
  input_variable = true,
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : De 50 à 59 ans",
)

@define_variable(requested_period_default_value, f1cw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "1CW",
  input_variable = true,
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : De 60 à 69 ans",
)

@define_variable(requested_period_default_value, f1dw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "1DW",
  input_variable = true,
  label = "Rentes viagères à titre onéreux perçues par le foyer par âge d'entrée en jouissance : A partir de 70 ans",
)

@define_variable(requested_period_default_value, jour_xyz, foyer_fiscal_definition, Int32,
  cell_default = 360,
  input_variable = true,
  label = "Jours décomptés au titre de cette déclaration",
)

@define_variable(requested_period_last_value, nbN, foyer_fiscal_definition, Int32,
  cerfa_field = "N",
  input_variable = true,
  label = "Nombre d'enfants mariés/pacsés et d'enfants non mariés chargés de famille",
)

@define_variable(requested_period_last_value, nbR, foyer_fiscal_definition, Int32,
  cerfa_field = "R",
  input_variable = true,
  label = "Nombre de titulaires (autres que les enfants) de la carte invalidité d'au moins 80 %",
)

@define_variable(requested_period_last_value, caseE, foyer_fiscal_definition, Bool,
  cerfa_field = "E",
  input_variable = true,
  label = "Situation pouvant donner droit à une demi-part supplémentaire : vous vivez seul au 1er janvier de l'année de perception des revenus et vous avez élevé un enfant pendant moins de 5 ans durant la période où vous viviez seul",
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, caseF, foyer_fiscal_definition, Bool,
  cerfa_field = "F",
  input_variable = true,
  label = "Situation pouvant donner droit à une demi-part supplémentaire : conjoint titulaire d'une pension ou d'une carte d'invalidité (vivant ou décédé l'année de perception des revenus)",
)

@define_variable(requested_period_last_value, caseG, foyer_fiscal_definition, Bool,
  cerfa_field = "G",
  input_variable = true,
  label = "Titulaire d'une pension de veuve de guerre",
)

@define_variable(requested_period_last_value, caseH, foyer_fiscal_definition, Int32,
  cerfa_field = "H",
  input_variable = true,
  label = "Année de naissance des enfants à charge en garde alternée",
)

@define_variable(requested_period_last_value, caseK, foyer_fiscal_definition, Bool,
  cerfa_field = "K",
  input_variable = true,
  label = "Situation pouvant donner droit à une demi-part supplémentaire: vous avez eu un enfant décédé après l’âge de 16 ans ou par suite de faits de guerre",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_last_value, caseL, foyer_fiscal_definition, Bool,
  cerfa_field = "L",
  input_variable = true,
  label = "Situation pouvant donner droit à une demi-part supplémentaire: vous vivez seul au 1er janvier de l'année de perception des revenus et vous avez élevé un enfant pendant au moins 5 ans durant la période où vous viviez seul",
)

@define_variable(requested_period_last_value, caseN, foyer_fiscal_definition, Bool,
  cerfa_field = "N",
  input_variable = true,
  label = "Vous ne viviez pas seul au 1er janvier de l'année de perception des revenus",
)

@define_variable(requested_period_last_value, caseP, foyer_fiscal_definition, Bool,
  cerfa_field = "P",
  input_variable = true,
  label = "Titulaire d'une pension pour une invalidité d'au moins 40 % ou d'une carte d'invalidité d'au moins 80%",
)

@define_variable(requested_period_last_value, caseS, foyer_fiscal_definition, Bool,
  cerfa_field = "S",
  input_variable = true,
  label = "Vous êtes mariés/pacsés et l'un des deux déclarants âgé de plus de 75 ans est titulaire de la carte du combattant ou d'une pension militaire d'invalidité ou de victime de guerre",
)

@define_variable(requested_period_last_value, caseT, foyer_fiscal_definition, Bool,
  cerfa_field = "T",
  input_variable = true,
  label = "Vous êtes parent isolé au 1er janvier de l'année de perception des revenus",
)

@define_variable(requested_period_last_value, caseW, foyer_fiscal_definition, Bool,
  cerfa_field = "W",
  input_variable = true,
  label = "Vous ou votre conjoint (même s'il est décédé), âgés de plus de 75 ans, êtes titulaire de la carte du combattant ou d'une pension militaire d'invalidité ou de victime de guerre",
)

@define_variable(requested_period_default_value, rfr_n_1, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Revenu fiscal de référence année n - 1",
)

@define_variable(requested_period_default_value, rfr_n_2, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Revenu fiscal de référence année n - 2",
)

@define_variable(requested_period_last_value, nbptr_n_2, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Nombre de parts année n - 2",
)

@define_variable(requested_period_default_value, f2da, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2DA",
  input_variable = true,
  label = "Revenus des actions et parts soumis au prélèvement libératoire de 21 %",
  start_date = Date(2008, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f2dh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2DH",
  input_variable = true,
  label = "Produits d’assurance-vie et de capitalisation soumis au prélèvement libératoire de 7.5 %",
)

@define_variable(requested_period_default_value, f2ee, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2EE",
  input_variable = true,
  label = "Autres produits de placement soumis aux prélèvements libératoires",
)

@define_variable(requested_period_default_value, f2dc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2DC",
  input_variable = true,
  label = "Revenus des actions et parts donnant droit à abattement",
)

@define_variable(requested_period_default_value, f2fu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2FU",
  input_variable = true,
  label = "Revenus imposables des titres non côtés détenus dans le PEA et distributions perçues via votre entreprise donnant droit à abattement",
)

@define_variable(requested_period_default_value, f2ch, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2CH",
  input_variable = true,
  label = "Produits des contrats d'assurance-vie et de capitalisation d'une durée d'au moins 6 ou 8 ans donnant droit à abattement",
)

@define_variable(requested_period_default_value, f2ts, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2TS",
  input_variable = true,
  label = "Revenus de valeurs mobilières, produits des contrats d'assurance-vie d'une durée inférieure à 8 ans et distributions (n'ouvrant pas droit à abattement)",
)

@define_variable(requested_period_default_value, f2go, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2GO",
  input_variable = true,
  label = "Autres revenus distribués et revenus des structures soumises hors de France à un régime fiscal privilégié (n'ouvrant pas droit à abattement)",
)

@define_variable(requested_period_default_value, f2tr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2TR",
  input_variable = true,
  label = "Produits de placements à revenu fixe, intérêts et autres revenus assimilés (n'ouvrant pas droit à abattement)",
)

@define_variable(requested_period_default_value, f2cg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2CG",
  input_variable = true,
  label = "Revenus des lignes 2DC, 2CH, 2TS, 2TR déjà soumis au prélèvement sociaux sans CSG déductible",
)

@define_variable(requested_period_default_value, f2bh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2BH",
  input_variable = true,
  label = "Revenus des lignes 2DC, 2CH, 2TS, 2TR déjà soumis au prélèvement sociaux avec CSG déductible",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f2ca, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2CA",
  input_variable = true,
  label = "Frais et charges déductibles",
)

@define_variable(requested_period_default_value, f2ck, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2CK",
  input_variable = true,
  label = "Crédit d'impôt égal au prélèvement forfaitaire déjà versé",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f2ab, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AB",
  input_variable = true,
  label = "Crédits d'impôt sur valeurs étrangères",
)

@define_variable(requested_period_default_value, f2bg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2BG",
  input_variable = true,
  label = "Crédits d'impôt 'directive épargne' et autres crédits d'impôt restituables",
)

@define_variable(requested_period_default_value, f2aa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AA",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f2al, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AL",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f2am, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AM",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f2an, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AN",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f2aq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AQ",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f2ar, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2AR",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f2as, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Déficits des années antérieures non encore déduits: année 2012",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f2dm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2DM",
  input_variable = true,
  label = "Impatriés: revenus de capitaux mobiliers perçus à l'étranger, abattement de 50 %",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f2gr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "2GR",
  input_variable = true,
  label = "Revenus distribués dans le PEA (pour le calcul du crédit d'impôt de 50 %)",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f3si, foyer_fiscal_definition, Int32,
  input_variable = true,
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f3sa, foyer_fiscal_definition, Int32,
  input_variable = true,
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f3sf, foyer_fiscal_definition, Int32,
  input_variable = true,
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f3sd, foyer_fiscal_definition, Int32,
  input_variable = true,
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f3vc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VC",
  input_variable = true,
  label = "Produits et plus-values exonérés provenant de structure de capital-risque",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f3ve, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VE",
  input_variable = true,
  label = "Plus-values réalisées par les non-résidents pour lesquelles vous demandez le remboursement de l'excédent du prélèvement de 45 %",
)

@define_variable(requested_period_default_value, f3vl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VL",
  input_variable = true,
  label = "Distributions par des sociétés de capital-risque taxables à 19 %",
)

@define_variable(requested_period_default_value, f3vm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VM",
  input_variable = true,
  label = "Clôture du PEA avant l'expiration de la 2e année: gains taxables à 22.5 %",
)

@define_variable(requested_period_default_value, f3vt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VT",
  input_variable = true,
  label = "Clôture du PEA  entre la 2e et la 5e année: gains taxables à 19 %",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f3vg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VG",
  input_variable = true,
  label = "Plus-value imposable sur gains de cession de valeurs mobilières, de droits sociaux et gains assimilés",
)

@define_variable(requested_period_default_value, f3vh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VH",
  input_variable = true,
  label = "Perte de l'année de perception des revenus",
)

@define_variable(requested_period_default_value, f3vu, foyer_fiscal_definition, Int32,
  input_variable = true,
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f3vv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VV",
  input_variable = true,
  label = "Plus-values réalisées par les non-résidents: montant du prélèvement de 45 % déjà versé",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f3vv_end_2010, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VV",
  input_variable = true,
  label = "Pertes ouvrant droit au crédit d’impôt de 19 % ",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f3vz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "3VZ",
  input_variable = true,
  label = "Plus-values imposables sur cessions d’immeubles ou de biens meubles",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f4ba, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4BA",
  input_variable = true,
  label = "Revenus fonciers imposables",
)

@define_variable(requested_period_default_value, f4bb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4BB",
  input_variable = true,
  label = "Déficit imputable sur les revenus fonciers",
)

@define_variable(requested_period_default_value, f4bc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4BC",
  input_variable = true,
  label = "Déficit imputable sur le revenu global",
)

@define_variable(requested_period_default_value, f4bd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4BD",
  input_variable = true,
  label = "Déficits antérieurs non encore imputés",
)

@define_variable(requested_period_default_value, f4be, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4BE",
  input_variable = true,
  label = "Micro foncier: recettes brutes sans abattement",
)

@define_variable(requested_period_default_value, f4bf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4BF",
  input_variable = true,
  label = "Primes d'assurance pour loyers impayés des locations conventionnées",
)

@define_variable(requested_period_default_value, f4bl, foyer_fiscal_definition, Int32,
  input_variable = true,
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, mbic_mvct, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5HU",
  input_variable = true,
  label = "Moins-values industrielles et commerciales nettes à court terme du foyer (régime micro entreprise)",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, macc_mvct, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5IU",
  input_variable = true,
  label = "Moins-values industrielles et commerciales non professionnelles nettes à court terme du foyer (régime micro entreprise)",
)

@define_variable(requested_period_default_value, mncn_mvct, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "JU",
  input_variable = true,
  label = "Moins-values non commerciales non professionnelles nettes à court terme du foyer (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, f5qf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5QF",
  input_variable = true,
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-6)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5qg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5QG",
  input_variable = true,
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-5)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5qn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5QN",
  input_variable = true,
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-4)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5qo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5QO",
  input_variable = true,
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-3)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5qp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5QP",
  input_variable = true,
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-2)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5qq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5QQ",
  input_variable = true,
  label = "Déficits des revenus agricoles des années antérieures non encore déduits (n-1)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5ga, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GA",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-10)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GB",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-9)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GC",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-8)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GD",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-7)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5ge, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GE",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-6)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GF",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-5)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GG",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-4)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GH",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-3)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GI",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-2)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5gj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5GJ",
  input_variable = true,
  label = "Déficits des revenus de locations meublées non professionnelles années antérieures non encore déduits (n-1)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5rn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5RN",
  input_variable = true,
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-6)",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f5ro, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5RO",
  input_variable = true,
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-5)",
)

@define_variable(requested_period_default_value, f5rp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5RP",
  input_variable = true,
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-4)",
)

@define_variable(requested_period_default_value, f5rq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5RQ",
  input_variable = true,
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-3)",
)

@define_variable(requested_period_default_value, f5rr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5RR",
  input_variable = true,
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-2)",
)

@define_variable(requested_period_default_value, f5rw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5RW",
  input_variable = true,
  label = "Déficits des revenus industriels et commerciaux non professionnelles années antérieures non encore déduits (n-1)",
)

@define_variable(requested_period_default_value, f5ht, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5HT",
  input_variable = true,
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-6)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5it, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5IT",
  input_variable = true,
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-5)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5jt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5JT",
  input_variable = true,
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-4)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5kt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5KT",
  input_variable = true,
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-3)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5lt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5LT",
  input_variable = true,
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-2)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f5mt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "5MT",
  input_variable = true,
  label = "Déficits des revenus non commerciaux non professionnelles années antérieures non encore déduits (n-1)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f6de, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6DE",
  input_variable = true,
  label = "CSG déductible calculée sur les revenus du patrimoine",
)

@define_variable(requested_period_default_value, f6gi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6GI",
  input_variable = true,
  label = "Pensions alimentaires versées à des enfants majeurs (décision de justice définitive avant 2006): 1er enfant",
)

@define_variable(requested_period_default_value, f6gj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6GJ",
  input_variable = true,
  label = "Pensions alimentaires versées à des enfants majeurs (décision de justice définitive avant 2006): 2eme enfant",
)

@define_variable(requested_period_default_value, f6el, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6EL",
  input_variable = true,
  label = "Autres pensions alimentaires versées à des enfants majeurs: 1er enfant",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f6em, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6EM",
  input_variable = true,
  label = "Autres pensions alimentaires versées à des enfants majeurs: 2eme enfant",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f6gp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6GP",
  input_variable = true,
  label = "Autres pensions alimentaires versées décision de justice définitive avant 2006 (mineurs, ascendants)",
)

@define_variable(requested_period_default_value, f6gu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6GU",
  input_variable = true,
  label = "Autres pensions alimentaires versées (mineurs, ascendants)",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f6eu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6EU",
  input_variable = true,
  label = "Frais d'accueil de personnes de plus de 75 ans dans le besoin",
)

@define_variable(requested_period_last_value, f6ev, foyer_fiscal_definition, Int32,
  cerfa_field = "6EV",
  input_variable = true,
  label = "Nombre de personnes de plus de 75 ans dans le besoin accueillies sous votre toit",
)

@define_variable(requested_period_default_value, f6dd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6DD",
  input_variable = true,
  label = "Déductions diverses",
)

@define_variable(requested_period_default_value, f6aa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6AA",
  input_variable = true,
  label = "Souscriptions en faveur du cinéma ou de l’audiovisuel",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2006, 12, 31),
)

@define_variable(requested_period_default_value, f6cc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "CC",
  input_variable = true,
  label = "Souscriptions au capital des SOFIPÊCHE",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2005, 12, 31),
)

@define_variable(requested_period_default_value, f6eh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "EH",
  input_variable = true,
  start_date = Date(2005, 1, 1),
  stop_date = Date(2005, 12, 31),
)

@define_variable(requested_period_default_value, f6da, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "DA",
  input_variable = true,
  label = "Pertes en capital consécutives à la souscription au capital de sociétés nouvelles ou de sociétés en difficulté",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2005, 12, 31),
)

@define_variable(requested_period_default_value, f6cb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6CB",
  input_variable = true,
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires (dépenses réalisées au cours de l'année de perception des revenus)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f6hj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6HJ",
  input_variable = true,
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f6hk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6HK",
  input_variable = true,
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f6hl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6HL",
  input_variable = true,
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f6hm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6HM",
  input_variable = true,
  label = "Dépenses de grosses réparations effectuées par les nus-propriétaires: report des dépenses des années antérieures",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f6gh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6GH",
  input_variable = true,
  label = "Sommes à ajouter au revenu imposable",
)

@define_variable(requested_period_default_value, f6fa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6FA",
  input_variable = true,
  label = "Deficits globaux des années antérieures non encore déduits les années précédentes: année de perception des revenus -6",
)

@define_variable(requested_period_default_value, f6fb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6FB",
  input_variable = true,
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -5",
)

@define_variable(requested_period_default_value, f6fc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6FC",
  input_variable = true,
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -4",
)

@define_variable(requested_period_default_value, f6fd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6FD",
  input_variable = true,
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -3",
)

@define_variable(requested_period_default_value, f6fe, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6FE",
  input_variable = true,
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -2",
)

@define_variable(requested_period_default_value, f6fl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "6FL",
  input_variable = true,
  label = "Deficits globaux des années antérieures non encore déduits: année de perception des revenus -1",
)

@define_variable(requested_period_default_value, f7ud, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UD",
  input_variable = true,
  label = "Dons à des organismes d'aide aux personnes en difficulté",
)

@define_variable(requested_period_default_value, f7uf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UF",
  input_variable = true,
  label = "Dons à d'autres oeuvres d'utilité publique ou fiscalement assimilables aux oeuvres d'intérêt général",
)

@define_variable(requested_period_default_value, f7xs, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XS",
  input_variable = true,
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -5",
)

@define_variable(requested_period_default_value, f7xt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XT",
  input_variable = true,
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -4",
)

@define_variable(requested_period_default_value, f7xu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XU",
  input_variable = true,
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -3",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f7xw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XW",
  input_variable = true,
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -2",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f7xy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XY",
  input_variable = true,
  label = "Report des années antérieures des dons (report des réductions et crédits d'impôt): année de perception des revenus -1",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f7va, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VA",
  input_variable = true,
  label = "Dons à des organismes d'aides aux personnes établis dans un Etat européen",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7vc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VC",
  input_variable = true,
  label = "Dons à des autres organismes établis dans un Etat européen",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7db, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7DB",
  input_variable = true,
  label = "Sommes versées pour l'emploi d'un salarié à domicile par les personnes ayant excercé une activité professionnelle ou ayant été demandeur d'emploi l'année de perception des revenus déclarés",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f7df, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7DF",
  input_variable = true,
  label = "Sommes versées pour l'emploi d'un salarié à domicile par les personnes retraités, ou inactives l'année de perception des revenus déclarés",
)

@define_variable(requested_period_last_value, f7dq, foyer_fiscal_definition, Bool,
  cerfa_field = "7DQ",
  input_variable = true,
  label = "Emploi direct pour la première fois d'un salarié à domicile durant l'année de perception des revenus déclarés",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_last_value, f7dg, foyer_fiscal_definition, Bool,
  cerfa_field = "7DG",
  input_variable = true,
  label = "Vous, votre conjoint ou une personne à votre charge à une carte d'invalidité d'au moins 80 % l'année de perception des revenus déclarés",
)

@define_variable(requested_period_default_value, f7dl, foyer_fiscal_definition, Int32,
  cerfa_field = "7DL",
  input_variable = true,
  label = "Nombre d'ascendants bénéficiaires de l'APA, âgés de plus de 65 ans, pour lesquels des dépenses ont été engagées l'année de perception des revenus déclarés",
)

@define_variable(requested_period_default_value, f7uh_2007, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UH",
  input_variable = true,
  label = "Intérêts payés la première année de remboursement du prêt pour l'habitation principale",
  start_date = Date(2007, 1, 1),
  stop_date = Date(2007, 12, 31),
)

@define_variable(requested_period_default_value, f7vy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VY",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements anciens (acquis entre le 06/05/2007 et le 30/09/2011) ou neufs (acquis entre le 06/05/2007 et le 31/12/2009): Première annuité",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f7vz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VZ",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements anciens (acquis entre le 06/05/2007 et le 30/09/2011) ou neufs (acquis entre le 06/05/2007 et le 31/12/2009): annuités suivantes",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f7vx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VX",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs BBC acquis ou construits du 01/01/2009 au 30/09/2011",
)

@define_variable(requested_period_default_value, f7vw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VW",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2010 au 31/12/2010: première annuité",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7vv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VV",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2010 au 31/12/2010: annuités suivantes",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7vu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VU",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2011 au 30/09/2011: première annuité",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7vt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7VT",
  input_variable = true,
  label = "Intérêt des emprunts contractés pour l'acquisition ou la construction de l'habitation principale: logements neufs non-BBC acquis ou construits du 01/01/2011 au 30/09/2011: annuités suivantes",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7cd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CD",
  input_variable = true,
  label = "Dépenses d'accueil dans un établissement pour personnes âgées dépendantes: 1ere personne",
)

@define_variable(requested_period_default_value, f7ce, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CE",
  input_variable = true,
  label = "Dépenses d'accueil dans un établissement pour personnes âgées dépendantes: 2éme personne",
)

@define_variable(requested_period_default_value, f7ga, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GA",
  input_variable = true,
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 1er enfant à charge",
)

@define_variable(requested_period_default_value, f7gb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GB",
  input_variable = true,
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 2ème enfant à charge",
)

@define_variable(requested_period_default_value, f7gc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GC",
  input_variable = true,
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 3ème enfant à charge",
)

@define_variable(requested_period_default_value, f7ge, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GE",
  input_variable = true,
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 1er enfant à charge en résidence alternée",
)

@define_variable(requested_period_default_value, f7gf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GF",
  input_variable = true,
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 2ème enfant à charge en résidence alternée",
)

@define_variable(requested_period_default_value, f7gg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GG",
  input_variable = true,
  label = "Frais de garde des enfants de moins de 6 ans au 01/01 de l'année de perception des revenus: 3ème enfant à charge en résidence alternée",
)

@define_variable(requested_period_last_value, f7ea, foyer_fiscal_definition, Int32,
  cerfa_field = "7EA",
  input_variable = true,
  label = "Nombre d'enfants à charge poursuivant leurs études au collège",
)

@define_variable(requested_period_last_value, f7eb, foyer_fiscal_definition, Int32,
  cerfa_field = "7EB",
  input_variable = true,
  label = "Nombre d'enfants à charge en résidence alternée poursuivant leurs études au collège",
)

@define_variable(requested_period_last_value, f7ec, foyer_fiscal_definition, Int32,
  cerfa_field = "7EC",
  input_variable = true,
  label = "Nombre d'enfants à charge poursuivant leurs études au lycée",
)

@define_variable(requested_period_last_value, f7ed, foyer_fiscal_definition, Int32,
  cerfa_field = "7ED",
  input_variable = true,
  label = "Nombre d'enfants à charge en résidence alternée poursuivant leurs études au lycée",
)

@define_variable(requested_period_last_value, f7ef, foyer_fiscal_definition, Int32,
  cerfa_field = "7EF",
  input_variable = true,
  label = "Nombre d'enfants à charge poursuivant leurs études dans l'enseignement supérieur",
)

@define_variable(requested_period_last_value, f7eg, foyer_fiscal_definition, Int32,
  cerfa_field = "7EG",
  input_variable = true,
  label = "Nombre d'enfants à charge en résidence alternée poursuivant leurs études dans l'enseignement supérieur",
)

@define_variable(requested_period_default_value, f7td, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TD",
  input_variable = true,
  label = "Intérêts des prêts étudiants versés avant l'année de perception des revenus déclarés",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_last_value, f7vo, foyer_fiscal_definition, Int32,
  cerfa_field = "7VO",
  input_variable = true,
  label = "Nombre d'années de remboursement du prêt étudiant avant l'année de perception des revenus déclarés",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f7uk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UK",
  input_variable = true,
  label = "Intérêts des prêts étudiants versés durant l'année de perception des revenus déclarés",
)

@define_variable(requested_period_default_value, f7gz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GZ",
  input_variable = true,
  label = "Primes de rente survie, contrats d'épargne handicap",
)

@define_variable(requested_period_default_value, f7wm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WM",
  input_variable = true,
  label = "Prestations compensatoires: Capital fixé en substitution de rente",
)

@define_variable(requested_period_default_value, f7wn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WN",
  input_variable = true,
  label = "Prestations compensatoires: Sommes versées l'année de perception des revenus déclarés",
)

@define_variable(requested_period_default_value, f7wo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WO",
  input_variable = true,
  label = "Prestations compensatoires: Sommes totales décidées par jugement l'année de perception des revenus déclarés ou capital reconstitué",
)

@define_variable(requested_period_default_value, f7wp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WP",
  input_variable = true,
  label = "Prestations compensatoires: Report des sommes décidées l'année de perception des revenus -1",
)

@define_variable(requested_period_last_value, f7we, foyer_fiscal_definition, Bool,
  cerfa_field = "7WE",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: éco-prêt à taux zéro avec offre de prêt émise l'année de perception des revenus déclarés",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_last_value, f7wg, foyer_fiscal_definition, Bool,
  cell_format = "monetary",
  cerfa_field = "7WG",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: éco-prêt à taux zéro avec offre de prêt émise l'année de perception des revenus déclarés -1",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7wa, foyer_fiscal_definition, Int32,
  cerfa_field = "7WA",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique des murs avant le 03/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7wb, foyer_fiscal_definition, Int32,
  cerfa_field = "7WB",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique des murs à compter du 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7wc, foyer_fiscal_definition, Int32,
  cerfa_field = "7WC",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique sur plus de la moitié de la surface des murs extérieurs",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ve, foyer_fiscal_definition, Int32,
  cerfa_field = "7VE",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique de la toiture avant le 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7vf, foyer_fiscal_definition, Int32,
  cerfa_field = "7VF",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique de la toiture à compter du 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7vg, foyer_fiscal_definition, Int32,
  cerfa_field = "7VG",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: travaux d'isolation thermique de toute la toiture",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sg, foyer_fiscal_definition, Int32,
  cerfa_field = "7SG",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Matériaux d'isolation thermique des murs (acquisitionn et pose)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sj, foyer_fiscal_definition, Int32,
  cerfa_field = "7SJ",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Matériaux d'isolation thermique des parois vitrées",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sk, foyer_fiscal_definition, Int32,
  cerfa_field = "7SK",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Volets isolants",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sl, foyer_fiscal_definition, Int32,
  cerfa_field = "7SL",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Portes d'entrées donnant sur l'extérieur",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sm, foyer_fiscal_definition, Int32,
  cerfa_field = "7SM",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de production d'électricité utilisant l'énergie radiative du soleil",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sn, foyer_fiscal_definition, Int32,
  cerfa_field = "7SN",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Appareils de chauffage au bois ou autres biomasses remplaçant un appareil équivalent",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7so, foyer_fiscal_definition, Int32,
  cerfa_field = "7SO",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Appareils de chauffage au bois ou autres biomasses ne remplaçant pas un appareil équivalent",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sp, foyer_fiscal_definition, Int32,
  cerfa_field = "7SP",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Pompes à chaleur autres que air/air et autres que géothermiques dont la finalité essentielle est la production de chaleur",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sq, foyer_fiscal_definition, Int32,
  cerfa_field = "7SQ",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Pompes à chaleur géothermiques dont la finalité essentielle est la production de chaleur",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sr, foyer_fiscal_definition, Int32,
  cerfa_field = "7SR",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Pompes à chaleur (autres que air/air) dédiées à la production d'eau chaude sanitaire (chauffe-eaux thermodynamiques)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ss, foyer_fiscal_definition, Int32,
  cerfa_field = "7SS",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de fourniture d'eau chaude sanitaire fonctionnant à l'énergie solaire et dotés de capteurs solaires",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7st, foyer_fiscal_definition, Int32,
  cerfa_field = "7ST",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Autres équipements de production d'énergie utilisant une source d'énergie renouvelable (éolien, hydraulique)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7su, foyer_fiscal_definition, Int32,
  cerfa_field = "7SU",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de récupération et de traitement des eaux pluviales",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sv, foyer_fiscal_definition, Int32,
  cerfa_field = "7SV",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Diagnostic de performance énergétique",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sw, foyer_fiscal_definition, Int32,
  cerfa_field = "7SW",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: Équipements de raccordement à un réseau de chaleur",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_last_value, f7wq, foyer_fiscal_definition, Bool,
  cerfa_field = "7WQ",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolation thermique des parois vitrées du 01/01/2012 au 03/04/2012",
  start_date = Date(2010, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7ws, foyer_fiscal_definition, Bool,
  cerfa_field = "7WS",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolations des parois vitrées à compter du 04/04/2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7wt, foyer_fiscal_definition, Bool,
  cerfa_field = "7WT",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolation thermique des parois vitrées réalisées sur au moins la moitié des fenêtres du logement ",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7wu, foyer_fiscal_definition, Bool,
  cerfa_field = "7WU",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de volets avant 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7wv, foyer_fiscal_definition, Bool,
  cerfa_field = "7WV",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de volets en 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7ww, foyer_fiscal_definition, Bool,
  cerfa_field = "7WW",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de portes avant 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7wx, foyer_fiscal_definition, Bool,
  cerfa_field = "7WX",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: achat de portes en 2012",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7wh, foyer_fiscal_definition, Bool,
  cerfa_field = "7WH",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale (logement achevé depuis plus de 2 ans): bouquet de travaux réalisé pendant l'année de perception des revenus",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_last_value, f7wk, foyer_fiscal_definition, Bool,
  cerfa_field = "7WK",
  input_variable = true,
  label = "Votre habitation principale est une maison individuelle",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_last_value, f7wf, foyer_fiscal_definition, Bool,
  cerfa_field = "7WF",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale: dépenses d'isolation thermique des parois vitrées avant le 01/01/n-1",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7wi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WI",
  input_variable = true,
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans l'habitation principale: Ascenseurs électriques à traction",
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7wj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WJ",
  input_variable = true,
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans l'habitation principale: équipements spécialement conçus pour les personnes âgées ou handicapées",
)

@define_variable(requested_period_default_value, f7wl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WL",
  input_variable = true,
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans l'habitation principale: travaux de prévention des risques technologiques",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7wr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7WR",
  input_variable = true,
  label = "Dépenses en faveur de l'aide aux personnes réalisées dans des habitations données en location : travaux de prévention des risques technologiques",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ur, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UR",
  input_variable = true,
  label = "Investissements réalisés en n-1, total réduction d’impôt",
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_default_value, f7oz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OZ",
  input_variable = true,
  label = "Investissements outre-mer: report de réduction d'impôt non imputée les années antérieures année n-6",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PZ",
  input_variable = true,
  label = "Investissements outre-mer réalisés en 2007 dans le cadre d'une entreprise: report de réduction d'impôt non imputée les années antérieures",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7qz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QZ",
  input_variable = true,
  label = "Investissements outre-mer réalisés en 2008 dans le casdre d'une entreprise: report de réduction d'impôt non imputée les années antérieures",
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7rz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RZ",
  input_variable = true,
  label = "Investissements outre-mer: report de réduction d'impôt non imputée les années antérieures année n-3",
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f7qv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QV",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements immobliliers engagés avant le 1.1.2011 et investissements ayant reçu un agrément avant le 5.12.2010, nvestissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QO",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements immobliliers engagés avant le 1.1.2011 et investissements ayant reçu un agrément avant le 5.12.2010 à hauteur de 50%",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f7qp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QP",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements immobliliers engagés avant le 1.1.2011 et investissements ayant reçu un agrément avant le 5.12.2010 à hauteur de 60%",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f7pa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PA",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PB",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PC",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt calculée",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PD",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt dont vous demandez l'imputation en 2011",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qe, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QE",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet avant 1.1.2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f7pe, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PE",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PF",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PG",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt calculée",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7ph, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PH",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements dans votre entreprise, montant de la réduction d' impôt dont vous demandez l'imputation en 2011",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PI",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PJ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PK",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise, montant de la réduction d' impôt calculée",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7PL",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise, montant de la réduction d' impôt dont vous demandez l'imputation en 2011",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7pm, foyer_fiscal_definition, Int32,
  cerfa_field = "7PM",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pn, foyer_fiscal_definition, Int32,
  cerfa_field = "7PN",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50 %",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7po, foyer_fiscal_definition, Int32,
  cerfa_field = "7PO",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60 %",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pp, foyer_fiscal_definition, Int32,
  cerfa_field = "7PP",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pq, foyer_fiscal_definition, Int32,
  cerfa_field = "7PQ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pr, foyer_fiscal_definition, Int32,
  cerfa_field = "7PR",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7ps, foyer_fiscal_definition, Int32,
  cerfa_field = "7PS",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50 %",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pt, foyer_fiscal_definition, Int32,
  cerfa_field = "7PT",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60 %",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pu, foyer_fiscal_definition, Int32,
  cerfa_field = "7PU",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pv, foyer_fiscal_definition, Int32,
  cerfa_field = "7PV",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7pw, foyer_fiscal_definition, Int32,
  cerfa_field = "7PW",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7px, foyer_fiscal_definition, Int32,
  cerfa_field = "7PX",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt  à hauteur de 52,63 %",
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7py, foyer_fiscal_definition, Int32,
  cerfa_field = "7PY",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rg, foyer_fiscal_definition, Int32,
  cerfa_field = "7RG",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rh, foyer_fiscal_definition, Int32,
  cerfa_field = "7RH",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ri, foyer_fiscal_definition, Int32,
  cerfa_field = "7RI",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2012, Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50%, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rj, foyer_fiscal_definition, Int32,
  cerfa_field = "7RJ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rk, foyer_fiscal_definition, Int32,
  cerfa_field = "7RK",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rl, foyer_fiscal_definition, Int32,
  cerfa_field = "7RL",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rm, foyer_fiscal_definition, Int32,
  cerfa_field = "7RM",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rn, foyer_fiscal_definition, Int32,
  cerfa_field = "7RN",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ro, foyer_fiscal_definition, Int32,
  cerfa_field = "7RO",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rp, foyer_fiscal_definition, Int32,
  cerfa_field = "7RP",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rq, foyer_fiscal_definition, Int32,
  cerfa_field = "7RQ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rr, foyer_fiscal_definition, Int32,
  cerfa_field = "7RR",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rs, foyer_fiscal_definition, Int32,
  cerfa_field = "7RS",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rt, foyer_fiscal_definition, Int32,
  cerfa_field = "7RT",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2010 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ru, foyer_fiscal_definition, Int32,
  cerfa_field = "7RU",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rv, foyer_fiscal_definition, Int32,
  cerfa_field = "7RV",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rw, foyer_fiscal_definition, Int32,
  cerfa_field = "7RW",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rx, foyer_fiscal_definition, Int32,
  cerfa_field = "7RX",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ry, foyer_fiscal_definition, Int32,
  cerfa_field = "7RY",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements ayant fait l'objet en 2011 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 %, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7nu, foyer_fiscal_definition, Int32,
  cerfa_field = "7NU",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 52,63 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7nv, foyer_fiscal_definition, Int32,
  cerfa_field = "7NV",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 62,5 %",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7nw, foyer_fiscal_definition, Int32,
  cerfa_field = "7NW",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements dans votre entreprise",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7nx, foyer_fiscal_definition, Int32,
  cerfa_field = "7NX",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt calculée",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ny, foyer_fiscal_definition, Int32,
  cerfa_field = "7NY",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, investissements dans votre entreprise avec exploitation directe, montant de la réduction d'impôt dont vous demandez l'imputation en 2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7mn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7MN",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements ayant fait l'objet avant 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7lh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LH",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50%",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7mb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7MB",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements ayant fait l'objet en 2009 d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un accompte d'au moins 50%, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60%",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7kt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KT",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt, Investissements dans votre entreprise",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7li, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LI",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Autres investissements réalisés en 2010, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 50%",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7mc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7MC",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Autres investissements réalisés en 2010, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt à hauteur de 60%",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7ku, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KU",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise REPORT : Investissements réalisés en 2010, Investissements dans votre entreprise",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7sz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SZ",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale des logements donnés en location",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, fhsa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSA",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2010 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSB",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2010 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSF",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2011 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSG",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d'impôt en 2011 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSC",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSH",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSD",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculée en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSI",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculée en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhse, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSE",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSJ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements réalisés en 2013, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSK",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2010 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSL",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2010 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSP",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2011 à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSQ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2010 ou 2011 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt en 2011 à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSM",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSR",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSN",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhss, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSS",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhso, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSO",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhst, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HST",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013, en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSU",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSV",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSW",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements dans votre entreprise",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSX",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculé",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HS",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Autres investissements, Investissements ayant fait l’objet en 2012 d’une demande d’agrément, d’une déclaration d’ouverture de chantier ou d’un acompte d’au moins 50 %, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhsz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HSZ",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 52,63%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhta, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HTA",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements donnés en location à une entreprise exploitante à laquelle vous rétrocédez la réduction d’impôt à hauteur de 62,5%",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhtb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HTB",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhtc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HTC",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt calculé",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhtd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HTD",
  input_variable = true,
  label = "Investissements outre-mer dans le cadre de l'entreprise : Investissements autres que ceux des lignes précédentes, Investissements dans votre entreprise avec exploitation directe, montant de la réduction d’impôt dont vous demandez l’imputation en 2013",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7fy, foyer_fiscal_definition, Int32,
  cerfa_field = "7FY",
  input_variable = true,
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés: conventions signées avant l'année n-1 et ayant pris fin en année n-1",
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7gy, foyer_fiscal_definition, Int32,
  cerfa_field = "7GY",
  input_variable = true,
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés dont handicapés: conventions signées avant l'année n-1 et ayant pris fin en année n-1",
  start_date = Date(2006, 1, 1),
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7hy, foyer_fiscal_definition, Int32,
  cerfa_field = "7HY",
  input_variable = true,
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés: conventions signées en n-1 et n'ayant pas pris fin en n-1",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7ky, foyer_fiscal_definition, Int32,
  cerfa_field = "7KY",
  input_variable = true,
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés dont handicapés: conventions signées en n-1 et ayant pris fin en n-1",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7iy, foyer_fiscal_definition, Int32,
  cerfa_field = "7IY",
  input_variable = true,
  label = "Report du solde de réduction d'impôt non encore imputé sur les investissements réalisés",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ly, foyer_fiscal_definition, Int32,
  cerfa_field = "7LY",
  input_variable = true,
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés: conventions ayant pas pris fin l'année de perception des revenus déclarés",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7my, foyer_fiscal_definition, Int32,
  cerfa_field = "7MY",
  input_variable = true,
  label = "Aide aux créateurs et repreneurs d'entreprises, nombre de créateurs aidés dont handicapés: conventions ayant pas pris fin l'année de perception des revenus déclarés",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7ra, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RA",
  input_variable = true,
  label = "Travaux de restauration immobilière dans une zone de protection du patrimoine architectural, urbain et paysager",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7rb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RB",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7rc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RC",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7rd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RD",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7re, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RE",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7rf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7RF",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7sx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SX",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7sy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SY",
  input_variable = true,
  label = "Travaux de restauration immobilière dans un secteur sauvegardé ou assimilé",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gw, foyer_fiscal_definition, Int32,
  cerfa_field = "7GW",
  input_variable = true,
  label = "Investissements achevés en n-2 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna : report de 1/5 de la réduction d'impôt",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gx, foyer_fiscal_definition, Int32,
  cerfa_field = "7GX",
  input_variable = true,
  label = "Investissements achevés en n-2 avec promesse d'achat en n-3 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna : report de 1/5 de la réduction d'impôt",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7xa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XA",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés avant 2011 dans un village résidentiel de tourisme",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7xb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XB",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés avant 2011 dans une résidence de tourisme classée ou meublée",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7xc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XC",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: prix d'acquisition ou de revient d'un logement neuf acquis ou achevé en n-1",
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7xd, foyer_fiscal_definition, Bool,
  cerfa_field = "7XD",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: logement neuf, demande d'étalement du solde de la réduction d'impôt sur 6 ans",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_last_value, f7xe, foyer_fiscal_definition, Bool,
  cerfa_field = "7XE",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, demande d'étalement du solde de la réduction d'impôt sur 6 ans",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7xf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XF",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique, logement neuf: report des dépenses d'investissement des années antérieures",
)

@define_variable(requested_period_default_value, f7xh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XH",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: travaux de reconstruction, agrandissement, réparation dans une résidence de tourisme classée ou un meublé de tourisme",
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7xi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XI",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique, logement neuf: report des dépenses d'investissement des années antérieures",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7xj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XJ",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, report des dépenses d'investissement des années antérieures",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7xk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XK",
  input_variable = true,
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7xl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XL",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, prix de revient d'un logement réhabilité en n-1 et achevé depuis moins de 15 ans",
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7xm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XM",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: réhabilitation d'un logement, report de dépenses des travaux de réhabilitation achevés les années antérieures",
)

@define_variable(requested_period_default_value, f7xn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XN",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique, logement neuf: report des dépenses d'investissement des années antérieures",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7xo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XO",
  input_variable = true,
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f7xp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XP",
  input_variable = true,
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7xq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XQ",
  input_variable = true,
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7xr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XR",
  input_variable = true,
  label = "Investissements locatifs dans une résidence hôtelière à vocation sociale: report des dépenses d'investissement des années antérieures",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7xv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XV",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: Report des dépenses d'investissement des années antérieures",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7xx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XX",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés après 2012 dans un village résidentiel de tourisme",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7xz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XZ",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: travaux engagés après 2012 dans une résidence de tourisme classée ou un meublé tourisme",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7uy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UY",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: Report des dépenses d'investissement des années antérieures",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7uz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UZ",
  input_variable = true,
  label = "Investissements locatifs dans le secteur de touristique: Report des dépenses d'investissement des années antérieures",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7cf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CF",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, petites entreprises en phase de démarrage, ou d'expansion",
)

@define_variable(requested_period_default_value, f7cl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CL",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -4",
)

@define_variable(requested_period_default_value, f7cm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CM",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -3",
)

@define_variable(requested_period_default_value, f7cn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CN",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -2",
)

@define_variable(requested_period_default_value, f7cc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CC",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -1",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7cq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CQ",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, report de versement de l'année de perception des revenus -1pour les start-up",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7cu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7CU",
  input_variable = true,
  label = "Souscriptions au capital des PME non cotées, montant versé au titre de souscriptions antérieures",
)

@define_variable(requested_period_default_value, f7gs, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GS",
  input_variable = true,
  label = "Reports concernant les investissements achevés ou acquis au cours des années antérieures: Investissements réalisés en n-3 en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ua, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UA",
  input_variable = true,
  stop_date = Date(2007, 12, 31),
)

@define_variable(requested_period_default_value, f7ub, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UB",
  input_variable = true,
  stop_date = Date(2007, 12, 31),
)

@define_variable(requested_period_default_value, f7uc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UC",
  input_variable = true,
  label = "Cotisations pour la défense des forêts contre l'incendie ",
)

@define_variable(requested_period_default_value, f7ui, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UI",
  input_variable = true,
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_default_value, f7uj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UJ",
  input_variable = true,
  stop_date = Date(2007, 12, 31),
)

@define_variable(requested_period_default_value, f7qb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QB",
  input_variable = true,
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QC",
  input_variable = true,
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QD",
  input_variable = true,
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QK",
  input_variable = true,
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f7qn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QN",
  input_variable = true,
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f7kg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KG",
  input_variable = true,
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, f7ql, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QL",
  input_variable = true,
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QT",
  input_variable = true,
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QM",
  input_variable = true,
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7qu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QU",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7ki, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KI",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QJ",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QW",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QX",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QF",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QG",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QH",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QI",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QQ",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QR",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7qs, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7QS",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7mm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7MM",
  input_variable = true,
  start_date = Date(2010, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7lg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LG",
  input_variable = true,
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7ma, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7MA",
  input_variable = true,
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7ks, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KS",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7kh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KH",
  input_variable = true,
)

@define_variable(requested_period_default_value, f7oa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OA",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% avant 2009",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ob, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OB",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2009",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7oc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OC",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2010",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7oh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OH",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% avant 2009",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7oi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OI",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2009",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7oj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OJ",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Investissements immobiliers engagés en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2010",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ok, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OK",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2011, Autres investissements",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ol, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OL",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % avant 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7om, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OM",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7on, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7ON",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé avant le 1.1.2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7oo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OO",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % avant 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7op, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OP",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7oq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OQ",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7or, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OR",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2011, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7os, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OS",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % avant 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ot, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OT",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ou, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OU",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ov, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OV",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ow, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7OW",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2012, ",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, fhod, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOD",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés avant le 1.1.2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhoe, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOE",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhof, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOF",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers  que vous avez engagé en 2012, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhog, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOG",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés en 2012 ou 2013, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhox, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOX",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés en 2012 ou 2013, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhoy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOY",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Investissements immobiliers engagés en 2012 ou 2013, ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50% en 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhoz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HOZ",
  input_variable = true,
  label = "Investissements outre-mer dans le logement : Investissements réalisés en 2013, Autres investissements",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhra, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HRA",
  input_variable = true,
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Investissements ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhrb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HRB",
  input_variable = true,
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Investissements ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhrc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HRC",
  input_variable = true,
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Investissements ayant fait l'objet d'une demande d'agrément, d'une déclaration d'ouverture de chantier ou d'un acompte d'au moins 50 % en 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, fhrd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "HRD",
  input_variable = true,
  label = "Investissements outre-mer dans le logement social : Investissements réalisés en 2013, Autres investissements",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GQ",
  input_variable = true,
  label = "Souscription de parts de fonds communs de placement dans l'innovation",
)

@define_variable(requested_period_default_value, f7fq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FQ",
  input_variable = true,
  label = "Souscription de parts de fonds d'investissement de proximité",
)

@define_variable(requested_period_default_value, f7fm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FM",
  input_variable = true,
  label = "Souscription de parts de fonds d'investissement de proximité investis en Corse",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f7fl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FL",
  input_variable = true,
  label = "Souscription de parts de fonds d'investissement de proximité investis outre-mer par des personnes domiciliées outre-mer",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7gn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GN",
  input_variable = true,
  label = "Souscriptions au capital de SOFICA 36 %",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f7fn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FN",
  input_variable = true,
  label = "Souscriptions au capital de SOFICA 30 %",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f7fh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FH",
  input_variable = true,
  label = "Intérêts d'emprunt pour reprise de société",
)

@define_variable(requested_period_default_value, f7ff, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FF",
  input_variable = true,
  label = "Frais de comptabilité et d'adhésion à un CGA (centre de gestion agréée) ou à une AA (association agréée)",
)

@define_variable(requested_period_default_value, f7fg, foyer_fiscal_definition, Int32,
  cerfa_field = "7FG",
  input_variable = true,
  label = "Frais de comptabilité et d'adhésion à un CGA ou à une AA: nombre d'exploitations",
)

@define_variable(requested_period_default_value, f7nz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NZ",
  input_variable = true,
  label = "Travaux de conservation et de restauration d’objets classés monuments historiques",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f7ka, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KA",
  input_variable = true,
  label = "Dépenses de protection du patrimoine naturel",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7kb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KB",
  input_variable = true,
  label = "Dépenses de protection du patrimoine naturel (excédent de réduction d’impôt d’années antérieures qui n’a pu être imputé)",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7kc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KC",
  input_variable = true,
  label = "Dépenses de protection du patrimoine naturel (excédent de réduction d’impôt d’années antérieures qui n’a pu être imputé)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7kd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7KD",
  input_variable = true,
  label = "Dépenses de protection du patrimoine naturel (excédent de réduction d’impôt d’années antérieures qui n’a pu être imputé)",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7uh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UH",
  input_variable = true,
  label = "Dons et cotisations versés aux partis politiques",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, f7un, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UN",
  input_variable = true,
  label = "Investissements forestiers: acquisition",
)

@define_variable(requested_period_default_value, f7ul, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UL",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7uu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UU",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7uv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UV",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7uw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UW",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7th, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TH",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ux, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UX",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7tg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TG",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7tf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TF",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2013, 12, 31),
)

@define_variable(requested_period_default_value, f7ut, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UT",
  input_variable = true,
  label = "Investissements forestiers",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7um, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UM",
  input_variable = true,
  label = "Intérêts pour paiement différé accordé aux agriculteurs",
)

@define_variable(requested_period_default_value, f7hj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HJ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 en métropole",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7hk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HK",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 dans les DOM-COM",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7hn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HN",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 en métropole avec promesse d'achat avant le 1er janvier 2010",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7ho, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HO",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2010 dans les DOM-COM avec promesse d'achat avant le 1er janvier 2010",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7hl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HL",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2009 (métropole et DOM ne respectant pas les plafonds)",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7hm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HM",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés en 2009 dans les DOM et respectant les plafonds",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7hr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HR",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés et achevés en 2009, en métropole en 2009; dans les DOM du 1.1.2009 au 26.5.2009 ; dans les DOM du 27.5.2009 au 30.12.2009 lorsqu'ils ne respectent pas les plafonds spécifiques",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7hs, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HS",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: investissements réalisés et achevés en 2009 dans les DOM COM du 27.5.2009 au 31.12.2009 respectant les plafonds spécifiques",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7la, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LA",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report de l'année 2009",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7lb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LB",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report de l'année 2010",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7lc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LC",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report de l'année 2010",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ld, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LD",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report de l'année 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7le, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LE",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report de l'année 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7lf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LF",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2011 : report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ls, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LS",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7lm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LM",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2009 ou 2010 ou réalisés et achevés en 2010 avec engagement avant le 1.1.2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7lz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7LZ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7mg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7MG",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Report du solde des réductions d'impôts non encore imputé, Investissements réalisés et achevés en 2012 : report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7na, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NA",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NB",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NC",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7ND",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ne, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NE",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, métropole, BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NF",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ng, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NG",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NH",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, Investissement réalisé du 1.1.2011 au 31.1.2011, métropole, non-BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ni, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NI",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, métropole, non-BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NJ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, métropole, non-BBC",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NK",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NL",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NM",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, Investissement réalisé du 1.1.2011 au 31.1.2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NN",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7no, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NO",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7np, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NP",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NQ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2010, réalisés en 2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NR",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.1.2011 au 31.1.2011, Investissement réalisé du 1.1.2011 au 31.1.2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ns, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NS",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.2.2011 au 31.3.2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7nt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7NT",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, Investissement réalisé du 1.4.2011 au 31.12.2011, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7hv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HV",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 en métropole",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7hw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HW",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 dans les DOM COM",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7hx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HX",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 en métropole avec promesse d'achat avant le 1.1.2010",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7hz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HZ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2010 dans les DOM COM avec promesse d'achat avant le 1.1.2010",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ht, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HT",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2009, Investissements réalisés en 2009 et achevés en 2010, en métropole en 2009; dans les DOM du 1.1.2009 au 26.5.2009 ; dans les DOM du 27.5.2009 au 30.12.2009 lorsqu'ils ne respectent pas les plafonds spécifiques",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7hu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HU",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2009, Investissements réalisés en 2009 et achevés en 2010, dans les DOM COM du 27.5.2009 au 31.12.2009 respectant les plafonds spécifiques",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ha, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HA",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés et réalisés en 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7hb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HB",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés et réalisés en 2011, avec promesse d'achat en 2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7hg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HG",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2011 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7hh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HH",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: réductions investissements réalisés et achevés en 2011 en Polynésie française, Nouvelle Calédonie, dans les îles Walllis et Futuna avec promesse d'achat en 2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7hd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HD",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés en 2011, réalisés en 2010, en métropole et dans les DOM-COM",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7he, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HE",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés en 2011, en métropole et dans les DOM-COM avec promesse d'achat avant le 1.1.2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7hf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7HF",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier: Investissements achevés en 2011, Investissements réalisés en 2009 en métropole et dans les DOM-COM",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ja, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JA",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2012, métropole, BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JB",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, métropole, BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JD",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, métropole, BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7je, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JE",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, métropole, BBC ",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JF",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements réalisés et engagés en 2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JG",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JH",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JJ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, métropole, non-BBC",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JK",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JL",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jm, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JM",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jn, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JN",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, DOM, Saint-Barthélémy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JO",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JP",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : investissements engagés en 2011, réalisés en 2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JQ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.1.2012 au 31.3.2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JR",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, Investissement réalisé du 1.4.2012 au 31.12.2012, Polynésie Française, Nouvelle Calédonie, Wallis et Futuna",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7gj, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GJ",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés et réalisés en 2012, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GK",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés et réalisés en 2012, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon, avec promesse d'achat en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GL",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés en 2012 et réalisés en 2011, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GP",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Reports concernant les investissements achevés ou acquis au cours des années antérieures, Investissements achevés en 2012 et réalisés en 2011, en métropole, dans les DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon, avec promesse d'achat en 2010s",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7fa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FA",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013, métropole, BBC",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7fb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FB",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013, métropole, non-BBC",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7fc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FC",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013, DOM, à Saint-Barthélemy, Saint-Martin, Saint-Pierre-et-Miquelon",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7fd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7FD",
  input_variable = true,
  label = "Investissements locatifs neufs dispositif Scellier : Investissements achevés ou acquis en 2013, réalisés du 1.1.2013 au 31.3.2013 en Polynésie, en Nouvelle Calédonie et à Wallis et Futuna",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ij, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IJ",
  input_variable = true,
  label = "Investissement destinés à la location meublée non professionnelle: Investissements réalisés en 2011 et achevés en 2012, engagement de réalisation de l'investissement en 2011",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7il, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IL",
  input_variable = true,
  label = "Investissement destinés à la location meublée non professionnelle: Investissements réalisés en 2011 et achevés en 2012, promesse d'achat en 2010",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7im, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IM",
  input_variable = true,
  label = "Investissement destinés à la location meublée non professionnelle: Investissements réalisés en 2010 et achevés en 2012 avec promesse d'achat en 2009",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7ik, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IK",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Reports de 1/9 de l'investissement réalisé et achevé en 2009",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7in, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IN",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, investissement réalisé du 1.1.2011 au 31.3.2011",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7iv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IV",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2010, investissement réalisé du 1.4.2011 au 31.12.2011",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7iw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IW",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2010 et achevés en 2012",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7io, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IO",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ip, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IP",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7ir, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IR",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7iq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IQ",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7iu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IU",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7it, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IT",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : ",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, f7is, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IS",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Report du solde de réduction d'impôt non encore imputé: année  n-4",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7ia, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IA",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ib, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IB",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 avec promesse d'achat en 2010 ou réalisés en 2010",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ic, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IC",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2010 et achevés en 2011 avec promesse d'achat en 2009 ou réalisés en 2009",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7id, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7ID",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Engagement de réalisation de l'investissement en 2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ie, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IE",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Promesse d'achat en 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7if, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IF",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, investissement réalisé du 1.1.2012 au 31.3.2012, investissement réalisé du 1.1.2012 au 31.3.2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ig, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IG",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, Investissements destinés à la location meublée non professionnelle : Logement acquis en l'état futur d'achèvement avec contrat de réservation enregistré au plus tard le 31.12.2011, investissement réalisé du 1.4.2012 au 31.12.2012",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ix, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IX",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2009; réalisés en 2009 et achevés en 2010; réalisés et achevés en 2010 avec engagement avant le 1.1.2010, Report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7ih, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IH",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7iz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7IZ",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 : report du solde de réduction d'impôt de l'année 2011",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7jt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JT",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2013, Engagement de réalisation de l'investissement en 2013",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ju, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JU",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés en 2013, Engagement de réalisation de l'investissement en 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7jv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JV",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7jw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JW",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2011 ou réalisés en 2012 avec promesse d'achat en 2011",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7jx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JX",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2011 avec promesse d'achat en 2010 ou réalisés en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7jy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JY",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2012, réalisés en 2010 avec promesse d'achat en 2009 ou réalisés en 2009",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7jc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JC",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2010 ; réalisés en 2010 et achevés en 2011 ; réalisés et achevés en 2011 avec engagement en 2010, Report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7ji, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JI",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 ; réalisés en 2011 et achevés en 2011 ou 2012 ; réalisés en 2012 avec promesse d'achat en 2011 et achevés en 2012, Report du solde de réduction d'impôt de l'année 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7js, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7JS",
  input_variable = true,
  label = "Investissements destinés à la location meublée non professionnelle : Investissements réalisés et achevés en 2011 ; réalisés en 2011 et achevés en 2011 ou 2012 ; réalisés en 2012 avec promesse d'achat en 2011 et achevés en 2012, Report du solde de réduction d’impôt de l’année 2012",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GT",
  input_variable = true,
  label = "Scellier: report de 1/9 de la réduction d'impôt des investissements achevés en 2012 avec promesse d'achat en 2010",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GU",
  input_variable = true,
  label = "Scellier: report de 1/9 de la réduction d'impôt des investissements achevés en 2012 avec promesse d'achat en 2009",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GV",
  input_variable = true,
  label = "Scellier: report de 1/5 de la réduction d'impôt des investissements réalisés et achevés en 2012 en Polynésie, en Nouvelle Calédonie et à Wallis et Futuna ",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7xg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7XG",
  input_variable = true,
  label = "Investissement locatif dans le secteur touristique, travaux réalisés dans un village résidentiel de tourisme",
  stop_date = Date(2012, 12, 1),
)

@define_variable(requested_period_default_value, f7uo, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UO",
  input_variable = true,
  label = "Acquisition de biens culturels",
)

@define_variable(requested_period_default_value, f7us, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7US",
  input_variable = true,
  label = "Réduction d'impôt mécénat d'entreprise",
)

@define_variable(requested_period_default_value, f7sb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SB",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale des logements donnés en location: crédit à 25 %",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2011, 12, 31),
)

@define_variable(requested_period_default_value, f7sc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SC",
  input_variable = true,
  label = "Crédits d’impôt pour dépenses en faveur de la qualité environnementale",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 1),
)

@define_variable(requested_period_default_value, f7sd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SD",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale, économie d'énergie: chaudières à condensation",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7se, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SE",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale, économie d'énergie: chaudières à micro-cogénération gaz",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7sh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SH",
  input_variable = true,
  label = "Dépenses en faveur de la qualité environnementale de l'habitation principale, isolation thermique: matériaux d'isolation des toitures (acquisition et pose)",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7up, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UP",
  input_variable = true,
  label = "Crédit d'impôt pour investissements forestiers: travaux",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, f7uq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7UQ",
  input_variable = true,
  label = "Crédit d'impôt pour investissements forestiers: contrat de gestion",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_last_value, f1ar, foyer_fiscal_definition, Bool,
  cerfa_field = "1AR",
  input_variable = true,
  label = "Crédit d'impôt aide à la mobilité : le déclarant déménage à plus de 200 km pour son emploi",
  stop_date = Date(2080, 12, 31),
)

@define_variable(requested_period_last_value, f1br, foyer_fiscal_definition, Bool,
  cerfa_field = "1BR",
  input_variable = true,
  label = "Crédit d'impôt aide à la mobilité : le conjoint déménage à plus de 200 km pour son emploi",
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_last_value, f1cr, foyer_fiscal_definition, Bool,
  cerfa_field = "1CR",
  input_variable = true,
  label = "Crédit d'impôt aide à la mobilité : la 1ère personne à charge déménage à plus de 200 km pour son emploi",
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_last_value, f1dr, foyer_fiscal_definition, Bool,
  cerfa_field = "1DR",
  input_variable = true,
  label = "Crédit d'impôt aide à la mobilité : la 2è personne à charge déménage à plus de 200 km pour son emploi",
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_last_value, f1er, foyer_fiscal_definition, Bool,
  cerfa_field = "1ER",
  input_variable = true,
  label = "Crédit d'impôt aide à la mobilité : la 3è personne à charge déménage à plus de 200 km pour son emploi",
  stop_date = Date(2006, 12, 31),
)

@define_variable(requested_period_default_value, f4tq, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "4TQ",
  input_variable = true,
  label = "Crédit d’impôt représentatif de la taxe additionnelle au droit de bail",
)

@define_variable(requested_period_default_value, f7sf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SF",
  input_variable = true,
  label = "Crédit de travaux en faveur d'aides aux personnes pour des logements en location (avant 2012 ) / Appareils de régulation du chauffage, matériaux de calorifugeage (après 2011)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7si, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7SI",
  input_variable = true,
  label = "Matériaux d’isolation des planchers bas sur sous-sol, sur vide sanitaire ou sur passage couvert (acquisition et pose)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f7te, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TE",
  input_variable = true,
  label = "Dépenses d'investissement forestier",
  start_date = Date(2010, 1, 1),
)

@define_variable(requested_period_default_value, f7tu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TU",
  input_variable = true,
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7tt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TT",
  input_variable = true,
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7tv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TV",
  input_variable = true,
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7tx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TX",
  input_variable = true,
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7ty, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TY",
  input_variable = true,
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7tw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7TW",
  input_variable = true,
  label = "Dépenses de travaux dans l'habitation principale",
  start_date = Date(2012, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f7gh, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GH",
  input_variable = true,
  label = "Investissements locatifs intermédiaires en métropole",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f7gi, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "7GI",
  input_variable = true,
  label = "Investissements locatifs intermédiaires outre-mer",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f8ta, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TA",
  input_variable = true,
  label = "Retenue à la source en France ou impôt payé à l'étranger",
)

@define_variable(requested_period_default_value, f8tb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TB",
  input_variable = true,
  label = "Crédit d'impôt recherche (entreprises bénéficiant de la restitution immédiate)",
)

@define_variable(requested_period_default_value, f8tf, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TF",
  input_variable = true,
  label = "Reprises de réductions ou de crédits d'impôt",
)

@define_variable(requested_period_default_value, f8tg, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TG",
  input_variable = true,
  label = "Crédits d'impôt en faveur des entreprises: Investissement en Corse",
)

@define_variable(requested_period_default_value, f8th, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TH",
  input_variable = true,
  label = "Retenue à la source élus locaux",
)

@define_variable(requested_period_default_value, f8tc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TC",
  input_variable = true,
  label = "Crédit d'impôt autres entreprises (recherche non encore remboursé (années antérieures))",
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_default_value, f8td_2002_2005, foyer_fiscal_definition, Int32,
  cerfa_field = "8TD",
  input_variable = true,
  label = "Contribution exceptionnelle sur les hauts revenus",
  start_date = Date(2002, 1, 1),
  stop_date = Date(2005, 12, 31),
)

@define_variable(requested_period_last_value, f8td, foyer_fiscal_definition, Bool,
  cerfa_field = "8TD",
  input_variable = true,
  label = "Revenus non imposables dépassent la moitié du RFR",
  start_date = Date(2011, 1, 1),
  stop_date = Date(2014, 12, 31),
)

@define_variable(requested_period_default_value, f8te, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TE",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: adhésion à un groupement de prévention agréé",
)

@define_variable(requested_period_default_value, f8ti, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TK",
  input_variable = true,
  label = "Revenus de l'étranger exonérés d'impôt",
)

@define_variable(requested_period_default_value, f8tk, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TK",
  input_variable = true,
  label = "Revenus de l'étranger imposables",
)

@define_variable(requested_period_default_value, f8tl, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TL",
  input_variable = true,
  label = "Crédit d'impôt compétitivité emploi (CICE), entreprises bénéficiant de la restitution immédiate",
)

@define_variable(requested_period_default_value, f8to, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TO",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: investissement en Corse, report non imputé les années antérieures",
)

@define_variable(requested_period_default_value, f8tp, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TP",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: investissement en Corse, reprise de crédit d'impôt",
)

@define_variable(requested_period_default_value, f8ts, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TS",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: investissement en Corse, crédit d'impôt",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f8uz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8UZ",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Famille",
)

@define_variable(requested_period_default_value, f8uw, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8UW",
  input_variable = true,
  label = "Crédit d'impôt compétitivité emploi (CICE), autres entreprises",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f8tz, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8TZ",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Apprentissage",
)

@define_variable(requested_period_default_value, f8wa, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WA",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Agriculture biologique",
)

@define_variable(requested_period_default_value, f8wb, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WB",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Prospection commerciale",
)

@define_variable(requested_period_default_value, f8wc__2008, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WC",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Nouvelles technologies",
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_default_value, f8wc, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WC",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Prêts sans intérêt",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, f8wd, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WD",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Formation des chefs d'entreprise",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f8we, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WE",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Intéressement",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f8wr, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WR",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Métiers d'art",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f8ws, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WS",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Emploi de salariés réservistes",
  start_date = Date(2006, 1, 1),
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f8wt, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WT",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Remplacement pour congé des agriculteurs",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f8wu, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WU",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Maître restaurateur",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f8wv, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WV",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Débitants de tabac",
  start_date = Date(2007, 1, 1),
  stop_date = Date(2012, 12, 31),
)

@define_variable(requested_period_default_value, f8wx, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8WX",
  input_variable = true,
  label = "Crédit d'impôt en faveur des entreprises: Formation des salariés à l'économie d'entreprise",
  start_date = Date(2007, 1, 1),
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, elig_creimp_exc_2008, foyer_fiscal_definition, Int32,
  cell_default = 1,
  cell_format = "monetary",
  input_variable = true,
  label = "Éligibilité au crédit d'impôt exceptionnel sur les revenus 2008",
  start_date = Date(2008, 1, 1),
  stop_date = Date(2008, 12, 31),
)

@define_variable(requested_period_default_value, f8uy, foyer_fiscal_definition, Int32,
  cell_format = "monetary",
  cerfa_field = "8UY",
  input_variable = true,
  label = "Auto-entrepreneur : versements libératoires d’impôt sur le revenu dont le remboursement est demandé",
  start_date = Date(2009, 1, 1),
)

@define_variable(permanent_default_value, idmen, individu_definition, Int32,
  input_variable = true,
  label = "Identifiant du ménage",
  permanent = true,
)

@define_variable(permanent_default_value, idfoy, individu_definition, Int32,
  input_variable = true,
  label = "Identifiant du foyer",
  permanent = true,
)

@define_variable(permanent_default_value, idfam, individu_definition, Int32,
  input_variable = true,
  label = "Identifiant de la famille",
  permanent = true,
)

@define_variable(permanent_default_value, quimen, individu_definition, Int16,
  input_variable = true,
  permanent = true,
  values = [
    "pref" => 0,
    "cref" => 1,
    "enf1" => 2,
    "enf2" => 3,
    "enf3" => 4,
    "enf4" => 5,
    "enf5" => 6,
    "enf6" => 7,
    "enf7" => 8,
    "enf8" => 9,
    "enf9" => 10,
  ],
)

@define_variable(permanent_default_value, quifoy, individu_definition, Int16,
  input_variable = true,
  permanent = true,
  values = [
    "vous" => 0,
    "conj" => 1,
    "pac1" => 2,
    "pac2" => 3,
    "pac3" => 4,
    "pac4" => 5,
    "pac5" => 6,
    "pac6" => 7,
    "pac7" => 8,
    "pac8" => 9,
    "pac9" => 10,
  ],
)

@define_variable(permanent_default_value, quifam, individu_definition, Int16,
  input_variable = true,
  permanent = true,
  values = [
    "chef" => 0,
    "part" => 1,
    "enf1" => 2,
    "enf2" => 3,
    "enf3" => 4,
    "enf4" => 5,
    "enf5" => 6,
    "enf6" => 7,
    "enf7" => 8,
    "enf8" => 9,
    "enf9" => 10,
  ],
)

@define_variable(permanent_default_value, birth, individu_definition, Date,
  cell_default = Date(1970, 1, 1),
  cell_format = "date",
  input_variable = true,
  label = "Date de naissance",
  permanent = true,
)

@define_variable(permanent_default_value, nom_individu, individu_definition, UTF8String,
  input_variable = true,
  label = "Prénom",
  permanent = true,
)

@define_variable(requested_period_last_value, enceinte, individu_definition, Bool,
  input_variable = true,
  label = "Est enceinte",
)

@define_variable(requested_period_last_value, categ_inv, individu_definition, Int32,
  input_variable = true,
  label = "Catégorie de handicap (AEEH)",
)

@define_variable(requested_period_last_value, coloc, individu_definition, Bool,
  input_variable = true,
  label = "Vie en colocation",
)

@define_variable(requested_period_last_value, csg_rempl, individu_definition, Int16,
  cell_default = 3,
  input_variable = true,
  label = "Taux retenu sur la CSG des revenus de remplacment",
  values = [
    "Non renseigné/non pertinent" => 0,
    "Exonéré" => 1,
    "Taux réduit" => 2,
    "Taux plein" => 3,
  ],
)

@define_variable(requested_period_default_value, chobrut, individu_definition, Float32,
  input_variable = true,
  label = "Chômage brut",
)

@define_variable(requested_period_default_value, rstbrut, individu_definition, Float32,
  input_variable = true,
  label = "Retraite brute",
)

@define_variable(requested_period_default_value, aer, individu_definition, Int32,
  input_variable = true,
  label = "Allocation équivalent retraite (AER)",
)

@define_variable(requested_period_default_value, f5sq, individu_definition, Int32,
  input_variable = true,
)

@define_variable(requested_period_last_value, adoption, individu_definition, Bool,
  input_variable = true,
  label = "Enfant adopté",
)

@define_variable(requested_period_last_value, ass_precondition_remplie, individu_definition, Bool,
  input_variable = true,
  label = "Éligible à l'ASS",
)

@define_variable(requested_period_last_value, elig_creimp_jeunes, individu_definition, Bool,
  input_variable = true,
  label = "Éligible au crédit d'impôt jeunes",
  start_date = Date(2005, 1, 1),
  stop_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, indemnites_journalieres_maternite, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités journalières de maternité",
)

@define_variable(requested_period_default_value, indemnites_journalieres_paternite, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités journalières de paternité",
)

@define_variable(requested_period_default_value, indemnites_journalieres_adoption, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités journalières d'adoption",
)

@define_variable(requested_period_default_value, indemnites_journalieres_maladie, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités journalières de maladie",
)

@define_variable(requested_period_default_value, indemnites_journalieres_accident_travail, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités journalières d'accident du travail",
)

@define_variable(requested_period_default_value, indemnites_journalieres_maladie_professionnelle, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités journalières de maladie professionnelle",
)

@define_variable(requested_period_default_value, indemnites_chomage_partiel, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités de chômage partiel",
)

@define_variable(requested_period_default_value, allocation_aide_retour_emploi, individu_definition, Float32,
  input_variable = true,
  label = "Allocation d'aide au retour à l'emploi",
)

@define_variable(requested_period_default_value, allocation_securisation_professionnelle, individu_definition, Float32,
  input_variable = true,
  label = "Allocation de sécurisation professionnelle",
)

@define_variable(requested_period_default_value, prime_forfaitaire_mensuelle_reprise_activite, individu_definition, Float32,
  input_variable = true,
  label = "Prime forfaitaire mensuelle pour la reprise d'activité",
)

@define_variable(requested_period_default_value, indemnites_volontariat, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités de volontariat",
)

@define_variable(requested_period_default_value, dedommagement_victime_amiante, individu_definition, Float32,
  input_variable = true,
  label = "Dédommagement versé aux victimes de l'amiante",
)

@define_variable(requested_period_default_value, prestation_compensatoire, individu_definition, Float32,
  input_variable = true,
  label = "Dédommagement versé aux victimes de l'amiante",
)

@define_variable(requested_period_default_value, aah, individu_definition, Float32,
  input_variable = true,
  label = "Allocation de l'adulte handicapé",
)

@define_variable(requested_period_default_value, caah, individu_definition, Float32,
  input_variable = true,
  label = "Complément de l'allocation de l'adulte handicapé",
)

@define_variable(requested_period_default_value, gains_exceptionnels, individu_definition, Float32,
  input_variable = true,
  label = "Gains exceptionnels",
)

@define_variable(requested_period_default_value, pensions_invalidite, individu_definition, Float32,
  input_variable = true,
  label = "Pensions d'invalidité",
)

@define_variable(requested_period_default_value, bourse_enseignement_sup, individu_definition, Float32,
  input_variable = true,
  label = "Bourse de l'enseignement supérieur",
)

@define_variable(requested_period_default_value, bourse_recherche, individu_definition, Float32,
  input_variable = true,
  label = "Bourse de recherche",
)

@define_variable(requested_period_default_value, retraite_combattant, individu_definition, Float32,
  input_variable = true,
  label = "Retraite du combattant",
)

@define_variable(requested_period_default_value, indemnites_stage, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités de stage",
)

@define_variable(requested_period_default_value, revenus_stage_formation_pro, individu_definition, Float32,
  input_variable = true,
  label = "Revenus de stage de formation professionnelle",
)

@define_variable(requested_period_default_value, pensions_alimentaires_percues, individu_definition, Float32,
  input_variable = true,
  label = "Pensions alimentaires perçues",
)

@define_variable(requested_period_default_value, etr, individu_definition, Int32,
  input_variable = true,
)

@define_variable(last_duration_last_value, epargne_non_remuneree, individu_definition, Float32,
  input_variable = true,
  label = "Épargne non rémunérée",
)

@define_variable(last_duration_last_value, interets_epargne_sur_livrets, individu_definition, Float32,
  input_variable = true,
  label = "Intérêts versés pour l'épargne sur livret",
)

@define_variable(last_duration_last_value, revenus_capital, individu_definition, Float32,
  input_variable = true,
  label = "Revenus du capital",
)

@define_variable(last_duration_last_value, revenus_locatifs, individu_definition, Float32,
  input_variable = true,
  label = "Revenus locatifs",
)

@define_variable(last_duration_last_value, valeur_locative_immo_non_loue, individu_definition, Float32,
  input_variable = true,
  label = "Valeur locative des biens immobiliers possédés et non loués",
)

@define_variable(last_duration_last_value, valeur_locative_terrains_non_loue, individu_definition, Float32,
  input_variable = true,
  label = "Valeur locative des terrains possédés et non loués",
)

@define_variable(requested_period_last_value, cho_ld, individu_definition, Bool,
  cerfa_field = [0 => "1AI", 1 => "1BI", 2 => "1CI", 3 => "1DI", 4 => "1EI"],
  input_variable = true,
  label = "Demandeur d'emploi inscrit depuis plus d'un an",
)

@define_variable(requested_period_default_value, sali, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AJ", 1 => "1BJ", 2 => "1CJ", 3 => "1DJ", 4 => "1EJ"],
  input_variable = true,
  label = "Revenus d'activité imposables",
)

@define_variable(requested_period_default_value, fra, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AK", 1 => "1BK", 2 => "1CK", 3 => "1DK", 4 => "1EK"],
  input_variable = true,
  label = "Frais réels",
)

@define_variable(requested_period_default_value, alr, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AO", 1 => "1BO", 2 => "1CO", 3 => "1DO", 4 => "1EO"],
  input_variable = true,
  label = "Pensions alimentaires perçues",
)

@define_variable(requested_period_last_value, alr_decl, individu_definition, Bool,
  cell_default = true,
  input_variable = true,
  label = "Pension déclarée",
)

@define_variable(requested_period_default_value, choi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AP", 1 => "1BP", 2 => "1CP", 3 => "1DP", 4 => "1EP"],
  input_variable = true,
  label = "Autres revenus imposables (chômage, préretraite)",
)

@define_variable(requested_period_default_value, rsti, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AS", 1 => "1BS", 2 => "1CS", 3 => "1DS", 4 => "1ES"],
  input_variable = true,
  label = "Pensions, retraites, rentes connues imposables",
)

@define_variable(requested_period_default_value, hsup, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AU", 1 => "1BU", 2 => "1CU", 3 => "1DU"],
  input_variable = true,
  label = "Heures supplémentaires : revenus exonérés connus",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_last_value, inv, individu_definition, Bool,
  input_variable = true,
  label = "Invalide",
)

@define_variable(requested_period_last_value, alt, individu_definition, Bool,
  input_variable = true,
  label = "Enfant en garde alternée",
)

@define_variable(requested_period_default_value, ppe_du_sa, individu_definition, Int32,
  cerfa_field = [0 => "1AV", 1 => "1BV", 2 => "1CV", 3 => "1DV", 4 => "1QV"],
  input_variable = true,
  label = "Prime pour l'emploi des salariés: nombre d'heures payées dans l'année",
)

@define_variable(requested_period_last_value, ppe_tp_sa, individu_definition, Bool,
  cerfa_field = [0 => "1AX", 1 => "1BX", 2 => "1CX", 3 => "1DX", 4 => "1QX"],
  input_variable = true,
  label = "Prime pour l'emploi des salariés: indicateur de travail à temps plein sur l'année entière",
)

@define_variable(requested_period_last_value, activite, individu_definition, Int16,
  cell_default = 4,
  input_variable = true,
  label = "Activité",
  values = [
    "Actif occupé" => 0,
    "Chômeur" => 1,
    "Étudiant, élève" => 2,
    "Retraité" => 3,
    "Autre inactif" => 4,
  ],
)

@define_variable(requested_period_last_value, nbsala, individu_definition, Int16,
  input_variable = true,
  label = "Nombre de salariés dans l'établissement de l'emploi actuel",
  values = [
    "Sans objet" => 0,
    "Aucun salarié" => 1,
    "1 à 4 salariés" => 2,
    "5 à 9 salariés" => 3,
    "10 à 19 salariés" => 4,
    "20 à 49 salariés" => 5,
    "50 à 199 salariés" => 6,
    "200 à 499 salariés" => 7,
    "500 à 999 salariés" => 8,
    "1000 salariés ou plus" => 9,
    "Ne sait pas" => 10,
  ],
)

@define_variable(requested_period_last_value, tva_ent, individu_definition, Bool,
  cell_default = true,
  input_variable = true,
  label = "L'entreprise employant le salarié paye de la TVA",
)

@define_variable(requested_period_last_value, exposition_accident, individu_definition, Int16,
  input_variable = true,
  label = "Exposition au risque pour les accidents du travail",
  values = [
    "Faible" => 0,
    "Moyen" => 1,
    "Élevé" => 2,
    "Très élevé" => 3,
  ],
)

@define_variable(requested_period_last_value, boursier, individu_definition, Bool,
  input_variable = true,
  label = "Élève ou étudiant boursier",
)

@define_variable(requested_period_last_value, statmarit, individu_definition, Int16,
  cell_default = 2,
  input_variable = true,
  label = "Statut marital",
  values = [
    "Marié" => 1,
    "Célibataire" => 2,
    "Divorcé" => 3,
    "Veuf" => 4,
    "Pacsé" => 5,
    "Jeune veuf" => 6,
  ],
)

@define_variable(requested_period_default_value, f1tv, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1TV", 1 => "1UV"],
  input_variable = true,
  label = "Gains de levée d'options sur titres en cas de cession ou de conversion au porteur dans le délai d'indisponibilité: entre 1 et 2 ans",
)

@define_variable(requested_period_default_value, f1tw, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1TW", 1 => "1UW"],
  input_variable = true,
  label = "Gains de levée d'options sur titres en cas de cession ou de conversion au porteur dans le délai d'indisponibilité: entre 2 et 3 ans",
)

@define_variable(requested_period_default_value, f1tx, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1TX", 1 => "1UX"],
  input_variable = true,
  label = "Gains de levée d'options sur titres en cas de cession ou de conversion au porteur dans le délai d'indisponibilité: entre 3 et 4 ans",
)

@define_variable(requested_period_default_value, sal_pen_exo_etr, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "1AC", 1 => "1BC", 2 => "1CC", 3 => "1DC"],
  input_variable = true,
  label = "Salaires et pensions exonérés de source étrangère retenus pour le calcul du taux effectif",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_default_value, f3vd, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VD", 1 => "3SD"],
  input_variable = true,
  label = "Gains de levée d'options sur titres et gains d'acquisition d'actions taxables à 18 %",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, f3vf, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VF", 1 => "3SF"],
  input_variable = true,
  label = "Gains de levée d'options sur titres et gains d'acquisition d'actions taxables à 41 %",
)

@define_variable(requested_period_default_value, f3vi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VI", 1 => "3SI"],
  input_variable = true,
  label = "Gains de levée d'options sur titres et gains d'acquisition d'actions taxables à 30 %",
)

@define_variable(requested_period_default_value, f3vj, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VJ", 1 => "3VK"],
  input_variable = true,
  label = "Gains imposables sur option dans la catégorie des salaires",
)

@define_variable(requested_period_default_value, f3va, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "3VA", 1 => "3VB"],
  input_variable = true,
  label = "Abattement pour durée de détention des titres en cas de départ à la retraite d'un dirigeant appliqué sur des plus-values",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, f5qm, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QM", 1 => "5RM"],
  input_variable = true,
  label = "Agents généraux d’assurances: indemnités de cessation d’activité",
)

@define_variable(requested_period_default_value, ppe_du_ns, individu_definition, Int32,
  cerfa_field = [0 => "5NV", 1 => "5OV", 2 => "5PV"],
  input_variable = true,
  label = "Prime pour l'emploi des non-salariés: nombre de jours travaillés dans l'année",
  stop_date = Date(2006, 12, 31),
)

@define_variable(requested_period_last_value, ppe_tp_ns, individu_definition, Bool,
  cerfa_field = [0 => "5NW", 1 => "5OW", 2 => "5PW"],
  input_variable = true,
  label = "Prime pour l'emploi des non-salariés: indicateur de travail à temps plein sur l'année entière",
  stop_date = Date(2006, 12, 31),
)

@define_variable(requested_period_default_value, frag_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HN", 1 => "5IN", 2 => "5JN"],
  input_variable = true,
  label = "Revenus agricoles exonérés (régime du forfait)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, frag_impo, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HO", 1 => "5IO", 2 => "5JO"],
  input_variable = true,
  label = "Revenus agricoles imposables (régime du forfait)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, arag_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HB", 1 => "5IB", 2 => "5JB"],
  input_variable = true,
  label = "Revenus agricoles exonérés yc plus-values (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur), activités exercées en Corse",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, arag_impg, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HC", 1 => "5IC", 2 => "5JC"],
  input_variable = true,
  label = "Revenus agricoles imposables, cas général moyenne triennale (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, arag_defi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HF", 1 => "5IF", 2 => "5JF"],
  input_variable = true,
  label = "Déficits agricoles (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, nrag_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HH", 1 => "5IH", 2 => "5JH"],
  input_variable = true,
  label = "Revenus agricoles exonérés yc plus-values (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur), activités exercées en Corse",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, nrag_impg, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HI", 1 => "5II", 2 => "5JI"],
  input_variable = true,
  label = "Revenus agricoles imposables, cas général moyenne triennale (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, nrag_defi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HL", 1 => "5IL", 2 => "5JL"],
  input_variable = true,
  label = "Déficits agricoles (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, nrag_ajag, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HM", 1 => "5IM", 2 => "5JM"],
  input_variable = true,
  label = "Jeunes agriculteurs, Abattement de 50% ou 100% (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, ebic_impv, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TA", 1 => "5UA", 2 => "5VA"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels imposables: vente de marchandises et assimilées (régime auto-entrepreneur)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, ebic_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TB", 1 => "5UB", 2 => "5VB"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels imposables: prestations de services et locations meublées (régime auto-entrepreneur)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, ebnc_impo, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TE", 1 => "5UE", 2 => "5VE"],
  input_variable = true,
  label = "Revenus non commerciaux (régime auto-entrepreneur ayant opté pour le versement libératoire)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, mbic_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KN", 1 => "5LN", 2 => "5MN"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels nets exonérés (régime micro entreprise)",
)

@define_variable(requested_period_default_value, abic_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KB", 1 => "5LB", 2 => "5MB"],
  input_variable = true,
  label = "Revenus industriels et commerciaux nets exonérés yc plus-values avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nbic_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KH", 1 => "5LH", 2 => "5MH"],
  input_variable = true,
  label = "Revenus industriels et commerciaux nets exonérés yc plus-values sans CGA (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, mbic_impv, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KO", 1 => "5LO", 2 => "5MO"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels imposables: vente de marchandises (régime micro entreprise)",
)

@define_variable(requested_period_default_value, mbic_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KP", 1 => "5LP", 2 => "5MP"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels imposables: prestations de services et locations meublées (régime micro entreprise)",
)

@define_variable(requested_period_default_value, abic_impn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KC", 1 => "5LC", 2 => "5MC"],
  input_variable = true,
  label = "Revenus industriels et commerciaux imposables: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, abic_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KD", 1 => "5LD", 2 => "5MD"],
  input_variable = true,
  label = "Revenus industriels et commerciaux imposables: régime simplifié avec CGA ou viseur (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, nbic_impn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KI", 1 => "5LI", 2 => "5MI"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels imposables: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nbic_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KJ", 1 => "5LJ", 2 => "5MJ"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels imposables: régime simplifié sans CGA (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, nbic_mvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KJ", 1 => "5LJ", 2 => "5MJ"],
  input_variable = true,
  label = "Revenus industriels et commerciaux professionnels moins-values nettes à court terme",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, abic_defn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KF", 1 => "5LF", 2 => "5MF"],
  input_variable = true,
  label = "Déficits industriels et commerciaux: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, abic_defs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KG", 1 => "5LG", 2 => "5MG"],
  input_variable = true,
  label = "Déficits industriels et commerciaux: simplifié avec CGA ou viseur (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 1),
)

@define_variable(requested_period_default_value, nbic_defn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KL", 1 => "5LL", 2 => "5ML"],
  input_variable = true,
  label = "Déficits industriels et commerciaux: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nbic_defs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KL", 1 => "5LM", 2 => "5MM"],
  input_variable = true,
  label = "Locations déjà soumises aux prélèvements sociaux sans CGA (régime du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, nbic_apch, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KS", 1 => "5LS", 2 => "5MS"],
  input_variable = true,
  label = "Artisans pêcheurs : abattement 50% avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, macc_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NN", 1 => "5ON", 2 => "5PN"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels nets exonérés (régime micro entreprise)",
)

@define_variable(requested_period_default_value, aacc_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NB", 1 => "5OB", 2 => "5PB"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels exonérés yc plus-values avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nacc_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NH", 1 => "5OH", 2 => "5PH"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels exonérés yc plus-values sans CGA (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, macc_impv, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NO", 1 => "5OO", 2 => "5PO"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels imposables: vente de marchandises et assimilées (régime micro entreprise)",
)

@define_variable(requested_period_default_value, macc_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NP", 1 => "5OP", 2 => "5PP"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels imposables: prestations de services (régime micro entreprise)",
)

@define_variable(requested_period_default_value, aacc_impn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NC", 1 => "5OC", 2 => "5PC"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels imposables: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, aacc_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5ND", 1 => "5OD", 2 => "5PD"],
  input_variable = true,
  label = "Locations meublées non professionnelles (régime micro entreprise)",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, aacc_defn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NF", 1 => "5OF", 2 => "5PF"],
  input_variable = true,
  label = "Déficits industriels et commerciaux non professionnels: régime normal ou simplifié avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, aacc_gits, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NG", 1 => "5OG", 2 => "5PG"],
  input_variable = true,
  label = "Location de gîtes ruraux, chambres d'hôtes et meublés de tourisme (régime micro entreprise)",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, nacc_impn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NI", 1 => "5OI", 2 => "5PI"],
  input_variable = true,
  label = "Revenus industriels et commerciaux non professionnels imposables: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, aacc_defs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NG", 1 => "5OG", 2 => "5PG"],
  input_variable = true,
  label = "Déficits de revenus industriels et commerciaux non professionnels avec CGA (régime simplifié du bénéfice réel)",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, nacc_meup, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NJ", 1 => "5OJ", 2 => "5PJ"],
  input_variable = true,
  label = "Locations meublées non professionnelles: Locations déjà soumises aux prélèvements sociaux (régime micro entreprise)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, nacc_defn, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NL", 1 => "5OL", 2 => "5PL"],
  input_variable = true,
  label = "Déficits industriels et commerciaux non professionnels: régime normal ou simplifié sans CGA (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nacc_defs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NM", 1 => "5OM", 2 => "5PM"],
  input_variable = true,
  label = "Locations meublées non professionnelles: Gîtes ruraux et chambres d'hôtes déjà soumis aux prélèvements sociaux avec CGA (régime du bénéfice réel)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, mncn_impo, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KU", 1 => "5LU", 2 => "5MU"],
  input_variable = true,
  label = "Revenus non commerciaux non professionnels imposables (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, cncn_bene, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SN", 1 => "5NS", 2 => "5OS"],
  input_variable = true,
  label = "Revenus non commerciaux non professionnels imposables sans AA (régime de la déclaration controlée)",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, cncn_defi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SP", 1 => "5NU", 2 => "5OU"],
  input_variable = true,
  label = "Déficits non commerciaux non professionnels sans AA (régime de la déclaration controlée)",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, mbnc_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HP", 1 => "5IP", 2 => "5JP"],
  input_variable = true,
  label = "Revenus non commerciaux professionnels nets exonérés (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, abnc_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QB", 1 => "5RB", 2 => "5SB"],
  input_variable = true,
  label = "Revenus non commerciaux professionnels exonérés (yc compris plus-values) (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
)

@define_variable(requested_period_default_value, nbnc_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QH", 1 => "5RH", 2 => "5SH"],
  input_variable = true,
  label = "Revenus non commerciaux professionnels exonérés (yc compris plus-values) (régime de la déclaration controlée, revenus ne bénéficiant pas de l'abattement association agrée)",
)

@define_variable(requested_period_default_value, mbnc_impo, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HQ", 1 => "5IQ", 2 => "5JQ"],
  input_variable = true,
  label = "Revenus non commerciaux professionnels imposables (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, abnc_impo, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QC", 1 => "5RC", 2 => "5SC"],
  input_variable = true,
  label = "Revenus non commerciaux professionnels imposables (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
)

@define_variable(requested_period_default_value, abnc_defi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QE", 1 => "5RE", 2 => "5SE"],
  input_variable = true,
  label = "Déficits non commerciaux professionnels (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
)

@define_variable(requested_period_default_value, nbnc_impo, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QI", 1 => "5RI", 2 => "5SI"],
  input_variable = true,
  label = "Revenus non commerciaux professionnels imposables (régime de la déclaration controlée, revenus ne bénéficiant pas de l'abattement association agrée)",
)

@define_variable(requested_period_default_value, nbnc_defi, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QK", 1 => "5RK", 2 => "5SK"],
  input_variable = true,
  label = "Déficits non commerciaux professionnels (régime de la déclaration controlée, revenus ne bénéficiant pas de l'abattement association agrée)",
)

@define_variable(requested_period_default_value, mbnc_mvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KZ", 1 => "5LZ", 2 => "5MZ"],
  input_variable = true,
  label = "Moins-values non commerciales professionnelles nettes à court terme (régime déclaratif spécial ou micro BNC)",
  start_date = Date(2012, 1, 1),
)

@define_variable(requested_period_default_value, frag_pvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HW", 1 => "5IW", 2 => "5JW"],
  input_variable = true,
  label = "Plus-values agricoles  à court terme (régime du forfait)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, mbic_pvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KX", 1 => "5LX", 2 => "5MX"],
  input_variable = true,
  label = "Plus-values industrielles et commerciales professionnels imposables: plus-values nettes à court terme (régime micro entreprise)",
)

@define_variable(requested_period_default_value, macc_pvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NX", 1 => "5OX", 2 => "5PX"],
  input_variable = true,
  label = "Plus-values industrielles et commerciales non professionnelles imposables: plus-values nettes à court terme (régime micro entreprise)",
)

@define_variable(requested_period_default_value, mbnc_pvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HV", 1 => "5IV", 2 => "5JV"],
  input_variable = true,
  label = "Plus-values non commerciales professionnelles imposables et Plus-values nettes à court terme (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, mncn_pvct, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KY", 1 => "5LY", 2 => "5MY"],
  input_variable = true,
  label = "Plus-values non commerciales non professionnelles imposables et plus-values nettes à court terme (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, mbic_mvlt, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KR", 1 => "5LR", 2 => "5MR"],
  input_variable = true,
  label = "Moins-values industrielles et commerciales professionnels à long terme (régime micro entreprise)",
)

@define_variable(requested_period_default_value, macc_mvlt, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NR", 1 => "5OR", 2 => "5PR"],
  input_variable = true,
  label = "Moins-values industrielles et commerciales non professionnelles à long terme (régime micro entreprise)",
)

@define_variable(requested_period_default_value, mncn_mvlt, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KW", 1 => "5LW", 2 => "5MW"],
  input_variable = true,
  label = "Moins-values non commerciales non professionnelles à long terme (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, mbnc_mvlt, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HS", 1 => "5IS", 2 => "5JS"],
  input_variable = true,
  label = "Moins-values non commerciales professionnelles à long terme (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, frag_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HX", 1 => "5IX", 2 => "5JX"],
  input_variable = true,
  label = "Plus-values agricoles de cession taxables à 16% (régime du forfait)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, arag_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HE", 1 => "5IE", 2 => "5JE"],
  input_variable = true,
  label = "Plus-values agricoles de cession taxables à 16% (Régime du bénéfice réel, revenus bénéficiant de l'abattement CGA ou viseur)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, nrag_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HK", 1 => "5LK", 2 => "5JK"],
  input_variable = true,
  label = "Plus-values agricoles de cession taxables à 16% (Régime du bénéfice réel, revenus ne bénéficiant pas de l'abattement CGA ou viseur)",
  stop_date = Date(2006, 12, 31),
)

@define_variable(requested_period_default_value, mbic_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KQ", 1 => "5LQ", 2 => "5MQ"],
  input_variable = true,
  label = "Plus-values industrielles et commerciales professionnelles imposables: plus-values de cession taxables à 16% (régime micro entreprise)",
)

@define_variable(requested_period_default_value, abic_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KE", 1 => "5LE", 2 => "5ME"],
  input_variable = true,
  label = "Plus-values industrielles et commerciales de cession taxables à 16% avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nbic_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5IK", 1 => "5KK", 2 => "5MK"],
  input_variable = true,
  label = "Revenus non commerciaux non professionnels exonérés sans AA (régime de la déclaration controlée)",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, macc_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NQ", 1 => "5OQ", 2 => "5PQ"],
  input_variable = true,
  label = "Plus-values industrielles et commerciales non professionnelles imposables: plus-values de cession taxables à 16% (régime micro entreprise)",
)

@define_variable(requested_period_default_value, aacc_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NE", 1 => "5OE", 2 => "5PE"],
  input_variable = true,
  label = "Plus-values industrielles et commerciales non professionnelles de cession taxables à 16% avec CGA ou viseur (régime du bénéfice réel)",
)

@define_variable(requested_period_default_value, nacc_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NK", 1 => "5OK", 2 => "5PK"],
  input_variable = true,
  label = "Locations meublées non professionnelles: Revenus imposables sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, mncn_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KV", 1 => "5LV", 2 => "5MV"],
  input_variable = true,
  label = "Plus-values non commerciales non professionnelles de cession taxables à 16% (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, cncn_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SO", 1 => "5NT", 2 => "5OT"],
  input_variable = true,
  label = "Plus-values non commerciales non professionnelles taxables à 16% avec AA ou viseur (régime de la déclaration controlée)",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, mbnc_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HR", 1 => "5IR", 2 => "5JR"],
  input_variable = true,
  label = "Plus-values non commerciales professionnelles de cession taxables à 16% (régime déclaratif spécial ou micro BNC)",
)

@define_variable(requested_period_default_value, abnc_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QD", 1 => "5RD", 2 => "5SD"],
  input_variable = true,
  label = "Plus-values non commerciaux professionnels de cession taxables à 16% (régime de la déclaration controlée, revenus bénéficiant de l'abattement association agrée ou viseur)",
)

@define_variable(requested_period_default_value, nbnc_pvce, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QJ", 1 => "5RJ", 2 => "5SJ"],
  input_variable = true,
  label = "Déficits industriels et commerciaux: locations meublées sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, frag_fore, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HD", 1 => "5ID", 2 => "5JD"],
  input_variable = true,
  label = "Revenus des exploitants forestiers (régime du forfait)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, arag_sjag, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HZ", 1 => "5IZ", 2 => "5JZ"],
  input_variable = true,
  label = "Abattement pour les jeunes agriculteurs des revenus agricoles sans CGA (régime du bénéfice réel)",
  start_date = Date(2011, 1, 1),
)

@define_variable(requested_period_default_value, abic_impm, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HA", 1 => "5IA", 2 => "5JA"],
  input_variable = true,
  label = "Locations meublées imposables avec CGA ou viseur (régime du bénéfice réel pour les revenus industriels et commerciaux professionnels)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, nbic_impm, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5KA", 1 => "5LA", 2 => "5MA"],
  input_variable = true,
  label = "Locations meublées imposables sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, abic_defm, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QA", 1 => "5RA", 2 => "5SA"],
  input_variable = true,
  label = "Déficits de locations meubléesavec CGA ou viseur (régime du bénéfice réel pour les revenus industriels et commerciaux professionnels)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, alnp_imps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NA", 1 => "5OA", 2 => "5PA"],
  input_variable = true,
  label = "Locations meublées non professionnelles imposables avec CGA ou viseur (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, alnp_defs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NY", 1 => "5OY", 2 => "5PY"],
  input_variable = true,
  label = "Déficits de locations meublées non professionnelles avec CGA ou viseur (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, nlnp_defs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5NZ", 1 => "5OZ", 2 => "5PZ"],
  input_variable = true,
  label = "Déficits de locations meublées non professionnelles imposables sans CGA (régime du bénéfice réel)",
  start_date = Date(2009, 1, 1),
  stop_date = Date(2010, 12, 31),
)

@define_variable(requested_period_default_value, cbnc_assc, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5QM", 1 => "5RM"],
  input_variable = true,
  label = "Agents généraux d'assurances : indemnités de cessation d'activité (revenus non commerciaux professionnels, régime de la déclaration contrôlée)",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, abnc_proc, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TF", 1 => "5UF", 2 => "5VF"],
  input_variable = true,
  label = "Honoraires de prospection commerciale exonérés avec CGA ou viseur (revenus non commerciaux professionnels, régime de la déclaration contrôlée)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, nbnc_proc, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TI", 1 => "5UI", 2 => "5VI"],
  input_variable = true,
  label = "Honoraires de prospection commerciale exonérés sans CGA (revenus non commerciaux professionnels, régime de la déclaration contrôlée)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, mncn_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TH", 1 => "5UH", 2 => "5VH"],
  input_variable = true,
  label = "Revenus nets exonérés non commerciaux non professionnels (régime déclaratif spécial ou micro BNC)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, cncn_exon, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HK", 1 => "5JK", 2 => "5LK"],
  input_variable = true,
  label = "Revenus nets exonérés non commerciaux non professionnels (régime de la déclaration contrôlée)",
  start_date = Date(2008, 1, 1),
)

@define_variable(requested_period_default_value, cncn_aimp, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5JG", 1 => "5RF", 2 => "5SF"],
  input_variable = true,
  label = "Revenus imposables non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, cncn_adef, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5JJ", 1 => "5RG", 2 => "5SG"],
  input_variable = true,
  label = "Déficits non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2007, 1, 1),
)

@define_variable(requested_period_default_value, cncn_info, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5TC", 1 => "5UC", 2 => "5VC"],
  input_variable = true,
  label = "Inventeurs et auteurs de logiciels : produits taxables à 16%, revenus non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2009, 1, 1),
)

@define_variable(requested_period_default_value, cncn_jcre, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5SV", 1 => "5SW", 2 => "5SX"],
  input_variable = true,
  label = "Jeunes créateurs : abattement de 50%, revenus non commerciaux non professionnels avec CGA (régime de la déclaration contrôlée)",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, revimpres, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "5HY", 1 => "5IY", 2 => "5JY"],
  input_variable = true,
  label = "Revenus nets à imposer aux prélèvements sociaux",
)

@define_variable(requested_period_default_value, pveximpres, individu_definition, Int32,
  cerfa_field = [0 => "5HG", 1 => "5IG"],
  input_variable = true,
  label = "Plus-values à long terme exonérées en cas de départ à la retraite à imposer aux prélèvements sociaux",
  start_date = Date(2006, 1, 1),
)

@define_variable(requested_period_default_value, pvtaimpres, individu_definition, Int32,
  cerfa_field = [0 => "5HZ", 1 => "5IZ", 2 => "5JZ"],
  input_variable = true,
  label = "Plus-values à long terme taxables à 16% à la retraite à imposer aux prélèvements sociaux",
  stop_date = Date(2009, 12, 31),
)

@define_variable(requested_period_default_value, f6ps, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "6PS", 1 => "6PT", 2 => "6PU"],
  input_variable = true,
  label = "Plafond de déduction épargne retraite (plafond calculé sur les revenus perçus en n-1)",
)

@define_variable(requested_period_default_value, f6rs, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "6RS", 1 => "6RT", 2 => "6RU"],
  input_variable = true,
  label = "Cotisations d'épargne retraite versées au titre d'un PERP, PREFON, COREM et C.G.O.S",
)

@define_variable(requested_period_default_value, f6ss, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "6SS", 1 => "6ST", 2 => "6SU"],
  input_variable = true,
  label = "Rachat de cotisations PERP, PREFON, COREM et C.G.O.S",
)

@define_variable(requested_period_default_value, f7ac, individu_definition, Int32,
  cell_format = "monetary",
  cerfa_field = [0 => "7AC", 1 => "7AE", 2 => "7AG"],
  input_variable = true,
  label = "Cotisations syndicales des salariées et pensionnés",
  start_date = Date(2013, 1, 1),
)

@define_variable(requested_period_last_value, allegement_fillon_mode_recouvrement, individu_definition, Int16,
  input_variable = true,
  label = "Mode de recouvrement des allègements Fillon",
  values = [
    "fin_d_annee" => 0,
    "anticipe_regularisation_fin_de_periode" => 1,
    "progressif" => 2,
  ],
)

@define_variable(requested_period_default_value, arrco_tranche_a_taux_employeur, individu_definition, Float32,
  input_variable = true,
  label = "Taux ARRCO tranche A employeur) propre à l'entreprise",
)

@define_variable(requested_period_default_value, arrco_tranche_a_taux_salarie, individu_definition, Float32,
  input_variable = true,
  label = "Taux ARRCO tranche A salarié) propre à l'entreprise",
)

@define_variable(requested_period_last_value, assujettie_taxe_salaires, individu_definition, Bool,
  input_variable = true,
  label = "Entreprise assujettie à la taxe sur les salaires",
)

@define_variable(requested_period_last_value, avantages_en_nature_valeur_reelle, individu_definition, Bool,
  input_variable = true,
  label = "Avantages en nature (Valeur réelle)",
)

@define_variable(requested_period_last_value, contrat_de_travail, individu_definition, Int16,
  input_variable = true,
  label = "Type contrat de travail",
  values = [
    "temps_plein" => 0,
    "temps_partiel" => 1,
    "forfait_heures_semaines" => 2,
    "forfait_heures_mois" => 3,
    "forfait_heures_annee" => 4,
    "forfait_jours_annee" => 5,
  ],
)

@define_variable(requested_period_last_value, contrat_de_travail_arrivee, individu_definition, Date,
  cell_default = Date(1870, 1, 1),
  cell_format = "date",
  input_variable = true,
  label = "Date d'arrivée dans l'entreprise",
)

@define_variable(requested_period_last_value, contrat_de_travail_depart, individu_definition, Date,
  cell_default = Date(2099, 12, 31),
  cell_format = "date",
  input_variable = true,
  label = "Date de départ de l'entreprise",
)

@define_variable(requested_period_last_value, contrat_de_travail_duree, individu_definition, Int16,
  input_variable = true,
  label = "Type (durée determinée ou indéterminée) du contrat de travail",
  values = [
    "cdi" => 0,
    "cdd" => 1,
  ],
)

@define_variable(requested_period_default_value, effectif_entreprise, individu_definition, Int32,
  input_variable = true,
  label = "Effectif de l'entreprise",
)

@define_variable(requested_period_last_value, localisation_entreprise, individu_definition, UTF8String,
  input_variable = true,
  label = "Localisation entreprise",
)

@define_variable(requested_period_default_value, nombre_tickets_restaurant, individu_definition, Int32,
  input_variable = true,
  label = "Nombre de tickets restaurant",
)

@define_variable(requested_period_default_value, prevoyance_obligatoire_cadre_taux_employe, individu_definition, Float32,
  cell_default = 0.015,
  input_variable = true,
  label = "Taux de cotisation employeur pour la prévoyance obligatoire des cadres",
)

@define_variable(requested_period_default_value, prevoyance_obligatoire_cadre_taux_employeur, individu_definition, Float32,
  cell_default = 0.015,
  input_variable = true,
  label = "Taux de cotisation employeur pour la prévoyance obligatoire des cadres",
)

@define_variable(requested_period_default_value, primes_salaires, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités, primes et avantages en argent",
)

@define_variable(requested_period_default_value, prise_en_charge_employeur_prevoyance_complementaire, individu_definition, Float32,
  input_variable = true,
  label = "Part salariale des cotisations de prévoyance complémentaire prise en charge par l'employeur",
)

@define_variable(requested_period_default_value, prise_en_charge_employeur_retraite_complementaire, individu_definition, Float32,
  input_variable = true,
  label = "Part salariale des cotisations de retraite complémentaire prise en charge par l'employeur",
)

@define_variable(requested_period_default_value, prise_en_charge_employeur_retraite_supplementaire, individu_definition, Float32,
  input_variable = true,
  label = "Part salariale des cotisations de retraite supplémentaire prise en charge par l'employeur",
)

@define_variable(requested_period_default_value, ratio_alternants, individu_definition, Float32,
  input_variable = true,
  label = "Ratio d'alternants dans l'effectif moyen",
)

@define_variable(requested_period_last_value, redevable_taxe_apprentissage, individu_definition, Bool,
  cell_default = true,
  input_variable = true,
  label = "Entreprise redevable de la taxe d'apprentissage",
)

@define_variable(requested_period_default_value, remboursement_transport_base, individu_definition, Float32,
  input_variable = true,
  label = "Base pour le calcul du remboursement des frais de transport",
)

@define_variable(requested_period_default_value, indemnites_forfaitaires, individu_definition, Float32,
  input_variable = true,
  label = "Indemnités forfaitaires (transport, nourriture)",
)

@define_variable(requested_period_default_value, salaire_de_base, individu_definition, Float32,
  input_variable = true,
  label = "Salaire de base",
)

@define_variable(requested_period_default_value, titre_restaurant_taux_employeur, individu_definition, Float32,
  cell_default = 0.5,
  input_variable = true,
  label = "Taux de participation de l'employeur au titre restaurant",
)

@define_variable(requested_period_default_value, titre_restaurant_valeur_unitaire, individu_definition, Float32,
  input_variable = true,
  label = "Valeur faciale unitaire du titre restaurant",
)

@define_variable(requested_period_default_value, titre_restaurant_volume, individu_definition, Int32,
  input_variable = true,
  label = "Volume des titres restaurant",
)

@define_variable(requested_period_last_value, type_sal, individu_definition, Int16,
  input_variable = true,
  label = "Catégorie de salarié",
  values = [
    "prive_non_cadre" => 0,
    "prive_cadre" => 1,
    "public_titulaire_etat" => 2,
    "public_titulaire_militaire" => 3,
    "public_titulaire_territoriale" => 4,
    "public_titulaire_hospitaliere" => 5,
    "public_non_titulaire" => 6,
  ],
)

@define_variable(requested_period_default_value, heures_duree_collective_entreprise, individu_definition, Int32,
  input_variable = true,
  label = "Durée mensuelle collective dans l'entreprise (heures, temps plein)",
)

@define_variable(requested_period_default_value, heures_non_remunerees_volume, individu_definition, Float32,
  input_variable = true,
  label = "Volume des heures non rémunérées (convenance personnelle hors contrat/forfait)",
)

@define_variable(requested_period_default_value, heures_remunerees_volume, individu_definition, Int32,
  input_variable = true,
  label = "Volume des heures rémunérées contractuellement (heures/mois, temps partiel)",
)

@define_variable(requested_period_default_value, forfait_heures_remunerees_volume, individu_definition, Int32,
  input_variable = true,
  label = "Volume des heures rémunérées à un forfait heures",
)

@define_variable(requested_period_default_value, forfait_jours_remuneres_volume, individu_definition, Int32,
  input_variable = true,
  label = "Volume des heures rémunérées à forfait jours",
)

@define_variable(requested_period_default_value, volume_jours_ijss, individu_definition, Int32,
  input_variable = true,
  label = "Volume des jours pour lesquels sont versés une idemnité journalière par la sécurité sociale",
)

@define_variable(permanent_default_value, tns_chiffre_affaires_micro_entreprise, individu_definition, Float32,
  input_variable = true,
  label = "Chiffre d'affaires de micro-entreprise ou assimilée",
  permanent = true,
)

@define_variable(permanent_default_value, tns_autres_revenus, individu_definition, Float32,
  input_variable = true,
  label = "Autres revenus non salariés",
  permanent = true,
)

@define_variable(permanent_default_value, tns_type_structure, individu_definition, Int16,
  cell_default = 1,
  input_variable = true,
  label = "Type de structure associée au travailleur non salarié",
  permanent = true,
  values = [
    "auto_entrepreneur" => 0,
    "micro_entreprise" => 1,
  ],
)

@define_variable(permanent_default_value, tns_type_activite, individu_definition, Int16,
  input_variable = true,
  label = "Valeur locative des biens immobiliés possédés et non loués",
  permanent = true,
  values = [
    "achat_revente" => 0,
    "bic" => 1,
    "bnc" => 2,
  ],
)

@define_variable(requested_period_last_value, scolarite, individu_definition, Int16,
  input_variable = true,
  label = "Scolarité de l'enfant : collège, lycée...",
  values = [
    "Inconnue" => 0,
    "Collège" => 1,
    "Lycée" => 2,
  ],
)

@define_variable(requested_period_default_value, coefficient_proratisation, individu_definition, Float32,
  input_variable = true,
  label = "Coefficient de proratisation pour le calcul du SMIC et du plafond de la Sécurité socialele",
)

@define_variable(requested_period_default_value, nombre_jours_calendaires, individu_definition, Float32,
  input_variable = true,
  label = "Nombre de jours calendaires travaillés",
)

@define_variable(requested_period_last_value, inapte_travail, individu_definition, Bool,
  input_variable = true,
  label = "Reconnu inapte au travail",
)

@define_variable(permanent_default_value, nom_famille, famille_definition, UTF8String,
  input_variable = true,
  label = "Nom",
  permanent = true,
)

@define_variable(requested_period_last_value, inactif, famille_definition, Bool,
  input_variable = true,
  label = "Parent inactif (PAJE-CLCA)",
)

@define_variable(requested_period_last_value, partiel1, famille_definition, Bool,
  input_variable = true,
  label = "Parent actif à moins de 50% (PAJE-CLCA)",
)

@define_variable(requested_period_last_value, partiel2, famille_definition, Bool,
  input_variable = true,
  label = "Parent actif entre 50% et 80% (PAJE-CLCA)",
)

@define_variable(requested_period_last_value, opt_colca, famille_definition, Bool,
  input_variable = true,
  label = "Opte pour le COLCA",
)

@define_variable(requested_period_last_value, empl_dir, famille_definition, Bool,
  input_variable = true,
  label = "Emploi direct (CLCMG)",
)

@define_variable(requested_period_last_value, ass_mat, famille_definition, Bool,
  input_variable = true,
  label = "Assistante maternelle (CLCMG)",
)

@define_variable(requested_period_last_value, gar_dom, famille_definition, Bool,
  input_variable = true,
  label = "Garde à domicile (CLCMG)",
)

@define_variable(requested_period_last_value, proprietaire_proche_famille, famille_definition, Bool,
  input_variable = true,
  label = "Le propriétaire du logement a un lien de parenté avec la personne de référence ou son conjoint",
)

@define_variable(permanent_default_value, nom_menage, menage_definition, UTF8String,
  input_variable = true,
  label = "Nom",
  permanent = true,
)

@define_variable(requested_period_default_value, zthabm, menage_definition, Int32,
  input_variable = true,
)

@define_variable(requested_period_default_value, loyer, menage_definition, Int32,
  cell_format = "monetary",
  input_variable = true,
  label = "Loyer mensuel",
)

@define_variable(requested_period_last_value, so, menage_definition, Int16,
  input_variable = true,
  label = "Statut d'occupation",
  values = [
    "Non renseigné" => 0,
    "Accédant à la propriété" => 1,
    "Propriétaire (non accédant) du logement" => 2,
    "Locataire d'un logement HLM" => 3,
    "Locataire ou sous-locataire d'un logement loué vide non-HLM" => 4,
    "Locataire ou sous-locataire d'un logement loué meublé ou d'une chambre d'hôtel" => 5,
    "Logé gratuitement par des parents, des amis ou l'employeur" => 6,
  ],
)

@define_variable(requested_period_last_value, depcom, menage_definition, UTF8String,
  input_variable = true,
  label = "Code INSEE (depcom) du lieu de résidence",
  value_at_period_to_cell = variable_definition::VariableDefinition -> pipe(
    condition(
      test_isa(Integer),
      call(string),
      test_isa(String),
      noop,
      fail(error = N_("Unexpected type for Insee depcom.")),
    ),
    condition(
      test(value -> length(value) == 4),
      call(value -> string('0', value)),
    ),
    test(value -> ismatch(r"^(\d{2}|2A|2B)\d{3}$", value),
      error = N_("Invalid Insee depcom format for commune.")),
  ),
)
