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
#import gtk
import os
import pickle
from componente import *


def abrir(diccio, ruta, fon, ventana):
    # Ahora uso pickle para guardar los objectos
    file = open(ruta, "r")
    # La lista_auxiliar guarda los valores del tam
    # de objetos_datos y de objetos
    lista_auxiliar = pickle.load(file)
    obj_inic_pos = pickle.load(file)
    fon.objetos[0].posicion = obj_inic_pos
    fon_lto = pickle.load(file)
    fon.lista_ordenada = fon_lto
    # print fon.lista_ordenada
    for obj_dato in range(lista_auxiliar[0]):
        obj_ide = pickle.load(file)
        obj_pos = pickle.load(file)
        obj_txt = pickle.load(file)
        obj_col = pickle.load(file)
        obj_mod = pickle.load(file)
        obj_vnm = pickle.load(file)
        obj_cdi = pickle.load(file)
        obj_cdf = pickle.load(file)
        obj_img = pickle.load(file)
        obj_tip = pickle.load(file)
        obj_mod = pickle.load(file)
        obj_pg2 = pickle.load(file)
        obj_pa2 = pickle.load(file)
        obj_peg = pickle.load(file)
        obj_pea = pickle.load(file)
        obj_peb = pickle.load(file)
        obj_img = os.path.basename(obj_img)
        c1 = comp_dat_arg(
            obj_pos[0],
            obj_pos[1],
            fon.identificador_dat,
            obj_mod,
            obj_txt,
            obj_col,
            obj_vnm,
            obj_img,
            obj_tip,
            fon,
            ventana
        )
        c1.pegado2 = obj_pg2
        c1.pegado_a2 = obj_pa2
        c1.pegado = obj_peg
        c1.pegado_a = obj_pea
        c1.pegado_b = obj_peb
        fon.identificador_dat += 1
        fon.objetos_datos.append(c1)
        fon.tipo_obj_datos.append(obj_tip)

    for i in range(1, lista_auxiliar[1]):
        try:
            obj_tip = pickle.load(file)
        except:
            return 0

        if obj_tip == 1:
            obj_pos = pickle.load(file)
            obj_imi = pickle.load(file)
            obj_arg = pickle.load(file)
            obj_ide = pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)
            fon.identificador += 1
            c1 = componente(
                obj_pos[0],
                obj_pos[1],
                fon.identificador,
                int(obj_arg),
                obj_col,
                obj_txt,
                fon,
                ventana
            )
            c1.pegado = 1
            c1.pegado_a = obj_pga
            fon.objetos.append(c1)
            fon.tipo_obj.append(obj_tip)
        if obj_tip == 4:
            obj_ide = pickle.load(file)
            obj_pos = pickle.load(file)
            obj_pos2 = pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)

            fon.identificador += 1
            c1 = componente_cero_arg(
                obj_pos[0],
                obj_pos[1],
                fon.identificador,
                obj_col,
                obj_txt,
                fon,
                ventana
            )
            c1.pegado = 1
            c1.pegado_a = obj_pga
            c1.posicion2 = obj_pos2
            fon.objetos.append(c1)
            fon.tipo_obj.append(obj_tip)
            # fon.lista_ordenada.append(0)
        if obj_tip == 5:
            obj_ide = pickle.load(file)
            obj_pos = pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)
            obj2_pos = pickle.load(file)
            obj2_pga = pickle.load(file)
            fon.identificador += 1
            c1 = componente_bloque_uno(
                obj_pos[0],
                obj_pos[1],
                fon.identificador,
                obj_col,
                obj_txt,
                fon,
                ventana
            )
            fon.objetos.append(c1)
            c1.pegado = 1
            c1.pegado_a = obj_pga
            fon.identificador += 1
            c1 = componente_bloque_dos(
                obj2_pos[0],
                obj2_pos[1],
                fon.identificador,
                obj_col,
                "fin ",
                fon,
                ventana
            )
            fon.objetos.append(c1)
            c1.pegado = 1
            c1.pegado_a = obj2_pga
            fon.tipo_obj.append(5)
            fon.tipo_obj.append(0)

    file.close()
    return 0

#        if cadena[valor]=="<objeto_cero>\n":
#            cadena1= cadena[valor+2].strip("( )\n")
#            cadena2=cadena1.split(',')
#            x,y=cadena2
#            cadenap= cadena[valor+3].strip("( )\n")
#            cadenap2=cadenap.split(',')
#            x1,y1=cadenap2
#            cadena3=cadena[valor+4].strip("( )\n")
#            cadena4=cadena3.split(',')
#            tupla1=(int(cadena4[0]),int(cadena4[1]),int(cadena4[2]))
#            dato=cadena[valor+1].strip("( )\n")
#            fon.identificador+=1
#            c1=componente_cero_arg (
#                                float(x),
#                                float(y),
#                                fon.identificador,
#                                tupla1,
#                                "siguiente",
#                                fon,
#                                ventana
#                                )
#            fon.objetos.append(c1)
#            fon.tipo_obj.append(4)
#            fon.objetos[fon.identificador-1].posicion2=(
#                                                        float(x1),
#                                                        float(y1)
#                                                        )
