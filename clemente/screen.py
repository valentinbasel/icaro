#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  screen.py
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

import threading


class PANTALLA(threading.Thread):

    """esta clase es para manejar el servidor, recibo un texto desde el teclado
    y envia señales a la clase servidor desde la variable self.servidor.
    puede cerrar o ver el estado de las demas instancias abiertas"""

    def __init__(self, serv):
        self.servidor = serv
        threading.Thread.__init__(self)
        # self.inicio_pantalla()
        self.emular=False
        self.cadena = """
        --------------------------------------------------------------------------------
        |
        |    ICARO server 0.1
        |
        |    ayuda:
        |    
        |    - quit (salir)
        |    - status (muestra el estado del socket y de la placa)
        |    - client (muestra la listas de clientes conectados)
        |    - dat (los valores de los sensores analogicos)
        |    - emular (envia datos al azar, para probar software sin usar el hardware)
        |    - help (esta ayuda)
        |
        --------------------------------------------------------------------------------
   
        """
        print self.cadena

    def run(self):
        """docstring for inicio_pantalla"""
        self.flag = True
        while(self.flag == True):
            valor = raw_input("ingrese un comando para el servidor: ")
            if valor == "quit":
                # por alguna razon, cuando trato de salir, se queda colgado, hasta
                # que le doy con ctl + C ... revisar
                self.servidor.cerrar()
                print "salgo!"
                return 0
                exit()
            if valor == "status":
                print "status del sockect: ", self.servidor.status
                print "status del hardware: ", self.servidor.hilo_icr.status
                print "cantidad de clientes : ", len(self.servidor.threads)
                print "estado del emulador de puerto : ", self.servidor.emular 
            if valor == "help":
                print self.cadena
            if valor == "client":
                print self.servidor.lista_cli
            if valor == "dat":
                print self.servidor.datos
            if valor == "emular":
                self.servidor.emular= not self.servidor.emular

    def stop(self):
        self.flag = False
