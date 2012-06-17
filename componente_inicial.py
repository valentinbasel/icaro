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
import pygame

class componente_inicial(pygame.sprite.Sprite):
    """
    el componente inicial no tiene conector hembra porque SIEMPRE va a
    a tener el ide=0
    """
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,40,10)#conector macho
    ide=0
    color=(80,00,80)
    pegado_a=0 #es solo por compatibilidad con los demas componentes
    vivo=True
    posic_rel_x=0
    posic_rel_y=0
    def __init__(self,x,y,identidad,fondo,ventana,texto):
        pygame.sprite.Sprite.__init__(self)
        #self.imagen=pygame.image.load("imagenes/componentes/inicial.png")

        self.ide=identidad
        self.posicion=(x,y)
        self.fondo=fondo
        self.ventana=ventana
        self.texto=texto
        #~ self.fondo.lista_cm.append((0,0,0,0))
        #~ self.fondo.lista_ch.append((0,0,0,0))
        #~ self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ordenada.append(0)
        #~ self.fondo.lista_fina.append(0)
        self.color_texto=self.fondo.color_texto
    def dibujar(self):
        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,40),0)
        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]+40, 40,10),0)
        #~ pygame.draw.line(self.fondo.screen,(0,0,0),(self.posicion[0]-5,self.posicion[1]-3),(self.posicion[0]+59,self.posicion[1]-3),5)
        #~ pygame.draw.line(self.fondo.screen,(0,0,0),(self.posicion[0]-3,self.posicion[1]),(self.posicion[0]-3,self.posicion[1]+40),5)
        self.texto.render("inicio",self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))

    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+50
        #cargo la lista de los dos conectores hembra y macho
        #self.fondo.lista_cm[self.ide]=(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3])
        #~ if botones_mouse[1]==1 and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]) and self.pulsado==0:
            #~ self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])
            #~ self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            #~ self.pulsado=1
        #~ if botones_mouse[1]==1 and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]):
            #~ self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            #~ self.pulsado==1
        #~ if botones_mouse[1]==0:
            #~ self.pulsado=0
        if (botones_mouse[1]==1 and
            self.rectan.collidepoint(self.ventana.mousexy) and
            self.pulsado==0 and
            self.ventana.seleccionado==0):

            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1

        if (self.ventana.seleccionado== self.ide):

            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado=0
        self.dibujar()
        pygame.display.update

