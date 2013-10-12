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
import pickle
def guardar(obj,ruta,fondo):
    file=open(ruta,"w")
    list_auxiliar=[len(fondo.objetos_datos),len(fondo.objetos)]
    pickle.dump(list_auxiliar,file)
    pickle.dump(fondo.objetos[0].posicion,file)
    pickle.dump(fondo.lista_ordenada,file)
    for i in range (len(fondo.objetos_datos)):
        pickle.dump(fondo.objetos_datos[i].ide,file)
        pickle.dump(fondo.objetos_datos[i].posicion,file)
        pickle.dump(fondo.objetos_datos[i].texto,file)
        pickle.dump(fondo.objetos_datos[i].color,file)
        pickle.dump(fondo.objetos_datos[i].modificable,file)
        pickle.dump(fondo.objetos_datos[i].valor_cadena_no_mod,file)
        pickle.dump(fondo.objetos_datos[i].cadena_intermedia,file)
        pickle.dump(fondo.objetos_datos[i].cadena_final,file)
        pickle.dump(fondo.objetos_datos[i].imagen,file)
        pickle.dump(fondo.objetos_datos[i].tipo,file)
        pickle.dump(fondo.objetos_datos[i].modificable,file)
        pickle.dump(fondo.objetos_datos[i].pegado2,file)
        pickle.dump(fondo.objetos_datos[i].pegado_a2,file)
        pickle.dump(fondo.objetos_datos[i].pegado,file)
        pickle.dump(fondo.objetos_datos[i].pegado_a,file)
        pickle.dump(fondo.objetos_datos[i].pegado_b,file)
    for i in range (1,len(fondo.objetos)):
        if fondo.tipo_obj[i]==1:
            pickle.dump(fondo.tipo_obj[i],file)
            pickle.dump(fondo.objetos[i].posicion,file)
            pickle.dump(fondo.objetos[i].imagenintermedia,file)
            pickle.dump(fondo.objetos[i].arg,file)
            pickle.dump(fondo.objetos[i].ide,file)
            pickle.dump(fondo.objetos[i].color,file)
            pickle.dump(fondo.objetos[i].texto,file)
            pickle.dump(fondo.objetos[i].pegado_a,file)
        if fondo.tipo_obj[i]==5:
            pickle.dump(fondo.tipo_obj[i],file)
            pickle.dump(fondo.objetos[i].ide,file)
            pickle.dump(fondo.objetos[i].posicion,file)
            pickle.dump(fondo.objetos[i].color,file)
            pickle.dump(fondo.objetos[i].texto,file)
            pickle.dump(fondo.objetos[i].pegado_a,file)
            pickle.dump(fondo.objetos[i+1].posicion,file)
            pickle.dump(fondo.objetos[i+1].pegado_a,file)

    return 0






            
            
            
            

    print "-------------------"
    print "tamaño obj datos",len(fondo.tipo_obj_datos)
    print "datos",fondo.objetos_datos

    print "tamaño obj",len(fondo.tipo_obj)
    print "obj",fondo.objetos
    print "-------------------"
    file.writelines("<fondo>")
    file.write("\n")
    file.writelines(str(fondo.FONDO))
    file.write("\n")
    file.writelines(str(fondo.band))
    file.write("\n")
    file.writelines(str(fondo.img))
    file.write("\n")
    file.writelines("</fondo>")
    file.write("\n")
    file.writelines("<objeto_inicial>")
    file.write("\n")
    file.writelines(str(fondo.objetos[0].posicion))
    file.write("\n")

    file.writelines("</objeto_inicial>")
    file.write("\n")

    for i in range(len(fondo.objetos_datos)):
        print "este es el tamañno del obj datos",len(fondo.tipo_obj_datos)
        if fondo.tipo_obj_datos[i]==7:
            file.writelines("<objeto_dato>")
            file.write("\n")
            file.writelines(str(fondo.objetos_datos[i].ide))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].posicion))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].texto))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].color))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].modificable))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].valor_cadena_no_mod))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].cadena_intermedia))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].cadena_final))
            file.write("\n")

            file.writelines("</objeto_dato>")
            file.write("\n")

        if fondo.tipo_obj_datos[i]==6:
            file.writelines("<objeto_dato_img>")
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].imagenintermedia))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].ide))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].posicion))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].texto))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].color))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].modificable))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].valor_cadena_no_mod))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].cadena_intermedia))
            file.write("\n")

            file.writelines(str(fondo.objetos_datos[i].cadena_final))
            file.write("\n")

            file.writelines("</objeto_dato_img>")
            file.write("\n")
    for i in range(len(fondo.tipo_obj)):
        print fondo.tipo_obj
        print i

        if fondo.tipo_obj[i]==4:
            file.writelines("<objeto_cero>")
            file.write("\n")


            file.writelines(str(fondo.objetos[i].ide))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].posicion))
            file.write("\n")
            file.writelines(str(fondo.objetos[i].posicion2))
            file.write("\n")
            file.writelines(str(fondo.objetos[i].color))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].texto))
            file.write("\n")

            file.writelines("</objeto_cero>")
            file.write("\n")

        if fondo.tipo_obj[i]==5:
            file.writelines("<objeto_bloque>")
            file.write("\n")


            file.writelines(str(fondo.objetos[i].ide))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].posicion))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].color))
            file.write("\n")
            file.writelines(str(fondo.objetos[i].texto))
            file.write("\n")
            file.writelines(str(fondo.objetos[i+1].posicion))
            file.write("\n")
            file.writelines("</objeto_bloque>")
            file.write("\n")
        if fondo.tipo_obj[i]==1:
            print " error:" , i
            file.writelines("<objeto_componente>")
            file.write("\n")

            file.writelines(str(fondo.objetos[i].imagenintermedia))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].arg))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].ide))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].posicion))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].color))
            file.write("\n")

            file.writelines(str(fondo.objetos[i].texto))
            file.write("\n")

            file.writelines("</objeto_componente>")
            file.write("\n")

    file.close()

