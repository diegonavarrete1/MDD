##!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov  7 21:40:23 2022

@author: enrique
"""
from time import sleep
from random import uniform

class pirinola(object):
    def __init__(self, ponderadores = None):
        self.set_caras()
        self.set_ponderadores(ponderadores)
    def set_caras(self):
        self.__caras = ("Pon 1", "Pon 2", "Toma 1", "Toma 2", "Toma todo", "Todos ponen")
    def set_ponderadores(self, ponderadores):
        self.__ponderadores = ponderadores
    def get_caras(self):
        return self.__caras
    def get_ponderadores(self):
        return self.__ponderadores
    def girar(self):
        if self.get_ponderadores == None:
            from random import choice
            return choice(self.get_caras())
        else:
            from random import choices
            return choices(self.get_caras(),weights=self.get_ponderadores(), k=1)[0]

class jugador(object):
    def __init__(self, nombre=None, jellybeans=10):
        self.set_nombre(nombre)
        self.set_jellybeans(jellybeans)
    def set_nombre(self, nombre):
        if nombre == None:
            nombre = genera_nombre()
        self.__nombre = nombre
    def set_jellybeans(self, jellybeans):
        self.__jellybeans = jellybeans
    def get_jellybeans(self):
        return self.__jellybeans
    def get_nombre(self):
        return self.__nombre
    def recibir(self, cantidad):
        self.set_jellybeans(self.get_jellybeans() + cantidad)
    def dar(self, cantidad):
        if cantidad > self.get_jellybeans():
            jb = self.get_jellybeans()
            self.set_jellybeans(0)
            return jb 
        else:
            self.set_jellybeans(self.get_jellybeans() - cantidad)            
            return cantidad
        self.get_jellybeans()
    def __str__(self):
        return f"{self.get_nombre()} tiene {self.get_jellybeans()} jellybeans\n"

class canasta(object):
    def __init__(self):
        self.set_contenido(0)
    def set_contenido(self, jellybeans):
        self.__jellybeans = jellybeans
    def get_contenido(self):
        return self.__jellybeans
    def vacia(self):
        if self.get_contenido() == 0:
            return True
        else:
            False
    def agregar(self, n):
        self.set_contenido(self.get_contenido() + n )
    def extraer(self, n):
        if n <= self.get_contenido():
            self.set_contenido( self.get_contenido() - n )
        else:
            self.set_contenido(0)
    def __str__(self):
        return f"La canasta tiene {self.get_contenido()} picafresas"
def genera_nombre():
    from random import randint
    return "Jugador" + str(randint(1, 20))
    
pirinola1 = pirinola()
pirinola2 = pirinola((3/6, 3/6, 1/6, 1/6, 1/6, 1/6))
pirinola3 = pirinola((1/6, 1/6, 4/6, 4/6, 1/6, 1/6))
pirinola3 = pirinola((1/6, 1/6, 1/6, 1/6, 5/6, 5/6))
print(pirinola1.girar())
print(pirinola2.girar())
print(pirinola3.girar())
j1 = jugador()
jugadores = [jugador() for _ in range(4)]

class mesa(object):
    def __init__(self, ponderadores = None, jugadores= None, canasta_ = None):
        self.set_pirinola(ponderadores)
        self.set_jugadores(jugadores)
        self.set_canasta(canasta_)
        self.set_turno(0)
    def set_pirinola(self, ponderadores):
        self.__pirinola = pirinola(ponderadores)
    def get_pirinola(self):
        return self.__pirinola
    def set_jugadores(self, jugadores):
        if jugadores == None:
            self.__jugadores = [jugador() for _ in range(4)]
        else:
            self.__jugadores = [jugador(jugador_) for jugador_ in jugadores]
    def get_jugadores(self):
        return self.__jugadores
    def cantidad_jugadores(self):
        return len(self.get_jugadores())
    def set_canasta(self, canasta_):
        self.__canasta = canasta()
    def get_canasta(self):
        return self.__canasta
    def set_turno(self, turno):
        self.__turno = turno
    def get_turno(self):
        return self.__turno
    def avanza_turno(self):
        self.set_turno( (self.get_turno()+1) % self.cantidad_jugadores() )
    def toma(self,jugador,cuantos):
        self.get_canasta().extraer(cuantos)
        self.get_jugadores()[self.get_turno()].recibir(cuantos)
        self.avanza_turno()
    def pon(self,jugador,cuantos):
        jb = self.get_jugadores()[self.get_turno()].dar(cuantos)        
        self.get_canasta().agregar(jb)
        self.avanza_turno()
    def todos_ponen(self, n):
        for jugador in self.get_jugadores():
            self.pon(jugador,n)
            
    def jugar(self):
        self.todos_ponen(5)
        #print(f"Hay {self.get_canasta().get_contenido()} jellybeans en la mesa")
        #print(*self.get_jugadores())
        tiros = 0
        while not self.get_canasta().vacia() and tiros< 150:
            print(f"Hay {self.get_canasta().get_contenido()} jellybeans en la mesa")            
            resultado = self.get_pirinola().girar()
            turno = self.get_turno()
            jugador = self.get_jugadores()[turno]
            if resultado == "Pon 1":
                self.pon(jugador, 1)
            elif resultado == "Pon 2":
                self.pon(jugador, 2)
            elif resultado == "Toma 1":
                self.toma(turno, 1)
            elif resultado == "Toma 2":
                self.toma(turno,2)
            elif resultado == "Toma todo":
                self.toma(turno, self.get_canasta().get_contenido())
                print(f"Ganó el jugador {self.get_jugadores()[turno]}")
            elif resultado == "Todos ponen":
                self.todos_ponen(1)
            tiros += 1
            #self.avanza_turno()            
            print(f"{resultado} {jugador}")
            #sleep(1.5)
            sleep(uniform(1.3,1.5))
    def __str__(self):
        return f"Hay {self.get_canasta().get_contenido()} jellybeans en la mesa"
        #print(*self.get_jugadores())
# %%
if __name__ == "__main__":

    print("-"*25)
    juego_pirinola = mesa() 
    juego_pirinola.jugar()
    print(juego_pirinola)
    # print(juego_pirinola.get_canasta().get_contenido())
    # print(*juego_pirinola.get_jugadores())
    # %%
    print("*"*25)
    juego_pirinola1 = mesa((2/6, 2/6, 2/6, 2/6, 3/6, 2/6)) 
    juego_pirinola1.jugar()
    print(juego_pirinola1.get_canasta().get_contenido())
    print(*juego_pirinola1.get_jugadores())
    # %%
    print("*"*25)
    juego_pirinola1 = mesa((2/6, 2/6, 2/6, 2/6, 1/6, 3/6)) 
    juego_pirinola1.jugar()
    print(juego_pirinola1.get_canasta().get_contenido())
    print(*juego_pirinola1.get_jugadores())

