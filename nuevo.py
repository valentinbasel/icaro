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
def nuevo(fon):
    fon.objetos=[]
    fon.objetos_datos=[0]
    fon.tipo_obj=[0]
    fon.tipo_obj_datos=[0]

    fon.lista_ordenada=[]
    fon.lista_fina=[]
    fon.identificador=1
    fon.identificador_dat=1
    fon.identificador_dat2=1
    fon.lista_valor_datos=[]
    fon.lista_valor_datos2=[]
    #~ fon.tipo_obj=[0]
    #~ fon.tipo_obj_datos=[0]
    #~ fon.objetos=[0]
    #~ fon.objetos_datos=[0]
    fon.componentes.empty()
    fon.datos.empty()
    #~ fon.lista_cm=[]
    #~ fon.lista_ch=[]
    #~ fon.lista_ordenada=[]
    #~ fon.lista_fina=[]
    #~ fon.lista_ch_dato=[]
    #~ fon.lista_ch_dato2=[]
    #~ fon.identificador=1
    #~ fon.identificador_dat=1
    #~ fon.identificador_dat2=0
    #~ fon.lista_valor_datos=[]
    #~ fon.lista_valor_datos2=[]
    #~ fon.lista_parser=[]
    #~ fon.lista_parser_final=[]
    #~ fon.lista_cm.append((0,0,0,0))
    #~ fon.lista_ch.append((0,0,0,0))
    #~ fon.lista_ch_dato.append((0,0,0,0))
    #~ fon.lista_ch_dato2.append((0,0,0,0))
#~ 
    #~ fon.lista_valor_datos2.append("0")
    #~ fon.lista_ordenada.append(0)
    #~ fon.lista_fina.append(0)
    #~ fon.lista_parser.append("")
    #~ fon.lista_parser.append("")
    #~ fon.lista_parser_final.append("")
    #~ fon.lista_parser_final.append("")
    fon.lista_ordenada.append(0)
    print "nuevo",fon.identificador_dat
