#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 22 07:40:12 2024

@author: diegonavarrete
"""

import numpy as np
import sympy as sp
import matplotlib.pyplot as plt

# Paso 1: Simulación de lanzamiento de un dado con Numpy

# Función para simular el lanzamiento de un dado con 6 caras
def simular_lanzamientos(num_lanzamientos):
    return np.random.randint(1, 7, size=num_lanzamientos)

# Realizamos la simulación con 1000 lanzamientos
num_lanzamientos = 1000
resultados = simular_lanzamientos(num_lanzamientos)

# Contamos cuántas veces salió cada número del 1 al 6
valores, conteo = np.unique(resultados, return_counts=True)

# Mostramos los resultados de la simulación
print("Resultados de la simulación:")
for valor, cantidad in zip(valores, conteo):
    print(f"Número {valor}: {cantidad} veces")
