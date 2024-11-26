#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct 14 11:57:17 2022
Modified on Tue Sep  3 15:32:0 2024

@author: enrique
"""

"""
Dentro de los múdulos integrados que tiene python está random
cuya finalidad es generar valores aleatoreos.
https://www.geeksforgeeks.org/python-random-module/
"""
# %% Printing a random value from a list
"""
Imprimiendo un elemento aleatorio de una lista, recuerden que las listas
contienen cualquier objeto, ¿podrían ser monomios, racionales, alumnos o 
seres humanos?
"""
import random

list1 = [1, 2, 3, 4, 5, 6]
print(random.choice(list1))

vocales = ['a','e','i','o','u']
print(random.choice(vocales))

semana = ['lunes','martes','miercoles', 'jueves','viernes']
print(random.choice(semana))

finde = ['sabado','domingo']
print(random.choice(finde))

from random import choice

dias = semana + finde
print(choice(dias))


"""
Actividad celda 1

Implementar la función nombre_completo que regresa nombres completos
generados aleatoriamente; es decir, que incluya: primer apellido,
segundo apellido y uno o dos nombres, es decir, en algunas ocaciones el sera un
solo nombre y en algunas otras ocaciones seran dós nombres.

def nombre_completo():    
    pass
alumnos = [nombre_completo() for _ in range(10)]
print(alumnos)
"""
# %% Creating random numbers with seeding value
"""
Creando números aleatorios en el intervalo [0.0, 1.0),
con un valor de cálculo inicial (semilla)
"""
import random

random.seed(5)

print(random.random()) 
print(random.random())

random.seed(15)

print(random.random()) 
print(random.random())

from random import seed, random

seed()
print(random())
print(random())
"""
Actividad celda 2

Utilizando la función random() implementar la función aleatorio_entre
que regrese números aleatorios entre 0.25 y 0.75

def aleatorio_entre():
    pass

valores = [aleatorio_entre() for _ in range(15)]
print(valores)
"""
# %% Creating random integers
"""
Creando enteros aleatorios
"""
import random
  
# Generando un número aleatorio
# en un rango positivo
r1 = random.randint(5, 15)
print("Un entero aleatorio entre 5 y 15 es % s" % (r1))
  
# Genera un número aleatorio
# en un rango negativo
r2 = random.randint(-10, -2)
print("Random number between -10 and -2 is % d" % (r2))

"""
con fstings
"""
from random import randint

a = 5
b = 15
r3 = randint(a, b)
print(f"Número aleatorio entre {a} y {b} es: {r3}")
  
# Genera un número aleatorio
# en un grango negativo
a = -10
b = -2
print(f"Número aleatorio entre {a} y {b} es: {randint(-10, -2)}" )

"""
Actividad celda 3

Implementar la función rectágulo_aleatorio que regresa los lados 
de un rectángulo de medida aleatoria cada lado.

def rectágulo_aleatorio():
    pass

b,h = rectángulo_aleatorio()
print(f"El rectángulo tiene base {b} y altura {h}")

"""
# %%  Creando flotantes aleatorios
# Python3 program to demonstrate
# Programa en python3 para demostrar
# el uso de la funcion random()
	
# import random
from random import random
	
# Muestra un valor aleatorio
print(random())
"""
Actividad celda 4

Implementar la función aleatorio_entreAB que regresa un flotante aleatorio
entre a y b
def aleatorio_entreAB(a, b):    
    pass
a = -7.3
b =  5.2
print(f"Un valor aleatorio entre {a} y {b}: {aleatorio_entreAB(a,b)}")
"""

# %% Seleccionando elementos aleatorios de una lista, cadena y tupla 
# Programa en python3 para mostrar el uso del método choice()
"""
Seleccionado elementos aleatorios de una lista, listas aleatorias de una cadena
o elementos aleatorios de una tupla
"""

# import random
import random

# muestra un valor aleatorio de una lista
list1 = [71, 82, 23, 46, 59, 64]
print(random.choice(list1))

# Muestra un elemento aleatorio de una cadena
string = "geeks"
print(random.choice(string))

# muestra un elemento aleatorio de una tupla
tuple1 = (14, 52, 32, 46, 85)
print(random.choice(tuple1))

"""
Actividad celda 5

Implementar las funciones: 
    * variable: regresa una variable entre las letras r a la z
    * flotante: regresa un flotante, puede ser positivo, negativo o cero
    * exponente: regresa entero, puede ser negativo, positivo o cero.
    
def variable():
    pass
def flotante():
    pass
def exponente():
    pass

print(f"{flotante()}{variable()}^{exponente()}")
"""
# %% Mezclando una lista

# import the random module
"""
mezclando una lista
"""
import random
  
# se declara la lista
ejemplo = [1, 2, 3, 4, 5]
  
print("Listas original: ")
print(ejemplo)
  
# primer mezcla
random.shuffle(ejemplo)
print("\nDespués de la primera mezcla: ")
print(ejemplo)
  
# segunda mezcla
random.shuffle(ejemplo)
print("\nDespués de la segunda mezcla : ")
print(ejemplo)

"""
Ejemplo cartas del juego uno
"""
from random import shuffle as mezclar

colores = ["Azul", "Rojo","Amarillo", "Verde"]
normales = [f"{número}-{color}" for color in colores for número in range(10)]

normales = []
for color in colores:
    for número in range(10):
        #print(f"{número}-{color}")
        normales.append(f"{número}-{color}")

normales = ["0-Azul", "1-Azul","2-Azul",
            "0-Rojo", "1-Rojo","2-Rojo",
            "0-Amarillo","1-Amarillo","2-Amarillo"]
        
#normales = [[f"{número}-{color}" for número in range(10)] for color in colores ]
            
from tabulate import tabulate

print("Cartas normales ordenadas")
original = [normales[0:10],normales[10:20],normales[20:30],normales[30:40]]
print(tabulate(original))

original_1 = [normales[0+3:10-1],
              normales[10+3:20-1],
              normales[20+3:30-1],
              normales[30+3:40-1]]
print(tabulate(original_1))

print("Cartas normales mezcladas")
mezclar(normales)
mezcladas = [normales[0:10],normales[10:20],normales[20:30],normales[30:40]]
print(tabulate(mezcladas))
"""
Actividad celda 6

Escribir un script (puede ser en una celda) que:
    * Genere en forma secuencial las cartas comodines 
      (pierde turno, reversa, cambio de color, +2 y +4) en 
      cada color (en todal 20 cartas).
    * Muestre las cartas comodines generadas
    * Mezcle las cartas comodines
    * Muestre las cartas comodines mezcladas
    * Genere el mazo completo mezclado, que inlcuye a las cartas normales 
      y las comodines
    * Muestre el mazo completo mezclado
    
    
"""
