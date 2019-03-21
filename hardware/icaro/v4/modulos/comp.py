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
import subprocess
import crear
import util
import carga
"""
Modulo de carga para la version V4, el bootloader pinguino v4.

"""
class tool_compilador(object):

    def __init__(self):
        pass

    def carga_buffer(self):
        """TODO: Docstring for buffer.
        :returns: TODO

        """
        return "c"

    def boton_cargador(self):
        """
        Envia los datos de la imagen y el texto que tiene que mostrar
        la barra de tareas para estos botones especiales
        """
        img =  "hardware/icaro/v4/imagenes/icaro.png"
        text = "Icaro"
        return img,text
    def carga_info_botones(self):
        botones_tool_bar=[
            ["/imagenes/preparar.png","Preparar","compilar",self.preparar,None],
            ["/imagenes/upload.png","Cargar","cargar", self.upload, None],
            ["/imagenes/apicaro.png","Apicaro","tortucaro",
            self.comp_esp,"tortucaro/tortucaro"],
            ["/imagenes/bluetooth.png","Drawrobot","drawrobot",
            self.comp_esp,"drawrobot/drawrobot"]]
        return botones_tool_bar

    def carga(self):
        self.cadena_pinguino[:] = []
        dir_icr = os.path.expanduser('~') + "/.icaro/v4/"

        dir_conf = dir_icr + "firmware/"
        archivo = open(dir_conf + "/source/template.pde", "r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)

    def preparar(self, b,datos):
        pagina = self.notebook2.get_current_page()
        dir_icr = os.path.expanduser('~') + "/.icaro/v4/"
        dir_conf = dir_icr + "firmware/"
        if pagina == 0:
            self.carga()
            crear.crear_archivo(self.fondo, self)
            p = subprocess.run(["python",
                                "hardware/icaro/v4/modulos/pinguicaro.py",
                                "-c",
                                dir_icr,

                                "main",
                                "18f4550"],stdout=subprocess.PIPE)

            i = p.returncode
            if i == 0:
                self.mensajes(3, "la compilacion fue exitosa")
            else:
                self.mensajes(0, "hubo un error de compilacion")
        if pagina == 1:
            a = self.mensajes(
                1, "Las modificaciones echas en el editor no se mantendran, y seran eliminadas cuando se compile de vuelta desde icaro-bloques. ¿Desea continuar?")
            if a == True:
                cadena2 = self.ver.buf.props.text
                file = open( self.ver.cadena_user_c , "w")
                file.writelines(cadena2)
                file.close()
                p = subprocess.run(["python",
                                "hardware/icaro/v4/modulos/pinguicaro.py",
                                "-c",
                                dir_icr,
                                "main",
                                "18f4550"],stdout=subprocess.PIPE)
                i = p.returncode
                if i == 0:
                    self.mensajes(3, "la compilacion fue exitosa")
                else:
                    self.mensajes(0, "hubo un error de compilacion")
                    return 1
        if i == 0:
            cargador = carga.Cargador("main", self.mensajes)
            return cargador

    def upload(self, b,datos):
        cargador = carga.Cargador("main",self.mensajes)
        return 0

    def comp_esp(self, b, datos):
        dir_icr = os.path.expanduser('~') + "/.icaro/v4/"
        p = subprocess.run(["python",
                            "hardware/icaro/v4/modulos/pinguicaro.py",
                            "-c",
                            dir_icr,
                            datos,
                            "18f4550"],stdout=subprocess.PIPE)
        i = p.returncode
        if i == 0:
            self.mensajes(3, "la compilacion fue exitosa")
        else:
            self.mensajes(0, "hubo un error de compilacion")
            self.mensajes(0,p.stdout)
        if i == 0:
            cargador = carga.Cargador(datos, self.mensajes)
            return cargador
