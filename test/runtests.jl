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


using Base.Test

importall Biryani
importall Biryani.DatesConverters
import Dates: Date
importall YAML

importall OpenFiscaCore
importall OpenFiscaFrance


# Technical Tests
include("test_age.jl")
include("test_scenarios.jl")

# Functional Tests
include("test_fiche_de_paie.jl")
include("test_impot_revenu_personnes_physiques.jl")
include("test_niches.jl")
