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
import sys
import os
import crear
import util
import carga

class tool_compilador:
    def __init__(self):
        # cargo template.pde para tener la planilla estandar dentro de
        # cadena_pinguino
        # la idea es poder separar estas funciones de icaro.py y trabajarlo
        # directamente desde otro archivo, asi es mas facil armar bloques
        # personalizados
        
        pass
    def carga(self):
        self.cadena_pinguino[:] = []
        dir_conf = os.path.expanduser('~') + "/.icaro/firmware/"
        archivo = open(dir_conf + "/source/template.pde", "r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)

    def compilar(self, b):
        pagina = self.notebook2.get_current_page()
        if pagina == 0:
            self.carga()
            crear.crear_archivo(self.fondo, self)
            dir_conf = os.path.expanduser('~') + "/.icaro/firmware"
            i= util.compilar("main",self.cfg,dir_conf)
            #i = carga.compilar_pic("main", self.cfg)
            if i == 1:
                self.mensajes(0, ("no se encuentra el compilador sdcc en" +
                                    " la ruta " + self.config[0] +
                                    " . Pruebe configurar el archivo" +
                                    " config.ini y corregirlo"))
            if i == 0:
                self.mensajes(3, "la compilacion fue exitosa")
            else:
                self.mensajes(0, "hubo un error de compilacion")
        if pagina == 1:
            self.ver.compilar(0)

    def upload(self, b):
        resultado = 1
        #dir_conf = os.path.expanduser('~') + "/.icaro/firmware"
        i = util.linker("main",self.cfg)
        #i = carga.upload_pic("main", self.cfg)
        if i == 0:
            cargador = carga.Cargador("main")
            cargador.start()
            return 0

    def comp_esp(self, b,datos):
        resultado = 1
        comp = 1
        dir_conf = os.path.expanduser('~') + "/.icaro/firmware"
        i= util.compilar(datos,self.cfg,dir_conf)
        #i = carga.compilar_pic(datos, self.cfg)
        if i == 0:
            self.mensajes(3, "la compilacion fue exitosa")
            comp = 0
        else:
            self.mensajes(0, "hubo un error de compilacion")
            comp = 1
        if comp == 0:
            i = util.linker(datos,self.cfg)
            #i = carga.upload_pic(datos, self.cfg)
            if i == 0:
                cargador = carga.Cargador(datos)
                cargador.start()
                return 0
###############################################################################
 







