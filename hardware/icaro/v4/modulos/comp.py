#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  comp.py
#
#  Copyright © 2015 Valentin Basel <valentinbasel@gmail.com>
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

# ========================================================================
# FUNCIONES PARA COMPILAR Y CARGAR EL FIRMWARE
# ========================================================================
import os
import crear
import util
import carga
"""
Modulo de carga para la version V4, el bootloader pinguino v4.

"""
class tool_compilador(object):

    def __init__(self):
        pass

    def carga_info_botones(self):
        botones_tool_bar=[
            ["/imagenes/icaro.png","Compile","compilar",self.compilar,None],
            ["/imagenes/compilar.png","Load","cargar", self.upload, None],
            ["/imagenes/tortucaro.png","Tortucaro","tortucaro",
            self.comp_esp,"tortucaro/tortucaro"]]
        return botones_tool_bar

    def carga(self):
        self.cadena_pinguino[:] = []
        dir_conf = os.path.expanduser('~') + "/.icaro/v4/firmware/"
        archivo = open(dir_conf + "/source/template.pde", "r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)

    def compilar(self, b):
        pagina = self.notebook2.get_current_page()
        if pagina == 0:
            self.carga()
            crear.crear_archivo(self.fondo, self)
            dir_conf = os.path.expanduser('~') + "/.icaro/v4/firmware"
            i = util.compilar("main", self.cfg, dir_conf)
            if i == 1:
                self.mensajes(
                    0, "no se encuentra el compilador sdcc en. Pruebe configurar el archivo config.ini y corregirlo")
            if i == 0:
                self.mensajes(3, "la compilacion fue exitosa")
            else:
                self.mensajes(0, "hubo un error de compilacion")
        if pagina == 1:
            self.ver.compilar(0)

    def upload(self, b):
        i = util.linker("main", self.cfg)
        if i == 0:
            cargador = carga.Cargador("main",self.mensajes)
            return 0

    def comp_esp(self, b, datos):
        comp = 1
        dir_conf = os.path.expanduser('~') + "/.icaro/v4/firmware"
        i = util.compilar(datos, self.cfg, dir_conf)
        if i == 0:
            self.mensajes(3, "la compilacion fue exitosa")
            comp = 0
        else:
            self.mensajes(0, "hubo un error de compilacion")
            comp = 1
        if comp == 0:
            i = util.linker(datos, self.cfg)
            if i == 0:
                cargador = carga.Cargador(datos,self.mensajes)
                return 0
