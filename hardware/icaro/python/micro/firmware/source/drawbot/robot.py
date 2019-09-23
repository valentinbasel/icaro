#!/usr/bin/env python
# -*- coding: utf-8 -*-

# Copyright © 2018 yourname

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
###############################################################################

import serial
import serial.tools.list_ports
import struct
import time
# Configuracion de los valores iniciales del puerto serie
# estos valores son los que necesita la placa icaro np03 para
# poder recibir informacion desde el puerto
# el valor de PUERTO es el que puede variar en funcion de la configuracion
# de la pc donde se conecte

#-- valores por defecto de configuracion


class DROBOT():

    """
    Apicar es una API para poder interactuar con el firmware Tortucaro.
    su funcion es la de preparar el puerto /devttyUSB o ttyACM para enviar
    y recibir datos.
    una ves inicializada la clase, hay que tener en cuenta lo siguiente:
    la variable PUERTO, es donde se carga el valor del dispositivo serie.
    por defecto es /dev/rfcomm0. cambiarla antes de usar la funcion iniciar()
    """
    PUERTO = '/dev/rfcomm0'  # valor inicial por defecto
    BAUDIOS = 9600
    BYTESIZE = 8
    PARITY = 'N'
    STOPBIT = 1
    TIMEOUT = None
    XONXOFF = True#False
    RTSCTS = True#False
    DSRDTR = True#False
    RS232 = serial.Serial()

    def __init__(self):
        pass




    def iniciar(self):
        """
        abre el puerto, setea todos los valores por defecto.
        sus variables por defecto son:
        PUERTO='/dev/rfcomm0' # valor inicial por defecto
        BAUDIOS=9600
        BYTESIZE=8
        PARITY='N'
        STOPBIT=1
        TIMEOUT=1
        XONXOFF=False
        RTSCTS=False
        DSRDTR=False
        RS232=serial.Serial()
        Retorna -True- si funciono, -False- si hubo un error.
        no lleva argumentos
        """
        self.RS232.port = self.PUERTO
        self.RS232.baudrate = self.BAUDIOS
        self.RS232.bytesize = self.BYTESIZE
        self.RS232.parity = self.PARITY
        self.RS232.stopbit = self.STOPBIT
        self.RS232.timeout = self.TIMEOUT
        self.RS232.xonxoff = self.XONXOFF
        self.RS232.rtscts = self.RTSCTS
        self.RS232.dsrdtr = self.DSRDTR
        self.RS232.exclusive = True
        self.RS232.open()

        return True

    def cerrar(self):
        """
        Cierra el puerto.
        retorna -True- si finciono. -False- por un error
        """
        try:
            self.RS232.close()
            return True
        except:
            return False

    def adelante(self,dato):
        buff=""
        if type(dato)== int:
            cad_dat='a'+str(dato)+';'
            self.enviar(cad_dat)
        else:
            return False
           
 

    def atras(self,dato):
        buff=""
        if type(dato)== int:
            cad_dat='t'+str(dato)+';'
            self.enviar(cad_dat)


    def derecha(self,dato):
        buff=""
        if type(dato)== int:
            cad_dat='d'+str(dato)+';'
            self.enviar(cad_dat)
        else:
            return False


    def izquierda(self,dato):
        buff=""
        if type(dato)== int:
            cad_dat='a'+str(dato)+';'
            self.enviar(cad_dat)
        else:
            return False

 
    def levantar_lapiz(self):
        self.enviar("l;")

    def bajar_lapiz(self):
        self.enviar("b;")



    def enviar (self,datos):
        """ Function doc """
        if self.RS232.isOpen():
            self.RS232.write(str.encode(datos))
            time.sleep(0.001)
            buff = self.RS232.read()
            print(buff)
            time.sleep(0.5)
            return True
        else:         
            return False         
