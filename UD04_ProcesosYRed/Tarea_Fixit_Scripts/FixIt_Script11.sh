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
# Busca en el directorio /usr/share todos los ficheros que  contengan 
# en su ruta el caracter indicado.

# Ejemplo:
# ./Fixit_Script11.sh 4
#
# Devuelve : 
# ...
#/usr/share/mysql-workbench/images/db.Routine.64x64.png
#/usr/share/mysql-workbench/images/db.Script.add.48x48.png
#/usr/share/mysql-workbench/images/db.Role.48x48.png
# ...

echo " * ISO Test 07 "
echo " - Encuentra el error en el script"
find /usr/share -xtype d -name "4*"

exit 0
