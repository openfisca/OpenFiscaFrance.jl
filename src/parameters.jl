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


al_R1_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.88),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R1 (% du RMI) ; Taux pour 1 adulte",
)

al_R1_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 1.26),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R1 (% du RMI) ; Taux pour 2 adultes",
)

al_R1_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 1.503),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R1 (% du RMI) ; Taux pour 1 enfant",
)

al_R1_taux4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 1.803),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R1 (% du RMI) ; Taux pour 2 enfants",
)

al_R1_taux5 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R1 (% du RMI) ; Taux par enfants supplémentaires",
)

al_R2_taux4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.32),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R2 (% de la BMAF) ; Taux pour 2 enfants",
)

al_R2_taux5 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.41),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; R2 (% de la BMAF) ; Taux par enfants supplémentaires",
)

al_TF_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0354),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0283),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux pour 1 adulte",
)

al_TF_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2007, 06, 30), 0.0394),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0315),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux pour 2 adultes",
)

al_TF_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0338),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.027),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux pour 1 enfant",
)

al_TF_taux4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0297),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0238),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux pour 2 enfants",
)

al_TF_taux5 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0251),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0201),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux pour 3 enfants",
)

al_TF_taux6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0231),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0185),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux pour 4 enfants",
)

al_TF_taux7 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), -0.0007),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), -0.0006),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux dépendant de la taille du ménage ; Taux par enfant supplémentaire",
)

al_TL_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux complémentaire ; Tranche 00-45%",
)

al_TL_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0056),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0045),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux complémentaire ; Tranche 45-75%",
)

al_TL_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 0.0085),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.0068),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Taux complémentaire ; Tranche 75-max",
)

al_autres_D_enfch = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Autres dispositions communes ; Enfants comptés à charge (pour scénario de réforme)",
)

al_autres_abat_sal = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.28),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Autres dispositions communes ; Abattement salarié",
)

al_autres_nr_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2010, 12, 31), 16),
    DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 21),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Autres dispositions communes ; Seuil de non recouvrement",
)

al_autres_nv_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2004, 06, 30), 15),
    DateRangeValue(Date(2004, 07, 01), Date(2006, 12, 31), 24),
    DateRangeValue(Date(2007, 01, 01), Date(2014, 12, 31), 15),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Autres dispositions communes ; Seuil de non versement",
)

al_forfait_charges_fc1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 46.5),
    DateRangeValue(Date(2002, 07, 01), Date(2006, 12, 31), 46.97),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 47.82),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 49.14),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 50.59),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 50.75),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 51.31),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 51.82),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 52.93),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Forfait de charge ; Cas général - isolé ou couple",
)

al_forfait_charges_fc2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 10.52),
    DateRangeValue(Date(2002, 07, 01), Date(2006, 12, 31), 10.63),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 10.82),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 11.12),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 11.45),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 11.49),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 11.62),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 11.74),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 11.99),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Forfait de charge ; Cas général - par personne à charge supplémentaire",
)

al_loyers_plafond_autre = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Si article L.351-15",
)

al_loyers_plafond_chambre = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.9),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Si chambre",
)

al_loyers_plafond_colocation = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Si co-location",
)

al_loyers_plafond_zone1_L1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 243.31),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 248.1),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 251.16),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 255.68),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 262.84),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 270.09),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 278.06),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 278.95),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 282.02),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 284.84),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 290.96),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 1 ; Zone 1 - 1 adulte",
)

al_loyers_plafond_zone1_L2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 293.46),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 299.33),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 302.92),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 308.37),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 317.0),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 325.75),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 335.36),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 336.43),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 340.13),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 343.53),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 350.92),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 1 ; Zone 1 - 2 adultes",
)

al_loyers_plafond_zone1_L3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 330.05),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 334.01),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 342.36),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 348.52),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 358.28),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 368.17),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 379.03),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 380.24),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 384.42),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 388.26),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 396.61),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 1 ; Zone 1 - 1 enfant",
)

al_loyers_plafond_zone1_L4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 47.87),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 48.44),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 49.65),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 50.54),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 51.96),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 53.39),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 54.97),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 55.15),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 55.76),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 56.32),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 57.53),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 1 ; Zone 1 - enfants supplémentaires",
)

al_loyers_plafond_zone2_L1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 213.73),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 216.29),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 218.89),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 222.83),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 229.07),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 235.39),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 242.33),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 243.11),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 245.78),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 248.24),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 253.58),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 2 ; Zone 2 - 1 adulte",
)

al_loyers_plafond_zone2_L2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 261.6),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 264.74),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 267.92),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 272.74),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 280.38),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 288.12),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 296.62),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 297.57),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 300.84),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 303.85),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 310.38),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 2 ; Zone 2 - 2 adultes",
)

al_loyers_plafond_zone2_L3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 294.38),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 297.91),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 301.48),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 306.91),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 315.5),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 324.21),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 333.77),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 334.84),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 338.52),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 341.91),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 349.26),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 2 ; Zone 2 - 1 enfant",
)

al_loyers_plafond_zone2_L4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 42.84),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 43.35),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 43.87),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 44.66),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 45.91),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 47.18),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 48.57),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 48.73),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 49.27),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 49.76),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 50.83),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 2 ; Zone 2 - enfants supplémentaires",
)

al_loyers_plafond_zone3_L1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 200.32),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 202.72),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 205.15),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 208.84),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 214.69),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 220.62),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 227.13),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 227.86),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 230.37),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 232.67),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 237.67),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 3 ; Zone 3 - 1 adulte",
)

al_loyers_plafond_zone3_L2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 242.85),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 245.76),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 248.71),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 253.19),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 260.28),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 267.46),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 275.35),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 276.23),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 279.27),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 282.06),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 288.12),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 3 ; Zone 3 - 2 adultes",
)

al_loyers_plafond_zone3_L3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 272.27),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 275.54),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 278.85),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 283.87),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 291.82),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 299.87),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 308.72),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 309.71),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 313.12),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 316.25),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 323.05),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 3 ; Zone 3 - 1 enfant",
)

al_loyers_plafond_zone3_L4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 39.03),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 39.5),
    DateRangeValue(Date(2003, 07, 01), Date(2005, 08, 31), 39.97),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 40.69),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 41.83),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 42.98),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 44.25),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 44.39),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 44.88),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 45.33),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 30), 46.3),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Loyers plafond ; Zone 3 ; Zone 3 - enfants supplémentaires",
)

al_pp_min = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 26.68),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 28.0),
    DateRangeValue(Date(2003, 07, 01), Date(2006, 12, 31), 29.0),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 30.0),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 31.0),
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 33.0),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 33.47),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 33.8),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 34.53),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Participation personnelle minimale ; Participation minimale",
)

al_pp_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.085),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Participation personnelle minimale ; Taux de participation",
)

al_ressources_dar_1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 76),
    DateRangeValue(Date(2007, 07, 01), Date(2013, 12, 31), 95),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Abattement R. 351-6 (double activité)",
)

al_ressources_dar_10 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 2034),
    DateRangeValue(Date(2003, 07, 01), Date(2007, 06, 30), 2071),
    DateRangeValue(Date(2007, 07, 01), Date(2013, 12, 31), 2589),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Abattement forfaitaire R351-11",
)

al_ressources_dar_2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 6173.82),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 6300.0),
    DateRangeValue(Date(2003, 07, 01), Date(2007, 06, 30), 6400.0),
    DateRangeValue(Date(2007, 07, 01), Date(2013, 12, 31), 8000.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Plancher ressources APL en secteur accession R. 351-7-1",
)

al_ressources_dar_2_2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 07, 01), Date(2007, 06, 30), 3100.0),
    DateRangeValue(Date(2007, 07, 01), Date(2013, 12, 31), 3900.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Plancher ressources AL en secteur accession R. 351-7-1",
  comment = "non trouvé",
)

al_ressources_dar_3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 06, 30), 13.0),
    DateRangeValue(Date(2007, 07, 01), Date(2013, 12, 31), 16.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Coefficient R. 351-7-1",
)

al_ressources_dar_4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 5411.62),
    DateRangeValue(Date(2002, 07, 01), Date(2007, 06, 30), 5500.0),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 6900.0),
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 7100.0),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 7200.0),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 7300.0),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 7500.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Montant R. 351-7-2",
)

al_ressources_dar_5 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 11, 30), 990.86),
    DateRangeValue(Date(2002, 12, 01), Date(2007, 06, 30), 1100.0),
    DateRangeValue(Date(2007, 07, 01), Date(2012, 12, 31), 1400.0),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1500.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Minoration si titulaire d'une bourse de l'enseignement supérieur",
)

al_ressources_dar_6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 4420.76),
    DateRangeValue(Date(2002, 07, 01), Date(2007, 06, 30), 4400.0),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 5500.0),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 0.0),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 0.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Demandes antérieures au 1er juillet",
)

al_ressources_dar_7 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0),
    DateRangeValue(Date(2002, 07, 01), Date(2005, 08, 31), 2000),
    DateRangeValue(Date(2005, 09, 01), Date(2014, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Majoration si 2 étudiants",
)

al_ressources_dar_8 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0.0),
    DateRangeValue(Date(2002, 07, 01), Date(2008, 12, 31), 1085.0),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 1200.0),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 1204.8),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 1222.87),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 1248.55),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1273.52),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Montant 2ème alinéa du III de R. 351-7",
)

al_ressources_dar_9 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0.0),
    DateRangeValue(Date(2002, 07, 01), Date(2008, 12, 31), 1627.0),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 1800.0),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 1807.2),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 1834.31),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 1872.83),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1910.29),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Montant 3ème alinéa du III de R. 351-7",
)

al_ressources_efress_dar_2a = Parameter{Float32}(
  [
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 6770.05),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 6932.45),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 7297.85),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7724.15),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 8150.45),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 8394.05),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 8566.6),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 8840.65),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 8952.3),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 8992.9),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 9327.85),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 9541.0),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 9571.45),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Évaluation forfaitaire des ressources R. 351-7 ; Évaluation forfaitaire des ressources pour un salarié R. 351-7",
)

al_ressources_efress_dar_2b = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2002, 06, 30), 10005.0),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 10245.0),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 10785.0),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 11415.0),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 12045.0),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 12405.0),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 06, 30), 12660.0),
    DateRangeValue(Date(2008, 07, 01), Date(2009, 06, 30), 13065.0),
    DateRangeValue(Date(2009, 07, 01), Date(2010, 06, 30), 13230.0),
    DateRangeValue(Date(2010, 07, 01), Date(2011, 06, 30), 13290.0),
    DateRangeValue(Date(2011, 07, 01), Date(2012, 06, 30), 13500.0),
    DateRangeValue(Date(2012, 07, 01), Date(2013, 06, 30), 14100.0),
    DateRangeValue(Date(2013, 07, 01), Date(2014, 06, 30), 14145.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Évaluation forfaitaire des ressources R. 351-7 ; Évaluation forfaitaire des ressources pour un employeur ou un travailleur indépendant R. 351-7",
)

al_ressources_efress_dar_3a = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 07, 01), Date(2012, 12, 31), 1015.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Évaluation forfaitaire des ressources R. 351-7 ; Coefficient multiplicateur du smic horaire brut au 31/12/n-2 (R. 351-7) pour un salarié",
)

al_ressources_efress_dar_3b = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 07, 01), Date(2012, 12, 31), 1500.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Dispositions applicables aux ressources ; Évaluation forfaitaire des ressources R. 351-7 ; Coefficient multiplicateur du smic horaire brut au 01/07 précédent la date d'ouverture des droits (R. 351-7) pour un employeur ou un travailleur indépendant",
)

al_rmi = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 06, 30), 397.6),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 405.62),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 08, 31), 411.7),
    DateRangeValue(Date(2005, 09, 01), Date(2006, 12, 31), 417.88),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 425.4),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 433.06),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 440.86),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 447.91),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 454.63),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 460.09),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 466.99),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 474.93),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 08, 31), 483.24),
    DateRangeValue(Date(2015, 09, 01), Date(2015, 12, 31), 492.9),
    DateRangeValue(Date(2016, 01, 01), Date(2016, 08, 31), 499.31),
    DateRangeValue(Date(2016, 09, 01), Date(2016, 12, 31), 509.3),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Allocations logement ; Revenu minimum d'insertion puis rsa socle n-2",
)

bouclier_fiscal_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 0.6),
    DateRangeValue(Date(2007, 01, 01), Date(2010, 12, 31), 0.5, comment = "Suppression du bouclier fiscal à compter des revenus réalisés en 2011."),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bouclier fiscal ; Taux d'imposition maximal",
)

bourses_education_bourse_college_coeff_enfant_supplementaire = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Coefficient à rajouter aux plafonds pour chaque enfant à charge",
)

bourses_education_bourse_college_montant_taux_1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 84.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Montant taux 1",
)

bourses_education_bourse_college_montant_taux_2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 228.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Montant taux 2",
)

bourses_education_bourse_college_montant_taux_3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 357.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Montant taux 3",
)

bourses_education_bourse_college_plafond_taux_1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 11252.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Plafond de référence pour le taux 1",
)

bourses_education_bourse_college_plafond_taux_2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 6083.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Plafond de référence pour le taux 2",
)

bourses_education_bourse_college_plafond_taux_3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2015, 01, 01), 2146.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Bourses de l'Éducation nationale ; Bourse des collèges ; Plafond de référence pour le taux 3",
)

cmu_abattement_chomage = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Abattement sur les revenus d'activité en cas de chômage",
)

cmu_acs_16_49_ans = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 08, 01), Date(2015, 12, 31), 200.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; ACS pour une personne âgée de 16 à 49 ans",
)

cmu_acs_50_59_ans = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 08, 01), Date(2015, 12, 31), 350.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; ACS pour une personne âgée de 50 à 59 ans",
)

cmu_acs_moins_16_ans = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 08, 01), Date(2015, 12, 31), 100.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; ACS pour une personne âgée de moins de 16 ans",
)

cmu_acs_plus_60_ans = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 08, 01), Date(2013, 12, 31), 500.0),
    DateRangeValue(Date(2014, 01, 01), Date(2015, 12, 31), 550.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; ACS pour une personne âgée de plus de 60 ans",
)

cmu_age_limite_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Âge limite des personnes à charge",
)

cmu_coeff_p2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Coefficient de majoration pour une deuxième personne",
)

cmu_coeff_p3_p4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Coefficient de majoration pour une troisième ou quatrième personne",
)

cmu_coeff_p5_plus = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Coefficient de majoration par personne supplémentaire",
)

cmu_forfait_logement_taux_1p = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.12),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Forfait logement pour propriétaire ou occupant à titre gratuit ; Pourcentage du RSA socle pour une personne (pour une personne)",
)

cmu_forfait_logement_taux_2p = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.14),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Forfait logement pour propriétaire ou occupant à titre gratuit ; Pourcentage du RSA socle pour deux personnes (pour deux personnes)",
)

cmu_forfait_logement_taux_3p_plus = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.14),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Forfait logement pour propriétaire ou occupant à titre gratuit ; Pourcentage du RSA socle pour trois personnes (pour trois et plus personnes)",
)

cmu_forfait_logement_al_taux_1p = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.12),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Forfait logement pour bénéficiaire d'une aide au logement ; Pourcentage du RSA socle pour une personne (pour une personne)",
)

cmu_forfait_logement_al_taux_2p = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2008, 01, 31), 0.14),
    DateRangeValue(Date(2008, 02, 01), Date(2014, 12, 31), 0.16),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Forfait logement pour bénéficiaire d'une aide au logement ; Pourcentage du RSA socle pour deux personnes (pour deux personnes)",
)

cmu_forfait_logement_al_taux_3p_plus = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2008, 01, 31), 0.14),
    DateRangeValue(Date(2008, 02, 01), Date(2014, 12, 31), 0.165),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Forfait logement pour bénéficiaire d'une aide au logement ; Pourcentage du RSA socle pour trois personnes (pour trois et plus personnes)",
)

cmu_majoration_dom = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2014, 12, 31), 0.113),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Coefficient de majoration du plafond CMU applicable aux DOM",
)

cmu_majoration_plafond_acs = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 0.15),
    DateRangeValue(Date(2007, 01, 01), Date(2010, 12, 31), 0.2),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.3),
    DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.35),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Majoration pour du plafond CMU pour l'ACS",
)

cmu_plafond_base = Parameter{Float32}(
  [
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 6798.0),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 6913.57),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 7045.97),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 7178.79),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 06, 30), 7272.1),
    DateRangeValue(Date(2008, 07, 01), Date(2009, 06, 30), 7446.64),
    DateRangeValue(Date(2009, 07, 01), Date(2010, 06, 30), 7521.11),
    DateRangeValue(Date(2010, 07, 01), Date(2011, 06, 30), 7611.36),
    DateRangeValue(Date(2011, 07, 01), Date(2012, 06, 30), 7771.2),
    DateRangeValue(Date(2012, 07, 01), Date(2013, 06, 30), 7934.9),
    DateRangeValue(Date(2013, 07, 01), Date(2014, 06, 30), 8592.96),
    DateRangeValue(Date(2014, 07, 01), Date(2015, 06, 30), 8644.52),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Couverture Maladie Universelle ; Plafond annuel pour une personne seule",
)

cotsoc_accident_eleve = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.05, comment = "TODO: update, get more info..."),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Accident du travail ; Accident du travail (taux eleve)",
  comment = "Wild distinction between the rates. TODO: handle the extreme diversity...",
)

cotsoc_accident_faible = Parameter{Float32}(
  [
    DateRangeValue(Date(1996, 01, 01), Date(2012, 12, 31), 0.01),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.011),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Accident du travail ; Accident du travail (taux bureau)",
  comment = "Wild distinction between the rates. TODO: handle the extreme diversity...",
)

cotsoc_accident_moyen = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.03, comment = "TODO: update, get more info..."),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Accident du travail ; Accident du travail (taux moyen)",
  comment = "Wild distinction between the rates. TODO: handle the extreme diversity...",
)

cotsoc_accident_treseleve = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.1, comment = "TODO: update, get more info.."),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Accident du travail ; Accident du travail (taux tres eleve)",
  comment = "Wild distinction between the rates. TODO: handle the extreme diversity...",
)

cotsoc_assiette_cantines_titres_restaurants_seuil_prix_titre = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 5.33),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres régissant l'assiette des cotisations sociales ; Cantines et titres restaurants ; Taux de prise en charge par l'entreprise maximum pour non intégration dans l'assiette des cotisations sociales",
)

cotsoc_assiette_cantines_titres_restaurants_taux_maximum_exoneration = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.6),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres régissant l'assiette des cotisations sociales ; Cantines et titres restaurants ; Taux de prise en charge par l'entreprise maximum pour non intégration dans l'assiette des cotisations sociales",
)

cotsoc_assiette_cantines_titres_restaurants_taux_minimum_exoneration = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres régissant l'assiette des cotisations sociales ; Cantines et titres restaurants ; Taux de prise en charge par l'entreprise minimum pour non intégration dans l'assiette des cotisations sociales",
)

cotsoc_conge_individuel_formation_cdd = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2015, 12, 31), 0.01, comment = "TODO: dates inconnues"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Congé individuel de formation ; Taux pour les salariés en contrat à durée déterminée",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_entre_1_2_pc_alternants = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.001),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.002),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises comprenant 1%  à 2% d'atlernants",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_entre_2_3_pc_alternants = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2015, 12, 31), 0.001),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises comprenant 1%  à 2% d'atlernants",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_entre_3_4_pc_alternants = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2015, 12, 31), 0.0005),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises comprenant 1%  à 2% d'atlernants",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_entre_4_5_pc_alternants = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.0),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0005),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises comprenant 1%  à 2% d'atlernants",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_moins_2000_moins_1pc_alternants = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.003),
    DateRangeValue(Date(2014, 01, 01), Date(2015, 12, 31), 0.004),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises de moins de 2000 salariés et avec moins de 1% d'atlernants",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_plus_2000_moins_1pc_alternants = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.005),
    DateRangeValue(Date(2014, 01, 01), Date(2015, 12, 31), 0.006),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises de plus de 2000 salariés et avec moins de 1% d'atlernants",
  comment = "TODO: find a better place",
)

