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

import gi
gi.require_version('Gtk', '3.0')

from gi.repository import Gtk, GObject, Gdk, cairo
import os
import sys

# voy a agregar las funcion random para poder meter los bloques un poco mas
# al azar asi no se solapan cuando creo los bloque datos
import random
import creditos
import abrir
import nuevo
import guardar
import tooltips
#import graficador_matplot
import util
import carga
import visor
import config_menu
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
    FONDO = (0, 22, 55)
    color_texto = (255, 255, 255)
    poscion_botones = 0
    band = 0

    def __init__(self):
        self.lista_ordenada.append(0)
        self.img = ""
        self.ultimo = 1

    def carga_img(self, cadena):
        """
        carga una imagen de fondo
        """
        # band es una bandera para determinar si se dibuja una imagen (band=1)
        # o no (band=0)
        self.band = 1
        # img representa el nombre y la ruta del archivo que contiene la imagen
        self.img = cadena

    def mostrar_ultimo(self):
        """TODO: Docstring for mostrar_ultimo.
        :returns: TODO

        """
        dato=0
        ultimo=1
        dato_aux=0
        while (dato<len(self.lista_ordenada)):
            if self.lista_ordenada[dato]==ultimo:
                ultimo=dato_aux
                dato=0
                dato_aux=0
            else:
                dato_aux+=1
                dato+=1
        ultimo_ide=0
        for a in range(len(self.objetos)):
            if self.objetos[a].ide == ultimo:
                ultimo_ide=a
        return (self.objetos[ultimo_ide].posicion[0] ,
                self.objetos[ultimo_ide].posicion[1] ,
                ultimo_ide)

    def update(self):
        """
        funcion que es llamada por (ventana_principal.timeout) para actualizar
        el fondo de la imagen y evitar qeu los bloques dejen un rastro en la
        pantalla, o para actualizar la imagen de fondo
        """
        self.ff = ventana_principal.cr
        rgb = self.color(fon.FONDO)
        self.ff.set_source_rgb(rgb[0], rgb[1], rgb[2])
        self.ff.paint()
        if self.band == 1:
            if os.path.exists(self.img):
                respuesta = self.imagen(str(self.img),
                                        0,
                                        0,
                                        ventana_principal.cr)
                if respuesta == 1:
                    self.band = 0

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
            for d in self.diccionario:
                for ar in range(0,self.diccionario[b][2]):
                    cad=self.diccionario[b][4].split(" ")
                    if (self.diccionario[d][0]) == cad[ar]:
                        self.crear_componente(d,
                                          x+80+(len(self.diccionario[b][0])*6),
                                          y+(ar*40))

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
            self.fondo.tipo_obj.append(self.diccionario[b][1])
            self.fondo.lista_ordenada.append(0)

        if self.diccionario[b][1] == 3:
            self.fondo.identificador += 1
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

		windows1 (Gtk.Windows)
		 |
		  -> box2 (Gtk.Hbox)
		 |     |
		 |      -> notebook2 (Gkt.Notebook)
		 |          |
		 |           -> hp (Gtk.HPaned)
		 |          |   |
		 |          |    -pack1-> scrolled_window2 (Gtk.ScrolledWindow)
		 |          |   |                 |
		 |          |   |                  -> notebook (Gtk.Notebook)
		 |          |   |                          |
		 |          |   |                           -> [0]
		 |          |   |
		 |          |    -pack2-> scrolled_window (Gtk.ScrolledWindow)
		 |          |                       |
		 |          |                        -> area (Gtk.DrawingArea)
		 |          |
		 |           -> self.ver.vbox (Gtk.Vbox)
		 |          |
		 |           -> self.ver.vbox (Gtk.Vbox)
		 |
		  -> hb (Gtk.HeaderBar)
			  |
			   -> box_header (Gtk.Box)
				|
		         	 -> boton_menu_central (Gtk.Button)
                                |      |
				|       -> menu_box (Gtk.Box)
		         	|          | |
				|          |  -> image_menu (Gtk.Image)
				|          | |
				|          |  -> label_menu (Gtk.Label)
				|          |
				|           -rel a-> popover_menu (Gtk.Popover)
				|                     |
				|                      ->box_popover_menu(Gtk.Box)
				|
				-> boton_menu_icaro (Gtk.Button)
				    | |
	       			    |  -> icr_box (Gtk.Box)
				    |       |
				    |        -> image (Gtk.Image)
				    |       |
				    |        -> label (Gtk.Label)
				    |
				     - relativo a -> popover (Gtk.Popover)
						     |
						      -> box_popover (GtkBox)



		[0]: los widget del notebook se cargan a partir de un
		 |   bucle for y su estructura basica es:
		 |
		  -> Table (Gtka.Vbox)
			   |
				-> button (Gtk.Button)
					 |
					  -> caja (Gtk.Box)
					     |
					      -> box1 (Gtk.Box)
						 |
						  -> image (Gtk.Image)
						      |
						       -> label (Gtk.label)




        ################################################
    esta clase controla todos los eventos del programa, mouse, teclado,
    interaccion entre los componentes. A su ves es la encargada de
    actualizar el estado de los bloques icaro y redibujar la pantalla
    mediante la funcion ventana_principal.timeout
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
    seleccion_menu = 2
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
        self.window1 = Gtk.Window()
        # ~ self.window1.fullscreen()
        titulo = "icaro " + version.strip("\n\r")

        ## header Bar
        hb = Gtk.HeaderBar()
        hb.set_show_close_button(True)
        hb.props.title = titulo
        self.window1.set_titlebar(hb)

        ## El box donde guardamos los botones para el header
        box_header = Gtk.Box()
        box_header.set_homogeneous(False)
        box_header.set_orientation(Gtk.Orientation.HORIZONTAL)
        hb.add(box_header)

        ## EL BOTON DEL MENU
        boton_menu_central = Gtk.Button()
        image_menu = Gtk.Image.new_from_file("imagenes/icaro/menu.png")
        label_menu=Gtk.Label("Menu")
        menu_box=Gtk.Box()
        menu_box.set_orientation(Gtk.Orientation.HORIZONTAL)
        menu_box.add(image_menu)
        menu_box.add(label_menu)
        boton_menu_central.add(menu_box)

        ##  POPOVER
        popover_menu = Gtk.Popover()
        popover_menu.set_relative_to(boton_menu_central)

        ## Box donde se guardan los botones del menu popover
        box_popover_menu = Gtk.Box()
        box_popover_menu.set_spacing(5)
        box_popover_menu.set_orientation(Gtk.Orientation.VERTICAL)
        popover_menu.add(box_popover_menu)
        boton_menu_central.connect("clicked",
                                   self.on_popover_clicked,popover_menu)


        #    (_("New"), _("Open"), _("Save"), _("Save as"),
        #     _("Save as function"), _("Examples"), _("Exit")),


        ## EL BOTON DEL MENU ESPECIFICO DE ICARO/PYTHON/ARDUINO
        ## GENERADO EN FUNCION DE comp.py PARA CADA GENERADOR DE CÓDIGOS
        boton_menu_icaro = Gtk.Button()
        img_boton,texto_boton = self.boton_cargador()
        image = Gtk.Image.new_from_file(img_boton)
        label_icr=Gtk.Label(texto_boton)
        icr_box=Gtk.Box()
        icr_box.set_orientation(Gtk.Orientation.HORIZONTAL)
        icr_box.add(image)
        icr_box.add(label_icr)
        boton_menu_icaro.add(icr_box)
        ##  popover
        popover = Gtk.Popover()
        popover.set_relative_to(boton_menu_icaro)
        ## Box donde se guardan los botones del menu popover
        box_popover = Gtk.Box()
        box_popover.set_spacing(5)
        box_popover.set_orientation(Gtk.Orientation.VERTICAL)
        popover.add(box_popover)
        boton_menu_icaro.connect("clicked", self.on_popover_clicked,popover)
        #empaqueto los botones del Menu
        box_header.add(boton_menu_central)
        box_header.add(boton_menu_icaro)

        self.area = Gtk.DrawingArea()
        scrolled_window = Gtk.ScrolledWindow()
        scrolled_window2 = Gtk.ScrolledWindow()
        table = Gtk.VBox(False, 0)
        notebook = Gtk.Notebook()
        self.notebook2 = Gtk.Notebook()
        hp = Gtk.HPaned()
        box2 = Gtk.HBox(False, 3)
        self.window1.add(box2)
        scrolled_window.add(self.area)
        scrolled_window2.add(notebook)

        box2.pack_start(self.notebook2, True, True, 1)

        hp.pack1(scrolled_window2, True, True)
        archivo_nombre = self.cfg.get("pic", "arch")
        self.valor_datos_comp["fin "] = self.cfg.get("pic", "cierrebloque")
        dir_source=(os.path.expanduser('~')+
                    "/"+self.firmware_ruta +
                    "firmware/source/"+archivo_nombre)

        self.ver = visor.visor_codigo(self,

                                    self.firmware_ruta,
                                    "source/"+archivo_nombre,

                                      self.carga_buffer())


        self.ver2 = visor.visor_codigo(self,

                                        self.firmware_ruta,
                                        "temporal/log.dat",

                                       "")
        hp.pack2(scrolled_window, True, True)
        hp.set_position(120)
        self.notebook2.append_page(hp, Gtk.Label("bloques"))
        self.notebook2.append_page(self.ver.vbox, Gtk.Label("Código Fuente"))
        self.notebook2.append_page(self.ver2.vbox, Gtk.Label("Registro"))


        self.window1.connect('delete-event', Gtk.main_quit)
        self.window1.set_icon_from_file(
            sys.path[0] +
            "/imagenes/icaro.png"
        )
        # creo los botones de la toolbar
        botones_toolbar_compilador = self.crear_botones_bootlader()
        botones_menu=self.crear_botones_menu()
        #botones_toolbar_bloques = self.crear_botones_bloques()
        for dat in botones_menu:
            self.crear_toolbuttons(
                                    box_popover_menu,
                                    1,
                                    dat[0],
                                    dat[1],
                                    dat[2],
                                    dat[3],
                                    dat[4])

        # creo los botones de la toolbar en funcion de la tupla botonas_toolbar
        for dat in botones_toolbar_compilador:
            self.crear_toolbuttons(
                                    box_popover,
                                    0,
                                    dat[0],
                                    dat[1],
                                    dat[2],
                                    dat[3],
                                    dat[4])
        scrolled_window.set_policy(Gtk.PolicyType.AUTOMATIC,Gtk.PolicyType.AUTOMATIC)
        scrolled_window2.show()
        notebook.set_tab_pos(Gtk.PositionType.LEFT)
        label = Gtk.Label(self.diccionario[self.lista[0]][1])
        notebook.append_page(table, label)
        button = Gtk.Button()
        ## aca cargo los datos de cada bloque ##
        for i in range(1, len(self.lista)):
            if self.diccionario[self.lista[i]][0] == "notebook":
                table = Gtk.VBox(False, 0)#len(self.lista))
                label = Gtk.Label(self.diccionario[self.lista[i]][1])
                notebook.append_page(table, label)
            else:
                self.diccionario[self.lista[i]][0]
                caja = self.imagen_boton(
                    self.diccionario[self.lista[i]][0],
                    self.diccionario[self.lista[i]][0]
                )
                button = Gtk.Button()#Gtk.RadioButton.new_from_widget(button)
                button.set_tooltip_text(self.diccionario[self.lista[i]][6])
                button.add(caja)
                button.connect("clicked", self.botones, self.lista[i])
                table.pack_start(button, False, True, 0)
                button.show()

        # capturo los eventos del drawing area
        # menos el teclado que lo capturo desde la ventana principal
        #self.notebook2.add_events(Gdk.EventMask.SWITCHPAGE)
        self.notebook2.connect("switch-page",self.cambiotab)
        self.area.add_events(Gdk.EventMask.BUTTON_PRESS_MASK)
        self.area.add_events(Gdk.EventMask.BUTTON_RELEASE_MASK)
        self.area.add_events(Gdk.EventMask.POINTER_MOTION_MASK)
        self.window1.add_events(Gdk.EventMask.KEY_PRESS_MASK)
        self.window1.add_events(Gdk.EventMask.KEY_RELEASE_MASK)
        self.area.connect("button-press-event", self.buttonpress_cb)
        self.area.connect("button-release-event", self.buttonrelease_cb)
        self.area.connect("motion-notify-event", self.move_cb)
        self.area.connect("draw", self.expose)
        self.window1.connect("key_press_event", self.keypress_cb)
        self.window1.connect("key_release_event", self.keyrelease_cb)
        #self.definir_cursor(2)

    def cambiotab(self,a,b,c):
        """TODO: Docstring for cambiotab,
        Cuando cambio el tabulador del notebook, ejecuto esta función
        para poder recargar los gtksources.
        :a: widget notebook
        :b: widget objeto dentro del notebook2
        :c: valor de la posición del tab (0,1,2)
        :returns: NADA

        """
        if (c==1):
            self.ver.recargar(0)
        if (c==2):
            self.ver2.recargar(0)

    def on_popover_clicked(self, button,popover):
        popover.show_all()

    def crear_botones_menu(self):
        """TODO: Docstring for crear_botones_menu.
        :returns: TODO

        """
        botones=[
            [ "document-new", "Nevo",
             self.tooltip["nuevo"], self.nuevo, None],
            ["document-open", "Abrir",
             self.tooltip["abrir"], self.abrir, None],
            ["document-open", "Ejemplos",
             self.tooltip["abrir"], self.abrir,sys.path[0] + "/" + self.icaro_dir + "ejemplos"],
            ["document-save", "Guardar",
             self.tooltip["guardar"], self.guardar, 0],

            ["insert-image", "color",
             "", self.gestion_color, None],

            ["view-fullscreen", "fondo",
             "", self.imagen_fondo, None],
            ["document-properties", "configuración",
             "", self.configuracio_icr,self.firmware_ruta,True],
            ["document-properties", "recargar firmware",
             "", self.recarga_conf, self.icaro_dir,True],

            ["application-exit", "Salir",
             self.tooltip["salir"], self.salir, None]
            ]

        #self.recarga_conf(self.icaro_dir, True)
        return botones

    def crear_botones_bootlader(self):
        boton_medio=[]
        for linea in self.carga_info_botones():
            boton_medio.append([
                                sys.path[0]+"/"+self.icaro_dir+linea[0],
                                linea[1],
                                self.tooltip[linea[2]],
                                linea[3],
                                linea[4]
                                ])
        botones_final = boton_medio # botones_inic+ boton_medio + boton_fin
        return botones_final

    def crear_botones_bloques(self):
        boton = [
                    [sys.path[0]+"/imagenes/bloques/lapiz.png",
                     "Lapiz",
                    self.tooltip["lapiz"],
                    self.dibujo,
                    1
                    ],
                    [sys.path[0]+"/imagenes/bloques/mover.png",
                     "Mover",
                    self.tooltip["mover"],
                    self.dibujo,
                    2
                    ],
                    [sys.path[0]+"/imagenes/bloques/borrar.png",
                     "Borrar",
                    self.tooltip["borrar"],
                    self.dibujo,
                    3
                    ],
                    [sys.path[0]+"/imagenes/bloques/editar.png",
                     "Editar",
                    self.tooltip["editar"],
                    self.dibujo,
                    4
                    ],
                ]

        return boton


    def crear_toolbuttons(self, box_popover, tipo_img,img, nombre, tooltip, func, metodos):
        """
        tipo_img == 0 es una imagen de archivo
        tipo_img == 1 es una imagend e stock

        """
        # creo los botones de la toolbar
        label = Gtk.Label(nombre)
        iconSize = Gtk.IconSize.LARGE_TOOLBAR
        if tipo_img==0:
            image = Gtk.Image.new_from_file(img)
        if tipo_img==1:
            image = Gtk.Image.new_from_icon_name(img, iconSize)
        box_boton=Gtk.Box()
        box_boton.set_homogeneous(False)
        box_boton.set_orientation(Gtk.Orientation.HORIZONTAL)
        box_boton.set_spacing(5)
        box_boton.add(image)
        box_boton.add(label)

        boton_menu = Gtk.Button()
        boton_menu.set_tooltip_text(tooltip)
        boton_menu.add(box_boton)
        boton_menu.connect("clicked", func,metodos)
        box_popover.add(boton_menu)

    def configuracio_icr(self,b,conf):
        print ("------------",conf)
        confgui = config_menu.MENU_CONF(conf)
        confgui.show()

    #def definir_cursor(self, b):

        #self.puntero_seleccion_mouse = b

