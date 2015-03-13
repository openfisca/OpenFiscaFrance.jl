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


@define_formula(casa, individu_definition, Float32, requested_period_default_value,
  label = "Contribution additionnelle de solidarité et d'autonomie",
  url = "http://www.service-public.fr/actualites/002691.html",
) do simulation, variable, period
  if Date(2013, 4, 1) <= period.start
    period = MonthPeriod(firstdayofmonth(period.start))
    @calculate(rstbrut, period)
    irpp_holder = calculate(simulation, "irpp", period)
    @calculate(csg_rempl, period)
    law = legislation_at(simulation, period.start)
    irpp = entity_to_person(irpp_holder, period)
    casa = (csg_rempl .== 3) .* law["prelsoc"]["add_ret"] .* rstbrut .* (irpp .> law["ir"]["recouvrement"]["seuil"])
    return period, -casa
  else
    return period, default_array(variable)
  end
end


@define_formula(cho, individu_definition, Float32, requested_period_default_value,
  label = "Allocations chômage imposables",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/chomage.htm",
) do simulation, variable, period
  period = period
  @calculate(chobrut, period)
  @calculate_add(csgchod, period)
  return period, chobrut .+ csgchod
end


@define_formula(chonet, individu_definition, Float32, requested_period_default_value,
  label = "Allocations chômage nettes",
  url = "http://vosdroits.service-public.fr/particuliers/N549.xhtml",
) do simulation, variable, period
  period = period
  @calculate(cho, period)
  @calculate_add(csgchoi, period)
  @calculate_add(crdscho, period)
  return period, cho .+ csgchoi .+ crdscho
end


