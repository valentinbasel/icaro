#!/usr/bin/python

# -*- coding: utf-8 -*-
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
        for i in text.split("\r"):
            self.fondo.screen.blit(self.font.render(i, 1, color), (x, y))
            y += self.size 
