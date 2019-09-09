---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
contenidos: [C4.5]
---

# Tarea: FixIt!

Se han preparado una serie de Scripts (en concreto 24), que tienen algún fallo de sintáxis, deberéis de leerlos, y arreglarlos para que se comporten como está previsto.

Cada uno de los scripts cuenta con una pequeña descripción al inicio que nos indica cual es el resultado que se esperaba (que **no** el que se obtiene al ejecutarlo).

Ejemplo:

```shell

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

# FUNCION: Debe mostrar 2 mensajes al usuario, 
# esperar 1 segundo y 
# mostrar un tercero"

echo " * ISO Test 01 "
echo " - Encuentra el error en el script"
sleep 1

ehoc " Esto deberia mostrarse por pantalla"

exit 0

```

Entregar en un fichero comprimido todos los scripts una vez arreglados.
