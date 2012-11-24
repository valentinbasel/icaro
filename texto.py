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
import pygame
#from os import system
#from fondo import *
class Text:
    def __init__(self, fondo,FontName = None, FontSize = 20):
        pygame.font.init()
        self.font = pygame.font.Font(FontName, FontSize)
        self.size = FontSize
        self.fondo=fondo
    def render(self,  text, color, pos):
        #text = unicode(text, "UTF-8")
        x, y = pos
        #~ print text
        for i in text.split("\r"):
            self.fondo.screen.blit(self.font.render(i, 1, color), (x, y))
            y += self.size
