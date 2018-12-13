#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  senores.py
#
#  Copyright 2015 valentin basel <vbasel@localhost.localdomain>
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
import matplotlib.pyplot as plt
from collections import deque
import socket               # Import socket module
from utilidades_ventana import UTILIDADES


class VENTANA:
    """ Class doc """

    def __init__(self):
        """
           estructura de los widget

            win
             |
             +--->vbox
                   |
                   +--->frame
                   |      |
                   |      +---> hbox
                   |              |
                   |              +---> label
                   |              |
                   |              +---> text
                   |              |
                   |              +---> label_style
                   |              |
                   |              +---> list_style
                   |              |
                   |              +---> label_color
                   |              |
                   |              +---> list_color
                   |              |
                   |              +---> option
                   |
                   +---> hbox3
                   |      |
                   |      +---> labelhost
                   |      |
                   |      +---> texthost
                   |      |
                   |      +---> labelhost
                   |      |
                   |      +---> labelport
                   |      |
                   |      +---> textport
                   |
                   +---> hbox2
                          |
                          +---> boton_empezar
                          |
                          +---> boton_salir
             """

        # variables de la clase
        # diccionarios
        self.dic_style = {
            'solid line style': '-',
            'dashed line style': '--',
            'dash-dot line style': '-.',
            'dotted line style': ':',
            'point marker': '.',
            'pixel marker': ',',
            'circle marker': 'o',
            'triangle_down marker': 'v',
            'triangle_up marker': '^',
            'triangle_left marker': '<',
            'triangle_right marker': '>',
            'tri_down marker': '1',
            'tri_up marker': '2',
            'tri_left marker': '3',
            'tri_right marker': '4',
            'square marker': 's',
            'pentagon marker': 'p',
            'star marker': '*',
            'hexagon1 marker': 'h',
            'hexagon2 marker': 'H',
            'plus marker': '+',
            'x marker': 'x',
            'diamond marker': 'D',
            'thin_diamond marker': 'd',
            'vline marker': '|',
            'hline marker': '_',
            '': ''
        }

        self.dic_color = {
            'blue': 'b',
            'green': 'g',
            'red': 'r',
            'cyan': 'c',
            'magenta': 'm',
            'yellow': 'y',
            'black': 'k',
            'white': 'w',
            '': ''
        }
        self.sensores = []
        self.mens = UTILIDADES()
        self.crear_socket()
        for a in range(8):
            main_sensor = ['', '', '', 0]
            self.sensores.append(main_sensor)
        # ventana incial
        self.win = gtk.Window()
        vbox = gtk.VBox()
        self.win.add(vbox)
        # bucle para crear los 8 frames con las opciones para cada
        # sensor de la placa
        for a in range(8):
            cad = "sensor " + str(a)
            frame = gtk.Frame(cad)
            hbox = gtk.HBox(False, 15)
            label = gtk.Label("etiqueta")
            text = gtk.Entry()
            text.connect('focus-out-event', self.focus_out_cb, a)
            label_style = gtk.Label("estilo")
            list_style = gtk.combo_box_new_text()
            self.crear_lista_style(list_style)
            list_style.connect('changed', self.changed_style, a)
            label_color = gtk.Label("color")

            list_color = gtk.combo_box_new_text()
            self.crear_lista_color(list_color)
            list_color.connect('changed', self.changed_color, a)

            option = gtk.CheckButton(label="activo")
            option.connect("clicked", self.on_clicked, a)
            hbox.add(label)
            hbox.add(text)
            hbox.add(label_style)
            hbox.add(list_style)
            hbox.add(label_color)
            hbox.add(list_color)
            hbox.add(option)
            frame.add(hbox)
            vbox.add(frame)

        hbox3 = gtk.HBox(False, 10)
        labelhost = gtk.Label("Host")
        texthost = gtk.Entry()
        texthost.set_text("localhost")

        labelport = gtk.Label("puerto")
        textport = gtk.Entry()
        textport.set_text("9999")

        hbox3.add(labelhost)
        hbox3.add(texthost)
        hbox3.add(labelport)
        hbox3.add(textport)
        vbox.add(hbox3)

        hbox2 = gtk.HBox(False, 10)
        vbox.add(hbox2)
        # boton empezar
        boton_empezar = gtk.Button("empezar")
        hbox2.add(boton_empezar)
        # boton salir
        boton_salir = gtk.Button("salir")
        hbox2.add(boton_salir)
        # conecto cada boton a su funcion cuando se hace
        # click en el boton
        boton_empezar.connect(
            "clicked", self.boton_empezar_click, texthost, textport)
        boton_salir.connect("clicked", lambda x: self.cerrar())
        self.win.connect("destroy", lambda x: self.cerrar())
        # muestro todo
        self.win.show_all()

    def crear_socket(self):
        self.sock = socket.socket()
        return 0

    def focus_out_cb(self, widget, b, a):
        self.sensores[a][2] = widget.get_text()

    def changed_style(self, combo, a):
        """ Function doc """
        val = combo.get_active()
        model = combo.get_model()
        self.sensores[a][0] = model[val][0]

    def changed_color(self, combo, a):
        """ Function doc """
        val = combo.get_active()
        model = combo.get_model()
        self.sensores[a][1] = model[val][0]

    def cerrar(self):
        # self.sock.send("cerrar")
        self.win.hide()

    def boton_empezar_click(self, widget, h, p):
        """ Function doc """
        self.flag_live = True

        host = h.get_text()
        port = p.get_text()
        try:
            self.sock.connect((host, int(port)))
        except:
            self.mens.mensajes(2, "error de conexion")
            return 1
        dat = []
        sens = []
        figu = plt.figure()
        fig = figu.add_subplot(111)
        for a in range(8):
            a1 = deque([0] * 100)
            dat.append(a1)
            if self.sensores[a][3] == 1:
                cadena_style_color = self.dic_style[self.sensores[
                    a][0]] + self.dic_color[self.sensores[a][1]]
                line = fig.plot(dat[a], cadena_style_color,
                                label=self.sensores[a][2])
                val = line, a
                sens.append(val)
        plt.ion()
        plt.xlabel(u'tiempo')
        plt.legend()  # Creamos la caja con la leyenda
        plt.xlim([0, 100])
        plt.ylim([0, 1100])
        figu.show()

        def onclick(event):
            self.flag_live = False
            self.sock.send("cerrar")
            self.crear_socket()
            # plt.close()
            # exit()

        cid = figu.canvas.mpl_connect('close_event', onclick)

        while(self.flag_live == True):
            for dato in sens:
                cadena_an = "analogico," + str(dato[1])
                print cadena_an
                self.sock.send(cadena_an)
                peticion = self.sock.recv(1024)
                print "sensor: ", str(dato[1]), " valor: ", peticion

                dat[dato[1]].appendleft(peticion)
                datatoplot = dat[dato[1]].pop()
                # print "dato generado:",dato[1],"--val:",dat[dato[1]]
                dato[0][0].set_ydata(dat[dato[1]])
            # print self.flag_live
            plt.pause(0.1)
        print "salgo"

    def on_clicked(self, widget, a):
        """ Function doc """
        if widget.get_active():
            self.sensores[a][3] = 1
        else:
            self.sensores[a][3] = 0

    def crear_lista_style(self, widget):
        """ Function doc """
        cad = ['solid line style',
               'dashed line style',
               'dash-dot line style',
               'dotted line style',
               'point marker',
               'pixel marker',
               'circle marker',
               'triangle_down marker',
               'triangle_up marker',
               'triangle_left marker',
               'triangle_right marker',
               'tri_down marker',
               'tri_up marker',
               'tri_left marker',
               'tri_right marker',
               'square marker',
               'pentagon marker',
               'star marker',
               'hexagon1 marker',
               'hexagon2 marker',
               'plus marker',
               'x marker',
               'diamond marker',
               'thin_diamond marker',
               'vline marker',
               'hline marker']

        for valor in cad:
            widget.append_text(valor)

    def crear_lista_color(self, widget):
        """ Function doc """
        cad = ['blue',
               'green',
               'red',
               'cyan',
               'magenta',
               'yellow',
               'black',
               'white']
        for valor in cad:
            widget.append_text(valor)

def main(args):
    return 0

if __name__ == '__main__':
    #import sys
    #sys.exit(main(sys.argv))
    vent=VENTANA()
    gtk.main()
