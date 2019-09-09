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
# Obtiene del fichero /etc/apt/sources.list aquellas lineas que contienen
# la palabra "ubuntu" y las copia a un fichero que se llama: /tmp/sourcesubuntu.txt

echo " * ISO Test 14 "
echo " - Encuentra el error en el script"

nano /etc/apt/sources.list| grep ubuntu > /tmp/sourcesubuntu.txt



exit 0
