#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct 11 07:30:15 2024

@author: diegonavarrete
"""

import numpy as np

# Crear un arreglo de numpy del 1 al 5
arr = np.array([1, 2, 3, 4, 5])

# Operación de suma en todo el arreglo
arr_sum = arr + 10
print("Arreglo después de sumar 10:", arr_sum)

# Operaciones más complejas

# Crear una matriz de 2x2
matriz_numpy = np.array([[1, 2], [3, 4]])

# Calcular la inversa de la matriz
# Nota: La matriz debe ser cuadrada y no singular para que tenga inversa.
inversa = np.linalg.inv(matriz_numpy)
print("La inversa de la matriz es:\n", inversa)