@define_formula(crdscho, individu_definition, Float32, requested_period_default_value,
  label = "CRDS sur les allocations chômage",
  url = "http://www.insee.fr/fr/methodes/default.asp?page=definitions/contrib-remb-dette-sociale.htm",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(chobrut, period)
  @calculate(csg_rempl, period)
  law = legislation_at(simulation, period.start)
  isexo = exo_csg_chom(chobrut, csg_rempl, law)
  crdscho = crdscho_sans_exo(chobrut, csg_rempl, law) .* !isexo
  return period, crdscho
end


function crdscho_sans_exo(chobrut, csg_rempl, law)
  "CRDS sur les allocations chômage sans exonération"
  montant_crds = montant_csg_crds(base_avec_abattement = chobrut, law_node = law["crds"]["activite"], plafond_securite_sociale = law["cotsoc"]["gen"]["plafond_securite_sociale"])
  return montant_crds .* (2 .<= csg_rempl)
end


@define_formula(crdsrst, individu_definition, Float32, requested_period_default_value,
  label = "CRDS sur les pensions de retraite",
  url = "http://www.pensions.bercy.gouv.fr/vous-%C3%AAtes-retrait%C3%A9-ou-pensionn%C3%A9/le-calcul-de-ma-pension/les-pr%C3%A9l%C3%A8vements-effectu%C3%A9s-sur-ma-pension",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rstbrut, period)
  @calculate(csg_rempl, period)
  law = legislation_at(simulation, period.start)
  montant_crds = montant_csg_crds(base_sans_abattement = rstbrut, law_node = law["crds"]["retraite"], plafond_securite_sociale = law["cotsoc"]["gen"]["plafond_securite_sociale"]) .* (csg_rempl .== 1)
  return period, montant_crds
end


@define_formula(csgchod, individu_definition, Float32, requested_period_default_value,
  label = "CSG déductible sur les allocations chômage",
  url = "http://vosdroits.service-public.fr/particuliers/F2329.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(chobrut, period)
  @calculate(csg_rempl, period)
  law = legislation_at(simulation, period.start)
  isexo = exo_csg_chom(chobrut, csg_rempl, law)
  csgchod = csgchod_sans_exo(chobrut, csg_rempl, law) .* !isexo
  return period, csgchod
end


function csgchod_sans_exo(chobrut, csg_rempl, law)
  "CSG déductible sur les allocations chômage sans exonération"
  montant_csg = montant_csg_crds(base_avec_abattement = chobrut, indicatrice_taux_plein = (csg_rempl .== 3), indicatrice_taux_reduit = (csg_rempl .== 2), law_node = law["csg"]["chomage"]["deductible"], plafond_securite_sociale = law["cotsoc"]["gen"]["plafond_securite_sociale"])
  return montant_csg
end


@define_formula(csgchoi, individu_definition, Float32, requested_period_default_value,
  label = "CSG imposable sur les allocations chômage",
  url = "http://vosdroits.service-public.fr/particuliers/F2329.xhtml",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(chobrut, period)
  @calculate(csg_rempl, period)
  law = legislation_at(simulation, period.start)
  isexo = exo_csg_chom(chobrut, csg_rempl, law)
  csgchoi = csgchoi_sans_exo(chobrut, law) .* !isexo
  return period, csgchoi
end


function csgchoi_sans_exo(chobrut, law)
  "CSG imposable sur les allocations chômage sans exonération"
  montant_csg = montant_csg_crds(base_avec_abattement = chobrut, law_node = law["csg"]["chomage"]["imposable"], plafond_securite_sociale = law["cotsoc"]["gen"]["plafond_securite_sociale"])
  return montant_csg
end


@define_formula(csgrstd, individu_definition, Float32, requested_period_default_value,
  label = "CSG déductible sur les pensions de retraite",
  url = "https://www.lassuranceretraite.fr/cs/Satellite/PUBPrincipale/Retraites/Paiement-Votre-Retraite/Prelevements-Sociaux?packedargs=null",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rstbrut, period)
  @calculate(csg_rempl, period)
  law = legislation_at(simulation, period.start)
  montant_csg = montant_csg_crds(base_sans_abattement = rstbrut, indicatrice_taux_plein = (csg_rempl .== 3), indicatrice_taux_reduit = (csg_rempl .== 2), law_node = law["csg"]["retraite"]["deductible"], plafond_securite_sociale = law["cotsoc"]["gen"]["plafond_securite_sociale"])
  return period, montant_csg
end


@define_formula(csgrsti, individu_definition, Float32, requested_period_default_value,
  label = "CSG imposable sur les pensions de retraite",
  url = "https://www.lassuranceretraite.fr/cs/Satellite/PUBPrincipale/Retraites/Paiement-Votre-Retraite/Prelevements-Sociaux?packedargs=null",
) do simulation, variable, period
  period = MonthPeriod(firstdayofmonth(period.start))
  @calculate(rstbrut, period)
  law = legislation_at(simulation, period.start)
  montant_csg = montant_csg_crds(base_sans_abattement = rstbrut, law_node = law["csg"]["retraite"]["imposable"], plafond_securite_sociale = law["cotsoc"]["gen"]["plafond_securite_sociale"])
  return period, montant_csg
end


function exo_csg_chom(chobrut, csg_rempl, law)
  "Indicatrice d'exonération de la CSG sur les revenus du chômage sans exonération"
  chonet_sans_exo = (chobrut .+ csgchod_sans_exo(chobrut, csg_rempl, law) .+ csgchoi_sans_exo(chobrut, law) .+ crdscho_sans_exo(chobrut, csg_rempl, law))
  nbh_travail = 35 * 52 / 12
  cho_seuil_exo = law["csg"]["chomage"]["min_exo"] * nbh_travail * law["cotsoc"]["gen"]["smic_h_b"]
  return (chonet_sans_exo .<= cho_seuil_exo)
end


@define_formula(rst, individu_definition, Float32, requested_period_default_value,
  label = "Pensions de retraite imposables",
  url = "http://vosdroits.service-public.fr/particuliers/F415.xhtml",
) do simulation, variable, period
  period = period
  @calculate(rstbrut, period)
  @calculate_add(csgrstd, period)
  return period, rstbrut .+ csgrstd
end


@define_formula(rstnet, individu_definition, Float32, requested_period_default_value,
  label = "Pensions de retraite nettes",
  url = "http://vosdroits.service-public.fr/particuliers/N20166.xhtml",
) do simulation, variable, period
  period = period
  @calculate(rst, period)
  @calculate_add(csgrsti, period)
  @calculate_add(crdsrst, period)
  return period, rst .+ csgrsti .+ crdsrst
end
