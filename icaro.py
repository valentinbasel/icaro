#!/usr/bin/python
# -*- coding: utf-8 -*-

import pygtk
import gtk
import os
import gobject
import pygame
import abrir
import nuevo
import guardar
import crear
#from texto import *
from componente_inicial import *
from componente import *
#from botones_menu import *
import re
import shutil
from subprocess import Popen,PIPE,STDOUT
import sys
WINX = 1200
WINY = 900
BLACK = (0, 0, 0)
FONDO=(00,22,55)
LINEA=(255,0,0)

class fondo(pygame.sprite.Sprite):
    objetos=[]
    objetos_datos=[]
    tipo_obj=[]
    lista_cm=[]
    lista_ch=[]
    lista_ordenada=[]
    lista_fina=[]
    lista_ch_dato=[]
    lista_ch_dato2=[]
    identificador=1
    identificador_dat=0
    identificador_dat2=0
    lista_valor_datos=[]
    lista_valor_datos2=[]
    lista_parser=[]
    lista_parser_final=[]
    color_texto=(255,255,255)
    poscion_botones=0
    componentes=pygame.sprite.RenderClear()
    datos=pygame.sprite.RenderClear()
    def __init__(self):
        pygame.sprite.Sprite.__init__(self)
        size = width, height = 1800, 1300        
        self.screen = pygame.display.set_mode(size)
        self.largo,self.alto=self.screen.get_size()
        self.lista_cm.append((0,0,0,0))
        self.lista_ch.append((0,0,0,0))
        self.lista_ch_dato.append((0,0,0,0))
        self.lista_valor_datos2.append("0")
        self.lista_ordenada.append(0)
        self.lista_fina.append(0)
        self.lista_parser.append("")
        self.lista_parser.append("")
        self.lista_parser_final.append("")
        self.lista_parser_final.append("")
    def update(self):
        self.screen.fill(FONDO)
        pygame.display.update

class Text:
    def __init__(self, fondo,FontName = None, FontSize = 20):
        pygame.font.init()
        self.font = pygame.font.Font(FontName, FontSize)
        self.size = FontSize
        self.fondo=fondo
    def render(self,  text, color, pos):
        #text = unicode(text, "UTF-8")
        x, y = pos
        for i in text.split("\r"):
            self.fondo.screen.blit(self.font.render(i, 1, color), (x, y))
            y += self.size 

