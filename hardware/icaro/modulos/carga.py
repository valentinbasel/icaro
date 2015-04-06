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

import docker
import time
import threading
import gtk
import util
import sys

class Cargador(threading.Thread):

        def __init__(self, ruta):
            threading.Thread.__init__(self)
            self.win = gtk.Window()
            self.win.set_resizable(False)
            self.win.set_default_size(600, 600)
            box1 = gtk.VBox(False, 3)
            pixbufanim = gtk.gdk.PixbufAnimation(sys.path[0]+"/hardware/icaro/imagenes/gif/icr.gif")
            image = gtk.Image()
            image.set_from_animation(pixbufanim)
            image.show()
            self.text = gtk.Label(
                "conecta la placa al puerto USB y enciendela")
            button = gtk.Button("cancelar")
            button.connect("clicked", self.cancelar)
            box1.pack_start(image, False, True, 1)

            box1.pack_start(self.text, False, True, 1)
            box1.pack_start(button, False, True, 1)

            self.win.add(box1)
            box1.show()
            self.win.show_all()

            self.vivo = True
            self.ruta = ruta

        def cancelar(self, b):
            print "salgo"
            self.vivo = False
            self.win.hide()

        def run(self):
            a = 1
            dir_conf = util.obtener_path_usuario() + "/.icaro/firmware"
            while self.vivo:
                try:
                    i = docker.docker(dir_conf + "/temporal/" + self.ruta + ".hex")
                    time.sleep(1)
                    a = a + 1
                    texto = " intentando conexion con el hardware: " + \
                            str(a) + " intento"
                    self.text.set_text(texto)
                    if a >= 10:
                        self.text.set_text("no se pudo conectar con el hardware")
                        time.sleep(2)
                        self.vivo = False
                        self.win.hide()
                    if i == 0:
                        self.text.set_text("el programa fue cargado exitosamente")
                        time.sleep(2)
                        self.vivo = False
                        self.win.hide()

                    return i
                except Exception, e:
                    print "un errro a la carga"
                    raise e


        def stop(self):
            self.vivo = False
