#!/usr/bin/env python
# -*- coding: utf-8 -*-

###############################################################################
# pinguicaro, cargador y compilador para sistemas pinguino bootloader 4
# Copyright © 2018 Valentin Basel <valentinbasel@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
###############################################################################

from uploader_icaro_v4 import UPLOAD
import util
import os
import ConfigParser

class PINGUINO(object):

    """
    Clase para cargar programas en las placas ICARO
    desde python 2.7
    """

    def __init__(self,directorio,main_c):
        """TODO: to be defined1. """
        config_ini = directorio + "/conf/config.ini"
        self.cfg = ConfigParser.ConfigParser()
        self.cfg.read(config_ini)


    def preparar(self, directorio,main_c):
        """TODO: Docstring for preparar.

        :arg1: TODO
        :returns: TODO

        """

        r = util.compilar(main_c,self.cfg,directorio)
        print "la compilacion fue correcta"
        if r == 0:
            rr = util.linker(main_c,self.cfg)
            print " en enlace de archivos .o fue correcto"
            if rr == 0:
                return 0
            else:
                return 2
        else: return 1
        return r

    def cargar(self, directorio, main_c):
        """TODO: Docstring for cargar.

        :arg1: TODO
        :returns: TODO

        """
        board = self.cfg.get("pic","mic")
        pic = UPLOAD()
        directorio=directorio+"/firmware/temporal/"
        archivo=directorio+main_c+".hex"
        r = pic.uploadDevice(archivo,board)
        return r

def main(arg1):
    """TODO: Docstring for main.

    :arg1: directorio de icarov4 y nombre del archivo main a compilar
    :returns: devuelvo código de errores
    0 = todo fue correcto
    1 = error de compilación
    2 = error de enlaces
    3 al 8 = errores de subida a la placa

    """
    conf = arg1[1]
    directorio = arg1[2]
    nombre_archivo = arg1[3]
    p_icaro = PINGUINO(directorio,nombre_archivo)
    if arg1[1]=="-c":
        r = p_icaro.preparar(directorio,nombre_archivo)
        print "El resultado es: ", r
        return r
    if arg1[1] == "-u":
        r = p_icaro.cargar(directorio,nombre_archivo)
        print r[1]
        return r[0]

    exit(1)

if __name__ == "__main__":
    import sys
    sys.exit(main(sys.argv))

