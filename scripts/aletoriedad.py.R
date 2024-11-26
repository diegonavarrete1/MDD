#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Creado el 17 de octubre de 2024

@author: diegonavarrete
"""

import random

def variable():
    return chr(random.randint(ord('r'), ord('z')))

def flotante():
    return float(random.randint(-100, 100))

def exponente():
    return random.randint(-20, 20)

print(f"{flotante()}{variable()}^{exponente()}")
