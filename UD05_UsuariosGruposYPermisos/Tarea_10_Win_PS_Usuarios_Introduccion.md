---
title: UD05 - Usuarios, Grupos y Permisos
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Usuarios, Grupos, Permisos]
contenidos: [C3.1,C3.2]
criterios-evaluacion: [RA02-13,RA03-14]
---

# Tarea: Powershell básico

## Ejercicio 1

Abre PowerShell y ejecuta el siguiente comando:

``` powershell
Write-Host "Hola Mundo de Asir"
```
¿Qué resultado obtienes?


## Ejercicio 2

Para leer información que nos suministre el usuario se puede utilizar este comando:

``` powershell
$nombre = Read-Host "Dime tu nombre"
```

a continuación, podemos usar la **variable** `$nombre` en la ejecución de las siguientes órdenes:

``` powershell
Write-Host "Hola $nombre"
```

Utilizando el entorno **PowerShell ISE**, crea un pequeño script que nos pregunte por el nombre y luego nos salude.

Para poder ejecutar el script tanto dentro como fuera de **PowerShell ISE** necesitarás establecer la política de Ejecución de Scripts del Sistema Operativo, tal y como hemos visto en teoría.

## Ejercicio 3

Para poder ejecutar el script, hemos tenido que establecer la política de ejecución de scripts en el sistema.

Consulta la página web de la documentación de **PowerShell** y comprueba cual sería el comando para permitir durante **la sesión de PowerShell** todos los scripts que ejecutemos.

[[Documentación] Set-ExecutionPolicy](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-6)

## Ejercicio 4

Realiza un Script que pida al usuario que introduzca el password y lo guarde una variable $password.

## Ejercicio 5

Vamos a mejorar el código del ejercicio anterior, y vamos a guardar el password cifrado. Para ello, utiliza el parámetro `-asSecureString` en el `Read-Host`.

Al imprimirlo por pantalla, ¿qué se muestra?

## Ejercicio 5

El comando `New-LocalUser` nos permite crear usuarios locales al igual que si lo hiciéramos desde el entorno gráfico.

Los parámetros básicos son:

* `-Name`: login del usuario ("*esbirro*","*alu01*")
* `-FullName`: Nombre completo ("*Paco Garcia*","*Ana Palacios*")
* `-Description`: Descripción del usuario ("*Usuario sin privilegios*",...)
* `-Password`: Contraseña del usuario

Crea un script que pregunte por los tres campos anteriores y luego los utilizen el la ejecución del comando de la manera siguiente:

``` powershell

# Rellena los huecos

# Obtenemos el login

$login = 

# Obtenemos el nombre completo

$Nombre = 

# Obtenemos la descripcion

$Desc = 

# Obtenemos el password

$Pass = 

# Creamos el usuario local

New-LocalUser -Name $Nombre -Description $Desc -FullName $Nombre -Password $Pass


```

## Ejercicio 6

Crea un script que genere un usuario local con login "VIP" que no tenga password. 

> El resto de los parámetros necesarios, rellénalos como consideres, pero no olvides documentar el proceso.

Consulta la página de la documentación:

[[Documentación]: New-LocalUser](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.localaccounts/new-localuser?view=powershell-5.1)

## Ejercicio 7

Crea un script que genere un usuario local con cuenta de microsoft.

> El resto de los parámetros necesarios, rellénalos como consideres, pero no olvides documentar el proceso.

## Ejercicio 8

Crea un script que genere un usuario que esté deshabilitado, el login será:

`deshabilitado`

> El resto de los parámetros necesarios, rellénalos como consideres, pero no olvides documentar el proceso.

## Ejercicio 9

¿Cual sería la opción que hay que indicarle a `New-LocalUser` para que el usuario no tuviera permisos para cambiar su password?
