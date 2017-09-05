#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  forma_basica.py
#
#  Copyright 2015 valentin basel <valentin@localhost.localdomain>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#


#
#
#           *** ESQUEMA BASICO DE UN BLOQUE ICARO ***
#
#                                 ---------- nodo_hembra
#                                |    ------ lin1
#                                |    |
#                                v    v
#  nodo_esq_ar_izq  --->  *-----   -----* <- nodo_esq_ar_der
#                         |    |___|    | <- lin2
#  lin8 --------------->  |           --|
#  lin7 --------------->  |           |   <- nodo_parametros
#                         |           --|
#  lin6 --------------->  |             | <- lin3
#  nodo_esq_ab_izq  --->  *____     ____*  <- nodo_esq_ab_der
#                            A |   | A
#                            |  ---  |
#                            |   A   ------- lin4
#                            |   |
#                            |   ----------- nodo_macho
#                            |
#                            --------------- lin5
#
#


lin1 = (20, 0)
lin2 = (0, 5)
lin3 = (0, 20)
lin4 = (-10, 0)
lin5 = (-10, 0)
lin6 = (0, -10)
lin7 = (0, -17)
lin8 = (0, -15)
nodo_hembra = u"l 8.8,0 c 0,0 -5.7,10.9 9.2,10.9 15.0,0 9.0,-10.6 9.0,-10.6 l 8.8,0"
nodo_macho = u"l -8.8,0 c 0,0 5.7,10.9 -9.2,10.9 -15.0,0 -9.0,-10.6 -9.0,-10.6 l -8.8,0"
nodo_parametros = u"l 0,4.35164 -12.3089114,0 0,-2.35164 -4.6407461,0 0,10.851503 4.6407461,0 0,-2.860495 12.3089114,0 0,6.860495"
nodo_esq_ar_der = u"c 15.0,0 15.0,0 15.0,15.0"
nodo_esq_ab_der = u"c 0,15.0 0,15.0 -15.0,15.0"
nodo_esq_ab_izq = u"c -15.0,0 -15.0,0 -15.0,-15.0"
nodo_esq_ar_izq = u"c 0,-15 0,-15 15,-15"
