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
#import os

#import rsvg
import forma_basica

class componente_inicial():

    """
    el componente inicial no tiene conector hembra porque SIEMPRE va a
    a tener el ide=0
    """
    pulsado = 0
    posicion = (0, 0)
    # rectangulo que representa toda el area del componente
    rectan = [0, 0, 90, 60]
    conector_m = [0, 0, 20, 10]  # conector macho
    ide = 0
    color = (80, 00, 80)
    pegado_a = 0  # es solo por compatibilidad con los demas componentes
    vivo = True
    posic_rel_x = 0
    posic_rel_y = 0

    def __init__(self, x, y, identidad, fondo, ventana):
        #~ pygame.sprite.Sprite.__init__(self)
        self.imagenintermedia = ""
        self.arg = 0
        self.texto = "inicio"
        self.ide = identidad
        self.posicion = (x, y)
        self.fondo = fondo
        self.ventana = ventana
        self.fondo.lista_ordenada.append(0)
        self.color_texto = self.fondo.color_texto
        self.cuerpo=""
        #parece ser que la unica alternativa para seguir usando posiciones relativas
        # es armar un solo string con toda la cadena de svg, asi no deberia tener que pasarle
        # la posicion x,y de cada punto inicial
        lin1 =self.fondo.crear_nodo_linea(forma_basica.lin1[0],forma_basica.lin1[1])
        lin2 =self.fondo.crear_nodo_linea(forma_basica.lin2[0],forma_basica.lin2[1])
        lin3 =self.fondo.crear_nodo_linea(forma_basica.lin3[0],forma_basica.lin3[1])
        lin4 =self.fondo.crear_nodo_linea(forma_basica.lin4[0],forma_basica.lin4[1])
        lin5 =self.fondo.crear_nodo_linea(forma_basica.lin5[0],forma_basica.lin5[1])
        lin6 =self.fondo.crear_nodo_linea(forma_basica.lin6[0],forma_basica.lin6[1])
        lin8 =self.fondo.crear_nodo_linea(forma_basica.lin8[0],forma_basica.lin8[1])
        self.cuerpo=(lin1 + 
                    forma_basica.nodo_esq_ar_der + 
                    lin2 + 
                    lin3 + 
                    forma_basica.nodo_esq_ab_der + 
                    lin4 + 
                    forma_basica.nodo_macho + 
                    lin5 + 
                    forma_basica.nodo_esq_ab_izq +
                    lin6 +
                    lin8 +
                    forma_basica.nodo_esq_ar_izq)
    def dibujar(self):      
        ### esto es lo nuevo
        #self.fondo.draw(self.rectan[0],self.rectan[1],self.rectan[2],self.rectan[3],(0,0,255),self.ventana.cr)
        #self.fondo.draw(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3],(255,0,0),self.ventana.cr)
        #self.fondo.draw(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3],(0,255,0),self.ventana.cr)
        #for con in self.lista_conector_h_datos:
        #    self.fondo.draw(con[0],con[1],con[2],con[3],(0,0,0),self.ventana.cr)
        self.fondo.render_svg(self.ventana.cr,self.cuerpo,self.color,self.posicion[0]+50,self.posicion[1])

        ####
        # el cuerpo del componente

        #~ self.fondo.draw(self.posicion[0], self.posicion[
                        #~ 1], 60, 40, self.color, self.ventana.cr)
        #~ self.fondo.draw(self.posicion[0] + 14, self.posicion[
                        #~ 1] + 40, 32, 10, self.color, self.ventana.cr)
        #~ self.fondo.draw(self.posicion[0] + 10, self.posicion[
                        #~ 1] + 40, 40, 3, self.color, self.ventana.cr)
        #~ self.fondo.draw(self.posicion[0] + 10, self.posicion[
                        #~ 1] + 47, 40, 3, self.color, self.ventana.cr)

        self.fondo.texto("inicio", self.posicion[0] + 25, self.posicion[
                         1] + 40, self.color_texto, self.ventana.cr)

    def update(self):
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # ~ # self.rectan es el rect que representa
        # ~ # la totalidad de la figura
        if self.posicion[0] < 0:
            self.posicion = (0, self.posicion[1])
        if self.posicion[1] < 0:
            self.posicion = (self.posicion[0], 0)
        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1] - 10
        a = self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1])
        #~ print a
        # ~ # self.conector_m es la ficha "macho"
        self.conector_m[0] = self.rectan[0] + 29
        self.conector_m[1] = self.rectan[1] + 65
        # ~ #cargo la lista de los dos conectores hembra y macho
        if (botones_mouse[1] == 1 and a == True and
            #~ self.rectan.collidepoint(self.ventana.mousexy) and
            self.pulsado == 0 and
            self.ventana.seleccionado == 0 and
            self.ventana.seleccion_menu == 2

            ):
#~
#            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado = self.ide
            self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
            self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
            self.pulsado = 1
#~
        if (self.ventana.seleccionado == self.ide):
#~
            self.posicion = (
                            posic_mouse[0] - self.posic_rel_x,
                            posic_mouse[1] - self.posic_rel_y
                            )
            self.pulsado == 1
        if botones_mouse[1] == 0:
            self.pulsado = 0
            self.ventana.seleccionado = 0
        self.dibujar()
        #~ pygame.display.update
