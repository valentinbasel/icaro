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

import sys
import gtk
import forma_basica
from componente import FormaSvg
#from os import system

#import time


class comp_dat_arg(FormaSvg):
    posic_rel_x = 0
    posic_rel_y = 0
    pulsado = 0
    posicion = (0, 0)
    cadena_final = ""
    cadena_intermedia = ""
    # rectangulo que representa toda el area del componente
    ide = 0
    color = (125, 100, 83)
    modificable = 0
    valor_cadena_no_mod = "0"

    def __init__(
        self,
        x, y,
        identidad,
        mod,
        texto,
        color,
        val_no_mod,
        img,
        tipo,
        fondo,
        ventana,
    ):
        self.rectan = [0, 0, 80, 50]
        self.ide = identidad
        self.posicion = (x, y)
        self.texto = texto
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.color_texto = self.fondo.color_texto
        self.conector_m = [0, 0, 20, 20]  # conector macho
        self.conector_h = [0, 0, 20, 20]  # conector hembra
        self.pegado2 = 0
        self.pegado_a2 = 0
        self.pegado = 0
        self.pegado_a = 0
        self.pegado_b = 0
        self.conectado = 0
        self.tecla = 0
        self.tecla_presionada = 0
        self.modificable = mod
        self.valor_cadena_no_mod = val_no_mod
        self.imagen = sys.path[0] + "/imagenes/componentes/" + img
        self.tipo = tipo
        if self.tipo == 6:
            self.imagenintermedia = img
            self.imagen = sys.path[0] + "/imagenes/componentes/" + img
            #~ self.imagen=pygame.image.load(self.img)
            #~ self.img_rect=self.imagen.get_rect()

        #self.correccion= self.fondo.crear_nodo_linea(0,-10)
        self.tam_text = (len(self.texto) * 6)

    def dibujar(self):
        # tomo el valor del texto para agrandar el tamaño del
        # cuerpo del componente.
        # si es una imagen le pongo un valor fijo


        TamaComp = 0
        if self.tipo == 7:
            TamaComp = len(self.texto)*7
        else:
            TamaComp = 3
        # cubos que representan el conector hembra
#        cuerpo = [
            #(30 + (7 * TamaComp), -10, 10, 10),
            #(30 + (7 * TamaComp) + 3, 0, 4, 4),
            #(30 + (7 * TamaComp), 20, 10, 10),
            #(30 + (7 * TamaComp), 20, 10, 10),
            #(30 + (7 * TamaComp), 20, 10, 10),
            #(30 + (7 * TamaComp) + 3, 20 - 4, 4, 4),
            #(0, 4, 10, 20 - 8),
            #(0, 0, 3, 20),
            #(7, 0, 3, 20),
            #(10, -10, 7 * TamaComp + 20, 40),
        #]
        #for x, y, w, h in cuerpo:
            #self.fondo.draw(self.posicion[0] + x, self.posicion[
                            #1] + y, w, h, self.color, self.ventana.cr)
        #self.rectan[2] = 7 * TamaComp + 20
        corr_linea_texto = self.fondo.crear_nodo_linea(TamaComp,0)
        corr_linea_texto_menos = self.fondo.crear_nodo_linea(TamaComp*-1,0)
        self.cuerpo= self.crear_comp_dat() 
