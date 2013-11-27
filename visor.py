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
import os, os.path
import sys
import pygtk
import carga
pygtk.require ('2.0')

import gtk
if gtk.pygtk_version < (2,10,0):
    print "PyGtk 2.10 or later required for this example"
    raise SystemExit

import gtksourceview2
import pango
class visor_codigo():
    def __init__(self,ventana,notebook):
        # create buffer
        lm = gtksourceview2.LanguageManager()
        self.buffer = gtksourceview2.Buffer()
        self.buffer.set_data('languages-manager', lm)
        view = gtksourceview2.View(self.buffer)
        self.ventana=ventana
 #       self.window = gtk.Window(gtk.WINDOW_TOPLEVEL)
 #       self.window.set_border_width(0)
 #       self.window.set_title('codigo fuente generado por el sistema')
        #windows.append(window) # this list contains all view windows
#        self.window.set_default_size(500, 500)
#        self.window.show()
        
        vbox = gtk.VBox(0, True)
 #       self.window.add(vbox)
        notebook.append_page(vbox,gtk.Label("codigo fuente"))
        tool1=gtk.Toolbar()
        tool1.show()

        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_EXECUTE,15)
        tool_button = tool1.append_item(
                        _("Compile"),
                        "compila la version modificada en el editor.",
                        "Private",
                        iconw,
                        self.compilar)
                        


        vbox.pack_start(tool1, fill=False, expand=False)
        sw = gtk.ScrolledWindow()
        sw.set_shadow_type(gtk.SHADOW_IN)
        sw.add(view)
        vbox.pack_start(sw, fill=True, expand=True)
#~ 
        #~ toolbar = gtk.HBox(spacing=0)
        #~ vbox.pack_start(toolbar,False,False)
        #~ button = gtk.Button('salir')
        #~ button.connect('clicked',self.close)
        #~ toolbar.pack_start(button,False,False,0)


        vbox.show_all()
        # main loop
        dir_conf=os.path.expanduser('~') + "/.icaro/firmware/"
        self.cadena_user_c=dir_conf+"source/user.c"
        self.buf=self.open_file(self.buffer,self.cadena_user_c)
        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_NEW,15)
        tool_button = tool1.append_item(
                        "recargar",
                        "",
                        "Private",
                        iconw,
                        self.recargar)
    def open_file(self,buffer, filename):
        # get the new language for the file mimetype
        manager = buffer.get_data('languages-manager')

        if os.path.isabs(filename):
            path = filename
        else:
            path = os.path.abspath(filename)

        language = manager.guess_language(filename)
        if language:
            buffer.set_highlight_syntax(True)
            buffer.set_language(language)
        else:
            print 'No language found for file "%s"' % filename
            buffer.set_highlight_syntax(False)

        #remove_all_marks(buffer)
        self.load_file(buffer, path) # TODO: check return
        return buffer

    def load_file(self,buffer, path):
        buffer.begin_not_undoable_action()
        try:
            txt = open(path).read()
        except:
            return False
        buffer.set_text(txt)
        buffer.set_data('filename', path)
        buffer.end_not_undoable_action()
        buffer.set_modified(False)
        buffer.place_cursor(buffer.get_start_iter())
        
        return True
    def recargar(self,b):
        self.buf=self.open_file(self.buffer,self.cadena_user_c)
        #self.buf=self.open_file(arg[0],arg[1])
        #~ gtk.main_quit()
#        self.window.hide()
        
    def compilar(self,arg):
        dir_conf=os.path.expanduser('~') + "/.icaro/firmware/"
        cadena=dir_conf+"source/user.c"
        cadena2=self.buf.props.text
        a= self.ventana.mensajes(1,"Las modificaciones echas en el editor no se mantendran, y seran eliminadas cuando se compile de vuelta desde icaro-bloques. ¿Desea continuar?")
        if a==True:
            file=open(cadena,"w")
            file.writelines(cadena2)
            file.close()
            i=carga.compilar_pic("main",self.ventana.config[0])
            if i==0:
                self.ventana.mensajes(3,"la compilacion fue exitosa")
            else:
                self.ventana.mensajes(0,"hubo un error de compilacion")

