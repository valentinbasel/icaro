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
<<<<<<< HEAD
#  
#  

=======
#
#
>>>>>>> 48428e22db4143bcbe83135edfded233bad84b98
import cairo


class MotorCairo():
    tipo_letra = "sans"
    tama_letra = 12

    def __init():
        pass

    def imagen(self, im, x, y, cr):
        try:
            img = cairo.ImageSurface.create_from_png(im)
        except:
            return 1
        cr.set_source_surface(img, x, y)
        cr.paint()
        #~ except Exception, ex:
            #~ self.imagen=pygame.image.load   (
                                        #~ sys.path[0] +
                                        #~
                                        #~ "/imagenes/componentes/"+
                                        #~ "desconocido.png"
                                        #~ )

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
        cr.set_source_rgb(rgbfin[0], rgbfin[1], rgbfin[2],)
        cr.rectangle(x, y, h, w)
        cr.fill()
        cr.stroke_preserve()

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

    def collide(sef, rectan, x, y):
        if (
            x > rectan[0] and
            x < rectan[0] + rectan[2]
        ):
            if (
                y > rectan[1] and
                y < rectan[1] + rectan[2]
            ):
                return True
        else:
            return False

    def collide(sef, rectan, x, y):
        if x > rectan[0] and x < rectan[0] + rectan[2]:
            if y > rectan[1] and y < rectan[1] + rectan[2]:
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