cotsoc_contribution_supplementaire_apprentissage_plus_de_250 = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 0.001, comment = "TODO check and check for coherence with previous taux"),
    DateRangeValue(Date(2013, 01, 01), Date(2015, 12, 31), 0.001, comment = "TODO check and check for coherence with previous taux"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Contribution supplémentaire d'apprentissage ; Taux pour les entreprises comprenant plus de 250 salariés",
  comment = "TODO: find a better place",
)

cotsoc_exo_bas_sal_cice_max = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 2.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Exonération sur les bas salaires ; Crédit d'impot compétitivité emploi ; Plafond",
)

cotsoc_exo_bas_sal_cice_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 09, 24), 0.04),
    DateRangeValue(Date(2014, 09, 25), Date(2014, 12, 31), 0.06),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Exonération sur les bas salaires ; Crédit d'impot compétitivité emploi ; Taux du CICE",
)

cotsoc_exo_bas_sal_fillon_seuil = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 07, 01), Date(2014, 12, 31), 1.6),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Exonération sur les bas salaires ; Exonération Fillon ; Point de sortie (en smic)",
)

cotsoc_exo_bas_sal_fillon_tx_max = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 07, 01), Date(2014, 12, 31), 0.26),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Exonération sur les bas salaires ; Exonération Fillon ; Taux maximum (plus de 20 salariés)",
)

cotsoc_exo_bas_sal_fillon_tx_max2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 07, 01), Date(2007, 06, 30), 0.26),
    DateRangeValue(Date(2007, 07, 01), Date(2014, 12, 31), 0.281),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Exonération sur les bas salaires ; Exonération Fillon ; Taux maximum (moins de 20 salariés)",
)

cotsoc_gen_plaf_ss = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 2279),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 2352),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 2432),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 2476),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 2516),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 2589),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2689),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2773),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2859),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 2885),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 2946),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 3031),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 3086),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 3129),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond de la sécurité sociale",
)

cotsoc_gen_plaf_th_1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 6928),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 7046),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 7165),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 7286),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7417),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 9437),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 9560),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 9837),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 9876),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 10024),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 10224),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond d'exonération de la taxe d'habitation: première part",
)

cotsoc_gen_plaf_th_1_dom = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 8198),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 8337),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 8478),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 8621),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 8776),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 11167),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 11312),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 11640),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 11686),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 11861),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 12098),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond d'exonération de la taxe d'habitation: première part DOM",
)

cotsoc_gen_plaf_th_1_guy = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 8570),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 8716),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 8864),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 9014),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 9176),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 11676),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 11828),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 12171),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 12219),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 12402),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 12650),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond d'exonération de la taxe d'habitation: première part Guyane",
)

cotsoc_gen_plaf_th_supp = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 1851),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 1882),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 1914),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 1946),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 1981),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2520),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2553),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2627),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 2637),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 2676),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 2730),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond d'exonération de la taxe d'habitation: demi-part supplémentaire",
)

cotsoc_gen_plaf_th_supp1_dom = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 1958),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 1991),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 2025),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 2059),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 2096),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2667),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2702),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2780),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 2791),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 2833),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 2890),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond d'exonération de la taxe d'habitation: 1ère demi-part supplémentaire DOM",
)

cotsoc_gen_plaf_th_supp1_guy = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 2359),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 2399),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 2440),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 2481),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 2526),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 3215),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 3257),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3351),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 3364),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 3414),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 3482),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; Plafond d'exonération de la taxe d'habitation: 1ère demi-part supplémentaire Guyane",
)

cotsoc_gen_smic_h_b = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 08, 01), Date(2002, 06, 30), 6.67),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 6.83),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 7.19),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 7.61),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 8.03),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 8.27),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 04, 30), 8.44),
    DateRangeValue(Date(2008, 05, 01), Date(2008, 06, 30), 8.63),
    DateRangeValue(Date(2008, 07, 01), Date(2009, 06, 30), 8.71),
    DateRangeValue(Date(2009, 07, 01), Date(2009, 12, 31), 8.82),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 8.86),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 11, 30), 9.0),
    DateRangeValue(Date(2011, 12, 01), Date(2011, 12, 31), 9.19),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 06, 30), 9.22),
    DateRangeValue(Date(2012, 07, 01), Date(2012, 12, 31), 9.4),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 9.43),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 9.53),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Paramètres généraux ; SMIC horaire brut",
)

cotsoc_microsocial_cipav = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.233),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Cotisations sociales pour régime micro-social ; Taux professions libérales relevant du  CIPAV",
)

cotsoc_microsocial_rsi = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.246),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Cotisations sociales pour régime micro-social ; Taux professions libérales relevant du RSI",
)

cotsoc_microsocial_servi = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.246),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Cotisations sociales pour régime micro-social ; Taux pour les activités de prestations et de services",
)

cotsoc_microsocial_vente = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.141),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Cotisations sociales pour régime micro-social ; Taux pour les activités de ventes",
)

cotsoc_pat_cadre_agffc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.012),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.013),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques aux cadres ; AGFF",
)

cotsoc_pat_cadre_apec = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 0.00036),

        DateRangeValue(Date(1993, 07, 01), Date(2010, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.00036),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques aux cadres ; Chômage: APEC",
)

cotsoc_pat_cadre_arrco = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2015, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0465),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0458),

        DateRangeValue(Date(1999, 01, 01), Date(2013, 12, 31), 0.045),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.04125),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.0375),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.03375),

        DateRangeValue(Date(1993, 01, 01), Date(1995, 12, 31), 0.02952),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2015, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.1275),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.1268),

        DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.126),

        DateRangeValue(Date(1999, 01, 01), Date(2005, 12, 31), 0.125),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.11875),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.1125),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.10625),

        DateRangeValue(Date(1995, 01, 01), Date(1995, 12, 31), 0.1),

        DateRangeValue(Date(1994, 01, 01), Date(1994, 12, 31), 0.0847),

        DateRangeValue(Date(1993, 01, 01), Date(1993, 12, 31), 0.0702),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2015, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.1275),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.1268),

        DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.126),

        DateRangeValue(Date(1999, 01, 01), Date(2005, 12, 31), 0.125),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.11875),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.1125),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.10625),

        DateRangeValue(Date(1995, 01, 01), Date(1995, 12, 31), 0.1),

        DateRangeValue(Date(1994, 01, 01), Date(1994, 12, 31), 0.0847),

        DateRangeValue(Date(1993, 01, 01), Date(1993, 12, 31), 0.0702),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2014, 12, 31), 8.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques aux cadres ; Retraite complémentaire",
)

cotsoc_pat_cadre_cet = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0022),

        DateRangeValue(Date(2000, 01, 01), Date(2000, 12, 31), 0.0017),

        DateRangeValue(Date(1999, 01, 01), Date(1999, 12, 31), 0.0013),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.0009),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.00044),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 8.0),
      ],
      rate = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques aux cadres ; Cotisation exceptionnelle temporaire",
)

cotsoc_pat_commun_apprentissage_node_apprentissage = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.005),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Taxes d'apprentissages ; Taxe d'apprentissage (toutes entreprises)",
)

cotsoc_pat_commun_apprentissage_node_apprentissage_250 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.005),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Taxes d'apprentissages ; Taxe d'apprentissage (plus de 250 salariés)",
)

cotsoc_pat_commun_apprentissage_node_apprentissage_add = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.0018),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.0012),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.0006),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Taxes d'apprentissages ; Contribution additionnelle au développement de l'apprentissage (toutes entreprises)",
)

cotsoc_pat_commun_assedic = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2007, 01, 01), Date(2014, 12, 31), 0.04),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 0.0404),

        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.04),

        DateRangeValue(Date(2002, 07, 01), Date(2002, 12, 31), 0.037),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0.036),

        DateRangeValue(Date(2001, 04, 01), Date(2001, 12, 31), 0.037),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 03, 31), 0.0499),

        DateRangeValue(Date(1997, 01, 01), Date(2000, 12, 31), 0.0526),

        DateRangeValue(Date(1994, 01, 01), Date(1996, 12, 31), 0.0547),

        DateRangeValue(Date(1993, 08, 01), Date(1993, 12, 31), 0.0538),

        DateRangeValue(Date(1993, 07, 01), Date(1993, 07, 31), 0.0483),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Chômage ASSEDIC (non cadres et cadres)",
)

cotsoc_pat_commun_chomfg = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 03, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 04, 01), Date(2014, 03, 31), 0.003),

        DateRangeValue(Date(2009, 11, 01), Date(2011, 03, 31), 0.004),

        DateRangeValue(Date(2009, 08, 01), Date(2009, 10, 31), 0.003),

        DateRangeValue(Date(2006, 07, 01), Date(2009, 07, 31), 0.0015),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 06, 30), 0.0025),

        DateRangeValue(Date(2005, 04, 01), Date(2005, 12, 31), 0.0035),

        DateRangeValue(Date(2003, 09, 01), Date(2005, 03, 31), 0.0045),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 08, 31), 0.0035),

        DateRangeValue(Date(2002, 07, 01), Date(2002, 12, 31), 0.003),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0.002),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.001),

        DateRangeValue(Date(2000, 07, 01), Date(2000, 12, 31), 0.0015),

        DateRangeValue(Date(1999, 07, 01), Date(2000, 06, 30), 0.002),

        DateRangeValue(Date(1995, 07, 01), Date(1999, 06, 30), 0.0025),

        DateRangeValue(Date(1993, 07, 01), Date(1995, 06, 30), 0.0035),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 03, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 03, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Chômage: fond national de garantie des salaires (FNGS)",
)

cotsoc_pat_commun_construction_node_construction_20 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1992, 01, 01), Date(2014, 12, 31), 0.0045),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Effort à la construction ; Effort à la construction (plus de 20 salariés)",
)

cotsoc_pat_commun_csa = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2004, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2004, 07, 01), Date(2014, 12, 31), 0.003),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Contribution solidarité autonomie (dépendance)",
)

cotsoc_pat_commun_famille = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0525),

        DateRangeValue(Date(1993, 07, 01), Date(2013, 12, 31), 0.054),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Allocation familiales",
)

cotsoc_pat_commun_fnal1 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.001),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Fonds national action logement (FNAL, tout employeur)",
)

cotsoc_pat_commun_fnal2 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1991, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1991, 07, 01), Date(2014, 12, 31), 0.004),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1991, 07, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 0.005),

        DateRangeValue(Date(1991, 07, 01), Date(2010, 12, 31), 0.004),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Fonds national action logement (FNAL, plus de 20 salariés)",
)

cotsoc_pat_commun_formprof_node_formprof_09 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 01, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.0055),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.004),

        DateRangeValue(Date(1993, 07, 01), Date(2003, 12, 31), 0.0015),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Formation professionnelle ; Formation professionnelle (0-9 salaries)",
)

cotsoc_pat_commun_formprof_node_formprof_1019 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 07, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 08, 04), Date(2013, 12, 01), 0.0105),

        DateRangeValue(Date(2004, 01, 01), Date(2005, 08, 03), 0.016),

        DateRangeValue(Date(1993, 01, 01), Date(2003, 12, 31), 0.015),

        DateRangeValue(Date(1992, 01, 01), Date(1992, 12, 31), 0.014),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Formation professionnelle ; Formation professionnelle (10-19 salaries)",
)

cotsoc_pat_commun_formprof_node_formprof_20 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.016),

        DateRangeValue(Date(1993, 01, 01), Date(2003, 12, 31), 0.015),

        DateRangeValue(Date(1992, 01, 01), Date(1992, 12, 31), 0.014),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Formation professionnelle ; Formation professionnelle (plus de 20 salariés)",
)

cotsoc_pat_commun_maladie = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1992, 07, 01), Date(2014, 12, 31), 0.128),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Maladie, maternité, invalidité, décès",
)

cotsoc_pat_commun_transport = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0175),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Transport (valeur non différenciée selon la localité, Lyon reférence)",
)

cotsoc_pat_commun_vieillessedeplaf = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2016, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2014, 01, 01), Date(2016, 12, 31), 0.0175),

        DateRangeValue(Date(1993, 07, 01), Date(2013, 12, 31), 0.016),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Vieillesse déplafonnée",
)

cotsoc_pat_commun_vieillesseplaf = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1979, 01, 01), Date(2016, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0855),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.085),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0845),

        DateRangeValue(Date(2012, 11, 01), Date(2013, 12, 31), 0.084),

        DateRangeValue(Date(2006, 01, 01), Date(2012, 10, 31), 0.083),

        DateRangeValue(Date(1979, 01, 01), Date(2005, 12, 31), 0.082),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1979, 01, 01), Date(2016, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(1979, 01, 01), Date(2016, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Communes aux cadres et non cadres ; Vieillesse plafonnée (régime de base)",
)

cotsoc_pat_fonc_colloc_atiacl = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2020, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.004),

        DateRangeValue(Date(1982, 01, 01), Date(2012, 12, 31), 0.005),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Allocations temporaires d'invalidité (hors NBI)",
)

cotsoc_pat_fonc_colloc_cnracl = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1984, 01, 01), Date(2012, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2016, 01, 01), Date(2020, 12, 31), 0.3035),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.303),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.3025),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.2885),

        DateRangeValue(Date(2012, 11, 01), Date(2012, 12, 31), 0.274),

        DateRangeValue(Date(2005, 01, 01), Date(2012, 10, 31), 0.273),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.269),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 0.265),

        DateRangeValue(Date(2001, 01, 01), Date(2002, 12, 31), 0.261),

        DateRangeValue(Date(2000, 01, 01), Date(2000, 12, 31), 0.256),

        DateRangeValue(Date(1995, 01, 01), Date(1999, 12, 31), 0.251),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Retraites des agents des collectivités locales",
)

cotsoc_pat_fonc_colloc_hospitaliere_feh = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1995, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2002, 01, 01), Date(2020, 12, 31), 0.01),

        DateRangeValue(Date(2000, 01, 01), Date(2001, 12, 31), 0.008),

        DateRangeValue(Date(1999, 01, 01), Date(1999, 12, 31), 0.0067),

        DateRangeValue(Date(1995, 01, 01), Date(1998, 12, 31), 0.0045),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Propres à la fonction publique hospitalière ; Fonds pour l'emploi hospitalier",
)

cotsoc_pat_fonc_colloc_maladie = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1984, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1984, 01, 01), Date(2014, 12, 31), 0.115),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Maladie",
)

cotsoc_pat_fonc_colloc_rafp = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2020, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2020, 12, 31), 0.05),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Régime additionnel de retraite (RAFP, totalité sauf TI et NBI, min 20% TI )",
)

cotsoc_pat_fonc_colloc_territoriale_fcppa = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1984, 01, 01), Date(2010, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2002, 01, 01), Date(2010, 12, 31), 0.005),

        DateRangeValue(Date(1984, 01, 01), Date(2001, 12, 31), 0.002),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Propres à la fonction publique territoriale ; Fonds de compensation de la cessation progressive d’activité",
)

cotsoc_pat_fonc_contract_ircantec = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.0336),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0326),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0317),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0304),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0294),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0282),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.0273),

        DateRangeValue(Date(1992, 01, 01), Date(2010, 12, 31), 0.027),
      ],
      base = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 1.25),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.1004),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0988),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0974),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0958),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0946),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0936),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.0928),

        DateRangeValue(Date(1992, 01, 01), Date(2010, 12, 31), 0.0924),
      ],
      base = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 1.25),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 8.0),
      ],
      rate = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Agents non titulaires ; IRCANTEC",
)

cotsoc_pat_fonc_etat_ati = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2020, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0032),

        DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 0.0033),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 0.0032),

        DateRangeValue(Date(2007, 01, 01), Date(2008, 12, 31), 0.0031),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 0.003),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Etat ; Allocations temporaires d'invalidité (ATI)",
)

cotsoc_pat_fonc_etat_maladie = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1984, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1984, 01, 01), Date(2014, 12, 31), 0.097),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Etat ; Maladie",
)

cotsoc_pat_fonc_etat_pension = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2012, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.7428),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.6859),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.6539),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 0.6214),

        DateRangeValue(Date(2009, 12, 01), Date(2009, 12, 31), 0.4014),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 11, 30), 0.6014),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 0.5571),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 0.5074),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 0.499),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Etat ; Pensions civiles (TI et NBI)",
)

cotsoc_pat_fonc_etat_rafp = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2012, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2012, 12, 31), 0.05),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Spécifiques à la fonction publique ; Etat ; Régime additionnel de retraite (RAFP, totalité sauf TI et NBI, min 20% TI )",
)

cotsoc_pat_noncadre_agffnc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.012),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.013),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 3.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Non cadres ; Cotisation AGFF",
)

cotsoc_pat_noncadre_arrco = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2015, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0465),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0458),

        DateRangeValue(Date(1999, 01, 01), Date(2013, 12, 31), 0.045),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.04125),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.0375),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.03375),

        DateRangeValue(Date(1993, 07, 01), Date(1995, 12, 31), 0.02952),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2000, 01, 01), Date(2015, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.1215),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.1208),

        DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.12),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.105),

        DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.09),

        DateRangeValue(Date(2000, 01, 01), Date(2001, 12, 31), 0.075),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2000, 01, 01), Date(2015, 12, 31), 3.0),
      ],
      rate = [
        DateRangeValue(Date(2000, 01, 01), Date(2015, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Patronales ; Non cadres ; Retraite complémentaire",
)

cotsoc_sal_arti_famille = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.054),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Cotisation Famille",
)

cotsoc_sal_arti_forprof = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2008, 01, 01), Date(2014, 12, 31), 0.0029),

        DateRangeValue(Date(2004, 01, 01), Date(2007, 12, 31), 0.0024),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Formation professionnelle",
)

cotsoc_sal_arti_indjour = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.007),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 5.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Sécurité sociale/ Indemnités journalières",
)

cotsoc_sal_arti_invdec = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.016),

        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.018),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Invalidité, décès",
)

cotsoc_sal_arti_maladie = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.065),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.059),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 5.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Sécurité sociale/ Maladie, maternité",
)

cotsoc_sal_arti_retrbase = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2016, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.1715),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.1705),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.1695),

        DateRangeValue(Date(2012, 11, 01), Date(2013, 12, 31), 0.1685),

        DateRangeValue(Date(2006, 01, 01), Date(2012, 10, 31), 0.1665),

        DateRangeValue(Date(2004, 07, 01), Date(2005, 12, 31), 0.1645),

        DateRangeValue(Date(1991, 02, 01), Date(2004, 06, 30), 0.1635),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2016, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2016, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Retraite de base",
)

cotsoc_sal_arti_retrcompl = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.07),

        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.072),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.08),

        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.076),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: artisans ; Retraite complémentaire",
)

cotsoc_sal_cadre_agff = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.008),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.009),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques aux cadres ; Cotisation AGFF",
)

cotsoc_sal_cadre_agirc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2015, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2015, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2015, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.078),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0775),

        DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.077),

        DateRangeValue(Date(1999, 01, 01), Date(2005, 12, 31), 0.075),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.06875),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.0625),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.05625),

        DateRangeValue(Date(1995, 01, 01), Date(1995, 12, 31), 0.05),

        DateRangeValue(Date(1994, 01, 01), Date(1994, 12, 31), 0.0363),

        DateRangeValue(Date(1993, 07, 01), Date(1993, 12, 31), 0.0234),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2015, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.078),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0775),

        DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.077),

        DateRangeValue(Date(1999, 01, 01), Date(2005, 12, 31), 0.075),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.06875),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.0625),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.05625),

        DateRangeValue(Date(1995, 01, 01), Date(1995, 12, 31), 0.05),

        DateRangeValue(Date(1994, 01, 01), Date(1994, 12, 31), 0.0363),

        DateRangeValue(Date(1993, 07, 01), Date(1993, 12, 31), 0.0234),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2015, 12, 31), 8.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2015, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques aux cadres ; Retraite complémentaire AGIRC GMP (tranches B et C, avant 65 ans)",
)

cotsoc_sal_cadre_apec = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 0.00024),

        DateRangeValue(Date(1993, 07, 01), Date(2010, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.00024),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques aux cadres ; Chômage-emploi APEC",
)

cotsoc_sal_cadre_cet = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0013),

        DateRangeValue(Date(2000, 01, 01), Date(2000, 12, 31), 0.0011),

        DateRangeValue(Date(1999, 01, 01), Date(1999, 12, 31), 0.0008),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.0005),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.00026),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 8.0),
      ],
      rate = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques aux cadres ; Cotisation exceptionelle temporaire",
)

cotsoc_sal_comind_famille = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.054),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Famille",
)

