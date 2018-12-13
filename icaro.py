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

import gtk
import os
import sys
import gobject

import creditos
import abrir
import nuevo
import guardar
#import navegador
import tooltips
import graficador_matplot
import mouse
import util
import carga
import visor
import config_menu
import terminal_vte

from motor import MotorCairo
from componente_inicial import *
from componente import *
from comp import *
from utilidades_ventana import UTILIDADES


# ========================================================================
# COMPONENTES
# ========================================================================


class Componentes():

    """
    variables globales para los componentes, aca se guardan las listas de
    objetos que representan a los componentes. esas lista es la que se usa para
    poder parsear los bloques conectados a inicio y obtener el codigo fuente
    para cargar en user.c

    """
    identificador = 1
    identificador_dat = 1
    identificador_dat2 = 1
    objetos = []
    tipo_obj = [0]
    lista_ordenada = []
    lista_fina = []
    objetos_datos = []
    tipo_obj_datos = []
    lista_valor_datos = []
    lista_valor_datos2 = []

    def __init__(self):
        """ Class initialiser """

# ========================================================================
# FONDO
# ========================================================================


class fondo(MotorCairo, Componentes):

    """
    representa los valores globales del background de la aplicacion.
    la clase MOTOR (pycairo) toma los valores de la instancia fondo para
    determinar el color inicial de la pantalla icaro y el color del texto
    Se encarga de cargar una imagen de fondo o un color en el drawing area
    de la ventana
    """
    FONDO = (00, 22, 55)
    color_texto = (255, 255, 255)
    poscion_botones = 0
    band = 0

    def __init__(self):
        self.lista_ordenada.append(0)
        self.img = ""
        self.ultimo = 1
        self.mouse_puntero = mouse.MOUSE(self, ventana_principal)

    def carga_img(self, cadena):
        """
        carga una imagen de fondo
        """
        # band es una bandera para determinar si se dibuja una imagen (band=1)
        # o no (band=0)
        self.band = 1
        # img representa el nombre y la ruta del archivo que contiene la imagen
        self.img = cadena
        print cadena

    def update(self):
        """
        funcion que es llamada por (ventana_principal.timeout) para actualizar
        el fondo de la imagen y evitar qeu los bloques dejen un rastro en la
        pantalla, o para actualizar la imagen de fondo
        """
        self.ff = ventana_principal.area.window.cairo_create()
        rgb = self.color(fon.FONDO)
        self.ff.set_source_rgb(rgb[0], rgb[1], rgb[2])
        self.ff.paint()
        #self.cr = self.area.window.cairo_create()
        self.zoom(ventana_principal.z, ventana_principal.cr)

        if self.band == 1:
            if os.path.exists(self.img):
                cr2 = ventana_principal.area.window.cairo_create()
                respuesta = self.imagen(str(self.img), 0, 0, cr2)
                if respuesta == 1:
                    self.band = 0
        self.mouse_puntero.update()


class crear_comp:

    def __init__():
        pass

    def crear_componente(self, b, x, y):
        ax = ay = 30
        # siempre hay que tratar de que el foco quede en el drawing area
        self.area.grab_focus()

        if self.diccionario[b][1] == 1:
            c1 = componente(
                x,
                y,
                self.fondo.identificador + 1,
                self.diccionario[b][2],
                self.diccionario[b][3],
                self.diccionario[b][0],
                self.fondo,
                self

            )
            self.fondo.identificador += 1
            self.fondo.objetos.append(c1)
            self.fondo.tipo_obj.append(self.diccionario[b][1])
            self.fondo.lista_ordenada.append(0)
        if self.diccionario[b][1] == 4:

            self.fondo.identificador += 1
            c1 = componente_cero_arg(
                x,
                y,
                self.fondo.identificador,
                self.diccionario[b][3],
                self.diccionario[b][0],
                self.fondo,
                self
            )

            self.fondo.objetos.append(c1)
            self.fondo.tipo_obj.append(self.diccionario[b][1])
            self.fondo.lista_ordenada.append(0)

        if self.diccionario[b][1] == 5:
            self.fondo.identificador += 1
            c1 = componente_bloque_uno(
                x,
                y,
                self.fondo.identificador,
                self.diccionario[b][3],
                self.diccionario[b][0],
                self.fondo,
                self,
            )
            self.fondo.objetos.append(c1)
            self.fondo.identificador += 1
            self.fondo.lista_ordenada.append(0)

            c1 = componente_bloque_dos(
                x,
                y + 80,
                self.fondo.identificador,
                self.diccionario[b][3],
                self.diccionario[b][4],
                self.fondo,
                self
            )
            self.fondo.objetos.append(c1)
            self.fondo.tipo_obj.append(self.diccionario[b][1])
            self.fondo.tipo_obj.append(0)
            self.fondo.lista_ordenada.append(0)

        if self.diccionario[b][1] == 6:
            c1 = comp_dat_arg(
                x,
                y,
                self.fondo.identificador_dat,
                self.diccionario[b][2],
                self.diccionario[b][4],
                self.diccionario[b][3],
                self.diccionario[b][5],
                self.diccionario[b][0].strip(" ") + ".png",
                6,
                self.fondo,
                self,
            )
            self.fondo.identificador_dat += 1
            self.fondo.objetos_datos.append(c1)
            self.fondo.tipo_obj_datos.append(self.diccionario[b][1])
        if self.diccionario[b][1] == 7:
            c1 = comp_dat_arg(
                x,
                y,
                self.fondo.identificador_dat,
                self.diccionario[b][2],
                self.diccionario[b][4],
                self.diccionario[b][3],
                self.diccionario[b][5],
                self.diccionario[b][0].strip(" ") + ".png",
                7,
                self.fondo,
                self,
            )
            self.fondo.identificador_dat += 1
            self.fondo.objetos_datos.append(c1)
            self.fondo.tipo_obj_datos.append(self.diccionario[b][1])