#        self.cuerpo=(self.lin1 +corr_linea_texto+ 
                    #forma_basica.nodo_esq_ar_der +
                    #self.lin3+
                    #forma_basica.nodo_parametros+ 
                    #self.lin33+
                    #forma_basica.nodo_esq_ab_der + 
                    #self.lin2 + corr_linea_texto_menos+
                    #forma_basica.nodo_esq_ab_izq +
                    #self.lin4+
                    #forma_basica.nodo_parametros+ 
                    #self.lin5+
                    #forma_basica.nodo_esq_ar_izq)
        self.fondo.render_svg(self.ventana.cr,self.cuerpo,self.color,self.posicion[0]+40,self.posicion[1])
        self.conector_h[0] = self.rectan[0] + TamaComp+60
        self.conector_h[1] = self.rectan[1]+5

        #self.fondo.draw(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3],(0,0,0),self.ventana.cr)
        #self.fondo.draw(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3],(0,0,0),self.ventana.cr)

        #
        #self.fondo.draw(self.rectan[0],self.rectan[1],self.rectan[2],self.rectan[3],(0,0,255),self.ventana.cr)
        if self.tipo == 7:
            self.fondo.texto(self.texto, self.posicion[
                             0] + 40, self.posicion[1] + 22, self.color_texto, self.ventana.cr)
            self.rectan[2]=TamaComp +80
        if self.tipo == 6:
            self.modificable = 0
            self.fondo.imagen(self.imagen, self.posicion[
                              0] + 30 , self.posicion[1]+4 , self.ventana.cr)
        #
       #

    def update(self):
        ban_a = 0
        cadena_auxiliar = ""
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect
        # que representa la totalidad de la figura

        # self.conector_m es la ficha "macho"
        self.conector_m[0] = self.rectan[0]
        self.conector_m[1] = self.rectan[1]+5

        if (
            botones_mouse[1] and
            self.ventana.seleccion_menu == 4
            and self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True and
            self.modificable == 1 and
            self.tecla == 0
        ):
            self.cuadro_texto(int(posic_mouse[0]), int(posic_mouse[1]))
            self.tecla = 1
        if botones_mouse[1] == 0:
            self.tecla = 0
            self.pulsado = 0
            self.ventana.seleccionado_datos = 0

        if self.modificable == 1:
            self.cadena_final = self.texto + self.cadena_intermedia
        else:
            self.cadena_final = (
                self.valor_cadena_no_mod
                +
                self.cadena_intermedia
            )
        self.cadena_final = self.cadena_final.replace("\r", '')

        if self.conectado == 0 and self.ventana.seleccionado == 0:
            if self.pegado == 0:
                for a in range(1, len(self.fondo.objetos)):
                    valor1 = self.fondo.objetos[a].lista_conector_h_datos
                    for b in range(len(valor1)):
                        valor2 = self.fondo.objetos[a]
                        valor3 = valor2.lista_conector_h_datos[b]
                        if (self.fondo.colliderect(self.conector_m, valor3) == True):

                            self.pegado = 1
                            self.conectado = 1
                            self.pegado_a = a
                            self.pegado_b = b
        try:
            if self.pegado == 1:
                valor1 = self.fondo.objetos[self.pegado_a]
                valor2 = valor1.lista_conector_h_datos[self.pegado_b]
                x, y, aa, bb = valor2
                xx = x
                yy = y
                self.posicion = (xx-5, yy-8)
                valor1.lista_valores[self.pegado_b] = self.cadena_final
        except:
            self.pegado = 0

        if self.conectado == 0 and self.ventana.seleccionado == 0:
            if self.pegado2 == 0:
                for z in range(0, len(self.fondo.objetos_datos)):
                    val = self.fondo.objetos_datos[z].conector_h
                    if (self.fondo.colliderect(self.conector_m, val) == True):
                        self.pegado_a2 = z
                        self.pegado2 = 1
                        self.conectado = 1
        if self.pegado2 == 1:
            val1 = self.fondo.objetos_datos[self.pegado_a2].conector_h
            x, y, aa, bb = val1
            xx = x
            yy = y
            self.posicion = (xx-10, yy-4)
            val2 = self.fondo.objetos_datos[self.pegado_a2]
            val2.cadena_intermedia = self.cadena_final
        else:
            self.cadena_intermedia = ""
        if (
            botones_mouse[1] == 1 and
            self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True and
            self.ventana.seleccionado == 0 and
            self.pulsado == 0 and
            self.ventana.seleccionado_datos == 0 and
            self.ventana.seleccion_menu == 2
        ):
            posic_mouse = self.ventana.mousexy
            self.ventana.seleccionado_datos = self.ide
            self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
            self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
            self.pulsado = 1
            #print self.rectan
        if self.ventana.seleccionado_datos == self.ide:
            self.posicion = (
                posic_mouse[0] - self.posic_rel_x,
                posic_mouse[1] - self.posic_rel_y
            )
            self.conectado = 0
            self.pegado = 0
            self.pegado_a = 0
            self.pegado_b = 0
            self.pegado2 = 0
            self.pegado_a2 = 0

        if (botones_mouse[1] == 1
                and self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True
                and self.ventana.seleccion_menu == 3):
            for i in range(1, len(self.fondo.objetos_datos)):
                self.fondo.objetos_datos[i].conectado = 0
                self.fondo.objetos_datos[i].pegado = 0
                self.fondo.objetos_datos[i].pegado_a = 0
                self.fondo.objetos_datos[i].pegado_b = 0
                self.fondo.objetos_datos[i].pegado2 = 0
                self.fondo.objetos_datos[i].pegado_a2 = 0
            a = self.fondo.objetos_datos.index(self)
            ident = self.fondo.objetos_datos[a].ide
            #print a
            #print len(self.fondo.objetos_datos)
            #del self.fondo.tipo_obj_datos[a]
            # self.kill()
            self.fondo.objetos_datos.remove(self)

        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1]
        self.dibujar()
        self.cadena_intermedia = ""

    def cuadro_texto(self, x, y):
        window = gtk.Window(gtk.WINDOW_TOPLEVEL)
        window.set_resizable(False)
        window.set_modal(True)
        window.set_border_width(0)
        window.move(x, y)
        window.set_title('ingrese un valor')
        window.set_default_size(100, 200)
        entry = gtk.Entry()
        label = gtk.Label("valor")
        BotonAceptar = gtk.Button("aceptar")
        BotonAceptar.connect("clicked", self.boton, window, entry)
        window.add_events(gtk.gdk.KEY_PRESS_MASK)
        window.connect("key_press_event", self.keypress_cb, window, entry)
        boxv = gtk.VBox(False, 2)
        boxh = gtk.HBox(False, 2)
        boxh2 = gtk.HBox(False, 2)

        boxh.pack_start(label, True, True, 1)
        boxh.pack_start(entry, True, True, 1)
        boxh2.pack_start(BotonAceptar, True, True, 1)

        boxv.pack_start(boxh, True, True, 1)
        boxv.pack_start(boxh2, True, True, 2)

        window.add(boxv)
        window.show_all()

    def keypress_cb(self, a, event, window, entry):
        if event.keyval == 65293:
            self.texto = entry.get_text().decode('utf8')
            self.pulsado = 0
            print "este es el boton de la ventana", self.texto
            self.ventana.boton_mouse = [0, 0, 0, 0]
            window.hide()

    def boton(self, b, window, entry):
        self.texto = entry.get_text().decode('utf8')
        self.pulsado = 0
        print "este es el boton de la ventana", self.texto
        self.ventana.boton_mouse = [0, 0, 0, 0]

        window.hide()
#        d = gtk.MessageDialog(None,
#                              gtk.DIALOG_MODAL | gtk.DIALOG_DESTROY_WITH_PARENT,
#                              gtk.MESSAGE_QUESTION,
#                              gtk.BUTTONS_OK_CANCEL,
#                              "ingrese un valor")
#        entry = gtk.Entry()
#        entry.show()
#        d.vbox.pack_end(entry)
#        entry.connect('activate', lambda _: d.response(gtk.RESPONSE_OK))
#        d.set_default_response(gtk.RESPONSE_OK)
#        r = d.run()
#        text = entry.get_text().decode('utf8')
#        d.destroy()
#        if r == gtk.RESPONSE_OK:
#            return text
#        else:
#            return None
#
