#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  config_menu.py
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
from gi.repository import Gtk

from gi.repository import Gdk
#import gtk
import util
from utilidades_ventana import UTILIDADES
import os

class MENU_CONF:

    """ Class doc """

    def __init__(self, conf_dir):
        Util = UTILIDADES()
        self.window = Gtk.Window()#Gtk.WINDOW_TOPLEVEL)
        #self.window.set_position(Gtk.WIN_POS_CENTER_ALWAYS)
        self.window.connect('delete_event', self.close)
        dir_c=os.path.expanduser('~') +"/"+ conf_dir+"conf/config.ini"
        print("soy la conf___",dir_c)
        self.conf_cfg = Util.carga_conf(dir_c)
        secciones = self.conf_cfg.sections()
        vbox_central = Gtk.VBox(False, 2)
        hbox_central = Gtk.HBox(False, 0)
        notebook = Gtk.Notebook()
        self.AplicarBoton = Gtk.Button()
        self.AplicarBoton.set_label("Aplicar")
        self.conf_dir = conf_dir
        self.SalirBoton = Gtk.Button()
        self.SalirBoton.set_label("Salir")
        self.SalirBoton.connect('clicked', self.close)
        #self.AplicarBoton = gtk.Button()
        # self.AplicarBoton.set_label("Aplicar")
        self.AplicarBoton.connect('clicked', self.aplicar)
        self.texts = []

        for secc in secciones:
            label = Gtk.Label(secc)
            frame = Gtk.Frame(label=secc)
            vbox = Gtk.VBox(False, 0)
            frame.add(vbox)
            notebook.append_page(frame, label)
            for op in self.conf_cfg.options(secc):
                label_secc = Gtk.Label(op)
                text = Gtk.Entry()
                text.set_text(self.conf_cfg.get(secc, op))
                self.texts.append([secc, op, text])
                hbox = Gtk.HBox(False, 0)
                hbox.pack_start(label_secc, False, True, 5)
                hbox.pack_start(text, False, True, 5)
                vbox.pack_start(hbox, False, True, 5)
        hbox_central.pack_start(self.AplicarBoton, False, False, 1)
        hbox_central.pack_start(self.SalirBoton, False, False, 1)

        vbox_central.pack_start(hbox_central, False, True, 1)
        vbox_central.pack_start(notebook, False, True, 0)
        self.window.add(vbox_central)
        self.window.show_all()

    def close(self, arg):
        print("salgo")
        # gtk.main_quit()
        self.window.hide()

    def aplicar(self, arg):
        for datos in self.texts:
            print(datos[2].get_text())
            self.conf_cfg.set(datos[0], datos[1], datos[2].get_text())
        self.conf_cfg.write(open(self.conf_dir, 'w'))
