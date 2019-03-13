#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
#  main.py
#
#  Copyright 2013 valentin <valentinbasel@gmail.com>
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

import gi
gi.require_version('Gtk', '3.0')
import sys
import os

from gi.repository import Gtk
from gi.repository import Gdk
from motor import MotorCairo
from utilidades_ventana import UTILIDADES

class VentanaGtk( MotorCairo,UTILIDADES):
    """ Class doc """
    botones = []
    mousexy = [0, 0]
    txt = ""
    FONDO = (00, 22, 55)

    def __init__(self):
        """ Class initialiser """
        self.window = Gtk.Window()
        self.window.resize(800,600)
        self.area = Gtk.DrawingArea()
        self.area.set_app_paintable(True)
        self.area.set_size_request(800, 600)
        self.area.add_events(Gdk.EventMask.BUTTON_PRESS_MASK)
        self.area.add_events(Gdk.EventMask.POINTER_MOTION_MASK)
        self.area.connect("button-press-event", self.buttonpress_cb)

        self.area.connect("button-release-event", self.buttonrelease_cb)
        self.area.connect("motion-notify-event", self.move_cb)
        self.area.connect('draw',self.expose)
        self.area.add_events(Gdk.EventMask.EXPOSURE_MASK |
                             Gdk.EventMask.BUTTON_RELEASE_MASK |
                             Gdk.EventMask.BUTTON_PRESS_MASK|
                             Gdk.EventMask.POINTER_MOTION_MASK
                             )
        self.window.connect("destroy", self.salir)
        self.window.add(self.area)
        self.window.show_all()
        self.yatocado = False

    def move_cb(self, event, b):


        rgb = self.color(self.FONDO)
        #self.cr.set_source_rgb(rgb[0], rgb[1], rgb[2])
        #self.cr.paint()
        self.mousexy = b.get_coords()
        for boton in self.botones:
            rectmouse = (self.mousexy[0], self.mousexy[1], 10, 10)
            presionado = self.colliderect(boton.rect, rectmouse)
            if presionado == None:
                presionado = False
            if presionado == True :#and self.yatocado != boton.ide:
                self.yatocado = boton.ide
                boton.tocado=1


                y = 100
                for t in boton.texto:
                    self.texto(t, 300, y, (0, 0, 0), self.cr)
                    y = y + 20


                for boton in self.botones:
                    boton.update(self.cr)


                return
        self.area.queue_draw()

    def buttonrelease_cb(self, win,event):
        for boton in self.botones:
            boton.img_final = boton.img
            boton.yf = boton.y
            boton.update(self.cr)
            if boton.apretado == 1:
                boton.apretado = 0
                #for a in range(1000):
                #    self.area.queue_draw()
                boton.accion()
        self.area.queue_draw()

    def buttonpress_cb(self, win, event):

        for boton in self.botones:
            presionado = self.collide(boton.rect, event.x, event.y)
            if presionado == True:
                boton.img_final=boton.img_presionado
                boton.yf=boton.yp
                boton.update(self.cr)
                #print("apretado")
                self.area.queue_draw()
                boton.apretado = 1
                #boton.accion()
                return



    def salir(self, b):
        Gtk.main_quit()

    def fondo(self,cr):
        self.cr =cr
        rgb = self.color(self.FONDO)
        #self.cr.set_source_rgb(rgb[0], rgb[1], rgb[2])
        #self.cr.paint()

        self.imagen("imagenes/main/main.png", 0, 0, cr)
        for boton in self.botones:
            boton.update(self.cr)


    def expose(self, a, b):
        self.fondo(b)


class Boton():

    """ Class doc """

    def __init__(self, ide, pantalla, x, y, img,imgpre, ej, texto):
        """ Class initialiser """
        self.rect = [0, 0, 200, 200]
        self.pantalla = pantalla
        self.x = x
        self.y = y
        self.yp = y+20
        self.yf=self.y
        self.img = img
        self.img_presionado=imgpre
        self.ejecuta = ej
        self.rect[0] = self.x
        self.rect[1] = self.y
        self.texto = texto
        self.ide = ide
        self.tocado=0
        self.img_final=self.img
        self.apretado = 0

    def update(self, cr):
        self.pantalla.imagen(self.img_final, self.x, self.yf, cr)

    def accion(self):
        if self.ejecuta == "salir":
            exit()
        os.system(self.ejecuta)


def comprobacion_errores(ventana, mens):
    import grp
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

def comprobacion_dir(conf,mens):
    """TODO: Docstring for comprobacion_dir.
    :returns: TODO

    """
    dir_conf = os.path.expanduser('~') + "/"+conf
    if os.path.isdir(dir_conf) == 0:
        hardware_dir = "hardware/icaro"
        mens.recarga_conf(hardware_dir,conf, True)
        exit(1)


def main():
    so = sys.platform
    print(so)
    mens = UTILIDADES()
    ventana = VentanaGtk()
    if so == 'linux':
        comprobacion_errores(ventana, mens)
        conf = ".icaro/"#config.ini"
        comprobacion_dir(conf,mens)
    else:
        conf = "conficaro/"#config.ini"
        comprobacion_dir(conf,mens)

    cfg = mens.carga_conf(os.path.expanduser('~') +"/"+ conf+"config.ini")
    turtleart_ruta = cfg.get("general", "turtlear")
    bootloader=cfg.get("icaro_config","bootloader")

    pyt = ["Lanza Icaro-bloques ",
           "para generar codigo PYTHON."]
    tur = ["Lanza Art con el modulo Tortucaro.",
           "para manejo conectado a la netbook"]
    icr = ["Lanza Icaro-bloques ",
           "para manejo de robots autonomos",
           "usando el bootloader V4"]
    sal = ["Sale del sistema"]
    ventana.tama_letra = 20
    BotonPython = Boton(3,
                        ventana,
                        50,
                        10,
                        sys.path[0] + "/imagenes/main/python2.png",
                        sys.path[0] + "/imagenes/main/python2p.png",

                        "python3 " + sys.path[0] + "/lanzador.py python "+conf,
                        pyt)
    BotonIcaro = Boton(2,
                       ventana,
                       50,
                       200,

                       sys.path[0] + "/imagenes/main/icaro2.png",
                       sys.path[0] + "/imagenes/main/icaro2p.png",

                       "python3 " + sys.path[0] + "/lanzador.py " + bootloader+ " "+conf,
                       icr)
    BotonSalir = Boton(4,
                       ventana,
                       50,
                       400,
                       sys.path[0] + "/imagenes/main/salir2.png",
                       sys.path[0] + "/imagenes/main/salir2p.png",

                       "salir",
                       sal)
    #ventana.botones.append(BotonTurtle)
    ventana.botones.append(BotonPython)
    ventana.botones.append(BotonIcaro)
    ventana.botones.append(BotonSalir)
    Gtk.main()
    return 0

if __name__ == '__main__':
    main()
