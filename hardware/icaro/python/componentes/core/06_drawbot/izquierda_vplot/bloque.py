#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  bloque.py
#
#  Copyright 2013 valentin <valentinbasel@gmail.com>
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


class CMP:

    def __init__(self):

        self.valor = [
            "drobot.izquierda(",
            "valor",
            ")"
        ]
        self.dicc = {
            "nombre": "izquierda_drawbot",
            "componente": 1,
            "cant_puertos": 1,
            "color": (0, 90, 10),
            "dato": "datos ",
            "dato2": 1,
            "valor": self.valor
        }
        self.tootips = "hacer un giro a la izquierda un numero de grados."
        self.img = ""
        self.pines = [
            ""]
        self.tab=0