cotsoc_sal_comind_forprofcom = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.0025),

        DateRangeValue(Date(1992, 01, 01), Date(2011, 12, 31), 0.0015),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Formation professionnelle",
)

cotsoc_sal_comind_indjour = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2013, 12, 31), 0.007),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2013, 12, 31), 5.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2013, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Sécurité sociale/ Indemnités journalières",
)

cotsoc_sal_comind_invdec = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2007, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.011),

        DateRangeValue(Date(2007, 01, 01), Date(2012, 12, 31), 0.013),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2007, 01, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2007, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Invalidité, décès",
)

cotsoc_sal_comind_maladie = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.06),

        DateRangeValue(Date(2003, 01, 01), Date(2011, 12, 31), 0.065),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.059),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 5.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2012, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Sécurité sociale/ Maladie, maternité",
)

cotsoc_sal_comind_retrbase = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.1715),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.1705),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.1695),

        DateRangeValue(Date(2012, 11, 01), Date(2013, 12, 31), 0.1685),

        DateRangeValue(Date(2006, 01, 01), Date(2012, 10, 31), 0.1665),

        DateRangeValue(Date(2004, 07, 01), Date(2005, 12, 31), 0.1645),

        DateRangeValue(Date(1991, 02, 01), Date(2004, 06, 30), 0.1635),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Retraite de base",
)

cotsoc_sal_comind_retrcompl = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.07),

        DateRangeValue(Date(2005, 01, 01), Date(2012, 12, 31), 0.065),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.07),

        DateRangeValue(Date(2005, 01, 01), Date(2012, 12, 31), 0.065),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 3.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Non salariés: commerçants et industriels ; Retraite complémentaire",
)

cotsoc_sal_commun_arrco = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.031),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0305),

        DateRangeValue(Date(1999, 01, 01), Date(2013, 12, 31), 0.03),

        DateRangeValue(Date(1998, 01, 01), Date(1998, 12, 31), 0.0275),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.025),

        DateRangeValue(Date(1996, 01, 01), Date(1996, 12, 31), 0.0225),

        DateRangeValue(Date(1993, 01, 01), Date(1995, 12, 31), 0.01968),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2000, 01, 01), Date(2013, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2000, 01, 01), Date(2013, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Communes aux cadres et non cadres ; Retraite complémentaire ARRCO",
)

cotsoc_sal_commun_assedic = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2007, 01, 01), Date(2014, 12, 31), 0.024),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 0.0244),

        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.024),

        DateRangeValue(Date(2002, 07, 01), Date(2002, 12, 31), 0.021),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 0.02),

        DateRangeValue(Date(2001, 07, 01), Date(2001, 12, 31), 0.021),

        DateRangeValue(Date(2001, 04, 01), Date(2001, 06, 30), 0.026),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 03, 31), 0.0349),

        DateRangeValue(Date(1997, 01, 01), Date(2000, 12, 31), 0.036),

        DateRangeValue(Date(1994, 01, 01), Date(1996, 12, 31), 0.0386),

        DateRangeValue(Date(1993, 07, 01), Date(1993, 12, 31), 0.0377),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Communes aux cadres et non cadres ; Chômage-emploi ASSEDIC",
)

cotsoc_sal_commun_maladie = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2013, 12, 31), 0.0075),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.055),

        DateRangeValue(Date(1993, 07, 01), Date(1996, 12, 31), 0.068),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Communes aux cadres et non cadres ; Assurance maladie, maternité, invalidité, décès",
)

cotsoc_sal_commun_vieillesse = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2016, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.069),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0685),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.068),

        DateRangeValue(Date(2012, 11, 01), Date(2013, 12, 31), 0.0675),

        DateRangeValue(Date(2006, 01, 01), Date(2012, 10, 31), 0.0665),

        DateRangeValue(Date(1993, 07, 01), Date(2005, 12, 31), 0.0655),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 07, 01), Date(2016, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2016, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Communes aux cadres et non cadres ; Vieillesse (régime de base de la retraite CNAV)",
)

cotsoc_sal_commun_vieillessedeplaf = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2004, 07, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0025),

        DateRangeValue(Date(2004, 07, 01), Date(2013, 12, 31), 0.001),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Communes aux cadres et non cadres ; Vieillesse déplafonnée (ancienne assurance veuvage transférée à la CNAV en 2004)",
)

cotsoc_sal_fonc_colloc_cnracl1 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1984, 01, 01), Date(2020, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2020, 01, 01), Date(2020, 12, 31), 0.1055),

        DateRangeValue(Date(2019, 01, 01), Date(2019, 12, 31), 0.1028),

        DateRangeValue(Date(2018, 01, 01), Date(2018, 12, 31), 0.1001),

        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.0974),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0947),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.092),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0893),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0876),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0839),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.0812),

        DateRangeValue(Date(1991, 02, 01), Date(2010, 12, 31), 0.0785),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Retraites des agents des collectivités locales (taux hors NBI)",
)

cotsoc_sal_fonc_colloc_cnracl2 = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1984, 01, 01), Date(2020, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2020, 01, 01), Date(2020, 12, 31), 0.108, comment = "TODO: CHECK change because reforme"),

        DateRangeValue(Date(2019, 01, 01), Date(2019, 12, 31), 0.1053),

        DateRangeValue(Date(2018, 01, 01), Date(2018, 12, 31), 0.1026),

        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.0999),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0972),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.094),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0908),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0876),

        DateRangeValue(Date(2012, 11, 01), Date(2012, 12, 31), 0.0849),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 10, 31), 0.0839),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.0812),

        DateRangeValue(Date(1991, 02, 01), Date(2010, 12, 31), 0.0785),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Collectivités locales - Fonction publique hospitalière ; Retraites des agents des collectivités locales (taux NBI)",
)

cotsoc_sal_fonc_commun_ind_maj_ref = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 05, 01), Date(2006, 06, 30), 285),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 01, 31), 286),
    DateRangeValue(Date(2007, 02, 01), Date(2008, 02, 29), 288),
    DateRangeValue(Date(2008, 03, 01), Date(2008, 09, 30), 289),
    DateRangeValue(Date(2008, 10, 01), Date(2009, 06, 30), 290),
    DateRangeValue(Date(2009, 07, 01), Date(2010, 12, 31), 292),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 295),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 302),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 309),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Commune à toutes les fonctions publiques ; Indice majoré de référence",
)

cotsoc_sal_fonc_commun_plafond_base_solidarite = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 12516.0, comment = "TODO check. Pas dispo dans barème IPP"),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Commune à toutes les fonctions publiques ; Plafond de la contribution exceptionnelle de solidarité",
)

cotsoc_sal_fonc_commun_pt_ind = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 02, 28), 51.8174),
    DateRangeValue(Date(2002, 03, 01), Date(2002, 11, 30), 52.1284),
    DateRangeValue(Date(2002, 12, 01), Date(2003, 12, 31), 52.493),
    DateRangeValue(Date(2004, 01, 01), Date(2005, 01, 31), 52.7558),
    DateRangeValue(Date(2005, 02, 01), Date(2005, 06, 30), 53.0196),
    DateRangeValue(Date(2005, 07, 01), Date(2005, 10, 31), 53.2847),
    DateRangeValue(Date(2005, 11, 01), Date(2006, 06, 30), 53.711),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 01, 31), 53.9795),
    DateRangeValue(Date(2007, 02, 01), Date(2008, 02, 29), 54.4113),
    DateRangeValue(Date(2008, 03, 01), Date(2008, 09, 30), 54.6834),
    DateRangeValue(Date(2008, 10, 01), Date(2009, 06, 30), 54.8475),
    DateRangeValue(Date(2009, 07, 01), Date(2009, 09, 30), 55.1217),
    DateRangeValue(Date(2009, 10, 01), Date(2010, 06, 30), 55.2871),
    DateRangeValue(Date(2010, 07, 01), Date(2014, 12, 31), 55.5635),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Commune à toutes les fonctions publiques ; Valeur annuelle point de FP",
)

cotsoc_sal_fonc_commun_solidarite = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1983, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1983, 01, 01), Date(2014, 12, 31), 0.01),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1983, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1983, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Commune à toutes les fonctions publiques ; Contribution exceptionnelle de solidarité (seuil d'assujetissment variable)",
  comment = "TODO: c'est une contribution donc à mettre avec la CSG/CRDS",
)

cotsoc_sal_fonc_contract_ircantec = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1971, 01, 01), Date(2017, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.0224),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0218),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0211),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0203),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0196),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0188),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.0182),

        DateRangeValue(Date(1989, 01, 01), Date(2010, 12, 31), 0.018),

        DateRangeValue(Date(1971, 01, 01), Date(1988, 12, 31), 0.014),
      ],
      base = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 1.25),

        DateRangeValue(Date(1991, 04, 01), Date(1991, 12, 31), 1.2),

        DateRangeValue(Date(1989, 01, 01), Date(1991, 03, 31), 1.09),

        DateRangeValue(Date(1988, 01, 01), Date(1988, 12, 31), 1.0),

        DateRangeValue(Date(1983, 01, 01), Date(1987, 12, 31), 0.8),

        DateRangeValue(Date(1971, 01, 01), Date(1982, 12, 31), 0.6),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1971, 01, 01), Date(2017, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.0556),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.054),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.0526),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.051),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0498),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0488),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.048),

        DateRangeValue(Date(1989, 01, 01), Date(2010, 12, 31), 0.0476),

        DateRangeValue(Date(1971, 01, 01), Date(1988, 12, 31), 0.0425),
      ],
      base = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 1.25),

        DateRangeValue(Date(1991, 04, 01), Date(1991, 12, 31), 1.2),

        DateRangeValue(Date(1989, 01, 01), Date(1991, 03, 31), 1.09),

        DateRangeValue(Date(1988, 01, 01), Date(1988, 12, 31), 1.0),

        DateRangeValue(Date(1983, 01, 01), Date(1987, 12, 31), 0.8),

        DateRangeValue(Date(1971, 01, 01), Date(1982, 12, 31), 0.6),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1992, 01, 01), Date(2017, 12, 31), 8.0),

        DateRangeValue(Date(1971, 01, 01), Date(1991, 12, 31), 4.75),
      ],
      rate = [
        DateRangeValue(Date(1971, 01, 01), Date(2017, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Agents non titulaires ; IRCANTEC",
)

cotsoc_sal_fonc_etat_pension = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2020, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2020, 01, 01), Date(2020, 12, 31), 0.1055),

        DateRangeValue(Date(2019, 01, 01), Date(2019, 12, 31), 0.1028),

        DateRangeValue(Date(2018, 01, 01), Date(2018, 12, 31), 0.1001),

        DateRangeValue(Date(2017, 01, 01), Date(2017, 12, 31), 0.0974),

        DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 0.0947),

        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.092),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0893),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.0876),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0839),

        DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.0812),

        DateRangeValue(Date(2003, 01, 01), Date(2010, 12, 31), 0.0785),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Etat ; Retenue pour pension civile (assiette=TI + NBI)",
)

cotsoc_sal_fonc_etat_rafp = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1993, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 0.05),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Etat ; Régime additionnel de retraite (RAFP, totalité sauf TI et NBI, min 20% TI )",
)

cotsoc_sal_fonc_etat_rafp_plaf_assiette = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques à la fonction publique ; Etat ; Plafond d'assiette",
)

cotsoc_sal_microsocial_cipav = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2012, 12, 31), 0.183),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.213),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.233),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.252),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Régime micro-social ; Taux professions libérales relevant du  CIPAV",
)

cotsoc_sal_microsocial_rsi = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2012, 12, 31), 0.213),
    DateRangeValue(Date(2013, 01, 01), Date(2015, 12, 31), 0.246),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Régime micro-social ; Taux professions libérales relevant du RSI",
)

cotsoc_sal_microsocial_servi = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2012, 12, 31), 0.213),
    DateRangeValue(Date(2013, 01, 01), Date(2015, 12, 31), 0.246),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Régime micro-social ; Taux pour les activités de prestations et de services",
)

cotsoc_sal_microsocial_vente = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2012, 12, 31), 0.12),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.14),
    DateRangeValue(Date(2014, 01, 01), Date(2015, 12, 31), 0.141),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Régime micro-social ; Taux pour les activités de ventes",
)

cotsoc_sal_noncadre_agff = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.008),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.009),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 3.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 04, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques aux non cadres ; Cotisation AGFF",
)

cotsoc_sal_noncadre_arrconc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2000, 01, 01), Date(2015, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2000, 01, 01), Date(2015, 12, 31), 0.0, comment = "1er tranche commune aux cadres et aux non-cadres"),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2000, 01, 01), Date(2015, 12, 31), 1.0),
      ],
      rate = [
        DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 0.081),

        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 0.0805),

        DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.08),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.07),

        DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.06),

        DateRangeValue(Date(2000, 01, 01), Date(2001, 12, 31), 0.05),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2003, 01, 01), Date(2015, 12, 31), 3.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2015, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Salariales ; Spécifiques aux non cadres ; Retraite complémentaire ARRCO",
)

cotsoc_taxes_sal_taux_guy = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0255),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Taxes sur les salaires ; Taxes sur les salaires : taux normal ; Taxes sur les salaires : Guyane",
)

cotsoc_taxes_sal_taux_metro = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0425),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Taxes sur les salaires ; Taxes sur les salaires : taux normal ; Taxes sur les salaires : France métropolitaine",
)

cotsoc_taxes_sal_taux_mgr = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0295),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Taxes sur les salaires ; Taxes sur les salaires : taux normal ; Taxes sur les salaires : Guadeloupe, Martinique, Réunion",
)

cotsoc_taxes_sal_taux_maj = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 7666.0),

        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 7604.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 7491.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 7461.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 7250.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 7156.0),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7029.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 6904.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 6789.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 6675.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 6563.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 6459.26),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0425),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 15308.0),

        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 15185.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 14960.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 14902.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 14481.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 14295.0),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 14042.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 13793.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 13563.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 13337.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 13113.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 12906.33),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0935),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 151208.0),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 150000.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.1575),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Taxes sur les salaires ; Taxes sur les salaires : taux majorés (France métropolitaine seulement)",
)

cotsoc_tehr = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 1000000.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.5),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Cotisations sociales ; Taxes exceptionnelles sur les hauts revenus",
)

crds_act = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.005),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.005),
      ],
      base = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 1.0),

        DateRangeValue(Date(2005, 01, 01), Date(2010, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution au remboursement de la dette sociale (CRDS) ; Revenus d'activité, du chômage et des préretraites",
)

crds_capital = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2013, 12, 31), 0.005),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution au remboursement de la dette sociale (CRDS) ; Revenus du capital",
)

crds_rst = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.005),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution au remboursement de la dette sociale (CRDS) ; Retraites et pensions d'invalidité",
)

csg_act_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.051),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 0.051),
      ],
      base = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 1.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Revenus d'activité ; CSG déductible",
)

csg_act_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1991, 02, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.024),

        DateRangeValue(Date(1991, 02, 01), Date(1993, 06, 30), 0.011),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1991, 02, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 07, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 07, 01), Date(2014, 12, 31), 0.024),
      ],
      base = [
        DateRangeValue(Date(2011, 07, 01), Date(2014, 12, 31), 1.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Revenus d'activité ; CSG imposable",
)

csg_capital_deduc = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2003, 12, 31), 0.051),
    DateRangeValue(Date(2004, 01, 01), Date(2011, 12, 31), 0.058),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.051),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Revenus du capital ; dont CSG déductible",
)

csg_capital_glob = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2003, 12, 31), 0.075),
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.082),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Revenus du capital ; Taux global",
)

csg_chom_min_exo = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 1.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations chômage ; Revenu minimum imposable (en multiple du smic annuel brut)",
)

csg_chom_plein_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.038),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.038),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 1.0),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations chômage ; Taux plein ; CSG déductible",
)

csg_chom_plein_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.024),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.024),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 1.0),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations chômage ; Taux plein ; CSG non déductible",
)

csg_chom_reduit_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.038),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1997, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.038),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 1.0),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations chômage ; Taux réduit ; CSG déductible",
)

csg_chom_reduit_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.9825),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 4.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      base = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 1.0),

        DateRangeValue(Date(2005, 01, 01), Date(2011, 12, 31), 0.97),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.95),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations chômage ; Taux réduit ; CSG imposable",
)

csg_indemn_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.038),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Indemnités journalières ; CSG déductible",
)

csg_indemn_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.024),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Indemnités journalières ; CSG non déductible",
)

csg_int_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.051),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Accessoires du salaire (intéressement etc) ; CSG déductible",
)

csg_int_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.024),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Accessoires du salaire (intéressement etc) ; CSG imposable",
)

csg_preretraite_plein_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 0.042),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.038),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.042),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations de préretraite ; Taux plein ; CSG déductible",
)

csg_preretraite_plein_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2007, 10, 11), Date(2014, 12, 31), 0.033),

        DateRangeValue(Date(1998, 01, 01), Date(2007, 10, 10), 0.024),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations de préretraite ; Taux plein ; CSG non déductible",
)

csg_preretraite_reduit_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2008, 01, 01), Date(2014, 12, 31), 0.038),

        DateRangeValue(Date(1997, 01, 01), Date(2007, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations de préretraite ; Taux réduit ; CSG déductible",
)

csg_preretraite_reduit_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Allocations de préretraite ; Taux réduit ; CSG non déductible",
)

csg_retraite_plein_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1991, 02, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 0.042),

        DateRangeValue(Date(1998, 01, 01), Date(2004, 12, 31), 0.038),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.042),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Pensions de retraites et d'invalidité ; Taux plein ; CSG déductible",
)

csg_retraite_plein_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1991, 02, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1993, 07, 01), Date(2014, 12, 31), 0.024),

        DateRangeValue(Date(1991, 02, 01), Date(1993, 06, 30), 0.011),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Pensions de retraites et d'invalidité ; Taux plein ; CSG non déductible",
)

csg_retraite_reduit_deduc = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.038),

        DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 0.01),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Pensions de retraites et d'invalidité ; Taux réduit ; CSG déductible",
)

csg_retraite_reduit_impos = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(1997, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Contribution sociale généralisée (CSG) ; Pensions de retraites et d'invalidité ; Taux réduit ; CSG non déductible",
)

fam_aeeh_age = Parameter{Int32}(
  [
    DateRangeValue(Date(1976, 08, 01), Date(2014, 03, 31), 20),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Limite d'âge",
)

fam_aeeh_base = Parameter{Float32}(
  [
    DateRangeValue(Date(1985, 01, 01), Date(2014, 03, 31), 0.32),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Allocation de base",
)

fam_aeeh_cpl1 = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2014, 03, 31), 0.24),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Complément de catégorie 1",
)

fam_aeeh_cpl2 = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.72),
    DateRangeValue(Date(2002, 04, 01), Date(2014, 03, 31), 0.65),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Complément de catégorie 2",
)

fam_aeeh_cpl3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2014, 03, 31), 0.92),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Complément de catégorie 3",
)

fam_aeeh_cpl3b = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2013, 12, 31), 0.59),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Seuil dépense b complément de catégorie 3",
)

fam_aeeh_cpl3c = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2013, 12, 31), 1.24),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Seuil dépense c complément de catégorie 3",
)

fam_aeeh_cpl4 = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.0),
    DateRangeValue(Date(2002, 04, 01), Date(2014, 03, 31), 1.4257),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Complément de catégorie 4",
)

fam_aeeh_cpl4b = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.0),
    DateRangeValue(Date(2002, 04, 01), Date(2013, 12, 31), 0.8257),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Seuil dépense b complément de catégorie 4",
)

fam_aeeh_cpl4c = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.0),
    DateRangeValue(Date(2002, 04, 01), Date(2013, 12, 31), 1.0957),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Seuil dépense c complément de catégorie 4",
)

fam_aeeh_cpl4d = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.0),
    DateRangeValue(Date(2002, 04, 01), Date(2013, 12, 31), 1.7457),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Seuil dépense d complément de catégorie 4",
)

fam_aeeh_cpl5 = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.0),
    DateRangeValue(Date(2002, 04, 01), Date(2014, 03, 31), 1.8221),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Complément de catégorie 5",
)

fam_aeeh_cpl5a = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 09, 24), Date(2002, 03, 31), 0.0),
    DateRangeValue(Date(2002, 04, 01), Date(2013, 12, 31), 0.7164),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Seuil dépense complément de catégorie 5",
)

