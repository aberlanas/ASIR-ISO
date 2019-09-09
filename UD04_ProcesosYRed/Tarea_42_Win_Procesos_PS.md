---
title: UD04 - Administración de Procesos y Red
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Procesos, Red]
contenidos: [C4.5]
---

# Tarea: Procesos - PowerShell

Una vez vistos los procesos, vamos a realizar una serie de scripts que nos permitirán obtener información acerca de los procesos y realizar acciones sobre ellos.

``` powershell
Get-Process
Stop-Process
```

Referencias:

* [Get-Process](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/get-process?view=powershell-6)
* [Stop-Process](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/stop-process?view=powershell-6)


## Ejercicio 1

Realiza un Script que obtenga el los detalles del proceso cuyo nombre sea `MicrosoftEdge`

## Ejercicio 2

Realiza un Script que muestre todos los procesos cuyo nombre sea `svchost`

¿Qué hace este proceso? ¿Porqué hay tantos?

## Ejercicio 3

Realiza un Script que muestre la ruta al ejecutable del proceso de `MicrosoftEdge`

## Ejercicio 4

Realiza un Script que detenga el proceso del Bloc de notas

## Ejercicio 5

Realiza un script que muestre **tan solo** el porcentaje de la CPU de un proceso dado (por ejemplo `notepad`). 

## Ejercicio 6

¿Qué muestra el siguiente script?

``` powershell
Get-Process | where {$_.mainWindowTitle} | Format-List id, name, mainwindowtitle 
```
