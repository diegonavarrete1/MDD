#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 21 08:23:12 2024

@author: diegonavarrete
"""

#%%
file = open("example.txt", "r")
file.close()

#%%
file = open("example.txt", "w")
file.close()

#%%
file = open("example.txt", "a")
file.close()

#%%
with open("example.txt", "r") as file:
    # Perform file operations here
    pass

#%%
# Reading the entire file content
with open("ejemplo.txt", "r") as file:
    content = file.read()
    print(content)

# Reading line by line
with open("ejemplo.txt", "r") as file:
    for line in file:
        print(line)

# Reading lines into a list
with open("ejemplo.txt", "r") as file:
    lines = file.readlines()
    for line in lines:
        print(line)

# %%
import csv

# Reading CSV data using csv.reader()
with open("example.csv", "r") as file:
    csv_reader = csv.reader(file)
    for row in csv_reader:
        print(row)
