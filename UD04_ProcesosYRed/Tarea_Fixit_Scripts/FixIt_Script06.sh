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
# Calcula el sumatorio de los numeros hasta un numero que se indica como
# parametro.

# Ejemplo:
# ./Fixit_Script06.sh 4
#
# Devuelve : 4 + 3 + 2 + 1

echo " * ISO Test 06 "
echo " - Encuentra el error en el script"
VALOR=0
for f in $(seq 1 $1); do
	VALOR=$(echo $VALOR*$f|bc)
done

echo " * $VALOR"

exit 0