# ========================================================================
# VENTANA
# ========================================================================


class Ventana(crear_comp, tool_compilador, UTILIDADES):

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


    archivo = ""
    mousexy = (0, 0)
    boton_mouse = [0, 0, 0, 0]
    seleccionado = 0
    seleccionado_datos = 0
    seleccionado_datos_ed = 0
    tecla = 0
    valor_tecla = ""
    tecla_enter = 0
    cadena_pinguino = []
    seleccion_menu = 1
    tipo_componente = 1
    diccionario = {}
    tooltip = {}
    lista = []
    config = []
    edicion = 0
    z = 1
    cursores = [0]
    dicc_accesos_directos = {
        65470: "f1",
        65471: "f2",
        65472: "f3",
        65473: "f4",
        65474: "f5",
        65475: "f6",
        65476: "f7",
        65477: "f8",
        65478: "f9",
        65479: "f10",
        65480: "f11",
        65481: "f12",

    }
    valor_datos_comp = {}

    def __init__(self, icaro_dir,firmware_ruta):

        # esta es la lista de donde se sacan los valores para los botones
        # icaro


        self.firmware_ruta="."+firmware_ruta
        self.icaro_dir = icaro_dir
        arch = open(sys.path[0] + "/version", "r")
        version = arch.readline()

        creditos.Info.version = version
        self.carga_conf_ventana()


        # declaro la ventana principal
        # esta es la toolbar donde van los botones para cargar los datos
        # y compilar
        # declaro la tabla  donde van los botones para el menu de bloques
        # box1 es el contenedor principal despues de la ventana
        self.window1 = gtk.Window()
        # ~ self.window1.fullscreen()
        titulo = "icaro " + version.strip("\n\r")
        self.window1.set_title(titulo)
        toolbar = gtk.Toolbar()
        self.area = gtk.DrawingArea()
        scrolled_window = gtk.ScrolledWindow()
        scrolled_window2 = gtk.ScrolledWindow()
        scrolled_window3 = gtk.ScrolledWindow()
        table = gtk.VBox(False, 0)#len(self.lista))
        notebook = gtk.Notebook()
        self.notebook2 = gtk.Notebook()
        hp = gtk.HPaned()
        box2 = gtk.HBox(False, 3)
        box1 = gtk.VBox(False, 3)
        menu_bar = gtk.MenuBar()

        # empaqueto todo
        # esta es la idea de usar un hpaned para poder achicar la pantalla
        #, en las netbook no entra todo
        self.window1.add(box1)
        box1.pack_start(menu_bar, False, True, 1)
        box1.pack_start(box2, True, True, 1)
        scrolled_window.add_with_viewport(self.area)
        scrolled_window3.add_with_viewport(toolbar)
        scrolled_window2.add_with_viewport(notebook)
        self.notebook2.append_page(scrolled_window, gtk.Label("bloques"))
        box2.pack_start(scrolled_window3, False, False, 1)
        box2.pack_start(hp, True, True, 1)
        hp.pack1(self.notebook2, True, True)
        hp.pack2(scrolled_window2, True, True)
        archivo_nombre = self.cfg.get("pic", "arch")
        self.valor_datos_comp["fin "] = self.cfg.get("pic", "cierrebloque")

        dir_source=(os.path.expanduser('~')+
                    "/"+self.firmware_ruta +
                    "firmware/source/"+archivo_nombre)
        self.ver = visor.visor_codigo(self,
                                    self.notebook2,
                                    self.firmware_ruta,
                                    "source/"+archivo_nombre,
                                    "codigo fuente")

        self.ver2 = visor.visor_codigo(self,
                                        self.notebook2,
                                        self.firmware_ruta,
                                        "temporal/log.dat",
                                        "registro de compilación")
        hp.set_position(500)
        self.window1.connect('delete-event', gtk.main_quit)
        self.window1.set_icon_from_file(
            sys.path[0] +
            "/imagenes/icaro.png"
        )
        self.area.set_app_paintable(True)
        self.area.set_size_request(800, 800)
        menu1 = [_("File"), _("Edit"), "herramientas"]
        menu_general = [
            (_("New"), _("Open"), _("Save"), _("Save as"),
             _("Save as function"), _("Examples"), _("Exit")),
            (_("Background"), _("Color"), _("About"), _("Config")),
            ("graficador", "clemente bulk", "clemente cdc"
             , "firmware",)
        ]
        menu_bar.show()
        # declaro los botones del menu 'menu'5 y 'edicion'
        for a in range(len(menu_general)):
            menu = gtk.Menu()
        # buf es donde se cargan todos los botones del menu
            for i in menu_general[a]:
                menu_items = gtk.MenuItem(i)
                menu.append(menu_items)
                menu_items.connect("activate", self.menuitem_response, i)
                menu_items.show()
            root_menu = gtk.MenuItem(menu1[a])
            root_menu.show()
            root_menu.set_submenu(menu)
            menu_bar.append(root_menu)

        # toolbar.append_item
        toolbar.set_style(gtk.TOOLBAR_BOTH_HORIZ)
        toolbar.set_orientation(gtk.ORIENTATION_VERTICAL)
        toolbar.show()

        # creo los botones de la toolbar
        botones_toolbar = self.crear_botones_bootlader(toolbar)

        # creo los botones de la toolbar en funcion de la tupla botonas_toolbar
        for dat in botones_toolbar:
            if dat[0] == 3:
                toolbar.append_space()
            if dat[0] == 1 or dat[0] == 2:
                self.crear_toolbuttons(
                    dat[0], dat[1], dat[2], dat[3], dat[4], dat[5], dat[6])

        scrolled_window.set_size_request(300, 300)
        scrolled_window.set_policy(gtk.POLICY_ALWAYS, gtk.POLICY_ALWAYS)
        scrolled_window.show()
        scrolled_window2.set_border_width(1)
        scrolled_window2.set_policy(gtk.POLICY_NEVER, gtk.POLICY_ALWAYS)
        scrolled_window2.show()
        scrolled_window3.set_border_width(1)
        scrolled_window3.set_policy(gtk.POLICY_NEVER, gtk.POLICY_ALWAYS)
        scrolled_window3.show()
        notebook.set_tab_pos(gtk.POS_RIGHT)
        label = gtk.Label(self.diccionario[self.lista[0]][1])
        notebook.append_page(table, label)
        button = gtk.RadioButton()
        ## aca cargo los datos de cada bloque ##
        for i in range(1, len(self.lista)):
            if self.diccionario[self.lista[i]][0] == "notebook":
                table = gtk.VBox(False, 0)#len(self.lista))
                label = gtk.Label(self.diccionario[self.lista[i]][1])
                notebook.append_page(table, label)
            else:
                self.diccionario[self.lista[i]][0]
                caja = self.imagen_boton(
                    self.diccionario[self.lista[i]][0],
                    self.diccionario[self.lista[i]][0]
                )
                button = gtk.RadioButton(button)
                button.set_tooltip_text(self.diccionario[self.lista[i]][6])
                button.add(caja)
                button.connect("clicked", self.botones, self.lista[i])
                table.pack_start(button, False, True, 0)
                button.show()

        # capturo los eventos del drawing area
        # menos el teclado que lo capturo desde la ventana principal
        self.area.add_events(gtk.gdk.BUTTON_PRESS_MASK)
        self.area.add_events(gtk.gdk.BUTTON_RELEASE_MASK)
        self.area.add_events(gtk.gdk.POINTER_MOTION_MASK)
        self.window1.add_events(gtk.gdk.KEY_PRESS_MASK)
        self.window1.add_events(gtk.gdk.KEY_RELEASE_MASK)
        self.area.connect("button-press-event", self.buttonpress_cb)
        self.area.connect("button-release-event", self.buttonrelease_cb)
        self.area.connect("motion-notify-event", self.move_cb)
        self.area.connect("expose-event", self.expose)
        self.window1.connect("key_press_event", self.keypress_cb)
        self.window1.connect("key_release_event", self.keyrelease_cb)
        self.area.realize()
        display = self.area.window.get_display()
        pixbuf = gtk.gdk.pixbuf_new_from_file(
            os.path.abspath(os.path.dirname(__file__)) +
                            "/imagenes/mouse/lapiz.png")
        lapiz = gtk.gdk.Cursor(display, pixbuf, 6, 18)
        self.cursores.append(lapiz)
        pixbuf = gtk.gdk.pixbuf_new_from_file(
            os.path.abspath(os.path.dirname(__file__)) +
                            "/imagenes/mouse/puntero.png")
        puntero = gtk.gdk.Cursor(display, pixbuf, 6, 18)
        self.cursores.append(puntero)
        pixbuf = gtk.gdk.pixbuf_new_from_file(
            os.path.abspath(os.path.dirname(__file__)) +
                            "/imagenes/mouse/borrar.png")
        borrar = gtk.gdk.Cursor(display, pixbuf, 6, 18)
        self.cursores.append(borrar)
        pixbuf = gtk.gdk.pixbuf_new_from_file(
            os.path.abspath(os.path.dirname(__file__)) +
                            "/imagenes/mouse/edicion.png")
        edicion = gtk.gdk.Cursor(display, pixbuf, 6, 18)
        self.cursores.append(edicion)
        self.definir_cursor(1)
    def crear_botones_bootlader(self,toolbar):
        botones_inic=[
            [1, toolbar, gtk.STOCK_NEW, "New",
             self.tooltip["nuevo"], self.nuevo, None],
            [1, toolbar, gtk.STOCK_OPEN, "Open",
             self.tooltip["abrir"], self.abrir, None],
            [1, toolbar, gtk.STOCK_SAVE, "Save",
             self.tooltip["guardar"], self.guardar, 0],
            [1, toolbar, gtk.STOCK_QUIT, "Quit",
             self.tooltip["salir"], self.salir, None],
            [3]]

        # boton_medio=[
            # [2, toolbar, sys.path[0] + "/imagenes/icaro.png",
             # "Compile", self.tooltip["compilar"], self.compilar, None],
            # [2, toolbar, sys.path[0] + "/imagenes/compilar.png",
             # "Load", self.tooltip["cargar"], self.upload, None],
            # [3],
            # [2, toolbar, sys.path[0] + "/imagenes/tortucaro.png",
             # "Tortucaro", self.tooltip["tortucaro"], self.comp_esp,
             # "tortucaro/tortucaro"],
            # [2, toolbar, sys.path[0] + "/imagenes/pilas.png",
             # "pilas", self.tooltip["pilas"], self.comp_esp,
             # "pilas/pilas-engine"],
            # [2, toolbar, sys.path[0] + "/imagenes/icaroblue.png",
             # "icaroblue", self.tooltip["icaroblue"], self.comp_esp,
             # "icaroblue/icaroblue"],
            # [3]]
        boton_medio=[]

        for linea in self.carga_info_botones():
            boton_medio.append([2,toolbar,
                                sys.path[0]+"/"+self.icaro_dir+linea[0],
                                linea[1],
                                self.tooltip[linea[2]],
                                linea[3],
                                linea[4]
                                ])
        boton_fin=[
            [1, toolbar, gtk.STOCK_HELP, "Help",
             self.tooltip["ayuda"], self.ayuda, None],
            [3],
            [1, toolbar, gtk.STOCK_ADD, "Pen",
             self.tooltip["lapiz"], self.dibujo, 1],
            [1, toolbar, gtk.STOCK_SELECT_COLOR, "Move",
             self.tooltip["mover"], self.dibujo, 2],
            [1, toolbar, gtk.STOCK_DELETE, "Erase",
             self.tooltip["borrar"], self.dibujo, 3],
            [1, toolbar, gtk.STOCK_EDIT,
             "Edit", "", self.dibujo, 4],
            [3],
            [1, toolbar, gtk.STOCK_ZOOM_IN, "agrandar",
             "", self.menuitem_response, "zoomas"],
            [1, toolbar, gtk.STOCK_ZOOM_OUT, "achicar",
             "", self.menuitem_response, "zoomenos"],
            [1, toolbar, gtk.STOCK_ZOOM_100, "zoom 1:1",
             "", self.menuitem_response, "zoomcero"],
        ]
        botones_final=botones_inic+ boton_medio + boton_fin
        return botones_final


    def crear_toolbuttons(self, tipo, toolbar, img, nombre, tooltip, func, metodos):
        # creo los botones de la toolbar
        if tipo == 1:
            iconw = gtk.Image()
            iconw.set_from_stock(img, 30)
            tool_button = toolbar.append_item(
                _(nombre),
                tooltip,
                "Private",
                iconw,
                func, metodos)
        if tipo == 2:
            iconw = gtk.Image()
            iconw.set_from_file(img)
            tool_button = toolbar.append_item(
                _(nombre),
                tooltip,
                "Private",
                iconw,
                func, metodos)

    def definir_cursor(self, b):
        self.area.window.set_cursor(self.cursores[b])
        # if b==1:
        # self.area.window.set_cursor(None)
        self.puntero_seleccion_mouse = b

