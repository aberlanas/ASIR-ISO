#!/bin/bash

# Todos los scripts de esta serie tienen algunos fallos, unos estan 
# en la syntaxis (es decir, en como estan escritos) y otros 
# tienen errores en la semantica (lo que quieren decir). No es tarea 
# facil muchas veces averiguar porque un script no esta funcionando
# o porque no hace lo que se "supone" deberia hacer. 

# Con el objetivo de que el alumnado aprenda a leer y a modificar 
# scripts para ajustarlos a sus necesidades se plantean estos ejercicios.

# Espero que aprendais!

# Para cada uno de los scripts se describe en los comentarios
# cual es la funcion del script.

# FUNCION:
# Obtiene todos los ficheros que han sido accedidos en las ultimas 24 horas 
# en la ruta especificada.

# Ejemplo:
# ./Fixit_Script12.sh /usr/
#
# Devuelve : 

echo " * ISO Test 07 "
echo " - Encuentra el error en el script"

find /home/you -atime 1 -type -f


exit 0
