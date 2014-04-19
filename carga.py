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
#import pygtk
import gtk
import os
import docker
#import re
#import shutil
import sys
import time
import threading
#from subprocess import Popen, PIPE, STDOUT
processor = "18f4550"


def compilar_pic(ruta, cfg):
    #cfg= ConfigParser.ConfigParser()
    # cfg.read("config.ini")
    seccion = "compilador"
    sec = cfg.options(seccion)
    op = ""
    for dat in sec:
        if dat.find("op") >= 0:
            op = op + "  " + cfg.get(seccion, dat)
    val = os.system(cfg.get(seccion, "sdcc") + " -v")
    if val <> 0:
        return 1
    chemin = sys.path[0]
    dir_conf = os.path.expanduser('~') + "/.icaro/firmware"
    if os.path.isdir(dir_conf + "/temporal/") == 0:
        os.mkdir(dir_conf + "/temporal/")
    try:
        archivos_temp = os.listdir(dir_conf + "/temporal/")
        for datos in archivos_temp:
            os.remove(dir_conf + "/temporal/" + datos)
    except:
        print "no existen los archivos"
    cad = str(cfg.get(seccion, "sdcc") +
              " " + op + " " +
              cfg.get(seccion, "temp") + ruta + ".o " +
              cfg.get(seccion, "source") + ruta + ".c ")

    # sortie = str(sdcc.strip("\n") +" "+
                        #" -mpic16"+
                        #" --denable-peeps"+
                        #" --obanksel=9"+
                        #" --opt-code-size "+
                        #" --optimize-cmp"+
                        #" --optimize-df"+
                        #" -p" + processor +
                        #" -I " +" ~/.icaro/firmware/source/" +
                        #" -I " + " ~/.icaro/firmware/tmp/" +
                        #" -I " + " ~/.icaro/firmware/non-free/include/pic16" +
                        #" -I /usr/share/sdcc/include/pic16/ " +
                        #" -c"+
                        #" -c"+
                        #" -o" +
                        #" ~/.icaro/firmware/temporal/"+ruta+".o " +
                        #" ~/.icaro/firmware/source/"+ruta+".c ")

    log = cad + " 2> " + " ~/.icaro/firmware/temporal/" + "log.dat"
    print log
    i = os.system(cad)
    print "este es el valor de i=", i
    return i


def upload_pic(ruta, cfg):
    seccion = "upload"
    sec = cfg.options(seccion)
    op = ""
    for dat in sec:
        if dat.find("op") >= 0:
            op = op + "  " + cfg.get(seccion, dat)
    val = os.system(cfg.get(seccion, "sdcc") + " -v")
    if val <> 0:
        return 1
    dir_conf = os.path.expanduser('~') + "/.icaro/firmware"
    up = str(cfg.get(seccion, "sdcc") + " " +
             cfg.get(seccion, "hex") + ruta + ".hex " +
             " " + op + " " +
             cfg.get(seccion, "obj") + ruta + ".o ")
    print " upload------ ", up
    # sortie2=str(        sdcc.strip("\n") +" "
                        #" -o"+ " ~/.icaro/firmware/temporal/"+ruta+".hex "+
                        #" --denable-peeps"+
                        #" --obanksel=9"+
                        #" --opt-code-size"+
                        #" --optimize-cmp"+
                        #" --optimize-df"+
                        #" --no-crt"+
                        #" -Wl-s/usr/share/icaro/pic16/lkr/18f2550.lkr,-m "+
                        #" -mpic16"+
                        #" -p"+processor+
                        #" -l /usr/share/icaro/pic16/lib/libpuf.lib " +
                        #" -l /usr/share/sdcc/lib/pic16/libc18f.lib "+
                        #" --lib-path "+ dir_conf + "/non-free/lib/pic16/ " +
                        #" -l /usr/share/sdcc/lib/pic16/libm18f.lib "+
                        #"/usr/share/icaro/pic16/obj/usb_descriptors.o "+
                        #"/usr/share/icaro/pic16/obj/crt0ipinguino.o "+
                        #"/usr/share/icaro/pic16/obj/application_iface.o "+
                        #" ~/.icaro/firmware/temporal/"+ruta+".o ")

    #"/usr/share/sdcc/non-free/lib/pic16/ "
    # print "--------------------------------------------------------------------------------------------------------"
    # print sortie2
    # print "--------------------------------------------------------------------------------------------------------"
    #~ " -l " +sys.path[0].replace(" ","\\ ")+"/sdcc/lib/libio"+processor+".lib"+

    i = os.system(up)
    # cargador=Cargador(ruta)
    # cargador.start()

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
