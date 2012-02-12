#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys, pygame
from os import system
from componente_datos import *



class componente(pygame.sprite.Sprite):

    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,40,10)#conector macho
    conector_h=pygame.Rect(0,0,40,10)#conector hembra
    conector_h_dato=pygame.Rect(0,0,30,20)#conector hembra dato
    ide=0
    color=(110,20,90)
    
    texto=""
    def __init__(self,x,y,identidad,argumentos,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
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
        for a in range(self.arg):
            self.fondo.lista_cm.append((0,0,0,0))
            self.fondo.lista_ch.append((0,0,0,0))
            self.fondo.lista_ch_dato.append((0,0,0,0))
            self.fondo.lista_ordenada.append(0)
            self.fondo.lista_fina.append(0)
            self.fondo.lista_parser.append(texto)
            self.fondo.lista_parser_final.append(texto)

    def dibujar(self):
        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+50,self.posicion[1]-10, 10,10),0)
        factor=0
        for a in range(self.arg):
            # el cuerpo del componente
            pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]+factor, 60,40),0)
            # conector hembra datos
            pygame.draw.rect(self.fondo.screen,self.color,((self.posicion[0]+60),(self.posicion[1]+factor), 10,10),0)
            pygame.draw.rect(self.fondo.screen,self.color,((self.posicion[0]+60),(self.posicion[1]+30+factor), 10,10),0)
            self.conector_h_dato[0]=self.rectan[0]+60
            self.conector_h_dato[1]=self.rectan[1]+20+factor
            self.fondo.lista_ch_dato[self.ide+a]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
            factor +=40
        self.rectan[3]=factor
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+factor+10
        self.fondo.lista_cm[self.ide]=(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3])

        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,(self.posicion[1]+factor), 40,10),0)

#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        self.fondo.screen.blit(self.imagen,(self.posicion[0]+(self.rectan[2]/2)-10,self.posicion[1]+(self.rectan[3]/2)+5))
        self.textorender.render(self.texto,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))

        
    def update(self):
        ban_a=0
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        # self.conector_m es la ficha "macho"

        # self.conector_h es la ficha "hembra"
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]

        #cargo la lista de los dos conectores hembra y macho
        self.fondo.lista_ch[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        # comparo la lista de conectores hembra con mi conector macho
        for a in range(len(self.fondo.lista_cm)):
            if self.conector_h.colliderect(self.fondo.lista_cm[a]):
                x,y,aa,bb=self.fondo.lista_cm[a]
                xx=x-10
                yy=y+10
                self.posicion=(xx,yy)
                ban_a=a
        self.fondo.lista_ordenada[self.ide]=ban_a
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.ventana.seleccionado== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado=0
        self.dibujar()
        pygame.display.update


class componente_bloque_dos(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,40,10)#conector macho
    conector_h=pygame.Rect(0,0,40,10)#conector hembra
    #conector_h_dato=pygame.Rect(0,0,10,20)#conector hembra dato
    ide=0
    color=(170,136,0)
    cadena=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        #self.imagen=pygame.image.load("imagenes/componentes/componente_bloque_dos.png")

        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.cadena=texto
        self.color_texto=self.fondo.color_texto

        self.fondo.lista_cm.append((0,0,0,0))
        self.fondo.lista_ch.append((0,0,0,0))
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ordenada.append(0)
        self.fondo.lista_fina.append(0)
        self.fondo.lista_parser.append(self.cadena)
        fondo.lista_parser_final.append(self.cadena)

        #c1=comp_dat(x+60,y+10,identidad)
        #self.fondo.lista_cm.append((0,0,0,0))
        #self.fondo.lista_ch.append((0,0,0,0))
        #self.fondo.lista_ch_dato.append((0,0,0,0))
        #self.fondo.lista_ordenada.append(0)
        #self.fondo.lista_fina.append(0)
        #datos.add(c1)

    def dibujar(self):
        #self.fondo.screen.blit(self.imagen,(self.posicion[0],self.posicion[1]-11))

        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+110,self.posicion[1]-10, 10,10),0)
        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 120,40),0)
        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]+40, 40,10),0)

