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
import sys, pygame
from os import system
from componente_datos import *



class componente(pygame.sprite.Sprite):
    pulsado=0
    conector_h_dato=pygame.Rect(0,0,30,20)#conector hembra dato
    ide=0
    color=(110,20,90)
    texto=""

    def __init__(self,x,y,identidad,argumentos,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.imagenintermedia=texto.strip(" ") #esto es para poder mandar los datos a guardar
        self.imagen=pygame.image.load("imagenes/componentes/"+texto.strip(" ")+".png")
        self.arg=argumentos
        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.texto=texto
        self.color_texto=self.fondo.color_texto
        self.rectan=pygame.Rect(self.posicion[0],self.posicion[1],60,60)#rectangulo que representa toda el area del componente
        self.conector_m=pygame.Rect(0,0,40,10)#conector macho
        self.conector_h=pygame.Rect(0,0,40,10)#conector hembra
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos=[]
        self.lista_valores=[]
        self.pegado=0
        self.pegado_a=0
        self.vivo=True
        for a in range(self.arg):
            # creo dos lista con los valores del rect de cada conector que creo
            # y sus valores.
            # estas listas son las que parsean los componentes_datos
            self.lista_conector_h_datos.append((0,0,0,0))
            self.lista_valores.append("")
        self.dibujar()
    def dibujar(self):
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]
        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+50,self.posicion[1]-10, 10,10),0)
        factor=0
        #~ pygame.draw.line(self.fondo.screen,(0,0,0),(self.posicion[0]+60,self.posicion[1]-2),(self.posicion[0]+69,self.posicion[1]-2),5)
        for a in range(self.arg):
            # el cuerpo del componente
            pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]+factor, 60,40),0)
            # conector hembra datos

            pygame.draw.rect(self.fondo.screen,self.color,((self.posicion[0]+60),(self.posicion[1]+factor), 10,10),0)
            pygame.draw.rect(self.fondo.screen,self.color,((self.posicion[0]+60),(self.posicion[1]+30+factor), 10,10),0)
            self.conector_h_dato[0]=self.rectan[0]+60
            self.conector_h_dato[1]=self.rectan[1]+20+factor
            self.lista_conector_h_datos[a]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
            factor +=40
        self.rectan[3]=factor
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+factor+10
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,(self.posicion[1]+factor), 40,10),0)
        self.fondo.screen.blit(self.imagen,(self.posicion[0]+(self.rectan[2]/2)-15,self.posicion[1]+(self.rectan[3]/2)-5))
        self.textorender.render(self.texto,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+(self.rectan[3]/2)-20)))

    def update(self):
        ban_a=0
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        if self.vivo==True:
            if self.pegado==0:
                self.fondo.lista_ordenada[self.ide]=0
                for a in range(len(self.fondo.objetos)):
                    if self.conector_h.colliderect(self.fondo.objetos[a].conector_m) and self.fondo.objetos[a].vivo==True:
                        self.pegado=1
                        self.pegado_a=a
                        break
                    else:
                        self.pegado=0
                        self.pegado_a=0
            if self.pegado==1:
                x,y,aa,bb=self.fondo.objetos[self.pegado_a].conector_m
                xx=x-10
                yy=y+10
                self.posicion=(xx,yy)
                iden=self.fondo.objetos[self.pegado_a].ide
                self.fondo.lista_ordenada[self.ide]=iden
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
                self.posicion= (
                                posic_mouse[0]-self.posic_rel_x,
                                posic_mouse[1]-self.posic_rel_y
                                )
                self.pulsado==1
                self.pegado=0
                self.pegado_a=0
            if botones_mouse[1]==0:
                self.pulsado=0
                self.ventana.seleccionado=0
            if (botones_mouse[1]==1
                    and self.rectan.collidepoint(self.ventana.mousexy)
                    and self.ventana.seleccion_menu==3):
                for i in range(1,len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado=0
                    self.fondo.objetos_datos[i].pegado=0
                    self.fondo.objetos_datos[i].pegado_a=0
                    self.fondo.objetos_datos[i].pegado_b=0
                    self.fondo.objetos_datos[i].pegado2=0
                    self.fondo.objetos_datos[i].pegado_a2=0
                a=self.fondo.objetos.index(self)
                ident=self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a=0
                    self.fondo.objetos[i].pegado=0
                self.fondo.objetos[a].vivo=False
                del self.fondo.tipo_obj[a]
                self.kill()
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide]=0
            self.dibujar()
            for a in range(self.arg):

                self.lista_valores[a]=""


