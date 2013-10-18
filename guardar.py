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
        if fondo.tipo_obj[i]==4:
            pickle.dump(fondo.tipo_obj[i],file)
            pickle.dump(fondo.objetos[i].ide,file)
            pickle.dump(fondo.objetos[i].posicion,file)
            pickle.dump(fondo.objetos[i].posicion2,file)
            pickle.dump(fondo.objetos[i].color,file)
            pickle.dump(fondo.objetos[i].texto,file)
            pickle.dump(fondo.objetos[i].pegado_a,file)
    file.close()
    return 0

# esto todavia falta de implementar
#        if fondo.tipo_obj[i]==4:
#            file.writelines("<objeto_cero>")
#            file.write("\n")
#            file.writelines(str(fondo.objetos[i].ide))
#            file.write("\n")
#            file.writelines(str(fondo.objetos[i].posicion))
#            file.write("\n")
#            file.writelines(str(fondo.objetos[i].posicion2))
#            file.write("\n")
#            file.writelines(str(fondo.objetos[i].color))
#            file.write("\n")
#            file.writelines(str(fondo.objetos[i].texto))
#            file.write("\n")
#            file.writelines("</objeto_cero>")
#            file.write("\n")



