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

        dir_firm = os.path.expanduser('~') + "/.icaro/firmware/"
        dir_conf = os.path.expanduser('~') + "/.icaro/conf/"
        np05 = sys.path[0] + "/" + icaro_dir + "micro/firmware"
        conf = sys.path[0] + "/" + icaro_dir + "micro/conf"
        if os.path.exists(os.path.expanduser('~') + "/.icaro/") == False:
            ruta_firmware = os.path.expanduser('~') + "/.icaro/"
            os.system("mkdir " + ruta_firmware)

        if visual == True:
            resp = self.mensajes(
                1, "se volvera a la versión por defecto del firmware y la configuracion general, desea continuar")
        else:
            resp = True
        if resp == True:
            os.system("rm -rf " + dir_conf)
            os.system("rm -rf " + dir_firm)
            os.system("cp -R " + np05 + " " + dir_firm)
            os.system("cp -R " + conf + " " + dir_conf)
            if visual == True:
                self.mensajes(3, "se actualizo el firmware y la conf general")
            else:
                print "se actualizo el firmware y la configuración general"
