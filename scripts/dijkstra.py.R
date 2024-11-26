#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Nov 26 08:23:12 2024

@author: diegonavarrete
"""

def dijkstra(matriz_adyacencias, vertice_inicial):
    # Número de vértices del grafo a partir de la matriz de adyacencia
    num_vertices = len(matriz_adyacencias)
    
    # Lista de distancias mínimas a cada vértice (inicia como infinito)
    distancias_min = [float("inf")] * num_vertices
    
    # Vértices visitados
    visitados = [False] * num_vertices
    
    # Distancia al vértice inicial (0)
    distancias_min[vertice_inicial] = 0
    
    # Lista que almacena el antecedente de cada vértice para el camino más corto
    vertices_padre = [-1] * num_vertices
    vertices_padre[vertice_inicial] = -1  # El vértice inicial no tiene antecedente
    
    # Itera sobre todos los vértices (exceptuando el inicial)
    for _ in range(num_vertices - 1):
        # Vértice con su distancia mínima
        vertice_min = -1
        distancia_min = float("inf")
        
        # Buscar el vértice no visitado con la distancia mínima
        for indice_ver in range(num_vertices):
            if not visitados[indice_ver] and distancias_min[indice_ver] < distancia_min:
            vertice_min = indice_ver
                distancia_min = distancias_min[indice_ver]
        
        # Marca el vértice como visitado
        visitados[vertice_min] = True
        
        # Actualiza las distancias de los vértices vecinos
        for indice_ver in range(num_vertices):
            distancia_arista = matriz_adyacencias[vertice_min][indice_ver]
            if distancia_arista > 0 and distancia_min + distancia_arista < distancias_min[indice_ver]:
                vertices_padre[indice_ver] = vertice_min
                distancias_min[indice_ver] = distancia_min + distancia_arista
    
    # Imprime la solución
    imprime_solucion(vertice_inicial, distancias_min, vertices_padre)

def imprime_solucion(vertice_inicial, distancias_min, vertices_padre):
    num_vertices = len(distancias_min)
    
    # Imprime el título de la tabla
    print("Vértice\t Distancia\tRuta")
    
    # Imprime las distancias y las rutas
    for indice_ver in range(num_vertices):
        if indice_ver != vertice_inicial:
            print("\n", vertice_inicial, "->", indice_ver, "\t\t", distancias_min[indice_ver], "\t\t", end="")
            # Imprime la ruta desde el vértice inicial hasta el actual
            imprime_ruta(indice_ver, vertices_padre)

def imprime_ruta(vertice_actual, vertices_padre):
    if vertice_actual == -1:
        return
    # Recursivamente para el antecedente del vértice
    imprime_ruta(vertices_padre[vertice_actual], vertices_padre)
    
    # Vértice actual
    print(vertice_actual, end="")

if __name__ == "__main__":
    # Matriz de adyacencia
    matriz0 = [[0, 4, 0, 0, 0, 0, 0, 8, 0],
               [4, 0, 8, 0, 0, 0, 0, 11, 0],
               [0, 8, 0, 7, 0, 4, 0, 0, 2],
               [0, 0, 7, 0, 9, 14, 0, 0, 0],
               [0, 0, 0, 9, 0, 10, 0, 0, 0],
               [0, 0, 4, 14, 10, 0, 2, 0, 0],
               [0, 0, 0, 0, 0, 2, 0, 1, 6],
               [8, 11, 0, 0, 0, 0, 1, 0, 7],
               [0, 0, 2, 0, 0, 0, 6, 7, 0]]

    # Llamamos al algoritmo de Dijkstra desde el vértice 0
    dijkstra(matriz0, 0)

