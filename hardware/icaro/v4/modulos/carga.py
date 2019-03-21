#!/usr/bin/python
# -*- coding: utf-8 -*-

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

from gi.repository import Gtk
from gi.repository import Gdk
import time
#import gtk
import util
import sys
import os
from uploader_icaro_v4 import  UPLOAD
import subprocess

class Cargador():

    def __init__(self, ruta,mensajes):
        self.mensajes=mensajes
        self.win = Gtk.Window()
        self.win.set_resizable(False)
        #self.win.set_default_size(600, 600)
        box1 = Gtk.VBox(False, 3)
        pixbufanim = (sys.path[0] + "/hardware/icaro/v4/imagenes/gif/icr.gif")
        image = Gtk.Image()
        image.set_from_file(pixbufanim)
        #image.set_from_animation(pixbufanim)
        image.show()
        self.text = Gtk.Label(
            "conecta la placa al puerto USB y enciendela")
        button = Gtk.Button("aceptar")
        button.connect("clicked", self.aceptar,ruta)
        box1.pack_start(image, False, True, 1)

        box1.pack_start(self.text, False, True, 1)
        box1.pack_start(button, False, True, 1)

        self.win.add(box1)
        box1.show()
        self.win.show_all()

        self.vivo = True
        self.ruta = ruta

    def aceptar(self,b,ruta):
        a = 1
        dir_icr = util.obtener_path_usuario() + "/.icaro/v4"

        dir_conf =  dir_icr + "/firmware"
        firmware=dir_conf + "/temporal/" + self.ruta + ".hex"
        #pic=UPLOAD()
        #pp=pic.uploadDevice(firmware)
        p = subprocess.run(["python",
                            "hardware/icaro/v4/modulos/pinguicaro.py",
                            "-u",
                            dir_icr,
                            ruta,
                            "18f4550"],stdout=subprocess.PIPE)
        i = p.returncode
        if i == 0:
            self.mensajes(3,"la carga fue un exito")
        else:
            err= "hubo un error en la carga. Códido de error: "+str(i)
            self.mensajes(0,err)
            self.mensajes(0,p.stdout)
        self.win.hide()

