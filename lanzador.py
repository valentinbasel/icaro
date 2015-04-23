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

import sys,os
from utilidades_ventana import UTILIDADES

def preparar_icaro():
    sys.path.append(ruta_hardware)
    if os.path.exists(conf):
        from icaro import *
        inicio(hardware_dir)
    else:
        cad="No se encontro el archivo de configuracion en la ruta " + conf 
        mens.mensajes(0,cad)
        resp=mens.mensajes(1,"¿desea volver a copiar el directorio el directorio del firmware?")
        if resp==True:
            mens.recarga_conf(hardware_dir,True)
            preparar_icaro()
        else:
            exit()


hardware_dir="hardware/icaro/"
ruta_hardware=sys.path[0]+"/"+ hardware_dir+"modulos"
conf=os.path.expanduser('~') + "/.icaro/conf/config.ini"
mens = UTILIDADES()

if os.path.exists(ruta_hardware):
    preparar_icaro()
else:
    cad="No se encontro el modulo de carga para el hardware en la ruta " + ruta_hardware 
    mens.mensajes(0,cad)
    exit()

    
