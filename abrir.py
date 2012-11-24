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
        if cadena[valor]=="<fondo>\n":
            cadena3=cadena[valor+1].strip("()\n")
            cadena4=cadena3.split(',')
            color=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            band=cadena[valor+2]
            img=cadena[valor+3]
            fon.FONDO=color
            fon.band=int(band)
            
            fon.img=img.strip("\n")
            if int(band)==1:
                try:
                    fon.carga_img(img.strip("\n"))
                except Exception, ex:
                    try:
                        (filepath, filename) = os.path.split(ruta)
                        (filepath2, filename2) = os.path.split(img.strip("\n"))
                        print filepath+"/"+filename2
                        fon.carga_img(filepath+"/"+filename2)
                    except Exception, ex:
                        ventana.mensajes(2,"no se pudo abrir la imagen de fondo")
                        fon.band=0

                
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
            dato=cadena[valor+1].strip("()\n")
            print dato
            print "valor de la cadena " ,cadena[valor+4].strip("\n"),
            c1=comp_dat_arg(
                                float(x),
                                float(y),
                                fon.identificador_dat,
                                1,
                                cadena[valor+3].strip("\n"),
                                tupla1,
                                cadena[valor+6].strip("\n"),
                                dato,
                                7,
                                fon,
                                ventana,
                                textorender
                                )
            fon.identificador_dat+=1
            fon.datos.add(c1)
            fon.objetos_datos.append(c1)
            fon.tipo_obj_datos.append(7)
        if cadena[valor]=="<objeto_dato_img>\n":
            dato=cadena[valor+1].strip("()\n")
            cadena1= cadena[valor+3].strip("()\n")
            cadena2=cadena1.split(',')
            x,y=cadena2
            cadena3=cadena[valor+5].strip("()\n")
            cadena4=cadena3.split(',')
            tupla1=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            c1=comp_dat_arg(
                                float(x),
                                float(y),
                                fon.identificador_dat,
                                0,
                                cadena[valor+4].strip("\n"),
                                tupla1,
                                cadena[valor+7].strip("\n"),
                                dato,
                                6,
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
        if cadena[valor]=="<objeto_cero>\n":
            cadena1= cadena[valor+2].strip("()\n")
            cadena2=cadena1.split(',')
            x,y=cadena2
            cadenap= cadena[valor+3].strip("()\n")
            cadenap2=cadenap.split(',')
            x1,y1=cadenap2
            cadena3=cadena[valor+4].strip("()\n")
            cadena4=cadena3.split(',')
            tupla1=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
            dato=cadena[valor+1].strip("()\n")
            fon.identificador+=1
            c1=componente_cero_arg (
                                float(x),
                                float(y),
                                fon.identificador,
                                tupla1,
                                "siguiente ",
                                fon,
                                ventana,
                                textorender
                                )
            fon.componentes.add(c1)
            fon.objetos.append(c1)
            fon.tipo_obj.append(4)
            fon.objetos[fon.identificador-1].posicion2=(
                                                        float(x1),
                                                        float(y1)
                                                        )
