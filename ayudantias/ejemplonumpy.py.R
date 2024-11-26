#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 10 07:40:59 2024

@author: diegonavarrete
"""

import numpy as np

# Crear dos arreglos de ejemplo
a = np.array([1, 2, 3])
b = np.array([4, 5, 6])

# Suma de los arreglos
print(f"Suma de arreglos: {a + b}")

# Producto punto entre los arreglos
producto_punto = np.dot(a, b)
print(f"Producto punto: {producto_punto}")

