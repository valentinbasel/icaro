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


class MOTOR():
    """ La clase MOTOR controla dos motores de paso conectados a las
    salidas del UNL2803.
    Hereda los atributos de la clase puerto de apicaro """
    def __init__ (self,__pasos_motor=[1,2,4,8]):
        """ Valores globales del robot, como su velocidad o los
        paso que puede dar cada motor PAP """
        self.m1=__pasos_motor
        self.pasos_motor=0
        self.maxima_cant_pasos=len(self.m1)

    def alta_definicion(self):
        """TODO: Docstring for alta_definicion.
        :returns: TODO

        """
        bobinas =  self.m1
        self.m1=[
                bobinas[0],
                bobinas[0]+bobinas[1],
                bobinas[1],
                bobinas[1]+bobinas[2],
                bobinas[2],
                bobinas[2]+bobinas[3],
                bobinas[3],
                bobinas[0]+bobinas[3]
                ]
        self.maxima_cant_pasos=len(self.m1)
        return True

    def __pasos(self,a):
        if a==1:
            self.pasos_motor=self.pasos_motor+1
            if self.pasos_motor==self.maxima_cant_pasos:
                self.pasos_motor=0
            if self.pasos_motor==-1:
                self.pasos_motor=self.maxima_cant_pasos-1
        if a==-1:
            self.pasos_motor=self.pasos_motor-1
            if self.pasos_motor==self.maxima_cant_pasos:
                self.pasos_motor=0
            if self.pasos_motor==-1:
                self.pasos_motor=self.maxima_cant_pasos-1
        return self.m1[self.pasos_motor]

    def girar (self,giro):
        """ Function doc """
        mot1=self.__pasos(giro)
        return mot1


