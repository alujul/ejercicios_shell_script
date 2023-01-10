#!/bin/bash

#Script que indica si el fichero pasado como parámetro existe o no y indica si se trata de un fichero regular o un directorio.

     echo "El fichero no existe"
elif [[ -d $1 ]]; then
    echo "El fichero existe y se trata de un directorio"
elif [[ -f $1 ]]; then
    echo "El fichero existe y se trata de un fichero regular"
else 
    echo "El fichero existe pero no se trata ni de un directorio ni de un fichero regular"
fi