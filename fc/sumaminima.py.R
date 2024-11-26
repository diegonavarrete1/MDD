#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct  4 22:45:55 2024

@author: diegonavarrete
"""

# %% Plan
""" Pasos para la solución de un problema.

Definición:
    
Imagina que se te da una cuadrícula (matriz) de m ∗ n llena de números enteros
no negativos, tu trabajo es encontrar un camino desde la celda superior izquierda
hasta la celda inferior derecha. Los enteros que componen dicho camino al ser sumados
deben dar como resultado la suma mínima. Solo puedes moverte hacia abajo o a la derecha.

Delimitación:
    - Números no negativos.
    - Las matrices pueden ser de tamaño hasta 200x200.
    - Los valores de la cuadrícula están entre 1 y 200.

Propuestas de solución:
    - Se utiliza un enfoque de programación dinámica para calcular el camino mínimo.
    - En una matriz auxiliar `dp`, se almacenan las sumas mínimas para llegar a cada celda.

Ejemplos no triviales de la solución seleccionada:

Implementación:
"""

def caminoSumaMin(cuad):
    """
    Calcula la suma mínima de un camino desde la esquina superior izquierda
    hasta la esquina inferior derecha de una cuadrícula de enteros no negativos,
    moviéndote solo hacia la derecha o hacia abajo.

    Args:
      cuad (list[list[int]]): Matriz (cuadrícula) de enteros no negativos.

    Returns:
      int: La suma mínima del camino.
    """
    m = len(cuad)    # Número de filas de la cuadrícula.
    n = len(cuad[0]) # Número de columnas de la cuadrícula.

    # Matriz de programación dinámica (dp) donde dp[i][j] contiene la suma mínima
    # hasta la celda (i, j).
    dp = [[0] * n for _ in range(m)]

    # Fase de inicialización
    dp[0][0] = cuad[0][0]  # La suma mínima para la celda inicial es el valor en (0, 0)

    # Llenar la primera fila (solo se puede mover desde la celda anterior a la izquierda)
    for j in range(1, n):
        dp[0][j] = dp[0][j-1] + cuad[0][j]

    # Llenar la primera columna (solo se puede mover desde la celda anterior arriba)
    for i in range(1, m):
        dp[i][0] = dp[i-1][0] + cuad[i][0]

    # Fase de procesamiento para el resto de la matriz
    for i in range(1, m):
        for j in range(1, n):
            dp[i][j] = cuad[i][j] + min(dp[i-1][j], dp[i][j-1])

    # Fase de terminación: El valor en la esquina inferior derecha contiene la suma mínima.
    return dp[m-1][n-1]

# Ejemplos de matrices de entrada
c1 = [[1, 1, 4, 2], [3, 1, 3, 2], [51, 130, 1, 0], [0, 2, 3, 4]]
c2 = [[1, 1, 1], [1, 0, 1], [4, 23, 1]]
c3 = [[10, 20, 30], [40, 50, 60], [70, 80, 90]]
c4 = [[5, 5, 5, 5], [5, 5, 5, 5], [5, 5, 5, 5], [5, 5, 5, 5]]

# Salidas para las matrices de ejemplo
print(f"Salida para c1: {caminoSumaMin(c1)}")  # Esperado: 12
print(f"Salida para c2: {caminoSumaMin(c2)}")  # Esperado: 7
print(f"Salida para c3: {caminoSumaMin(c3)}")  # Esperado: 210
print(f"Salida para c4: {caminoSumaMin(c4)}")  # Esperado: 20

"""
  Definición de variables:
  m: Número de filas en la matriz.
  n: Número de columnas en la matriz.
  dp: Matriz que almacena las sumas mínimas hasta cada celda.
  i, j: Índices para iterar sobre las filas y columnas de la matriz.

Definición de datos iniciales:
  cuad: Matriz de entrada que representa la cuadrícula con los valores de la misma.
"""

