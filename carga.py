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

import os
import docker
import sys
import time
import threading
import gtk

processor = "18f4550"

def obtener_path_usuario():
    cadena = os.path.expanduser('~') 
    return cadena

def compilar_pic(ruta, cfg):
    seccion_general = "general"
    sec_sdcc = cfg.options(seccion_general)
    sdcc_ini = cfg.get(seccion_general,"sdcc")
 
    seccion = "compilador"
    sec = cfg.options(seccion)
    op = ""
    for dat in sec:
        if dat.find("op") >= 0:
            op = op + "  " + cfg.get(seccion, dat)
    val = os.system(sdcc_ini + " -v")
    if val <> 0:
        return 1
    chemin = sys.path[0]
    dir_conf = obtener_path_usuario() + "/.icaro/firmware"
    if os.path.isdir(dir_conf + "/temporal/") == 0:
        os.mkdir(dir_conf + "/temporal/")
    try:
        archivos_temp = os.listdir(dir_conf + "/temporal/")
        for datos in archivos_temp:
            os.remove(dir_conf + "/temporal/" + datos)
    except:
        print "no existen los archivos"
    cad = str(sdcc_ini +
              " " + op + " " +
              cfg.get(seccion, "temp") + ruta + ".o " +
              cfg.get(seccion, "source") + ruta + ".c ")
    home_usuario=obtener_path_usuario()
    cadena_final=cad.replace("~",home_usuario)
    log = cadena_final + " 2> " + home_usuario+"/.icaro/firmware/temporal/" + "log.dat"
    i = os.system(log)
    return i

def upload_pic(ruta, cfg):
    home_usuario=obtener_path_usuario()
    seccion = "upload"
    seccion_general = "general"
    sec = cfg.options(seccion)
    sec_sdcc = cfg.options(seccion_general)
    sdcc_ini = cfg.get(seccion_general,"sdcc")
    op = ""
    for dat in sec:
        if dat.find("op") >= 0:
            op = op + "  " + cfg.get(seccion, dat)
    val = os.system(sdcc_ini + " -v")
    if val <> 0:
        return 1
    dir_conf = home_usuario + "/.icaro/firmware"
    up = str(sdcc_ini + " " +
             cfg.get(seccion, "hex") + ruta + ".hex " +
             " " + op + " " +
             cfg.get(seccion, "obj") + ruta + ".o ")
    #print " upload------ ", up
    i = os.system(up)
    return i


class Cargador(threading.Thread):

        def __init__(self, ruta):
            threading.Thread.__init__(self)
            self.win = gtk.Window()
            self.win.set_resizable(False)
            self.win.set_default_size(600, 600)
            box1 = gtk.VBox(False, 3)
            pixbufanim = gtk.gdk.PixbufAnimation("imagenes/gif/icr.gif")
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
            dir_conf = os.path.expanduser('~') + "/.icaro/firmware"
            while self.vivo:
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

        def stop(self):
            self.vivo = False
