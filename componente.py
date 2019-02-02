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
from gi.repository import Gtk

from gi.repository import Gdk
#import gtk
import sys
#from componente_datos import *
import forma_basica

#
#
#     ESQUEMA DE LOS RECTANGULOS QUE REPRESENTAN LAS CONEXIONES DE CADA BLOQUE
#
#
#  Cada rectangulo (x,Y,w,h) representa los puntos de para revizar si un bloque
#  fue tocado por el mouse o si cada conector esta en contacto con el otro
#
#              -------------- conector_h
#              |      ------- rectan
#              |      |
#              v      v
#        ----#---#------#
#       |    |   |      |
#       |    #---#  #---|
#       |           |   |<--- conector_h_dato (lista_conector_h_datos)
#       |    #---#  #---|
#       |    |   |      |
#        ----#---#------#
#              A
#              |
#              ------------ conector_m
#
#
#
#


class FormaSvg(object):

    """FormaSvg contiene las primitivas para diseñar los componentes.
    cada funcion devuelve un string (cuerpo) con los datos SVG para generar el bloque
    las 4 clases de componentes heredan esta clase"""

    def __init__(self):
        self.lin1 = self.fondo.crear_nodo_linea(
            forma_basica.lin1[0], forma_basica.lin1[1])
        self.lin2 = self.fondo.crear_nodo_linea(
            forma_basica.lin2[0], forma_basica.lin2[1])
        self.lin3 = self.fondo.crear_nodo_linea(
            forma_basica.lin3[0], forma_basica.lin3[1])
        self.lin4 = self.fondo.crear_nodo_linea(
            forma_basica.lin4[0], forma_basica.lin4[1])
        self.lin5 = self.fondo.crear_nodo_linea(
            forma_basica.lin5[0], forma_basica.lin5[1])
        self.lin6 = self.fondo.crear_nodo_linea(
            forma_basica.lin6[0], forma_basica.lin6[1])
        self.lin7 = self.fondo.crear_nodo_linea(
            forma_basica.lin7[0], forma_basica.lin7[1])
        self.lin8 = self.fondo.crear_nodo_linea(
            forma_basica.lin8[0], forma_basica.lin8[1])
        self.correccion = self.fondo.crear_nodo_linea(0, -5)
        self.tam_text = (len(self.texto) * 6)
        self.lindat1 = self.fondo.crear_nodo_linea(20, 0)
        self.lindat2 = self.fondo.crear_nodo_linea(-20, 0)
        self.lindat3 = self.fondo.crear_nodo_linea(0, -5)
        self.lindat33 = self.fondo.crear_nodo_linea(0, -5)
        self.lindat4 = self.fondo.crear_nodo_linea(0, -13)
        self.lindat5 = self.fondo.crear_nodo_linea(0, -11)

    def crear_comp_dat(self, TamaComp):
        corr_linea_texto = self.fondo.crear_nodo_linea(TamaComp, 0)
        corr_linea_texto_menos = self.fondo.crear_nodo_linea(TamaComp * -1, 0)
        cuerpo = (self.lindat1 + corr_linea_texto +
                  forma_basica.nodo_esq_ar_der +
                  self.lindat3 +
                  forma_basica.nodo_parametros +
                  self.lindat33 +
                  forma_basica.nodo_esq_ab_der +
                  self.lindat2 + corr_linea_texto_menos +
                  forma_basica.nodo_esq_ab_izq +
                  self.lindat4 +
                  forma_basica.nodo_parametros +
                  self.lindat5 +
                  forma_basica.nodo_esq_ar_izq)
        return cuerpo

    def crear_comp_0arg(self):
        """docstring for crear_comp_0arg"""
        correccion_cuerpo1 = self.fondo.crear_nodo_linea(-37, 0)
        correccion_cuerpo1_2 = self.fondo.crear_nodo_linea(10, 0)
        cuerpo2 = (self.lin1 +
                   forma_basica.nodo_esq_ar_der +
                   self.lin2 +
                   self.lin3 +
                   forma_basica.nodo_esq_ab_der +
                   self.lin4 +
                   forma_basica.nodo_macho +
                   self.lin5 +
                   forma_basica.nodo_esq_ab_izq +
                   self.lin6 +
                   self.lin8 +
                   forma_basica.nodo_esq_ar_izq)

        cuerpo1 = (forma_basica.nodo_hembra +
                   correccion_cuerpo1_2 +
                   forma_basica.nodo_esq_ar_der +
                   self.lin2 +
                   self.lin3 +
                   forma_basica.nodo_esq_ab_der +
                   self.lin4 +
                   self.lin5 +
                   correccion_cuerpo1 +
                   forma_basica.nodo_esq_ab_izq +
                   self.lin6 +
                   self.lin8 +
                   forma_basica.nodo_esq_ar_izq)
        return cuerpo1, cuerpo2

    def crear_comp_1arg(self):
        """docstring for crear_comp"""
        for a in range(self.arg):
            # creo dos lista con los valores del rect
            # de cada conector que creo
            # y sus valores.
            # estas listas son las que parsean los componentes_datos
            self.lista_conector_h_datos.append((0, 0, 0, 0))
            self.lista_valores.append("")
        self.rectan[2] = self.tam_text + 110
        self.linea_corr_texto_mas = self.fondo.crear_nodo_linea(
            self.tam_text, 0)
        self.linea_corr_texto_menos = self.fondo.crear_nodo_linea(
            self.tam_text * -1, 0)
        achicar_cuerpo_1 = self.fondo.crear_nodo_linea(0, -17)  # -17
        achicar_cuerpo_2 = self.fondo.crear_nodo_linea(0, 17)  # 17
        cuerpo = (
            forma_basica.nodo_hembra +
            self.lin1 + self.linea_corr_texto_mas +
            forma_basica.nodo_esq_ar_der +
            self.lin2)
        if self.arg == 0:
            cuerpo = (cuerpo +
                      self.lin3 +
                      self.lin3)

        for i in range(self.arg):
            cuerpo = (cuerpo +
                      forma_basica.nodo_parametros +
                      self.lin3)
        cuerpo = cuerpo + achicar_cuerpo_1
        cuerpo = (cuerpo +
                  forma_basica.nodo_esq_ab_der +
                  self.lin4 + self.lin4 + self.linea_corr_texto_menos +
                  forma_basica.nodo_macho +
                  self.lin5 +
                  forma_basica.nodo_esq_ab_izq + self.lin6 + achicar_cuerpo_2)
        if self.arg == 0:
            cuerpo = (cuerpo +
                      self.lin6 +
                      self.lin6 +
                      self.lin8)
        for i in range(self.arg):
            cuerpo = (cuerpo + self.lin7 + self.lin8)
        if self.arg > 1:
            for i in range(1, self.arg):
                cuerpo = cuerpo + self.correccion
        cuerpo = (cuerpo + forma_basica.nodo_esq_ar_izq)
        return cuerpo

    def crear_comp_bloque_2(self):
        self.linea_corr_texto_mas = self.fondo.crear_nodo_linea(
            self.tam_text, 0)
        self.linea_corr_texto_menos = self.fondo.crear_nodo_linea(
            self.tam_text * -1, 0)
        linea_bloque_mas = self.fondo.crear_nodo_linea(100, 0)
        linea_bloque_menos = self.fondo.crear_nodo_linea(-100, 0)
        self.fondo.crear_nodo_linea(0, 1)
        cuerpo = (
            linea_bloque_mas + forma_basica.nodo_hembra +
            self.lin1 + forma_basica.nodo_esq_ar_der +
            self.lin2 + self.lin3 +
            forma_basica.nodo_esq_ab_der +
            self.lin4 + linea_bloque_menos +
            forma_basica.nodo_macho +
            self.lin5 +
            forma_basica.nodo_esq_ab_izq + self.lin6 + self.lin8 +
            forma_basica.nodo_esq_ar_izq)
        return cuerpo

    def crear_comp_bloque_1(self):
        self.linea_corr_texto_mas = self.fondo.crear_nodo_linea(
            self.tam_text, 0)
        self.linea_corr_texto_menos = self.fondo.crear_nodo_linea(
            self.tam_text * -1, 0)
        linea_bloque_mas = self.fondo.crear_nodo_linea(90, 0)
        linea_bloque_menos1 = self.fondo.crear_nodo_linea(-10, 0)
        linea_bloque_menos = self.fondo.crear_nodo_linea(-90, 0)
        self.fondo.crear_nodo_linea(0, 1)
        l1 = self.fondo.crear_nodo_linea(0,-20)# estos puntos son para achicar el alto
        l2 = self.fondo.crear_nodo_linea(0,20) # de la pieza bloque 1

        cuerpo = (
            forma_basica.nodo_hembra + linea_bloque_mas +
            self.lin1 + forma_basica.nodo_esq_ar_der +
            self.lin2 + forma_basica.nodo_parametros + self.lin3 + l1+
            forma_basica.nodo_esq_ab_der +
            self.lin4 + linea_bloque_menos1 +
            forma_basica.nodo_macho +
            self.lin5 + linea_bloque_menos +
            forma_basica.nodo_esq_ab_izq + self.lin6 + self.lin7 + self.lin8 + l2+
            forma_basica.nodo_esq_ar_izq)
        return cuerpo


