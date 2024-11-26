#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Nov 26 12:59:22 2024

@author: diegonavarrete
"""

import random

def tirar_dados():
  """Simula la tirada de dos dados y muestra los resultados."""

  dado1 = random.randint(1, 6)
  dado2 = random.randint(1, 6)
  suma = dado1 + dado2

  print(f"Dado 1: {dado1}")
  print(f"Dado 2: {dado2}")
  print(f"Suma: {suma}")

def main():
  """Función principal para ejecutar el programa."""

  while True:
    tirar_dados()
    respuesta = input("¿Quieres tirar los dados otra vez? (s/n): ")
    if respuesta.lower() != 's':
      break

if __name__ == "__main__":
  main()
