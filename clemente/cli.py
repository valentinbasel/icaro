#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  cli.py
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

import time
import socket
import threading
import usb
import os
import sys
import logging


class CLIENTE(threading.Thread):

    """ un clientegenerico para poder cargar el sokect para cada proceso """

    def __init__(self, servidor, socket_cliente, datos_cliente, threadID, name, counter):
        """ Class initialiser """
        threading.Thread.__init__(self)
        self.threadID = threadID
        self.name = name
        self.counter = counter
        self.servidor = servidor
        self.socket = socket_cliente
        self.datos = datos_cliente
        self.flag = True
        # print "inicio el cliente"

    def run(self):
        while self.flag == True:
            peticion = self.socket.recv(1024)
            resp = self.analizar(peticion)

    def stop(self):
        self.flag = False
        self.socket.close()

    def analizar(self, cadena):
        val = cadena.split(",")
        if val[0] == "cerrar":
            # print "cierro todo"
            self.stop()
        if val[0] == "analogico":
            a = self.servidor.datos[int(val[1])]
            self.socket.send(str(a))
        if val[0] == "salir":
            self.flag = False
            self.servidor.cerrar()
        if val[0] == "status":
            cad = self.servidor.hilo_icr.status
            if cad == True:
                cad_str="True"
            else:
                cad_str="False"
            self.socket.send(cad_str)
        return 1
