#! /usr/bin/env python
# -*- coding: utf-8 -*-
#
#  lanzador.py
#
#  Copyright © 2015 Valentin Basel <valentinbasel@gmail.com>
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

import sys
import os
from utilidades_ventana import UTILIDADES



def main(args):
    # cuando incio icaro, me da la posibilidad de cambiar
    # el modulo de hardware, para tener compatibildiad
    # con otros sistemas
    print(args[2])
    icr_dir="icaro/"+args[1]+"/"

    hardware_dir = "hardware/"+icr_dir
    ruta_hardware = sys.path[0] + "/" + hardware_dir + "modulos"
    conf = os.path.expanduser('~') + "/"+args[2]+"/"+args[1]+"/conf/config.ini"
    # UTILIDADES es la clase que contiene las funciones para generar mensajes,
    # carga de la conf .ini y
    # recargar los archivos del firmware
    mens = UTILIDADES()
    if os.path.exists(ruta_hardware):
        mens.preparar_icaro(icr_dir,ruta_hardware, hardware_dir, conf,args[2])
    else:
        cad = "No se encontro el modulo de carga para el hardware en la ruta " + \
            ruta_hardware
        mens.mensajes(0, cad)
        exit()

if __name__ == '__main__':
    import sys
    sys.exit(main(sys.argv))