# ========================================================================
# ABRIR LA VENTANA DE VISOR DE CODIGO
# ========================================================================

    def graf(self):
        graf = graficador_matplot.VENTANA()
        graf.window.show_all()

    def clemente(self, prt):

        cad = "clear\n python " + src + "/clemente/clemente.py " + prt + " \n"
        cle = terminal_vte.TERM_CLEMENTE(cad)
        cle.window.show_all()
# ========================================================================
# VENTANA DE AYUDA (NAVEGADOR)
# ========================================================================

    def ayuda(self, b):
        #self.visor()
        texto=("para ver la documentación actualizada, ir  a la pagina web: http://roboticaro.org/documentacion/")
        self.mensajes(3,texto)
    def dibujo(self, event, b):
        self.seleccion_menu = b
        self.definir_cursor(b)

# ========================================================================
# ESTO ES PARA GREGAR IMAGENES AL BOTON DE LA TOOLBAR
# ========================================================================
    def imagen_boton(self, xpm_filename, label_text):
        box1 = gtk.HBox(False, 0)
        box1.set_border_width(0)
        image = gtk.Image()
        xpm_filename = xpm_filename.strip(" ")

        buf = sys.path[0]  + "/"+ self.icaro_dir +  "/imagenes/componentes/" + xpm_filename + ".png"
        image.set_from_file(buf)
        label = gtk.Label(label_text)
        box1.pack_start(image, False, True, 1)
        box1.pack_start(label, False, True, 1)
        image.show()
        label.show()
        return box1

    # esta funcion captura el evento de presionar un boton de la toolbar
    # table y lo manda tipo_componentes
    def botones(self, event, b):
        self.tipo_componente = b
        self.seleccion_menu = 1
        self.definir_cursor(1)

        return

    def guardar(self, b, dato):
        pagina = self.notebook2.get_current_page()
        dialog = gtk.FileChooserDialog("save..",
                                       None,
                                       gtk.FILE_CHOOSER_ACTION_SAVE,
                                       (
                                           gtk.STOCK_CANCEL,
                                           gtk.RESPONSE_CANCEL,
                                           gtk.STOCK_SAVE,
                                           gtk.RESPONSE_OK
                                       )
                                       )
        dialog.set_default_response(gtk.RESPONSE_OK)
        response = dialog.run()
        if response == gtk.RESPONSE_OK:
            cadena = dialog.get_filename()
            # separo la cadena para sacar la extension del archivo
            # si el tamaño de cadena2 es 1, el nombre del archivo no
            # tiene extension, entonces le agrego  - .icr -
            cadena2 = cadena.split(".")
            print len(cadena2)
            if len(cadena2) == 1:
                print "dato", dato, pagina
                if dato == 0 and pagina == 0:
                    cadena = cadena + ".icr"
                elif dato == 0 and pagina == 1:
                    cadena = cadena + ".c"
                elif dato == 1:
                    cadena = cadena + ".func"
            if os.path.isfile(cadena):
                resp = self.mensajes(
                    1,
                    "Ya existe un archivo con el nombre " +
                    cadena + "¿Quiere reemplazarlo?"
                )
            else:
                resp = False
            if resp == True or os.path.isfile(cadena) == False:
                if dato == 0:
                    print "daot=0"
                    if pagina == 0:
                        print "pag=0"
                        guardar.guardar(self.fondo.objetos, cadena, self.fondo)
                        self.archivo = cadena
                    else:
                        if pagina == 1:
                            self.ver.save_file(cadena)
                if dato == 1:
                    crear.funcion(self.fondo, self, cadena,)
            elif response == gtk.RESPONSE_CANCEL:
                pass
        dialog.destroy()
        print resp, cadena

    def abrir(self, dato):
        pagina = self.notebook2.get_current_page()
        dialog = gtk.FileChooserDialog(
            "Open..",
            None,
            gtk.FILE_CHOOSER_ACTION_OPEN,
            (
                gtk.STOCK_CANCEL,
                gtk.RESPONSE_CANCEL,
                gtk.STOCK_OPEN,
                gtk.RESPONSE_OK
            )
        )
        dialog.set_default_response(gtk.RESPONSE_OK)
        try:
            dialog.set_current_folder(dato)
        except Exception, ex:
            dialog.set_current_folder(sys.path[0])

        if pagina == 0:
            filter = gtk.FileFilter()
            filter.set_name("icaro")
            filter.add_pattern("*.icr")
            dialog.add_filter(filter)
        if pagina == 1:
            filter = gtk.FileFilter()
            filter.set_name("C")
            filter.add_pattern("*.c")
            dialog.add_filter(filter)

        response = dialog.run()
        if response == gtk.RESPONSE_OK:
            if pagina == 0:
                nuevo.nuevo(self.fondo)
                inicial = componente_inicial(
                    20, 50, 1,
                    self.fondo,
                    self
                )

                self.fondo.objetos.append(inicial)
                cadena = dialog.get_filename()
                self.update()
                abrir.abrir(
                    self.diccionario,
                    cadena,
                    self.fondo,
                    self
                )
                self.archivo = cadena
            if pagina == 1:
                cadena = dialog.get_filename()

                self.ver.open_file(self.ver.buffer, cadena)

        elif response == gtk.RESPONSE_CANCEL:
            print 'Closed, no files selected'
        dialog.destroy()

    def nuevo(self, dato):
        self.archivo = ""
        nuevo.nuevo(self.fondo)
        self.fondo.band = 0
        R = self.cfg.get("icaro_config", "colorR")
        G = self.cfg.get("icaro_config", "colorG")
        B = self.cfg.get("icaro_config", "colorB")
        self.fondo.FONDO = (int(R), int(G), int(B))
        self.fondo.ultimo = 1
        inicial = componente_inicial(
            20,
            50,
            1,
            self.fondo,
            self
        )
        self.fondo.objetos.append(inicial)
