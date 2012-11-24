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
import re
import shutil
import sys
from subprocess import Popen,PIPE,STDOUT
processor="18f4550"

def compilar_pic(ruta):

    chemin = sys.path[0]
    fichier = open(sys.path[0] + "/tmp/stdout", 'w+')
    sortie = str(sys.path[0] +
                        "/tools/bin/sdcc "+
                        " -mpic16"+
                        " --denable-peeps"+
                        " --obanksel=9"+
                        " --opt-code-size "+
                        " --optimize-cmp"+
                        " --optimize-df"+
                        " -p" + processor +
                        " -I" + sys.path[0] +
                        "/include"+ " -I" + chemin +
                        "/"+
                        " -c"+
                        " -c"+
                        " -o" +
                        sys.path[0] +
                        ruta +".o " +
                        sys.path[0] +
                        ruta + ".c")
    i=os.system(sortie)
    return i
def upload_pic(ruta):
    sortie2=str(sys.path[0]+"/tools/bin/sdcc"+
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
                        " -l"+sys.path[0].replace(" ","\\ ")+"/lib/libpuf.lib "+
                        " -llibio"+processor+".lib"+
                        " -llibc18f.lib "+
                        " -llibm18f.lib "+
                        sys.path[0].replace(" ","\\ ")+"/obj/application_iface.o "+
                        sys.path[0].replace(" ","\\ ")+"/obj/usb_descriptors.o "+
                        sys.path[0].replace(" ","\\ ")+"/obj/crt0ipinguino.o "+
                        sys.path[0].replace(" ","\\ ")+ruta + ".o ")
    i=os.system(sortie2)
    sortie3=str(sys.path[0]+"/tools/bin/docker "+
                        "-v "+
                        "04d8 "+
                        "write " +
                        sys.path[0] +
                        ruta+".hex")
    i=os.popen(sortie3)
    #~ print i
    #~ resultado=1
    #~ for d in i.readlines():
        #~ if d.find("writing")==0:
            #~ resultado=0
    return i

