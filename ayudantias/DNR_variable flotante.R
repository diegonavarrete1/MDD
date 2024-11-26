#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 26 10:37:26 2024

@author: diegonavarrete

# %% Plantilla
""" Pasos para la solución de un problema.
Definición:
    Implementar funciones que generen variables aleatorias entre las letras r y z,
    números flotantes (positivos, negativos o cero), y exponentes enteros (positivos, negativos o cero), para un mejor control tomamos 
    números del -20 al 20, para el exponente, mientras que para el flotante del -100 al 100.

Delimitación:
    Solo se usará la generación de números y letras con funciones básicas de Python.

Propuestas de solución:
    Se utilizarán las funciones random para generar los números y letras aleatorias.
    También se hace uso de la función ord, que hace esta función? La función ord() en Python sirve para obtener el valor numérico 
    (código ASCII) correspondiente a un carácter. 
    Esto permite manipular caracteres en su representación numérica, como en el caso de las letras del alfabeto.
    Ejemplo:
    ord('a') devuelve 97, que es el valor ASCII de la letra 'a'
    Otra función que es necesaria mensionar para que sirve es chr(): La función chr() en Python es el inverso de ord(). 
    Toma un número entero y devuelve el carácter correspondiente en la tabla ASCII o Unicode. 
    Básicamente, convierte un valor numérico en su representación de carácter.
    Ejemplo:
    chr(97) devuelve 'a', que es el carácter correspondiente al valor ASCII 97.

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
    
    Ahora el print:
    Por ejemplo, el código puede generar una expresión como "-34.0y^3".

Implementación:
"""

# Fases de la implementación del código

"""
Definición de variables:
    * variable() -> Regresa una letra entre 'r' y 'z'
    * flotante() -> Regresa un número flotante que puede ser positivo, negativo o cero.
    * exponente() -> Regresa un entero que puede ser positivo, negativo o cero.
"""

import random

def variable():
    """ Regresa una letra entre 'r' y 'z' """
    return chr(random.randint(ord('r'), ord('z')))

def flotante():
    """ Regresa un número flotante que puede ser positivo, negativo o cero """
    return float(random.randint(-100, 100))

def exponente():
    """ Regresa un exponente entero que puede ser positivo, negativo o cero """
    return random.randint(-20, 20)

"""
Definición de datos iniciales:
    No se requieren datos iniciales.
"""

# Fase de inicialización
"""
    * datos fijos: No aplica.
    * datos interactivos: No aplica.
"""

# Solución del problema
# Fase de procesamiento
"""
El problema se resuelve generando una expresión en la forma de un número flotante seguido de una
letra entre 'r' y 'z', seguido de un exponente entero.
"""

# Identificación de la variable que contiene el resultado
resultado = f"{flotante()}{variable()}^{exponente()}"

# Fase de terminación
print(resultado)

"""
Referencia en formato APA:

Python Software Foundation. (2024). Built-in Functions - ord() [Documentation].
Python.org. https://docs.python.org/3/library/functions.html#ord
Python Software Foundation. (2024). Built-in Functions - chr() [Documentation]. 
Python.org. https://docs.python.org/3/library/functions.html#chr
"""


