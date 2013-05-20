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
import sys
from os import system
from componente_datos import *


class ComponenteCentral():

    """ Class doc """
    pulsado = 0
    conector_h_dato = [0, 0, 40, 20]  # conector hembra dato
    ide = 0
    color = (110, 20, 90)
    texto = ""
    valx = 10
    valy = 10

    def __init__(self):
        """ Class initialiser """
        pass

    def update(self):
        ban_a = 0
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1] - 10
        if self.vivo is True:

            if self.pegado is 0:
                self.fondo.lista_ordenada[self.ide] = 0
                for a in range(len(self.fondo.objetos)):

                    if (self.fondo.colliderect
                            (
                            self.conector_h, self.fondo.objetos[a].conector_m
                            )
                        and
                            self.fondo.objetos[a].vivo) is True:

                        self.pegado = 1
                        self.pegado_a = a
                        break
                    else:
                        self.pegado = 0
                        self.pegado_a = 0
            if self.pegado is 1:
                x, y, aa, bb = self.fondo.objetos[self.pegado_a].conector_m
                xx = x - self.valx
                yy = y + self.valy
                self.posicion = (xx, yy)
                iden = self.fondo.objetos[self.pegado_a].ide
                self.fondo.lista_ordenada[self.ide] = iden

            if (botones_mouse[1] is 1 and
                self.fondo.collide(self.rectan,
                                   posic_mouse[0],
                                   posic_mouse[1]) is True and
                self.pulsado is 0 and
                    self.ventana.seleccionado is 0):
                posic_mouse = self.ventana.mousexy
                self.ventana.seleccionado = self.ide
                self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
                self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
                self.pulsado = 1
            if (self.ventana.seleccionado is self.ide):
                self.posicion = (
                    posic_mouse[0] - self.posic_rel_x,
                    posic_mouse[1] - self.posic_rel_y
                )
                self.pulsado is 1
                self.pegado = 0
                self.pegado_a = 0
            if botones_mouse[1] is 0:
                self.pulsado = 0
                self.ventana.seleccionado = 0

            if (botones_mouse[1] is 1
                    and self.fondo.collide(self.rectan,
                                           posic_mouse[0],
                                           posic_mouse[1]) is True
                    and self.ventana.seleccion_menu is 3):
                for i in range(1, len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado = 0
                    self.fondo.objetos_datos[i].pegado = 0
                    self.fondo.objetos_datos[i].pegado_a = 0
                    self.fondo.objetos_datos[i].pegado_b = 0
                    self.fondo.objetos_datos[i].pegado2 = 0
                    self.fondo.objetos_datos[i].pegado_a2 = 0
                a = self.fondo.objetos.index(self)
                ident = self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a = 0
                    self.fondo.objetos[i].pegado = 0
                self.fondo.objetos[a].vivo = False
                print a

                del self.fondo.tipo_obj[a]
                # self.fondo.objetos[a].borrar()
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide] = 0
        self.dibujar()


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
        self.imagenintermedia = texto.strip(" ")
        self.imagen = (sys.path[0] + "/imagenes/componentes/",
                       + texto.strip(" ") + ".png")
        self.arg = argumentos
        self.ide = identidad
        self.posicion = (x, y)
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.texto = texto
        self.color_texto = self.fondo.color_texto
        # rectangulo que representa toda el area del componente
        self.rectan = [self.posicion[0], self.posicion[1], 60, 60]
        self.conector_m = [0, 0, 40, 10]  # conector macho
        self.conector_h = [0, 0, 40, 10]  # conector hembra
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.vivo = True
        for a in range(self.arg):
            # creo dos lista con los valores del rect
            # de cada conector que creo
            # y sus valores.
            # estas listas son las que parsean los componentes_datos
            self.lista_conector_h_datos.append((0, 0, 0, 0))
            self.lista_valores.append("")
        self.dibujar()

