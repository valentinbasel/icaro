
#!/usr/bin/env python
# -*- coding: utf-8 -*-
from turtle import *
from time import sleep
from random import randint
import apicaro
colormode(255)
for _count in range(36):
    left(10)
    begin_fill()
    fillcolor((randint(0,255),randint(0,255),randint(0,255)))
    for _count in range(4):
        forward(100)
        right(90)
        
    end_fill()
    
raw_input('presione enter')