class Ventana:
    area=0
    mousexy=(0,0)
    boton_mouse= [0,0,0,0]
    seleccionado=0
    tecla=0
    valor_tecla=""
    tecla_enter=0
    processor="18f4550"
    fondo=0
    textorender=0
    cadena_pinguino=[]
    seleccion_menu=1
    tipo_componente=1
    #estructura del diccionario:
    # [tipo_de_componente , numero_de_argumentos , color]
    
    #tipo de compoentes:
    #1- componente
    #2- componente de bloque3 (no mas)
    #3- datos
    #4- componente sig
    #5- componente bloque1
    #6- componente datos doble con img
    #7- componente datos doble 
    #componente
    # [tipo_de_componente , numero_de_argumentos , color]
    
    # componente de bloque si
    # [tipo_de_componente ,color,segunda_cadena]
    
    #datos
    # [tipo_de_componente,modificable,color,valor,valor_no_mod]
    
    # componente de bloque siguiente
    # [tipo_de_componente,color]
    diccionario={
                1:["activar ",1,2,(100,90,100)],
                2:["robot ",1,2,(0,190,10)],
                3:["servo ",1,2,(0,50,100)],
                4:["servos ",1,5,(0,190,100)],
                5:["pausa ",1,1,(0,90,100)],
                6:["numero ",7,1,(100,150,80),"0 ","0"],
                7:["adelante ",6,1,(100,50,80),"96 ","96"],
                8:["atras ",6,1,(100,50,80),"144 ","144"],
                9:["izquierda ",6,1,(100,50,80),"64 ","64"],
                10:["derecha ",6,1,(100,50,80),"32 ","32"],
                11:["si ",5,(200,190,0),"fin "],
                12:["igual ",6,0,(189,50,10),"= ","=="],
                13:["desigual",6,0,(19,49,0),"!= ","!="],
                14:["menor ",6,0,(10,190,0),"< ","<"],
                15:["mayor ",6,0,(9,100,190),"> ",">"],
                16:["sensordig1 ",6,0,(90,200,90),"dig 1 ","digitalread(21) "],
                17:["sensordig2 ",6,0,(190,0,90),"dig 2 ","digitalread(22) "],
                18:["sensordig3 ",6,0,(21,200,78),"dig 3 ","digitalread(23) " ],
                19:["sensordig4 ",6,0,(56,200,90),"dig 4 ","digitalread(24) "],
                20:["servo1 ",6,0,(100,190,90),"srv1 ","10"],
                21:["servo2 ",6,0,(170,90,90),"srv2 ","11"],
                22:["servo3 ",6,0,(180,10,90),"srv3 ","12"],
                23:["servo4 ",6,0,(120,190,90),"srv4 ","9"],
                24:["servo5 ",6,0,(102,190,190),"srv5 ","9"],
                25:["mientras ",5,(10,30,90),"fin "],
                26:["verdadero ",6,0,(160,50,210),"1 ","1 "],
                27:["falso ",6,0,(0,50,150),"0 ","0 "],
                28:["siguiente ",4,(120,130,90)],
                29:["datos ",7,1,(80,88,88),"0 ","0 "]
                }
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
        self.lista=self.diccionario.keys()
        self.lista.sort()
        #declaro la ventana principal
        self.window1 = gtk.Window()
        self.window1.connect('delete-event', gtk.main_quit)
        #self.window.set_resizable(True)
        #self.window.set_size_request(800, 600)
        ####################################self.window1.fullscreen()
        # declaro el drawing area donde va a estar pygame
        # y los eventos del mouse y teclado
        self.area = gtk.DrawingArea()
        #self.area=gtk.EventBox()
        self.area.set_app_paintable(True)
        self.area.set_size_request(1700, 1200)
        # declaro los botones del menu 'menu' y 'edicion'
        menu = gtk.Menu()
        # buf es donde se crgan todos los botones del menu
        buf=("nuevo","abrir","guardar","guardar como","salir")
        for i in buf:
            menu_items = gtk.MenuItem(i)
            menu.append(menu_items)
            menu_items.connect("activate", self.menuitem_response, i)
            menu_items.show()
        # los menus del toolbar se agrupan en estos dos "menus raices"
        root_menu = gtk.MenuItem("Archivo")
        root_menu.show()
        root_menu.set_submenu(menu)
        root_menu2 = gtk.MenuItem("editar")
        root_menu2.show()
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
        dibujar_button = toolbar.append_element(gtk.TOOLBAR_CHILD_RADIOBUTTON,None,
                        "lapiz",          
                        "herramienta para colocación de componentes", 
                        "Private",         
                        iconw,            
                        self.dibujo,1)
        iconw = gtk.Image() 
        iconw.set_from_stock(gtk.STOCK_SELECT_COLOR,30)
        mover_button = toolbar.append_element(gtk.TOOLBAR_CHILD_RADIOBUTTON,dibujar_button,
                        "mover",          
                        "herramienta para mover los componentes", 
                        "Private",         
                        iconw,            
                        self.dibujo,2)

        iconw = gtk.Image() 
        iconw.set_from_stock(gtk.STOCK_DELETE,30)
        mover_button = toolbar.append_element(gtk.TOOLBAR_CHILD_RADIOBUTTON,dibujar_button,
                        "borrar",          
                        "herramienta para borrar los componentes", 
                        "Private",         
                        iconw,            
                        self.dibujo,3)
                        
        #declaro el scroll_winWenoka Blackie Collinsdow donde esta inserto el drawing area
        scrolled_window = gtk.ScrolledWindow()
        scrolled_window.set_size_request(500, 600)
        scrolled_window.set_policy(gtk.POLICY_ALWAYS, gtk.POLICY_ALWAYS)
        scrolled_window.show()
        scrolled_window.add_with_viewport(self.area)
        
        #declaro el scroll window donde va la toolbar de los bloques
        scrolled_window2 = gtk.ScrolledWindow()
        scrolled_window2.set_border_width(1)
        #scrolled_window2.set_size_request(100,100)
        scrolled_window2.set_policy(gtk.POLICY_NEVER, gtk.POLICY_ALWAYS)
        #scrolled_window2.set_policy(gtk.POLICY_ALWAYS, gtk.POLICY_ALWAYS)
        scrolled_window2.show()
        #declaro la tabla  donde van los botones para el menu de bloques
        #table = gtk.Table(14, 2, True)
        table=gtk.VBox(False, len(self.lista))
        scrolled_window2.add_with_viewport(table)
        table.show()

        # box1 es el contenedor principal despues de la ventana
        box1 = gtk.VBox(False, 3)
        # box2 es el segundo en importancia
        box2 = gtk.HBox(False, 2)
        
        # parseo la lista de datos del diccionario para crear 
        # una matriz 2x2 y cargar los botones (declarados en el dicc)
        # en table
