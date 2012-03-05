#!/usr/bin/python
# -*- coding: utf-8 -*-
import gtk
import os
from componente import *
def abrir(diccio,ruta,fon,ventana,textorender):
    file=open(ruta,"r")
    cadena=file.readlines()
    tupla=(0,0,0,0)
    for valor in range(len(cadena)):
        #print valor
        if cadena[valor]=="<objeto_dato>\n":
            # hay que parsear asi
            # x,y,identidad,mod,texto,color,val_no_mod,img,fondo,ventana,textorender

            #print cadena[valor+1]#x,y
            cadena1= cadena[valor+2].strip("()\n")
            cadena2=cadena1.split(',')
            x,y=cadena2
            cadena3=cadena[valor+4].strip("()\n")
            cadena4=cadena3.split(',')
            tupla1=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            c1=comp_dat_arg(
                                float(x),
                                float(y),
                                fon.identificador_dat,
                                1,
                                cadena[valor+3].strip("\n"),
                                tupla1,
                                cadena[valor+6].strip("\n"),
                                fon,
                                ventana,
                                textorender
                                )
            fon.identificador_dat+=1
            fon.datos.add(c1)
            fon.objetos_datos.append(c1)
            fon.tipo_obj.append(7)

        if cadena[valor]=="<objeto_componente>\n":
#            print cadena[valor]
#            print cadena[valor+1]
#            print cadena[valor+2]
#            print cadena[valor+3]
#            print cadena[valor+4]
#            print cadena[valor+5]
#            print cadena[valor+6]
            pass
            

# x,y,identidad,mod,texto,color,val_no_mod,img,fondo,ventana,textorender
#20:["servo1 ",6,0,(100,190,90),"srv1 ","10"], 
#            c1=comp_dat_arg   (
#                            self.mousexy[0],
#                            self.mousexy[1],
#                            self.fondo.identificador_dat,
#                            self.diccionario[b][2],
#                            self.diccionario[b][4],#
 #                           self.diccionario[b][3],
 ##                           self.diccionario[b][5],
 #                           self.fondo,
#                            self,
 #                           self.textorender
 #                           )
#<objeto_dato>
#2
#(318, 298)
#srv1 
#(100, 190, 90)
#0
#10
#
#10
#</objeto_dato>
