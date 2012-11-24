#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys, pygame
from os import system

from componente import *
#from comp_inicial import *
#from repetir import *
#from finrepetir import *
#0044aa
class boton_comp_cero_arg(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(00,44,170)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    def __init__(self,x,y,tipo,color,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.rect=pygame.Rect(x,y,90,50)
        self.cadena=tipo
        self.color_bot=color
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):
        self.fondo.identificador+=1
        c1=componente_cero_arg(self.fondo.poscion_botones,self.posicion[1]+70+90+90,self.fondo.identificador,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)
        self.fondo.identificador+=1
        c1=componente_cero_arg_dos(self.fondo.poscion_botones+70,self.posicion[1]+70+90+90,self.fondo.identificador,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)



class boton_comp_un_arg(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(00,44,170)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    def __init__(self,x,y,tipo,color,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.rect=pygame.Rect(x,y,90,50)
        self.cadena=tipo
        self.color_bot=color
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):
        self.fondo.identificador+=1
        c1=componente_un_arg(self.fondo.poscion_botones,self.posicion[1]+70+90+90,self.fondo.identificador,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        #c1=componente(self.fondo.poscion_botones,
        #                self.posicion[1]+70+90+90,
        #                self.fondo.identificador,
        #                1,
        #                self.color_bot,
        #                self.cadena,
        #                self.fondo,
        #                self.ventana,
        #                self.textorender)

        self.fondo.componentes.add(c1)
        #dato=comp_dat(self.fondo.poscion_botones+60,self.posicion[1]+90+90+90,self.fondo.identificador_dat,1,"0 ",(00,170,30),"0 ",self.fondo,self.ventana,self.textorender)
        #self.fondo.identificador_dat+=1
        #self.fondo.datos.add(dato)

class boton_comp_instruc_uno(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(00,66,80)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    cadena2=""
    def __init__(self,x,y,tipo,tipo2,color,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.cadena=tipo
        self.cadena2=tipo2
        self.color=color
        self.color_bot=color
        self.rect=pygame.Rect(x,y,90,50)
        self.color_bot=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):
        self.fondo.identificador+=1
        c1=componente_bloque_uno(self.fondo.poscion_botones,self.posicion[1]+70+90+90,self.fondo.identificador,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)
        self.fondo.identificador +=1
        c1=componente_bloque_dos(self.fondo.poscion_botones,self.posicion[1]+120+90+90,self.fondo.identificador,self.color_bot,self.cadena2,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)

class boton_comp_dos_arg(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(00,44,170)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    def __init__(self,x,y,tipo,color,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.rect=pygame.Rect(x,y,90,50)
        self.cadena=tipo
        self.color_bot=color
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):
        #self.fondo.identificador+=1
        #c1=componente_dos_arg(self.fondo.poscion_botones,self.posicion[1]+70+90+90,self.fondo.identificador,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        #self.fondo.componentes.add(c1)
        #self.fondo.identificador+=1
        self.fondo.identificador+=1
        c1=componente(self.fondo.poscion_botones,self.posicion[1]+70+90+90,self.fondo.identificador,2,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)
        self.fondo.identificador+=1
        
        #x,y,identidad,argumentos,color,texto,fondo,ventana,textorender
        dato=comp_dat(self.fondo.poscion_botones+60,self.posicion[1]+90+90+90,self.fondo.identificador_dat,1,"0 ",(00,170,30),"0 ",self.fondo,self.ventana,self.textorender)
        self.fondo.identificador_dat+=1
        self.fondo.datos.add(dato)

class boton_comp_un_tres_arg(pygame.sprite.Sprite):

    posicion=(0,0)
    color=(00,66,80)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    cadena2=""
    def __init__(self,x,y,tipo,tipo2,color,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.cadena=tipo
        self.cadena2=tipo2
        self.color_bot=color
        self.rect=pygame.Rect(x,y,90,50)
        self.color_bot=color
        self.color=color
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):
        self.fondo.identificador+=1
        c1=componente_bloque_uno_tres_arg(self.fondo.poscion_botones,self.posicion[1]+70+70+90,self.fondo.identificador,self.color_bot,self.cadena,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)
        self.fondo.identificador +=2
        dato=comp_dat(self.fondo.poscion_botones+120,self.posicion[1]+90+90+90,self.fondo.identificador_dat,1,"0 ",(00,170,30),"0 ",self.fondo,self.ventana,self.textorender)
        self.fondo.identificador_dat+=1
        self.fondo.datos.add(dato)
        self.fondo.identificador +=1
        c1=componente_bloque_dos(self.fondo.poscion_botones,self.posicion[1]+180+90+90,self.fondo.identificador,self.color_bot,self.cadena2,self.fondo,self.ventana,self.textorender)
        self.fondo.componentes.add(c1)


class boton_un_dat(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(00,44,170)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    def __init__(self,x,y,tipo,color,dato_comp,dat_comp_2,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.rect=pygame.Rect(x,y,90,50)
        self.cadena=tipo
        self.color_bot=color
        self.color=color
        self.dat_comp=dato_comp
        self.val_no_mod=dat_comp_2
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):

        dato=comp_dat(self.fondo.poscion_botones+60,self.posicion[1]+90+90+90,self.fondo.identificador_dat,0,self.dat_comp,self.color_bot,self.val_no_mod,self.fondo,self.ventana,self.textorender)
        self.fondo.identificador_dat+=1
        self.fondo.datos.add(dato)


class boton_un_dat_numerico(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(00,44,170)
    color_texto=(198,233,185)
    color_bot=0
    rect=0
    pulsado=0
    contador=1
    cadena=""
    def __init__(self,x,y,tipo,color,dato_comp,dat_comp_2,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.rect=pygame.Rect(x,y,90,50)
        self.cadena=tipo
        self.color_bot=color
        self.color=color
        self.dat_comp=dato_comp
        self.val_no_mod=dat_comp_2
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render(self.cadena,self.color_texto,(self.posicion[0]+17,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0
            
        pygame.display.update
        
    def accion(self):

        dato=comp_dat(self.fondo.poscion_botones+60,self.posicion[1]+90+90+90,self.fondo.identificador_dat,1,self.dat_comp,self.color_bot,self.val_no_mod,self.fondo,self.ventana,self.textorender)
        self.fondo.identificador_dat+=1
        self.fondo.datos.add(dato)

class boton_inic(pygame.sprite.Sprite):
    posicion=(0,0)
    color=(0,110,20)
    color_texto=(198,233,185)
    pulsado=0
    rect=0
    cadena_pinguino=[]
    def __init__(self,x,y,fondo,ventana,textorender):
        pygame.sprite.Sprite.__init__(self)
        self.posicion=(x,y)
        self.fondo=fondo
        self.ventana=ventana
        self.textorender=textorender
        self.rect=pygame.Rect(x,y,90,50)
        self.carga()
    def update(self):
        posic_mouse= self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        pygame.draw.rect(self.fondo.screen,self.color,(self.posicion[0],self.posicion[1], 90,50),0)
        self.textorender.render("inicio",self.color_texto,(self.posicion[0]+27,self.posicion[1]+20))
        if self.rect.collidepoint(posic_mouse[0],posic_mouse[1]) and botones_mouse[1]==1 and self.pulsado==0:
            #self.accion()
            self.pulsado=1
            self.accion()

        if botones_mouse[1]==0:
            self.pulsado=0

        pygame.display.update
        
        
        
        
    def accion(self):
        
        print "lista_cm ",self.fondo.lista_cm
        print "lista_ch ", self.fondo.lista_ch
        print "lista_ordenada ",self.fondo.lista_ordenada
        print "lista_fina ",self.fondo.lista_fina
        print "lista_ch_dato ",self.fondo.lista_ch_dato
        print "lista_ch_dato2 " ,self.fondo.lista_ch_dato2
        print "identificador ", self.fondo.identificador
        print "identificador_dat ",self.fondo.identificador_dat
        print "identificador_dat2 ",self.fondo.identificador_dat2
        print "lista_valor_datos ",self.fondo.lista_valor_datos
        print "lista_valor_datos2 ",self.fondo.lista_valor_datos2
        print "lista_parser--------- ",self.fondo.lista_parser
        print "lista_parser_final ",self.fondo.lista_parser_final
       #borro la lista
        self.carga()
        tama=len(self.fondo.lista_fina) - 1
        siguiente=1
        for a in range (len(self.fondo.lista_fina)):
            self.fondo.lista_fina[a]=0
        #tomo el tamaño de la lista para la itereacion
        #print "lista borrada: ",self.fondo.lista_fina
        #print tama
        b=1
        self.fondo.lista_fina[0]=1
        while b<= tama and siguiente!=0:
#                print "valor de b: ",b
            a=0
            bandera=0
            while a<= (len(self.fondo.lista_ordenada)-1) and bandera==0:
                #for a in range (len(self.fondo.lista_ordenada)):
                if self.fondo.lista_ordenada[a]==siguiente:
                    siguiente=a
#                        print "valor de sig", siguiente
                    self.fondo.lista_fina[b]=a
                    bandera=1
                a=a+1
            b=b+1
#            print self.fondo.lista_ordenada
#        print self.fondo.lista_fina
#        print self.fondo.lista_parser
        a =0
        for a in range (len(self.fondo.lista_fina)-1):
            #print self.fondo.lista_parser_final[self.fondo.lista_fina[a]]
            #print self.fondo.lista_parser[self.fondo.lista_fina[a]]
            if self.fondo.lista_parser[self.fondo.lista_fina[a]]=='activar ':
                #
                cadena= self.fondo.lista_parser_final[self.fondo.lista_fina[a]]
                valor=cadena[8:len(cadena)-1]
                self.cadena_pinguino.append("PORTB="+valor+";")
            if self.fondo.lista_parser[self.fondo.lista_fina[a]]=='pausa ':
                #
                cadena= self.fondo.lista_parser_final[self.fondo.lista_fina[a]]
                valor=cadena[5:len(cadena)-1]
                self.cadena_pinguino.append("Delayms("+valor+");")
            if self.fondo.lista_parser[self.fondo.lista_fina[a]]=='servo ' and self.fondo.lista_parser[self.fondo.lista_fina[a]+1]=='servo ':
                #
                cadena= self.fondo.lista_parser_final[self.fondo.lista_fina[a]]
                cadena2=self.fondo.lista_parser_final[self.fondo.lista_fina[a]+1]
                valor=cadena[6:len(cadena)-1]
                valor2=cadena2[6:len(cadena2)-1]
                self.cadena_pinguino.append("ServoWrite("+valor+","+valor2+");")
            if self.fondo.lista_parser[self.fondo.lista_fina[a]]=='si ' and self.fondo.lista_parser[self.fondo.lista_fina[a]+1]=='si ' and self.fondo.lista_parser[self.fondo.lista_fina[a]+2]=='si ':
                #
                cadena= self.fondo.lista_parser_final[self.fondo.lista_fina[a]]
                cadena2=self.fondo.lista_parser_final[self.fondo.lista_fina[a]+1]
                cadena3=self.fondo.lista_parser_final[self.fondo.lista_fina[a]+2]
                valor=cadena[3:len(cadena)-1]
                valor2=cadena2[3:len(cadena)-1]
                valor3=cadena3[3:len(cadena)-1]
                self.cadena_pinguino.append("if ("+valor+valor2+valor3+"){")
            if self.fondo.lista_parser[self.fondo.lista_fina[a]]=='mientras ':
                cadena= self.fondo.lista_parser_final[self.fondo.lista_fina[a]]
                valor=cadena[8:len(cadena)-1]
                self.cadena_pinguino.append("while("+valor+"){")
            if self.fondo.lista_parser[self.fondo.lista_fina[a]]=='fin ':
                self.cadena_pinguino.append("}")

        self.cadena_pinguino.append("}")
                
        print self.cadena_pinguino
        fw=open("source/user.c","w")
        for a in range (len(self.cadena_pinguino)):
            fw.writelines(self.cadena_pinguino[a])
            fw.write("\n")
        fw.close()
            
    def carga(self):
        self.cadena_pinguino[:]=[]
        archivo=open("source/template.pde","r")
        for linea in archivo:
            self.cadena_pinguino.append(linea)
            
#        self.cadena_pinguino.append("void setup(void)")
#        self.cadena_pinguino.append("{")
#        self.cadena_pinguino.append("int i=0;")
#        self.cadena_pinguino.append("for(i=0;i<8;i++)")
#        self.cadena_pinguino.append("pinMode(i,OUTPUT);")
#        self.cadena_pinguino.append("}")
#        self.cadena_pinguino.append("void loop(void){")
#        self.cadena_pinguino.append("int i=0;")
