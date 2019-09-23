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
    file = open(ruta, "rb")
    # La lista_auxiliar guarda los valores del tam
    # de objetos_datos y de objetos
    lista_auxiliar = pickle.load(file)
    obj_inic_pos = pickle.load(file)
    fon.objetos[0].posicion = obj_inic_pos
    fon_lto = pickle.load(file)
    fon.lista_ordenada = fon_lto

    for obj_dato in range(lista_auxiliar[0]):
        pickle.load(file)
        obj_pos = pickle.load(file)
        obj_txt = pickle.load(file)
        obj_col = pickle.load(file)
        obj_mod = pickle.load(file)
        obj_vnm = pickle.load(file)
        pickle.load(file)
        pickle.load(file)
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
            pickle.load(file)
            obj_arg = pickle.load(file)
            pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)
            obj_vivo = pickle.load(file)
            obj_pegado=pickle.load(file)
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
            c1.vivo=obj_vivo
            c1.pegado = 1
            c1.pegado_a = obj_pga
            fon.objetos.append(c1)
            fon.tipo_obj.append(obj_tip)
        if obj_tip == 4:
            pickle.load(file)
            obj_pos = pickle.load(file)
            obj_pos2 = pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)
            obj_vivo = pickle.load(file)

            obj_pegado=pickle.load(file)
            fon.identificador += 1
            #fon.identificador += 1
            #fon.identificador += 1
            c1 = componente_cero_arg(
                obj_pos[0],
                obj_pos[1],
                fon.identificador,
                obj_col,
                obj_txt,
                fon,
                ventana
            )
            c1.vivo=obj_vivo
            c1.pegado = obj_pegado
            c1.pegado_a = obj_pga
            c1.posicion2 = obj_pos2
            fon.objetos.append(c1)
            fon.tipo_obj.append(obj_tip)
        if obj_tip == 5:
            pickle.load(file)
            obj_pos = pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)
            obj_vivo = pickle.load(file)

            obj_pegado=pickle.load(file)
            fon.identificador += 1
            #fon.identificador += 1
            #fon.identificador += 1
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
            fon.tipo_obj.append(obj_tip)

            c1.vivo=obj_vivo

            c1.pegado = obj_pegado
            c1.pegado_a = obj_pga
        if obj_tip == 3:
            pickle.load(file)
            obj_pos = pickle.load(file)
            obj_col = pickle.load(file)
            obj_txt = pickle.load(file)
            obj_pga = pickle.load(file)
            obj_vivo = pickle.load(file)

            obj_pegado=pickle.load(file)
            fon.identificador += 1
            #fon.identificador += 1
            #fon.identificador += 1
            c1 = componente_bloque_dos(
                obj_pos[0],
                obj_pos[1],
                fon.identificador,
                obj_col,
                obj_txt,
                fon,
                ventana
            )
            fon.objetos.append(c1)
            fon.tipo_obj.append(obj_tip)
            c1.vivo=obj_vivo
            c1.pegado = obj_pegado
            c1.pegado_a = obj_pga
    file.close()
    return 0

