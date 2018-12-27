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
import os.path
import subprocess
from gi.repository import Gtk
from gi.repository import Gdk, Pango
from gi.repository import GtkSource

##import pygtk
#import carga
#pygtk.require('2.0')
import util

#import gtk
#if gtk.pygtk_version < (2, 10, 0):
#    print("PyGtk 2.10 or later required for this example")
#    raise SystemExit

#import gtksourceview2
#import pango

import sys
icaro_dir = "hardware/icaro/"
sys.path.append(icaro_dir + "modulos")

class visor_codigo():

    def __init__(self, ventana, notebook,firmware_ruta,nombre_arch,etiqueta,carga_buf):
        # create buffer
        lm = GtkSource.LanguageManager.get_default()
        self.firmware_ruta=firmware_ruta
        self.nombre_arch=nombre_arch
        view = GtkSource.View()
        self.buffer = view.get_buffer()
        self.buffer.set_language(lm.get_language(carga_buf))
        self.buffer.set_highlight_syntax(True)
        view.set_show_line_numbers(True)
        self.ventana = ventana
        vbox = Gtk.VBox(0, True)
        notebook.append_page(vbox, Gtk.Label(etiqueta))
        tool1 = Gtk.Toolbar()
        tool1.show()
        #iconw = Gtk.Image()
        #iconw.set_from_stock(Gtk.STOCK_EXECUTE, 15)
        vbox.pack_start(tool1, False, False,1)
        sw = Gtk.ScrolledWindow()
        sw.add(view)
        vbox.pack_start(sw, True, True,1)
        vbox.show_all()
        # main loop
        self.dir_conf = os.path.expanduser('~') + "/"+self.firmware_ruta+"/firmware/"
        self.cadena_user_c = self.dir_conf + self.nombre_arch
        self.buf = self.open_file(self.buffer, self.cadena_user_c)
        #iconw = Gtk.Image()
        #iconw.set_from_stock(Gtk.STOCK_NEW, 15)
        tool = Gtk.ToolButton.new(Gtk.Image.new_from_stock(Gtk.STOCK_EXECUTE,
                                                           Gtk.IconSize.BUTTON),
                                                            "Recargar")
        tool.connect("clicked",self.recargar)
        tool1.insert(tool, 0)

    def open_file(self, buffer, filename):
        # get the new language for the file mimetype
        #manager = buffer.get_data('languages-manager')

        if os.path.isabs(filename):
            path = filename
        else:
            path = os.path.abspath(filename)

        #language = manager.guess_language(filename)
        #if language:
        #    buffer.set_highlight_syntax(True)
        #    buffer.set_language(language)
        #else:
        #    print('No language found for file "%s"' % filename)
        #    buffer.set_highlight_syntax(False)

        # remove_all_marks(buffer)
        self.load_file(buffer, path)  # TODO: check return
        return buffer

    def load_file(self, buffer, path):
        buffer.begin_not_undoable_action()
        try:
            txt = open(path).read()
        except:
            return False
        buffer.set_text(txt)
        #buffer.set_data('filename', path)
        buffer.end_not_undoable_action()
        buffer.set_modified(False)
        buffer.place_cursor(buffer.get_start_iter())
        return True

    def save_file(self, filename):
        """ save buffer to the current file """
        cadena = self.buf.props.text
        a = self.ventana.mensajes(
            1, "Las modificaciones echas en el editor no se mantendran, y seran eliminadas cuando se compile de vuelta desde icaro-bloques. ¿Desea continuar?")
        if a == True:
            file = open(filename, "w")
            file.writelines(cadena)
            file.close()

    def recargar(self, b):
        self.buf = self.open_file(self.buffer, self.cadena_user_c)