#    def borrar(self):
#        self.kill()
    def dibujar(self):

        self.conector_h[0] = self.rectan[0] + 10
        self.conector_h[1] = self.rectan[1]
        cuerpo = [
            (0, -10, 10, 10),
            (10, -7, 4, 4),
            (50, -10, 10, 10),
            (46, -7, 4, 4),
        ]

        factor = 0
        if self.arg is 0:
            cuerpo.append((0, factor, 60, 40))
            factor += 40
        factory = (len(self.texto) * 7)
        for a in range(self.arg):
            cuerpo.append((0, factor, 25 + factory, 40))
            cuerpo.append((25 + factory, factor, 10, 10))
            cuerpo.append((25 + factory + 3, factor + 10, 4, 4))
            cuerpo.append((25 + factory, 30 + factor, 10, 10))
            cuerpo.append((25 + factory + 3, 30 + factor - 4, 4, 4))
            self.conector_h_dato[0] = self.rectan[0] + 25 + factory
            self.conector_h_dato[1] = self.rectan[1] + 20 + factor
            self.lista_conector_h_datos[a] = (
                self.conector_h_dato[0],
                self.conector_h_dato[1],
                self.conector_h_dato[2],
                self.conector_h_dato[3]
            )
            factor += 40

        self.rectan[3] = factor
        self.conector_m[0] = self.rectan[0] + 10
        self.conector_m[1] = self.rectan[1] + factor + 10
        cuerpo.append((14, factor, 32, 10))
        cuerpo.append((10, factor, 40, 3))
        cuerpo.append((10, factor + 7, 40, 3))
        for x, y, w, h in cuerpo:
            self.fondo.draw(self.posicion[0] + x, self.posicion[
                            1] + y, w, h, self.color, self.ventana.cr)
        self.fondo.imagen(self.imagen,
                          self.posicion[0] + (self.rectan[2] / 2) - 15,
                          self.posicion[1] + (self.rectan[3] / 2) - 5,
                          self.ventana.cr)
        self.fondo.texto(self.texto, self.posicion[0] + 13, self.posicion[1],
                         + (self.rectan[3] / 2) - 7,
                         self.color_texto,
                         self.ventana.cr)


class componente_bloque_dos(ComponenteCentral):

    def __init__(self, x, y, identidad, color, texto, fondo, ventana):
         # esto es para poder mandar los datos a guardar
        self.imagenintermedia = texto.strip(" ")
        self.arg = 0
        self.ide = identidad
        self.posicion = (x, y)
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        #~ self.textorender=textorender
        self.texto = texto
        self.color_texto = self.fondo.color_texto
        # rectangulo que representa toda el area del componente
        self.rectan = [self.posicion[0], self.posicion[1], 60, 60]
        # conector macho
        self.conector_m = [0, 0, 40, 10]
        # conector hembraS
        self.conector_h = [0, 0, 40, 10]
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.lista_conector_h_datos.append((0, 0, 0, 0))
        self.lista_valores.append("")
        self.vivo = True
        self.valx = 70
        self.valy = 10
        self.dibujar()

    def dibujar(self):
        cuerpo = [
            (60, -10, 10, 10),
            (70, -7, 4, 4),
            (110, -10, 10, 10),
            (106, -7, 4, 4),
            (0, 0, 120, 40),
            (14, 40, 32, 10),
            (14, 40, 32, 10),
            (10, 40, 40, 3),
            (10, 47, 40, 3)
        ]
        for x, y, w, h in cuerpo:
            self.fondo.draw(self.posicion[0] + x, self.posicion[
                            1] + y, w, h, self.color, self.ventana.cr)
        self.fondo.texto(self.texto, self.posicion[0] + 13, self.posicion[1],
                         + (self.rectan[3] / 2) - 7,
                         self.color_texto,
                         self.ventana.cr)
        self.conector_m[0] = self.rectan[0] + 10
        self.conector_m[1] = self.rectan[1] + 50
        self.conector_h[0] = self.rectan[0] + 70
        self.conector_h[1] = self.rectan[1]


