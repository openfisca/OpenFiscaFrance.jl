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


function compute_taux_exoneration(assiette_allegement, smic_proratise, taux_max, seuil_max; seuil_min = 1)
  ratio_smic_salaire = smic_proratise ./ (assiette_allegement .+ 1e-16)
  return round(taux_max .* min(1, max(seuil_max .* seuil_min .* ratio_smic_salaire .- seuil_min, 0) ./ (seuil_max - seuil_min)), 4)
end


function exoneration_relative_year(period, other_date)
  return floor(int((period.start .+ timedelta64(1, "D") .- other_date)) / 365.25)
end
