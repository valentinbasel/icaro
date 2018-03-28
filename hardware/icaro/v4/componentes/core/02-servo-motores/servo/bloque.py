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
            "ServoWrite(",
            "valor",
            ",",
            "valor",
            ");"
        ]
        self.dicc = {
            "nombre": "servo",
            "componente": 1,
            "cant_puertos": 2,
            "color": (0, 50, 100),
            "dato": "0",
                    "dato2": "2",
                    "valor": self.valor
        }
        self.tootips = "Controla los 5 puerto destinados a servomotores, el primer parametro es el valor del servo, el segundo parametro es los grados de movimiento (0 a 255). Codigo C: ServoWrite(valor1,valor2);"
        self.img = ""
        self.tab=0