class componente_bloque_uno(ComponenteCentral):
    pulsado = 0
    rectan = [
        0, 0, 60, 60]  # rectangulo que representa toda el area del componente
    conector_h_dato = [0, 0, 30, 20]  # conector hembra dato
    ide = 0
    color = (110, 20, 90)
    texto = ""

    def __init__(self, x, y, identidad, color, texto, fondo, ventana):
        self.imagenintermedia = texto.strip(
            " ")  # esto es para poder mandar los datos a guardar
        #~ self.imagen=pygame.image.load(
                                        #~ sys.path[0] +
                                        #~ "/imagenes/componentes/"+
                                        #~ texto.strip(" ")+
                                        #~ ".png"
                                    #~ )
        self.arg = 1
        self.ide = identidad
        self.posicion = (x, y)
        self.color = color
        self.fondo = fondo
        self.ventana = ventana
        self.texto = texto
        self.color_texto = self.fondo.color_texto
        self.rectan = [self.posicion[0], self.posicion[1], 60, 60]
        # rectangulo que representa toda el area del componente
        self.conector_m = [0, 0, 40, 10]  # conector macho
        self.conector_h = [0, 0, 40, 10]  # conector hembra
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.lista_conector_h_datos.append((0, 0, 0, 0))
        self.lista_valores.append("")
        self.vivo = True
        self.valx = 10
        self.valy = 10

        self.dibujar()

    def dibujar(self):
        self.conector_h[0] = self.rectan[0] + 10
        self.conector_h[1] = self.rectan[1]
        #~ pygame.draw.line(self.fondo.screen,(0,0,0),
        #(self.posicion[0]-3,self.posicion[1]-10),
        #(self.posicion[0]-3,self.posicion[1]+40),5)
        cuerpo = [
            (0, -10, 10, 10),
            (10, -7, 4, 4),
            (50, -10, 10, 10),
            (46, -7, 4, 4),
            (0, 0, 120, 40),
            (74, 40, 32, 10),
            (70, 40, 40, 3),
            (70, 47, 40, 3),
            (120, 0, 10, 10),
            (123, 10, 4, 4),
            (120, 30, 10, 10),
            (123, 26, 4, 4)
        ]
        for x, y, w, h in cuerpo:
            self.fondo.draw(self.posicion[0] + x, self.posicion[
                            1] + y, w, h, self.color, self.ventana.cr)

        self.conector_h_dato[0] = self.rectan[0] + 120
        self.conector_h_dato[1] = self.rectan[1] + 20
        self.lista_conector_h_datos[0] = (self.conector_h_dato[0],
                                          self.conector_h_dato[1],
                                          self.conector_h_dato[2],
                                          self.conector_h_dato[3])
        self.fondo.texto(self.texto, (self.posicion[0] + 10), (
            self.posicion[1] + 20), self.color_texto, self.ventana.cr)

# self.textorender.render(self.texto,self.color_texto,
#((self.posicion[0]+10),(self.posicion[1]+10)))
        self.conector_m[0] = self.rectan[0] + 70
        self.conector_m[1] = self.rectan[1] + 50


