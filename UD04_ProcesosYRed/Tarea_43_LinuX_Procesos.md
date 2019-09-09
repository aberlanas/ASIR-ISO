---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
contenidos: [C4.5]
---

# Tarea: Procesos - GNU/LinuX

Hemos visto en teoría como se controlan los procesos mediante herramientas gráficas y mediante la terminal. Vamos a repasar estos conceptos a través de Shell Scripts.

Adjuntar los scripts realizados en un único fichero **zip**.

## Ejercicio 1

Modifica el siguiente script para mande la señal 9 (`sigkill`) al proceso que encuentra.

```shell
#!/bin/bash

echo " Obtenemos el PID"
PID_AUX=$(ps -e | grep firefox | cut -d " " -f2)
echo " - PID : $PID_AUX"
kill -10 $PID_AUX
exit 0
```

## Ejercicio 2

Modifica el siguiente script para que muestre los PIDS de los procesos en el árbol que muestra `pstree`.

```shell
#!/bin/bash

echo " Obtenemos el PID"
PID_AUX=$(ps -e | grep firefox | cut -d " " -f2)
echo " - PID : $PID_AUX"
pstree $PID_AUX
exit 0
```

## Ejercicio 3

Modifica el siguiente script para que lance un proceso que se le pide al usuario (mediante entrada estándar) con prioridad 10.

```shell
#!/bin/bash

echo -n " Indique el proceso : "
read PROCESO
nice $PROCESO
exit 0
```

## Ejercicio 4

En la empresa _Creando, Creando, vamos mejorando_ están teniendo muchos problemas con dos procesos que se ejecutan cada noche para imprimir los trabajos que dejan los diseñadores preparados para la impresora 3D. Ambos procesos se lanzan a la vez y deberían acabar en la mañana, pero hay veces que por problemas internos no finalizan bien y se quedan `zombies`. Nos han pedido que realicemos un Script que ejecute antes de lanzarlos una serie de comprobaciones y que lance los procesos con una prioridad ALTA (entre `-4` y `-6`).

Los procesos que deben ser comprobados y más tarde lanzados son:

```shell
imprime-normal
imprime-3d
```

