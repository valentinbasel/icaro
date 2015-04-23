#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  sin título.py
#
#  Copyright 2013 valentin <valentin@localhost.localdomain>
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
#
import sys
import os
import grp
import shutil
#import urllib
#import tarfile
import gtk

from motor import MotorCairo
from utilidades_ventana import UTILIDADES

class VentanaGtk(MotorCairo,UTILIDADES):

    """ Class doc """
    botones = []
    mousexy = [0, 0]
    txt = ""
    FONDO = (00, 22, 55)

    def __init__(self):
        """ Class initialiser """
        self.window = gtk.Window()
        self.area = gtk.DrawingArea()
        self.area.set_app_paintable(True)
        self.area.set_size_request(800, 600)
        self.area.add_events(gtk.gdk.BUTTON_PRESS_MASK)
        self.area.add_events(gtk.gdk.POINTER_MOTION_MASK)
        self.area.connect("button-press-event", self.buttonpress_cb)
        self.area.connect("motion-notify-event", self.move_cb)
        self.area.connect("expose-event", self.expose)
        self.window.connect("destroy", self.salir)
        self.window.add(self.area)
        self.window.show_all()
        self.yatocado = False


    def move_cb(self, event, b):
        self.mousexy = b.get_coords()
        for boton in self.botones:
            rectmouse = (self.mousexy[0], self.mousexy[1], 10, 10)
            presionado = self.colliderect(boton.rect, rectmouse)
            # print presionado,"--",self.yatocado
            if presionado == None:
                presionado = False
            if presionado == True and self.yatocado <> boton.ide:
                self.yatocado = boton.ide
                self.ff = self.area.window.cairo_create()
                rgb = self.color(self.FONDO)
                self.ff.set_source_rgb(rgb[0], rgb[1], rgb[2])
                self.ff.paint()
                self.cr = self.area.window.cairo_create()
                y = 100
                for t in boton.texto:
                    self.texto(t, 300, y, (255, 255, 255), self.cr)
                    y = y + 20

                for boton in self.botones:
                    boton.update(self.cr)
                return

    def buttonpress_cb(self, win, event):

        for boton in self.botones:
            # print boton.rect
            presionado = self.collide(boton.rect, event.x, event.y)
            if presionado == True:
                boton.accion()
                return

    def salir(self, b):
        gtk.main_quit()

    def fondo(self):
        self.ff = self.area.window.cairo_create()
        rgb = self.color(self.FONDO)
        self.ff.set_source_rgb(rgb[0], rgb[1], rgb[2])
        self.ff.paint()
        self.cr = self.area.window.cairo_create()
        for boton in self.botones:
            boton.update(self.cr)

    def expose(self, a, b):
        self.fondo()


class Boton():

    """ Class doc """

    def __init__(self, ide, pantalla, x, y, img, ej, texto):
        """ Class initialiser """
        self.rect = [0, 0, 100, 100]
        self.pantalla = pantalla
        self.x = x
        self.y = y
        self.img = img
        self.ejecuta = ej
        self.rect[0] = self.x
        self.rect[1] = self.y
        self.texto = texto
        self.ide = ide

    def update(self, cr):
        self.pantalla.imagen(self.img, self.x, self.y, cr)

    def accion(self):
        if self.ejecuta == "salir":
            exit()
        os.system(self.ejecuta)