#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        self.textorender.render(self.cadena,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))

        
    def update(self):
        ban_a=0

        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+50
        # self.conector_h es la ficha "hembra"
        self.conector_h[0]=self.rectan[0]+70
        self.conector_h[1]=self.rectan[1]
        

        #cargo la lista de los dos conectores hembra y macho
        #self.fondo.lista_ch_dato[self.ide]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
        self.fondo.lista_cm[self.ide]=(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3])
        self.fondo.lista_ch[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        # comparo la lista de conectores hembra con mi conector macho
#        if self.conector_h_dato.collidepoint(posic_mouse[0],posic_mouse[1]):
#            print self.fondo.lista_ch_dato
        for a in range(len(self.fondo.lista_cm)):
            if self.conector_h.colliderect(self.fondo.lista_cm[a]):
                x,y,aa,bb=self.fondo.lista_cm[a]
                xx=x-70
                yy=y+10
                self.posicion=(xx,yy)
                ban_a=a
#        for b in range(len(self.fondo.lista_ch)):
#            if self.conector_m.colliderect(self.fondo.lista_ch[b]):
#                                

        self.fondo.lista_ordenada[self.ide]=ban_a
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.ventana.seleccionado== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado=0
        self.dibujar()
        pygame.display.update


class componente_bloque_uno(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,40,10)#conector macho
    conector_h=pygame.Rect(0,0,40,10)#conector hembra
    conector_h_dato=pygame.Rect(0,0,40,20)#conector hembra dato
    ide=0
    color=(170,136,0)
    cadena=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        #self.imagen=pygame.image.load("imagenes/componentes/componente_bloque_uno.png")

        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.cadena=texto
        self.color_texto=self.fondo.color_texto

        self.fondo.lista_cm.append((0,0,0,0))
        self.fondo.lista_ch.append((0,0,0,0))
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ordenada.append(0)
        self.fondo.lista_fina.append(0)
        self.fondo.lista_parser.append(self.cadena)
        self.fondo.lista_parser_final.append(self.cadena)
        #c1=comp_dat(x+120,y+10,identidad,1,"0 ",(100,100,80),"0 ")
        #self.fondolista_cm.append((0,0,0,0))
        #self.fondolista_ch.append((0,0,0,0))
        #self.fondo.lista_ch_dato.append((0,0,0,0))
        #self.fondolista_ordenada.append(0)
        #self.fondolista_fina.append(0)
        #datos.add(c1)
        
        
    def dibujar(self):
        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+50,self.posicion[1]-10, 10,10),0)
        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 120,40),0)
        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+70,self.posicion[1]+40, 40,10),0)
        # conector hembra datos
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+120,self.posicion[1], 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+120,self.posicion[1]+30, 10,10),0)
#        texto.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
        #self.fondo.screen.blit(self.imagen,(self.posicion[0],self.posicion[1]-11))
        self.textorender.render(self.cadena,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))

        
    def update(self):
        ban_a=0

        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]+70
        self.conector_m[1]=self.rectan[1]+50
        # self.conector_h es la ficha "hembra"
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]
        
        self.conector_h_dato[0]=self.rectan[0]+120
        self.conector_h_dato[1]=self.rectan[1]+20
        #cargo la lista de los dos conectores hembra y macho
        self.fondo.lista_ch_dato[self.ide]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
        self.fondo.lista_cm[self.ide]=(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3])
        self.fondo.lista_ch[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        # comparo la lista de conectores hembra con mi conector macho
#        if self.conector_h_dato.collidepoint(posic_mouse[0],posic_mouse[1]):
#            print self.fondo.lista_ch_dato
        for a in range(len(self.fondo.lista_cm)):
            if self.conector_h.colliderect(self.fondo.lista_cm[a]):
                x,y,aa,bb=self.fondo.lista_cm[a]
                xx=x-10
                yy=y+10
                self.posicion=(xx,yy)
                ban_a=a
#        for b in range(len(self.fondo.lista_ch)):
#            if self.conector_m.colliderect(self.fondo.lista_ch[b]):
#                                

        self.fondo.lista_ordenada[self.ide]=ban_a
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.ventana.seleccionado== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado=0
        self.dibujar()
        pygame.display.update

        
        



class componente_cero_arg_dos(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_m=pygame.Rect(0,0,40,10)#conector macho
    conector_h=pygame.Rect(0,0,40,10)#conector hembra

    #conector_h_dato=pygame.Rect(0,0,10,20)#conector hembra dato
    ide=0
    color=(110,20,90)
    texto=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.texto=texto
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.fondo.lista_cm.append((0,0,0,0))
#       self.fondo.lista_cm.append((0,0,0,0))
        self.color_texto=self.fondo.color_texto
        self.fondo.lista_ch.append((0,0,0,0))
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ordenada.append(0)
        self.fondo.lista_fina.append(0)
        self.fondo.lista_parser.append(texto)
        self.fondo.lista_parser_final.append(texto)

        #c1=comp_dat(x+60,y+10,fondo.identificador_dat,1,"0 ",(100,100,80),"0 ")
        #fondo.identificador_dat+=1
        #datos.add(c1)
    def dibujar(self):
        # estos son los cuadrados que forman el vacio que representa el conector hembra
        #pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]-10, 10,10),0)
        #pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+50,self.posicion[1]-10, 10,10),0)
        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,40),0)
        # el conector macho
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]+40, 40,10),0)
        # conector hembra datos
       # pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1], 10,10),0)
        #pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]+30, 10,10),0)
        self.textorender.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
