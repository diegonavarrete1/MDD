#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Oct  4 07:51:58 2024


@author: diegonavarrete
*# -*- coding: utf-8 -*-
"""




"""
* Dados
* Mesa
* Jugador
* Cuaderno, para anotar los resultados 
"""
class dados:
    def __init__(self, numero_de_caras=6, caras = [1,2,3,4,5,6]):
        self.set_cantidad_caras(numero_de_caras)
    def set_cantidad_caras(self, numero_de_caras:
        self.__cantidad_caras = numero_de_caras
    def get_cantidad_caras(self):
        return self.__cantidad_caras
    def set_caras(self, simbolos_caras):
        self.__simbolos = simbolos_caras
    def get_caras(self):
        return self.__simbolos
    def tirar(self):
        
        from random import choice
        return choice(self.get_caras())
        pass
    def __str__(self):
        pass
        return f"{self.get_caras()}"   
   

