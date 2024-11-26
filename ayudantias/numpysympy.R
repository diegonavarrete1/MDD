#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""

Created on Tue Oct 15 07:39:13 2024

@author: diegonavarrete
"""

import numpy as np
import sympy as sp

# Definir una variable simbólica
x = sp.symbols("x")

# Crear una expresión simbólica
expr = sp.sin(x)**2 + sp.cos(x)**2

# Simplificar la expresión simbólicamente
expr_simplificada = sp.simplify(expr)
print("Expresión simbólica simplificada:")
sp.pprint(expr_simplificada)

# Evaluar la expresión numéricamente usando numpy
x_vals = np.linspace(0, 2 * np.pi, 100)  # Valores de 0 a 2π
y_vals = np.sin(x_vals)**2 + np.cos(x_vals)**2

print("\nValores numéricos calculados:")
print(y_vals[:5])  # Imprime los primeros 5 valores

