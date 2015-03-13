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


include("formulas/mesures.jl")
include("formulas/pfam.jl")
include("formulas/prelevements_obligatoires/impot_revenu/charges_deductibles.jl")
include("formulas/prelevements_obligatoires/impot_revenu/credits_impot.jl")
include("formulas/prelevements_obligatoires/impot_revenu/ir.jl")
include("formulas/prelevements_obligatoires/impot_revenu/plus_values_immobilieres.jl")
include("formulas/prelevements_obligatoires/impot_revenu/reductions_impot.jl")
include("formulas/prelevements_obligatoires/isf.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/contributions_sociales/activite.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/contributions_sociales/base.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/contributions_sociales/capital.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/contributions_sociales/remplacement.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/allegements.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/base.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/remuneration_prive.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/remuneration_public.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/travail_fonction_publique.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/travail_prive.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/cotisations_sociales/travail_totaux.jl")
include("formulas/prelevements_obligatoires/prelevements_sociaux/taxes_salaires_main_oeuvre.jl")
include("formulas/prelevements_obligatoires/taxe_habitation.jl")
include("formulas/prestations/aides_logement.jl")
include("formulas/prestations/education.jl")
include("formulas/prestations/minima_sociaux/asi_aspa.jl")
include("formulas/prestations/minima_sociaux/ass.jl")
include("formulas/prestations/minima_sociaux/cmu.jl")
include("formulas/prestations/minima_sociaux/rsa.jl")
include("formulas/prestations/prestations_familiales/aeeh.jl")
include("formulas/prestations/prestations_familiales/af.jl")
include("formulas/prestations/prestations_familiales/ars.jl")
include("formulas/prestations/prestations_familiales/asf.jl")
include("formulas/prestations/prestations_familiales/cf.jl")
include("formulas/prestations/prestations_familiales/paje.jl")
include("formulas/revenus/activite/non_salarie.jl")
