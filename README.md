Proyecto Icaro
---------------

Creado por Valentin Bassel  / http://www.roboticaro.org 
 


                         ____  ___    __    ____  _____ 
                        (_  _)/ __)  /__\  (  _ \(  _  )
                         _)(_( (__  /(__)\  )   / )(_)( 
                        (____)\___)(__)(__)(_)\_)(_____)



ACERCA DE
----------

ICARO es un proyecto de desarrollo de software y hardware libre para la ense-
ñanza de robótica en colegios primarios y secundarios. Se trata de acercar de forma
transparente y sencilla los fundamentos de la robótica tratando de simplificar conceptos
técnicos complejos para que los docentes necesiten conocimientos mínimos para poder
trabajar en el aula.

Se compone de una serie de paquetes de software que trabajan con placas de hard-
ware de bajo costo y fabricación, permitiendo investigar y diseñar pequeños robot pe-
dagógicos de forma sencilla, reciclando componentes de electrónica y aprovechando
las características de los distintos laboratorios de informática que se pueden encontrar
en los colegios. La idea principal es lograr software de muy bajos requerimientos que
pueda aprovechar cualquier tipo de computadora existente en un colegio o las netbooks
del plan OLPC, CONECTAR IGUALDAD o cualquier otro plan provincial vigente.

Tortucaro
------------
Tortucaro es un Plugin para Turtleart que implementa una serie de primitivas (blo-
ques básicos dentro de LOGO) que permiten generar una capa de abstracción para leer
y mandar señales a las placas de control. Aprovechando las primitivas de TurtleArt y
agregándole el plugin Tortucaro, se puede desarrollar un robot que responda a las se-
ñales del puerto Serie (o mediante un conversor serie/usb como el integrado ftl232) a
traves de una API programada en python y Pyserial.

Icaro-Bloques
--------------
Con Tortucaro se puede trabajar conectado a la netbook y usando placas basadas
en los integrados de Microchip PIC 16F628A2 (la gama más básica de PIC), aunque
no permite el desarrollo de robots independientes de la netbook. Para poder traba-
jar con microcontroladores con capacidad para tener un Bootloader (como los PICs
18F45503 , 18F25504) se desarrolló ICARO-BLOQUES, un entorno gráfico muy simi-
lar a TurtleArt, pero específico para generar código ANSI C para el compilador SDCC.

ICARO-BLOQUES está basado en todo el trabajo hecho para el proyecto PINGUINO,
un clon de ARDUINO pero hecho con arquitectura de PIC (18F2550).

PINGUINO fue escrito por Jean Mandom con la idea de poder tener un hardwa-
re basado en PIC con compatibilidad con las placas ARDUINO (basadas en ATMEL)
y escrito integramente en PYTHON. PINGUINO a su vez está basado en el proyecto
VASCO-PUF que diseñó un bootloader y un software para carga del mismo. El integra-
do PIC18F4550 utilizado en PINGUINO tiene varias características interesantes para
su elección dentro del proyecto ICARO: es más barato que su equivalente en ATMEL,
tiene integración USB por hardware, viene disponible en formato DIP (que facilita la
fabricación de PCBs al no usar soldadura superficial), posee 40 pines de entrada/salida,
PWM, 8 entradas analógicas (PORT-A), conexión serie, etc.

Apicaro
--------
Apicaro es un modulo python para poder comunicar la placa Np05 mediante python-serial.
Tiene las clases y funciones que permiten implementar un protocolo de transferencia 
mediante python.

Desarrollo
-----------
Valentin Basel  - valentinbasel@gmail.com

Contribuciones
--------------
Neville A. Cross - yn1v@fedoraproject.org
Lucas Costas - puixima@gmail.com
Javier Castrillo - jcastrillo@educ.ar

Empaquetamiento RPM
--------------------
Eduardo Javier Echeverria Alvarado - echevemaster@gmail.com

Yader Velásquez - yajosev@gmail.com

Omar Berroterán Silva - omarberroteranlkf@gmail.com

Diseño gráfico
----------------
María Leandro - tatica@fedoraproject.org
Mauro Paez - maureliopaez@gmail.com

Diseño Web
----------
Aura Lila Gutiérrez Tejada, lilixx@fedoraproject.org


Web
-----
http://roboticaro.org/

http://sistema-icaro.blogspot.com.ar/

https://github.com/valentinbasel/icaro


Lincencia
-----------
El proyecto Icaro es un proyecto de software libre liberado bajo licencia GPL v3, vea el archivo COPYING para mas detalles. 

Algunos componentes de este proyecto usan otra licencia como LGPL, tal como se describe en el archivo COPYING-LGPLv2, estos compenentes tienen especificado la licencia correspondiente en el encabezado de cada archivo. 
