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


function montant_csg_crds(; base_avec_abattement = nothing, base_sans_abattement = nothing, indicatrice_taux_plein = nothing, indicatrice_taux_reduit = nothing, law_node = nothing, plafond_securite_sociale = nothing)
  @assert law_node !== nothing
  @assert plafond_securite_sociale !== nothing
  if base_sans_abattement === nothing
    base_sans_abattement = 0
  end
  if base_avec_abattement === nothing
    base = base_sans_abattement
  else
    base = base_avec_abattement .- apply_tax_scale(law_node["abattement"], base_avec_abattement, factor = plafond_securite_sociale, round_base_decimals = 2) .+ base_sans_abattement
  end
  if indicatrice_taux_plein === nothing && indicatrice_taux_reduit === nothing
    return -law_node["taux"] .* base
  else
    return -(law_node["taux_plein"] .* indicatrice_taux_plein .+ law_node["taux_reduit"] .* indicatrice_taux_reduit) .* base
  end
end
