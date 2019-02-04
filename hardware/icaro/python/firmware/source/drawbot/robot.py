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
        if self.RS232.isOpen():
            if type(dato)== int:
                cadena="a"+str(dato)+";"
            else:
                return False
            for k in cadena:
                self.RS232.write(k)
                time.sleep(0.1)
            while buff=="" and buff <>"\n" and buff <>"\r" and buff<>None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "ad-",buff
                #print type(buff)
            return True
        else:
            return False

    def atras(self,dato):
        buff=""
        if self.RS232.isOpen():
            if type(dato)== int:
                cadena="t"+str(dato)+";"
            else:
                return False
            for k in cadena:
                self.RS232.write(k)
                time.sleep(0.1)
            while buff=="" and buff <>"\n" and buff <>"\r" and buff<>None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "at-",buff
                #print type(buff)
            return True
        else:
            return False

    def derecha(self,dato):
        buff=""
        if self.RS232.isOpen():
            if type(dato)== int:
                cadena="d"+str(dato)+";"
            else:
                return False
            for k in cadena:
                self.RS232.write(k)
                time.sleep(0.1)
            #self.RS232.write("d")
            while buff=="" and buff <>"\n" and buff <>"\r" and buff <> None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "de-",buff
                #print type(buff)
            return True
        else:
            return False

    def izquierda(self,dato):
        buff=""
        if self.RS232.isOpen():
            if type(dato)== int:
                cadena="i"+str(dato)+";"
            else:
                return False
            for k in cadena:
                self.RS232.write(k)
                time.sleep(0.1)
            #self.RS232.write("d")
            while buff=="" and buff <>"\n" and buff <>"\r" and buff <> None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "iz-",buff
                #print type(buff)
            return True
        else:
            return False

    def levantar_lapiz(self):
        buff=""
        if self.RS232.isOpen():
            self.RS232.write("l")
            while buff=="" and buff <>"\n" and buff <>"\r" and buff <> None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "Llapiz-",buff
                #print type(buff)
            return True
        else:
            return False

    def bajar_lapiz(self):
        buff=""
        if self.RS232.isOpen():
            self.RS232.write("b")
            while buff=="" and buff <>"\n" and buff <>"\r" and buff <> None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "Blapiz-",buff
                #print type(buff)
            return True
        else:
            return False


    def velocidad(self,dato):
        buff=""
        if self.RS232.isOpen():
            if type(dato)== int:
                cadena="v"+str(dato)+";"
            else:
                return False
            for k in cadena:
                self.RS232.write(k)
                time.sleep(0.1)
            #self.RS232.write("d")
            while buff=="" and buff <>"\n" and buff <>"\r" and buff <> None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "vel-",buff
                #print type(buff)
            return True
        else:
            return False

    def apagar(self):
        buff=""
        if self.RS232.isOpen():
            self.RS232.write("c")
            while buff=="" and buff <>"\n" and buff <>"\r" and buff <> None:
                buff = self.RS232.read(self.RS232.inWaiting())
            print "apago"
                #print type(buff)
            return True
        else:
            return False

#r=puerto()
#r.PUERTO="/dev/rfcomm0"
#print r.iniciar()
#r.bajar_lapiz()

# for a in range(3,9):
# q=3
# for m in range(3,8):
    # for q in range(m):
        # r.adelante(400)
        # r.derecha((360/m)*10)

#for b in range(3,6):

#q=7
#r.velocidad(7)

#for q in range(3,13):
    # r.bajar_lapiz()
    # for a in range(q):
        # r.adelante(150)
        # r.derecha((3600/q))
    # #r.levantar_lapiz()
    # #r.adelante(50)
    # #r.bajar_lapiz()
    # r.levantar_lapiz()
    # r.derecha(26)
    # r.adelante(450)


# r.apagar()
# r.cerrar()
