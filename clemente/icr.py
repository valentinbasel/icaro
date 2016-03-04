#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  icr.py
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
import threading
import usb
import random


class ICR(threading.Thread):

    """ Clase para manejar  """

    def __init__(self, servidor):
        """ Class initialiser """
        self.servidor = servidor
        threading.Thread.__init__(self)
        self.band = False
        self.flag = True
        self.status = False

    def conexion(self):
        if self.servidor.emular == True:
            return True
        pingu = False
        try:
            busses = usb.busses()
            for bus in busses:
                devices = bus.devices
                for dev in devices:
                    if dev.idVendor == 0x04d8 and dev.idProduct == 0xfeaa:
                        pingu = dev
            if pingu <> False:
                self.dh = pingu.open()
                self.dh.setConfiguration(3)
                self.dh.claimInterface(0)
                return True
            else:
                return False

        except Exception, ex:
            return False

    def actualizar(self, band):

        if self.servidor.emular == True:
            self.status = True
            for a in range(8):
                self.servidor.datos[a] = random.randint(0, 1023)
            return True

        if self.band == True:
            try:
                cadena = ""
                for i in self.dh.bulkRead(0x82, 39, 10000):
                    cadena += chr(i)
                cad_aux = cadena.split("\n")
                cad_fin = cad_aux[0].split(",")
                if len(cad_fin) >= 8:
                    for a in range(8):
                        self.servidor.datos[a] = cad_fin[a]
                self.band = True
                self.status = True
                #~ print self.servidor.datos
            except Exception, ex:
                print "error con el hardware icaro"
                self.band = False
                self.status = False
        return self.band

    def stop(self):
        self.flag = False

    def run(self):
        self.band = self.conexion()
        #~ print "estado de la placa icaro : ", self.band
        while self.flag == True:
            self.band = self.actualizar(self.band)
            if self.band == False:
                self.status = False
                #"la placa se desactivo"
                while self.band == False:
                    # print "reconectando"
                    self.band = self.conexion()
                    time.sleep(3)
                    if self.band == True:
                        print "se volvio a conectar la placa"
                        self.status = True
        print "salgo de icaro"
