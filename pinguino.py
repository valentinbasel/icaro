#!/usr/bin/env python
#  -*- coding: UTF-8 -*-
import os
import re
import shutil
from subprocess import Popen,PIPE,STDOUT
import sys
debug_output=0
noname=0
processor="18f4550"
def compile():
    if (debug_output == 1):
        print("compile " + processor)
    else:
        
        chemin = os.path.dirname(sys.path[0])
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
                        "/source/main.o "+
                        sys.path[0] + 
                        "/source/main.c")
        i=os.system(sortie)
        return i
def link():
        sortie=str(sys.path[0]+"/tools/bin/sdcc"+
                        " -o"+sys.path[0].replace(" ","\\ ")+"/source/main.hex"+
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
                        sys.path[0].replace(" ","\\ ")+"/source/main.o ")
        i=os.system(sortie)
        return i

compile()
i=link()
print i