class Formas(FormaSvg):

    def __init__(self):
        self.texto = ""
        self.conector_h_dato = [0, 0, 20, 20]  # conector hembra dato
        self.lista_conector_h_datos = []
        self.lista_valores = []
        FormaSvg.__init__(self)

    def crear_poligono(self, arg, tex, comp):
        self.arg = arg
        self.texto = tex
        if comp == 1:
            cuerpo = self.comp_1(arg, tex)
        if comp == 6 or comp == 7:
            cuerpo = self.comp_dat(arg, tex, comp)
        if comp == 5:
            cuerpo = self.comp_2(arg, tex, comp)
        if comp == 4:
            print("conector o")
            cuerpo = self.comp_0(arg, tex, comp)
        return cuerpo

    def comp_0(self, arg, tex, comp):
                    #        cuerpo = [
                    #(0, -10, 10, 10),
                    #(10, -7, 4, 4),
                    #(50, -10, 10, 10),
                    #(46, -7, 4, 4),
                    #(0, 0, 60, 40),
                    #]
        print("creo el comp cero")
        cuerpo, cuerpo2 = self.crear_comp_0arg()
        return cuerpo

    def comp_1(self, arg, tex):
        cuerpo = self.crear_comp_1arg()
        return cuerpo

    def comp_dat(self, arg, tex, comp):
        # tomo el valor del texto para agrandar el tamaño del
        # cuerpo del componente.
        # si es una imagen le pongo un valor fijo
        TamaComp = 0
        if comp == 7:
            TamaComp = len(tex)
        else:
            TamaComp = 1
        cuerpo = self.crear_comp_dat(TamaComp)
        return cuerpo

    def comp_2(self, arg, tex, comp):
        cuerpo = self.crear_comp_bloque_1()
        return cuerpo


