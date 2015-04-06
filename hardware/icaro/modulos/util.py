#! /usr/bin/env python
# -*- coding: utf-8 -*-
# 
#  util.py
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


#################################
# utilidades para compilar y cargar 
# firmware en los bootloader de pinguino
################################
import ConfigParser
import os


def carga_conf(ruta):
        try:
            cfg = ConfigParser.ConfigParser()
            cfg.read(ruta)
            return cfg
        except:
            print "error, no se encuentra el archivo conf.ini"
            return False

def obtener_path_usuario():
    cadena = os.path.expanduser('~') 
    return cadena

def comprobar_sdcc(sdcc_ini):
    
    val=os.system(sdcc_ini + " -v")
    print "aca estoy comprobando sdcc",val
    if val <> 0:
        return 1
    return 0

def cargo_opciones_cfg(cfg,seccion):
    sec = cfg.options(seccion)
    op=""
    for dat in sec:
        if dat.find("op") >= 0:
            op = op + "  " + cfg.get(seccion, dat)
    return op

def compilar(nombre, cfg, dir_conf):
    """ 
    nombre = Nombre del archivo
    """
    home_usuario=obtener_path_usuario()
    # CArgo las opciones de compilacion
    op = cargo_opciones_cfg(cfg, "compilador")
    # compruebo si esta sdcc
    sdcc_ini = cfg.get("general","sdcc")
    comp_sdcc= comprobar_sdcc(sdcc_ini)
    if comp_sdcc==1:
        return 1
    # Compruebo la carpeta temporal, si no esta, creo una
    if os.path.isdir(dir_conf + "/temporal/") == 0:
        os.mkdir(dir_conf + "/temporal/")
    try:
        archivos_temp = os.listdir(dir_conf + "/temporal/")
        for datos in archivos_temp:
            os.remove(dir_conf + "/temporal/" + datos)
    except:
        print "no existen los archivos"
    # Creo la cadena del compilador con todas las opciones
    cad = str(sdcc_ini +
              " " + op + " " +
              cfg.get("compilador", "temp") + nombre + ".o " +
              cfg.get("compilador", "source") + nombre + ".c ")
    # si en las opciones hay un ~, lo remplazo por la direccion
    # completa del usuario (os.system no reconcoe ese caracter)
    cadena_final=cad.replace("~",home_usuario)
    # Creo la cadena final con que guarda toda la salida en un archivo log dentro de la carpeta temporal
    log = cadena_final + " 2> " + dir_conf +"/temporal/" + "log.dat"
    i = os.system(log)
    return i

def linker(nombre, cfg):
    # Cargo las opciones de enlace de archivos .o

    sdcc_ini = cfg.get("general","sdcc")
    op = cargo_opciones_cfg(cfg, "upload")
    # compruebo si esta sdcc
    comp_sdcc= comprobar_sdcc(cfg.get("general","sdcc"))
    if comp_sdcc==1:
        return 1   
    up = str(sdcc_ini + " " +
             cfg.get("upload", "hex") + nombre + ".hex " +
             " " + op + " " +
             cfg.get("upload", "obj") + nombre + ".o ")
    i = os.system(up)
    return i


