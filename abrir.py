#!/usr/bin/python
# -*- coding: utf-8 -*-
import gtk
import os

def abrir(diccio,ruta,fon):
    file=open(ruta,"r")
    cadena=file.readlines()
    tupla=(0,0,0,0)
    for valor in range(len(cadena)):
        if cadena[valor]=="<identificador>\n":
            fon.identificador=int(cadena[valor+1])
            print fon.identificador
            for n in range(fon.identificador):
                fon.lista_cm.append((0,0,0,0))
                fon.lista_ch.append((0,0,0,0))
                fon.lista_ordenada.append((0,0,0,0))
                fon.lista_fina.append((0,0,0,0))
                fon.lista_ch_dato.append((0,0,0,0))
                fon.lista_ch_dato2.append((0,0,0,0))
        if cadena[valor]=="<lista_cm>\n":
            valor=valor+1
            i=0
            while cadena[valor]<>"</lista_cm>\n":
                fon.lista_cm[i]=(int(cadena[valor]),
                                int(cadena[valor+1]),
                                int(cadena[valor+2]),
                                int(cadena[valor+3]))
                valor=valor+4
                i=i+1
        if cadena[valor]=="<lista_ch>\n":
            valor=valor+1
            i=0
            while cadena[valor]<>"</lista_ch>\n":
                fon.lista_ch[i]=(int(cadena[valor]),
                                int(cadena[valor+1]),
                                int(cadena[valor+2]),
                                int(cadena[valor+3]))
                valor=valor+4
                i=i+1
        if cadena[valor]=="<lista_ordenada>\n":
            valor=valor+1
            i=0
            while cadena[valor]<>"</lista_ordenada>\n":
                fon.lista_ordenada[i]=(int(cadena[valor]),
                                int(cadena[valor+1]),
                                int(cadena[valor+2]),
                                int(cadena[valor+3]))
                valor=valor+4
                i=i+1
        if cadena[valor]=="<lista_fina>\n":
            valor=valor+1
            i=0
            while cadena[valor]<>"</lista_fina>\n":
                fon.lista_fina[i]=(int(cadena[valor]),
                                int(cadena[valor+1]),
                                int(cadena[valor+2]),
                                int(cadena[valor+3]))
                valor=valor+4
                i=i+1
                
####
####  ojo, hay qe ver que tipo de dato lleva cada lista, no todas son tuplas
####

        if cadena[valor]=="<lista_ch_dato>\n":
            valor=valor+1
            i=0
            while cadena[valor]<>"</lista_ch_dato>\n":
                fon.lista_ch_dato[i]=(int(cadena[valor]),
                                int(cadena[valor+1]),
                                int(cadena[valor+2]),
                                int(cadena[valor+3]))
                valor=valor+4
                i=i+1
        if cadena[valor]=="<lista_ch_dato2>\n":
            valor=valor+1
            i=0
            while cadena[valor]<>"</lista_ch_dato2>\n":
                fon.lista_ch_dato2[i]=(int(cadena[valor]),
                                int(cadena[valor+1]),
                                int(cadena[valor+2]),
                                int(cadena[valor+3]))
                valor=valor+4
                i=i+1


