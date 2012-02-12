#!/usr/bin/python
# -*- coding: utf-8 -*-
import gtk
import os

def guardar(obj,ruta,fondo):
    
    file=open(ruta,"w")
    print fondo.tipo_obj

    file.write("<identificador>")
    file.write("\n")
    file.write(str(fondo.identificador))
    file.write("\n")
    file.write("</identificador>")
    file.write("\n")
    file.writelines("<lista_cm>")
    file.write("\n")
    for a in range(len(fondo.lista_cm)):
        for b in range(4):
            file.writelines(str(fondo.lista_cm[a][b]))
            file.write("\n")
    file.write("</lista_cm>")
    file.write("\n")
    file.writelines("<lista_ch>")
    file.write("\n")
    for a in range(len(fondo.lista_ch)):
        for b in range(4):
            file.writelines(str(fondo.lista_ch[a][b]))
            file.write("\n")
    file.write("</lista_ch>")
    file.write("\n")
    file.writelines("<lista_ordenada>")
    file.write("\n")
    for a in range(len(fondo.lista_ordenada)):
        file.writelines(str(fondo.lista_ordenada[a]))
        file.write("\n")
    file.write("</lista_ordenada>")
    file.write("\n")
    file.writelines("<lista_fina>")
    file.write("\n")
    for a in range(len(fondo.lista_fina)):
        file.writelines(str(fondo.lista_fina[a]))
        file.write("\n")
    file.write("</lista_fina>")
    file.write("\n")
    file.writelines("<lista_ch_dato>")
    file.write("\n")
    for a in range(len(fondo.lista_ch_dato)):
        for b in range(4):
            file.writelines(str(fondo.lista_ch_dato[a][b]))
            file.write("\n")
    file.write("</lista_ch_dato>")
    file.write("\n")
    file.writelines("<lista_ch_dato2>")
    file.write("\n")
    for a in range(len(fondo.lista_ch_dato2)):
        for b in range(4):
            file.write(str(fondo.lista_ch_dato2[a][b]))
            file.write("\n")
    file.write("</lista_ch_dato2>")
    file.write("\n")

    file.write("\n")
    file.write("</identificador_dat>")
    file.write("\n")
    file.write(str(fondo.identificador_dat))
    file.write("\n")
    file.write("</identificador_dat>")
    file.write("\n")
    file.write("</identificador_dat2>")
    file.write("\n")
    file.write(str(fondo.identificador_dat2))
    file.write("\n")
    file.write("</identificador_dat2>")
    file.write("\n")

    file.writelines("<lista_valor_datos>")
    file.write("\n")
    for a in range(len(fondo.lista_valor_datos)):
        file.writelines(str(fondo.lista_valor_datos[a]))
        file.write("\n")
    file.write("</lista_valor_datos>")
    file.write("\n")
    file.writelines("<lista_valor_datos2>")
    file.write("\n")
    for a in range(len(fondo.lista_valor_datos2)):
        file.writelines(str(fondo.lista_valor_datos2[a]))
        file.write("\n")
    file.write("</ista_valor_datos2>")
    file.write("\n")
    file.writelines("<lista_parser>")
    file.write("\n")
    for a in range(len(fondo.lista_parser)):
        file.writelines(str(fondo.lista_parser[a]))
        file.write("\n")
    file.write("</lista_parser>")
    file.write("\n")

    file.writelines("<lista_parser_final>")
    file.write("\n")
    for a in range(len(fondo.lista_parser_final)):
        file.writelines(str(fondo.lista_parser_final[a]))
        file.write("\n")
    file.write("</lista_parser_final>")
    file.write("\n")
    
    for i in range(len(obj)):
        file.writelines("<componente>")
        file.write("\n")
        file.writelines(str(fondo.tipo_obj[i]))
        file.write("\n")
        file.writelines(str(obj[i].ide))
        file.write("\n")
        for a in range(4):
            file.writelines(str(obj[i].rectan[a]))
            file.write("\n")
        for a in range(4):
            file.writelines(str(obj[i].conector_m[a]))
            file.write("\n")

        if int(fondo.tipo_obj[i])<> 6 and int(fondo.tipo_obj[i])<> 3:
            for a in range(4):
                file.writelines(str(obj[i].conector_h[a]))
                file.write("\n")
        file.writelines("</componente>")
        file.write("\n")
    file.close()



# --- variables de "fondo"
#    objetos=[]
#    lista_cm=[]
#    lista_ch=[]
#    lista_ordenada=[]
#    lista_fina=[]
#    lista_ch_dato=[]
#    lista_ch_dato2=[]
#    identificador=1
#    identificador_dat=0
#    identificador_dat2=0
#    lista_valor_datos=[]
#    lista_valor_datos2=[]
#    lista_parser=[]
#    lista_parser_final=[]
#    color_texto=(255,255,255)
#    poscion_botones=0
