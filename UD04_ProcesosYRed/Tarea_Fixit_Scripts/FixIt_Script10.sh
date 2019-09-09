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
# Calcula la suma de los numeros que conforman una IP que se la pasa como
# parametro.

# Ejemplo:
# ./Fixit_Script10.sh 127.0.0.1
#
# Devuelve : 128
#
# ./Fixit_Script10.sh 192.168.0.1 
# Devuelve : 361


echo " * ISO Test 10 "
echo " - Encuentra el error en el script"

IP=$(echo $1)
VALOR=0
for trozo in $IP; do
	VALOR=$(echo $trozo+$VALOR|bc)
done


echo " * $VALOR"

exit 0
