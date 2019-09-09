---
title: UD06 - Sistemas de Ficheros
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Sistemas de ficheros]
contenidos: [C4.1,C4.2,C4.8]
criterios-evaluacion: [RA03-20,RA03-21, RA03-24]
---

# Tarea: Ficheros desde la línea de comandos

En esta tarea vamos repasar los comandos básicos de navegación por las carpetas y ficheros, así como diversos
comandos que pueden resultar útiles para obtener información acerca de un fichero, directorio, etc.

## Ejercicio 1

El comando :

```
cd ..
```

¿Qué acción realiza en sistemas GNU/LinuX y Windows?

## Ejercicio 2

Describe con tus propias palabras qué es una ruta absoluta y una ruta relativa.

## Ejercicio 3

Completa la tabla siguiente rellenando los huecos con el comando equivalente 
en el Sistema Operativo que tiene un hueco.

| Windows | GNU/LinuX |
|---------|-----------|
| `Get-Content` | | 
|  | `mkdir` |
| `Get-ChildItem -Force C:\` | |
|          | `touch ficheroVacio.txt` |
| `Copy-Item -Path C:\asir -Destination C:\copiaAsir` | |
| | `rm -rf /asir/carpetaABorrar` |
| `Rename-Item C:\asir\prueba.txt -NewName prueba2.txt` ||


## Ejercicio 4

La ejecución de 

`mkdir -p RutaQueNoExiste/CarpetaQueQueremos`

no da error. Razona los motivos.

## Ejercicio 5

Realiza un ShellScript en BASH equivalente al siguiente en PowerShell

```PowerShell
$FileName = 'C:\asir\log.txt'
If (Test-Path $FileName){
   Remove-Item $FileName
}
```

## Ejercicio 6 

Realiza un ShellScript en BASH equivalente al 
siguiente en PowerShell

```PowerShell
$DESTINO = 'C:\asir\ficherosDeTexto'
New-Item -Type directory -Name $DESTINO
Copy-Item -Filter *.txt -Path C:\asir\ -Destination $DESTINO
```

## Ejercicio 7 

Realiza un ShellScript en BASH equivalente al siguiente
en PowerShell

```PowerShell
$files = Get-ChildItem -Path C:\asir
foreach ($file in $files)
{
    $newFileName=$file.Name.Replace("A","B") 
    Rename-Item $file $newFileName
}
```

## Ejercicio 8

Describe qué acciones realizan las siguientes ejecuciones de `find`:

```shell
# 1
find /dev/ -iname sda*

# 2
find /lib -name libc* -type f

# 3
find /usr/share -type l 

# 4
find /tmp -user $USER

# 5
find /usr/bin/ -type f -executable

# 6
find /var/log/ -daystart -ctime -1

# 7 esta es dificil
find /boot/ -follow -lname "*"

# 8 
find /tmp/ -mtime +31 -delete

# 9
find ./ -size +100M

```

## Ejercicio 9

El comando `file` en GNU/LinuX muestra información acerca de un fichero o directorio dado. Busca en PowerShell un comando que realice una función similar.

## Ejercicio 10

Ya sabemos que cuando añadimos un usb extraíble a un sistema Windows, automáticamente aparece una nueva nueva letra de acceso (`D:\`, `F:\`). 

Con lo que hemos aprendido en clase, realiza una breve descripción de qué es lo que ocurre si ejecutamos este comando:

```PowerShell
subst M: $env:ProgramFiles
```
