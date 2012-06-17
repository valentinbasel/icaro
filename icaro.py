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

import pygtk
import gtk
import os
import re
import shutil
import sys
import gobject
import pygame
import creditos
from subprocess import Popen,PIPE,STDOUT
import carga, abrir, nuevo, guardar, crear, navegador, visor, texto
from componente_inicial import *
from componente import *

# ==============================================================================
# variables globales de color
# ==============================================================================

BLACK = (0, 0, 0)
LINEA=(255,0,0)

# ==============================================================================
# PUNTERO
# ==============================================================================
class puntero(pygame.sprite.Sprite):
    def __init__ (self,fondo,ventana):
        pygame.sprite.Sprite.__init__(self)
        self.fondo=fondo
        self.ventana=ventana

    def update(self):
        posic_mouse= self.ventana.mousexy
        if self.ventana.seleccion_menu==1:
            self.imagen=pygame.image.load("imagenes/mouse/lapiz.png")
        if self.ventana.seleccion_menu==2:
            self.imagen=pygame.image.load("imagenes/mouse/puntero.png")
        if self.ventana.seleccion_menu==3:
            self.imagen=pygame.image.load("imagenes/mouse/borrar.png")
        xy=posic_mouse[0]-10,posic_mouse[1]-10
        self.fondo.screen.blit(self.imagen,xy)

# ==============================================================================
# FONDO
# ==============================================================================
class fondo(pygame.sprite.Sprite):
    FONDO=(00,22,55)
    #variables para los componentes
    componentes=pygame.sprite.RenderClear()
    identificador=1
    objetos=[]
    tipo_obj=[0]
    lista_ordenada=[]
    lista_fina=[]
    # variable para los componentes datos
    datos=pygame.sprite.RenderClear()
    identificador_dat=1
    identificador_dat2=1
    objetos_datos=[0]
    tipo_obj_datos=[0]
    lista_valor_datos=[]
    lista_valor_datos2=[]
    #variables globales
    color_texto=(255,255,255)
    poscion_botones=0
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        size = width, height = 1100, 2000
        self.screen = pygame.display.set_mode(size)
        self.largo,self.alto=self.screen.get_size()
        self.lista_ordenada.append(0)
    def update(self):
        self.screen.fill(self.FONDO)
        pygame.mouse.set_visible(False)
        pygame.display.update