class ComponenteCentral(FormaSvg):

    """ Class doc """
    pulsado = 0
    conector_h_dato = [0, 0, 20, 20]  # conector hembra dato
    ide = 0
    color = (110, 20, 90)
    texto = ""
    valx = 45
    valy = 0
    color_fon = [0, 0, 0]
    circlex=25
    circley=10

    def __init__(self):
        """ Class initialiser """

        super(FormaSvg, self).__init__()

    def update(self):
        verde=[0,255,0]
        rojo=[255,0,0]
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1] - 10
        if self.vivo:
            if (botones_mouse[1] == 1 and
                        self.fondo.collide(self.rectan,
                                           posic_mouse[0],
                                           posic_mouse[1]) == True and
                        self.pulsado == 0 and
                        self.ventana.seleccionado == 0 and
                        self.ventana.seleccionado_datos == 0 and
                        self.ventana.seleccion_menu == 2
                    ):
                posic_mouse = self.ventana.mousexy
                self.ventana.seleccionado = self.ide
                self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
                self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
                self.pulsado = 1
            if (self.ventana.seleccionado == self.ide):
                self.posicion = (
                    posic_mouse[0] - self.posic_rel_x,
                    posic_mouse[1] - self.posic_rel_y
                )
                self.pulsado == 1
                self.pegado = 0
                self.pegado_a = 0
            if botones_mouse[1] == 0:
                self.pulsado = 0
                self.ventana.seleccionado = 0
            if (botones_mouse[3] == 1
                    and self.fondo.collide(self.rectan,
                                           posic_mouse[0],
                                           posic_mouse[1]) == True):
                for i in range(1, len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado = 0
                    self.fondo.objetos_datos[i].pegado = 0
                    self.fondo.objetos_datos[i].pegado_a = 0
                    self.fondo.objetos_datos[i].pegado_b = 0
                    self.fondo.objetos_datos[i].pegado2 = 0
                    self.fondo.objetos_datos[i].pegado_a2 = 0
                a = self.fondo.objetos.index(self)
                self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a = 0
                    self.fondo.objetos[i].pegado = 0
                self.fondo.objetos[a].vivo = False
                del self.fondo.tipo_obj[a]
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide] = 0
            if self.pegado == 1:
                x, y, aa, bb = self.fondo.objetos[self.pegado_a].conector_m
                xx = x - self.valx
                yy = y - self.valy
                self.posicion = (xx, yy)
                self.color_fon=(255,255,255)
                iden = self.fondo.objetos[self.pegado_a].ide
                self.fondo.lista_ordenada[self.ide] = iden
                self.dibujar()

                self.fondo.circle(self.posicion[0]+self.circlex,self.posicion[1]+self.circley,self.ventana.cr,verde)
                return 0
            if self.pegado == 0:
                self.fondo.lista_ordenada[self.ide] = 0
                self.color_fon=(0,0,0)
                iden = self.fondo.objetos[self.pegado_a].ide
                for a in range(len(self.fondo.objetos)):
                    if (self.fondo.colliderect
                        (
                            self.conector_h, self.fondo.objetos[a].conector_m
                        )
                            and
                            self.fondo.objetos[a].vivo) == True:

                        self.pegado = 1
                        self.pegado_a = a
                        break
                    else:
                        self.pegado = 0
                        self.pegado_a = 0
            self.dibujar()
            self.fondo.circle(self.posicion[0]+self.circlex,self.posicion[1]+self.circley,self.ventana.cr,rojo)

