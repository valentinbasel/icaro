#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  sin título.py
#
#  Copyright 2013 valentin <valentin@localhost.localdomain>
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
#

import cairo


class MotorCairo():
    tipo_letra = "sans"
    tama_letra = 12
    color_conectado = (100, 80, 100)
    color_no_conectado = (0, 0, 0)

    def __init():
        pass

    def zoom(self, valor, cr):
        scaler = cairo.Matrix()
        scaler.scale(valor, valor)
        cr.set_matrix(scaler)

    def imagen(self, im, x, y, cr):
        try:
            img = cairo.ImageSurface.create_from_png(im)
        except:
            return 1
        cr.set_source_surface(img, x, y)

        cr.paint()

    def color(self, rgb):
        rgbfin = (
            (rgb[0] / 255.0),
            (rgb[1] / 255.0),
            (rgb[2] / 255.0)
        )
        return rgbfin

    def draw(self, x, y, h, w, rgb, cr):
        cr.set_line_width(1)
        rgbfin = self.color(rgb)
        cr.set_source_rgba(rgbfin[0], rgbfin[1], rgbfin[2], 1)
        cr.rectangle(x, y, h, w)
        cr.fill()

    def texto(self, txt, x, y, rgb, cr):
        cr.select_font_face(
            self.tipo_letra,
            cairo.FONT_SLANT_NORMAL,
            cairo.FONT_WEIGHT_BOLD
        )
        cr.set_font_size(self.tama_letra)
        cr.move_to(x, y)
        rgbfin = self.color(rgb)
        cr.set_source_rgb(rgbfin[0], rgbfin[1], rgbfin[2],)
        cr.show_text(txt)


# estas son nuevas funciones para trabajar con  archivs svg

    def parse_xy(self, cad, val):
        try:
            xy = cad[val].split(",")
            xx = xy[0].encode('ascii', 'ignore')
            yy = xy[1].encode('ascii', 'ignore')
            x = float(xx)
            y = float(yy)
        except Exception, ex:
            return 0, 0
        return x, y

    def rel_c(self, b, f, cr):
        b = b + 1
        x1, y1 = self.parse_xy(f, b)
        b = b + 1
        x2, y2 = self.parse_xy(f, b)
        b = b + 1
        x, y = self.parse_xy(f, b)
        cr.rel_curve_to(x1, y1, x2, y2, x, y)
        b = b + 1
        return b

    def rel_l(self, b, f, cr):
        b = b + 1
        x, y = self.parse_xy(f, b)
        cr.rel_line_to(x, y)
        b = b + 1
        return b

    def render_svg(self, cr, path_strings, color, x, y):
        cadena_svg = path_strings.split(" ")
        b = 0
        letr = ""
        cr.move_to(x, y)
        rgbfin = self.color(color)
        rad = cairo.RadialGradient(x + 50, y + 50, 10, x + 50, y + 50, 200)
        rad.add_color_stop_rgba(1,  80, 100, 80, 1)
        rad.add_color_stop_rgba(0, rgbfin[0], rgbfin[1], rgbfin[2], 1)
        cr.set_source(rad)
        while b < len(cadena_svg):
            if (cadena_svg[b] == u'm'):
                letr = cadena_svg[b]
                b = b + 2
            if (cadena_svg[b] == u'c'):
                letr = cadena_svg[b]
                b = self.rel_c(b, cadena_svg, cr)
            elif (cadena_svg[b] == u'l'):
                letr = cadena_svg[b]
                b = self.rel_l(b, cadena_svg, cr)
            else:
                if letr == u'c':
                    b = self.rel_c(b - 1, cadena_svg, cr)

                else:
                    b = self.rel_l(b - 1, cadena_svg, cr)
        cr.set_line_join(cairo.LINE_JOIN_ROUND)
        cr.close_path()
        cr.fill()
        cr.stroke()
        return 0

    def crear_nodo_linea(self, x, y):
        cadena = " l %s,%s " % (float(x), float(y))
        return cadena


#
    def collide(sef, rectan, x, y):
        if (
            x > rectan[0] and
            x < rectan[0] + rectan[2]
        ):
            if (
                y > rectan[1] and
                y < rectan[1] + rectan[3]
            ):
                return True
        else:
            return False

    def colliderect(sef, rectan, rectan2):
        if rectan2[0] > rectan[0] and rectan2[0] < rectan[0] + rectan[2]:
            if rectan2[1] > rectan[1] and rectan2[1] < rectan[1] + rectan[2]:
                return True
        if rectan2[0] + rectan2[2] > rectan[0] and rectan2[0] + rectan2[2] < rectan[0] + rectan[2]:
            if rectan2[1] > rectan[1] and rectan2[1] < rectan[1] + rectan[2]:
                return True
        if rectan[0] > rectan2[0] and rectan[0] < rectan2[0] + rectan2[2]:
            if rectan[1] > rectan2[1] and rectan[1] < rectan2[1] + rectan2[2]:
                return True
        if rectan[0] + rectan[2] > rectan2[0] and rectan[0] + rectan[2] < rectan2[0] + rectan2[2]:
            if rectan[1] > rectan2[1] and rectan[1] < rectan2[1] + rectan2[2]:
                return True
        else:
            return False

    def line(self, x, y, cr):
        cr.set_line_width(3)
        cr.set_source_rgb(1, 1, 1)
        cr.line_to(x, y)
        cr.close_path()
        cr.stroke_preserve()