# ==============================================================================
# VENTANA
# ==============================================================================
class Ventana:

    # variables globales para manejar posicion del mouse, clicks y pulsaciones
    # de teclas dentro de la ventana
    mousexy=(0,0)
    boton_mouse= [0,0,0,0]
    seleccionado=0
    seleccionado_datos=0
    seleccionado_datos_ed=0
    tecla=0
    valor_tecla=""
    tecla_enter=0

    processor="18f4550"
    cadena_pinguino=[]
    seleccion_menu=1
    tipo_componente=1
    diccionario={}
    tooltip={}
    lista=[]
    def __init__(self):

        ###############################################
        #   el orden de los contenedores de la ventana
        #        ventana
        #        |
        #         ->box1
        #           |
        #            -> menu_bar
        #           |
        #            -> toolbar
        #           |
        #            -> box2
        #               |
        #                -> scrolled_window
        #               |
        #                -> scrolled_window2
        ################################################
        #esta es la lista de donde se sacan los valores para los botones
        #icaro
        self.carga_dicc()
        self.carga_tooltip()
        self.lista=self.diccionario.keys()
        self.lista.sort()
        self.carga_paleta()
        #declaro la ventana principal
        self.window1 = gtk.Window()
        self.window1.connect('delete-event', gtk.main_quit)
        self.window1.set_icon_from_file("imagenes/icaro.png")
        #~ self.window1.fullscreen()
        #self.window1.fullscreen()
        # declaro el drawing area donde va a estar pygame
        # y los eventos del mouse y teclado
        self.area = gtk.DrawingArea()
        self.area.set_app_paintable(True)
        self.area.set_size_request(3000, 3000)
        # declaro los botones del menu 'menu' y 'edicion'
        menu = gtk.Menu()
        # buf es donde se crgan todos los botones del menu
        buf=("nuevo","abrir","guardar","guardar como","salir")
        for i in buf:
            menu_items = gtk.MenuItem(i)
            menu.append(menu_items)
            menu_items.connect("activate", self.menuitem_response, i)
            menu_items.show()


        menu2 = gtk.Menu()
        # buf es donde se crgan todos los botones del menu
        buf2=("color","acerca de")
        for i in buf2:
            menu_items2 = gtk.MenuItem(i)
            menu2.append(menu_items2)
            menu_items2.connect("activate", self.menuitem_response, i)
            menu_items2.show()
            
            
        # los menus del toolbar se agrupan en estos dos "menus raices"
        root_menu = gtk.MenuItem("Archivo")
        root_menu.show()
        root_menu.set_submenu(menu)
        
        root_menu2 = gtk.MenuItem("editar")
        root_menu2.show()
        root_menu2.set_submenu(menu2)
        #los dos menus_root quedan dentro de la barra de menu
        menu_bar = gtk.MenuBar()
        menu_bar.show()
        menu_bar.append (root_menu)
        menu_bar.append (root_menu2)
        # esta es la toolbar donde van los botones para cargar los datos
        # y compilar
        toolbar = gtk.Toolbar()
        toolbar.append_item
        toolbar.set_style(gtk.TOOLBAR_BOTH)
        toolbar.show()
        # creo los botones de la toolbar
        iconw = gtk.Image()
        iconw.set_from_file("imagenes/icaro.png")
        compilar_button = toolbar.append_item(
                        "compilar",
                        "compila el bloque",
                        "Private",
                        iconw,
                        self.compilar)

        iconw = gtk.Image()
        iconw.set_from_file("imagenes/compilar.png")
        cargar_button = toolbar.append_item(
                        "cargar",
                        "carga el codigo en el pic",
                        "Private",
                        iconw,
                        self.upload)

        iconw = gtk.Image()
        iconw.set_from_file("imagenes/tortucaro.png")
        cargar_button = toolbar.append_item(
                        "tortucaro",
                        "prepara la placa para trabajar con turtleart",
                        "Private",
                        iconw,
                        self.tortucaro)
        toolbar.append_space()

        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_HELP,30)
        salir_button = toolbar.append_item(
                        "ayuda",
                        "menu de ayuda",
                        "Private",
                        iconw,
                        self.ayuda)
        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_PROPERTIES,30)
        salir_button = toolbar.append_item(
                        "ver codigo",
                        "muestra el codigo fuente generado por icaro",
                        "Private",
                        iconw,
                        self.ver)
        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_QUIT,30)
        salir_button = toolbar.append_item(
                        "salir",
                        "sale del programa",
                        "Private",
                        iconw,
                        exit)

        # un espacio en blanco para separar
        toolbar.append_space()

        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_EDIT,30)
        dibujar_button = toolbar.append_element(
                        gtk.TOOLBAR_CHILD_RADIOBUTTON,None,
                        "lapiz",
                        "herramienta para colocación de componentes",
                        "Private",
                        iconw,
                        self.dibujo,1)
        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_SELECT_COLOR,30)
        mover_button = toolbar.append_element(
                        gtk.TOOLBAR_CHILD_RADIOBUTTON,dibujar_button,
                        "mover",
                        "herramienta para mover los componentes",
                        "Private",
                        iconw,
                        self.dibujo,2)

        iconw = gtk.Image()
        iconw.set_from_stock(gtk.STOCK_DELETE,30)
        mover_button = toolbar.append_element(
                        gtk.TOOLBAR_CHILD_RADIOBUTTON,dibujar_button,
                        "borrar",
                        "herramienta para borrar los componentes",
                        "Private",
                        iconw,
                        self.dibujo,3)

        #declaro el scroll_window donde esta inserto el drawing area
        scrolled_window = gtk.ScrolledWindow()
        scrolled_window.set_size_request(500, 600)
        scrolled_window.set_policy(gtk.POLICY_ALWAYS, gtk.POLICY_ALWAYS)
        scrolled_window.show()
        scrolled_window.add_with_viewport(self.area)
        #declaro el scroll window donde va la toolbar de los bloques
        scrolled_window2 = gtk.ScrolledWindow()
        scrolled_window2.set_border_width(1)
        scrolled_window2.set_policy(gtk.POLICY_NEVER, gtk.POLICY_ALWAYS)
        scrolled_window2.show()
        #declaro la tabla  donde van los botones para el menu de bloques

        table=gtk.VBox(False, len(self.lista))
        notebook = gtk.Notebook()
        notebook.set_tab_pos(gtk.POS_RIGHT)