class componente_bloque_dos(pygame.sprite.Sprite):
    pulsado=0
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    ide=0
    color=(110,20,90)
    texto=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.imagenintermedia=texto.strip(" ") #esto es para poder mandar los datos a guardar
        #self.imagen=pygame.image.load("imagenes/componentes/"+texto.strip(" ")+".png")
        self.arg=0
        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.texto=texto
        self.color_texto=self.fondo.color_texto
        self.rectan=pygame.Rect(self.posicion[0],self.posicion[1],60,60)#rectangulo que representa toda el area del componente
        self.conector_m=pygame.Rect(0,0,40,10)#conector macho
        self.conector_h=pygame.Rect(0,0,40,10)#conector hembra
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos=[]
        self.lista_valores=[]
        self.pegado=0
        self.pegado_a=0
        self.lista_conector_h_datos.append((0,0,0,0))
        self.lista_valores.append("")
        self.vivo=True
        self.dibujar()
    def dibujar(self):
        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+110,self.posicion[1]-10, 10,10),0)
        # el cuerpo del componente

        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 120,40),0)
        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]+40, 40,10),0)

#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        self.textorender.render(self.texto,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+50
        self.conector_h[0]=self.rectan[0]+70
        self.conector_h[1]=self.rectan[1]
    def update(self):
        ban_a=0
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        if self.vivo==True:
            if self.pegado==0:
                self.fondo.lista_ordenada[self.ide]=0
                for a in range(len(self.fondo.objetos)):
                    if self.conector_h.colliderect(self.fondo.objetos[a].conector_m):
                        self.pegado=1
                        self.pegado_a=a
                        break
                    else:
                        self.pegado=0
                        self.pegado_a=0
            if self.pegado==1:
                x,y,aa,bb=self.fondo.objetos[self.pegado_a].conector_m
                xx=x-70
                yy=y+10
                self.posicion=(xx,yy)
                self.fondo.lista_ordenada[self.ide]=self.fondo.objetos[self.pegado_a].ide
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
                self.pegado=0
                self.pegado_a=0
            if botones_mouse[1]==0:
                self.pulsado=0
                self.ventana.seleccionado=0

            if (botones_mouse[1]==1
                    and self.rectan.collidepoint(self.ventana.mousexy)
                    and self.ventana.seleccion_menu==3):
                for i in range(1,len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado=0
                    self.fondo.objetos_datos[i].pegado=0
                    self.fondo.objetos_datos[i].pegado_a=0
                    self.fondo.objetos_datos[i].pegado_b=0
                    self.fondo.objetos_datos[i].pegado2=0
                    self.fondo.objetos_datos[i].pegado_a2=0
                a=self.fondo.objetos.index(self)
                ident=self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a=0
                    self.fondo.objetos[i].pegado=0
                self.fondo.objetos[a].vivo=False
                del self.fondo.tipo_obj[a]
                self.kill()
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide]=0
        self.dibujar()