fam_aeeh_cpl6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2002, 12, 31), 916.32),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 930.05),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 945.87),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 964.78),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 982.15),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 999.83),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 1010.82),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 1018.91),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 03, 31), 1029.1),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 1038.36),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 1060.17),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 1082.43),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 1096.5),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Complément de catégorie 6 (majoration pour assistance d’une tierce personne invalide de 3e catégorie)",
)

fam_aeeh_maj2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2005, 02, 12), 0.0),
    DateRangeValue(Date(2005, 02, 13), Date(2014, 03, 31), 0.13),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Majoration (parent isolé) de catégorie 2",
)

fam_aeeh_maj3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2005, 02, 12), 0.0),
    DateRangeValue(Date(2005, 02, 13), Date(2014, 03, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Majoration (parent isolé) de catégorie 3",
)

fam_aeeh_maj4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2005, 02, 12), 0.0),
    DateRangeValue(Date(2005, 02, 13), Date(2014, 03, 31), 0.57),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Majoration (parent isolé) de catégorie 4",
)

fam_aeeh_maj5 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2005, 02, 12), 0.0),
    DateRangeValue(Date(2005, 02, 13), Date(2014, 03, 31), 0.73),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Majoration (parent isolé) de catégorie 5",
)

fam_aeeh_maj6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 04, 01), Date(2005, 02, 12), 0.0),
    DateRangeValue(Date(2005, 02, 13), Date(2014, 03, 31), 1.07),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation d'éducation de l'enfant handicapé / Allocation d'éducation spéciale ; Majoration (parent isolé) de catégorie 6",
)

fam_af_age1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 12, 31), 0),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Âge mininimal pour toucher les AF",
)

fam_af_age2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 12, 31), 19),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Âge maximal pour toucher les AF (hors forfait)",
)

fam_af_age3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2003, 07, 01), Date(2014, 03, 31), 20),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Âge maximal pour toucher les AF (forfait datant de 2003-07-01 inclus )",
)

fam_af_bmaf = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 334.84),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 341.87),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 347.68),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 353.59),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 361.37),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 367.87),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 374.12),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 377.86),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 389.2),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 389.2),
    DateRangeValue(Date(2011, 01, 01), Date(2012, 03, 31), 395.04),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 399.0),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 403.79),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 406.21),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Base mensuelle des allocations familiales",
)

fam_af_bmaf_n_2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 327.27),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 328.91),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 334.84),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 341.87),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 347.68),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 353.59),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 361.37),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 367.87),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 374.12),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 377.86),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 389.2),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 389.2),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 395.04),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 399.0),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 403.79),
    DateRangeValue(Date(2016, 01, 01), Date(2016, 12, 31), 406.21),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Bmaf de l'année n-2",
)

fam_af_crds = Parameter{Float32}(
  [
    DateRangeValue(Date(1996, 01, 01), Date(2013, 12, 31), 0.005),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Taux de crds",
)

fam_af_maj_age_age1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 11),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Majorations pour âge ; Âge de début de la 1ere majoration",
)

fam_af_maj_age_age2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2008, 04, 30), 16),
    DateRangeValue(Date(2008, 05, 01), Date(2014, 03, 31), 14),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Majorations pour âge ; Âge de début de la 2ème majoration",
)

fam_af_maj_age_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2008, 04, 30), 0.09),
    DateRangeValue(Date(2008, 05, 01), Date(2014, 03, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Majorations pour âge ; 1ère majoration pour âge",
)

fam_af_maj_age_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 0.16),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Majorations pour âge ; 2ème majoration pour âge (14 ans pour les enfants né après le 30/04/97)",
)

fam_af_modulation_enfant_supp = Parameter{Float32}(
  [
    DateRangeValue(Date(2015, 07, 01), Date(2015, 12, 31), 500.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Modulation des allocations familiales en fonction des ressources ; Majoration du plafond mensuel de ressources par enfant supplémentaire (à partir du 3e enfant)",
)

fam_af_modulation_plafond1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2015, 07, 01), Date(2015, 12, 31), 6000.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Modulation des allocations familiales en fonction des ressources ; Plafond mensuel de ressources n°1",
)

fam_af_modulation_plafond2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2015, 07, 01), Date(2015, 12, 31), 8000.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Modulation des allocations familiales en fonction des ressources ; Plafond mensuel de ressources n°2",
)

fam_af_modulation_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2015, 07, 01), Date(2015, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Modulation des allocations familiales en fonction des ressources ; Taux de modulation au delà du plafond 1",
)

fam_af_modulation_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2015, 07, 01), Date(2015, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Modulation des allocations familiales en fonction des ressources ; Taux de modulation au delà du plafond 2",
)

fam_af_seuil_rev_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2014, 03, 31), 0.55),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Seuil de revenu pour être considéré comme enfant à charge (en smic)",
)

fam_af_taux_enf1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Taux (% de la BMAF) ; Premier enfant à charge",
)

fam_af_taux_enf2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 0.32),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Taux (% de la BMAF) ; Deuxième enfant à charge",
)

fam_af_taux_enf3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 0.41),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Taux (% de la BMAF) ; Troisième enfant à charge et suivants",
)

fam_af_taux_forfait = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2003, 06, 30), 0.0),
    DateRangeValue(Date(2003, 07, 01), Date(2014, 03, 31), 0.20234),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocations familiales ; Taux (% de la BMAF) ; Allocation forfaitaire par enfant de 20 ans",
)

fam_afeama_age1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 6),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Aide à la famille pour l'emploi d'une assistante maternelle agréée ; Limite d'âge (stricte) pour bénéficier de l'AFEAMA",
)

fam_afeama_mult_seuil1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 0.8),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Aide à la famille pour l'emploi d'une assistante maternelle agréée ; Premier plafond de ressources pour un enfant (en % du plafond ARS)",
)

fam_afeama_mult_seuil2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 1.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Aide à la famille pour l'emploi d'une assistante maternelle agréée ; Second plafond de ressources pour un enfant",
)

fam_afeama_taux_maxi = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 0.2937),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Aide à la famille pour l'emploi d'une assistante maternelle agréée ; Montant maximal (en pourcentage de la BMAF)",
)

fam_afeama_taux_med = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 0.2322),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Aide à la famille pour l'emploi d'une assistante maternelle agréée ; Montant median (en pourcentage de la BMAF)",
)

fam_afeama_taux_mini = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 0.1924),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Aide à la famille pour l'emploi d'une assistante maternelle agréée ; Montant minimal (en pourcentage de la BMAF)",
)

fam_aged_age1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2006, 12, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Première limite d'âge (stricte) pour bénéficier de l'AGED",
)

fam_aged_age2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2006, 12, 31), 6),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Seconde limite d'âge (stricte) pour bénéficier de l'AGED",
)

fam_aged_remb_plaf1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2001, 12, 31), 6666.0),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 1016.23),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 1032.0),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 1050.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Plafond des remboursements trimestriels (sans conditions de resources)",
)

fam_aged_remb_plaf2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2001, 12, 31), 9997.0),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 1524.03),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 1548.0),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 1574.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Plafond des remboursements trimestriels (sous conditions de resources)",
)

fam_aged_remb_plaf3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2001, 12, 31), 3331.0),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 507.81),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 516.0),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 525.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Plafond des remboursements trimestriels (entre les deux limites d'âge ou APE taux partiel)",
)

fam_aged_remb_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Taux de remboursement des cotisations (sans condition de ressources)",
)

fam_aged_remb_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Taux de remboursement des cotisations (sous condition de ressources)",
)

fam_aged_remb_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2003, 07, 01), Date(2006, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Taux de remboursements des cotisations (entre les deux limites d'âge ou APE taux partiel)",
)

fam_aged_revenus_plaf = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 07, 01), Date(2001, 12, 31), 224317.0),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 06, 30), 34196.91),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 34744.0),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 35335.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de garde d'enfant à domicile (AGED) ; Plafond des revenus nets catégoriels annuels",
)

fam_ape_age = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 06, 30), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation parentale d'éducation (APE) ; Limite d'âge (stricte) pour bénéficier de l'APE",
)

fam_ape_tx_50 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 06, 30), 0.9427),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation parentale d'éducation (APE) ; Activité au plus égale au mi-temps de la durée légale du travail (en % de la bmaf)",
)

fam_ape_tx_80 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 06, 30), 0.7129),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation parentale d'éducation (APE) ; Activité entre 50% et 80% de la durée légale du travail (en % de la bmaf)",
)

fam_ape_tx_inactif = Parameter{Float32}(
  [
    DateRangeValue(Date(1987, 04, 01), Date(2006, 06, 30), 1.4275),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation parentale d'éducation (APE) ; Cessation complète d'activité à plein temps (en % de la bmaf)",
)

fam_apje_age = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 06, 30), 3.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation pour jeune enfant (APJE) ; Âge limite inférieur",
)

fam_apje_plaf = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2001, 06, 30), 13421),
    DateRangeValue(Date(2001, 07, 01), Date(2002, 06, 30), 13636),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 13854),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 14090),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 14358),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 14818),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation pour jeune enfant (APJE) ; Plafond de ressources",
)

fam_apje_plaf_maj = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2001, 06, 30), 5394),
    DateRangeValue(Date(2001, 07, 01), Date(2002, 06, 30), 5481),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 5568),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 4663),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 5771),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 5599),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation pour jeune enfant (APJE) ; Majoration du plafond pour biactifs ou isolé",
)

fam_apje_plaf_tx1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2006, 06, 30), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation pour jeune enfant (APJE) ; Majoration du plafond pour les 2 premiers enfants",
)

fam_apje_plaf_tx2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2006, 06, 30), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation pour jeune enfant (APJE) ; Majoration du plafond à partir du 3ème enfant",
)

fam_apje_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2006, 06, 30), 0.4595),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation pour jeune enfant (APJE) ; Taux de l'APJE",
)

fam_ars_agec = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 03, 31), 11),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Âge d'entrée au collège",
)

fam_ars_agel = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 03, 31), 15),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Âge d'entrée au lycée",
)

fam_ars_agep = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 03, 31), 6),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Âge d'entrée à l'école primaire",
)

fam_ars_ages = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 03, 31), 18),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Âge de sortie du lycée",
)

fam_ars_plaf = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2001, 06, 30), 12027),
    DateRangeValue(Date(2001, 07, 01), Date(2002, 06, 30), 12219),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 12415),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 12626),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 12866),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 13307),
    DateRangeValue(Date(2006, 07, 01), Date(2008, 12, 31), 16916),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 17170),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 17651),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 17669),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 17846),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 18221),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 18567),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Plafond de ressources",
)

fam_ars_plaf_enf_supp = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Majoration du plafond de ressources par enfant à charge",
)

fam_ars_seuil_nv = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2015, 03, 31), 15),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Seuil de non versement",
)

fam_ars_tx0610 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.7322),
    DateRangeValue(Date(2008, 01, 01), Date(2012, 09, 02), 0.725),
    DateRangeValue(Date(2012, 09, 03), Date(2015, 03, 31), 0.8972),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Taux pour les écoliers (en % de bmaf)",
)

fam_ars_tx1114 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.7322),
    DateRangeValue(Date(2008, 01, 01), Date(2012, 08, 31), 0.7649),
    DateRangeValue(Date(2012, 09, 01), Date(2015, 03, 31), 0.9467),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Taux pour les collégiens (en % de bmaf)",
)

fam_ars_tx1518 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.7322),
    DateRangeValue(Date(2008, 01, 01), Date(2012, 09, 02), 0.7915),
    DateRangeValue(Date(2012, 09, 03), Date(2015, 03, 31), 0.9795),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de rentrée scolaire ; Taux pour les lycéens (en % de bmaf)",
)

fam_asf_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 0.225),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.2363),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de soutien familial ; Orphelin de père ou de mère (un seul parent manquant) ou situation assimilée: beaux parents ou pension alimentaire non versée",
)

fam_asf_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 0.3),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.315),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Allocation de soutien familial ; Orphelin (de père et de mère), ou situation assimilée",
)

fam_cf_age1 = Parameter{Int32}(
  [
    DateRangeValue(Date(1986, 01, 01), Date(2014, 03, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Âge limite inférieur",
)

fam_cf_age2 = Parameter{Int32}(
  [
    DateRangeValue(Date(1986, 01, 01), Date(1996, 12, 31), 17),
    DateRangeValue(Date(1997, 01, 01), Date(1997, 12, 31), 18),
    DateRangeValue(Date(1998, 01, 01), Date(2014, 03, 31), 21),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Âge limite supérieur",
)

fam_cf_plaf = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2001, 06, 30), 13421),
    DateRangeValue(Date(2001, 07, 01), Date(2002, 06, 30), 13636),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 13854),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 14090),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 14358),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 14818),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 14850),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 06, 30), 18878),
    DateRangeValue(Date(2008, 07, 01), Date(2009, 12, 31), 19161),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 19698),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 19718),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 19916),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 20333),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 20719),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Plafond de ressources",
)

fam_cf_plaf_maj = Parameter{Int32}(
  [
    DateRangeValue(Date(2000, 07, 01), Date(2001, 06, 30), 5394),
    DateRangeValue(Date(2001, 07, 01), Date(2002, 06, 30), 5481),
    DateRangeValue(Date(2002, 07, 01), Date(2003, 06, 30), 5568),
    DateRangeValue(Date(2003, 07, 01), Date(2004, 06, 30), 4663),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 5771),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 5599),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 5969),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 06, 30), 7588),
    DateRangeValue(Date(2008, 07, 01), Date(2009, 12, 31), 7702),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 7918),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 7926),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 8005),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 8173),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 8328),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Majoration du plafond pour biactifs ou isolé",
)

fam_cf_plaf_tx1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Majoration du plafond pour les 2 premiers enfants",
)

fam_cf_plaf_tx2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Majoration du plafond à partir du 3ème enfant",
)

fam_cf_tx = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.4165),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Complément familial ; Taux du complément familial",
)

fam_paje_base_age = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Allocation de base ; Limite d'âge (stricte) pour bénéficier de la PAJE",
)

fam_paje_base_plaf = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 19303),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 19670),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 20004),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 20344),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 25862),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 26250),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 26985),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 27012),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 27283),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 27855),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 28384),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Allocation de base ; Plafond de ressources",
)

fam_paje_base_plaf_maj = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 7758),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 7905),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 8039),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 8176),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 10394),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 10550),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 10845),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 10856),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 10965),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 11195),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 11408),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Allocation de base ; Majoration pour biactifs et isolés",
)

fam_paje_base_plaf_tx1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Allocation de base ; Majoration du plafond pour les 2 premiers enfants",
)

fam_paje_base_plaf_tx2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Allocation de base ; Majoration du plafond à partir du 3ème enfant",
)

fam_paje_base_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 0.4595),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Allocation de base ; Allocation de base (en % de la bmaf)",
)

fam_paje_clca_age = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Limite d'âge (stricte)",
)

fam_paje_clca_avecab_tx_inactif = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 0.9662),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Taux pour les personnes inactives percevant l'allocation de base de la PAJE",
)

fam_paje_clca_avecab_tx_partiel1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.6246),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Taux pour les personnes à temps partiel inf. à 50% percevant l'allocation de base de la PAJE",
)

fam_paje_clca_avecab_tx_partiel2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.3603),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Taux pour les personnes à temps partiel 50pc-80pc percevant l'allocation de base de la PAJE",
)

fam_paje_clca_duree1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 6),
  ],
  unit = "month",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Durée (en mois) de versement pour le premier enfant",
)

fam_paje_clca_sansab_tx_inactif = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 03, 31), 1.4257),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.9662),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Taux pour les personnes inactives ne percevant pas l'allocation de base de la PAJE",
)

fam_paje_clca_sansab_tx_partiel1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 03, 31), 1.0841),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.6246),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Taux pour les personnes à temps partiel inf. à 50% ne percevant pas l'allocation de base de la PAJE",
)

fam_paje_clca_sansab_tx_partiel2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 03, 31), 0.8198),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.3603),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément libre choix d'activité ; Taux pour les personnes à temps partiel 50%-80% ne percevant pas l'allocation de base de la PAJE",
)

fam_paje_clmg_age1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Limite d'âge (stricte) pour une prestation pleine",
)

fam_paje_clmg_age2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 6),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Limite d'âge (stricte) pour une prestation réduite",
)

fam_paje_clmg_ass_mat1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1.7257),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à une assistante maternelle, une association, une entreprise ou une microcréche avant le premier plafond",
)

fam_paje_clmg_ass_mat2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1.4381),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à une assistante maternelle, une association, une entreprise ou une microcréche avant le second plafond",
)

fam_paje_clmg_ass_mat3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1.1505),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à une assistante maternelle, une association, une entreprise ou une microcréche après le second plafond",
)

fam_paje_clmg_domi1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 2.0853),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à une garde à domicile avant le premier plafond",
)

fam_paje_clmg_domi2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1.7976),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à une garde à domicile avant le second plafond",
)

fam_paje_clmg_domi3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1.51),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à une garde à domicile après le second plafond",
)

fam_paje_clmg_empl_dir1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 1.1404),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à un emploi direct avant le premier plafond",
)

fam_paje_clmg_empl_dir2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 0.7191),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à un emploi direct avant le second plafond",
)

fam_paje_clmg_empl_dir3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 0.4314),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Taux pour recours à un emploi direct après le second plafond",
)

fam_paje_clmg_seuil11 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 14349),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 14622),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 14870),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 15123),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 19255),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 19513),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 20059),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 20079),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 20281),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 20706),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Premier plafond de ressources pour un enfant",
)

fam_paje_clmg_seuil12 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 16521),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 16835),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 17120),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 17411),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 22135),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 22467),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 23095),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 23118),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 23350),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 23840),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Premier plafond de ressources pour deux enfants",
)

fam_paje_clmg_seuil1sup = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 2626),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 2655),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 2701),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 2747),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 3492),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3543),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 3643),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 3647),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 3683),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 3761),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Premier plafond de ressources: maj. enfant suppl.",
)

fam_paje_clmg_seuil21 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 31887),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 32493),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 33044),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 33606),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 42722),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 43363),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 44576),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 44621),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 45068),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 46014),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Second plafond de ressources pour un enfant",
)

fam_paje_clmg_seuil22 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 36713),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 37411),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 38045),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 38692),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 49188),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 49926),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 51322),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 51374),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 51889),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 52978),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Second plafond de ressources pour deux enfants",
)

fam_paje_clmg_seuil2sup = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 06, 30), 5791),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 30), 5901),
    DateRangeValue(Date(2005, 07, 01), Date(2006, 06, 30), 6001),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 06, 30), 6103),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 12, 31), 7759),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 7875),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 8096),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 8104),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 8195),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 8357),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément de libre choix du mode de garde ; Second plafond de ressources: maj. enfant suppl.",
)

fam_paje_colca_age = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément optionnel libre choix d'activité ; Age limite (strict) de perception",
)

fam_paje_colca_avecab = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1.5793),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément optionnel libre choix d'activité ; Taux de la prestation en cas de perception de l'allocation de base de la PAJE",
)

fam_paje_colca_sansab = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 2.0388),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Complément optionnel libre choix d'activité ; Taux de la prestation en cas de non perception de l'allocation de base de la PAJE",
)

fam_paje_nais_adopt = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 2.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Prime à la naissance ; facteur multitplicatif de la prime à l'adoption",
)

fam_paje_nais_prime_tx = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2014, 12, 31), 2.2975),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prestations familiales ; Prestation d'accueil du jeune enfant ; Prime à la naissance ; Prime à la naissance et à l'adoption",
)

