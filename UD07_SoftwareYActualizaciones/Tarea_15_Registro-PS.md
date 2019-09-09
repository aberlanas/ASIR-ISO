---
title: UD07 - Software y Actualizaciones
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Software, Actualizaciones]
contenidos: [C2.15,C3.5]
---

# Tarea: PowerShell y Registro de Windows

## Ejercicio 1

Describe qué acción realiza el siguiente script en PowerShell

```PowerShell
cd registry::
New-Item -type directory HKCU:\adminISO
```

## Ejercicio 2

Describe qué acción realiza el siguiente script en PowerShell

```PowerShell
cd registry::
New-Item -itemtype string HKCU:\adminISO -value "vlcinstalado"
```

## Ejercicio 3

Utilizando los dos scripts anteriores realiza un Script que cree una clave en HKCU que se llame `esbirro` y que almacene el valor : " Creado desde PowerShell"

## Ejercicio 4

Crea un Script que muestre las claves que se encuentren en:

```PowerShell
Microsoft.PowerShell.Core\Registry::HKEY_CURRENT_USER
```

## Ejercicio 5

Hemos visto en unidades anteriores que se le puede pasar a `Get-ChildItem` el parámetro `-Filter` que nos permite filtrar la salida, obteniendo tan solo aquellos que cumplan determinada condición.

¿Qué ocurre cuando ejecutamos la siguiente orden?¿Porqué?

```PowerShell
cd registry::
Get-ChildItem .\HKEY_CURRENT_USER\ -Filter "Name -eq 'LOGONSERVER'"
```

## Ejercicio 6

Crea un Script que utilizando:

```PowerShell
Copy-Item
```

Nos permita realizar una copia _completa_ de todas las claves que hay en :

```PowerShell
HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion
```

en la clave:

```PowerShell
HKCU
```

## Ejercicio 7

En este ejercicio vamos a añadir una clave a nuestro registro que va a contener dos valores.
Estos valores y claves estan almacenados en el fichero `adminiso.reg` que debeis descargar del Moodle.

Al ejecutar el fichero, se añadirán las claves a nuestro registro.

Si ejecutamos el script que teneis en el Moodle, se muestra el valor de una de las claves que habeis añadido:

```PowerShell
# Simple Script para obtener el valor
# de una clave de registro

Push-Location -Path Registry::

$VALOR = Get-ItemProperty -Path HKCU\adminISO -Name CampoDWord

Write-Host "El Valor es "$VALOR.CampoDWord

Pop-Location
```

Se pide:

* Realizar los pasos descritos y comprobar que obtenemos el valor : **42**.
* Utilizando el Editor de Registro modificar la clave `CampoDWord` y almacenar el valor que coincide con las últimas 3 cifras de vuestros DNI.
* Exportar esa nueva clave con los nuevos valores en un fichero que se llame: `NombreAlumno.reg` 

## Ejercicio 8

Visto el Script que se ha presentado en el ejercicio anterior, modificarlo para que muestre tanto el valor de `CampoDWord`, como el otro valor almacenado en la clave `adminiso`.

## Ejercicio 9

Crea un Script en PowerShell que nos muestre el valor de la clave que especifica la ruta de las carpetas personales de los usuarios en Windows.
