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
#

#import time
#import apicaro
#import pap
#import util
from v_plotter.cinematica import VPLOTTER
class ROBOT(VPLOTTER):
    """
    La clase ROBOT, contiene las instrucciones para iniciar y mover
    el DRAWBOT.
    Hereda los atributos de la clase puerto de apicaro.
    """

    def __init__ (self):
        pass

    def derecha(self,angulo):
        print ("giro a la derecha ", angulo," grados")
        self._O=self._O-angulo

    def izquierda(self,angulo):
        print ("giro a la izquierda ", angulo," grados")
        self._O=self._O+angulo

    def adelante(self,R):
        print ("avanzo ",R," pasos")
        puntos=self.mover(R,self._O)
        for a in range(1,len(puntos)):
            x0,y0=puntos[a-1]
            x,y=puntos[a]
            xf=x-x0
            yf=y-y0
            if yf!=0:
                self.yy(yf)
            if xf!=0:
                self.xx(xf)

    def atras(self,R):
        print ("retrocedo ",R," pasos")
        R=R*-1
        puntos=self.mover(R,self._O)
        for a in range(1,len(puntos)):
            x0,y0=puntos[a-1]
            x,y=puntos[a]
            xf=x-x0
            yf=y-y0
            if yf!=0:
                self.yy(yf)
            if xf!=0:
                self.xx(xf)




