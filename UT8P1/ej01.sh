#!/bin/bash

#Programa al que se le pasan dos números enteros como parámetros y se indica cual es mayor
if [[ $1 -eq $2 ]]; then
    echo "Introduce dos números diferentes"
elif [[ $1 -gt $2 ]]; then
    echo "El número $1 es mayor"
else
    echo "El número $2 es mayor"
fi