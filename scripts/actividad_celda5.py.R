#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 16 07:19:34 2024

@author: diegonavarrete
"""

"""
Actividad celda 5

Implementar las funciones: 
    * variable: regresa una variable entre las letras r a la z
    * flotante: regresa un flotante, puede ser positivo, negativo o cero
    * exponente: regresa un entero, puede ser negativo, positivo o cero.
    
def variable():
    pass
def flotante():
    pass
def exponente():
    pass

print(f"{flotante()}{variable()}^{exponente()}")
"""

"""
Pasos para la solución de un problema.

Definición:
    
    Implementar las funciones: 
        * variable: regresa una variable entre las letras r a la z
        * flotante: regresa un flotante, puede ser positivo, negativo o cero
        * exponente: regresa un entero, puede ser negativo, positivo o cero.

Delimitación:
    
    variable: letras entre r y z
    flotante: numero positivo, negativo o cero
    exponente: numero positivo, negativo o cero 

Propuestas de solución:
    
    variable: dar una letra entre r y z
    flotante: dar un numero positivo, negativo o cero (numeros con decimales)
    exponente: dar un numero positivo, negativo o cero (numeros enteros)

Ejemplos no triviales de la solución seleccionada:
    
    variable: 
        variable: r
        variable: v
        variable: z
        variable: x
        variable: s
        
    flotante: 
        
        flotante: 1.0
        flotante: 33.33
        flotante: -98.14
        flotante: 32.00
        flotante: 0.0
        flotante: -1.1
        
    exponente: 
        exponente: 0
        exponente: 40
        exponente: -10
        exponente: -2
        exponente: -99
        exponente: 2

Implementación
"""

import random

def variable():
    # Definimos un rango de letras entre 'r' y 'z'
    letras = "rstuvwxyz"
    return random.choice(letras)

def flotante():
    # Regresamos un número flotante entre -100 y 100
    return random.uniform(-100, 100)

def exponente():
    # Regresamos un número entero entre -20 y 20
    return random.randint(-20, 20)

# Imprimimos un ejemplo usando las funciones anteriores
print(f"{flotante()}{variable()}^{exponente()}")

"""
Definición de variables

Definición de datos iniciales

Fase de inicialización

    * datos fijos

    * datos interactivos

"""

"""
Solución del problema

Fase de procesamiento

"""

"""
Identificación de la variable que contiene el resultado

Fase de terminación
"""
