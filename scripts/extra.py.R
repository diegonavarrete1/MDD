#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Aug 30 07:42:10 2024

@author: diegonavarrete
"""

import heapq

def dijkstra(matriz_adyacencias, vertice_inicial):
    num_vertices = len(matriz_adyacencias)
    distancias_min = [float("inf")] * num_vertices
    distancias_min[vertice_inicial] = 0
    padres = [-1] * num_vertices
    visitados = [False] * num_vertices
    
    # Usamos una cola de prioridad para obtener el vértice con la menor distancia
    cola_prioridad = [(0, vertice_inicial)]  # (distancia, vertice)
    
    while cola_prioridad:
        # Extraemos el vértice con la menor distancia de la cola de prioridad
        distancia_actual, vertice_actual = heapq.heappop(cola_prioridad)
        
        # Si el vértice ya fue visitado, saltamos
        if visitados[vertice_actual]:
            continue
        
        visitados[vertice_actual] = True
        
        # Recorremos todos los vértices adyacentes al vértice actual
        for i, peso_arista in enumerate(matriz_adyacencias[vertice_actual]):
            if peso_arista > 0 and not visitados[i]:
                nueva_distancia = distancia_actual + peso_arista
                # Si encontramos una distancia más corta a un vértice vecino
                if nueva_distancia < distancias_min[i]:
                    distancias_min[i] = nueva_distancia
                    padres[i] = vertice_actual
                    heapq.heappush(cola_prioridad, (nueva_distancia, i))
    
    return distancias_min, padres

def imprime_solucion(vertice_inicial, distancias_min, padres):
    num_vertices = len(distancias_min)
    print("Vértice\t Distancia\tRuta")
    
    for vertice in range(num_vertices):
        if vertice != vertice_inicial:
            ruta = []
            actual = vertice
            while actual != -1:
                ruta.insert(0, actual)
                actual = padres[actual]
            
            # Imprimir la ruta completa
            print(f"{vertice_inicial} -> {vertice} \t {distancias_min[vertice]} \t {' -> '.join(map(str, ruta))}")

# Ejemplo de uso
if __name__ == "__main__":
    # Matriz de adyacencias de ejemplo (grafico ponderado)
    # 0 indica que no hay arista entre dos vértices
    matriz_adyacencias = [
        [0, 7, 9, 0, 0, 14],
        [7, 0, 10, 15, 0, 0],
        [9, 10, 0, 11, 0, 2],
        [0, 15, 11, 0, 6, 0],
        [0, 0, 0, 6, 0, 9],
        [14, 0, 2, 0, 9, 0]
    ]
    
    vertice_inicial = 0
    distancias_min, padres = dijkstra(matriz_adyacencias, vertice_inicial)
    imprime_solucion(vertice_inicial, distancias_min, padres)

