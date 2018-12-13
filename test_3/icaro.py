#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
# proyecto icaro, robótica educatica con software y hardware libre
# Copyright © 2018 valentinbasel@gmail.com
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#


from gi.repository import Gtk, Gdk
import os
import sys
import gobject

# ========================================================================
# VENTANA
# ========================================================================


class Ventana():

    """
    Clase ventana contiene el constructor de la ventana GTK y las funciones
    basicas del sistema.
    diagrama de los widget anidados:

        ###############################################

             ventana
                |
                 ->box1
                   |
                    -> menu_bar
                   |
                    -> box2
                       |
                        -> scrolled_window3
                       |            |
                       |             -> toolbar
                       |
                        -> hp
                           |
                            -> self.notebook2
                           |         |
                           |          -> scrolled_window
                           |         |       |
                           |         |        -> area
                           |         |
                           |          -> visor
                           |
                            -> scrolled_window2
                                    |
                                     -> notebook


        ################################################
    esta clase controla todos los eventos del programa, mouse, teclado,
    interaccion entre los componentes. A su ves es la encargada d actualizar
    el estado de los bloques icaro y redibujar la pantalla mediante la funcion
    ventana_principal.timeout


    """
    # variables globales para manejar posicion del mouse, clicks y pulsaciones
    # de teclas dentro de la ventana
    def __init__(self):
        # declaro la ventana principal
        # esta es la toolbar donde van los botones para cargar los datos
        # y compilar
        # declaro la tabla  donde van los botones para el menu de bloques
        # box1 es el contenedor principal despues de la ventana
        self.window1 = Gtk.Window()
        # ~ self.window1.fullscreen()
        titulo = "icaro test"# + version.strip("\n\r")
        self.window1.set_title(titulo)
        toolbar = Gtk.Toolbar()
        self.area = Gtk.DrawingArea()
        scrolled_window = Gtk.ScrolledWindow()
        scrolled_window2 = Gtk.ScrolledWindow()
        scrolled_window3 = Gtk.ScrolledWindow()
        table = Gtk.VBox(False, 0)#len(self.lista))
        notebook = Gtk.Notebook()
        self.notebook2 = Gtk.Notebook()
        hp = Gtk.HPaned()
        box2 = Gtk.HBox(False, 3)
        box1 = Gtk.VBox(False, 3)
        menu_bar = Gtk.MenuBar()

        # empaqueto todo
        # esta es la idea de usar un hpaned para poder achicar la pantalla
        #, en las netbook no entra todo
        self.window1.add(box1)
        box1.pack_start(menu_bar, False, True, 1)
        box1.pack_start(box2, True, True, 1)
        scrolled_window.add_with_viewport(self.area)
        scrolled_window3.add_with_viewport(toolbar)
        scrolled_window2.add_with_viewport(notebook)
        self.notebook2.append_page(scrolled_window, Gtk.Label("bloques"))
        box2.pack_start(scrolled_window3, False, False, 1)
        box2.pack_start(hp, True, True, 1)
        hp.pack1(self.notebook2, True, True)
        hp.pack2(scrolled_window2, True, True)
        #archivo_nombre = self.cfg.get("pic", "arch")
        #self.valor_datos_comp["fin "] = self.cfg.get("pic", "cierrebloque")

        #dir_source=(os.path.expanduser('~')+
        #            "/"+self.firmware_ruta +
        #            "firmware/source/"+archivo_nombre)
        hp.set_position(500)
        self.window1.connect('delete-event', Gtk.main_quit)
        #self.window1.set_icon_from_file(
        #    sys.path[0] +
        #    "/imagenes/icaro.png"
        #)
        self.area.set_app_paintable(True)
        self.area.set_size_request(800, 800)
        #menu1 = [_("File"), _("Edit"), "herramientas"]
        #menu_general = [
        #    (_("New"), _("Open"), _("Save"), _("Save as"),
        #     _("Save as function"), _("Examples"), _("Exit")),
        #    (_("Background"), _("Color"), _("About"), _("Config")),
        #    ("graficador", "clemente bulk", "clemente cdc"
        #     , "firmware",)
        #]
        #menu_bar.show()
        # declaro los botones del menu 'menu'5 y 'edicion'
        #for a in range(len(menu_general)):
        #    menu = Gtk.Menu()
        # buf es donde se cargan todos los botones del menu
        #    for i in menu_general[a]:
        #        menu_items = Gtk.MenuItem(i)
        #        menu.append(menu_items)
        #        menu_items.connect("activate", self.menuitem_response, i)
        #        menu_items.show()
        #    root_menu = Gtk.MenuItem(menu1[a])
        #    root_menu.show()
        #    root_menu.set_submenu(menu)
        #    menu_bar.append(root_menu)

        # toolbar.append_item


        toolbar.set_style(Gtk.ToolbarStyle.BOTH_HORIZ)
        toolbar.set_orientation(Gtk.Orientation.VERTICAL)
        toolbar.show()
        scrolled_window.set_size_request(300, 300)
        #scrolled_window.set_policy(Gtk.POLICY_ALWAYS, Gtk.POLICY_ALWAYS)
        scrolled_window.show()
        scrolled_window2.set_border_width(1)
        #scrolled_window2.set_policy(Gtk.POLICY_NEVER, Gtk.POLICY_ALWAYS)
        scrolled_window2.show()
        scrolled_window3.set_border_width(1)
        #scrolled_window3.set_policy(Gtk.POLICY_NEVER, Gtk.POLICY_ALWAYS)
        scrolled_window3.show()
        #notebook.set_tab_pos(Gtk.POS_RIGHT)
        label = Gtk.Label("test")
        notebook.append_page(table, label)
        button = Gtk.RadioButton()
        # capturo los eventos del drawing area
        # menos el teclado que lo capturo desde la ventana principal
        self.area.add_events(Gdk.EventMask.BUTTON_PRESS_MASK)
        self.area.add_events(Gdk.EventMask.BUTTON_RELEASE_MASK)
        self.area.add_events(Gdk.EventMask.POINTER_MOTION_MASK)
        self.window1.add_events(Gdk.EventMask.KEY_PRESS_MASK)
        self.window1.add_events(Gdk.EventMask.KEY_RELEASE_MASK)
        #self.area.connect("button-press-event", self.buttonpress_cb)
        #self.area.connect("button-release-event", self.buttonrelease_cb)
        #self.area.connect("motion-notify-event", self.move_cb)
        #self.area.connect("expose-event", self.expose)
        #self.window1.connect("key_press_event", self.keypress_cb)
        #self.window1.connect("key_release_event", self.keyrelease_cb)
        self.area.realize()
 #       display = self.area.window.get_display()
 #       pixbuf = Gtk.gdk.pixbuf_new_from_file(
 #           os.path.abspath(os.path.dirname(__file__)) +
 #                           "/imagenes/mouse/lapiz.png")
        def keypress_cb(self,a,b):
            """TODO: Docstring for keypress_cb.
            :returns: TODO

            """
            print(a)
            print(b)

ventana_principal = Ventana()
ventana_principal.window1.show_all()
Gtk.main()