fonc_IM_100 = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 11, 01), Date(1999, 03, 31), 5029.29),
    DateRangeValue(Date(1999, 04, 01), Date(1999, 11, 30), 5054.45),
    DateRangeValue(Date(1999, 12, 01), Date(2000, 11, 30), 5094.69),
    DateRangeValue(Date(2000, 12, 01), Date(2001, 04, 30), 5120.15),
    DateRangeValue(Date(2001, 05, 01), Date(2001, 10, 31), 5145.76),
    DateRangeValue(Date(2001, 11, 01), Date(2002, 02, 28), 5181.75),
    DateRangeValue(Date(2002, 03, 01), Date(2002, 11, 30), 5212.84),
    DateRangeValue(Date(2002, 12, 01), Date(2003, 12, 31), 5249.33),
    DateRangeValue(Date(2004, 01, 01), Date(2005, 01, 31), 5275.58),
    DateRangeValue(Date(2005, 02, 01), Date(2005, 06, 30), 5301.96),
    DateRangeValue(Date(2005, 07, 01), Date(2005, 10, 31), 5328.47),
    DateRangeValue(Date(2005, 11, 01), Date(2006, 06, 30), 5371.1),
    DateRangeValue(Date(2006, 07, 01), Date(2007, 01, 31), 5397.95),
    DateRangeValue(Date(2007, 02, 01), Date(2008, 02, 29), 5441.13),
    DateRangeValue(Date(2008, 03, 01), Date(2008, 09, 30), 5468.34),
    DateRangeValue(Date(2008, 10, 01), Date(2009, 06, 30), 5484.75),
    DateRangeValue(Date(2009, 07, 01), Date(2009, 09, 30), 5512.17),
    DateRangeValue(Date(2009, 10, 01), Date(2010, 06, 30), 5528.7),
    DateRangeValue(Date(2010, 07, 01), Date(2014, 12, 31), 5556.35),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Indice 100 majoré",
)

fonc_IM_min = Parameter{Int32}(
  [
    DateRangeValue(Date(1998, 06, 14), Date(1999, 03, 19), 249),
    DateRangeValue(Date(1999, 03, 20), Date(1999, 06, 12), 250),
    DateRangeValue(Date(1999, 06, 13), Date(1999, 11, 13), 252),
    DateRangeValue(Date(1999, 11, 14), Date(2001, 04, 30), 253),
    DateRangeValue(Date(2001, 05, 01), Date(2001, 06, 28), 258),
    DateRangeValue(Date(2001, 06, 29), Date(2004, 06, 30), 261),
    DateRangeValue(Date(2004, 07, 01), Date(2005, 06, 29), 263),
    DateRangeValue(Date(2005, 06, 30), Date(2006, 06, 30), 275),
    DateRangeValue(Date(2006, 07, 01), Date(2006, 10, 31), 279),
    DateRangeValue(Date(2006, 11, 01), Date(2007, 06, 30), 280),
    DateRangeValue(Date(2007, 07, 01), Date(2008, 04, 30), 283),
    DateRangeValue(Date(2008, 05, 01), Date(2008, 06, 30), 288),
    DateRangeValue(Date(2008, 07, 01), Date(2009, 06, 30), 290),
    DateRangeValue(Date(2009, 07, 01), Date(2010, 12, 31), 292),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 295),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 07, 06), 302),
    DateRangeValue(Date(2012, 07, 07), Date(2012, 12, 31), 308),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 309),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Indice de traitement minimum",
)

fonc_indem_resid_min = Parameter{Int32}(
  [
    DateRangeValue(Date(1999, 06, 13), Date(1999, 11, 13), 294),
    DateRangeValue(Date(1999, 11, 14), Date(2001, 04, 30), 295),
    DateRangeValue(Date(2001, 05, 01), Date(2006, 10, 31), 297),
    DateRangeValue(Date(2006, 11, 01), Date(2010, 12, 31), 298),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 299),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 07, 06), 306),
    DateRangeValue(Date(2012, 07, 07), Date(2012, 12, 31), 312),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 313, comment = "TODO: check in july 2014 for \"fin\""),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Indemnité de résidence ; Indemnité de résidence : plancher (en indice majoré)",
)

fonc_indem_resid_taux_zone1 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 0.03),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Indemnité de résidence ; Indemnité de résidence : taux ; Indemnité de résidence zone 1 : taux",
)

fonc_indem_resid_taux_zone2 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 0.01),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Indemnité de résidence ; Indemnité de résidence : taux ; Indemnité de résidence zone 2 : taux",
)

fonc_indem_resid_taux_zone3 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Indemnité de résidence ; Indemnité de résidence : taux ; Indemnité de résidence zone 3 : taux",
)

fonc_supp_fam_IM_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 717),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Indice majoré plafond",
)

fonc_supp_fam_IM_min = Parameter{Int32}(
  [
    DateRangeValue(Date(1999, 06, 13), Date(1999, 11, 13), 447),
    DateRangeValue(Date(1999, 11, 14), Date(2006, 10, 31), 448),
    DateRangeValue(Date(2006, 11, 01), Date(2014, 12, 31), 449, comment = "TODO: check in july 2014 for \"fin\""),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Indice majoré plancher",
)

fonc_supp_fam_fixe_enf1 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 2.29),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Part fixe ; 1er enfant",
)

fonc_supp_fam_fixe_enf2 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 10.67),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Part fixe ; 2 enfants",
)

fonc_supp_fam_fixe_enfsupp = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 4.57),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Part fixe ; Enfant supplémentaire",
)

fonc_supp_fam_prop_enf2 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 0.03),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Part proportionnelle au traitement ; Pour 2 enfants",
)

fonc_supp_fam_prop_enf3 = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 0.08),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Part proportionnelle au traitement ; Pour 3 enfants",
)

fonc_supp_fam_prop_enfsupp = Parameter{Float32}(
  [
    DateRangeValue(Date(1999, 07, 01), Date(2014, 12, 31), 0.06),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Traitement des fonctionnaires ; Supplément familial de traitement ; Part proportionnelle au traitement ; Par nfant supplémentaire",
)

ir_abattements_speciaux_enf_montant = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 3824),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 4137),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 4338),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 4410),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 4489),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 5495),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 5568),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 5729),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 5753),
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 5698),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 5753),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Abattements spéciaux ; Enfants à charge (par personne rattachée)",
)

ir_abattements_speciaux_inv_max1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 9790),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 9960),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 10130),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 10310),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 10500),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 13370),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 13550),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 13950),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 14010),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 14220),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 14510),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 14630),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Abattements spéciaux ; Âgé ou invalide - 1er cas limite",
)

ir_abattements_speciaux_inv_max2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 15820),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 16090),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 16370),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 16650),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 16950),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 21570),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 21860),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 22500),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 22590),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 22930),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 23390),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 23580),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Abattements spéciaux ; Âgé ou invalide - 2ème cas limite",
)

ir_abattements_speciaux_inv_montant = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 1590),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 1618),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 1646),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 1674),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 1706),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 2172),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2202),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2266),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2276),
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 2312),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 2332),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Abattements spéciaux ; Âgé ou invalide - montant",
)

ir_autre_D_enfJ = Parameter{Bool}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), true),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Variables pour scénario de réforme ; Indicatrice pour rattachement d'enfant majeur",
)

ir_autre_alloc_imp = Parameter{Bool}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), false),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Variables pour scénario de réforme ; Allocations familiales imposables",
)

ir_autre_finpfl = Parameter{Bool}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), false),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Variables pour scénario de réforme ; Indicatrice pour imposition des revenus du capital au barème",
)

ir_autre_hsup_exo = Parameter{Bool}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2006, 12, 31), false),
    DateRangeValue(Date(2007, 01, 01), Date(2011, 12, 31), true),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), false),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Variables pour scénario de réforme ; Exonération des heures supplémentaires",
)

ir_bareme = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 6041.0),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 6011.0),

        DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 5963.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 5875.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 5852.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 5687.0),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 5614.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 4412.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 4334.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 4262.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 4191.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 4121.0),
      ],
      rate = [
        DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.055),

        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.0683),

        DateRangeValue(Date(2001, 01, 01), Date(2002, 12, 31), 0.0705),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 12051.0),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 11991.0),

        DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 11896.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 11720.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 11673.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 11344.0),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 11198.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 8677.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 8524.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 8382.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 8242.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 8104.0),
      ],
      rate = [
        DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.14),

        DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.1914),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.21),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 26764.0),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 26631.0),

        DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 26420.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 26030.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 25926.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 25195.0),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 24872.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 15274.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 15004.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 14753.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 14506.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 14264.0),
      ],
      rate = [
        DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.3),

        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.2826),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 0.2914),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.31),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 71754.0),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 71397.0),

        DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 70830.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 69783.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 69505.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 67546.0),

        DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 66679.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 24731.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 24294.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 23888.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 23489.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 23096.0),
      ],
      rate = [
        DateRangeValue(Date(2010, 01, 01), Date(2014, 12, 31), 0.41),

        DateRangeValue(Date(2006, 01, 01), Date(2009, 12, 31), 0.4),

        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.3738),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 0.3854),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.41),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 151956.0),

        DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 151200.0),

        DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 150000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 40241.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 39529.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 38868.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 38218.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 37579.0),
      ],
      rate = [
        DateRangeValue(Date(2012, 01, 01), Date(2014, 12, 31), 0.45),

        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.4262),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 0.4394),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.4675),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 49624.0),

        DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 48747.0),

        DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 47932.0),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 47131.0),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 46343.0),
      ],
      rate = [
        DateRangeValue(Date(2003, 01, 01), Date(2005, 12, 31), 0.4809),

        DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 0.4958),

        DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.5275),
      ],
    ),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Tranches de l'IR",
)

ir_cehr = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 250000.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.03),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 500000.0),
      ],
      rate = [
        DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.04),
      ],
    ),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Contribution exceptionnelle sur les hauts revenus",
)

ir_cesthra = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 1000000.0),
      ],
      rate = [
        DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.75),
      ],
    ),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Contribution exceptionnelle de solidarité sur les très hauts revenus d'activité",
)

ir_charges_deductibles_acc75a_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 2826),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 2862),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 3000),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 3051),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 3106),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 3162),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 3203),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 3296),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3309),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 3359),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Frais d'acceuil d'une personne de plus de 75 ans ; Maximum par personne",
)

ir_charges_deductibles_cinema_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 18000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Souscription en faveur du cinéma ou de l'audiovisuel (case AA) ; Maximum",
)

ir_charges_deductibles_cinema_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1984, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Souscription en faveur du cinéma ou de l'audiovisuel (case AA) ; Taux",
)

ir_charges_deductibles_deduc_perp_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 24154),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 24854),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 25747),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 26621),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 27446),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 27696),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 28282),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 29097),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 29098),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Déduction pour versements sur PERP ; Maximum par personne",
)

ir_charges_deductibles_deduc_perp_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 3019),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 3107),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 3218),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 3328),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 3431),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3462),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 3535),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 3637),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 3638),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Déduction pour versements sur PERP ; Minimum par personne",
)

ir_charges_deductibles_ecodev_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2008, 12, 31), 20000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Compte épargne codéveloppement ; Limite de y euros par personne",
)

ir_charges_deductibles_ecodev_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2008, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Compte épargne codéveloppement ; Limite de x % du revenu",
)

ir_charges_deductibles_grorep_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 25000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Grosses réparations des nus-propriétaires ; Plafond des dépenses",
)

ir_charges_deductibles_penalim_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 3824),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 4137),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 4338),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 4410),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 4489),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 5495),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 5568),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 5729),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 5753),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 5698),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Pensions alimentaires ; Limite par enfant",
)

ir_charges_deductibles_penalim_taux_jgt_2006 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Pensions alimentaires ; Majoration (si ouverture du droit) si jugement avant 2006",
)

ir_charges_deductibles_percap_max_cb = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2006, 12, 31), 15250),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Pertes en capital consécutives à la souscription au capital de sociétés nouvelles ou de sociétés en difficulté (cases CB et DA) ; Case CB",
)

ir_charges_deductibles_percap_max_da = Parameter{Int32}(
  [
    DateRangeValue(Date(2003, 01, 01), Date(2006, 12, 31), 30000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Pertes en capital consécutives à la souscription au capital de sociétés nouvelles ou de sociétés en difficulté (cases CB et DA) ; Case DA",
)

ir_charges_deductibles_sofipe_max = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2006, 12, 31), 19000.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Souscription au capital des SOFIPECHE (case CC) ; Maximum",
)

ir_charges_deductibles_sofipe_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2006, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Charges déductibles ; Souscription au capital des SOFIPECHE (case CC) ; Taux",
)

ir_credits_impot_accult_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Acquisition de biens culturels ; Taux",
)

ir_credits_impot_acqgpl_mont_up = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 1525),
    DateRangeValue(Date(2006, 01, 01), Date(2007, 12, 31), 2000),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses d'acquisition ou de transformation d'un véhicule GPL ou mixte ; Case UP",
)

ir_credits_impot_acqgpl_mont_uq = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 2300),
    DateRangeValue(Date(2006, 01, 01), Date(2007, 12, 31), 3000),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses d'acquisition ou de transformation d'un véhicule GPL ou mixte ; Case UQ",
)

ir_credits_impot_aidmob_montant = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 1500),
    DateRangeValue(Date(2007, 01, 01), Date(2008, 12, 31), 2000),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit d'impôt aide à la mobilité ; Montant par personne",
)

ir_credits_impot_aidper_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 4000),
    DateRangeValue(Date(2005, 01, 01), Date(2014, 12, 31), 5000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Plafond",
)

ir_credits_impot_aidper_pac1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 400, comment = "TODO: 400 par pac"),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Majoration du plafond pour le 1er enfant",
)

ir_credits_impot_aidper_pac2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 500),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 400),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Majoration du plafond pour le 2eme enfant",
)

ir_credits_impot_aidper_pac3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 600),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 400),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Majoration du plafond par enfant supplémentaire",
)

ir_credits_impot_aidper_taux_sf = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 0.3),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Taux (SF)",
)

ir_credits_impot_aidper_taux_wi = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Taux (WI)",
)

ir_credits_impot_aidper_taux_wj = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Taux (WJ)",
)

ir_credits_impot_aidper_taux_wl = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 0.3),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Taux (WL)",
)

ir_credits_impot_aidper_taux_wr = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 0.3),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur de l'aide aux personnes ; Taux (WL)",
)

ir_credits_impot_assloy_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2010, 12, 31), 0.5),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.45),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.38),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Primes d'assurances pour loyers impayés ; Taux",
)

ir_credits_impot_cotsyn_credit_seuil = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.01),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Cotisations syndicales ; Seuil",
)

ir_credits_impot_cotsyn_credit_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.66),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Cotisations syndicales ; Cotisations syndicales",
)

ir_credits_impot_divide_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2009, 12, 31), 115),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dividendes ; Plafond",
)

ir_credits_impot_divide_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1979, 01, 01), Date(2005, 12, 31), 0.5),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dividendes ; Taux",
)

ir_credits_impot_drbail_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.025),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; taxe additionnelle de droit au bail ; Taux",
)

ir_credits_impot_garext_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 2300),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Frais de garde des enfants à l'extérieur du domicile ; Plafond",
)

ir_credits_impot_garext_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1988, 01, 01), Date(2005, 12, 31), 0.25),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Frais de garde des enfants à l'extérieur du domicile ; Taux",
)

ir_credits_impot_inthab_add = Parameter{Int32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 500),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Par enfant à charge",
)

ir_credits_impot_inthab_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 3750),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Plafond",
)

ir_credits_impot_inthab_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Taux 1",
)

ir_credits_impot_inthab_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Taux 2",
)

ir_credits_impot_inthab_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2010, 12, 31), 0.2),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Taux 3",
)

ir_credits_impot_inthab_taux4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Taux 4",
)

ir_credits_impot_inthab_taux5 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Taux 5",
)

ir_credits_impot_inthab_taux6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Intérêts des emprunts pour l'habitation principale ; Taux 6",
)

ir_credits_impot_jeunes_age = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 26),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Âge limite",
)

ir_credits_impot_jeunes_int = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 10060),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Seuil intemédiaire de revenus",
)

ir_credits_impot_jeunes_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 12060),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Plafond de revenus",
)

ir_credits_impot_jeunes_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 2970),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Plancher de revenus",
)

ir_credits_impot_jeunes_montant = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 1500),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; montant",
)

ir_credits_impot_jeunes_nonvers = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 25.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Seuil de non versement",
)

ir_credits_impot_jeunes_rfr_maj = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 4276),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Majoration du revenu fiscal de référence plafond (par demi-part supplémentaire)",
)

ir_credits_impot_jeunes_rfr_mult = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 2.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Multiplicateur du RFR plafond pour couple",
)

ir_credits_impot_jeunes_rfr_plaf = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 25000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; Revenu fiscal de référence plafond (personne seule)",
)

ir_credits_impot_jeunes_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2008, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit jeunes actifs ; taux",
)

ir_credits_impot_percvm_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 0.19),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Crédit d’impôt pertes sur cessions de valeurs mobilières ; Taux",
)

ir_credits_impot_ppe_TP_nbh = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 1820),
  ],
  unit = "hour",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Nombre d'heure du temps plein",
)

ir_credits_impot_ppe_TP_nbj = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 360),
  ],
  unit = "day",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Nombre de jour du temps plein",
)

ir_credits_impot_ppe_abatns = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 1.1111),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Abatement non salarié",
)

ir_credits_impot_ppe_eligi1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 11772),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 11972),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 12176),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 12383),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 12606),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 16042),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 16251),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil d'éligibilité - célibataire",
)

ir_credits_impot_ppe_eligi2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 23544),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 23944),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 24351),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 24765),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 25211),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 32081),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 32498),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil d'éligibilité - couple",
)

ir_credits_impot_ppe_eligi3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 3253),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 3308),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 3364),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 3421),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 3483),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 4432),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 4490),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil d'éligibilité - majoration par demi-part",
)

ir_credits_impot_ppe_monact = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 78),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 79),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 80),
    DateRangeValue(Date(2004, 01, 01), Date(2005, 12, 31), 81),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 82),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 83),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Prime monoactivité",
)

ir_credits_impot_ppe_mono_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 72),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Prime 1er personne à charge, famille monoparentale",
)

ir_credits_impot_ppe_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 31),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 32),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 33),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 34),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 35),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 36),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Prime personne à charge",
)

ir_credits_impot_ppe_seuil1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 3187),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 3265),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 3372),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 3507),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 3570),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 3695),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 3743),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil première tranche",
)

ir_credits_impot_ppe_seuil2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 10623),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 10882),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 11239),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 11689),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 11899),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 12315),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 12475),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil deuxième tranche",
)

ir_credits_impot_ppe_seuil3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 14872),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 15235),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 15735),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 16364),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 16659),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 17227),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 17451),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil troisième tranche",
)

ir_credits_impot_ppe_seuil4 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 21246),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 21764),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 22478),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 23377),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 23798),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 24630),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 24950),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Seuil quatrième tranche",
)

ir_credits_impot_ppe_seuil5 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 22654),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 23207),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 23968),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 24927),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 25376),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 26231),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 26572),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Point de sortie pour les couples monoactifs",
)

ir_credits_impot_ppe_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2002, 12, 31), 0.044),
    DateRangeValue(Date(2003, 01, 01), Date(2004, 12, 31), 0.046),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.068),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.077),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Taux première tranche",
)

ir_credits_impot_ppe_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2002, 12, 31), 0.11),
    DateRangeValue(Date(2003, 01, 01), Date(2004, 12, 31), 0.115),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.17),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.193),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Taux deuxième tranche",
)

ir_credits_impot_ppe_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2005, 12, 31), 0.055),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.051),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Taux troisième tranche",
)

ir_credits_impot_ppe_versmin = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2004, 12, 31), 25),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 30),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prime pour l'emploi ; Versement minimum",
)

ir_credits_impot_preetu_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 1000),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Souscription de prêts étudiants ; Plafond",
)

ir_credits_impot_preetu_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Souscription de prêts étudiants ; Taux",
)

ir_credits_impot_prlire_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.075),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Prélèvement libératoire à restituer ; Taux",
)

ir_credits_impot_quaenv_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 8000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Plafond",
)

ir_credits_impot_quaenv_pac1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 400),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Majoration du plafond pour le 1er enfant",
)

ir_credits_impot_quaenv_pac2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 500),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 400),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Majoration du plafond pour le 2nd enfant",
)

ir_credits_impot_quaenv_pac3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 600),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 400),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Majoration du plafond par enfant supplémentaire",
)

ir_credits_impot_quaenv_taux10 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 10%",
)

ir_credits_impot_quaenv_taux11 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.11),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 11%",
)

ir_credits_impot_quaenv_taux15 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 15%",
)

ir_credits_impot_quaenv_taux17 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.17),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 17%",
)

ir_credits_impot_quaenv_taux18 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 18%",
)

ir_credits_impot_quaenv_taux23 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.23),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 23%",
)

ir_credits_impot_quaenv_taux26 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.26),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 26%",
)

ir_credits_impot_quaenv_taux32 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.32),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 32%",
)

ir_credits_impot_quaenv_taux34 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.34),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 34%",
)

ir_credits_impot_quaenv_taux40 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux 40%",
)

