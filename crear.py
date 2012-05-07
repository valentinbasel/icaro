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

import os

# revizar parseador, reescribir
def parseador(lista,argumentos,texto,cadena_final,fondo,ventana):
    cadena=[]
    valor=[]
    parser_final=""
    n=0
    xml="<"+texto.strip(' ')+">"
    xmlfin="</"+texto.strip(' ')+">"
    b=0
    while b !=(len(cadena_final)):
        if cadena_final[b]==xml:
            b=b+1
            while cadena_final[b]!=xmlfin:
                if cadena_final[b]=="valor" and argumentos<>0:
                    print parser_final
                    print lista[n]
                    parser_final=parser_final+str(lista[n])
                    print parser_final
                    n=n+1
                else:
                    parser_final=parser_final+cadena_final[b]
                b=b+1
        b=b+1
    ventana.cadena_pinguino.append(parser_final)
def crear_archivo(fondo, ventana):
    cadena_final=[]
    f=open("diccionario.dat","r")
    cadena=f.readlines()
    for a in cadena:
        cadena_final.append(a.strip("\n"))

    #~ print "lista_cm ",fondo.lista_cm
    #~ print "lista_ch ", fondo.lista_ch
    #~ print "lista_ordenada ",fondo.lista_ordenada
    #~ print "lista_fina ",fondo.lista_fina
    #~ print "lista_ch_dato ",fondo.lista_ch_dato
    #~ print "lista_ch_dato2 " ,fondo.lista_ch_dato2
    #~ print "identificador ", fondo.identificador
    #~ print "identificador_dat ",fondo.identificador_dat
    #~ print "identificador_dat2 ",fondo.identificador_dat2

    conectado=1
    fondo.lista_fina=[]
    for a in range(len(fondo.lista_ordenada)):
        for a in range(len(fondo.lista_ordenada)):
            if fondo.lista_ordenada[a]==conectado:
                fondo.lista_fina.append(conectado)
                conectado=a
    fondo.lista_fina.append(conectado)
    fondo.lista_fina.remove(1)
    print fondo.lista_fina
    for a in fondo.lista_fina:
        for b in range(len(fondo.objetos)):
            if fondo.objetos[b].ide==a:
                print fondo.objetos[b].texto
                print fondo.objetos[b].lista_valores
                print fondo.objetos[b].arg
                parseador(fondo.objetos[b].lista_valores,fondo.objetos[b].arg,fondo.objetos[b].texto,cadena_final,fondo,ventana)

    #~ for a in range (len(fondo.lista_fina)-1):
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='robot ':
            #~ parseador(a,2,'robot ',cadena_final,fondo,ventana)
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='activar ':
            #~ parseador(a,2,'activar ',cadena_final,fondo,ventana)
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='pausa ':
            #~ parseador(a,1,'pausa ',cadena_final,fondo,ventana)
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='servo ':
            #~ parseador(a,2,'servo ',cadena_final,fondo,ventana)
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='servos ':
            #~ parseador(a,5,'servos ',cadena_final,fondo,ventana)
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='var ':
            #~ parseador(a,2,'var ',cadena_final,fondo,ventana)
#~
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='si ':
            #~ cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            #~ valor=cadena[3:len(cadena)]
            #~ ventana.cadena_pinguino.append("if ("+valor+"){")
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='mientras ':
            #~ cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            #~ valor=cadena[8:len(cadena)]
            #~ ventana.cadena_pinguino.append("while("+valor+"){")
        #~ if fondo.lista_parser[fondo.lista_fina[a]]=='fin ':
            #~ ventana.cadena_pinguino.append("}")
    ventana.cadena_pinguino.append("}")
        #~ #print ventana.cadena_pinguino
    fw=open("source/user.c","w")
    for a in range (len(ventana.cadena_pinguino)):
        fw.writelines(ventana.cadena_pinguino[a])
        fw.write("\n")
    fw.close()

