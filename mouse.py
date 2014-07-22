#! /usr/bin/env python
# -*- coding: utf-8 -*-
# 
#  mouse.py
#
#  Copyright © 2014 Valentin Basel <valentinbasel@gmail.com>
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#  
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#  
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.
#  
import componente

class MOUSE(componente.Formas):
    """docstring for MOUSE"""
    def __init__(self, fondo,ventana):
        self.fondo=fondo
        self.ventana=ventana
        self.conector_h=[0,0,40,10]
        self.conector_m = [0, 0, 20, 30] 
    def update(self):
        """docstring for update"""
        self.conector_h[0]= self.ventana.mousexy[0]
        self.conector_h[1]= self.ventana.mousexy[1]
        self.conector_m[0]= self.ventana.mousexy[0]
        self.conector_m[1]= self.ventana.mousexy[1]
        color=color_no_colicion=(255,255,255)
        color_colicion=(255,0,0)
        tip=self.ventana.tipo_componente
        if (self.ventana.diccionario[tip][1]==1 or 
            self.ventana.diccionario[tip][1]==5 or  
            self.ventana.diccionario[tip][1]==4):
            for a in range(len(self.fondo.objetos)):
                if (self.fondo.colliderect
                            (
                            self.conector_h, self.fondo.objetos[a].conector_m
                            )):
                    color=color_colicion
                    break
                else:
                    color=color_no_colicion
        if self.ventana.diccionario[tip][1]==6 or  self.ventana.diccionario[tip][1]==7:
            band=False
            for col in range(1,len(self.fondo.objetos)):
                if band==True:
                    break
                for con in self.fondo.objetos[col].lista_conector_h_datos:
                    #print con 
                    if (self.fondo.colliderect(self.conector_m, con)):
                        color=color_colicion
                        band=True
                        break
                    else:
                        color=color_no_colicion
                         
                    

        
        if self.ventana.puntero_seleccion_mouse==1:
            cuerpo=self.crear_poligono(
                                    self.ventana.diccionario[tip][2],
                                    self.ventana.diccionario[tip][0],
                                    self.ventana.diccionario[tip][1],
                                    )
            for x, y, w, h in cuerpo:
                self.fondo.draw(
                                self.ventana.mousexy[0] + x, 
                                self.ventana.mousexy[1] + y, 
                                w, 
                                h,
                                color,
                                self.ventana.cr
                                )
 