ir_credits_impot_quaenv_taux_sb = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.22),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (SB)",
)

ir_credits_impot_quaenv_taux_sc = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 0.4),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.13),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (SC)",
)

ir_credits_impot_quaenv_taux_sd = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.4),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.36),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (SD)",
)

ir_credits_impot_quaenv_taux_se = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.5),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.45),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.17),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (SE)",
)

ir_credits_impot_quaenv_taux_sh = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.15),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.13),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (SH)",
)

ir_credits_impot_quaenv_taux_tt = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (TT)",
)

ir_credits_impot_quaenv_taux_tu = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.11),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (TU)",
)

ir_credits_impot_quaenv_taux_tv = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (TV)",
)

ir_credits_impot_quaenv_taux_tw = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.17),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (TW)",
)

ir_credits_impot_quaenv_taux_tx = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.26),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (TX)",
)

ir_credits_impot_quaenv_taux_ty = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.32),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (TY)",
)

ir_credits_impot_quaenv_taux_vt = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (VT)",
)

ir_credits_impot_quaenv_taux_vu = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (VU)",
)

ir_credits_impot_quaenv_taux_vv = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (VV)",
)

ir_credits_impot_quaenv_taux_vw = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (VW)",
)

ir_credits_impot_quaenv_taux_vy = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (VY)",
)

ir_credits_impot_quaenv_taux_vz = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (VZ)",
)

ir_credits_impot_quaenv_taux_wf = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.4),
    DateRangeValue(Date(2006, 01, 01), Date(2010, 12, 31), 0.5),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.45),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (WF)",
)

ir_credits_impot_quaenv_taux_wg = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.25),
    DateRangeValue(Date(2006, 01, 01), Date(2009, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (WG)",
)

ir_credits_impot_quaenv_taux_wh = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.15),
    DateRangeValue(Date(2006, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.22),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (WH)",
)

ir_credits_impot_quaenv_taux_wk = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.4),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.36),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (WK)",
)

ir_credits_impot_quaenv_taux_wq = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2010, 12, 31), 0.15),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.13),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Crédits d'impôt ; Dépenses en faveur des économies d'énergies ; Taux (WQ)",
)

ir_crl_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 1830),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Contribution sur les revenus locatifs ; Seuil",
)

ir_crl_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 0.025),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Contribution sur les revenus locatifs ; Taux",
)

ir_decote_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 772),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 786),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 800),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 814),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 828),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 838),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 862),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 866),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 878),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 960),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1016),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 1021),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Décote ; Seuil de la décôte",
)

ir_microfoncier_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 15000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Microfoncier ; Si revenu inférieur à",
)

ir_microfoncier_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1997, 01, 01), Date(1998, 12, 31), 0.33),
    DateRangeValue(Date(1999, 01, 01), Date(2005, 12, 31), 0.4),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Microfoncier ; Abattemment",
)

ir_non_imposable_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 7844),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 8106),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 8251),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 8388),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 10642),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 10769),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 11080),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 11139),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 11300),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 11791),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Condition de non imposabilité ; Seuil de non imposabilité",
)

ir_non_imposable_supp = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 4121),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 4191),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 4262),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 4334),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 4412),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 5614),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 5687),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 5852),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 5875),
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 5963),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 6011),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Condition de non imposabilité ; Supplément par part_seuil 1ère tranche",
)

ir_plafond_qf_celib = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 964),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 980),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 800),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 814),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 829),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 844),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 855),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 880),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 884),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 897),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plafonnement du quotient familial ; Non mariés ou PACS",
)

ir_plafond_qf_celib_enf = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 3490),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 3549),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 3609),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 3670),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 3736),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 3803),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 3852),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 3964),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3980),
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 4040),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 3540),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plafonnement du quotient familial ; Cas célibataires avec enfant(s)",
)

ir_plafond_qf_marpac = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 2017),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 2051),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 2086),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 2121),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 2159),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 2198),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2227),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2292),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2301),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 2336),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 2000),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1500),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plafonnement du quotient familial ; Mariés ou PACS",
)

ir_plafond_qf_reduc_postplafond = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 580),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 590),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 600),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 611),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 622),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 630),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 648),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 651),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 661),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 997),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1497),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plafonnement du quotient familial ; Réduction post plafond",
)

ir_plafond_qf_veuf = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 2017),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 2051),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 2086),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 2121),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 2159),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 2198),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2227),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2292),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2301),
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 2236),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1672),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plafonnement du quotient familial ; Veuf avec enfants à charge",
)

ir_plus_values_caprisque = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.16),
    DateRangeValue(Date(2008, 01, 01), Date(2010, 12, 31), 0.18),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.19),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.24, comment = "TODO: Check 2013"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Capital risque (VL)",
)

ir_plus_values_pea = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 01, 01), Date(2013, 12, 31), 0.225),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Clôture PEA avant 2 ans (3VM)",
)

ir_plus_values_pvce = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.16),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Plus value de cession (RPNS) 16%",
)

ir_plus_values_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.16),
    DateRangeValue(Date(2008, 01, 01), Date(2010, 12, 31), 0.18),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.19),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.24, comment = "TODO: à partir de 2013: imposition au barême progressif de l'ir avec abattement de  20 % (détention 2 à 4 ans), 30 % (4-6 ans), 40% (au-delà)"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Plus values de cession de valeurs mobilières",
)

ir_plus_values_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Actions gratuites 18%",
)

ir_plus_values_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(1995, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Actions gratuites 30%",
)

ir_plus_values_taux4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2009, 12, 31), 0.4),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.41),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Impôt sur les plus values à taux forfaitaires ; Actions gratuites 40%",
)

ir_pv_immo_ann_det1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2012, 01, 31), 5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Nombre d'années pleines de détentions minimale (1er seuil)",
)

ir_pv_immo_ann_det2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2012, 02, 01), Date(2013, 12, 31), 17),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Nombre d'années pleines de détentions 2e seuil",
)

ir_pv_immo_ann_det3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2012, 02, 01), Date(2013, 12, 31), 24),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Nombre d'années pleines de détentions 3e seuil",
)

ir_pv_immo_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2010, 12, 31), 0.16),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.17),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.19),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Taux d'imposition",
)

ir_pv_immo_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2012, 01, 31), 0.1),
    DateRangeValue(Date(2012, 02, 01), Date(2013, 12, 31), 0.02),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Pas annuel du taux (après seuil 1)",
)

ir_pv_immo_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 02, 01), Date(2013, 12, 31), 0.04),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Pas annuel du taux (après seuil 2)",
)

ir_pv_immo_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 02, 01), Date(2013, 12, 31), 0.08),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Plus-values immobilières ; Pas annuel du taux (après seuil 3)",
)

ir_quotient_familial_cdcd = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 1.0),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Enfant issu du conjoint décédé",
)

ir_quotient_familial_conj = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 1.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Conjoint d'un couple marié ou pacsé",
)

ir_quotient_familial_enf1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Enfant de rang 1 ou 2",
)

ir_quotient_familial_enf2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 1.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Enfant de rang 3 ou plus",
)

ir_quotient_familial_inv1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Enfant invalides (cases G ou I)",
)

ir_quotient_familial_inv2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Adultes invalides (case R)",
)

ir_quotient_familial_isol = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Parent isolé",
)

ir_quotient_familial_not31a = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Note 3 : Case P",
)

ir_quotient_familial_not31b = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Note 3 : case W ou G",
)

ir_quotient_familial_not32 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Note 3: personne seule ayant élevé des enfants",
)

ir_quotient_familial_not41 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Note 4 : contribuables invalides",
)

ir_quotient_familial_not42 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Note 4 : anciens combattants",
)

ir_quotient_familial_not6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Parts de quotient familial ; Note 6",
)

ir_recouvrement_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 12),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Mise en recouvrement de l'impôt ; Seuil de recouvrement après imputations",
)

ir_recouvrement_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 61),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Mise en recouvrement de l'impôt ; Seuil de recouvrement avant imputations",
)

ir_reductions_impots_adhcga_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 915),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Frais de comptabilité et d'adhésion CGA ; Plafond par exploitation",
)

ir_reductions_impots_assvie_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2004, 12, 31), 610),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Assurance-vie ; Plafond",
)

ir_reductions_impots_assvie_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2004, 12, 31), 150),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Assurance-vie ; Par enfant à charge",
)

ir_reductions_impots_assvie_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1984, 01, 01), Date(2004, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Assurance-vie ; Taux",
)

ir_reductions_impots_cappme_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 5717),
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 20000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscriptions au capital des PME ; Seuil",
)

ir_reductions_impots_cappme_seuil_tpe = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 50000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscriptions au capital des PME ; Seuil TPE",
)

ir_reductions_impots_cappme_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2012, 12, 31), 0.22),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscriptions au capital des PME ; Taux",
)

ir_reductions_impots_cappme_taux18 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscriptions au capital des PME ; Taux 18%",
)

ir_reductions_impots_cappme_taux22 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.22),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscriptions au capital des PME ; Taux 22%",
)

ir_reductions_impots_cappme_taux25 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscriptions au capital des PME ; Taux 25%",
)

ir_reductions_impots_cotsyn_seuil = Parameter{Float32}(
  [
    DateRangeValue(Date(1988, 01, 01), Date(2013, 12, 31), 0.01),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Cotisations syndicales ; Seuil",
)

ir_reductions_impots_cotsyn_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1988, 01, 01), Date(1990, 12, 31), 0.2),
    DateRangeValue(Date(1991, 01, 01), Date(2000, 12, 31), 0.3),
    DateRangeValue(Date(2001, 01, 01), Date(2004, 12, 31), 0.5),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.66),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Cotisations syndicales ; taux de cotisations syndicales",
)

ir_reductions_impots_creaen_base = Parameter{Int32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 1000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Aides aux créateurs d'entreprises (à compléter) ; Aides aux créateurs d'entreprises",
)

ir_reductions_impots_creaen_hand = Parameter{Int32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 400),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Aides aux créateurs d'entreprises (à compléter) ; Par personne handicapée",
)

ir_reductions_impots_daepad_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 2300),
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 3000),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 10000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dépenses d'accueil dans un établissement pour personnes âgées dépendantes ; Plafond",
)

ir_reductions_impots_daepad_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1989, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dépenses d'accueil dans un établissement pour personnes âgées dépendantes ; Taux",
)

ir_reductions_impots_deffor_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 1000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Défense des forêts contre l'incendie ; Plafond",
)

ir_reductions_impots_deffor_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Défense des forêts contre l'incendie ; Taux",
)

ir_reductions_impots_dfppce_max = Parameter{Float32}(
  [
    DateRangeValue(Date(1995, 01, 01), Date(1998, 12, 31), 0.05),
    DateRangeValue(Date(1999, 01, 01), Date(2000, 12, 31), 0.06),
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 0.1),
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dons aux autres oeuvres et dons effectués pour le financement des partis politiques et des campagnes électorales ; Plafond",
)

ir_reductions_impots_dfppce_max_niv = Parameter{Int32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 15000),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dons aux autres oeuvres et dons effectués pour le financement des partis politiques et des campagnes électorales ; Plafond en niveau par foyer",
)

ir_reductions_impots_dfppce_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1995, 01, 01), Date(1995, 12, 31), 0.4),
    DateRangeValue(Date(1996, 01, 01), Date(2001, 12, 31), 0.5),
    DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 0.6),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.66),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dons aux autres oeuvres et dons effectués pour le financement des partis politiques et des campagnes électorales ; Taux",
)

ir_reductions_impots_doment_iDOMe_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 0.5),
    DateRangeValue(Date(2004, 01, 01), Date(2009, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements dans les DOM-TOM dans le cadre d'une entreprise (à compléter) ; Investissements dans les DOM-TOM dans le cadre d'une entreprise",
)

ir_reductions_impots_doment_iDOMe_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2003, 01, 01), Date(2009, 12, 31), 0.6),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements dans les DOM-TOM dans le cadre d'une entreprise (à compléter) ; Investissements dans les DOM-TOM dans le cadre d'une entreprise",
)

ir_reductions_impots_doment_iDOMls_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2003, 01, 01), Date(2008, 12, 31), 0.0),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements dans les DOM-TOM dans le cadre d'une entreprise (à compléter) ; Investissements dans les DOM-TOM dans le logement social",
)

ir_reductions_impots_domlog_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.08),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement OUTRE-MER dans le secteur du logement (à compléter) ; Premier taux",
)

ir_reductions_impots_domlog_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.05),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement OUTRE-MER dans le secteur du logement (à compléter) ; Second taux",
)

ir_reductions_impots_donapd_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 400),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 407),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 414),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 422),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 470),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 479),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 488),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 495),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 510),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 513),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 521),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dons effectués à des organises d'aide aux personnes en difficulté ; Plafond des dépenses",
)

ir_reductions_impots_donapd_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1988, 01, 01), Date(1995, 12, 31), 0.5),
    DateRangeValue(Date(1996, 01, 01), Date(2002, 12, 31), 0.6),
    DateRangeValue(Date(2003, 01, 01), Date(2004, 12, 31), 0.66),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dons effectués à des organises d'aide aux personnes en difficulté ; Taux de la réduction d'impôt",
)

ir_reductions_impots_duflot_plafond = Parameter{Int32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2016, 12, 31), 300000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs intermédiaires ; Plafond",
)

ir_reductions_impots_duflot_taux_m = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2016, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs intermédiaires ; Taux métropole",
)

ir_reductions_impots_duflot_taux_om = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2016, 12, 31), 0.29),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs intermédiaires ; Taux outre-mer",
)

ir_reductions_impots_ecodev_base = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées sur un compte épargne codéveloppement (case 7UH) ; Limite de x % du revenu",
)

ir_reductions_impots_ecodev_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 20000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées sur un compte épargne codéveloppement (case 7UH) ; Maximum",
)

ir_reductions_impots_ecodev_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées sur un compte épargne codéveloppement (case 7UH) ; Taux",
)

ir_reductions_impots_ecpess_col = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 61),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Enfants à charge poursuivant leurs études secondaires ou supérieures ; Collège",
)

ir_reductions_impots_ecpess_lyc = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 153),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Enfants à charge poursuivant leurs études secondaires ou supérieures ; Lycée",
)

ir_reductions_impots_ecpess_sup = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 183),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Enfants à charge poursuivant leurs études secondaires ou supérieures ; Supérieur",
)

ir_reductions_impots_garext_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 2300),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Garde des enfants à l'extérieur du domicile ; Plafond",
)

ir_reductions_impots_garext_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.25),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Garde des enfants à l'extérieur du domicile ; Taux",
)

ir_reductions_impots_intagr_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 5000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts pour paiement différé accordé aux agriculteurs ; Plafond",
)

ir_reductions_impots_intagr_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts pour paiement différé accordé aux agriculteurs ; Taux",
)

ir_reductions_impots_intcon_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2005, 12, 31), 600),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts des prêts à la consommation (UH) ; Plafond",
)

ir_reductions_impots_intcon_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2005, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts des prêts à la consommation (UH) ; Taux",
)

ir_reductions_impots_intemp_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2002, 12, 31), 2287),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts d'emprunts (WG) ; Maximum",
)

ir_reductions_impots_intemp_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2002, 12, 31), 305),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts d'emprunts (WG) ; Par personne à charge",
)

ir_reductions_impots_intemp_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts d'emprunts (WG) ; Taux",
)

ir_reductions_impots_invfor_iforges_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 2000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter)",
)

ir_reductions_impots_invfor_ifortra_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 6250),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter)",
)

ir_reductions_impots_invfor_report10 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter) ; Report des excédents 2010",
)

ir_reductions_impots_invfor_report11 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.22),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter) ; Report des excédents 2011",
)

ir_reductions_impots_invfor_report12 = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter) ; Report des excédents 2011",
)

ir_reductions_impots_invfor_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 5700),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter) ; Seuil",
)

ir_reductions_impots_invfor_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.22),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter) ; Taux",
)

ir_reductions_impots_invfor_taux_ass = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.9),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.76),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements forestiers (UN, à compléter) ; Taux pour les assurances",
)

ir_reductions_impots_invlst_seuil1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 50000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Seuil1",
)

ir_reductions_impots_invlst_seuil2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 38120),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 50000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Seuil2",
)

ir_reductions_impots_invlst_seuil3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 45760),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 50000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Seuil3",
)

ir_reductions_impots_invlst_taux_xa = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XA)",
)

ir_reductions_impots_invlst_taux_xb = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XB)",
)

ir_reductions_impots_invlst_taux_xc = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.25, comment = "TODO: check 2013"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XC)",
  comment = "TODO: check boxes (XC...XO) over the years",
)

ir_reductions_impots_invlst_taux_xd = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2006, 12, 31), 0.15),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XD)",
)

ir_reductions_impots_invlst_taux_xe = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2008, 12, 31), 0.0),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 0.2),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XE)",
)

ir_reductions_impots_invlst_taux_xf = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.0),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XF)",
)

ir_reductions_impots_invlst_taux_xg = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.1),
    DateRangeValue(Date(2005, 01, 01), Date(2010, 12, 31), 0.4),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.36, comment = "TODO: check 2013"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XG)",
)

ir_reductions_impots_invlst_taux_xh = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.1),
    DateRangeValue(Date(2005, 01, 01), Date(2010, 12, 31), 0.2),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.18, comment = "TODO: check 2013"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XH)",
)

ir_reductions_impots_invlst_taux_xi = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.2),
    DateRangeValue(Date(2005, 01, 01), Date(2009, 12, 31), 0.0),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XI)",
)

ir_reductions_impots_invlst_taux_xj = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2007, 12, 31), 0.1),
    DateRangeValue(Date(2008, 01, 01), Date(2009, 12, 31), 0.0),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XJ)",
)

ir_reductions_impots_invlst_taux_xk = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.0),
    DateRangeValue(Date(2005, 01, 01), Date(2007, 12, 31), 0.2),
    DateRangeValue(Date(2008, 01, 01), Date(2009, 12, 31), 0.0),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XK)",
)

ir_reductions_impots_invlst_taux_xl = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XL)",
)

ir_reductions_impots_invlst_taux_xm = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.0),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XM)",
)

ir_reductions_impots_invlst_taux_xn = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2006, 12, 31), 0.0),
    DateRangeValue(Date(2007, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XN)",
)

ir_reductions_impots_invlst_taux_xo = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2007, 12, 31), 0.0),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XO)",
)

ir_reductions_impots_invlst_taux_xp = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XP)",
)

ir_reductions_impots_invlst_taux_xq = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XQ)",
)

ir_reductions_impots_invlst_taux_xr = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XR)",
)

ir_reductions_impots_invlst_taux_xx = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XX)",
)

ir_reductions_impots_invlst_taux_xz = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans le secteur touristique ; Taux (XZ)",
)

ir_reductions_impots_invrev_seuil_gs = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 45760),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case GS",
)

ir_reductions_impots_invrev_seuil_gu = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 45760),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case GU",
)

ir_reductions_impots_invrev_seuil_xg = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 38120),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case XG",
)

ir_reductions_impots_invrev_taux_gs = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; case GS",
)

ir_reductions_impots_invrev_taux_gt = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case GT",
)

ir_reductions_impots_invrev_taux_gu = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case GU",
)

ir_reductions_impots_invrev_taux_gv = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case GV",
)

ir_reductions_impots_invrev_taux_xg = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs dans les résidences de tourisme situées dans une zone de revitalisation rurale ; Case XG",
)

ir_reductions_impots_locmeu_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 300000),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 300000, comment = "suppr"),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences (cases 7IJ à 7IS ; Maximum",
)

ir_reductions_impots_locmeu_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences (cases 7IJ à 7IS ; Taux",
)

ir_reductions_impots_locmeu_taux11 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.11),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences (cases 7IJ à 7IS ; taux 11%",
)

ir_reductions_impots_locmeu_taux18 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences (cases 7IJ à 7IS ; taux 18%",
)

ir_reductions_impots_locmeu_taux20 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissement en vue de la location meublée non professionnelle dans certains établissements ou résidences (cases 7IJ à 7IS ; taux 20%",
)

ir_reductions_impots_mohist_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 20000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de conservation et de restauration d'objets classées monuments historiques ; Plafond",
)

ir_reductions_impots_mohist_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.25),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de conservation et de restauration d'objets classées monuments historiques ; Taux",
)

ir_reductions_impots_patnat_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 10000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dépenses de protection du patrimoine naturel ; Plafond",
)