def comprobacion_errores(ventana):
    Error = 0
    CadenaMensaje = "Se encontraron los siguientes errores: \n"
    MicrochipBool = "false"
    DialoutBool = "false"
    grupos = grp.getgrall()
    microchip = ""
    dialout = ""
    CadenaScript = """
    para crear el grupo microchip, agregar el usuario a microchip y
    dialout hacer en la terminal lo siguiente:

    sudo groupadd microchip
    sudo usermod -a -G microchip $USER
    sudo usermod -a -G dialout $USER
    """
    for gr in grupos:
        if gr[0] == "microchip":
            microchip = gr[2]
        if gr[0] == "dialout":
            dialout = gr[2]

    misgrupos = os.getgroups()
    if microchip in misgrupos:
        MicrochipBool = "true"
    if dialout in misgrupos:
        DialoutBool = "true"
    if microchip == "":
        CadenaMensaje = CadenaMensaje + \
            "  - No se ha detectado el grupo microchip. \n"
        Error = 1
    if MicrochipBool == "false":
        CadenaMensaje = CadenaMensaje + \
            "  - El usuario no pertenece al grupo microchip \n"
        Error = 1
    if DialoutBool == "false":
        CadenaMensaje = CadenaMensaje + \
            "  - El usuario no pertenece al grupo dialout \n"
        Error = 1
    if Error == 1:
        CadenaMensaje = CadenaMensaje + CadenaScript
        ventana.mensajes(2, CadenaMensaje)
        exit()
    dir_conf = os.path.expanduser('~') + "/.icaro/"
    if os.path.isdir(dir_conf) == 0:
        os.mkdir(dir_conf)

  #  if os.path.isdir(dir_conf + "/firmware/") == 0:
        #respuesta=men.mensajes(1,"no existe el firmware para icaro-bloques, ¿descargarlo?")
        # print respuesta
        # if respuesta==True:
   #     try:
            # archivo=urllib.urlretrieve("http://valentinbasel.fedorapeople.org/firmware/np05.tar.gz",dir_conf+"np05.tar.gz",None)
            # tar=tarfile.open(dir_conf+"/np05.tar.gz","r:gz")
            # tar.extractall(dir_conf)
            # tar.close
    #        shutil.copytree(
     #           "/usr/share/icaro/pic16/np05", dir_conf + "/firmware/")
      #  except:
       #     ventana.mensajes(2, "no se pudo copiar el directorio")
        #    exit()
    #    shutil.copytree(sys.path[0]+"/temp/tmp/",dir_conf+"/tmp" )
    #    shutil.copytree(sys.path[0]+"/temp/source/",dir_conf+"/source" )


def main():

        
    conf=os.path.expanduser('~') + "/.icaro/conf/config.ini"
    mens=UTILIDADES()
    cfg=mens.carga_conf(conf)
    turtleart_ruta=cfg.get("general","turtle")
    

    pyt = ["Lanza la teminal interactiva ",
           "con el modulo apicaro.",
           "Necesita tener IDLE instalado"]
    tur = ["Lanza Art con el modulo Tortucaro.",
           "para manejo conectado a la netbook"]
    icr = ["Lanza Icaro-bloques ",
           "para manejo de robots autonomos"]
    sal = ["Sale del sistema"]
    idle = ("idle -c 'import apicaro;" +
            " icaro=apicaro.puerto(); icaro.iniciar()'"
            )
    ventana = VentanaGtk()
    comprobacion_errores(ventana)
    ventana.tama_letra = 20
    BotonTurtle = Boton(1,
                        ventana,
                        100,
                        10,
                        sys.path[0] + "/imagenes/main/tortucaro.png",
                        turtleart_ruta,
                        tur)
    BotonIcaro = Boton(2,
                       ventana,
                       100,
                       160,
                       sys.path[0] + "/imagenes/main/icaro.png",
                       "python " + sys.path[0] + "/lanzador.py",
                       icr)
    BotonPython = Boton(3,
                        ventana,
                        100,
                        310,
                        sys.path[0] + "/imagenes/main/python.png",
                        idle,
                        pyt)
    BotonSalir = Boton(4,
                       ventana,
                       100,
                       460,
                       sys.path[0] + "/imagenes/main/salir.png",
                       "salir",
                       sal)
    ventana.botones.append(BotonTurtle)
    ventana.botones.append(BotonIcaro)
    ventana.botones.append(BotonPython)
    ventana.botones.append(BotonSalir)
    gtk.main()
    return 0

if __name__ == '__main__':
    main()