class componente(ComponenteCentral):

    def __init__(
        self,
        x, y,
        identidad,
        argumentos,
        color,
        texto,
        fondo,
        ventana
    ):
        self.tab=0
        self.imagenintermedia = texto.strip(" ")
        self.imagen = (

            sys.path[0] +"/"+ventana.icaro_dir+ "/imagenes/componentes/" + texto.strip(" ") + ".png")
        self.arg = argumentos
        self.ide = identidad
        self.posicion = (x, y)
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.texto = texto
        self.color_texto = self.fondo.color_texto
        super(ComponenteCentral, self).__init__()
        # rectangulo que representa toda el area del componente
        # el valor de rectan[3] se define en funcion del tamaño del
        # componente (usando la variable "factor")
        self.rectan = [self.posicion[0], self.posicion[1], 0, 0]
        self.conector_m = [0, 0, 40, 10]  # conector macho
        self.conector_h = [0, 0, 40, 10]  # conector hembra
        # self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.vivo = True
        self.cuerpo = self.crear_comp_1arg()
        self.dibujar()

    def dibujar(self):


        self.conector_h[0] = self.rectan[0] + 45
        self.conector_h[1] = self.rectan[1] - 10
        self.fondo.render_svg(
            self.ventana.cr, self.cuerpo, self.color, self.posicion[0] + 40, self.posicion[1], self.color_fon)
        factor = 0
        factor_rectan = 40
        if self.arg == 0:
            factor += 10
            factor_rectan += 40
        factory = (len(self.texto) * 6)
        for a in range(self.arg):
            self.conector_h_dato[0] = self.rectan[0] + 90 + factory
            self.conector_h_dato[1] = self.rectan[1] + 29 + factor
            self.lista_conector_h_datos[a] = (
                self.conector_h_dato[0],
                self.conector_h_dato[1],
                self.conector_h_dato[2],
                self.conector_h_dato[3]
            )
            factor += 37
            factor_rectan += 37
        self.rectan[3] = factor_rectan
        self.conector_m[0] = self.rectan[0] + 45
        self.conector_m[1] = self.rectan[1] + self.rectan[3] - 12
        self.fondo.imagen(self.imagen, self.posicion[0] + 30, (
            self.posicion[1] + (self.rectan[3] / 4)-5), self.ventana.cr)
        self.fondo.texto(self.texto, self.posicion[0] + 64, self.posicion[
                         1] + (self.rectan[3] / 4) + 13, self.color_texto, self.ventana.cr)



class componente_bloque_dos(ComponenteCentral):

    def __init__(self, x, y, identidad, color, texto, fondo, ventana):
         # esto es para poder mandar los datos a guardar
        self.tab=-1
        self.imagenintermedia = texto.strip(" ")
        self.arg = 0
        self.ide = identidad
        self.posicion = (x, y)
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.texto = texto
        self.color_texto = self.fondo.color_texto
        # rectangulo que representa toda el area del componente
        self.rectan = [self.posicion[0], self.posicion[1], 210, 90]
        # conector macho
        self.conector_m = [0, 0, 40, 10]
        # conector hembraS
        self.conector_h = [0, 0, 40, 10]
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.lista_conector_h_datos.append((0, 0, 0, 0))
        self.lista_valores.append("")
        self.vivo = True
        self.valx = 145
        self.valy = 0
        # self.color_fon=[255,255,255]
        super(ComponenteCentral, self).__init__()
        self.cuerpo = self.crear_comp_bloque_2()
        self.dibujar()

    def dibujar(self):

        self.circlex=35
        self.fondo.render_svg(
            self.ventana.cr, self.cuerpo, self.color, self.posicion[0] + 40, self.posicion[1], self.color_fon)
        self.fondo.texto(self.texto, self.posicion[0] + 70, self.posicion[
                         1] + 30, self.color_texto, self.ventana.cr)
        self.conector_m[0] = self.rectan[0] + 55
        self.conector_m[1] = self.rectan[1] + 65
        self.conector_h[0] = self.rectan[0] + 150
        self.conector_h[1] = self.rectan[1] + 10