# ========================================================================
# FUNCIONES DE LOS EVENTOS DEL MOUSE Y TECLADO
# ========================================================================

    def timeout(self):
        # self.area.queue_draw_area(0,0,int(self.mousexy[0]),int(self.mousexy[1]))
        self.area.queue_draw()

        # self.area.queue_clear()

        #~ self.alloc = self.area.get_allocation ( )
        #~ rect = gtk.gdk.Rectangle ( self.alloc.x, self.alloc.y, self.alloc.width, self.alloc.height )
        #~ self.window1.invalidate_rect ( rect, True )
        return True

    def update(self):
        #~ print len(fon.objetos)
        self.cr = self.area.window.cairo_create()
        self.fondo.update()
        if fon.objetos_datos > 0:
            for dat in fon.objetos_datos:
                dat.update()
        for obj in fon.objetos:
            obj.update()


        return True

    def expose(self, event, b):
        #~ print event,"---",b
        self.update()

    def move_cb(self, win, event):
        mouse = event.get_coords()
        self.mousexy = (mouse[0] / self.z, mouse[1] / self.z)

    def buttonpress_cb(self, win, event):
        self.boton_mouse[event.button] = 1
        # aca llamo a update porque si no, me tira un error en tiempo
        # de ejecucion
        self.update()
        self.boton_mouse[event.button] = 1
        if event.button == 3:
            self.boton_mouse[event.button] = 0
            self.menu(event)
            return
        if self.seleccion_menu == 1:
            self.crear_componente(
                self.tipo_componente, self.mousexy[0], self.mousexy[1])

    def buttonrelease_cb(self, win, event):
        self.boton_mouse[event.button] = 0

    def menu(self, event):
        menu = gtk.Menu()
        dibujar = gtk.MenuItem(_("Pen"))
        mover = gtk.MenuItem(_("Move"))
        editar = gtk.MenuItem(_("Edit"))
        eliminar = gtk.MenuItem(_("Erase"))
        # Agregar los items al menu
        menu.append(dibujar)
        menu.append(mover)
        menu.append(editar)
        menu.append(eliminar)
        # Se conectan las funciones de retrollamada a la senal "activate"
        dibujar.connect_object("activate", self.MenuRespuesta, 1)
        mover.connect_object("activate", self.MenuRespuesta, 2)
        eliminar.connect_object("activate", self.MenuRespuesta, 3)
        editar.connect_object("activate", self.MenuRespuesta, 4)
        menu.show_all()
        menu.popup(None, None, None, event.button, event.time)

    def MenuRespuesta(self, b):
        self.seleccion_menu = b
        self.definir_cursor(b)

    def keypress_cb(self, win, event):
        self.tecla = 1
        self.valor_tecla = event.string
        if event.keyval == 65293:
            self.tecla_enter = 1
        if self.dicc_accesos_directos.has_key(event.keyval):
            self.AccesosDirectos(self.dicc_accesos_directos[event.keyval])

    def AccesosDirectos(self, evento):
        if evento == "f1":
            self.MenuRespuesta(1)
        if evento == "f2":
            self.MenuRespuesta(2)
        if evento == "f3":
            self.MenuRespuesta(3)
        if evento == "f4":
            self.MenuRespuesta(4)
        if evento == "f5":
            print "creo archivo"
            # print self.fondo.ultimo
            # for a in range(len(fondo.lista_ordenada)):
            #    for a in range(len(fondo.lista_ordenada)):
            #        if fondo.lista_ordenada[a]==self.fondo.ultimo:
            #            self.fondo.ultimo=a
        #        for a in range(1,len(self.fondo.objetos)):
        #            if self.fondo.objetos[a].ide==self.fondo.ultimo_conectado:
        #                identificador=a
        #                break
            # x=self.fondo.objetos[self.fondo.ultimo].conector_m[0]-10
            # y=self.fondo.objetos[self.fondo.ultimo].conector_m[1]+40
            # self.update()
            # self.crear_componente(self.tipo_componente,x,y)

    def keyrelease_cb(self, win, event):
        self.tecla = 0
        self.tecla_enter = 0
        self.valor_tecla = ""

    def salir(self, dato):
        cartel = self.mensajes(1, "¿esta seguro que desea salir del sistema?")
        if cartel == 1:
            exit()