# ========================================================================
# ABRIR LA VENTANA DE VISOR DE CODIGO
# ========================================================================

    #def graf(self):
    #    graf = graficador_matplot.VENTANA()
    #    graf.window.show_all()

    #def clemente(self, prt):

     #   cad = "clear\n python " + src + "/clemente/clemente.py " + prt + " \n"
        #cle = terminal_vte.TERM_CLEMENTE(cad)
        #cle.window.show_all()
# ========================================================================
# VENTANA DE AYUDA (NAVEGADOR)
# ========================================================================

    #def ayuda(self, b):
        #self.visor()
        #texto=("para ver la documentación actualizada, ir  a la pagina web: http://roboticaro.org/documentacion/")
        #self.mensajes(3,texto)
    #def dibujo(self, event, b):
        #self.seleccion_menu = b
        #self.definir_cursor(b)

# ========================================================================
# ESTO ES PARA GREGAR IMAGENES AL BOTON DE LA TOOLBAR
# ========================================================================
    def imagen_boton(self, xpm_filename, label_text):
        box1 = Gtk.HBox(False, 0)
        box1.set_border_width(0)
        image = Gtk.Image()
        xpm_filename = xpm_filename.strip(" ")

        buf = sys.path[0]  + "/"+ self.icaro_dir +  "/imagenes/componentes/" + xpm_filename + ".png"
        image.set_from_file(buf)
        label = Gtk.Label(label_text)
        box1.pack_start(image, False, True, 1)
        box1.pack_start(label, False, True, 1)
        image.show()
        label.show()
        return box1

    # esta funcion captura el evento de presionar un boton de la toolbar
    # table y lo manda tipo_componentes
    def botones(self, event, b):
        # el tipo de componente que puede ser es:
        # 1: componente de bloques General
        # 4: componente de cero argumentos
        # 5: componente bloque 1
        # 3: componente bloque 2
        # 6: componente de argumentos
        # 7: componente de argumentos con imagen
        c = self.diccionario[b][1]
        if (c == 1 or c == 3 or c == 4 or c == 5):
            self.tipo_componente = b
            x,y,ultimo=self.fondo.mostrar_ultimo()
            self.crear_componente(b,x,y+(60*self.diccionario[b][2]))
            self.fondo.objetos[len(self.fondo.objetos)-1].pegado=1
            self.fondo.objetos[len(self.fondo.objetos)-1].pegado_a=ultimo
        if (c ==6 or c == 7):
            self.tipo_componente = b
            x,y,ultimo=self.fondo.mostrar_ultimo()
            ra = random.randint(-40,40)
            self.crear_componente(b,x+ra+300,y+ra)
        return

    def guardar(self, b, dato):
        pagina = self.notebook2.get_current_page()
        dialog = Gtk.FileChooserDialog("save..",
                                       None,
                                       Gtk.FileChooserAction.SAVE,
                                        (Gtk.STOCK_CANCEL,
                                         Gtk.ResponseType.CANCEL,
                                         Gtk.STOCK_OPEN,
                                         Gtk.ResponseType.OK))
        dialog.set_default_response( Gtk.ResponseType.OK)
        response = dialog.run()
        if response ==  Gtk.ResponseType.OK:
            cadena = dialog.get_filename()
            # separo la cadena para sacar la extension del archivo
            # si el tamaño de cadena2 es 1, el nombre del archivo no
            # tiene extension, entonces le agrego  - .icr -
            cadena2 = cadena.split(".")
            if len(cadena2) == 1:
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
                    if pagina == 0:
                        guardar.guardar(self.fondo.objetos, cadena, self.fondo)
                        self.archivo = cadena
                    else:
                        if pagina == 1:
                            self.ver.save_file(cadena)
                if dato == 1:
                    crear.funcion(self.fondo, self, cadena,)
            elif response ==  Gtk.ResponseType.CANCEL:
                pass
        dialog.destroy()

    def abrir(self,b, dato):
        pagina = self.notebook2.get_current_page()
        dialog = Gtk.FileChooserDialog(
            "Open..",
            None,
            Gtk.FileChooserAction.OPEN,
            (Gtk.STOCK_CANCEL, Gtk.ResponseType.CANCEL,
             Gtk.STOCK_OPEN, Gtk.ResponseType.OK))

        dialog.set_default_response(Gtk.ResponseType.OK)
        try:
            dialog.set_current_folder(dato)
        except Exception as ex:
            dialog.set_current_folder(sys.path[0])

        if pagina == 0:
            filter = Gtk.FileFilter()
            filter.set_name("icaro")
            filter.add_pattern("*.icr")
            dialog.add_filter(filter)
        if pagina == 1:
            filter = Gtk.FileFilter()
            filter.set_name("C")
            filter.add_pattern("*.c")
            dialog.add_filter(filter)

        response = dialog.run()
        if response == Gtk.ResponseType.OK:
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

        elif response == Gtk.ResponseType.CANCEL:
            print('Closed, no files selected')
        dialog.destroy()

    def nuevo(self, dato,b):
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
        self.area.queue_draw()
        return True

    def update(self):
        self.fondo.update()
        if len(fon.objetos_datos) > 0:
            for dat in fon.objetos_datos:
                dat.update()
        for obj in fon.objetos:
            obj.update()
        return True

    def expose(self, event, cr):
        self.cr=cr
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
            return

    def buttonrelease_cb(self, win, event):
        self.boton_mouse[event.button] = 0

    def keypress_cb(self, win, event):
        self.tecla = 1
        self.valor_tecla = event.string
        if event.keyval == 65293:
            self.tecla_enter = 1


    def keyrelease_cb(self, win, event):
        self.tecla = 0
        self.tecla_enter = 0
        self.valor_tecla = ""

    def salir(self, dato,b):
        cartel = self.mensajes(1, "¿esta seguro que desea salir del sistema?")
        if cartel == 1:
            exit()

    def gestion_color(self,a,b):
        """TODO: Docstring for gestion_color.
        :returns: TODO

        """
        colorseldlg = Gtk.ColorSelectionDialog("selección de color")
        response = colorseldlg.run()
        if response - - Gtk.ResponseType.OK:
            color=colorseldlg.get_color_selection()
            color = color.get_current_color()
            # color devuelve un Gtk.gdk.color
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

    def imagen_fondo(self,a,b):
        """TODO: Docstring for imagen_fondo.
        :returns: TODO

        """
        dialog = Gtk.FileChooserDialog(
                "Open..",
                None,
            Gtk.FileChooserAction.OPEN,
            (Gtk.STOCK_CANCEL, Gtk.ResponseType.CANCEL,
             Gtk.STOCK_OPEN, Gtk.ResponseType.OK))

        dialog.set_default_response(Gtk.ResponseType.OK)
        filter = Gtk.FileFilter()
        filter.set_name("png")
        filter.add_pattern("*.png")
        dialog.add_filter(filter)
        response = dialog.run()
        cadena = dialog.get_filename()
        if response == Gtk.ResponseType.OK:
            try:
                self.fondo.carga_img(cadena)
                dialog.destroy()
            except Exception as ex:
                self.mensajes(2, "archivo no valido")
        elif response ==  Gtk.ResponseType.CANCEL:
            dialog.destroy()

    def carga_dicc(self):
        """
        funcion para cargar los componentes bloques,
        los valores del Gtk.notebook estan determinados
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
                self.valor_datos_comp[cmp.dicc["nombre"]] = cmp.valor
                self.diccionario[q] = tupla
                q += 1



    def carga_conf_ventana(self):
        self.carga_dicc()
        self.tooltip = tooltips.dicc
        self.lista = list(self.diccionario.keys())
        self.lista.sort()
        self.conf_ini = os.path.expanduser('~') + "/"+self.firmware_ruta+"/conf/config.ini"
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
    GObject.timeout_add(50, ventana_principal.timeout)
    Gtk.main()
