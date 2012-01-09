#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys, pygame
from os import system


class comp_dat(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,80,20)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,10,20)#conector macho
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
        self.fondo.lista_valor_datos.append(self.cadena)
        self.modificable=mod
        self.valor_cadena_no_mod=val_no_mod
    def dibujar(self):
       # pygame.draw.rect(self.fondo.screen,(0,100,0),(self.posicion[0]+60,self.posicion[1]-10, 20,20),0)
       # pygame.draw.rect(self.fondo.screen,(100,0,0),(self.posicion[0]+60,self.posicion[1]+10, 20,20),0)
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
        #cargo la lista de los dos conectores hembra y macho
        for a in range(len(self.fondo.lista_ch_dato)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                if self.modificable==1:
                    self.fondo.lista_parser_final[a]=self.fondo.lista_parser[a] + str(self.cadena)
                else:
                    self.fondo.lista_parser_final[a]=self.fondo.lista_parser[a] + str(self.valor_cadena_no_mod)
        for a in range(len(self.fondo.lista_ch_dato2)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato2[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato2[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0:
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy):
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
        #loop=True
        if botones_mouse[2] and self.rectan.collidepoint(self.ventana.mousexy):
            print self.ide
        if botones_mouse[3] and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]) and self.modificable==1:
            self.tecla=1
            self.cadena=""
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



class comp_dat_img(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,80,20)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,10,20)#conector macho
    ide=0
    color=(125,100,83)
    cadena="0"
    modificable=0
    valor_cadena_no_mod="0"
    tecla=0
    tecla_presionada=0
    def __init__(self,x,y,identidad,mod,texto,color,val_no_mod,img,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.img="imagenes/componentes/"+ img
        print self.img
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
        self.fondo.lista_valor_datos.append(self.cadena)
        self.modificable=mod
        self.valor_cadena_no_mod=val_no_mod
    def dibujar(self):
       # pygame.draw.rect(self.fondo.screen,(0,100,0),(self.posicion[0]+60,self.posicion[1]-10, 20,20),0)
       # pygame.draw.rect(self.fondo.screen,(100,0,0),(self.posicion[0]+60,self.posicion[1]+10, 20,20),0)

        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,20),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]-10, 50,40),0)
#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))
#
        #self.textorender.render(str(self.cadena),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))
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
        #cargo la lista de los dos conectores hembra y macho
        for a in range(len(self.fondo.lista_ch_dato)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                if self.modificable==1:
                    self.fondo.lista_parser_final[a]=self.fondo.lista_parser[a] + str(self.cadena)
                else:
                    self.fondo.lista_parser_final[a]=self.fondo.lista_parser[a] + str(self.valor_cadena_no_mod)
        for a in range(len(self.fondo.lista_ch_dato2)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato2[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato2[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0:
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy):
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
        #loop=True
        if botones_mouse[2] and self.rectan.collidepoint(self.ventana.mousexy):
            print self.ide
        if botones_mouse[3] and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]) and self.modificable==1:
            self.tecla=1
            self.cadena=""
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


class comp_dat_arg(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,80,20)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,10,20)#conector macho
    ide=0
    ide2=0
    conector_h_dato2=pygame.Rect(0,0,10,20)#conector hembra dato

    color=(0,255,83)
    color_texto=(198,233,185)
    cadena="0"
    def __init__(self,x,y,identidad,identidadd2):
        pygame.sprite.Sprite.__init__(self)
        self.ide=identidad
        self.ide2=identidadd2
        self.posicion=(x,y)
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_valor_datos2.append("0")
        self.fondo.lista_ch_dato2.append((0,0,0,0))


    def dibujar(self):
        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,20),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]-10, 50,40),0)


        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]+20, 10,10),0)

        texto.render(str(self.cadena),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))
#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))

        
    def update(self):
        ban_a=0

        # self.conector_h es la ficha "hembra"

        self.conector_h_dato2[0]=self.rectan[0]+60
        self.conector_h_dato2[1]=self.rectan[1]

        posic_mouse= pygame.mouse.get_pos()
        botones_mouse = pygame.mouse.get_pressed()
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]
        self.conector_m[1]=self.rectan[1]

        self.fondo.lista_ch_dato2[self.ide2]=(self.conector_h_dato2[0],
                self.conector_h_dato2[1],
                self.conector_h_dato2[2],
                self.conector_h_dato2[3])
        for a in range(len(self.fondo.lista_ch_dato)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                
                self.fondodo.lista_parser_final[a]=self.fondodo.lista_parser[a] + str(self.cadena)

        for a in range(len(self.fondo.lista_ch_dato2)):
            if self.conector_m.colliderect(self.fondo.lista_ch_dato2[a]):
                x,y,aa,bb=self.fondo.lista_ch_dato2[a]
                xx=x
                yy=y
                self.posicion=(xx,yy)
                print self.fondo.lista_valor_datos2[a]
        if botones_mouse[0]==1 and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]) and self.pulsado==0:
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        
        if botones_mouse[0]==1 and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]):
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[0]==0:
            self.pulsado=0
        loop=True
        if botones_mouse[2] and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]):
            print self.ide
        if botones_mouse[1] and self.rectan.collidepoint(posic_mouse[0],posic_mouse[1]):
            self.cadena=""
            while loop:
                for event in pygame.event.get():
                    self.dibujar()


                    if event.type == pygame.KEYDOWN:
                        if event.key ==  pygame.K_RETURN:
                            loop=False

                        if event.key == pygame.K_BACKSPACE:
                            if len(self.cadena)>0:
                                self.cadena = self.cadena[0:len(self.cadena)-1]
                        else:
                            self.cadena = self.cadena + event.unicode
                        texto.render(self.cadena,self.color_texto,((self.posicion[0]+20),(self.posicion[1]+5)))

                        pygame.display.update()

        self.dibujar()
        pygame.display.update
