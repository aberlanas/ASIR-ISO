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
# Obtiene el tamanyo del fichero VMLINUZ que hay en /vmlinuz y el tamanyo
# del fichero que hay en el destino del enlace y SOLO ESE.


# Ejemplo:
# ./Fixit_Script09.sh 
#
# Devuelve :
#
# 0	/vmlinuz
# 7,1M	/boot/vmlinuz-4.10.0-37-generic


echo " * ISO Test 09 "
echo " - Encuentra el error en el script"

du -hs /vmlinuz
du -hs /boot/vm*

exit 0