# ========================================================================
# LAS RESPUESTAS DEL MENU
# ========================================================================
    def menuitem_response(self, widget, string):
        if string == _("Open"):
            # tengo que madar un -dato- para mantener compatibilidad con
            # los botones de la barra de herramienta que generan un dato
            # -b- que envian a la funcion. en el caso de guardar mando None
            # porque el sig dato determina si es una funcion o un icr/C
            self.abrir(sys.path[0])
        if string == _("Exit"):
            self.salir(0)
        if string == _("New"):
            self.nuevo(0)
        if string == _("Save"):
            self.guardar(None, 0)
        if string == _("Save as function"):
            print "guardo la func"
            self.guardar(None, 1)
        if string == _("Examples"):
            cadena_ejemp = sys.path[0] + "/" + self.icaro_dir + "ejemplos"
            print cadena_ejemp
            self.abrir(cadena_ejemp)
        if string == _("Background"):
            dialog = gtk.FileChooserDialog(
                "Open..",
                None,
                gtk.FILE_CHOOSER_ACTION_OPEN,
                (
                    gtk.STOCK_CANCEL,
                    gtk.RESPONSE_CANCEL,
                    gtk.STOCK_OPEN,
                    gtk.RESPONSE_OK
                )
            )
            dialog.set_default_response(gtk.RESPONSE_OK)
            filter = gtk.FileFilter()
            filter.set_name("png")
            filter.add_pattern("*.png")
            dialog.add_filter(filter)

            response = dialog.run()
            cadena = dialog.get_filename()
            if response == gtk.RESPONSE_OK:
                try:
                    self.fondo.carga_img(cadena)
                    dialog.destroy()
                except Exception, ex:
                    self.mensajes(2, "archivo no valido")

            elif response == gtk.RESPONSE_CANCEL:
                dialog.destroy()
        if string == _("Color"):

            colorseldlg = gtk.ColorSelectionDialog("selección de color")
            colorsel = colorseldlg.colorsel
            response = colorseldlg.run()
            if response - - gtk.RESPONSE_OK:
                color = colorsel.get_current_color()
                # color devuelve un gtk.gdk.color
                # pero el RGB es un integer de 65535 valores
                # con una regla de tres simple lo adapto a los
                # 255 valores que soporta pygame
                self.fondo.FONDO = (
                    (color.red * 255) / 65535,
                    (color.green * 255) / 65535,
                    (color.blue * 255) / 65535
                )
            else:
                colorseldlg.hide()

            colorseldlg.hide()
        if string == _("About"):

            about = gtk.AboutDialog()
            logo = gtk.gdk.pixbuf_new_from_file(
                sys.path[0] + "/imagenes/icaro.png")
            about.set_logo(logo)
            about.set_name(creditos.Info.name)
            about.set_authors(creditos.Info.authors)
            about.set_documenters(creditos.Info.documenters)
            about.set_artists(creditos.Info.artists)
            about.set_translator_credits(creditos.Info.translator)
            about.set_version(creditos.Info.version)
            about.set_comments(creditos.Info.description)
            about.set_copyright(creditos.Info.copyright)
            about.set_website(creditos.Info.website)
            about.set_license(creditos.Info.license)
            about.set_wrap_license(True)
            about.run()
            about.destroy()
        if string == _("Config"):
            # print " menu de congifuracion"
            conf = config_menu.MENU_CONF(self.conf_ini)
            conf.show()
        #if string == _("Log"):
        #    dir_conf = os.path.expanduser(
        #        '~') + "/"+self.firmware_ruta+"/firmware/temporal/log.dat"
            #self.visor(dir_conf)
        #    print dir_conf
        if string == "graficador":
            self.graf()
        if string == "clemente cdc":
            self.clemente(" -cdc /dev/ttyACM0")
        if string == "clemente bulk":
            self.clemente(" -bulk ")
        if string == "zoomas":
            self.z = self.z + 0.1
        if string == "zoomenos":
            self.z = self.z - 0.1
        if string == "zoomcero":
            self.z = 1
        if string == "firmware":
            self.recarga_conf(self.icaro_dir, True)

