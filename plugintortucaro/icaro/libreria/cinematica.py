#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
# cinematica.py
#
# Copyright © 2017 Valentin Basel <valentinbasel@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

"""
cinematica inversa para robots plotters V (Vplot).
La cinematica de estos robots es relativamente sencilla, aunque tienen un 
margen de deformacion por las poleas, son platafomras faciles de fabricar y con
bastante precision como para hacer dibujos sencillos.
"""
import time
import apicaro
import pap
import util



class VPLOTTER(apicaro.puerto,util.UTIL):

    """Docstring for MyClass. """

    velocidad=0.02
    __motor1=pap.MOTOR([1,2,4,8])
    __motor2=pap.MOTOR([16,32,64,128])
    def __init__(self):
        """
        Valores globales del robot, como su velocidad o los
        paso que puede dar cada motor PAP
        """


    def yy(self,pasos):
        """
        Mueve los motores 1 y 2 N-pasos para subir/bajar el
        cabezal.
        motor_1 = 1
        motor_2 = 1
        """
        if pasos==0:return
        if pasos>0:
            #print "subir: ", pasos, " pasos"
            for a in range(abs(pasos)):
                a=self.__motor1.girar(1)
                b=self.__motor2.girar(1)
                self.activar(a+b)
                time.sleep(self.velocidad)
        else:
            #print "bajar: ", pasos, " pasos"
            for a in range(abs(pasos)):
                a=self.__motor1.girar(-1)
                b=self.__motor2.girar(-1)
                self.activar(a+b)
                time.sleep(self.velocidad)
        self.activar(0)
        return 0

    def xx (self,pasos):
        """
        Mueve el cabezal a la derecha
        motor1 = -1
        motor2 = 1
        """
        if pasos==0:return

        if pasos>0:
            #print "derecha: ", pasos, " pasos"
            for a in range(abs(pasos)):
                a=self.__motor1.girar(-1)
                b=self.__motor2.girar(1)
                self.activar(a+b)
                time.sleep(self.velocidad)
        else:
            #print "izquierda: ", pasos, " pasos"
            for a in range(abs(pasos)):
                a=self.__motor1.girar(1)
                b=self.__motor2.girar(-1)
                self.activar(a+b)
                time.sleep(self.velocidad)
        self.activar(0)
        return 0

    def apagar(self):
        """
        Pone los bits del puerto UNL2803 a 0.
        """
        self.activar(0)
        return 0

    def bajar_lapiz(self):
        """
        Baja el servo
        servo1 = 30
        """
        print "bajo el lapiz"
        self.activar_servo(1, 30)
        time.sleep(1)
        return 0

    def levantar_lapiz(self):
        """
        Levanta el servo
        servo1 = 128
        """
        print "subo el lapiz"
        self.activar_servo(1,128)
        time.sleep(1)
        return 0

#     def girar_m1 (self,pasos):
        # """
        # mueve el motor 1
        # """
        # if pasos>0:
            # print "motor 1 girar: ", pasos, " pasos"
            # for a in range(abs(pasos)):
                # a=self.motor1.girar(1)
                # self.activar(a)
                # time.sleep(self.velocidad)
        # else:
            # print "motor 1 girar: ", pasos, " pasos"
            # for a in range(abs(pasos)):
                # a=self.motor1.girar(-1)
                # self.activar(a)
                # time.sleep(self.velocidad)
        # self.activar(0)
        # return 0

    # def girar_m2 (self,pasos):
        # """
        # mueve el motor 2
        # """
        # if pasos>0:
            # print "motor 1 girar: ", pasos, " pasos"
            # for a in range(abs(pasos)):
                # a=self.motor2.girar(1)
                # self.activar(a)
                # time.sleep(self.velocidad)
        # else:
            # print "motor 1 girar: ", pasos, " pasos"
            # for a in range(abs(pasos)):
                # a=self.motor2.girar(-1)
                # self.activar(a)
                # time.sleep(self.velocidad)
        # self.activar(0)
        # return 0


