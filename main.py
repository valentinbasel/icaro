#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  main.py
#  
#  Copyright 2012 Valentin Basel <valentinbasel@gmail.com>
#  
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
#  
import pygame
import os, sys
pygame.init()
class Text:
    def __init__(self, fondo,FontName = None, FontSize = 40):
        pygame.font.init()
        self.font = pygame.font.Font(FontName, FontSize)
        self.size = FontSize
        self.fondo=fondo
    def render(self,  text, color, pos):
        #text = unicode(text, "UTF-8")
        x, y = pos
        for i in text.split("\r"):
            self.fondo.pantalla.blit(self.font.render(i, 1, color), (x, y))
            
            y += self.size
class VENTANA(pygame.sprite.Sprite):
    """ Class doc """
    
    def __init__ (self):
        """ Class initialiser """
        pygame.sprite.Sprite.__init__(self)
        self.pantalla=pygame.display.set_mode((800,600))
        pygame.display.set_caption("proyecto icaro")
        icono=pygame.image.load(sys.path[0] +"/imagenes/icaro.png")
        pygame.display.set_icon(icono)
        self.cadena=""
    def update(self):
        pygame.display.update()
        pygame.event.get()
        self.pantalla.fill((123,180,255))
        self.mouse_x, self.mouse_y = pygame.mouse.get_pos()
        self.mouse_buton=pygame.mouse.get_pressed()   


            
class BOTON(pygame.sprite.Sprite):
    """ Class doc """
    redct=0
    def __init__ (self,pantalla,x,y,img,ej,texto):
        """ Class initialiser """
        pygame.sprite.Sprite.__init__(self)
        self.imagen=pygame.image.load(img)
        self.pantalla=pantalla
        self.posicion=x,y
        self.ejecuta=ej
        self.rect = self.imagen.get_rect()
        self.rect[0]=x
        self.rect[1]=y
        self.texto=texto
    def update(self):
        y=100
        self.pantalla.blit(self.imagen,self.posicion)
        if self.rect.collidepoint  (
                                    ventana.mouse_x, 
                                    ventana.mouse_y
                                    ):
            for txt in self.texto:
                texto.render(txt,(255,255,255),(350,y))
                y+=40
        if (
            self.rect.collidepoint  (
                                    ventana.mouse_x, 
                                    ventana.mouse_y
                                    ) and 
            ventana.mouse_buton[0]):
            os.system(self.ejecuta)


class SALIR(pygame.sprite.Sprite):
    """ Class doc """
    
    def __init__ (self,pantalla,x,y,img,texto):
        """ Class initialiser """
        pygame.sprite.Sprite.__init__(self)
        self.imagen=pygame.image.load(img)
        self.pantalla=pantalla
        self.posicion=x,y
        self.rect = self.imagen.get_rect()
        self.rect[0]=x
        self.rect[1]=y
        self.texto=texto
    def update(self):
        y=100
        self.pantalla.blit(self.imagen,self.posicion)
        if self.rect.collidepoint  (
                                    ventana.mouse_x, 
                                    ventana.mouse_y
                                    ):
            for txt in self.texto:
                texto.render(txt,(255,255,255),(350,y))
                y+=40
        if (
            self.rect.collidepoint  (
                                    ventana.mouse_x, 
                                    ventana.mouse_y
                                    ) and 
            ventana.mouse_buton[0]):
            exit()
        pass
config=[]
pyt= ["Lanza la teminal interactiva ","con el modulo apicaro. Necesita ","tener apicaro instalado"]
tur= ["Lanza TurtleArt con el modulo ","Tortucaro. ","para manejo conectado ","a la netbook"]
icr= ["Lanza Icaro-bloques para ","manejo de robots autonomos"]
sal=["Sale del sistema"]
conf=open(sys.path[0] +"/config.dat","r")
dat=conf.readlines()
for txt in dat:
    config.append(txt)
conf.close()
ventana=VENTANA()
BotonTurtle=BOTON(ventana.pantalla,100,10,sys.path[0] +"/imagenes/main/tortucaro.png",config[1],tur)
BotonIcaro=BOTON(ventana.pantalla,100,150,sys.path[0] +"/imagenes/main/icaro.png","python "+sys.path[0] +"/icaro.py",icr)
BotonPython=BOTON(ventana.pantalla,100,290,sys.path[0] +"/imagenes/main/python.png","idle -c 'import apicaro; icaro=apicaro.puerto(); icaro.iniciar()'",pyt)

texto=Text(ventana)
salir=SALIR(ventana.pantalla,100,430,sys.path[0] +"/imagenes/main/salir.png",sal)
def main():

    while True:
        for evento in pygame.event.get():
            if evento.type==pygame.QUIT:
                pygame.quit()
        ventana.update()
        BotonIcaro.update()
        BotonTurtle.update()
        BotonPython.update()
        salir.update()

    return 0

if __name__ == '__main__':
    main()

