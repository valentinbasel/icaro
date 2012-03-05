#!/usr/bin/python
# -*- coding: utf-8 -*-
import gtk
import os
def nuevo(fon):
    fon.componentes.empty()
    fon.datos.empty()
    fon.lista_cm=[]
    fon.lista_ch=[]
    fon.lista_ordenada=[]
    fon.lista_fina=[]
    fon.lista_ch_dato=[]
    fon.lista_ch_dato2=[]
    fon.identificador=1
    fon.identificador_dat=0
    fon.identificador_dat2=0
    fon.lista_valor_datos=[]
    fon.lista_valor_datos2=[]
    fon.lista_parser=[]
    fon.lista_parser_final=[]
    fon.lista_cm.append((0,0,0,0))
    fon.lista_ch.append((0,0,0,0))
    fon.lista_ch_dato.append((0,0,0,0))
    fon.lista_valor_datos2.append("0")
    fon.lista_ordenada.append(0)
    fon.lista_fina.append(0)
    fon.lista_parser.append("")
    fon.lista_parser.append("")
    fon.lista_parser_final.append("")
    fon.lista_parser_final.append("")
    fon.identificador=1
    fon.identificador_dat=0
    fon.identificador_dat2=0
    print "nuevo",fon.lista_parser_final
