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


class puerto():

    """
    Apicar es una API para poder interactuar con el firmware Tortucaro.
    su funcion es la de preparar el puerto /devttyUSB o ttyACM para enviar
    y recibir datos.
    una ves inicializada la clase, hay que tener en cuenta lo siguiente:
    la variable PUERTO, es donde se carga el valor del dispositivo serie.
    por defecto es /dev/ttyACM0. cambiarla antes de usar la funcion iniciar()
    """
    PUERTO = '/dev/ttyACM0'  # valor inicial por defecto
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
        PUERTO='/dev/ttyUSB0' # valor inicial por defecto
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
        # if port<>None:
            # flag= self.prender_puerto(port)
            # return flag
        # else:
            # lista_port=serial.tools.list_ports.comports()
            # for cad in lista_port:
                # if cad[0].find("ACM")>-1:
                    # flag=self.prender_puerto(cad[0])
                    # if flag==True:
                        # return True
            # for a in range(10):
                # cad="/dev/rfcomm"+str(a)
                # flag=self.prender_puerto(cad)
                # time.sleep(0.2)
                # if flag==True:
                    # return True
        # return False

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

    def activar(self, valor):
        """
        la funcion activar envia el caracter -s- al puerto serie para
        preparar la placa
        icaro para leer el siguiente caracter (valor) y
        demultiplexarlo en sus 8 pines de salida.
        tiene un parametro -valor- que no puede superar los 255
        ej:
          .activar(10)
          retorna True o False
        """

        if self.RS232.isOpen():
            self.RS232.write(str.encode('s'))
            time.sleep(0.001)
            
            self.RS232.write(struct.pack('B', int(valor)))
            self.RS232.flush()
            time.sleep(0.001)
            return True
        else:
            
            return False

    def motor(self, valor):
        """
        envia el caracter -l- y el valor que se le pase como parametro.
        los valores que maneja son:
        1 = adelante
        2 = atras
        3 = izquierda
        4 = derecha
        5 = stop
        el valor que se le envia tiene que ser un string (entre dos comillas)

        """
        if self.RS232.isOpen():
            self.RS232.write(str.encode('l'))
            time.sleep(0.001)
            self.RS232.write(str.encode(str(valor)))
            self.RS232.flush()
            time.sleep(0.001)
            return True
        else:
            return False

    def leer_analogico(self, sensor):
        buff = ''

        if sensor > 8 or sensor < 1:
            return False
        try:
            self.RS232.write(str.encode("e"))
            self.RS232.write(str.encode(str(sensor)))
            buff = self.RS232.read(self.RS232.inWaiting())
            time.sleep(0.001)
            print (buff)
            buff2 = buff.split('.')
            return int(buff2[0])
            self.RS232.flush()
            time.sleep(0.001)

        except:
            return False

    def leer_digital(self, sensor):

        if sensor > 4 or sensor < 1:
            return False
        try:
            self.RS232.write(str.encode("d"))
            self.RS232.write(str.encode(str(sensor)))
            time.sleep(0.001)
            respuesta = self.RS232.read()
            self.RS232.flush()
            time.sleep(0.001)
            if respuesta[0] == '1':
                return 1
            else:
                return 0
        except:
            return False

    def activar_servo(self, servo, valor):
        """
        maneja los servos de a uno a la ves
        parametros:
        servo= un entero del 1 al 5
        valor= entero del 0 al 255
        retorna True o False
        """
        if self.RS232.isOpen():
            self.RS232.write(str.encode("m"))
            time.sleep(0.001)
            if servo == 1:
                self.RS232.write(str.encode("1"))
            if servo == 2:
                self.RS232.write(str.encode("2"))
            if servo == 3:
                self.RS232.write(str.encode("3"))
            if servo == 4:
                self.RS232.write(str.encode("4"))
            if servo == 5:
                self.RS232.write(str.encode("5"))
            self.RS232.write(struct.pack('B',int(valor)))
            self.RS232.flush()
            time.sleep(0.001)
            return True
        else:
            return False

