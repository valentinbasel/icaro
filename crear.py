#!/usr/bin/python
# -*- coding: utf-8 -*-

import os


def crear_archivo(fondo, ventana):
    print "lista_cm ",fondo.lista_cm
    print "lista_ch ", fondo.lista_ch
    print "lista_ordenada ",fondo.lista_ordenada
    print "lista_fina ",fondo.lista_fina
    print "lista_ch_dato ",fondo.lista_ch_dato
    print "lista_ch_dato2 " ,fondo.lista_ch_dato2
    print "identificador ", fondo.identificador
    print "identificador_dat ",fondo.identificador_dat
    print "identificador_dat2 ",fondo.identificador_dat2
    print "lista_valor_datos ",fondo.lista_valor_datos
    print "lista_valor_datos2 ",fondo.lista_valor_datos2
    print "lista_parser--------- ",fondo.lista_parser
    print "lista_parser_final ",fondo.lista_parser_final
       #borro la lista
    tama=len(fondo.lista_fina) - 1
    siguiente=1
    for a in range (len(fondo.lista_fina)):
        fondo.lista_fina[a]=0
    #tomo el tamaño de la lista para la itereacion
    b=1
    fondo.lista_fina[0]=1
    while b<= tama and siguiente!=0:
        a=0
        bandera=0
        while a<= (len(fondo.lista_ordenada)-1) and bandera==0:
            if fondo.lista_ordenada[a]==siguiente:
                siguiente=a
                fondo.lista_fina[b]=a
                bandera=1
            a=a+1
        b=b+1
    a =0
    for a in range (len(fondo.lista_fina)-1):
        if fondo.lista_parser[fondo.lista_fina[a]]=='robot ':
            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            cadena2=fondo.lista_parser_final[fondo.lista_fina[a]+1]
            valor=cadena[6:len(cadena)-1]
            valor2=cadena2[6:len(cadena2)-1]                
            ventana.cadena_pinguino.append("for(tiempo=0;tiempo<100;tiempo++){"
                                            +"for(tiempo2=0;tiempo2<"+valor2+";tiempo2++){"
                                            +"PORTD="+valor+";}}")
        if fondo.lista_parser[fondo.lista_fina[a]]=='activar ':
            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            cadena2=fondo.lista_parser_final[fondo.lista_fina[a]+1]
            valor=cadena[8:len(cadena)-1]
            valor2=cadena2[8:len(cadena2)-1]                
            ventana.cadena_pinguino.append("for(tiempo=0;tiempo<100;tiempo++){"
                                            +"for(tiempo2=0;tiempo2<"+valor2+";tiempo2++){"
                                            +"PORTB="+valor+";}}")
        if fondo.lista_parser[fondo.lista_fina[a]]=='pausa ':

            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            valor=cadena[5:len(cadena)-1]
            ventana.cadena_pinguino.append("Delayms("+valor+");")
        if fondo.lista_parser[fondo.lista_fina[a]]=='servo ':
            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            cadena2=fondo.lista_parser_final[fondo.lista_fina[a]+1]
            valor=cadena[6:len(cadena)]
            valor2=cadena2[6:len(cadena2)-1]
            ventana.cadena_pinguino.append("ServoWrite("+valor+","+valor2+");")
        if fondo.lista_parser[fondo.lista_fina[a]]=='servos ':
            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            cadena2=fondo.lista_parser_final[fondo.lista_fina[a]+1]
            cadena3=fondo.lista_parser_final[fondo.lista_fina[a]+2]
            cadena4=fondo.lista_parser_final[fondo.lista_fina[a]+3]
            cadena5=fondo.lista_parser_final[fondo.lista_fina[a]+4]
            valor=cadena[6:len(cadena)]
            valor2=cadena2[6:len(cadena2)-1]
            valor3=cadena3[6:len(cadena3)-1]
            valor4=cadena4[6:len(cadena4)-1]
            valor5=cadena5[6:len(cadena5)-1]
            ventana.cadena_pinguino.append("ServoWrite(10,"+valor+");")
            ventana.cadena_pinguino.append("ServoWrite(11,"+valor2+");")
            ventana.cadena_pinguino.append("ServoWrite(12,"+valor3+");")
            ventana.cadena_pinguino.append("ServoWrite(8,"+valor4+");")
            ventana.cadena_pinguino.append("ServoWrite(9,"+valor5+");")
        if fondo.lista_parser[fondo.lista_fina[a]]=='si ':
            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            valor=cadena[3:len(cadena)-1]
            ventana.cadena_pinguino.append("if ("+valor+"){")
        if fondo.lista_parser[fondo.lista_fina[a]]=='mientras ':
            cadena= fondo.lista_parser_final[fondo.lista_fina[a]]
            valor=cadena[8:len(cadena)-1]
            ventana.cadena_pinguino.append("while("+valor+"){")
        if fondo.lista_parser[fondo.lista_fina[a]]=='fin ':
            ventana.cadena_pinguino.append("}")
    ventana.cadena_pinguino.append("}")
        #print ventana.cadena_pinguino
    fw=open("source/user.c","w")
    for a in range (len(ventana.cadena_pinguino)):
        fw.writelines(ventana.cadena_pinguino[a])
        fw.write("\n")
    fw.close()
        
