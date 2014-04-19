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
import gtk
import time
import gobject
import cairo
import apicaro
import socket


class VENTANA:

    """ Class doc """

    def __init__(self):
        """ Class initialiser """
        self.s = socket.socket()
        host = socket.gethostname()
        port = 9999
        self.s.connect((host, port))
        self.window = gtk.Window()
        table = gtk.Table(3, 2, False)
        self.area = gtk.DrawingArea()
        self.area.size(600, 600)
        self.area.set_app_paintable(True)
        self.area.connect("expose-event", self.expose)
        frame = gtk.Frame(label="grafico")
        frame2 = gtk.Frame(label="opciones")
        frame.add(self.area)
        self.sensorcheck = []
        self.sensorcheck.append(gtk.CheckButton(label="sensor 1"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 2"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 3"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 4"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 5"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 6"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 7"))
        self.sensorcheck.append(gtk.CheckButton(label="sensor 8"))

        lciclos = gtk.Label("ciclos")
        self.eciclos = scale = gtk.VScale()
        self.eciclos.set_range(1, 1000)
        self.eciclos.set_digits(0)
        self.eciclos.set_size_request(35, 160)
        self.start = gtk.ToggleButton(label="incio", use_underline=True)
        salir = gtk.Button(label="salir")
        salir.connect("clicked", self.salgo)
        for row in range(0, 8):
            table.attach(self.sensorcheck[row], 0, 1, row * 2, row * 2 + 1)
        #~ table.attach(self.sensor1, 0, 1, 0, 1)
        #~ table.attach(self.sensor2, 0, 1, 2, 3)
        #~ table.attach(self.sensor3, 0, 1, 4, 5)
        #~ table.attach(self.sensor4, 0, 1, 6, 7)
        #~ table.attach(self.sensor5, 0, 1, 8, 9)
        #~ table.attach(self.sensor6, 0, 1, 10, 11)
        #~ table.attach(self.sensor7, 0, 1, 12, 13)
        #~ table.attach(self.sensor8, 0, 1, 14, 15)
        table.attach(self.eciclos, 0, 1, 16, 17)
        table.attach(lciclos, 0, 1, 18, 19)
        table.attach(self.start, 0, 1, 20, 21)
        table.attach(salir, 0, 1, 22, 23)
        frame2.add(table)
        box2 = gtk.HBox(False, 2)
        box2.pack_start(frame, True, True, 1)
        box2.pack_start(frame2, False, True, 2)
        self.window.add(box2)
        self.window.show_all()
        self.x = 50
        self.y = 100
        self.snds = [[], [], [], [], [], [], [], [], []]
        self.icaro = apicaro.puerto()
        self.icaro.iniciar()
        self.tipo_letra = "sans"
        self.tama_letra = 12
        gobject.idle_add(self.timeout)

    def salgo(self, b):
        print "salir"
        # exit()
        self.window.hide()

    def FONDO(self):
        x = 50
        y = 50
        self.fondo = self.area.window.cairo_create()
        self.fondo.set_source_rgb(1, 1, 1)
        self.fondo.paint()
        self.fondo.set_source_rgb(0, 1, 0)
        self.fondo.move_to(x, 500)
        self.fondo.line_to(500, 500)
        self.fondo.move_to(x, y)
        self.fondo.line_to(x, 500)

        self.fondo.move_to(x, y)
        self.fondo.line_to(500, y)
        self.fondo.move_to(500, y)
        self.fondo.line_to(500, 500)
        self.fondo.stroke()

    def texto(self, txt, x, y, rgb, cr):
        cr.select_font_face(
            "sans", cairo.FONT_SLANT_NORMAL, cairo.FONT_WEIGHT_BOLD)
        cr.set_font_size(12)  # em-square height is 90 pixels
        cr.move_to(x, y)
        cr.set_source_rgb(rgb[0], rgb[1], rgb[2])
        cr.show_text(txt)

    def dibujo_cuadricula(self):
        self.cuadricula = self.area.window.cairo_create()
        self.cuadricula2 = self.area.window.cairo_create()
        self.cuadricula.set_source_rgb(0, 0, 0)
        self.cuadricula.set_line_width(0.1)
        for a in range(1, 10):
            x = 50
            y = 50
            self.cuadricula2.move_to(x * a, 515)
            self.cuadricula2.line_to(x * a, 485)
            self.cuadricula2.move_to(x - 10, y * a)
            self.cuadricula2.line_to(x + 15, y * a)
            self.texto(
                str((500 - y * a) / 2), x - 30, y * a, (0, 0, 0), self.cuadricula)

            for b in range(0, 5):
                self.cuadricula2.set_source_rgb(0, 0, 0)
                self.cuadricula2.set_line_width(1)
                self.cuadricula2.move_to(x * a + (b * 10), 500)
                self.cuadricula2.line_to(x * a + (b * 10), 490)
                self.cuadricula2.move_to(x, y * a + (b * 10))
                self.cuadricula2.line_to(x + 10, y * a + (b * 10))
                self.cuadricula2.stroke()
            self.cuadricula.move_to(x, 50 * a)
            self.cuadricula.line_to(500, 50 * a)
            self.cuadricula.move_to(x * a, y)
            self.cuadricula.line_to(x * a, 500)
            self.cuadricula.stroke()

    def graph(self):
        rgb = [(0, 0, 0), (0, 0, 0), (0, 1, 0), (1, 1, 0),
               (0, 0, 1), (1, 0, 1), (1, 0, 0), (0.5, 0.5, 1), (0, 1, 0.5)]
        check = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        ini = self.start.get_active()
        for a in range(8):
            check[a] = self.sensorcheck[a].get_active()
        self.FONDO()
        self.cr = self.area.window.cairo_create()
        self.cr.set_source_rgb(1, 0, 0)

        if ini == True:
            self.dibujo_graficos(check, rgb)

        self.dibujo_cuadricula()

    def dibujo_graficos(self, check, rgb):
        y = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        #~ y[1]=self.icaro.leer_analogico(1)

#
        for sensor in range(8):
            val = "analogico," + str(sensor)
            self.s.send(val)
            y[sensor] = self.s.recv(1024)

        #~ for sensor in range(1,9):
            #~ for a in range(2):
                #~ y[sensor]=self.icaro.leer_analogico(sensor)

            self.snds[sensor].append((self.x, 500 - int(y[sensor])))
        #~ time.sleep(0.2)
        print y
#
        self.x += 10
        self.cr.move_to(50, 500)
        for sen in range(0, len(self.snds)):
            if check[sen] == True:
                for val in self.snds[sen]:
                    self.cr.set_source_rgb(
                        rgb[sen][0], rgb[sen][1], rgb[sen][2])
                    self.cr.line_to(val[0], val[1])
#~
            self.cr.stroke()
        if self.x > 500:
            for c in range(len(self.snds)):
                self.snds[c] = []
                self.x = 50

    def expose(self, a, b):
        self.graph()

    def timeout(self):
        time.sleep(0.1)
        self.area.queue_draw()
        return True

#~ def main():
    #~ ventana=VENTANA()
    #~ gobject.idle_add(ventana.timeout)
#~
    #~ gtk.main()
#~
    #~ return 0

#~ if __name__ == '__main__':
    #~ main()
