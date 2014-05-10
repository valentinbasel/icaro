#!/usr/bin/env python
# -*- coding: utf-8 -*-
#
#  sin título.py
#
#  Copyright 2012 Valentin Basel <valentin@gmail.com>
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
import lenguaje


dicc = {
    _("robot"): _("función para controlar los motores cc de la placa np05. permite activar los motores y controlar la direccion de giro de cada motor. Codigo C: PORTD=valor;"),
    _("activar"): _("Función para controlar el PORTB de la placa np05. envia un valor de 0 - 255 que se de multiplexa en 8 bits de los pines del puerto. Codigo C: PORTB=255-valor;"),
    _("pausa"): _("Espera una seria de milisegundos antes de pasar a la siguiente instrucción. Codigo C: Delayms(valor);"),
    _("servo"): _("Controla los 5 puerto destinados a servomotores, el primer parametro es el valor del servo, el segundo parametro es los grados de movimiento (0 a 255). Codigo C: ServoWrite(valor1,valor2);"),
    _("servos"): _("controla los 5 servos al mismo tiempo. Cada parametro representa el valor en grados de cada servo (0 a 255). Codigo C: ServoWrite(10,valor); ServoWrite(11,valor); ServoWrite(12,valor); ServoWrite(8,valor); ServoWrite(9,valor);"),
    _("var"): _("Genera un entero simple (0 -255) , el primer parametro es el nombre de la variable, el segundo valor representa el entero. Codigo C: int valor=valor;"),
    _("si"): _("iteración condicional. Codigo C: if(valor){"),
    _("mientras"): _("Repite las instrucciones dentro del bloque mientras se cumpla una expresion determinada. Codigo C: while(valor){"),
    _("nuevo"): _("Nuevo"),
    _("abrir"): _("Abrir"),
    _("guardar"): _("Guardar"),
    _("mover"): _("herramienta para mover los componentes"),
    _("borrar"): _("herramienta para borrar los componentes"),
    _("lapiz"): _("herramienta para colocación de componentes"),
    _("compilar"): _("compila el bloque"),
    _("cargar"): _("carga el codigo en el pic"),
    _("tortucaro"): _("prepara la placa para trabajar con turtleart"),
    _("ayuda"): _("menu de ayuda"),
    _("ver_codigo"): _("muestra el codigo fuente generado por icaro"),
    _("salir"): _("sale del programa"),
    _("servo_pausado"): _("Controla un servomotor con pausa en su recorrido para que vaya mas despacio. Codigo C: ServoLento(int servo,int inicial,int final,int tiempo);"),
    _("incluir"): _("Permite incluir como una función, bloques de codigo previamente guardadas con la opcion -gardar como funcion-. Los archivos deben guardarce dentro de la carpeta funciones con la extension .func. EXPERIMENTAL"),
    _("accion"): _("Llamada a una funcion previamente declarada con el componente incluir "),
    _("siguiente"): _("Dos bloques que sirven para separa la cadena de componentes y ordenar."),
    _("comentarios"): _("Es un comentario, no tiene efecto sobre el codigo fuente.")
}