ir_reductions_impots_patnat_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.22),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Dépenses de protection du patrimoine naturel ; Taux",
)

ir_reductions_impots_prcomp_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 30500),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Prestations compensatoires ; Seuil",
)

ir_reductions_impots_prcomp_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Prestations compensatoires ; Taux",
)

ir_reductions_impots_repsoc_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2007, 12, 31), 10000),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 20000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts d'emprunts pour reprises de société ; Seuil",
)

ir_reductions_impots_repsoc_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Intérêts d'emprunts pour reprises de société ; Taux",
)

ir_reductions_impots_resimm_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 100000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Plafond",
)

ir_reductions_impots_resimm_taux_ra = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.3),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.27),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_RA",
)

ir_reductions_impots_resimm_taux_rb = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.4),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.36),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_RB",
)

ir_reductions_impots_resimm_taux_rc = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_RC",
)

ir_reductions_impots_resimm_taux_rd = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_RD",
)

ir_reductions_impots_resimm_taux_re = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.22),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_RE",
)

ir_reductions_impots_resimm_taux_rf = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_RF",
)

ir_reductions_impots_resimm_taux_sx = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.22),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_SX",
)

ir_reductions_impots_resimm_taux_sy = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Travaux de restauration immobilière ; Taux_SY",
)

ir_reductions_impots_rsceha_seuil1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2003, 12, 31), 1070),
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 1525),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Rentes de survie et contrats d'épargne handicap ; Premier seuil",
)

ir_reductions_impots_rsceha_seuil2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2003, 12, 31), 230),
    DateRangeValue(Date(2004, 01, 01), Date(2013, 12, 31), 300),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Rentes de survie et contrats d'épargne handicap ; Second seuil",
)

ir_reductions_impots_rsceha_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1983, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Rentes de survie et contrats d'épargne handicap ; Taux",
)

ir_reductions_impots_saldom_max1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 6900),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 7400),
    DateRangeValue(Date(2003, 01, 01), Date(2004, 12, 31), 10000),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 12000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Plafond cas général",
)

ir_reductions_impots_saldom_max1_1ereAnnee = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 15000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Plafond 1ère année",
)

ir_reductions_impots_saldom_max2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 15000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Plafond du plafond",
)

ir_reductions_impots_saldom_max2_1ereAnnee = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 18000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Plafond du plafond 1ère année",
)

ir_reductions_impots_saldom_max3 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2004, 12, 31), 13800),
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 20000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Plafond si présence d'un invalide",
)

ir_reductions_impots_saldom_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 1500),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Par enfant mineur à charge",
)

ir_reductions_impots_saldom_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Sommes versées pour l'emploi d'un salariés à domicile (à compléter) ; Taux",
)

ir_reductions_impots_scelli_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 300000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Plafond",
)

ir_reductions_impots_scelli_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 1",
)

ir_reductions_impots_scelli_taux13 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.13),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 13%",
)

ir_reductions_impots_scelli_taux15 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.15),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 15%",
)

ir_reductions_impots_scelli_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 2",
)

ir_reductions_impots_scelli_taux22 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.22),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 22%",
)

ir_reductions_impots_scelli_taux24 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.24),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 24%",
)

ir_reductions_impots_scelli_taux36 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.36),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 36%",
)

ir_reductions_impots_scelli_taux6 = Parameter{Float32}(
  [
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.06),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Investissements locatifs neufs: dispositif SCELLIER ; Taux 6%",
)

ir_reductions_impots_sofica_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 18000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital de SOFICA ; Plafond",
)

ir_reductions_impots_sofica_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(1985, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital de SOFICA ; Plafond (en % du RNG)",
)

ir_reductions_impots_sofica_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2010, 12, 31), 0.48),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.43),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.36),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital de SOFICA ; Taux2",
)

ir_reductions_impots_sofica_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2010, 12, 31), 0.4),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.36),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital de SOFICA ; Taux3",
)

ir_reductions_impots_sofipe_base = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital d'une SOFIPECHE ; base",
)

ir_reductions_impots_sofipe_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 19000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital d'une SOFIPECHE ; Plafond",
)

ir_reductions_impots_sofipe_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 0.4),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 0.36),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription au capital d'une SOFIPECHE ; Taux",
)

ir_reductions_impots_spfcpi_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 11434),
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 12000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription de parts de fonds communs de placement dans l'innovation ou de fonds d'investissement de proximité ; Plafond",
)

ir_reductions_impots_spfcpi_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(1997, 01, 01), Date(2010, 12, 31), 0.25),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.22),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.18),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription de parts de fonds communs de placement dans l'innovation ou de fonds d'investissement de proximité ; Premier taux",
)

ir_reductions_impots_spfcpi_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2010, 12, 31), 0.5),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.45),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.38),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription de parts de fonds communs de placement dans l'innovation ou de fonds d'investissement de proximité ; Second taux",
)

ir_reductions_impots_spfcpi_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.5),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.42),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Réduction d'impôt ; Souscription de parts de fonds communs de placement dans l'innovation ou de fonds d'investissement de proximité ; Troisième taux",
)

ir_rpns_cga_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 113900),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 115900),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 117900),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 120100),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Abattement centre de gestion agréé ou association aggréé///si revenu inférieur à",
)

ir_rpns_cga_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.2),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Taux de l'abattement CGA-AA",
)

ir_rpns_cga_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.0),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Taux de la pénalité non CGA-AA",
)

ir_rpns_def_agri_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2003, 12, 31), 53360),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 60000),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 61080),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 100000),
    DateRangeValue(Date(2007, 01, 01), Date(2008, 12, 31), 101300),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 104238),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 104655),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 106225),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Déficit agricole///%cf art 156 du CGI",
)

ir_rpns_def_fonc_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 10700),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Déficit foncier art 156-I-3 du CGI",
)

ir_rpns_microentreprise_servi_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 26679),
    DateRangeValue(Date(2002, 01, 01), Date(2008, 12, 31), 27000),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 32000),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 32100),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 32600),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 32900),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Activité de service ; Maximum",
)

ir_rpns_microentreprise_servi_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 305),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Activité de service ; Minimum",
)

ir_rpns_microentreprise_servi_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 01, 01), Date(2001, 12, 31), 0.5),
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.52),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.5, comment = "Check 2014"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Activité de service ; Taux",
)

ir_rpns_microentreprise_specialbnc_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 26679),
    DateRangeValue(Date(2002, 01, 01), Date(2008, 12, 31), 27000),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 32000),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 32100),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 32600),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 32900),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Régime spécial BNC ; Maximum",
)

ir_rpns_microentreprise_specialbnc_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 305),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Régime spécial BNC ; Minimum",
)

ir_rpns_microentreprise_specialbnc_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 01, 01), Date(1998, 12, 31), 0.25),
    DateRangeValue(Date(1999, 01, 01), Date(2001, 12, 31), 0.35),
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.37),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.34),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Régime spécial BNC ; Taux",
)

ir_rpns_microentreprise_vente_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 76225),
    DateRangeValue(Date(2002, 01, 01), Date(2008, 12, 31), 76300),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 80000),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 80300),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 81500),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 82200),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Activité de vente ; Maximum",
)

ir_rpns_microentreprise_vente_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 305),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Activité de vente ; Minimum",
)

ir_rpns_microentreprise_vente_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1991, 01, 01), Date(1998, 12, 31), 0.5),
    DateRangeValue(Date(1999, 01, 01), Date(2001, 12, 31), 0.7),
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.72),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 0.71),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime microentreprise/Spécial bnc ; Activité de vente ; Taux",
)

ir_rpns_microsocial_bnc = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.022),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime micro-social ; Taux professions libérales relevant du RSI/CIPAV (bnc)",
)

ir_rpns_microsocial_servi = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.017),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime micro-social ; Taux pour les activités de prestations et de services",
)

ir_rpns_microsocial_vente = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2013, 12, 31), 0.01),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Régime micro-social ; Taux pour les activités de ventes",
)

ir_rpns_taux16 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.16),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des professions non salariées ; Revenus taxés à 16% (logiciels originaux)",
)

ir_rvcm_abat_assvie = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 4600),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; Abattement produits des contrats d'assurance vie",
)

ir_rvcm_abatmob = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2005, 12, 31), 1220, comment = "TODO: check doesn't seams consitent with fiche de calcul"),
    DateRangeValue(Date(2006, 01, 01), Date(2011, 12, 31), 1525),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; Abattement capitaux mobiliers - Max",
)

ir_rvcm_abatmob_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1997, 01, 01), Date(2005, 12, 31), 0.5),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; Abattement capitaux mobiliers - Taux",
)

ir_rvcm_majGO = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 1.0),
    DateRangeValue(Date(2006, 01, 01), Date(2014, 12, 31), 1.25, comment = "TODO: CHECK wild extension of date"),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; majoration case GO",
)

ir_rvcm_prelevement_liberatoire_action = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2007, 12, 31), 0.16),
    DateRangeValue(Date(2008, 01, 01), Date(2010, 12, 31), 0.18),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.19),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.21),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; Prélèvement libératoire ; Revenus des actions et parts soumis au prélèvement libératoire de 18% (case DA)",
)

ir_rvcm_prelevement_liberatoire_assvie = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2012, 12, 31), 0.075),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; Prélèvement libératoire ; Produits des contrats d'assurance vie (case DH)",
)

ir_rvcm_prelevement_liberatoire_autre = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2007, 12, 31), 0.16),
    DateRangeValue(Date(2008, 01, 01), Date(2010, 12, 31), 0.18),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.19),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.24),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Revenus des valeurs et capitaux mobiliers ; Prélèvement libératoire ; Autres produits de placement (case EE)",
)

ir_teicaa = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 01, 01), Date(2012, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2012, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 01, 01), Date(2012, 12, 31), 23000.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2012, 12, 31), 0.04),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 01, 01), Date(2012, 12, 31), 107000.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2012, 12, 31), 0.026),
      ],
    ),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Taxe exceptionnelle sur l'indemnité compensatrice des agents d'assurance",
)

ir_tspr_abatpen_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 3160),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 3214),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 3269),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 3325),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 3385),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 3446),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 3491),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 3592),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3606),
    DateRangeValue(Date(2010, 01, 01), Date(2012, 12, 31), 3660),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 3689),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement sur les pensions ; Abattement maximum pour l'ensemble du foyer",
)

ir_tspr_abatpen_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 323),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 328),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 334),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 340),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 346),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 352),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 357),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 367),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 368),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 374),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement sur les pensions ; Abattement minimum par bénéficiaire",
)

ir_tspr_abatpen_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement sur les pensions ; Taux de l'abattement",
)

ir_tspr_abatpro_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 12229),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 12437),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 12648),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 12862),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 13093),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 13328),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 13501),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 13893),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 13948),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 12, 31), 14157),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 12000),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 12097),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement forfaitaire pour frais professionnels ; Abattement maximum",
)

ir_tspr_abatpro_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 364),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 370),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 376),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 382),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 389),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 396),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 401),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 413),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 415),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 421),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement forfaitaire pour frais professionnels ; Abattement minimum - Cas général",
)

ir_tspr_abatpro_min2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 797),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 811),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 825),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 839),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 854),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 869),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 880),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 906),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 910),
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 924),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement forfaitaire pour frais professionnels ; Abattement minimum - Demandeur d'emploi",
)

ir_tspr_abatpro_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1944, 01, 01), Date(2013, 12, 31), 0.1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement forfaitaire pour frais professionnels ; Taux de l'abattement",
)

ir_tspr_abatsalpen_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 22380),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 22780),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 23180),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 23580),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 24020),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement 20% ; Abattement maximum",
)

ir_tspr_abatsalpen_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1960, 01, 01), Date(2005, 12, 31), 0.2),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Abattement 20% ; Taux de l'abattement",
)

ir_tspr_abatviag_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.7),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Rentes viagères à titre onéreux ; Moins de 50 ans",
)

ir_tspr_abatviag_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Rentes viagères à titre onéreux ; De 50 à 59 ans",
)

ir_tspr_abatviag_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Rentes viagères à titre onéreux ; De 60 à 69 ans",
)

ir_tspr_abatviag_taux4 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt sur le revenu ; Total salaires pensions et rentes ; Rentes viagères à titre onéreux ; À partir de 70 ans",
)

isf_bareme = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), 0.0),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 01, 01), Date(2014, 12, 31), 800000.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 790000.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 790000.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 770000.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 760000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 732000.0),

        DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 720000.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.005),

        DateRangeValue(Date(2002, 01, 01), Date(2012, 12, 31), 0.0055),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 1300000.0),

        DateRangeValue(Date(2011, 01, 01), Date(2012, 12, 31), 1310000.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 1290000.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 1280000.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 1240000.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 1220000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 1180000.0),

        DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 1160000.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.007),

        DateRangeValue(Date(2002, 01, 01), Date(2012, 12, 31), 0.0075),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 2570000.0),

        DateRangeValue(Date(2011, 01, 01), Date(2012, 12, 31), 2570000.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 2530000.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 2520000.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 2450000.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 2420000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 2339000.0),

        DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 2300000.0),
      ],
      rate = [
        DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.01),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 5000000.0),

        DateRangeValue(Date(2011, 01, 01), Date(2012, 12, 31), 4040000.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 3980000.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 3960000.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 3850000.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 3800000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 3661000.0),

        DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 3600000.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.0125),

        DateRangeValue(Date(2002, 01, 01), Date(2012, 12, 31), 0.013),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 10000000.0),

        DateRangeValue(Date(2011, 01, 01), Date(2012, 12, 31), 7710000.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 7600000.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 7570000.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 7360000.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 7270000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 7017000.0),

        DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 6900000.0),
      ],
      rate = [
        DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.015),

        DateRangeValue(Date(2002, 01, 01), Date(2012, 12, 31), 0.0165),
      ],
    ),
    RateBracket(
      threshold = [
        DateRangeValue(Date(2011, 01, 01), Date(2012, 12, 31), 16790000.0),

        DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 16540000.0),

        DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 16480000.0),

        DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 16020000.0),

        DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 15810000.0),

        DateRangeValue(Date(2005, 01, 01), Date(2006, 12, 31), 15255000.0),

        DateRangeValue(Date(2002, 01, 01), Date(2004, 12, 31), 15000000.0),
      ],
      rate = [
        DateRangeValue(Date(2002, 01, 01), Date(2012, 12, 31), 0.018),
      ],
    ),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Impôt de solidarité",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_decote_base = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 17500.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Décôte de l'ISF ; Base montant décote",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_decote_max = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 1400000.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Décôte de l'ISF ; Plafond de la décote",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_decote_min = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 1300000.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Décôte de l'ISF ; Plancher de la décote",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_decote_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.0125),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Décôte de l'ISF ; Taux de la décote",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_droits_soc_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Droits sociaux ; Taux parts et actions détenues par les salariés et mandataires sociaux",
  comment = "Réforme sarkozy jamais appliquée ; parts actions détenus par salariés et mandataires sociaux intro en 2006",
)

isf_droits_soc_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2005, 12, 31), 0.5),
    DateRangeValue(Date(2006, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Droits sociaux ; Taux parts et actions avec engagement de conservation de 6 ans minimum",
  comment = "Réforme sarkozy jamais appliquée ; parts actions détenus par salariés et mandataires sociaux intro en 2006",
)

isf_forf_mob_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.05),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Forfait mobilier ; Taux forfait mobilier",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_nonbat_seuil = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2010, 12, 31), 76000),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 101897),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Immeubles non bâtis ; Seuil biens ruraux",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_nonbat_taux_f = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Immeubles non bâtis ; Taux bois et forêts",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_nonbat_taux_r1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.25),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Immeubles non bâtis ; Taux biens ruraux",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_nonbat_taux_r2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Immeubles non bâtis ; Taux biens ruraux",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_plaf_seuil1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 10970),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 11157),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 11325),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 11530),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 11660),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 11995),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 12050),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 12255),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Plafonnement de l'ISF ; Premier seuil pour calcul du plafonnement",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_plaf_seuil2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 21940),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 22314),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 22650),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 23060),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 23320),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 23990),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 24100),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 24510),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Plafonnement de l'ISF ; Second seuil pour calcul du plafonnement",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_plaf_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(1996, 01, 01), Date(2011, 12, 31), 0.5),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Plafonnement de l'ISF ; Taux appliqué quand le montant de l'ISF avant plafonnement est supérieur au second seuil",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_plafonnement_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2011, 12, 31), 0.85),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 0.0),
    DateRangeValue(Date(2013, 01, 01), Date(2014, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Revenus et produits de l'année ; Taux appliqué aux revenus et produits de l'année pour le calcul du plafonnement",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_pme_max = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0, comment = "taux set to 0 to avoid error- expect prog to pass when date inf to 2008 #"),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 50000000, comment = "no upperbound before 2009- set arbitrarily large"),
    DateRangeValue(Date(2009, 01, 01), Date(2010, 12, 31), 50000),
    DateRangeValue(Date(2011, 01, 01), Date(2013, 12, 31), 45000),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Investissement PME ; Plafond pour investissement dans les PME",
  comment = "Réforme sarkozy jamais appliquée ; ce type de réductions apparaît seulement en 2008 ##",
)

isf_pme_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.0, comment = "taux set to 0 to avoid error- expect prog to pass when date inf to 2008"),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Investissement PME ; Taux pour investissement direct soc, holdings, fip, fcpi",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_pme_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.0, comment = "taux set to 0 to avoid error- expect prog to pass when date inf to 2008"),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 0.75),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Investissement PME ; Taux pour dons à certains organismes d'intérêt général",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_reduc_pac_reduc_1 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2011, 12, 31), 150),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 300),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Réductions pour personnes à charges ; Réduction pac sans garde alternée",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_reduc_pac_reduc_2 = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2011, 12, 31), 75),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 150),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Réductions pour personnes à charges ; Réduction pac avec garde alternée",
  comment = "Réforme sarkozy jamais appliquée",
)

isf_res_princ_taux = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2007, 12, 31), 0.2),
    DateRangeValue(Date(2008, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Impôt de solidarité sur la fortune (ISF) ; Immeubles bâtis ; Taux d'abattement résidence principale",
  comment = "Réforme sarkozy jamais appliquée",
)

lps_abatt_conj = Parameter{Int32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Fusion IR - CSG (à la Landais, Piketty, Saez) ; Abattement forfaitaire sur le revenu si conjoint",
)

lps_abatt_enfant = Parameter{Int32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Fusion IR - CSG (à la Landais, Piketty, Saez) ; Abattement forfaitaire sur le revenu par enfant",
)

lps_bareme = MarginalRateScale(
  [
    RateBracket(
      threshold = [
        DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.0),
      ],
      rate = [
        DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0.0),
      ],
    ),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Fusion IR - CSG (à la Landais, Piketty, Saez) ; Barème appliqué à l'assiette de la CSG",
)

lps_credit_enfant = Parameter{Int32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Fusion IR - CSG (à la Landais, Piketty, Saez) ; Crédit d'impôt forfaitaire par enfant",
)

lps_reduc_conj = Parameter{Int32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Fusion IR - CSG (à la Landais, Piketty, Saez) ; Réduction d'impôt forfaitaire si conjoint",
)

lps_reduc_enfant = Parameter{Int32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2013, 12, 31), 0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Fusion IR - CSG (à la Landais, Piketty, Saez) ; Réduction d'impôt forfaitaire par enfant",
)

minim_aah_age_legal_retraite = Parameter{Float32}(
  [
    DateRangeValue(Date(1983, 07, 01), Date(2011, 10, 31), 60.0),
    DateRangeValue(Date(2011, 11, 01), Date(2012, 09, 30), 60.33),
    DateRangeValue(Date(2012, 10, 01), Date(2014, 03, 31), 60.75),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 07, 31), 61.167),
    DateRangeValue(Date(2015, 08, 01), Date(2016, 12, 31), 61.583),
    DateRangeValue(Date(2017, 01, 01), Date(2050, 06, 30), 62.0),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation pour adulte handicapé (AAH) ; Âge légal de départ à la retraite",
)

