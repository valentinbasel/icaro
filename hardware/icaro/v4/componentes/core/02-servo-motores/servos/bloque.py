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
            "ServoWrite(10,",
            "valor",
            ");",
            "ServoWrite(11,",
            "valor",
            ");",
            "ServoWrite(12,",
            "valor",
            ");",
            "ServoWrite(9,",
            "valor",
            ");",
            "ServoWrite(8,",
            "valor",
            ");"
        ]
        self.dicc = {
            "nombre": "servos",
            "componente": 1,
            "cant_puertos": 5,
            "color": (2,211,252),

            "dato": "0",
                    "dato2": "5",
                    "valor": self.valor
        }
        self.tootips = "controla los 5 servos al mismo tiempo. Cada parametro representa el valor en grados de cada servo (0 a 255). Codigo C: ServoWrite(10,valor); ServoWrite(11,valor); ServoWrite(12,valor); ServoWrite(9,valor); ServoWrite(8,valor);"
        self.img = ""
        self.tab=0
