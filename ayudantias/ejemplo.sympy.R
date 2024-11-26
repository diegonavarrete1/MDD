#!/usr/bin/env python3
# -*- coding: utf-8 -*-

"""
Created on Fri Oct 11 07:48:48 2024

@author: diegonavarrete
"""

# Importar SymPy, una biblioteca de álgebra simbólica en Python
import sympy as sp

# Definir variables simbólicas
# Estas se utilizarán para construir y manipular expresiones algebraicas
x, y = sp.symbols("x y")

# Definir una expresión matemática para trabajar
expresion = x**2 + 2 * x + 1

# Simplificar la expresión algebraica
# La función sp.simplify optimiza la representación de la expresión
expresion_simplificada = sp.simplify(expresion)
print("Expresión original:", expresion)
print("Expresión simplificada:", expresion_simplificada)

# Calcular la derivada de la expresión respecto a x
# Esto se hace con sp.diff, que realiza la diferenciación simbólica
derivada = sp.diff(expresion, x)
print("Derivada de la expresión:", derivada)

# Incluir operaciones adicionales para explorar el álgebra simbólica (opcional)
# Por ejemplo, evaluar la expresión simplificada en un valor específico
valor = 2
evaluacion = expresion_simplificada.subs(x, valor)
print(f"Evaluación de la expresión simplificada en x={valor}:", evaluacion)




 
