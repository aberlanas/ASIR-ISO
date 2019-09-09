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
# ********
# checkspelling - comprobar que una palabra est-a bien escrita

spell="ispell -l"

if [ $# -lt  1 ] ; then
  echo "Usage: $0 word or words" >&2 
  exit 1
fi

for word
do 
  if [ -z $(echo $word | $spell) ] ; then
    echo "$word:		spelled correctly."
  else
    echo "$word:		misspelled."
  fi
done

exit 0
