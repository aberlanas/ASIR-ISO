---
title: UD03 - Instalación y Arranque
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Instalación, Arranque, BIOS, UEFI]
contenidos: [C2.2,C2.5,C4.14]
criterios-evaluacion: [RA01-4]
---

# Tarea: Grabación imágenes


## Ejercicio 1

Utilizando Rufus, graba en una memória USB una imágen de Windows y comprueba que es capaz de arrancar y es detectada como arranque en el gestor de la **BIOS/UEFI**.

Una vez hecho, responde a las siguientes preguntas:

1. Si tenemos UEFI sin modo de compatibilidad activado. ¿Qué destino deberemos escoger?
2. En una máquina con BIOS, anterior al año 2010, que tenía un Windows XP instalado ¿seleccionaremos MBR o GPT como esquema de particionado?


## Ejercicio 2

Hemos visto en teoría para que podemos utilizar `dd`. ¿Cuales son los dos parámetros básicos que necesita `dd` para funcionar?

## Ejercicio 3

Si tenemos que grabar en GNU/LinuX una imágen de Windows podemos utilizar woeusb. ¿Cual sería el comando que deberiamos ejecutar de los dos siguientes? 

```shell
woeusb --device Windows_10.iso /dev/sdb1 
```
o 

```shell
woeusb --device Windows_10.iso /dev/sdb
```

Siendo *Windows_10.iso* un archivo válido de instalación, */dev/sdb* el USB externo, y */dev/sdb1* su primera partición.

Razona la respuesta.
