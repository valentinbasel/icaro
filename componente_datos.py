#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys, pygame
from os import system


class comp_dat_arg(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    cadena_final=""
    cadena_intermedia=""
    rectan=pygame.Rect(0,0,80,20)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,10,20)#conector macho
    conector_h=pygame.Rect(0,0,10,20)#conector hembra
    ide=0
    color=(125,100,83)
    cadena="0"
    modificable=0
    valor_cadena_no_mod="0"
    tecla=0
    tecla_presionada=0
    def __init__(self,x,y,identidad,mod,texto,color,val_no_mod,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        #self.imagen=pygame.image.load("imagenes/componentes/componente_dato.png")
        self.ide=identidad
        self.posicion=(x,y)
        self.cadena=texto
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.color_texto=self.fondo.color_texto
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ch_dato2.append((0,0,0,0))
        self.fondo.lista_valor_datos.append(self.cadena)
        self.modificable=mod
        self.valor_cadena_no_mod=val_no_mod
    def dibujar(self):
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]+20, 10,10),0)
        #self.fondo.screen.blit(self.imagen,(self.posicion[0],self.posicion[1]-11))

        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,20),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]-10, 50,40),0)
#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))
#
        self.textorender.render(str(self.cadena),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))

        
    def update(self):
        ban_a=0
        cadena_auxiliar=""
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]
        self.conector_m[1]=self.rectan[1]
        self.conector_h[0]=self.rectan[0]+60
        self.conector_h[1]=self.rectan[1]
        self.fondo.lista_ch_dato2[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        #print "id: ",self.ide," cadena_final: ",self.cadena_final

        if self.modificable==1:
            self.cadena_final=self.cadena+self.cadena_intermedia

        else:
            self.cadena_final=self.valor_cadena_no_mod+self.cadena_intermedia
        self.cadena_final=self.cadena_final.replace("\r", '')
        #self.cadena_final=self.cadena_final.replace(" ", '')
        for a in range(len(self.fondo.lista_ch_dato)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                self.fondo.lista_parser_final[a]=self.fondo.lista_parser[a] + str(self.cadena_final)


        for z in range(len(self.fondo.lista_ch_dato2)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato2[z]):
                x,y,aa,bb=self.fondo.lista_ch_dato2[z]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                self.fondo.objetos_datos[z].cadena_intermedia=self.cadena_final
                break
            else:
                self.cadena_intermedia=""

        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado_datos==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado_datos=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if self.ventana.seleccionado_datos== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            #self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado_datos=0
            
        if botones_mouse[2] and self.rectan.collidepoint(self.ventana.mousexy):
            print self.ide
        if botones_mouse[3] and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]) and self.modificable==1:
            self.tecla=1
            self.cadena=""
            self.dat_a=""
        if self.tecla==1:
            if self.tecla_presionada==0:
                cadena_auxiliar= self.ventana.valor_tecla
                self.tecla_presionada=1
                if cadena_auxiliar!="":
                    self.cadena = self.cadena + cadena_auxiliar
            if self.ventana.tecla==0:
                self.tecla_presionada=0
        
        if self.ventana.tecla_enter==1:
            self.tecla=0
        self.dibujar()
        pygame.display.update




class comp_dat_arg_img(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    cadena_final=""
    cadena_intermedia=""
    rectan=pygame.Rect(0,0,80,20)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,10,20)#conector macho
    conector_h=pygame.Rect(0,0,10,20)#conector hembra
    ide=0
    color=(125,100,83)
    cadena="0"
    modificable=0
    valor_cadena_no_mod="0"
    tecla=0
    tecla_presionada=0
    def __init__(self,x,y,identidad,mod,texto,color,val_no_mod,img,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.imagenintermedia=img #esto es para poder mandar los datos a guardar
        self.img="imagenes/componentes/"+ img
        self.imagen=pygame.image.load(self.img)
        self.img_rect=self.imagen.get_rect()

        self.ide=identidad
        self.posicion=(x,y)
        self.cadena=texto
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.color_texto=self.fondo.color_texto
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ch_dato2.append((0,0,0,0))
        self.fondo.lista_valor_datos.append(self.cadena)
        self.modificable=mod
        self.valor_cadena_no_mod=val_no_mod
    def dibujar(self):
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]+20, 10,10),0)

        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,20),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]-10, 50,40),0)
#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))
#
#        self.textorender.render(str(self.cadena),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))
        self.fondo.screen.blit(self.imagen,(self.posicion[0]+30-(self.img_rect[3]/2),self.posicion[1]))
        
    def update(self):
        ban_a=0
        cadena_auxiliar=""
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]
        self.conector_m[1]=self.rectan[1]
        self.conector_h[0]=self.rectan[0]+60
        self.conector_h[1]=self.rectan[1]
        self.fondo.lista_ch_dato2[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        #print "id: ",self.ide," cadena_final: ",self.cadena_final

        if self.modificable==1:
            self.cadena_final=self.cadena+self.cadena_intermedia

        else:
            self.cadena_final=self.valor_cadena_no_mod+self.cadena_intermedia
        self.cadena_final=self.cadena_final.replace("\r", '')
        #self.cadena_final=self.cadena_final.replace(" ", '')
        for a in range(len(self.fondo.lista_ch_dato)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                self.fondo.lista_parser_final[a]=self.fondo.lista_parser[a] + str(self.cadena_final)


        for z in range(len(self.fondo.lista_ch_dato2)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato2[z]):
                x,y,aa,bb=self.fondo.lista_ch_dato2[z]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                self.fondo.objetos_datos[z].cadena_intermedia=self.cadena_final
                break
            else:
                self.cadena_intermedia=""
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado_datos==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado_datos=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if self.ventana.seleccionado_datos== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            #self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado_datos=0
            
        if botones_mouse[2] and self.rectan.collidepoint(self.ventana.mousexy):
            print self.ide
        if botones_mouse[3] and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]) and self.modificable==1:
            self.tecla=1
            self.cadena=""
            self.dat_a=""
        if self.tecla==1:
            if self.tecla_presionada==0:
                cadena_auxiliar= self.ventana.valor_tecla
                self.tecla_presionada=1
                if cadena_auxiliar!="":
                    self.cadena = self.cadena + cadena_auxiliar
            if self.ventana.tecla==0:
                self.tecla_presionada=0
        
        if self.ventana.tecla_enter==1:
            self.tecla=0
        self.dibujar()
        pygame.display.update