#        j=a=0
        # j= columnas
        # a= filas
#        for i in range(len(self.lista)):
#            if i==14:
#                a=13
#                j=1
#            buffer = self.diccionario[self.lista[i]][0]
#            button = gtk.RadioButton()
#            caja = self.imagen_boton( self.diccionario[self.lista[i]][0], self.diccionario[self.lista[i]][0])
#            button.add(caja)
#            button.connect("clicked", self.botones,self.lista[i])#buffer
#            button.show()
#            table.attach(button, j, j+1,(i-a), (i-a)+1)
        #declaro el primer radiobutton para que los demas se declaren despues de el
        buffer = self.diccionario[self.lista[0]][0]
        caja = self.imagen_boton( self.diccionario[self.lista[0]][0], self.diccionario[self.lista[0]][0])
        button = gtk.RadioButton()
        button.add(caja)
        button.connect("clicked", self.botones,self.lista[0])#buffer
        table.pack_start(button, False, True, 0)
        button.show()
        #para probar de ordenar los botones con frames
#        frame = gtk.Frame(label="prueba")
#        table.pack_start(frame, False, True, 0)
#        frame.add(button)
        for i in range(1,len(self.lista)):
            buffer = self.diccionario[self.lista[i]][0]
            caja = self.imagen_boton( self.diccionario[self.lista[i]][0], self.diccionario[self.lista[i]][0])
            button = gtk.RadioButton(button)
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

        
        #capturo los eventos del drawing area
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
          #self.area.set_can_focus(True)
        self.area.grab_focus() 
        
        
    def dibujo(self,event,b):
        self.seleccion_menu=b
