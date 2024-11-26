#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 25 15:42:10 2024

@author: diegonavarrete
"""

from random import randint

# Función para cambiar la hora aleatoriamente
def cambiar_hora_aleatoria():
    # Hora base fija para el día actual
    hora_base = [7, 37, 23]  # Hora original: 07:37:23

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

# Mostrar hora aleatoria
hora_actualizada = cambiar_hora_aleatoria()
print(f"Hora actualizada: {hora_actualizada}")

# Función para generar un nombre completo aleatorio
def nombre_completo(Apellidos = ["Martinez", "Maya"],
                    nombres = ["Julia"],
                    nombres1 = ["", ""]):
    """
    Esta función genera un nombre completo aleatorio usando listas de apellidos y nombres.
    Escoge aleatoriamente un apellido y un nombre de cada lista.
    
    Parameters:
    Apellidos : list, optional
        Lista de apellidos para elegir aleatoriamente. (Por defecto tiene 'Martinez' y 'Maya').
    nombres : list, optional
        Lista de nombres comunes. (Por defecto tiene 'Julia').
    nombres1 : list, optional
        Lista de nombres adicionales. (Por defecto vacía).

    Returns:
    str
        El nombre completo generado.
    """
    
    from random import choice as seleccionar  # Función para seleccionar aleatoriamente
    apellido1 = seleccionar(Apellidos)  # Seleccionar un apellido
    apellido2 = seleccionar(Apellidos)  # Seleccionar otro apellido
    nombre1 = seleccionar(nombres)  # Seleccionar un nombre
    nombre2 = seleccionar(nombres1)  # Seleccionar otro nombre

    # Construir el nombre completo
    completo = f"{apellido1} {apellido2} {nombre1} {nombre2}"
    return completo

# Ejemplo con el nombre "Martinez Maya Julia"
nombre_generado = nombre_completo()
print(f"Nombre completo generado: {nombre_generado}")