class componente_bloque_uno(ComponenteCentral):
    pulsado = 0
    # rectangulo que representa toda el area del componente
    rectan = [0, 0, 60, 60]
    conector_h_dato = [0, 0, 20, 20]  # conector hembra dato
    ide = 0
    color = (110, 20, 90)
    texto = ""

    def __init__(self, x, y, identidad, color, texto, fondo, ventana):
        # esto es para poder mandar los datos a guardar
        self.tab=1
        self.imagenintermedia = texto.strip(" ")
        self.arg = 1
        self.ide = identidad
        self.posicion = (x, y)
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.texto = texto
        self.color_texto = self.fondo.color_texto
        # rectangulo que representa toda el area del componente
        self.rectan = [self.posicion[0], self.posicion[1], 210, 90]
        self.conector_m = [0, 0, 40, 10]  # conector macho
        self.conector_h = [0, 0, 40, 10]  # conector hembra
#        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.lista_conector_h_datos.append((0, 0, 0, 0))
        self.lista_valores.append("")
        self.vivo = True
        self.valx = 45
        self.valy = 0
        # self.color_fon=[255,255,255]
        super(ComponenteCentral, self).__init__()

        self.cuerpo = self.crear_comp_bloque_1()
        self.dibujar()

    def dibujar(self):

        self.fondo.render_svg(
            self.ventana.cr, self.cuerpo, self.color, self.posicion[0] + 40, self.posicion[1], self.color_fon)
        self.conector_h[0] = self.rectan[0] + 45
        self.conector_h[1] = self.rectan[1] + 10

        self.conector_h_dato[0] = self.rectan[0] + 180
        self.conector_h_dato[1] = self.rectan[1] + 29
        self.lista_conector_h_datos[0] = (self.conector_h_dato[
                                          0], self.conector_h_dato[1], self.conector_h_dato[2], self.conector_h_dato[3])
        self.fondo.texto(self.texto, (self.posicion[0] + 60), (
            self.posicion[1] + 30), self.color_texto, self.ventana.cr)

        self.conector_m[0] = self.rectan[0] + 135
        self.conector_m[1] = self.rectan[1] + 61

class componente_cero_arg(FormaSvg):
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado = 0
    ide = 0
    color = (110, 20, 90)
    texto = ""

    def __init__(self, x, y, identidad, color, texto, fondo, ventana):
        self.tab=0
        # super(FormaSvg, self).__init__()
        self.ide = identidad
        self.posicion = (x, y)
        self.posicion2 = (x, y + 60)
        self.arg = 0
        self.fondo = fondo
        # rectangulo que representa toda el area del componente
        self.rectan = [self.posicion[0], self.posicion[1], 90, 70]
        self.rectan2 = [self.posicion2[0], self.posicion2[1], 90, 70]
        self.conector_h = [0, 0, 40, 10]  # conector hembra
        self.conector_m = [0, 0, 40, 10]  # conector macho
        self.vivo = True
