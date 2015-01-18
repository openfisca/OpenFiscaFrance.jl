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


function build_pat(legislation)
  """Construis les barèmes des cotisations patronales à partir de la législation cotsoc.pat."""
  pat = deepcopy(legislation["cotsoc"]["pat"])
  commun = pop!(pat, "commun")

  for common_node_name in ["apprentissage_node", "formprof_node", "construction_node"]
    merge!(commun, pop!(commun, common_node_name))
  end

  merge!(pat["fonc"]["contract"], commun)
  pat["prive_cadre"] = pop!(pat, "cadre")
  merge!(pat["prive_cadre"], commun)
  pat["prive_non_cadre"] = pop!(pat, "noncadre")
  merge!(pat["prive_non_cadre"], commun)

  # Modifie commun afin de l'adapter à la fonction publique.
  for name in ["apprentissage", "apprentissage_add", "assedic", "chomfg", "construction", "maladie", "formprof_09",
      "formprof_1019", "formprof_20", "vieillessedeplaf", "vieillesseplaf"]
    delete!(commun, name)
  end

  # Supprime de pat.fonc.contract les éléments en trop qui y ont été mis ci-dessus.
  for name in ["apprentissage", "apprentissage_add", "assedic", "chomfg", "construction", "formprof_09",
      "formprof_1019", "formprof_20"]
    delete!(pat["fonc"]["contract"], name)
  end

  pat["public_non_titulaire"] = pop!(pat["fonc"], "contract")

  pat["public_titulaire_etat"] = pop!(pat["fonc"], "etat")
  merge!(pat["public_titulaire_etat"], commun)

  pat["public_titulaire_territoriale"] = pop!(pat["fonc"], "colloc")
  merge!(pat["public_titulaire_territoriale"], commun)

  pat["public_titulaire_hospitaliere"] = deepcopy(pat["public_titulaire_territoriale"])
  for category in ["territoriale", "hospitaliere"]
    node_name = string("public_titulaire_", category)
    for (tax_scale_name, tax_scale) in pop!(pat[node_name], category)
      pat[node_name][tax_scale_name] = tax_scale
    end
  end

  return pat
end


function build_sal(legislation)
  """Construis les barèmes des cotisations salariales à partir de la législation cotsoc.sal."""
  sal = deepcopy(legislation["cotsoc"]["sal"])
  commun = pop!(sal, "commun")

  sal["prive_cadre"] = pop!(sal, "cadre")
  merge!(sal["prive_cadre"], commun)
  sal["prive_noncadre"] = pop!(sal, "noncadre")
  merge!(sal["prive_noncadre"], commun)

  sal["public_non_titulaire"] = pop!(sal["fonc"], "contract")
  merge!(sal["public_non_titulaire"], commun)
  delete!(sal["public_non_titulaire"], "arrco")
  delete!(sal["public_non_titulaire"], "assedic")

  sal["public_titulaire_etat"] = pop!(sal["fonc"], "etat")
  sal["public_titulaire_hospitaliere"] = sal["fonc"]["colloc"]
  sal["public_titulaire_territoriale"] = pop!(sal["fonc"], "colloc")

  for category in [
        "public_titulaire_etat",
        "public_titulaire_territoriale",
        "public_titulaire_hospitaliere",
        "public_non_titulaire",
      ]
    sal[category]["excep_solidarite"] = sal["fonc"]["commun"]["solidarite"]
  end

  return sal
end


function preprocess(legislation::Legislation)
  """Construis les barèmes des cotisations sociales dans la législation complète."""
  pat = build_pat(legislation)
  sal = build_sal(legislation)

  cotsoc = legislation["cotsoc"]
  cotsoc["cotisations_employeur"] = Legislation()
  cotsoc["cotisations_salarie"] = Legislation()
  for (cotisation_name, tax_scales) in (("cotisations_employeur", pat), ("cotisations_salarie", sal))
    for (category, tax_scale) in tax_scales
      if category in keys(CAT)
        cotsoc[cotisation_name][category] = tax_scale
      end
    end
  end
end
