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


module OpenFiscaFrance


export tax_benefit_system


using Dates

using OpenFiscaCore


typealias Enumeration Dict{Int, String}


variables_definition = VariableDefinition[]


macro register_variable(variable_definition)
  global variables_definition

  return esc(:(push!(variables_definition, $variable_definition)))
end


famille = EntityDefinition("famille", index_variable_name = "idfam", role_variable_name ="quifam")
foyer_fiscal = EntityDefinition("foyer_fiscal", index_variable_name = "idfoy", role_variable_name ="quifoy")
individu = EntityDefinition("individu", is_person = true)
menage = EntityDefinition("menage", index_variable_name = "idmen", role_variable_name ="quimen")


include("input_variables.jl")


tax_benefit_system = TaxBenefitSystem([famille, foyer_fiscal, individu, menage], variables_definition)


end # module