#        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.color = color
        self.texto = texto
        self.fondo = fondo
        self.ventana = ventana
        self.color_texto = self.fondo.color_texto
        self.color_fon = [255, 255, 255]
        FormaSvg.__init__(self)
        self.cuerpo1, self.cuerpo2 = self.crear_comp_0arg()
        self.dibujar()

    def dibujar(self):
        # conector hembra
        self.fondo.render_svg(
            self.ventana.cr, self.cuerpo1, self.color, self.posicion[0] + 30, self.posicion[1], self.color_fon)
        self.fondo.render_svg(self.ventana.cr, self.cuerpo2,
                              self.color, self.posicion2[0] + 50, self.posicion2[1], self.color_fon)
        # self.fondo.draw(self.rectan[0],self.rectan[1],self.rectan[2],self.rectan[3],(0,0,255),self.ventana.cr)
        # self.fondo.draw(self.rectan2[0],self.rectan2[1],self.rectan[2],self.rectan[3],(0,0,255),self.ventana.cr)
        # self.fondo.draw(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3],(255,0,0),self.ventana.cr)
        # self.fondo.draw(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3],(0,255,0),self.ventana.cr)
        self.fondo.texto(
            str(self.ide),
            (self.posicion[0] + 20), (
                self.posicion[1] + 20),
            self.color_texto,
            self.ventana.cr
        )
        self.fondo.texto(
            str(self.ide),
            (self.posicion2[0] + 20), (
                self.posicion2[1] + 20),
            self.color_texto,
            self.ventana.cr
        )
        # self.conector_h es la ficha "hembra"
        self.conector_h[0] = self.rectan[0] + 30
        self.conector_h[1] = self.rectan[1] + 10
        self.conector_m[0] = self.rectan2[0] + 34.5
        self.conector_m[1] = self.rectan2[1] + 65

    def update(self):
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1] - 10
        self.rectan2[0] = self.posicion2[0]
        self.rectan2[1] = self.posicion2[1] - 10
        if self.vivo == True:
            if self.pegado == 0:
                self.fondo.lista_ordenada[self.ide] = 0
                for a in range(len(self.fondo.objetos)):
                    if self.fondo.colliderect(self.conector_h, self.fondo.objetos[a].conector_m):
                        self.pegado = 1
                        self.pegado_a = a
                        break
                    else:
                        self.pegado = 0
                        self.pegado_a = 0
            if self.pegado == 1:
                x, y, aa, bb = self.fondo.objetos[self.pegado_a].conector_m
                xx = x - 35
                yy = y
                self.posicion = (xx, yy)
                self.fondo.lista_ordenada[
                    self.ide] = self.fondo.objetos[self.pegado_a].ide
            if (botones_mouse[1] == 1 and
                    self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True and
                    self.pulsado == 0 and
                    self.ventana.seleccionado == 0):
                posic_mouse = self.ventana.mousexy
                self.ventana.seleccionado = self.ide
                self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
                self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
                self.pulsado = 1
            if (self.ventana.seleccionado == self.ide and self.pulsado == 1):
                self.posicion = (
                    posic_mouse[0] - self.posic_rel_x, posic_mouse[1] - self.posic_rel_y)
                self.pulsado == 1
                self.pegado = 0
                self.pegado_a = 0
            if (botones_mouse[1] == 1 and
                    self.fondo.collide(self.rectan2, posic_mouse[0], posic_mouse[1]) == True and
                    self.pulsado == 0 and
                    self.ventana.seleccionado == 0):
                posic_mouse2 = self.ventana.mousexy
                self.ventana.seleccionado = self.ide
                self.posic_rel_x2 = abs(self.posicion2[0] - posic_mouse2[0])
                self.posic_rel_y2 = abs(self.posicion2[1] - posic_mouse2[1])
                self.pulsado = 2
            if (self.ventana.seleccionado == self.ide) and self.pulsado == 2:
                self.posicion2 = (
                    posic_mouse[0] - self.posic_rel_x2, posic_mouse[1] - self.posic_rel_y2)
                self.pulsado == 2
            if botones_mouse[1] == 0:
                self.pulsado = 0
                self.ventana.seleccionado = 0
            if (botones_mouse[3] == 1
                    and self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True):
                for i in range(1, len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado = 0
                    self.fondo.objetos_datos[i].pegado = 0
                    self.fondo.objetos_datos[i].pegado_a = 0
                    self.fondo.objetos_datos[i].pegado_b = 0
                    self.fondo.objetos_datos[i].pegado2 = 0
                    self.fondo.objetos_datos[i].pegado_a2 = 0
                a = self.fondo.objetos.index(self)
                self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a = 0
                    self.fondo.objetos[i].pegado = 0
                self.fondo.objetos[a].vivo = False
                del self.fondo.tipo_obj[a]
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide] = 0
        self.dibujar()


