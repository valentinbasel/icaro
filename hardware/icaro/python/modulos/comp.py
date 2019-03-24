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
#import util
#import carga
from subprocess import Popen, PIPE
"""
Modulo de carga para la version python

"""
class tool_compilador(object):

    def __init__(self):
        pass

    def carga_buffer(self):
        """TODO: Docstring for buffer.
        :returns: TODO

        """
        return "python"


    def boton_cargador(self):
        """
        Envia los datos de la imagen y el texto que tiene que mostrar
        la barra de tareas para estos botones especiales
        """
        img =  "hardware/icaro/python/imagenes/python.png"
        text = "Python"
        return img,text

    def carga_info_botones(self):
        botones_tool_bar=[
            ["/imagenes/python.png","ejecutar","compilar",self.ejecutar,None]]
        return botones_tool_bar

    def carga(self):
        self.cadena_pinguino[:] = []
        dir_conf = os.path.expanduser('~') + "/.icaro/python/firmware/"
        archivo = open(dir_conf + "/source/template.pde", "r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)

    def ejecutar(self, b,dato):
        pagina = self.notebook2.get_current_page()
        if pagina == 0:
            self.carga()
            crear.crear_archivo(self.fondo, self)
            dir_conf = os.path.expanduser('~') + "/.icaro/python/firmware"
            cad = dir_conf+"/source/user.py"
            process = Popen(['python3', cad], stdout=PIPE, stderr=PIPE)
            stdout, stderr = process.communicate()
            print (stdout)
            print ("err",stderr)
            i = process.returncode
            log = os.path.expanduser('~') + "/.icaro/python/firmware/temporal/log.dat"
            archivo_log=open(log,"w")
            if i !=0:
                archivo_log.writelines(str(stderr))
                self.mensajes(0, "hubo errores en la ejecución del programa.")
                self.mensajes(0,str(stderr))
            else:
                archivo_log.write("no hubo errores de ejecución")
                self.mensajes(3, "la ejecución fue exitosa")
        if pagina==1:
            a = self.mensajes(
                1, "Las modificaciones echas en el editor no se mantendran, y seran eliminadas cuando se compile de vuelta desde icaro-bloques. ¿Desea continuar?")
            if a == True:
                cadena2 = self.ver.buf.props.text
                file = open( self.ver.cadena_user_c , "w")
                file.writelines(cadena2)
                file.close()
                dir_conf = os.path.expanduser('~') + "/.icaro/python/firmware"
                cad = dir_conf+"/source/user.py"
                process = Popen(['python3', cad], stdout=PIPE, stderr=PIPE)
                stdout, stderr = process.communicate()
                print (stdout)
                print ("err",stderr)
                i = process.returncode
                log = os.path.expanduser('~') + "/.icaro/python/firmware/temporal/log.dat"
                archivo_log=open(log,"w")
                if i != 0:
                    archivo_log.writelines(str(stderr))
                    self.mensajes(0, "hubo errores en la ejecución del programa.")
                    self.mensajes(0,str(stderr))
                else:
                    archivo_log.write("no hubo errores de ejecución")
                    self.mensajes(3, "la ejecución fue exitosa")