# esto es para gregar imagenes al boton de la toolbar
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
    # generador de mensajes
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
            gtk.BUTTONS_CLOSE, mensa)
        md.run()
        md.destroy()
    # esta funcion captura el evento de presionar un boton de la toolbar
    # table y lo manda tipo_componentes
    def botones(self,event,b):
        self.tipo_componente=b

    def crear_componente(self,b):
        # siempre hay que tratar de que el foco quede en el drawing area
        self.area.grab_focus()
        if self.diccionario[b][1]==1:
            c1=componente   (
                            self.mousexy[0],
                            self.mousexy[1],
                            self.fondo.identificador+1,
                            self.diccionario[b][2],
                            self.diccionario[b][3],
                            self.diccionario[b][0],
                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.componentes.add(c1)
            self.fondo.identificador+=int(self.diccionario[b][2])
            self.fondo.objetos.append(c1)

        if self.diccionario[b][1]==2:
            self.fondo.identificador+=1
            c1=componente_bloque_uno_tres_arg(
                                            self.mousexy[0],
                                            self.mousexy[1],
                                            self.fondo.identificador,
                                            self.diccionario[b][2],
                                            self.diccionario[b][0],
                                            self.fondo,
                                            self,
                                            self.textorender
                                            )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
            self.fondo.identificador +=2
            self.fondo.identificador +=1
            c1=componente_bloque_dos    (
                                        self.mousexy[0],
                                        self.mousexy[1]+200,
                                        self.fondo.identificador,
                                        self.diccionario[b][2],
                                        self.diccionario[b][3],
                                        self.fondo,
                                        self,
                                        self.textorender
                                        )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
        if self.diccionario[b][1]==3:
            c1=comp_dat   (
                            self.mousexy[0],
                            self.mousexy[1],
                            self.fondo.identificador_dat,
                            self.diccionario[b][2],
                            self.diccionario[b][4],
                            self.diccionario[b][3],
                            self.diccionario[b][5],
                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.identificador_dat+=1
            self.fondo.datos.add(c1)
            self.fondo.objetos_datos.append(c1)
            
        if self.diccionario[b][1]==4:

            self.fondo.identificador+=1
            c1=componente_cero_arg  (
                                    self.mousexy[0],
                                    self.mousexy[1],
                                    self.fondo.identificador,
                                    self.diccionario[b][2],
                                    self.diccionario[b][0],
                                    self.fondo,
                                    self,
                                    self.textorender
                                    )

            self.fondo.componentes.add(c1)
            self.fondo.identificador+=1
            self.fondo.objetos.append(c1)
            c1=componente_cero_arg_dos (
                                        self.mousexy[0],
                                        self.mousexy[1],
                                        self.fondo.identificador,
                                        self.diccionario[b][2],
                                        self.diccionario[b][0],
                                        self.fondo,
                                        self,
                                        self.textorender
                                        )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
        if self.diccionario[b][1]==5:
            self.fondo.identificador+=1
            c1=componente_bloque_uno(
                                            self.mousexy[0],
                                            self.mousexy[1],
                                            self.fondo.identificador,
                                            self.diccionario[b][2],
                                            self.diccionario[b][0],
                                            self.fondo,
                                            self,
                                            self.textorender
                                            )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
            self.fondo.identificador +=1
            c1=componente_bloque_dos    (
                                        self.mousexy[0],
                                        self.mousexy[1]+80,
                                        self.fondo.identificador,
                                        self.diccionario[b][2],
                                        self.diccionario[b][3],
                                        self.fondo,
                                        self,
                                        self.textorender
                                        )
            self.fondo.componentes.add(c1)
            self.fondo.objetos.append(c1)
        if self.diccionario[b][1]==6:
            c1=comp_dat_arg_img   (
                            self.mousexy[0],
                            self.mousexy[1],
                            self.fondo.identificador_dat,
                            self.diccionario[b][2],
                            self.diccionario[b][4],
                            self.diccionario[b][3],
                            self.diccionario[b][5],
                            self.diccionario[b][0].strip(" ")+".png",

                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.identificador_dat+=1
            self.fondo.datos.add(c1)
            self.fondo.objetos_datos.append(c1)
        if self.diccionario[b][1]==7:
            c1=comp_dat_arg   (
                            self.mousexy[0],
                            self.mousexy[1],
                            self.fondo.identificador_dat,
                            self.diccionario[b][2],
                            self.diccionario[b][4],
                            self.diccionario[b][3],
                            self.diccionario[b][5],
                            self.fondo,
                            self,
                            self.textorender
                            )
            self.fondo.identificador_dat+=1

            self.fondo.datos.add(c1)
            self.fondo.objetos_datos.append(c1)
        self.fondo.tipo_obj.append(self.diccionario[b][1])
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
    
    # cargo template.pde para tener la planilla estandar dentro de
    # cadena_pinguino
    def carga(self):
        self.cadena_pinguino[:]=[]
        archivo=open("source/template.pde","r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)
            

    def compilar(self,b):
        self.carga()
        crear.crear_archivo(fondo,self)
        chemin = sys.path[0]#os.path.dirname(filename)
        fichier = open(sys.path[0] + "/tmp/stdout", 'w+')
        sortie = str(sys.path[0] + 
                            "/tools/bin/sdcc "+
                            " -mpic16"+
                            " --denable-peeps"+
                            " --obanksel=9"+
                            " --opt-code-size "+
                            " --optimize-cmp"+
                            " --optimize-df"+
                            " -p" + self.processor +
                            " -I" + sys.path[0] + 
                            "/include"+ " -I" + chemin + 
                            "/"+
                            " -c"+
                            " -c"+
                            " -o" + 
                            sys.path[0] + 
                            "/source/main.o "+
                            sys.path[0] + 
                            "/source/main.c")
        i=os.system(sortie)
        print i
        if i==0:
            self.mensajes(3,"la compilacion fue exitosa")
        else:
            self.mensajes(0,"hubo un error de compilacion")
    def upload(self,b):

        self.mensajes(1,"aprete el boton RESET de la placa pinguino antes de continuar")
        sortie2=str(sys.path[0]+"/tools/bin/sdcc"+
                            " -o"+sys.path[0].replace(" ","\\ ")+"/source/main.hex"+
                            " --denable-peeps"+
                            " --obanksel=9"+
                            " --opt-code-size"+
                            " --optimize-cmp"+
                            " --optimize-df"+
                            " --no-crt"+
                            " -Wl-s"+sys.path[0].replace(" ","\\ ")+"/lkr/18f2550.lkr,-m "+
                            " -mpic16"+
                            " -p"+self.processor+
                            " -l"+sys.path[0].replace(" ","\\ ")+"/lib/libpuf.lib "+
                            " -llibio"+self.processor+".lib"+
                            " -llibc18f.lib "+
                            " -llibm18f.lib "+
                            sys.path[0].replace(" ","\\ ")+"/obj/application_iface.o "+
                            sys.path[0].replace(" ","\\ ")+"/obj/usb_descriptors.o "+
                            sys.path[0].replace(" ","\\ ")+"/obj/crt0ipinguino.o "+
                            sys.path[0].replace(" ","\\ ")+"/source/main.o ")
        i=os.system(sortie2)
        print i

        sortie3=str(sys.path[0]+"/tools/bin/docker "+
                           "-v "+
                           "04d8 "+
                           "write " +
                           sys.path[0] +
                           "/source/main.hex")
        i=os.system(sortie3)
        print i
        if i==0:
            self.mensajes(3,"la carga fue exitosa")
        else:
            self.mensajes(0,"hubo un error en la carga del PIC")
        return i

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
    def menuitem_response(self, widget, string):
#        print "%s" % string
        if string=="abrir":
            dialog = gtk.FileChooserDialog("Open..",
                                           None,
                                           gtk.FILE_CHOOSER_ACTION_OPEN,
                                           (gtk.STOCK_CANCEL, gtk.RESPONSE_CANCEL,
                                            gtk.STOCK_OPEN, gtk.RESPONSE_OK))
            dialog.set_default_response(gtk.RESPONSE_OK)

#            filter = gtk.FileFilter()
#            filter.set_name("All files")
#            filter.add_pattern("*")
#            dialog.add_filter(filter)

#            filter = gtk.FileFilter()
#            filter.set_name("Images")
#            filter.add_mime_type("image/png")
#            filter.add_mime_type("image/jpeg")
#            filter.add_mime_type("image/gif")
#            filter.add_pattern("*.png")
#            filter.add_pattern("*.jpg")
#            filter.add_pattern("*.gif")
#            filter.add_pattern("*.tif")
#            filter.add_pattern("*.xpm")
#            dialog.add_filter(filter)

            response = dialog.run()
            if response == gtk.RESPONSE_OK:
                nuevo.nuevo(fon)
                inicial=componente_inicial(100,250,1,fon,ventana_principal,texto)
                fon.componentes.add(inicial)
                cadena= dialog.get_filename()
                abrir.abrir(self.diccionario,cadena,self.fondo)
            elif response == gtk.RESPONSE_CANCEL:
                print 'Closed, no files selected'
            dialog.destroy()

        if string=="salir":
            exit()
        if string=="nuevo":
            nuevo.nuevo(fon)
            inicial=componente_inicial(100,250,1,fon,ventana_principal,texto)
            fon.componentes.add(inicial)
        if string=="guardar":
            dialog = gtk.FileChooserDialog("save..",
                                           None,
                                           gtk.FILE_CHOOSER_ACTION_SAVE,
                                           (gtk.STOCK_CANCEL, gtk.RESPONSE_CANCEL,
                                            gtk.STOCK_SAVE, gtk.RESPONSE_OK))
            dialog.set_default_response(gtk.RESPONSE_OK)
            response = dialog.run()
            if response == gtk.RESPONSE_OK:
                guardar.guardar(self.fondo.objetos,dialog.get_filename(),self.fondo)
            elif response == gtk.RESPONSE_CANCEL:
                print 'Closed, no files selected'
            dialog.destroy()

# este es el loop principal donde cargo todo el tiempo el evento 
# pygame
def loop():
    
    fon.update()
    fon.componentes.update()
    fon.datos.update()
    menu.update()
    pygame.display.update()
    return True

ventana_principal=Ventana()
os.putenv('SDL_WINDOWID', str(ventana_principal.area.window.xid))
gtk.gdk.flush()
gobject.idle_add(loop)
ventana_principal.window1.show_all()

fon=fondo()
texto=Text(fon)
menu=pygame.sprite.RenderClear()
ventana_principal.fondo=fon
ventana_principal.textorender=texto
# el unico objeto que cargo  con nombre identificable
inicial=componente_inicial(20,50,1,fon,ventana_principal,texto)
fon.componentes.add(inicial)
gtk.main()