class componente_bloque_uno(pygame.sprite.Sprite):
    pulsado=0
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_h_dato=pygame.Rect(0,0,30,20)#conector hembra dato
    ide=0
    color=(110,20,90)
    texto=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.imagenintermedia=texto.strip(" ") #esto es para poder mandar los datos a guardar
        self.imagen=pygame.image.load("imagenes/componentes/"+texto.strip(" ")+".png")
        self.arg=1
        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.texto=texto
        self.color_texto=self.fondo.color_texto
        self.rectan=pygame.Rect(self.posicion[0],self.posicion[1],60,60)#rectangulo que representa toda el area del componente
        self.conector_m=pygame.Rect(0,0,40,10)#conector macho
        self.conector_h=pygame.Rect(0,0,40,10)#conector hembra
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos=[]
        self.lista_valores=[]
        self.pegado=0
        self.pegado_a=0
        self.lista_conector_h_datos.append((0,0,0,0))
        self.lista_valores.append("")
        self.vivo=True
        self.dibujar()
    def dibujar(self):
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]
        #~ pygame.draw.line(self.fondo.screen,(0,0,0),(self.posicion[0]-3,self.posicion[1]-10),(self.posicion[0]-3,self.posicion[1]+40),5)

        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+50,self.posicion[1]-10, 10,10),0)
        # el cuerpo del componente
        #~ pygame.draw.line(self.fondo.screen,(0,0,0),(self.posicion[0]+60,self.posicion[1]-2),(self.posicion[0]+129,self.posicion[1]-2),5)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 120,40),0)
        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+70,self.posicion[1]+40, 40,10),0)
        # conector hembra datos
        self.conector_h_dato[0]=self.rectan[0]+120
        self.conector_h_dato[1]=self.rectan[1]+20
        self.lista_conector_h_datos[0]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+120,self.posicion[1], 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+120,self.posicion[1]+30, 10,10),0)
#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        #self.fondo.screen.blit(self.imagen,(self.posicion[0],self.posicion[1]-11))
        self.textorender.render(self.texto,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        self.conector_m[0]=self.rectan[0]+70
        self.conector_m[1]=self.rectan[1]+50
    def update(self):
        ban_a=0
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        if self.vivo==True:
            if self.pegado==0:
                self.fondo.lista_ordenada[self.ide]=0
                for a in range(len(self.fondo.objetos)):
                    if self.conector_h.colliderect(self.fondo.objetos[a].conector_m):
                        self.pegado=1
                        self.pegado_a=a
                        break
                    else:
                        self.pegado=0
                        self.pegado_a=0
            if self.pegado==1:
                x,y,aa,bb=self.fondo.objetos[self.pegado_a].conector_m
                xx=x-10
                yy=y+10
                self.posicion=(xx,yy)
                self.fondo.lista_ordenada[self.ide]=self.fondo.objetos[self.pegado_a].ide
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
                self.pegado=0
                self.pegado_a=0
            if botones_mouse[1]==0:
                self.pulsado=0
                self.ventana.seleccionado=0
            if (botones_mouse[1]==1
                    and self.rectan.collidepoint(self.ventana.mousexy)
                    and self.ventana.seleccion_menu==3):
                for i in range(1,len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado=0
                    self.fondo.objetos_datos[i].pegado=0
                    self.fondo.objetos_datos[i].pegado_a=0
                    self.fondo.objetos_datos[i].pegado_b=0
                    self.fondo.objetos_datos[i].pegado2=0
                    self.fondo.objetos_datos[i].pegado_a2=0
                a=self.fondo.objetos.index(self)
                ident=self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a=0
                    self.fondo.objetos[i].pegado=0
                self.fondo.objetos[a].vivo=False
                del self.fondo.tipo_obj[a]
                self.kill()
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide]=0
        self.dibujar()


# hay problema cuando borras un componente de cero argumentos
# revizar

class componente_cero_arg(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0


    #conector_h_dato=pygame.Rect(0,0,10,20)#conector hembra dato
    ide=0
    color=(110,20,90)
    texto=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.ide=identidad
        self.posicion=(x,y)
        self.posicion2=(x,y+60)
        self.arg=0
        self.fondo=fondo
        #rectangulo que representa toda el area del componente
        self.rectan=pygame.Rect(self.posicion[0],self.posicion[1],60,60)
        self.rectan2=pygame.Rect(self.posicion2[0],self.posicion2[1],60,60)
        self.conector_h=pygame.Rect(0,0,40,10)#conector hembra
        self.conector_m=pygame.Rect(0,0,40,10)#conector macho
        self.vivo=True
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos=[]
        self.lista_valores=[]
        self.pegado=0
        self.pegado_a=0
        self.color=color
        self.texto=texto
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.color_texto=self.fondo.color_texto
        self.dibujar()

    def dibujar(self):
        #conector hembra
        pygame.draw.rect(
                            self.fondo.screen,
                            self.color,
                            (self.posicion[0],self.posicion[1]-10, 10,10),
                            0
                        )
        pygame.draw.rect(
                            self.fondo.screen,
                            self.color,
                            (self.posicion[0]+50,self.posicion[1]-10, 10,10),
                            0
                        )
        #cuerpo del componente
        pygame.draw.rect(
                            self.fondo.screen,
                            self.color,
                            (self.posicion[0],self.posicion[1], 60,40),
                            0
                        )
        self.textorender.render(
                                str(self.ide),
                                self.color_texto,
                                ((self.posicion[0]+10),(self.posicion[1]+10))
                                )

        pygame.draw.rect(
                            self.fondo.screen,
                            self.color,
                            (self.posicion2[0],self.posicion2[1], 60,40),
                            0
                        )
        self.textorender.render(
                                str(self.ide),
                                self.color_texto,
                                ((self.posicion2[0]+10),(self.posicion2[1]+10))
                                )
        pygame.draw.rect(
                        self.fondo.screen,
                        self.color,
                        (self.posicion2[0]+10,(self.posicion2[1]+40), 40,10),
                        0
                        )

        # self.conector_h es la ficha "hembra"
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]
        self.conector_m[0]=self.rectan2[0]+10
        self.conector_m[1]=self.rectan2[1]+50
    def update(self):
        ban_a=0
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        self.rectan2[0]=self.posicion2[0]
        self.rectan2[1]=self.posicion2[1]-10
        if self.vivo==True:
            if self.pegado==0:
                self.fondo.lista_ordenada[self.ide]=0
                for a in range(len(self.fondo.objetos)):
                    if self.conector_h.colliderect(self.fondo.objetos[a].conector_m):
                        self.pegado=1
                        self.pegado_a=a
                        break
                    else:
                        self.pegado=0
                        self.pegado_a=0
            if self.pegado==1:
                x,y,aa,bb=self.fondo.objetos[self.pegado_a].conector_m
                xx=x-10
                yy=y+10
                self.posicion=(xx,yy)
                self.fondo.lista_ordenada[self.ide]=self.fondo.objetos[self.pegado_a].ide
            if (botones_mouse[1]==1 and
                self.rectan.collidepoint(self.ventana.mousexy) and
                self.pulsado==0 and
                self.ventana.seleccionado==0):
                posic_mouse= self.ventana.mousexy
                self.ventana.seleccionado=self.ide
                self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])
                self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
                self.pulsado=1
            if (self.ventana.seleccionado== self.ide and self.pulsado==1):
                self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
                self.pulsado==1
                self.pegado=0
                self.pegado_a=0