#     def visor(self, dir):
        # browser = navegador.SimpleBrowser()
        # browser.open(dir)
        # browser.show()

    def carga_dicc(self):
        """
        funcion para cargar los componentes bloques,
        los valores del gtk.notebook estan determinados
        por el nombre del archivo, leyendo el archivo saco el valor
        y tipo de los bloques que cargo en el dic
        """
        import carga_componentes
        q = 0
        path = sys.path[0] + "/" + self.icaro_dir + "componentes/core/"
        cargador = carga_componentes.DICC(path, self.icaro_dir)
        comp, grupo = cargador.buscar_bloques()
        for a in range(len(grupo)):
            self.diccionario[q] = ["notebook", grupo[a]]
            q += 1
            for cmp in comp[a]:

                tupla = []
                tupla.append(cmp.dicc["nombre"])
                tupla.append(cmp.dicc["componente"])
                tupla.append(cmp.dicc["cant_puertos"])
                tupla.append(cmp.dicc["color"])
                tupla.append(str(cmp.dicc["dato"]))
                tupla.append(str(cmp.dicc["dato2"]))
                datos_cod_fuente = ""
                if cmp.dicc["componente"] == 1 or cmp.dicc["componente"] == 5:
                    for dato_cod_fuente in cmp.valor:
                        datos_cod_fuente = datos_cod_fuente + dato_cod_fuente
                if cmp.dicc["componente"] == 6 or cmp.dicc["componente"] == 5:
                    datos_cod_fuente = str(cmp.dicc["dato2"])
                tupla.append(
                    str(cmp.tootips) + "\ncodigo fuente:\n " + datos_cod_fuente)
                #tupla.append(cmp.tab)
                self.valor_datos_comp[cmp.dicc["nombre"]] = cmp.valor
                self.diccionario[q] = tupla
                q += 1


    # def carga_paleta(self):
        # R = G = B = ""
        # archivo = open(
            # os.path.abspath(os.path.dirname(__file__)) + "/paletas/default.gpl", "r")
        # tupla = []
        # for a in range(4):
            # archivo.readline()

        # cadena = archivo.readlines()
        # for n in cadena:
            # cad_intermedia = n.split("\t")
            # tupla.append(
                # (cad_intermedia[0], cad_intermedia[1], cad_intermedia[2]))
        # for a in range(len(self.lista)):
            # if self.diccionario[self.lista[a]][0] <> "notebook":
                # R, G, B = tupla[a]
                # self.diccionario[self.lista[a]][3] = (
                    # int(R),
                    # int(G),
                    # int(B)
                # )

    def carga_conf_ventana(self):
        self.carga_dicc()
        self.tooltip = tooltips.dicc
        self.lista = self.diccionario.keys()
        self.lista.sort()
        #self.carga_paleta()
        self.conf_ini = os.path.expanduser('~') + "/"+self.firmware_ruta+"/conf/config.ini"
        print self.conf_ini
        if os.path.exists(self.conf_ini):
            self.cfg = self.carga_conf(self.conf_ini)
        else:
            self.recarga_conf(False)
        # configuraciones generales de ICARO (guardadas en config.ini)
        self.z = float(self.cfg.get("icaro_config", "zoom"))