minim_aah_montant = Parameter{Float32}(
  [
    DateRangeValue(Date(2000, 01, 01), Date(2000, 12, 31), 545.13),
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 557.12),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 569.38),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 577.92),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 587.74),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 599.49),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 610.28),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 621.27),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 628.1),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 652.6),
    DateRangeValue(Date(2009, 04, 01), Date(2009, 08, 31), 666.96),
    DateRangeValue(Date(2009, 09, 01), Date(2010, 03, 31), 681.63),
    DateRangeValue(Date(2010, 04, 01), Date(2010, 08, 31), 696.63),
    DateRangeValue(Date(2010, 09, 01), Date(2011, 03, 31), 711.95),
    DateRangeValue(Date(2011, 04, 01), Date(2011, 08, 31), 727.61),
    DateRangeValue(Date(2011, 09, 01), Date(2012, 03, 31), 743.62),
    DateRangeValue(Date(2012, 04, 01), Date(2012, 08, 31), 759.98),
    DateRangeValue(Date(2012, 09, 01), Date(2013, 08, 31), 776.59),
    DateRangeValue(Date(2013, 09, 01), Date(2014, 08, 31), 790.18),
    DateRangeValue(Date(2014, 09, 01), Date(2015, 08, 31), 800.45),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation pour adulte handicapé (AAH) ; Montant mensuel de l'allocation adulte handicapé",
)

minim_aah_tx_plaf_supp = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2014, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation pour adulte handicapé (AAH) ; Majoration de plafond pour personne à charge (en pourcentage du plafond de base)",
)

minim_aefa_forf2008 = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 67.55),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Aide exceptionnelle de fin d'année ; Montant de l'aide forfaitaire exceptionnelle de 2008",
)

minim_aefa_mon_maj = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2013, 12, 31), 219.53),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Aide exceptionnelle de fin d'année ; Montant majoré",
)

minim_aefa_mon_seul = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 152.45),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Aide exceptionnelle de fin d'année ; Montant de l'aide pour une personne seule",
)

minim_aefa_tx_2p = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2013, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Aide exceptionnelle de fin d'année ; Taux pour la seconde personne",
)

minim_aefa_tx_3pac = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2013, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Aide exceptionnelle de fin d'année ; Taux au delà de la troisième personne à charge incluse",
)

minim_aefa_tx_supp = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2013, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Aide exceptionnelle de fin d'année ; Taux personne supplémentaire",
)

minim_api_age = Parameter{Int32}(
  [
    DateRangeValue(Date(1977, 10, 01), Date(2014, 12, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation parent isolé ; Limite d'âge des enfants ouvrant droit",
)

minim_api_age_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(1977, 10, 01), Date(2009, 05, 31), 20),
    DateRangeValue(Date(2009, 06, 01), Date(2014, 12, 31), 25),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation parent isolé ; Limite d'âge des enfants comptés à charge",
)

minim_api_base = Parameter{Float32}(
  [
    DateRangeValue(Date(1977, 01, 10), Date(2009, 05, 31), 1.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation parent isolé ; Taux de l'API sans enfant (femme enceinte, en pourcentage de la BMAF)",
)

minim_api_enf_sup = Parameter{Float32}(
  [
    DateRangeValue(Date(1977, 10, 01), Date(2009, 05, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation parent isolé ; Majoration de taux par enfant supplémentaire (en pourcentage de la BMAF)",
)

minim_asi_montant_couple = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 0.0),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 0.0),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.0),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.0),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7118.77),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 7246.9),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 7326.61),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 7385.22),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 7459.07),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 7526.2),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 7684.25),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 7845.61),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 7947.6),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 7995.28),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation supplémentaire d'invalidité ; Montant annuel couple",
)

minim_asi_montant_seul = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 0.0),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 0.0),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 0.0),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 0.0),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 4314.03),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 4391.68),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 4439.98),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 4475.49),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 4520.24),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 4560.92),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 4656.69),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 4754.48),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 4816.28),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 4845.17),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation supplémentaire d'invalidité ; Montant annuel personne seule",
)

minim_asi_plaf_couple = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 12256.79786),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 12440.64983),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 12652.36),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 12905.2902),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 13137.69),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 13374.16),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 13521.27),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 13629.44),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 13765.73),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 13889.62),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 14181.3),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 14479.1),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 14667.32),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 14755.32),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation supplémentaire d'invalidité ; Plafond de ressources (allocation comprise) pour un couple",
)

minim_asi_plaf_seul = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 6997.60267),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 7102.56671),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 7223.45),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 7367.78688),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7500.53),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 7635.53),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 7719.52),
    DateRangeValue(Date(2008, 09, 01), Date(2008, 12, 31), 7597.57),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 7781.27),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 03, 31), 7859.08),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 7929.81),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 8096.33),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 8266.35),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 8373.81),
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 8424.05),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation supplémentaire d'invalidité ; Plafond de ressources (allocation comprise) pour une personne seule",
)

minim_aspa_age_min = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 03, 31), 65),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation solidarité aux personne agées (ASPA - Minimum vieillesse) ; Âge minimal requis",
)

minim_aspa_maj_3enf = Parameter{Float32}(
  [
    DateRangeValue(Date(1986, 01, 01), Date(2007, 01, 31), 0.1),
    DateRangeValue(Date(2007, 02, 01), Date(2015, 12, 31), 0.0),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation solidarité aux personne agées (ASPA - Minimum vieillesse) ; Majoration pour 3 enfants",
)

minim_aspa_montant_couple = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 12256.78818),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 12440.64),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 12652.35),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 12905.28),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 13137.67),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 13374.14),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 13521.23),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 13629.38),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 13765.73),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 13889.62),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 14181.3),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 14479.1),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 14667.32),
    DateRangeValue(Date(2014, 04, 01), Date(2014, 09, 30), 14755.32),
    DateRangeValue(Date(2014, 10, 01), Date(2015, 12, 31), 14904.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation solidarité aux personne agées (ASPA - Minimum vieillesse) ; Montant annuel pour un couple marié",
)

minim_aspa_montant_seul = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 6832.4335),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 6934.92),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 7052.95),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 7193.88),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7323.48),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 7455.3),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 7537.29),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 7597.57),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 8125.59),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 8507.49),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 8907.34),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 9325.98),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 9447.21),
    DateRangeValue(Date(2014, 04, 01), Date(2014, 09, 30), 9503.89),
    DateRangeValue(Date(2014, 10, 01), Date(2015, 12, 31), 9600.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation solidarité aux personne agées (ASPA - Minimum vieillesse) ; Montant annuel pour une personne seule",
)

minim_aspa_plaf_couple = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 12256.79786),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 12440.64983),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 12652.36),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 12905.2902),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 13137.69),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 13374.16),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 13521.27),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 13629.44),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 13765.73),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 13889.62),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 14181.3),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 14479.1),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 14667.32),
    DateRangeValue(Date(2014, 04, 01), Date(2014, 09, 30), 14755.32),
    DateRangeValue(Date(2014, 10, 01), Date(2015, 12, 31), 14904.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation solidarité aux personne agées (ASPA - Minimum vieillesse) ; Plafond de ressources annuelles pour un couple",
)

minim_aspa_plaf_seul = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 6997.60267),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 7102.56671),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 7223.45),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 7367.78688),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 7500.53),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 7635.53),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 7719.52),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 7781.27),
    DateRangeValue(Date(2009, 04, 01), Date(2010, 03, 31), 8309.27),
    DateRangeValue(Date(2010, 04, 01), Date(2011, 03, 31), 8507.49),
    DateRangeValue(Date(2011, 04, 01), Date(2012, 03, 31), 8907.34),
    DateRangeValue(Date(2012, 04, 01), Date(2013, 03, 31), 9325.98),
    DateRangeValue(Date(2013, 04, 01), Date(2014, 03, 31), 9447.21),
    DateRangeValue(Date(2014, 04, 01), Date(2014, 09, 30), 9503.89),
    DateRangeValue(Date(2014, 10, 01), Date(2015, 12, 31), 9600.0),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation solidarité aux personne agées (ASPA - Minimum vieillesse) ; Plafond de ressources annuelles pour une personne seule",
)

minim_ass_montant_maj = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 18.81),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 19.19),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 19.47),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 19.76),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 20.1),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 20.46),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 20.83),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 21.16),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 21.48),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 21.74),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 22.07),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 22.44),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 22.82),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 23.12),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation de solidarité spécifique ; Montant journalier majoré",
)

minim_ass_montant_plein = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 13.1),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 13.36),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 13.56),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 13.76),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 14.0),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 14.25),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 14.51),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 14.74),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 14.96),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 15.14),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 15.37),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 15.63),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 15.9),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 16.11),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation de solidarité spécifique ; Montant journalier à taux plein",
)

minim_ass_plaf_coup = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 1774.8),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 1567.5),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 1596.1),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 1621.4),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 1645.6),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 1665.4),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 1690.7),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 1719.3),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1749.0),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 1772.1),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation de solidarité spécifique ; Plafond de ressources pour un couple (mensuel)",
)

minim_ass_plaf_seul = Parameter{Float32}(
  [
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 887.4),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 997.5),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 1015.7),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 1031.8),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 1047.2),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 1059.8),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 1075.9),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 1094.1),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 1113.0),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 12, 31), 1127.1),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Allocation de solidarité spécifique ; Plafond de ressources pour une personne seule (mensuel)",
)

minim_caah_cpltx = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2008, 08, 31), 0.16),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Complément de l'allocation pour adulte handicapé (CAAH) ; Taux du montant mensuel du complément aux adultes handicapés (avant 2005)",
)

minim_caah_cpltx_1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2007, 01, 01), Date(2015, 08, 31), 179.31),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Complément de l'allocation pour adulte handicapé (CAAH) ; Montant mensuel du complément de ressources aux adultes handicapés (à partir de 2007)",
)

minim_caah_grph = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2006, 06, 30), 776.79),
    DateRangeValue(Date(2006, 07, 01), Date(2006, 12, 31), 789.59),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 800.58),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 08, 31), 807.41),
    DateRangeValue(Date(2008, 09, 01), Date(2009, 03, 31), 831.91),
    DateRangeValue(Date(2009, 04, 01), Date(2009, 08, 31), 846.27),
    DateRangeValue(Date(2009, 09, 01), Date(2010, 03, 31), 860.94),
    DateRangeValue(Date(2010, 04, 01), Date(2010, 08, 31), 875.94),
    DateRangeValue(Date(2010, 09, 01), Date(2011, 03, 31), 891.26),
    DateRangeValue(Date(2011, 04, 01), Date(2011, 08, 31), 906.92),
    DateRangeValue(Date(2011, 09, 01), Date(2012, 03, 31), 922.93),
    DateRangeValue(Date(2012, 04, 01), Date(2012, 08, 31), 939.29),
    DateRangeValue(Date(2012, 09, 01), Date(2013, 08, 31), 955.9),
    DateRangeValue(Date(2013, 09, 01), Date(2014, 08, 31), 969.49),
    DateRangeValue(Date(2014, 09, 01), Date(2015, 08, 31), 979.76),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Complément de l'allocation pour adulte handicapé (CAAH) ; Garantie de ressources pour les personnes handicapées (cpltx_1+aah)",
)

minim_caah_mva = Parameter{Float32}(
  [
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 101.8),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 103.63),
    DateRangeValue(Date(2008, 01, 01), Date(2014, 12, 31), 104.77),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Complément de l'allocation pour adulte handicapé (CAAH) ; Majoration pour la vie autonome",
)

minim_rmi_D_enfch = Parameter{Int32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), 1),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Enfants comptés à charge",
)

minim_rmi_RMI_fixe = Parameter{Bool}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2014, 12, 31), false),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Fixe le Rmi dans les simulations",
)

minim_rmi_age_pac = Parameter{Int32}(
  [
    DateRangeValue(Date(1977, 10, 01), Date(2014, 12, 31), 25),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Limite d'âge des enfants comptés à charge",
)

minim_rmi_forfait_asf_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.225),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Forfait Allocation de Soutien Familial ; Orphelin de père ou de mère (un seul parent manquant) ou situation assimilée: beaux parents ou pension alimentaire non versée",
)

minim_rmi_forfait_asf_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2014, 04, 01), Date(2015, 03, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Forfait Allocation de Soutien Familial ; Orphelin (de père et de mère), ou situation assimilée",
)

minim_rmi_forfait_logement_taux1 = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 12, 14), Date(2014, 12, 31), 0.12),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Forfait logement ; Fofait logement pour 1 personne (en % du rsa_socle)",
)

minim_rmi_forfait_logement_taux2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.24),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Forfait logement ; Forfait logement pour 2 personnes",
)

minim_rmi_forfait_logement_taux3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2013, 12, 31), 0.297),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Forfait logement ; Forfait logement pour 3 personnes ou plus",
)

minim_rmi_majo_rsa_age = Parameter{Int32}(
  [
    DateRangeValue(Date(1997, 01, 01), Date(2009, 05, 31), 0),
    DateRangeValue(Date(2009, 06, 01), Date(2014, 12, 31), 3),
  ],
  unit = "year",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Majoration du RSA socle pour parent isolé ; Âge limite du benjamin pour un versement sans condition de durée",
)

minim_rmi_majo_rsa_pac0 = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 06, 01), Date(2009, 06, 19), 1.284),
    DateRangeValue(Date(2009, 06, 20), Date(2014, 12, 31), 1.28412),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Majoration du RSA socle pour parent isolé ; Taux de la majoration du RSA socle pour une femme enceinte sans enfant (en pourcentage du rsa de base pour un célibataire sans personne à charge)",
)

minim_rmi_majo_rsa_pac_enf_sup = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 06, 01), Date(2009, 06, 19), 0.428),
    DateRangeValue(Date(2009, 06, 20), Date(2014, 12, 31), 0.42804),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Majoration du RSA socle pour parent isolé ; Majoration du RSA socle par enfant supplémentaire (en pourcentage du rsa de base)",
)

minim_rmi_patrimoine_abattement_valeur_locative_immo_non_loue = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2014, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Revenus liés au patrimoine ; Abattement appliqué sur la valeur locative des biens immobiliers non loués",
)

minim_rmi_patrimoine_abattement_valeur_locative_terrains_non_loue = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2014, 12, 31), 0.8),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Revenus liés au patrimoine ; Abattement appliqué sur la valeur locative des terrains non loués",
)

minim_rmi_patrimoine_taux_interet_forfaitaire_epargne_non_remunere = Parameter{Float32}(
  [
    DateRangeValue(Date(2010, 01, 01), Date(2014, 12, 31), 0.03),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Revenus liés au patrimoine ; Taux d'intérêt forfaitaire appliqué à l'épargne non rémunérée",
)

minim_rmi_pente = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2009, 06, 30), 0.0),
    DateRangeValue(Date(2009, 07, 01), Date(2014, 12, 31), 0.62),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Pente du RSA",
)

minim_rmi_pfInBRrmi = Parameter{Bool}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2013, 12, 31), true),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Prise en compte des PF dans la BR du RMI",
)

minim_rmi_psa = Parameter{Int32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 200),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Prime de solidarité active",
)

minim_rmi_rmi = Parameter{Float32}(
  [
    DateRangeValue(Date(2001, 01, 01), Date(2001, 12, 31), 397.6),
    DateRangeValue(Date(2002, 01, 01), Date(2002, 12, 31), 405.62),
    DateRangeValue(Date(2003, 01, 01), Date(2003, 12, 31), 411.7),
    DateRangeValue(Date(2004, 01, 01), Date(2004, 12, 31), 417.88),
    DateRangeValue(Date(2005, 01, 01), Date(2005, 12, 31), 425.4),
    DateRangeValue(Date(2006, 01, 01), Date(2006, 12, 31), 433.06),
    DateRangeValue(Date(2007, 01, 01), Date(2007, 12, 31), 440.86),
    DateRangeValue(Date(2008, 01, 01), Date(2008, 12, 31), 447.91),
    DateRangeValue(Date(2009, 01, 01), Date(2009, 12, 31), 454.63),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 460.09),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 466.99),
    DateRangeValue(Date(2012, 01, 01), Date(2012, 12, 31), 474.93),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 08, 31), 483.24),
    DateRangeValue(Date(2013, 09, 01), Date(2013, 12, 31), 492.9),
    DateRangeValue(Date(2014, 01, 01), Date(2014, 08, 31), 499.31),
    DateRangeValue(Date(2014, 09, 01), Date(2014, 12, 31), 509.3),
    DateRangeValue(Date(2015, 01, 01), Date(2015, 12, 31), 513.88),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Rsa socle",
)

minim_rmi_rsa_nv = Parameter{Int32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 6),
  ],
  unit = "currency",
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Seuil de non versement",
)

minim_rmi_txp2 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Taux pour une 2nde personne",
)

minim_rmi_txp3 = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.3),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Taux pour une 3e personne",
)

minim_rmi_txps = Parameter{Float32}(
  [
    DateRangeValue(Date(2002, 01, 01), Date(2014, 12, 31), 0.4),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Minima sociaux ; Revenu de solidarité active ; Taux par personne supplémentaire",
)

prelsoc_add_pat = Parameter{Float32}(
  [
    DateRangeValue(Date(2004, 07, 01), Date(2013, 12, 31), 0.003),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prélèvement social et contributions additionnelles ; Contribution additionnelle solidarité autonomie (revenus du patrimoine)",
)

prelsoc_add_ret = Parameter{Float32}(
  [
    DateRangeValue(Date(2013, 04, 01), Date(2013, 12, 31), 0.003),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prélèvement social et contributions additionnelles ; Contribution additionnelle solidarité autonomie (pensions de retraites, pré-retraites et invalidité)",
)

prelsoc_base_pat = Parameter{Float32}(
  [
    DateRangeValue(Date(1997, 01, 01), Date(2009, 12, 31), 0.02),
    DateRangeValue(Date(2010, 01, 01), Date(2010, 12, 31), 0.022),
    DateRangeValue(Date(2011, 01, 01), Date(2011, 12, 31), 0.034),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.045),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prélèvement social et contributions additionnelles ; Prélèvement social (revenus du patrimoine)",
)

prelsoc_base_plac = Parameter{Float32}(
  [
    DateRangeValue(Date(1998, 01, 01), Date(2009, 12, 31), 0.02),
    DateRangeValue(Date(2010, 01, 01), Date(2011, 09, 30), 0.022),
    DateRangeValue(Date(2011, 10, 01), Date(2012, 06, 30), 0.034),
    DateRangeValue(Date(2012, 07, 01), Date(2012, 12, 31), 0.054),
    DateRangeValue(Date(2013, 01, 01), Date(2013, 12, 31), 0.045),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prélèvement social et contributions additionnelles ; Prélèvement social (revenus des produits de placement)",
)

prelsoc_rsa = Parameter{Float32}(
  [
    DateRangeValue(Date(2009, 01, 01), Date(2011, 12, 31), 0.011),
    DateRangeValue(Date(2012, 01, 01), Date(2013, 12, 31), 0.02),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Prélèvement social et contributions additionnelles ; Contribution au financement du revenu de solidarité active",
)

tns_auto_entrepreneur_achat_revente = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.142),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Taux global de cotisations sociales et formation à appliquer au CA de l'auto-entrepreneur ; Activité de type Achat-Revente",
)

tns_auto_entrepreneur_bic = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.248),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Taux global de cotisations sociales et formation à appliquer au CA de l'auto-entrepreneur ; Activité de type BIC",
)

tns_auto_entrepreneur_bnc = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.235),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Taux global de cotisations sociales et formation à appliquer au CA de l'auto-entrepreneur ; Activité de type BNC",
)

tns_micro_entreprise_abattement_forfaitaire_fp_achat_revente = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.71),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Micro-entreprise ; Abattement forfaitaire pour frais professionnels du régime de la micro-entreprise ; Activité de type Achat-Revente",
)

tns_micro_entreprise_abattement_forfaitaire_fp_bic = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.5),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Micro-entreprise ; Abattement forfaitaire pour frais professionnels du régime de la micro-entreprise ; Activité de type BIC",
)

tns_micro_entreprise_abattement_forfaitaire_fp_bnc = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.34),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Micro-entreprise ; Abattement forfaitaire pour frais professionnels du régime de la micro-entreprise ; Activité de type BNC",
)

tns_micro_entreprise_cotisations_sociales = Parameter{Float32}(
  [
    DateRangeValue(Date(2008, 01, 01), Date(2015, 12, 31), 0.55),
  ],
  check_start_date = Date(2006, 01, 01),
  check_stop_date = Date(2013, 12, 31),
  description = "Travailleurs non-salariés ; Micro-entreprise ; Taux moyen des cotisations sociales sur les revenus de la micro-entreprise",
)
