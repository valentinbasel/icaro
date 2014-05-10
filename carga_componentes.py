#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  sin título.py
#
#  Copyright 2013 valentin <valentin@localhost.localdomain>
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


#import glob
import os
import sys


class DICC:

    """ Class doc """

    def __init__(self):
        """ Class initialiser """
        self.path = sys.path[0] + "/componentes/core/"

    def buscar_bloques(self):
        core = []
        grupo = []
        bloque = []
        comps = []
        core = os.listdir(self.path)
        core.sort()
        for file in core:
            if (os.path.isdir(self.path + file)):
                grupo.append(file)
        for a in grupo:
            bloque = os.listdir(self.path + a)
            comp = []

            for file in bloque:
                if (os.path.isdir(self.path + a + "/" + file)):
                    comp.append(file)
            comps.append(comp)
        fila1 = []
        for mod1 in range(len(grupo)):
            fila2 = []
            comps[mod1].sort()
            for mod2 in range(len(comps[mod1])):
                clase = "componentes.core." + \
                    grupo[mod1] + "." + comps[mod1][mod2] + ".bloque"
                #~ try:
                obj = __import__(clase, fromlist=['CMP'])
                instancia = obj.CMP()
                img = str(
                    self.path + grupo[mod1] + "/" + comps[mod1][mod2] + "/ico.png")
                instancia.img = img
                fila2.append(instancia)
#~
                #~ except Exception, ex:
                    #~ print "error al iniciar ", clase
            fila1.append(fila2)
        return fila1, grupo