# Inicio todas las clases

# estoy sacando todo y metiendolo en hardware/icaro
# de esta forma si cambio icaro_dir puedo compilar arduino y esas cosas
# hay que revizar bien los tools_button para que se creen los botones
# en funcion de un .py que este adentro del hardware/icaro/modulos


def inicio(icaro_dir,firmware_ruta):
    global ventana_principal
    global fon
    ventana_principal = Ventana(icaro_dir,firmware_ruta)
    fon = fondo()
    ventana_principal.fondo = fon
    inicial = componente_inicial(50, 50, 1, fon, ventana_principal)
    fon.objetos.append(inicial)

    ventana_principal.window1.show_all()
    R = ventana_principal.cfg.get("icaro_config", "colorR")
    G = ventana_principal.cfg.get("icaro_config", "colorG")
    B = ventana_principal.cfg.get("icaro_config", "colorB")
    X = ventana_principal.cfg.get("icaro_config", "pantallax")
    Y = ventana_principal.cfg.get("icaro_config", "pantallay")
    ventana_principal.area.set_size_request(int(X), int(Y))
    ventana_principal.fondo.FONDO = (int(R), int(G), int(B))
    gobject.timeout_add(50, ventana_principal.timeout)
# gobject.idle_add(ventana_principal.timeout)
# gobject.PRIORITY_DEFAULT=-1
    gtk.main()