#        notebook.show()

#
        scrolled_window2.add_with_viewport(notebook)

        label = gtk.Label(self.diccionario[self.lista[0]][1])
        notebook.append_page(table,label)
        # box1 es el contenedor principal despues de la ventana
        box1 = gtk.VBox(False, 3)
        # box2 es el segundo en importancia
        box2 = gtk.HBox(False, 2)
        buffer = self.diccionario[self.lista[1]][0]
        caja = self.imagen_boton(
                                self.diccionario[self.lista[1]][0],
                                self.diccionario[self.lista[1]][0]
                                )
        button = gtk.RadioButton()
        if self.tooltip.has_key(self.diccionario[self.lista[1]][0]):
            button.set_tooltip_text(self.tooltip[self.diccionario[self.lista[1]][0]])
        # bucle principal donde se cargan los RAdioButton donde se cargan
        # los componentes del diccionario


        button.add(caja)
        button.connect("clicked", self.botones,self.lista[1])#buffer

        button.show()
        table.pack_start(button, False, True, 0)

        for i in range(2,len(self.lista)):
            if self.diccionario[self.lista[i]][0]=="notebook":
                table=gtk.VBox(False, len(self.lista))
                label = gtk.Label(self.diccionario[self.lista[i]][1])
                notebook.append_page(table,label)
            else:
                buffer = self.diccionario[self.lista[i]][0]
                caja = self.imagen_boton(
                                        self.diccionario[self.lista[i]][0],
                                        self.diccionario[self.lista[i]][0]
                                        )
                button = gtk.RadioButton(button)
                if self.tooltip.has_key(self.diccionario[self.lista[i]][0]):
                    tool=self.tooltip[self.diccionario[self.lista[i]][0]]
                    button.set_tooltip_text(tool)
                button.add(caja)
                button.connect("clicked", self.botones,self.lista[i])#buffer
                table.pack_start(button, False, True, 0)
                button.show()
            #empaqueto todo

        box2.pack_start(scrolled_window, True, True, 1)
        box2.pack_start(scrolled_window2,False, False, 1)
        box1.pack_start(menu_bar, False, True, 1)
        box1.pack_start(toolbar, False, True, 1)
        box1.pack_start(box2, True, True, 1)
        self.window1.add(box1)

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
        self.window1.connect("key_press_event", self.keypress_cb)
        self.window1.connect("key_release_event", self.keyrelease_cb)
        self.area.realize()
#        self.area.grab_focus()

# ==============================================================================
# ABRIR LA VENTANA DE VISOR DE CODIGO
# ==============================================================================
    def ver(self,b):
        ver=visor.visor_codigo()
        ver.window.show_all()

# ==============================================================================
# VENTANA DE AYUDA (NAVEGADOR)
# ==============================================================================
    def ayuda(self,b):
        browser = navegador.SimpleBrowser()
        browser.open(sys.path[0]+'/html/index.html')
        browser.show()

    def dibujo(self,event,b):
        self.seleccion_menu=b

# ==============================================================================
# ESTO ES PARA GREGAR IMAGENES AL BOTON DE LA TOOLBAR
# ==============================================================================
    def imagen_boton(self, xpm_filename, label_text):
        box1 = gtk.HBox(False, 0)
        box1.set_border_width(0)
        image = gtk.Image()
        xpm_filename=xpm_filename.strip(" ")
        buf="imagenes/componentes/"+xpm_filename+".png"
        image.set_from_file(buf)
        label = gtk.Label(label_text)
        box1.pack_start(image, False, True, 1)
        box1.pack_start(label, False, True, 1)
        image.show()
        label.show()
        return box1

# ==============================================================================
# GENERADOR DE MENSAJES
# ==============================================================================
    def mensajes(self,num,mensa):
        tipo=   (
                gtk.MESSAGE_WARNING,
                gtk.MESSAGE_QUESTION,
                gtk.MESSAGE_ERROR,
                gtk.MESSAGE_INFO
                )
        md = gtk.MessageDialog(None,
            gtk.DIALOG_MODAL | gtk.DIALOG_DESTROY_WITH_PARENT,
            tipo[num],
            gtk.BUTTONS_OK, mensa)
        md.run()
        md.destroy()

    # esta funcion captura el evento de presionar un boton de la toolbar
    # table y lo manda tipo_componentes
    def botones(self,event,b):
        self.tipo_componente=b

