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

import os,sys

# revizar parseador, reescribir
def parseador(lista,argumentos,texto,fondo,ventana):
    cadena=[]
    valor=[]
    parser_final=""
    n=0
    xml="<"+texto.strip(' ')+">"
    xmlfin="</"+texto.strip(' ')+">"
    b=0
    #print ventana.valor_datos_comp[texto]
    for txt in ventana.valor_datos_comp[texto]:
        if txt=="valor" and argumentos<>0:
            parser_final=parser_final+str(lista[n])
            n=n+1
        else:
            parser_final=parser_final+txt
    return parser_final+"\n"
#    while b !=(len(cadena_final)):
#        if cadena_final[b]==xml:
#            b=b+1
#            while cadena_final[b]!=xmlfin:
#                if cadena_final[b]=="valor" and argumentos<>0:
#                    print parser_final
#                    print lista[n]
#                    parser_final=parser_final+str(lista[n])
#                    print parser_final
#                    n=n+1
#                else:
#                    parser_final=parser_final+cadena_final[b]
#                b=b+1
#        b=b+1
#    return parser_final+"\n"
    

def crear_archivo(fondo, ventana):
    dir_conf=os.path.expanduser('~') + "/.icaro/firmware/"
    #cadena_final=[]
    #f=open(sys.path[0] +"/diccionario.xml","r")
    #cadena=f.readlines()
    #for a in cadena:
    #    cadena_final.append(a.strip("\n"))
    conectado=1
    #print "esta es la cadena final= ", cadena_final
    fondo.lista_fina=[]
    for a in range(len(fondo.lista_ordenada)):
        for a in range(len(fondo.lista_ordenada)):
            if fondo.lista_ordenada[a]==conectado:
                fondo.lista_fina.append(conectado)
                conectado=a
    fondo.lista_fina.append(conectado)
    fondo.lista_fina.remove(1)
    #~ print fondo.lista_fina
    for a in fondo.lista_fina:
       
        for b in range(len(fondo.objetos)):
            if fondo.objetos[b].ide==a:
                caden=parseador(
                            fondo.objetos[b].lista_valores,
                            fondo.objetos[b].arg,
                            fondo.objetos[b].texto,
                            fondo,ventana
                            )
                #cadena_final
                if caden.find("incluir")==0:
                    fun=caden.split(",")
                    incluir(fondo,ventana,fun)
                else:
                    ventana.cadena_pinguino.append(caden)
    ventana.cadena_pinguino.append("}")
    
    fw=open(dir_conf +"/source/user.c","w")
    for a in range (len(ventana.cadena_pinguino)):
        fw.writelines(ventana.cadena_pinguino[a])
    fw.close()

def funcion(fondo,ventana,ruta):
    cadena_funcion=[]
    cadena_final=[]
    f=open(sys.path[0] +"/diccionario.xml","r")
    cadena=f.readlines()
    for a in cadena:
        cadena_final.append(a.strip("\n"))
    conectado=1
    fondo.lista_fina=[]
    print fondo.lista_ordenada

    for a in range(len(fondo.lista_ordenada)):
        for a in range(len(fondo.lista_ordenada)):
            print fondo.lista_ordenada[a]
            if fondo.lista_ordenada[a]==conectado:
                fondo.lista_fina.append(conectado)
                conectado=a
    fondo.lista_fina.append(conectado)
    fondo.lista_fina.remove(1)
    print "--------------------",fondo.lista_fina
    for a in fondo.lista_fina:
        for b in range(len(fondo.objetos)):
            if fondo.objetos[b].ide==a:
                caden=parseador(fondo.objetos[b].lista_valores,fondo.objetos[b].arg,fondo.objetos[b].texto,fondo,ventana)
                cadena_funcion.append(caden)
    archivo = os.path.basename(ruta)
    archivostrip=archivo.split(".")

    file=open(ruta,"w")
    file.writelines("void " + archivostrip[0] +"(){\n")
    for cad in cadena_funcion:
        file.writelines(cad)
    file.writelines("}\n")
def incluir(fondo,ventana,fun):
    if ventana.archivo=="":
        ventana.mensajes(2,"debes grabar el archivo primero para poder usar llamadas a funciones")
        return 0
    else:
        directorio=os.path.dirname(ventana.archivo)
        ruta=directorio+"/"+str(fun[1].strip(" \n"))+".func"
        print ruta
        file=open(ruta,"r")
        for cadena in range(len(ventana.cadena_pinguino)):
            if ventana.cadena_pinguino[cadena]=="/*funciones*/\n":
                cadenarch=file.readlines()
                a=1
                for val in cadenarch:
                    ventana.cadena_pinguino.insert(cadena+a,val)
                    a=a+1

