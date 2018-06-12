#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  utilidades_ventana.py
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
import gtk
import os
import sys

import ConfigParser

# ========================================================================
# GENERADOR DE MENSAJES
# ========================================================================


class UTILIDADES:

    """funciones para manejo de ventanas comunes a todos los GTKs"""

    def __init__(self):
        pass

    def preparar_icaro(self,icaro_dir, ruta, icr_dir, conf):
        sys.path.append(ruta)
        # busca el archivo .ini dentro de la carpeta firmware
        if os.path.exists(conf):
            from icaro import *
            inicio(icr_dir,icaro_dir)
        else:
            cad = "No se encontro el archivo de configuracion en la ruta " + \
                conf
            self.mensajes(0, cad)
            resp = self.mensajes(
                1, "¿desea volver a copiar el directorio el directorio del firmware?")
            if resp == True:
                a = self.recarga_conf(icr_dir, True)
            else:
                exit()

    def mensajes(self, num, mensa):

        tipo = (
            gtk.MESSAGE_WARNING,
            gtk.MESSAGE_QUESTION,
            gtk.MESSAGE_ERROR,
            gtk.MESSAGE_INFO
        )
        botones = (
            gtk.BUTTONS_OK,
            gtk.BUTTONS_OK_CANCEL,
            gtk.BUTTONS_OK,
            gtk.BUTTONS_OK
        )
        md = gtk.MessageDialog(None,
                               gtk.DIALOG_MODAL | gtk.DIALOG_DESTROY_WITH_PARENT,
                               tipo[num],
                               botones[num], mensa)
        resp = md.run()
        md.destroy()
        if resp == gtk.RESPONSE_OK:
            return True
        elif resp == gtk.RESPONSE_CANCEL:
            return False

    def carga_conf(self, ruta):
        try:
            cfg = ConfigParser.ConfigParser()
            cfg.read(ruta)
            return cfg
        except:
            self.mensajes(0, "error, no se encuentra el archivo conf.ini")
            return False

    def recarga_conf(self, icaro_dir, visual):

        dir_firm_v2 = os.path.expanduser('~') + "/.icaro/v2/firmware/"
        dir_conf_v2 = os.path.expanduser('~') + "/.icaro/v2/conf/"
        np05_v2 = sys.path[0] + "/" +"hardware/icaro/v2/micro/firmware"
        conf_v2 = sys.path[0] + "/" +"hardware/icaro/v2/micro/conf"
        if os.path.exists(os.path.expanduser('~') + "/.icaro/v2") == False:
            ruta_firmware_v2 = os.path.expanduser('~') + "/.icaro/v2"
            os.system("mkdir -p " + ruta_firmware_v2)
        dir_firm_v4 = os.path.expanduser('~') + "/.icaro/v4/firmware/"
        dir_conf_v4 = os.path.expanduser('~') + "/.icaro/v4/conf/"
        np05_v4 = sys.path[0] + "/hardware/icaro/v4/micro/firmware"
        conf_v4 = sys.path[0] + "/hardware/icaro/v4/micro/conf"
        if os.path.exists(os.path.expanduser('~') + "/.icaro/v4") == False:
            ruta_firmware_v4 = os.path.expanduser('~') + "/.icaro/v4"
            os.system("mkdir -p " + ruta_firmware_v4)
        dir_firm_pyt = os.path.expanduser('~') + "/.icaro/python/firmware/"
        dir_conf_pyt = os.path.expanduser('~') + "/.icaro/python/conf/"
        np05_pyt = sys.path[0] + "/hardware/icaro/python/micro/firmware"
        conf_pyt = sys.path[0] + "/hardware/icaro/python/micro/conf"
        if os.path.exists(os.path.expanduser('~') + "/.icaro/python") == False:
            ruta_firmware_pyt = os.path.expanduser('~') + "/.icaro/python"
            os.system("mkdir -p " + ruta_firmware_pyt)

        if visual == True:
            resp = self.mensajes(
                1, "se volvera a la versión por defecto del firmware y la configuracion general, desea continuar")
        else:
            resp = True
        if resp == True:
            os.system("rm -rf " + dir_conf_v2)
            os.system("rm -rf " + dir_firm_v2)
            os.system("cp -R " + np05_v2 + " " + dir_firm_v2)
            os.system("cp -R " + conf_v2 + " " + dir_conf_v2)
            os.system("rm -rf " + dir_conf_v4)
            os.system("rm -rf " + dir_firm_v4)
            os.system("cp -R " + np05_v4 + " " + dir_firm_v4)
            os.system("cp -R " + conf_v4 + " " + dir_conf_v4)
            os.system("rm -rf " + dir_conf_pyt)
            os.system("rm -rf " + dir_firm_pyt)
            os.system("cp -R " + np05_pyt + " " + dir_firm_pyt)
            os.system("cp -R " + conf_pyt + " " + dir_conf_pyt)

            os.system("cp " + sys.path[0] + "/hardware/icaro/config.ini "+
                    os.path.expanduser('~') + "/.icaro/")

            if visual == True:
                self.mensajes(3, "se actualizo el firmware y la conf general")
            else:
                print "se actualizo el firmware y la configuración general"