# ==============================================================================
# FUNCION PARA GENERAR LOS COMPONENTES DESDE EL DICCIONARIO
# ==============================================================================
    def crear_componente(self,b):
        ax=ay=30
        # siempre hay que tratar de que el foco quede en el drawing area
        self.area.grab_focus()

        if self.diccionario[b][1]==1:
            c1=componente   (
                            self.mousexy[0]-ax,
                            self.mousexy[1]-ay,
                            self.fondo.identificador+1,
                            self.diccionario[b][2],
                            self.diccionario[b][3],
                            self.diccionario[b][0],
                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.componentes.add(c1)
            self.fondo.identificador+=1
            self.fondo.objetos.append(c1)
            self.fondo.tipo_obj.append(self.diccionario[b][1])
        if self.diccionario[b][1]==4:

            self.fondo.identificador+=1
            c1=componente_cero_arg  (
                                    self.mousexy[0]-ax,
                                    self.mousexy[1]-ay,
                                    self.fondo.identificador,
                                    self.diccionario[b][3],
                                    self.diccionario[b][0],
                                    self.fondo,
                                    self,
                                    self.textorender
                                    )

            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
            self.fondo.tipo_obj.append(self.diccionario[b][1])
        if self.diccionario[b][1]==5:
            self.fondo.identificador+=1
            c1=componente_bloque_uno(
                                            self.mousexy[0]-ax,
                                            self.mousexy[1]-ay,
                                            self.fondo.identificador,
                                            self.diccionario[b][3],
                                            self.diccionario[b][0],
                                            self.fondo,
                                            self,
                                            self.textorender
                                            )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
            self.fondo.identificador +=1
            c1=componente_bloque_dos    (
                                        self.mousexy[0]-ax,
                                        self.mousexy[1]+80-ay,
                                        self.fondo.identificador,
                                        self.diccionario[b][3],
                                        self.diccionario[b][4],
                                        self.fondo,
                                        self,
                                        self.textorender
                                        )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
            self.fondo.tipo_obj.append(self.diccionario[b][1])
            self.fondo.tipo_obj.append(0)
        if self.diccionario[b][1]==6:
            c1=comp_dat_arg   (
                            self.mousexy[0]-ax,
                            self.mousexy[1]-ay,
                            self.fondo.identificador_dat,
                            self.diccionario[b][2],
                            self.diccionario[b][4],
                            self.diccionario[b][3],
                            self.diccionario[b][5],
                            self.diccionario[b][0].strip(" ")+".png",
                            6,
                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.identificador_dat+=1
            self.fondo.datos.add(c1)
            self.fondo.objetos_datos.append(c1)
            self.fondo.tipo_obj_datos.append(self.diccionario[b][1])
        if self.diccionario[b][1]==7:
            c1=comp_dat_arg   (
                            self.mousexy[0]-ax,
                            self.mousexy[1]-ay,
                            self.fondo.identificador_dat,
                            self.diccionario[b][2],
                            self.diccionario[b][4],
                            self.diccionario[b][3],
                            self.diccionario[b][5],
                            self.diccionario[b][0].strip(" ")+".png",
                            7,
                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.identificador_dat+=1
            self.fondo.datos.add(c1)
            self.fondo.objetos_datos.append(c1)
            self.fondo.tipo_obj_datos.append(self.diccionario[b][1])

# por si quiero implementar un dialogo de mensajes
#        self.dialog = gtk.MessageDialog(None,
#                            gtk.DIALOG_MODAL | gtk.DIALOG_DESTROY_WITH_PARENT,
#                            gtk.MESSAGE_QUESTION,
#                            gtk.BUTTONS_OK,None)
#        self.dialog.set_markup('Please enter your <b>name</b>:')
#        entry = gtk.Entry()
#        entry.connect("activate", self.responseToDialog, self.dialog, gtk.RESPONSE_OK)
#        hbox = gtk.HBox()
#        hbox.pack_start(gtk.Label("valor:"), False, 5, 5)
#        hbox.pack_end(entry)
#        self.dialog.format_secondary_markup("ingresa el valor del componente")
#        self.dialog.vbox.pack_end(hbox, True, True, 0)
#
#    def responseToDialog(self,entry, dialog, response):
#        dialog.response(response)
#        text= entry.get_text()
#        dialog.hide()
#        #return text


# ==============================================================================
# FUNCIONES PARA COMPILAR Y CARGAR EL FIRMWARE
# ==============================================================================
    # cargo template.pde para tener la planilla estandar dentro de
    # cadena_pinguino
    def carga(self):
        self.cadena_pinguino[:]=[]
        archivo=open("source/template.pde","r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)

    def compilar(self,b):
        self.carga()
        crear.crear_archivo(self.fondo,self)
        i=carga.compilar_pic("/source/main")
        if i==0:
            self.mensajes(3,"la compilacion fue exitosa")
        else:
            self.mensajes(0,"hubo un error de compilacion")

    def upload(self,b):
        resultado=1
        self.mensajes(3,"aprete el boton RESET de la placa pinguino antes de continuar")
        i=carga.upload_pic("/source/main")
        for d in i.readlines():
            if d.find("writing")==0:
                resultado=0
        if resultado==0:
            self.mensajes(3,"la carga fue exitosa")
        else:
            self.mensajes(0,"hubo un error en la carga del PIC")

    def tortucaro(self,b):
        resultado=1
        comp=1
        i=carga.compilar_pic("/tortucaro/main")
        if i==0:
            self.mensajes(3,"la compilacion fue exitosa")
            comp=0
        else:
            self.mensajes(0,"hubo un error de compilacion")
            comp=1
        if comp==0:
            self.mensajes(3,"aprete el boton RESET de la placa pinguino antes de continuar")
            i=carga.upload_pic("/tortucaro/main")
            for d in i.readlines():
                if d.find("writing")==0:
                    resultado=0
            if resultado==0:
                self.mensajes(3,"la carga fue exitosa")
            else:
                self.mensajes(0,"hubo un error en la carga del PIC")
# ==============================================================================
# FUNCIONES DE LOS EVENTOS DEL MOUSE Y TECLADO
# ==============================================================================

    def move_cb(self,win, event):
        self.mousexy= event.get_coords()

    def buttonpress_cb(self,win,event):
        self.boton_mouse[event.button]=1
        if self.seleccion_menu==1:
            self.crear_componente(self.tipo_componente)

    def buttonrelease_cb(self,win,event):
        self.boton_mouse[event.button]=0

    def keypress_cb(self,win,event):
        self.tecla=1
        self.valor_tecla= event.string
        if event.keyval==65293:
            self.tecla_enter=1

    def keyrelease_cb(self,win,event):
        self.tecla=0
        self.tecla_enter=0
        self.valor_tecla=""
# ==============================================================================
# LAS RESPUESTAS DEL MENU
# ==============================================================================
    def menuitem_response(self, widget, string):
        print string
        if string=="abrir":
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
            filter.set_name("All files")
            filter.add_pattern("*")
            dialog.add_filter(filter)
            filter = gtk.FileFilter()
            filter.set_name("icaro")
            filter.add_pattern("*.icr2")
            dialog.add_filter(filter)
            response = dialog.run()
            if response == gtk.RESPONSE_OK:
                nuevo.nuevo(self.fondo)
                inicial=componente_inicial (
                                            20,50,1,
                                            self.fondo,
                                            self,self.textorender
                                            )
                self.fondo.componentes.add(inicial)
                self.fondo.objetos.append(inicial)
                cadena= dialog.get_filename()
                abrir.abrir(
                            self.diccionario,
                            cadena,
                            self.fondo,
                            self,
                            self.textorender
                            )
            elif response == gtk.RESPONSE_CANCEL:
                print 'Closed, no files selected'
            dialog.destroy()

        if string=="salir":
            exit()
        if string=="nuevo":
            nuevo.nuevo(self.fondo)
            inicial=componente_inicial(20,50,1,self.fondo,self,self.textorender)
            self.fondo.componentes.add(inicial)
            self.fondo.objetos.append(inicial)
        if string=="guardar":
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
                guardar.guardar(
                                self.fondo.objetos,
                                dialog.get_filename(),
                                self.fondo
                                )
            elif response == gtk.RESPONSE_CANCEL:
                print 'Closed, no files selected'
            dialog.destroy()

        if string=="color":

            colorseldlg = gtk.ColorSelectionDialog("selección de color")
            colorsel = colorseldlg.colorsel
            response = colorseldlg.run()
            if response -- gtk.RESPONSE_OK:
                color = colorsel.get_current_color()
                # color devuelve un gtk.gdk.color
                # pero el RGB es un integer de 65535 valores
                # con una regla de tres simple lo adapto a los 
                # 255 valores que soporta pygame
                fondo.FONDO=(
                            (color.red*255)/65535,
                            (color.green*255)/65535,
                            (color.blue*255)/65535
                            )
            else:
                colorseldlg.hide()

            colorseldlg.hide()
        if string=="acerca de":
            
            about = gtk.AboutDialog()
            about.set_logo(gtk.gdk.pixbuf_new_from_file("imagenes/icaro.png"))
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
    def carga_tooltip(self):
        ruta=sys.path[0]
        ff=open(ruta + "/tooltips.xml","r")
        t=ff.readlines()
        for a in range(len(t)):
            cad_aux=t[a].strip("\n")
            if cad_aux=="<tool>":
                self.tooltip[t[a+1].strip("\n")]=t[a+2].strip("\n")

    def carga_dicc(self):
        """
        funcion para cargar los componentes bloques,
        los valores del gtk.notebook estan determinados
        por el nombre del archivo, leyendo el archivo saco el valor
        y tipo de los bloques que cargo en el dic
        """
        q=0
        ruta=sys.path[0] + "/componente/"

#        archivo=os.listdir(ruta)
        ff=open(ruta + "lista.dat","r")
        t=ff.read()
        temp=t.strip("\n")
        #~ print temp
        archivo=temp.split(",")
        #~ print archivo
        for i in range(len(archivo)):

            self.diccionario[q]=["notebook",str(archivo[i])]
            q=q+1
            f=open(ruta + archivo[i],"r")
            cadena=f.readlines()
            a=0
            for n in range(len(cadena)):
                cadena[n]=cadena[n].strip("\n")
                tupla=[]
                if cadena[a]=="<componente>":
                    tupla.append(cadena[a+1].strip("\n"))
                    tupla.append(int(cadena[a+2]))
                    tupla.append(int(cadena[a+3]))
                    color1=cadena[a+4].strip("()\n")
                    color2=color1.split(',')
                    tupla1=(int(color2[0]),int(color2[1]),int(color2[2]))
                    tupla.append(tupla1)
                    tupla.append(str(cadena[a+5].strip("\n")))
                    tupla.append(str(cadena[a+6]).strip("\n"))
                    self.diccionario[q]=tupla
                    q=q+1
                a=a+1
                print self.diccionario
    def carga_paleta(self):
        R=G=B=""
        archivo=open("colores.dat","r")
        tupla=[]
        cadena=archivo.readlines()
        for n in cadena:
            tupla.append(n.strip("()\n"))
        for a in range(len(self.lista)):
            if self.diccionario[self.lista[a]][0]<>"notebook":
                 R,G,B=tupla[a].split(",")
                 self.diccionario[self.lista[a]][3]=(int(R),int(G),int(B))

#
# ==============================================================================
# LOOP
# ==============================================================================
def loop():
    #aca va todo lo de pygame
    fon.update()
    fon.componentes.update()
    fon.datos.update()
    punt.update()
    pygame.display.update()
    return True

# Inicio todas las clases
ventana_principal=Ventana()

#capturo el xid del drawingarea
os.putenv('SDL_WINDOWID', str(ventana_principal.area.window.xid))
gtk.gdk.flush()
gobject.idle_add(loop)
ventana_principal.window1.show_all()
fon=fondo()
punt=puntero(fon,ventana_principal)
texto=texto.Text(fon)
menu=pygame.sprite.RenderClear()
ventana_principal.fondo=fon
ventana_principal.textorender=texto
# el unico objeto que cargo  con nombre identificable
inicial=componente_inicial(20,50,1,fon,ventana_principal,texto)
fondo.objetos.append(inicial)
fon.componentes.add(inicial)
gtk.main()



