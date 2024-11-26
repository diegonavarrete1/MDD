#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct  7 07:50:08 2024

@author: diegonavarrete
"""

""" 
    *Dados
    *Mesa 
    *Jugador
    *Cuaderno, para anotar los resultados
"""

# Función para cambiar la hora aleatoriamente
def cambiar_hora_aleatoria():
    # Hora base fija para el día actual
    hora_base = [7, 40, 8]  # Horas: 07:40:08 (sin cambiar el día ni año)

    # Cambiar aleatoriamente los minutos y segundos
    hora_base[1] = (hora_base[1] + randint(-5, 5)) % 60  # Cambiar minutos entre -5 a +5
    hora_base[2] = (hora_base[2] + randint(-10, 10)) % 60  # Cambiar segundos entre -10 a +10

    # Asegurarse que los minutos y segundos sean válidos
    if hora_base[1] < 0:
        hora_base[1] += 60
    if hora_base[2] < 0:
        hora_base[2] += 60

    # Formatear la hora y devolverla
    return f"{hora_base[0]:02d}:{hora_base[1]:02d}:{hora_base[2]:02d}"

# Mostrar hora actualizada en el script
hora_actualizada = cambiar_hora_aleatoria()
print(f"Hora actualizada: {hora_actualizada}")

class Dados:
    def __init__(self, numero_de_caras=6, caras=[1, 2, 3, 4, 5, 6]):
        self.set_cantidad_caras(numero_de_caras)
        self.set_caras(caras)

    def set_cantidad_caras(self, numero_de_caras):
        self.__cantidad_caras = numero_de_caras

    def get_cantidad_caras(self):
        return self.__cantidad_caras

    def set_caras(self, simbolos_caras):
        self.__simbolos_caras = simbolos_caras

    def get_caras(self):
        return self.__simbolos_caras

    def tirar(self):
        """
        Devuelve un valor aleatorio de las caras del dado.
        """
        from random import choice
        return choice(self.get_caras())

    def __str__(self):
        return f"El dado tiene las siguientes caras: {self.get_caras()}"

# Ejemplo de uso
dado = Dados()
print(dado)  # Muestra las caras del dado
print(f"Resultado del lanzamiento: {dado.tirar()}")  # Muestra el resultado del lanzamiento