class comp_dat_arg(FormaSvg):
    posic_rel_x = 0
    posic_rel_y = 0
    pulsado = 0
    posicion = (0, 0)
    cadena_final = ""
    cadena_intermedia = ""
    # rectangulo que representa toda el area del componente
    ide = 0
    color = (125, 100, 83)
    modificable = 0
    valor_cadena_no_mod = "0"

    def __init__(
        self,
        x, y,
        identidad,
        mod,
        texto,
        color,
        val_no_mod,
        img,
        tipo,
        fondo,
        ventana,
    ):
        self.doble_t=0
        self.doble_t_band = 0
        self.mouse_presionado = 0
        self.tab=0
        self.rectan = [0, 0, 80, 50]
        self.ide = identidad
        self.posicion = (x, y)
        self.texto = texto
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.color_texto = self.fondo.color_texto
        self.conector_m = [0, 0, 20, 20]  # conector macho
        self.conector_h = [0, 0, 20, 20]  # conector hembra
        self.pegado2 = 0
        self.pegado_a2 = 0
        self.pegado = 0
        self.pegado_a = 0
        self.pegado_b = 0
        self.conectado = 0
        self.tecla = 0
        self.tecla_presionada = 0
        self.modificable = mod
        self.valor_cadena_no_mod = val_no_mod
        self.imagen = sys.path[0] +"/"+ventana.icaro_dir+ "/imagenes/componentes/" + img
        self.tipo = tipo
        self.color_fon = [255, 255, 255]
        if self.tipo == 6:
            self.imagenintermedia = img
            self.imagen = sys.path[0] +"/"+ventana.icaro_dir+ "/imagenes/componentes/" + img
        self.tam_text = (len(self.texto) * 6)
        FormaSvg.__init__(self)

    def dibujar(self):
        # tomo el valor del texto para agrandar el tamaño del
        # cuerpo del componente.
        # si es una imagen le pongo un valor fijo
        TamaComp = 0
        if self.tipo == 7:
            TamaComp = len(self.texto) * 7
        else:
            TamaComp = 3
        self.cuerpo = self.crear_comp_dat(TamaComp)
        self.fondo.render_svg(
            self.ventana.cr, self.cuerpo, self.color, self.posicion[0] + 40, self.posicion[1], self.color_fon)
        self.conector_h[0] = self.rectan[0] + TamaComp + 60
        self.conector_h[1] = self.rectan[1] + 5

        # self.fondo.draw(self.conector_m[0],self.conector_m[1],self.conector_m[2],self.conector_m[3],(0,0,0),self.ventana.cr)
        # self.fondo.draw(self.conector_h[0],self.conector_h[1],self.conector_h[2],self.conector_h[3],(0,0,0),self.ventana.cr)
        # self.fondo.draw(self.rectan[0],self.rectan[1],self.rectan[2],self.rectan[3],(0,0,255),self.ventana.cr)
        if self.tipo == 7:
            self.fondo.texto(self.texto, self.posicion[
                             0] + 40, self.posicion[1] + 22, self.color_texto, self.ventana.cr)
            self.rectan[2] = TamaComp + 80
        if self.tipo == 6:
            self.modificable = 0
            self.fondo.imagen(self.imagen, self.posicion[
                              0] + 30, self.posicion[1] + 4, self.ventana.cr)

    def update(self):
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        # self.rectan es el rect
        # que representa la totalidad de la figura
        # self.conector_m es la ficha "macho"
        self.conector_m[0] = self.rectan[0]
        self.conector_m[1] = self.rectan[1] + 5

        # esto es para detectar un doble tap del mouse y poder editar
        if botones_mouse[1]==1 and self.mouse_presionado == 0:
            self.doble_t_band+=1
            #print(self.doble_t_band)
            self.mouse_presionado = 1

        if botones_mouse[1] == 0:
            self.mouse_presionado = 0

        if self.doble_t_band>0:
            self.doble_t +=1

        if self.doble_t >=10:
            self.doble_t=0
            self.doble_t_band =0
        ###

        if (
            botones_mouse[1] == 1 and
            self.doble_t_band>1
            and self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True and
            self.modificable == 1 and
            self.tecla == 0
        ):
            self.cuadro_texto(int(posic_mouse[0]), int(posic_mouse[1]))
            self.tecla = 1
        if botones_mouse[1] == 0:
            self.tecla = 0
            self.pulsado = 0
            self.ventana.seleccionado_datos = 0

        if self.modificable == 1:
            self.cadena_final = self.texto + self.cadena_intermedia
        else:
            self.cadena_final = (
                self.valor_cadena_no_mod
                +
                self.cadena_intermedia
            )
        self.cadena_final = self.cadena_final.replace("\r", '')

        if self.conectado == 0 and self.ventana.seleccionado == 0:
            if self.pegado == 0:
                for a in range(1, len(self.fondo.objetos)):
                    valor1 = self.fondo.objetos[a].lista_conector_h_datos
                    for b in range(len(valor1)):
                        valor2 = self.fondo.objetos[a]
                        valor3 = valor2.lista_conector_h_datos[b]
                        if (self.fondo.colliderect(self.conector_m, valor3) == True):

                            self.pegado = 1
                            self.conectado = 1
                            self.pegado_a = a
                            self.pegado_b = b
        try:
            if self.pegado == 1:
                valor1 = self.fondo.objetos[self.pegado_a]
                valor2 = valor1.lista_conector_h_datos[self.pegado_b]
                x, y, aa, bb = valor2
                xx = x
                yy = y
                self.posicion = (xx - 10, yy - 8)
                valor1.lista_valores[self.pegado_b] = self.cadena_final
        except:
            self.pegado = 0

        if self.conectado == 0 and self.ventana.seleccionado == 0:
            if self.pegado2 == 0:
                for z in range(0, len(self.fondo.objetos_datos)):
                    val = self.fondo.objetos_datos[z].conector_h
                    if (self.fondo.colliderect(self.conector_m, val) == True):
                        self.pegado_a2 = z
                        self.pegado2 = 1
                        self.conectado = 1
        if self.pegado2 == 1:
            val1 = self.fondo.objetos_datos[self.pegado_a2].conector_h
            x, y, aa, bb = val1
            xx = x
            yy = y
            self.posicion = (xx - 10, yy - 4)
            val2 = self.fondo.objetos_datos[self.pegado_a2]
            val2.cadena_intermedia = self.cadena_final
        else:
            self.cadena_intermedia = ""
        if (
            botones_mouse[1] == 1 and
            self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True and
            self.ventana.seleccionado == 0 and
            self.pulsado == 0 and
            self.ventana.seleccionado_datos == 0 and
            self.ventana.seleccion_menu == 2
        ):
            posic_mouse = self.ventana.mousexy
            self.ventana.seleccionado_datos = self.ide
            self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
            self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
            self.pulsado = 1
        if self.ventana.seleccionado_datos == self.ide:
            self.posicion = (
                posic_mouse[0] - self.posic_rel_x,
                posic_mouse[1] - self.posic_rel_y
            )
            self.conectado = 0
            self.pegado = 0
            self.pegado_a = 0
            self.pegado_b = 0
            self.pegado2 = 0
            self.pegado_a2 = 0

        if (botones_mouse[3] == 1
                and self.fondo.collide(self.rectan, posic_mouse[0], posic_mouse[1]) == True):
            for i in range(1, len(self.fondo.objetos_datos)):
                self.fondo.objetos_datos[i].conectado = 0
                self.fondo.objetos_datos[i].pegado = 0
                self.fondo.objetos_datos[i].pegado_a = 0
                self.fondo.objetos_datos[i].pegado_b = 0
                self.fondo.objetos_datos[i].pegado2 = 0
                self.fondo.objetos_datos[i].pegado_a2 = 0
            a = self.fondo.objetos_datos.index(self)
            self.fondo.objetos_datos[a].ide
            self.fondo.objetos_datos.remove(self)
        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1]
        self.dibujar()
        self.cadena_intermedia = ""

    def cuadro_texto(self, x, y):
        window = Gtk.Window()#Gtk.WINDOW_TOPLEVEL)
        window.set_resizable(False)
        window.set_modal(True)
        window.set_border_width(0)
        window.move(x, y)
        window.set_title('ingrese un valor')
        window.set_default_size(100, 200)
        entry = Gtk.Entry()
        entry.set_text(self.texto)
        label = Gtk.Label("valor")
        BotonAceptar = Gtk.Button("aceptar")
        BotonAceptar.connect("clicked", self.boton, window, entry)
        window.add_events(Gdk.EventMask.KEY_PRESS_MASK)
        window.connect("key_press_event", self.keypress_cb, window, entry)
        boxv = Gtk.VBox(False, 2)
        boxh = Gtk.HBox(False, 2)
        boxh2 = Gtk.HBox(False, 2)
        boxh.pack_start(label, True, True, 1)
        boxh.pack_start(entry, True, True, 1)
        boxh2.pack_start(BotonAceptar, True, True, 1)
        boxv.pack_start(boxh, True, True, 1)
        boxv.pack_start(boxh2, True, True, 2)
        window.add(boxv)
        window.show_all()

    def keypress_cb(self, a, event, window, entry):
        if event.keyval == 65293:
            self.texto = entry.get_text()
            self.pulsado = 0
            print("este es el boton de la ventana", self.texto)
            self.ventana.boton_mouse = [0, 0, 0, 0]
            window.hide()

    def boton(self, b, window, entry):
        self.texto = entry.get_text()#.decode('utf8')
        self.pulsado = 0
        print("este es el boton de la ventana", self.texto)
        self.ventana.boton_mouse = [0, 0, 0, 0]
        self.ventana.seleccion_menu = 2

        window.hide()

