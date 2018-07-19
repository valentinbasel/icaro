
#!/usr/bin/env python
# -*- coding: utf-8 -*-
from turtle import *
from time import sleep
from random import randint
from drawrobot.robot import *
drobot=DROBOT()
drobot.PUERTO="/dev/rfcomm1"
drobot.iniciar()
drobot.adelante(900)
drobot.cerrar()
