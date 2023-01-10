#!/bin/bash

#Suma dos números y si no se pasan como parámetros devolverá un error.

if [[ $# != 2 ]]; then
    echo "Se deben pasar dos números como parametros."
else
    echo "La suma de los dos números es $(($1 + $2))"
fi