class componente_cero_arg():
    # el componente cuadrado es el bloque minimo que puede tener un
    # icaro-block
    pulsado = 0

    # conector_h_dato=pygame.Rect(0,0,10,20)#conector hembra dato
    ide = 0
    color = (110, 20, 90)
    texto = ""

    def __init__(self, x, y, identidad, color, texto, fondo, ventana):
        self.ide = identidad
        self.posicion = (x, y)
        self.posicion2 = (x, y + 60)
        self.arg = 0
        self.fondo = fondo
        # rectangulo que representa toda el area del componente
        self.rectan = [self.posicion[0], self.posicion[1], 60, 60]
        self.rectan2 = [self.posicion2[0], self.posicion2[1], 60, 60]
        self.conector_h = [0, 0, 40, 10]  # conector hembra
        self.conector_m = [0, 0, 40, 10]  # conector macho
        self.vivo = True
        self.fondo.lista_ordenada.append(0)
        self.lista_conector_h_datos = []
        self.lista_valores = []
        self.pegado = 0
        self.pegado_a = 0
        self.color = color
        self.texto = texto
        self.fondo = fondo
        self.ventana = ventana
        self.color_texto = self.fondo.color_texto
        self.dibujar()

    def dibujar(self):
        # conector hembra
        cuerpo1 = [
            (0, -10, 10, 10),
            (10, -7, 4, 4),
            (50, -10, 10, 10),
            (46, -7, 4, 4),
            (0, 0, 60, 40),
        ]
        for x, y, w, h in cuerpo1:
            self.fondo.draw(self.posicion[0] + x, self.posicion[
                            1] + y, w, h, self.color, self.ventana.cr)
        cuerpo2 = [
            (0, 0, 60, 40),
            (14, 40, 32, 10),
            (10, 40, 40, 3),
            (10, 47, 40, 3),
        ]
        for x, y, w, h in cuerpo2:
            self.fondo.draw(self.posicion2[0] + x, self.posicion2[
                            1] + y, w, h, self.color, self.ventana.cr)

        #~ self.textorender.render(
        #~ str(self.ide),
        #~ self.color_texto,
        #~ ((self.posicion[0]+10),(self.posicion[1]+10))
        #~ )

        #~ self.textorender.render(
        #~ str(self.ide),
        #~ self.color_texto,
        #~ ((self.posicion2[0]+10),(self.posicion2[1]+10))
        #~ )
        # self.conector_h es la ficha "hembra"
        self.conector_h[0] = self.rectan[0] + 10
        self.conector_h[1] = self.rectan[1]
        self.conector_m[0] = self.rectan2[0] + 10
        self.conector_m[1] = self.rectan2[1] + 50

    def update(self):
        ban_a = 0
        posic_mouse = self.ventana.mousexy
        botones_mouse = self.ventana.boton_mouse
        self.rectan[0] = self.posicion[0]
        self.rectan[1] = self.posicion[1] - 10
        self.rectan2[0] = self.posicion2[0]
        self.rectan2[1] = self.posicion2[1] - 10
        if self.vivo is True:
            if self.pegado is 0:
                self.fondo.lista_ordenada[self.ide] = 0
                for a in range(len(self.fondo.objetos)):
                    if self.fondo.colliderect(self.conector_h,
                                              self.fondo.objetos[a].conector_m):
                        self.pegado = 1
                        self.pegado_a = a
                        break
                    else:
                        self.pegado = 0
                        self.pegado_a = 0
            if self.pegado is 1:
                x, y, aa, bb = self.fondo.objetos[self.pegado_a].conector_m
                xx = x - 10
                yy = y + 10
                self.posicion = (xx, yy)
                self.fondo.lista_ordenada[
                    self.ide] = self.fondo.objetos[self.pegado_a].ide
            if (botones_mouse[1] is 1 and
                self.fondo.collide(self.rectan,
                                   posic_mouse[0],
                                   posic_mouse[1]) is True and
                self.pulsado is 0 and
                    self.ventana.seleccionado is 0):
                posic_mouse = self.ventana.mousexy
                self.ventana.seleccionado = self.ide
                self.posic_rel_x = abs(self.posicion[0] - posic_mouse[0])
                self.posic_rel_y = abs(self.posicion[1] - posic_mouse[1])
                self.pulsado = 1
            if (self.ventana.seleccionado is self.ide and self.pulsado is 1):
                self.posicion = (posic_mouse[0] - self.posic_rel_x,
                                 posic_mouse[1] - self.posic_rel_y)
                self.pulsado is 1
                self.pegado = 0
                self.pegado_a = 0
#
            if (botones_mouse[1] is 1 and
                self.fondo.collide(self.rectan, posic_mouse[0],
                                   posic_mouse[1]) is True and
                self.pulsado is 0 and
                    self.ventana.seleccionado is 0):
                posic_mouse2 = self.ventana.mousexy
                self.ventana.seleccionado = self.ide
                self.posic_rel_x2 = abs(self.posicion2[0] - posic_mouse2[0])
                self.posic_rel_y2 = abs(self.posicion2[1] - posic_mouse2[1])
                self.pulsado = 2
            if (self.ventana.seleccionado is self.ide) and self.pulsado is 2:
                self.posicion2 = (posic_mouse[0] - self.posic_rel_x2,
                                  posic_mouse[1] - self.posic_rel_y2)
                self.pulsado is 2
                self.pegado = 0
                self.pegado_a = 0
#

            if botones_mouse[1] is 0:
                self.pulsado = 0
                self.ventana.seleccionado = 0
            if (botones_mouse[1] is 1
                    and self.fondo.collide(self.rectan,
                                           posic_mouse[0],
                                           posic_mouse[1]) is True
                    and self.ventana.seleccion_menu is 3):
                for i in range(1, len(self.fondo.objetos_datos)):
                    self.fondo.objetos_datos[i].conectado = 0
                    self.fondo.objetos_datos[i].pegado = 0
                    self.fondo.objetos_datos[i].pegado_a = 0
                    self.fondo.objetos_datos[i].pegado_b = 0
                    self.fondo.objetos_datos[i].pegado2 = 0
                    self.fondo.objetos_datos[i].pegado_a2 = 0
                a = self.fondo.objetos.index(self)
                ident = self.fondo.objetos[a].ide
                for i in range(len(self.fondo.objetos)):
                    self.fondo.objetos[i].pegado_a = 0
                    self.fondo.objetos[i].pegado = 0
                self.fondo.objetos[a].vivo = False
                del self.fondo.tipo_obj[a]
                self.kill()
                self.fondo.objetos.remove(self)
                self.fondo.lista_ordenada[self.ide] = 0
        self.dibujar()
