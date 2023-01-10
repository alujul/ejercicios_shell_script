#!/bin/bash

#Realizar un script gestionusuarios.sh que permita dar de alta y de baja a
#usuario del sistema GNU/Linux indicados como argumento

if [[ $# -ne 4 && $# -ne 5 ]]; then
    echo "Error. La sintaxis correcta es
    ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]"
    echo $#
    exit
fi

alu="alu${3:0:2}${4:0:2}${2:0:1}"

if [[ $1 == "alta" ]]; then

    if [[ $# -eq 5 ]];then
        sudo groupadd $5 2> /dev/null
        sudo useradd -g $5 $alu
    else
        sudo useradd $alu
    fi 

elif [[ $1 == "baja" ]];then
    sudo userdel $alu

else
    echo "Error. La sintaxis correcta es
    ./gestionusuarios.sh alta/baja nombre apellido1 apellido2 [grupo]
    ultimo else"
fi