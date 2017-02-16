# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

#import gst
import gtk
from fcntl import ioctl
from gettext import gettext as _
from plugins.plugin import Plugin
from TurtleArt.tapalette import make_palette
from TurtleArt.talogo import media_blocks_dictionary
from TurtleArt.talogo import primitive_dictionary
from TurtleArt.tautils import debug_output
from TurtleArt.tautils import get_path
import logging
_logger = logging.getLogger('turtleart-activity icaro plugin')

#import apicaro
#puerto = apicaro.puerto()

from libreria.vplot import ROBOT 
import time

robot=ROBOT() # este es el "nombre" de nuestro robot.


robot.PUERTO = '/dev/ttyACM0'
robot.iniciar()


class Icaro(Plugin):

    def __init__(self, parent):
        self._parent = parent
        self._status = False

    def setup(self):
        palette = make_palette('icaro',
                               colors=["#006060", "#A00000"],
                               help_string=_('paleta de bloques icaro'))

        primitive_dictionary['robot_adelante'] = self._rb_adelante
        palette.add_block('robot_adelante',
                          style='basic-style-1arg',
                          label=_('robot_adelante'),
                          prim_name='robot_adelante',
                          default=[1],
                          help_string=_('El robot avanzara'))
        self._parent.lc.def_prim(
            'robot_adelante', 1, lambda self, valor:
            primitive_dictionary['robot_adelante'](valor))

        primitive_dictionary['robot_atras'] = self._rb_atras
        palette.add_block('robot_atras',
                          style='basic-style-1arg',
                          label=_('robot_atras'),
                          prim_name='robot_atras',
                          default=[1],
                          help_string=_('El robot retrocedera'))
        self._parent.lc.def_prim(
            'robot_atras', 1, lambda self, valor:
            primitive_dictionary['robot_atras'](valor))

        primitive_dictionary['robot_izquierda'] = self._rb_izquierda
        palette.add_block('robot_izquierda',
                          style='basic-style-1arg',
                          label=_('robot_izquierda'),
                          prim_name='robot_izquierda',
                          default=[1],
                          help_string=_('El robot girara a la izquierda'))
        self._parent.lc.def_prim(
            'robot_izquierda', 1, lambda self, valor:
            primitive_dictionary['robot_izquierda'](valor))

        primitive_dictionary['robot_derecha'] = self._rb_derecha
        palette.add_block('robot_derecha',
                          style='basic-style-1arg',
                          label=_('robot_derecha'),
                          prim_name='robot_derecha',
                          default=[1],
                          help_string=_('El robot girara a la derecha'))
        self._parent.lc.def_prim(
            'robot_derecha', 1, lambda self, valor:
            primitive_dictionary['robot_derecha'](valor))

        primitive_dictionary['motores'] = self._motores
        palette.add_block('motores',
                          style='basic-style-1arg',
                          label=_('motores'),
                          prim_name='motores',
                          default=[1],
                          help_string=_('activar los motores CC del integrado L293d'))
        self._parent.lc.def_prim(
            'motores', 1, lambda self, valor: primitive_dictionary['motores'](valor))
        primitive_dictionary['activar'] = self._activar

        palette.add_block('activar',
                          style='basic-style-1arg',
                          label=_('activar'),
                          prim_name='activar',
                          default=[1],
                          help_string=_('activar pines de la placa'))
        self._parent.lc.def_prim(
            'activar', 1, lambda self, valor: primitive_dictionary['activar'](valor))

        primitive_dictionary['abrir'] = self._abrir_puerto
        palette.add_block('abrir',
                          style='basic-style-1arg',
                          label=_('abrir puerto'),
                          prim_name='abrir',
                          default=['/dev/rfcomm0'],
                          help_string=_('abre el puerto para comunicacion con la placa'))
        self._parent.lc.def_prim(
            'abrir', 1, lambda self, valor: primitive_dictionary['abrir'](valor))

        primitive_dictionary['retardo'] = self._retardo
        palette.add_block('retardo',
                          style='basic-style-1arg',
                          label=_('retardo'),
                          prim_name='retardo',
                          default=[1],
                          help_string=_('un retardo en milisegundo'))
        self._parent.lc.def_prim(
            'retardo', 1, lambda self, valor: primitive_dictionary['retardo'](valor))

        primitive_dictionary['servomotores'] = self._servo
        palette.add_block('servomotores',
                          style='basic-style-2arg',
                          label=[_('servomotores'), 'servo', 'grados'],
                          prim_name='servomotores',
                          default=[1, 100],
                          help_string=_('un retardo en milisegundo'))
        self._parent.lc.def_prim('servomotores', 2, lambda self, valor, servo: primitive_dictionary[
                                 'servomotores'](servo, valor))

        primitive_dictionary['sensoran1'] = self._sensor_analog
        palette.add_block('sensoran1',
                          style='box-style',
                          label=_('sensoran1'),
                          prim_name='sensoran1',
                          help_string=_('lee el valor del sensor 1 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran1', 0, lambda self: primitive_dictionary['sensoran1'](1))

        primitive_dictionary['sensoran2'] = self._sensor_analog
        palette.add_block('sensoran2',
                          style='box-style',
                          label=_('sensoran2'),
                          prim_name='sensoran2',
                          help_string=_('lee el valor del sensor 2 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran2', 0, lambda self: primitive_dictionary['sensoran2'](2))

        primitive_dictionary['sensoran3'] = self._sensor_analog
        palette.add_block('sensoran3',
                          style='box-style',
                          label=_('sensoran3'),
                          prim_name='sensoran3',
                          help_string=_('lee el valor del sensor 3 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran3', 0, lambda self: primitive_dictionary['sensoran3'](3))

        primitive_dictionary['sensoran4'] = self._sensor_analog
        palette.add_block('sensoran4',
                          style='box-style',
                          label=_('sensoran4'),
                          prim_name='sensoran4',
                          help_string=_('lee el valor del sensor 4 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran4', 0, lambda self: primitive_dictionary['sensoran4'](4))

        primitive_dictionary['sensoran5'] = self._sensor_analog
        palette.add_block('sensoran5',
                          style='box-style',
                          label=_('sensoran5'),
                          prim_name='sensoran5',
                          help_string=_('lee el valor del sensor 5 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran5', 0, lambda self: primitive_dictionary['sensoran5'](5))

        primitive_dictionary['sensoran6'] = self._sensor_analog
        palette.add_block('sensoran6',
                          style='box-style',
                          label=_('sensoran6'),
                          prim_name='sensoran6',
                          help_string=_('lee el valor del sensor 6 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran6', 0, lambda self: primitive_dictionary['sensoran6'](6))

        primitive_dictionary['sensoran7'] = self._sensor_analog
        palette.add_block('sensoran7',
                          style='box-style',
                          label=_('sensoran7'),
                          prim_name='sensoran7',
                          help_string=_('lee el valor del sensor 7 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran7', 0, lambda self: primitive_dictionary['sensoran7'](7))

        primitive_dictionary['sensoran8'] = self._sensor_analog
        palette.add_block('sensoran8',
                          style='box-style',
                          label=_('sensoran8'),
                          prim_name='sensoran8',
                          help_string=_('lee el valor del sensor 8 y devuelve 0 o 255'))
        self._parent.lc.def_prim(
            'sensoran8', 0, lambda self: primitive_dictionary['sensoran8'](8))

        primitive_dictionary['sensor1'] = self._sensor2
        palette.add_block('sensor1',
                          style='box-style',
                          label=_('sensor1'),
                          prim_name='sensor1',
                          help_string=_('lee el valor del sensor 1 y devuelve 0 o 1'))
        self._parent.lc.def_prim(
            'sensor1', 0, lambda self: primitive_dictionary['sensor1'](1))

        primitive_dictionary['sensor2'] = self._sensor2
        palette.add_block('sensor2',
                          style='box-style',
                          label=_('sensor2'),
                          prim_name='sensor2',
                          help_string=_('lee el valor del sensor 2 y devuelve 0 o 2'))
        self._parent.lc.def_prim(
            'sensor2', 0, lambda self: primitive_dictionary['sensor2'](2))

        primitive_dictionary['sensor3'] = self._sensor2
        palette.add_block('sensor3',
                          style='box-style',
                          label=_('sensor3'),
                          prim_name='sensor3',
                          help_string=_('lee el valor del sensor 3 y devuelve 0 o 3'))
        self._parent.lc.def_prim(
            'sensor3', 0, lambda self: primitive_dictionary['sensor3'](3))

        primitive_dictionary['sensor4'] = self._sensor2
        palette.add_block('sensor4',
                          style='box-style',
                          label=_('sensor4'),
                          prim_name='sensor4',
                          help_string=_('lee el valor del sensor 4 y devuelve 0 o 4'))
        self._parent.lc.def_prim(
            'sensor4', 0, lambda self: primitive_dictionary['sensor4'](4))

        primitive_dictionary['adelante'] = self._adelante
        palette.add_block('adelante',
                          style='box-style',
                          label=_('adelante'),
                          prim_name='adelante',
                          help_string=_('mueve los dos motores en un sentido'))
        self._parent.lc.def_prim(
            'adelante', 0, lambda self: primitive_dictionary['adelante'](1))

        primitive_dictionary['atras'] = self._atras
        palette.add_block('atras',
                          style='box-style',
                          label=_('atras'),
                          prim_name='atras',
                          help_string=_('mueve los dos motores en sentido contrario'))
        self._parent.lc.def_prim(
            'atras', 0, lambda self: primitive_dictionary['atras'](1))

        primitive_dictionary['izquierda'] = self._izquierda
        palette.add_block('izquierda',
                          style='box-style',
                          label=_('izquierda'),
                          prim_name='atras',
                          help_string=_('izquierda'))
        self._parent.lc.def_prim(
            'izquierda', 0, lambda self: primitive_dictionary['izquierda'](1))

        primitive_dictionary['derecha'] = self._derecha
        palette.add_block('derecha',
                          style='box-style',
                          label=_('derecha'),
                          prim_name='derecha',
                          help_string=_('derecha'))
        self._parent.lc.def_prim(
            'derecha', 0, lambda self: primitive_dictionary['derecha'](1))

        primitive_dictionary['parar'] = self._parar
        palette.add_block('parar',
                          style='box-style',
                          label=_('parar'),
                          prim_name='parar',
                          help_string=_('parar'))
        self._parent.lc.def_prim(
            'parar', 0, lambda self: primitive_dictionary['parar'](1))

        primitive_dictionary['drawbot_adelante'] = self._drb_adelante
        palette.add_block('drawbot_adelante',
                          style='basic-style-1arg',
                          label=_('drawbot_adelante'),
                          prim_name='drawbot_adelante',
                          default=[1],
                          help_string=_('el drawbot dibujara una linea de N pasos'))
        self._parent.lc.def_prim(
            'drawbot_adelante', 1, lambda self, valor:
            primitive_dictionary['drawbot_adelante'](valor))

        primitive_dictionary['drawbot_atras'] = self._drb_atras
        palette.add_block('drawbot_atras',
                          style='basic-style-1arg',
                          label=_('drawbot_atras'),
                          prim_name='drawbot_atras',
                          default=[1],
                          help_string=_('El drawbot dibujara una linea de N pasos en sentido contrario'))
        self._parent.lc.def_prim(
            'drawbot_atras', 1, lambda self, valor:
            primitive_dictionary['drawbot_atras'](valor))

        primitive_dictionary['drawbot_izquierda'] = self._drb_izquierda
        palette.add_block('drawbot_izquierda',
                          style='basic-style-1arg',
                          label=_('drawbot_izquierda'),
                          prim_name='drawbot_izquierda',
                          default=[1],
                          help_string=_('El drawbot girara a la izquierda'))
        self._parent.lc.def_prim(
            'drawbot_izquierda', 1, lambda self, valor:
            primitive_dictionary['drawbot_izquierda'](valor))

        primitive_dictionary['drawbot_derecha'] = self._drb_derecha
        palette.add_block('drawbot_derecha',
                          style='basic-style-1arg',
                          label=_('drawbot_derecha'),
                          prim_name='drawbot_derecha',
                          default=[1],
                          help_string=_('El drawbot girara a la derecha'))
        self._parent.lc.def_prim(
            'drawbot_derecha', 1, lambda self, valor:
            primitive_dictionary['drawbot_derecha'](valor))


        primitive_dictionary['drawbot_levantar_lapiz'] = self._drb_levantar_lapiz
        palette.add_block('drawbot_levantar_lapiz',
                          style='basic-style-extended-vertical',
                          label=_('drawbot_levantar_lapiz'),
                          prim_name='drawbot_levantar_lapiz',
                          help_string=_('El drawbot levantara el lapiz'))
        self._parent.lc.def_prim(
            'drawbot_levantar_lapiz', 0, lambda selfr:
            primitive_dictionary['drawbot_levantar_lapiz']())

        primitive_dictionary['drawbot_bajar_lapiz'] = self._drb_bajar_lapiz
        palette.add_block('drawbot_bajar_lapiz',
                          style='basic-style-extended-vertical',
                          label=_('drawbot_bajar_lapiz'),
                          prim_name='drawbot_bajar_lapiz',
                          help_string=_('El drawbot bajara el lapiz'))
        self._parent.lc.def_prim(
            'drawbot_bajar_lapiz', 0, lambda selfr:
            primitive_dictionary['drawbot_bajar_lapiz']())

    def _drb_adelante(self, ms):
        robot.adelante(int(ms))


    def _drb_atras(self, ms):
        robot.atras(int(ms))

    def _drb_izquierda(self, ms):
        robot.izquierda(int(ms))

    def _drb_derecha(self, ms):
        robot.derecha(int(ms))

    def _drb_bajar_lapiz(self):
        robot.bajar_lapiz()


    def _drb_levantar_lapiz(self):
        robot.levantar_lapiz()

    def _adelante(self, valor):
        return 1

    def _atras(self, valor):
        return 2

    def _izquierda(self, valor):
        return 3

    def _derecha(self, valor):
        return 4

    def _parar(self, valor):
        return 5

    def _rb_adelante(self, ms):
        robot.motor("1")
        time.sleep(ms)
        robot.motor("5")

    def _rb_atras(self, ms):
        robot.motor("2")
        time.sleep(ms)
        robot.motor("5")

    def _rb_izquierda(self, ms):
        robot.motor("3")
        time.sleep(ms)
        robot.motor("5")

    def _rb_derecha(self, ms):
        robot.motor("4")
        time.sleep(ms)
        robot.motor("5")





    def _servo(self, valor, servo):
        robot.activar_servo(int(servo), int(valor))

    def _activar(self, valor):
        robot.activar(valor)

    def _motores(self, valor):
        if valor == 1:
            robot.motor("1")
        if valor == 2:
            robot.motor("2")
        if valor == 3:
            robot.motor("3")
        if valor == 4:
            robot.motor("4")
        if valor == 5:
            robot.motor("5")

    def _retardo(self, valor):
        time.sleep(valor / 1000)

    def _sensor2(self, valor):
        respuesta = robot.leer(valor)
        return respuesta

    def _abrir_puerto(self, valor):
        robot.cerrar()
        robot.PUERTO = str(valor)
        a=robot.iniciar()
        if a==False:
            return False




    def _servo(self, valor, servo):
        robot.activar_servo(int(servo), int(valor))

    def _activar(self, valor):
        robot.activar(valor)

    def _motores(self, valor):
        if valor == 1:
            robot.motor("1")
        if valor == 2:
            robot.motor("2")
        if valor == 3:
            robot.motor("3")
        if valor == 4:
            robot.motor("4")
        if valor == 5:
            robot.motor("5")



    def _sensor_analog(self, valor):
        respuesta = robot.leer_analogico(valor)
        return respuesta
