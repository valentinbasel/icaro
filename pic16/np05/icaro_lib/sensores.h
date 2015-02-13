/*
 * sensores.h
 * 
 * Copyright 2014 valentin basel <valentin@localhost.localdomain>
 * 
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
 * MA 02110-1301, USA.
 * 
 * 
 */


#include <stdio.h>

int ping()
{
	int Dato=0;
	//Pin del eco en bajo
	while (digitalread(24) == LOW) 
	{	
	  	digitalwrite(23, HIGH);//Activa el disparador
		Delayus(50);//Espera 50 microsegundos (minimo 10)
		digitalwrite(23, LOW);//Desactiva el disparador
	 }
	//Pin de eco en alto hasta que llegue el eco	 
	while (digitalread(24) == HIGH) 
	{
		  Dato++;//El contador se incrementa hasta llegar el eco
		  Delayus(58);//Tiempo en recorrer dos centimetros 1 de ida 1 de vuelta
	 }
	 
	return Dato;
}

