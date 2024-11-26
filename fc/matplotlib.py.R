#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Oct 17 07:15:48 2024

@author: diegonavarrete
"""

import matplotlib.pyplot as plt
from random import randint

# Función para cambiar la hora aleatoriamente
def cambiar_hora_aleatoria():
    # Hora base fija para el día actual
    hora_base = [7, 20, 8]  # Horas: 07:20:08 (sin cambiar el día ni año)

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

# Datos de ejemplo
x = [1, 2, 3, 4, 5]
y = [1, 4, 9, 16, 25]

# Gráfico de líneas
plt.plot(x, y)
plt.title("Gráfico de líneas")
plt.xlabel("Eje X")
plt.ylabel("Eje Y")
plt.show()

#%%

categorias = ["A", "B", "C", "D"]
valores = [3, 7, 5, 9]

# Gráfico de barras
grafico = plt.bar(categorias, valores)

# Para añadir color a cada una de las barras
grafico[0].set_color("black")
grafico[1].set_color("red")
grafico[2].set_color("pink")
grafico[3].set_color("green")
plt.title("Gráfico de barras")
plt.xlabel("Categorías")
plt.ylabel("Valores")

plt.show()

#%%

import numpy as np

# Generador de datos aleatorios
data = np.random.randn(1000)

# Se crea un histograma
plt.hist(data, bins=30)
plt.title("Histograma")
plt.xlabel("Valor")
plt.ylabel("Frecuencia")
plt.show()

#%%

# Datos de ejemplo
x = [1, 2, 3, 4, 5]
y = [2, 3, 5, 7, 11]

# Etiquetas
plt.scatter(x, y)
plt.title("Gráfico de dispersión")
plt.xlabel("Eje X")
plt.ylabel("Eje Y")

# Mostrar el gráfico
plt.show()

#%%

# Datos de ejemplo
y1 = [1, 4, 9, 16, 25]
y2 = [2, 3, 5, 7, 11]

# Gráfico de líneas
plt.plot(x, y1, label="Cuadrados")
plt.plot(x, y2, label="Números primos")

# Etiquetas
plt.title("Gráfico de líneas")
plt.xlabel("Eje X")
plt.ylabel("Eje Y")
plt.legend()

