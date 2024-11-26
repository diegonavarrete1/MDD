#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Sep 17 23:40:01 2024

@author: diegonavarrete
"""

import heapq  # Usamos heapq para la cola de prioridad (min-heap)
from random import randint

# Función para cambiar la hora aleatoriamente
def cambiar_hora_aleatoria():
    # Hora base fija para el día actual
    hora_base = [23, 40, 1]  # Hora: 23:40:01 (sin cambiar el día ni el año)

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

# Implementación del algoritmo de Dijkstra
def dijkstra(grafo, inicio):
    # Inicializamos las distancias como infinito para todos los nodos
    distancias = {nodo: float('infinity') for nodo in grafo}
    distancias[inicio] = 0  # La distancia al nodo de inicio es 0
    
    # Cola de prioridad que ordena los nodos por la distancia más corta
    cola_prioridad = [(0, inicio)]
    
    while cola_prioridad:
        distancia_actual, nodo_actual = heapq.heappop(cola_prioridad)

        # Si la distancia actual es mayor a la registrada, saltamos este nodo
        if distancia_actual > distancias[nodo_actual]:
            continue

        # Recorremos los vecinos del nodo actual
        for vecino, peso in grafo[nodo_actual].items():
            # Calculamos la distancia al vecino sumando el peso de la arista
            distancia = distancia_actual + peso

            # Si encontramos una distancia más corta, la actualizamos
            if distancia < distancias[vecino]:
                distancias[vecino] = distancia
                # Añadimos el vecino con la nueva distancia a la cola de prioridad
                heapq.heappush(cola_prioridad, (distancia, vecino))

    # Devolvemos las distancias mínimas desde el nodo inicial
    return distancias

# Grafo de ejemplo con nodos y conexiones
grafo = {
    'A': {'B': 1, 'C': 4},  # A conecta con B (peso 1) y C (peso 4)
    'B': {'A': 1, 'C': 2, 'D': 5},  # B conecta con A, C y D
    'C': {'A': 4, 'B': 2, 'D': 1},  # C conecta con A, B y D
    'D': {'B': 5, 'C': 1}  # D conecta con B y C
}

# Ejecutamos el algoritmo de Dijkstra desde el nodo 'A'
distancias = dijkstra(grafo, 'A')

# Mostramos las distancias mínimas desde 'A'
print("Distancias desde el nodo A:", distancias)


"""
Implementación extra con otro grafo
"""
# Grafo con 5 nodos
grafo_5_nodos = {
    'A': {'B': 2, 'C': 5},    # A conecta con B y C (pesos 2 y 5)
    'B': {'A': 2, 'C': 3, 'D': 1},  # B conecta con A, C y D
    'C': {'A': 5, 'B': 3, 'D': 2, 'E': 3},  # C conecta con A, B, D y E
    'D': {'B': 1, 'C': 2, 'E': 1},  # D conecta con B, C y E
    'E': {'C': 3, 'D': 1}   # E conecta con C y D
}

# Ejecutamos Dijkstra desde el nodo 'A' en el nuevo grafo
distancias_desde_A = dijkstra(grafo_5_nodos, 'A')

# Mostramos las distancias mínimas desde 'A' en este grafo
print("Distancias mínimas desde el nodo A:", distancias_desde_A)
