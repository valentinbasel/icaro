#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  docker.py
#
#  Copyright 2012 Valentin Basel <valentinbasel@gmail.com>
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
# tomado del proyecto de Jean-Pierre MANDON <jp.mandon@gmail.com>  para un docker en python
# proyecto original en :
# http://code.google.com/p/vascodownloader/
# based on the DOCKER software licensed by Pierre Gaufillet <pierre.gaufillet@magic.fr>
# original project hosted on gforge
# http://gforge.enseeiht.fr/projects/vasco/


#import sys
#import os
import usb
#import time

# USB endpoint

BULK_IN_EP = 0x82
BULK_OUT_EP = 0x01

# comandos para el Bootloader
ERASE_FLASH_CMD = 0
WRITE_FLASH_CMD = 1
LEER_FLASH_CMD = 2
VALID_APPLICATION_CMD = 3
RESET_CMD = 4
SECTION_DESCRIPTOR_CMD = 5

vendor = int("0x04D8", 16)
product = int("0xFEAA", 16)
buscar_bus_docker = True


def borrar(adresse, manejador):
    leerbyte0 = ERASE_FLASH_CMD
    adresse = "%06X" % adresse
    leerbyte1 = int(adresse[4:6], 16)
    leerbyte2 = int(adresse[2:4], 16)
    leerbyte3 = int(adresse[0:2], 16)
    manejador.bulkWrite(BULK_OUT_EP, chr(leerbyte0) + chr(
        leerbyte1) + chr(leerbyte2) + chr(leerbyte3), 200)


def CargaArchivo(file, manejador):
    data = []
    oldadd = 0
    maxadd = 0
    fichero = open(file, 'r')
    lines = fichero.readlines()
    fichero.close()
    for line in lines:
        nb = int(line[1:3], 16)
        add = int(line[3:7], 16)
        if (add > oldadd) and (add < 0x8000):
            maxadd = add + nb
            oldadd = add
    maxadd = maxadd + 64 - (maxadd % 64)
    for i in range(maxadd):
        data.append(0xFF)
    for line in lines:
        nb = int(line[1:3], 16)
        add = int(line[3:7], 16)
        if add >= 0x2000 and add < 0x8000:
            for i in range(0, nb):
                data[add + i] = int(line[9 + (2 * i):11 + (2 * i)], 16)
    index = 0
    frame = []
    for i in range(0x2000, maxadd):
        if i % 64 == 0:
            borrar(i, manejador)
        if i % 32 == 0:
            index = 0
            if frame != []:
                EscribeUSB(i - 32, frame, manejador)
            frame = []
        if data[i] != []:
            frame.append(data[i])
        index += 1
    print "el archivo fue cargado con exito"


def EscribeUSB(adresse, bloc, manejador):
    leerbyte0 = WRITE_FLASH_CMD
    adresse = "%06X" % adresse
    leerbyte1 = int(adresse[4:6], 16)
    leerbyte2 = int(adresse[2:4], 16)
    leerbyte3 = int(adresse[0:2], 16)
    frame = chr(leerbyte0) + chr(leerbyte1) + chr(leerbyte2) + chr(leerbyte3)
    for i in range(32):
        frame = frame + chr(bloc[i])
    manejador.bulkWrite(BULK_OUT_EP, frame, 200)


def docker(archivo):
    np05 = False
    while np05 == False:
        np05 = buscar_bus()
        if buscar_bus_docker == False:
            return 0
        # print np05
        # print "veo si esta prendido el pic"

    try:
        manejador = np05.open()
        manejador.setConfiguration(2)
        manejador.claimInterface(0)
    except Exception, ex:
        print "error al leer el pic"
        print "Exception= ", Exception
        print "ex= ", ex
        return 2
    try:

        CargaArchivo(archivo, manejador)
        manejador.releaseInterface()
    except Exception, ex:
        print "error desconocido"
        print Exception
        print ex
        return 3

    return 0


def buscar_bus():
    np05 = False
    buses = usb.busses()
    for bus in buses:
        # print bus
        for device in bus.devices:
            # print "|----> ",device
            if device.idVendor == vendor and device.idProduct == product:
                np05 = device
                return np05
    if np05 == False:
        # print "no esta el pic"
        return False
    return False
