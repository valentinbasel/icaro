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
import os
import docker
import re
import shutil
import sys
from subprocess import Popen,PIPE,STDOUT
processor="18f4550"

def compilar_pic(ruta,sdcc):

    val=os.system(sdcc.strip("\n")+" -v")
    if val<>0:
        return 1
    chemin = sys.path[0]
    fichier = open(sys.path[0] + "/tmp/stdout", 'w+')
    sortie = str(sdcc.strip("\n") +" "+
                        " -mpic16"+
                        " --denable-peeps"+
                        " --obanksel=9"+
                        " --opt-code-size "+
                        " --optimize-cmp"+
                        " --optimize-df"+
                        " -p" + processor +
                        " -I" + sys.path[0] +
                        "/include"+ " -I" + chemin +ruta
                        +
                        " -c"+
                        " -c"+
                        " -o" +
                        sys.path[0] +
                        ruta +"main.o " +
                        sys.path[0] +
                        ruta + "main.c")
    print sortie
    
    i=os.system(sortie)
    return i
def upload_pic(ruta,sdcc):
    sortie2=str(        sdcc.strip("\n") +" "
                        " -o"+sys.path[0].replace(" ","\\ ")+ ruta +".hex"+
                        " --denable-peeps"+
                        " --obanksel=9"+
                        " --opt-code-size"+
                        " --optimize-cmp"+
                        " --optimize-df"+
                        " --no-crt"+
                        " -Wl-s"+sys.path[0].replace(" ","\\ ")+"/lkr/18f2550.lkr,-m "+
                        " -mpic16"+
                        " -p"+processor+
                        " -l "+sys.path[0].replace(" ","\\ ")+"/lib/libpuf.lib "+
                        " -l " +sys.path[0].replace(" ","\\ ")+"/lib/libio"+processor+".lib"+
                        " -l " +sys.path[0].replace(" ","\\ ")+"/lib/libc18f.lib "+
                        " -l " +sys.path[0].replace(" ","\\ ")+"/lib/libdev18f4550.lib"+

                        " -l " +sys.path[0].replace(" ","\\ ")+"/lib/libm18f.lib "+
                        sys.path[0].replace(" ","\\ ")+"/obj/application_iface.o "+
                        sys.path[0].replace(" ","\\ ")+"/obj/usb_descriptors.o "+
                        sys.path[0].replace(" ","\\ ")+"/obj/crt0ipinguino.o "+
                        sys.path[0].replace(" ","\\ ")+ruta + ".o ")
    print sortie2
    i=os.system(sortie2)
    if i==0:

        i=docker.docker(sys.path[0]+ruta+".hex")
    else:
        return 4
    return i

