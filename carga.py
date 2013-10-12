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
    dir_conf=os.path.expanduser('~') + "/.icaro/firmware" 
    if os.path.isdir(dir_conf+"/temporal/")==0:
        os.mkdir(dir_conf+"/temporal/")
    try:
        archivos_temp = os.listdir(dir_conf + "/temporal/")
        for  datos in archivos_temp:
            os.remove(dir_conf + "/temporal/"+datos)
    except:
        print "no existen los archivos"
    #fichier = open(dir_conf +"/tmp/stdout", 'w+')
    sortie = str(sdcc.strip("\n") +" "+
                        " -mpic16"+
                        " --denable-peeps"+
                        " --obanksel=9"+
                        " --opt-code-size "+
                        " --optimize-cmp"+
                        " --optimize-df"+
                        " -p" + processor +
                        " -I " + dir_conf +"/source/" +
                        " -I " + dir_conf +"/tmp/" +
                        " -I " + dir_conf +"/non-free/include/pic16" +
 
                        " -I /usr/share/sdcc/include/pic16/ " +

                        " -c"+
                        " -c"+
                        " -o" +
                        
                        dir_conf + "/temporal/"+ruta+".o " +
                        dir_conf + "/source/"+ruta+".c ")
    #print sortie
    #                       " -I " + dir_conf + "/lib/ " +
    #/usr/share/sdcc/non-free/include/pic16
    log=sortie+" 2> " +  dir_conf +"/temporal/" + "log.dat"
    print log
    i=os.system(log)
    print "este es el valor de i=",i
    return i
def upload_pic(ruta,sdcc):
    dir_conf=os.path.expanduser('~') + "/.icaro/firmware"  

    print ruta
    sortie2=str(        sdcc.strip("\n") +" "
                        " -o"+dir_conf+"/temporal/"+ruta+".hex "+
                        " --denable-peeps"+
                        " --obanksel=9"+
                        " --opt-code-size"+
                        " --optimize-cmp"+
                        " --optimize-df"+
                        " --no-crt"+
                        " -Wl-s/usr/share/icaro/pic16/lkr/18f2550.lkr,-m "+
                        " -mpic16"+
                        " -p"+processor+
                        " -l /usr/share/icaro/pic16/lib/libpuf.lib " +
                        " -l /usr/share/sdcc/lib/pic16/libc18f.lib "+
                        " --lib-path "+ dir_conf + "/non-free/lib/pic16/ " +
                        " -l /usr/share/sdcc/lib/pic16/libm18f.lib "+
                        "/usr/share/icaro/pic16/obj/usb_descriptors.o "+
                        "/usr/share/icaro/pic16/obj/crt0ipinguino.o "+
                        "/usr/share/icaro/pic16/obj/application_iface.o "+
                        dir_conf+ "/temporal/"+ruta+".o ")
#"/usr/share/sdcc/non-free/lib/pic16/ "
    print "--------------------------------------------------------------------------------------------------------"
    print sortie2
    print "--------------------------------------------------------------------------------------------------------"
                        #~ " -l " +sys.path[0].replace(" ","\\ ")+"/sdcc/lib/libio"+processor+".lib"+

    i=os.system(sortie2)
    if i==0:

        i=docker.docker(dir_conf+"/temporal/"+ruta+".hex")
    else:
        return 4
    return i