###############################################################################
            if (botones_mouse[1]==1 and
                self.rectan2.collidepoint(self.ventana.mousexy) and
                self.pulsado==0 and
                self.ventana.seleccionado==0):
                posic_mouse2= self.ventana.mousexy
                self.ventana.seleccionado=self.ide
                self.posic_rel_x2=abs(self.posicion2[0]-posic_mouse2[0])
                self.posic_rel_y2=abs(self.posicion2[1]-posic_mouse2[1])
                self.pulsado=2
            if (self.ventana.seleccionado== self.ide) and self.pulsado==2:
                self.posicion2=(posic_mouse[0]-self.posic_rel_x2,posic_mouse[1]-self.posic_rel_y2)
                self.pulsado==2
                self.pegado=0
                self.pegado_a=0
###############################################################################

            if botones_mouse[1]==0:
                self.pulsado=0
                self.ventana.seleccionado=0
            if (botones_mouse[1]==1
                    and self.rectan.collidepoint(self.ventana.mousexy)
                    and self.ventana.seleccion_menu==3):
                for i in range(1,len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado=0
                    self.fondo.objetos_datos[i].pegado=0
                    self.fondo.objetos_datos[i].pegado_a=0
                    self.fondo.objetos_datos[i].pegado_b=0
                    self.fondo.objetos_datos[i].pegado2=0
                    self.fondo.objetos_datos[i].pegado_a2=0
                a=self.fondo.objetos.index(self)
                ident=self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a=0
                    self.fondo.objetos[i].pegado=0
                self.fondo.objetos[a].vivo=False
                del self.fondo.tipo_obj[a]
                self.kill()
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide]=0
        self.dibujar()

