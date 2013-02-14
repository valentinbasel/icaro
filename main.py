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
import os, sys, grp, gtk,pygtk
import shutil, urllib
import tarfile
pygame.init()
class mensajes:
    """ Class doc """
    
    def __init__ (self):
        """ Class initialiser """
        self.window1 = gtk.Window()
        self.window1.connect('delete-event', gtk.main_quit)
        #~ self.window1.show()
        #~ print "ventana"
    def mensajes(self,num,mensa):
        tipo=   (
                gtk.MESSAGE_WARNING,
                gtk.MESSAGE_QUESTION,
                gtk.MESSAGE_ERROR,
                gtk.MESSAGE_INFO
                )
        botones=(
                gtk.BUTTONS_OK,
                gtk.BUTTONS_OK_CANCEL,
                gtk.BUTTONS_OK,
                gtk.BUTTONS_OK
                )
        md = gtk.MessageDialog(None,
            gtk.DIALOG_MODAL | gtk.DIALOG_DESTROY_WITH_PARENT,
            tipo[num],
            botones[num], mensa)
        resp=md.run()
        md.destroy()
        if resp == gtk.RESPONSE_OK:
            return True
        elif resp == gtk.RESPONSE_CANCEL:
            return False
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
men=mensajes()
Error=0
CadenaMensaje="Se encontraron los siguientes errores: \n"
MicrochipBool="false"
DialoutBool="false"
grupos=grp.getgrall()
microchip=""
dialout=""
CadenaScript=""" 
para crear el grupo microchip, agregar el usuario a microchip y dialout hacer en la terminal lo siguiente:

sudo groupadd microchip
sudo usermod -a -G microchip $USER
sudo usermod -a -G dialout $USER
"""
for gr in grupos:
    if gr[0]=="microchip":
        microchip=gr[2]
    if gr[0]=="dialout":
        dialout=gr[2]

misgrupos=os.getgroups()
if microchip in misgrupos:
    MicrochipBool="true"
if dialout in misgrupos:
    DialoutBool="true"
if microchip=="":
    CadenaMensaje=CadenaMensaje +"  - No se ha detectado el grupo microchip. \n"
    Error=1
if MicrochipBool=="false":
    CadenaMensaje=CadenaMensaje +"  - El usuario no pertenece al grupo microchip \n"
    Error=1
if DialoutBool=="false":
    CadenaMensaje=CadenaMensaje +"  - El usuario no pertenece al grupo dialout \n"
    Error=1
if Error==1:
    CadenaMensaje=CadenaMensaje+CadenaScript
    men.mensajes(2,CadenaMensaje)
    exit()
dir_conf=os.path.expanduser('~') + "/.icaro/"
if os.path.isdir(dir_conf)==0:
    os.mkdir(dir_conf)

if os.path.isdir(dir_conf+"/np05/")==0:
    #respuesta=men.mensajes(1,"no existe el firmware para icaro-bloques, ¿descargarlo?")
    #print respuesta
    #if respuesta==True:
    try:
        #archivo=urllib.urlretrieve("http://valentinbasel.fedorapeople.org/firmware/np05.tar.gz",dir_conf+"np05.tar.gz",None)
        #tar=tarfile.open(dir_conf+"/np05.tar.gz","r:gz")
        #tar.extractall(dir_conf)
        #tar.close
        shutil.copytree("/usr/share/icaro/pic16/np05",dir_conf+"/np05/")
    except:
        men.mensajes(2,"no se pudo copiar el directorio")
        exit()
#    shutil.copytree(sys.path[0]+"/temp/tmp/",dir_conf+"/tmp" )
#    shutil.copytree(sys.path[0]+"/temp/source/",dir_conf+"/source" )
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