#        self.textorender.render(self.texto,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))

        
    def update(self):
        ban_a=0

        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+50
        # self.conector_h es la ficha "hembra"
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]
        #self.conector_h_dato[0]=self.rectan[0]+60
        #self.conector_h_dato[1]=self.rectan[1]+20
        #cargo la lista de los dos conectores hembra y macho
        #self.fondo.lista_ch_dato[self.ide]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
        self.fondo.lista_cm[self.ide]=(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3])
        self.fondo.lista_ch[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        # comparo la lista de conectores hembra con mi conector macho
#        if self.conector_h_dato.collidepoint(posic_mouse[0],posic_mouse[1]):
#            print self.fondo.lista_ch_dato
#        for a in range(len(self.fondo.lista_cm)):
#            if self.conector_h.colliderect(self.fondo.lista_cm[a]):
#                x,y,aa,bb=self.fondo.lista_cm[a]
#                xx=x-10
#                yy=y+10
#                self.posicion=(xx,yy)
#                ban_a=a
##        for b in range(len(self.fondo.lista_ch)):
#            if self.conector_m.colliderect(self.fondo.lista_ch[b]):
#                                

        self.fondo.lista_ordenada[self.ide]=self.ide-1
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.ventana.seleccionado== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado=0
        self.dibujar()
        pygame.display.update

        

class componente_cero_arg(pygame.sprite.Sprite):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado=0
    posicion=(0,0)
    rectan=pygame.Rect(0,0,60,60)#rectangulo que representa toda el area del componente
    conector_h=pygame.Rect(0,0,40,10)#conector hembra
    conector_m=pygame.Rect(0,0,40,10)#conector macho

    #conector_h_dato=pygame.Rect(0,0,10,20)#conector hembra dato
    ide=0
    color=(110,20,90)
    texto=""
    def __init__(self,x,y,identidad,color,texto,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.ide=identidad
        self.posicion=(x,y)
        self.color=color
        self.texto=texto
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.color_texto=self.fondo.color_texto

        self.fondo.lista_cm.append((0,0,0,0))
        self.fondo.lista_ch.append((0,0,0,0))
        self.fondo.lista_ch_dato.append((0,0,0,0))
        self.fondo.lista_ordenada.append(0)
        self.fondo.lista_fina.append(0)
        self.fondo.lista_parser.append(texto)
        self.fondo.lista_parser_final.append(texto)
        #c1=comp_dat(x+60,y+10,fondo.identificador_dat,1,"0 ",(100,100,80),"0 ")
        #fondo.identificador_dat+=1
        #datos.add(c1)
    def dibujar(self):
        # estos son los cuadrados que forman el vacio que representa el conector hembra
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1]-10, 10,10),0)
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+50,self.posicion[1]-10, 10,10),0)
        # el cuerpo del componente
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 60,40),0)
        # el conector macho
        #pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+10,self.posicion[1]+40, 40,10),0)
        # conector hembra datos
       # pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1], 10,10),0)
        #pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0]+60,self.posicion[1]+30, 10,10),0)
        self.textorender.render(str(self.ide),self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))
#        self.textorender.render(self.texto,self.color_texto,((self.posicion[0]+10),(self.posicion[1]+10)))

        
    def update(self):
        ban_a=0

        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect que representa la totalidad de la figura 
        self.rectan[0]=self.posicion[0]
        self.rectan[1]=self.posicion[1]-10
        # self.conector_m es la ficha "macho"
        self.conector_m[0]=self.rectan[0]+10
        self.conector_m[1]=self.rectan[1]+50
        # self.conector_h es la ficha "hembra"
        self.conector_h[0]=self.rectan[0]+10
        self.conector_h[1]=self.rectan[1]
        #self.conector_h_dato[0]=self.rectan[0]+60
        #self.conector_h_dato[1]=self.rectan[1]+20
        #cargo la lista de los dos conectores hembra y macho
        #self.fondo.lista_ch_dato[self.ide]=(self.conector_h_dato[0],self.conector_h_dato[1],self.conector_h_dato[2],self.conector_h_dato[3])
        self.fondo.lista_cm[self.ide]=(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3])
        self.fondo.lista_ch[self.ide]=(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3])
        # comparo la lista de conectores hembra con mi conector macho
#        if self.conector_h_dato.collidepoint(posic_mouse[0],posic_mouse[1]):
#            print self.fondo.lista_ch_dato
        for a in range(len(self.fondo.lista_cm)):
            if self.conector_h.colliderect(self.fondo.lista_cm[a]):
                x,y,aa,bb=self.fondo.lista_cm[a]
                xx=x-10
                yy=y+10
                self.posicion=(xx,yy)
                ban_a=a
#        for b in range(len(self.fondo.lista_ch)):
#            if self.conector_m.colliderect(self.fondo.lista_ch[b]):
#                                

        self.fondo.lista_ordenada[self.ide]=ban_a
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.pulsado==0 and self.ventana.seleccionado==0:
            posic_mouse= self.ventana.mousexy
            self.ventana.seleccionado=self.ide
            self.posic_rel_x=abs(self.posicion[0]-posic_mouse[0])  
            self.posic_rel_y=abs(self.posicion[1]-posic_mouse[1])
            self.pulsado=1
        if botones_mouse[1]==1 and self.rectan.collidepoint(self.ventana.mousexy) and self.ventana.seleccionado== self.ide:
            self.posicion=(posic_mouse[0]-self.posic_rel_x,posic_mouse[1]-self.posic_rel_y)
            self.pulsado==1
        if botones_mouse[1]==0:
            self.pulsado=0
            self.ventana.seleccionado=0
        self.dibujar()
        pygame.display.update

