#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  main.py
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

import socket
import threading
import os
import sys
from icr import ICR
from cli import CLIENTE
from screen import PANTALLA


class SERVIDOR(threading.Thread):

    """
    clase servidor para iniciar el socket de comunciación con la placa.
    crea una instacia de la clase ICR para actualizar y manejar el hardware y una
    instancia de PANTALLA para controlar, ver el status y salir del sistema.
    conecta por default a
    localhost, 9999
    """

    def __init__(self, terminal, ip="localhost", port=9999):
        """ inicializador de clase """
        self.lista_cli = [0]
        threading.Thread.__init__(self)
        self.datos = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        self.flag = True
        self.threads = []
        self.ip = ip
        self.port = port
        self.terminal = terminal
        self.emular=False
    def run(self):
        try:
            self.serv = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

            self.serv.bind((self.ip, self.port))
            # self.serv.setblocking(0)
            print "estado del socket : ok"
            self.status = True
        except:
            self.status = False
            print "el socket esta caido"
            self.flag = False
            return 0
        self.hilo_icr = ICR(self)
        self.hilo_icr.setDaemon(True)
        self.hilo_icr.start()
        if self.terminal == True:
            hilo_pantalla = PANTALLA(self)
            hilo_pantalla.setDaemon(True)

            hilo_pantalla.start()
            # self.threads.append(hilo_pantalla)
        contador = 1
        # self.threads.append(self.hilo_icr)
        self.serv.listen(5)
        while self.flag == True:
            # try:
            # self.serv.listen(5)
            socket_cliente, datos_cliente = self.serv.accept()
            hilo_icaro = CLIENTE(
                self,
                socket_cliente,
                "Cliente",
                contador,
                socket_cliente,
                datos_cliente
            )
            contador = contador + 1
            hilo_icaro.setDaemon(True)

            hilo_icaro.start()
            self.threads.append(hilo_icaro)
            self.lista_cli.append(hilo_icaro)
            # except:
            #    print "paso algo"
            #    self.cerrar()
        print "sali del while del servidor"
        return 0

    def cerrar(self):
        self.flag = False
        self.serv.close()
        # print "cerrando el socket"
        # for t in self.threads:
        #    t.stop()
        # t._Thread__stop()
        # self.hilo_icr.stop()
        # self.hilo_icr._Thread__stop()
        print "saliendo del main Thread"
        pid = os.getpid()
        os.kill(pid, 9)

        # cuando se cierra el socket, puede suceder que tenga
        # que esperar unos segundos antes de reiniciar
        # la conexion, por los time TTL que usa
        # ipv4 para dejar caer un socket


def main():
    if len(sys.argv) > 0:
        print sys.argv
    s = SERVIDOR(True)
    s.run()
    return 0

if __name__ == '__main__':
    main()
