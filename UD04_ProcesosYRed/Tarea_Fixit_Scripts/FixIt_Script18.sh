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
# Dado dos numeros si son multiploicados, su multiplicacion es
# mayor que 3000?

NuMERO_1=$1
NUMERO_2=$

let OPERACION=NUMERO_1*NUMERO_2

if ($OPERACION <= 3000); then
	print "La multiplicacion es mayor de 3000"
ELSE
	echo "La multiplicacion es menor de 3000."

exit 0
