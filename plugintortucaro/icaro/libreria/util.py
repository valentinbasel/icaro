#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  drawbot.py
#  
#  Copyright 2016 valentin basel <valentinbasel@gmail.com>
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
from math import cos,sin,radians,degrees
from bresenhan import BRESENHAN

class UTIL(BRESENHAN):
    '''Clase con utilidades varias para conversion de valores polares a 
    cartesianos.

    '''
    _x0 = 0 # punto inicial x
    _y0 = 0 # punto inicial y
    _x = 0 # punto final x
    _y = 0 # punto final y
    _R = 0 # distancia polar
    _O = 0 # angulo polar
    
    def __init__(self):
        '''init doc

        '''
        pass
        
    def poner_a_cero(self):
        self._x = 0
        self._y = 0
        self._x0 = 0
        self._y0 = 0
        
    def convertir_polar_cart(self,R,O):
        self._x = int(self._x0+(R*round(cos(radians(O)),2)))
        self._y = int(self._y0+(R*round(sin(radians(O)),2)))
        #self._x0 = self._x
        #self._y0 = self._y
        return self._x , self._y

    def mover(self,R,O):
        self.convertir_polar_cart(R,O)
        puntos=self.obtener_lista([self._x0,self._y0],[self._x,self._y])
        self._x0=self._x
        self._y0=self._y
        return puntos