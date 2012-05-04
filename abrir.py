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
import gtk
import os
from componente import *
def abrir(diccio,ruta,fon,ventana,textorender):
    file=open(ruta,"r")
    cadena=file.readlines()
    tupla=(0,0,0,0)
    for valor in range(len(cadena)):
        #print valor
        if cadena[valor]=="<objeto_inicial>\n":
            cadena1= cadena[valor+1].strip("()\n")
            cadena2=cadena1.split(',')
            x,y=cadena2
            fon.objetos[0].posicion=float(x),float(y)
        if cadena[valor]=="<objeto_dato>\n":
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
            fon.tipo_obj_datos.append(7)
        if cadena[valor]=="<objeto_dato_img>\n":
            # hay que parsear asi
            # x,y,identidad,mod,texto,color,val_no_mod,img,fondo,ventana,textorender

            #print cadena[valor+1]#x,y
            dato=cadena[valor+1].strip("()\n")
            cadena1= cadena[valor+3].strip("()\n")
            cadena2=cadena1.split(',')
            x,y=cadena2
            cadena3=cadena[valor+5].strip("()\n")
            cadena4=cadena3.split(',')
            tupla1=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            print "identificador",fon.identificador_dat,
            c1=comp_dat_arg_img(
                                float(x),
                                float(y),
                                fon.identificador_dat,
                                0,
                                cadena[valor+4].strip("\n"),
                                tupla1,
                                cadena[valor+7].strip("\n"),
                                dato,
                                fon,
                                ventana,
                                textorender
                                )
            fon.identificador_dat+=1
            fon.datos.add(c1)
            fon.objetos_datos.append(c1)
            fon.tipo_obj_datos.append(6)
        if cadena[valor]=="<objeto_componente>\n":
            cadena1= cadena[valor+4].strip("()\n")
            cadena2=cadena1.split(',')
            
            x,y=cadena2
            
            argumento=cadena[valor+2].strip("()\n")
            fon.identificador+=1
            cadena3=cadena[valor+5].strip("()\n")
            cadena4=cadena3.split(',')
            color=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            text=cadena[valor+1].strip("()\n")
            text=text+" "
            print "texto", text
            c1=componente   (
                            float(x),
                            float(y),
                            fon.identificador,
                            int(argumento),
                            color,
                            text,
                            fon,
                            ventana,
                            textorender
                            )
            fon.componentes.add(c1)

            fon.objetos.append(c1)
            fon.tipo_obj.append(1)

        if cadena[valor]=="<objeto_bloque>\n":
            cadena1= cadena[valor+2].strip("()\n")
            cadena2=cadena1.split(',')
            
            x,y=cadena2
            cadena1fin= cadena[valor+5].strip("()\n")
            cadena2fin=cadena1fin.split(',')
            
            xfin,yfin=cadena2fin

            
            cadena3=cadena[valor+3].strip("()\n")
            cadena4=cadena3.split(',')
            color=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            text=cadena[valor+4].strip("()\n")
            #text=text+" "
            fon.identificador+=1
            c1=componente_bloque_uno(
                                            float(x),
                                            float(y),
                                            fon.identificador,
                                            color,
                                            text,
                                            fon,
                                            ventana,
                                            textorender
                                            )
            fon.componentes.add(c1)
            fon.objetos.append(c1)
            fon.identificador +=1
            c1=componente_bloque_dos    (
                                        float(xfin),
                                        float(yfin),
                                        fon.identificador,
                                        color,
                                        "fin ",
                                        fon,
                                        ventana,
                                        textorender
                                        )
            fon.componentes.add(c1)
            fon.objetos.append(c1)
            fon.tipo_obj.append(5)
            fon.tipo_obj.append(0)
                #~ 11:["si ",5,(200,190,0),"fin "],
#~ 
#~ <objeto_bloqe>
#~ 2
#~ (20, 100)
#~ (200, 190, 0)
#~ si 
#~ </objeto_bloque>
