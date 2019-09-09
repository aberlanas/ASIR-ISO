---
title: UD03 - Instalación y Arranque
author: Angel Berlanas Vicente
header-includes: |
lang: es-ES
keywords: [ASIR, ISO, Instalación, Arranque, BIOS, UEFI]
---

\newpage

# Grabación de imágenes \[woeusb\]

Si tenemos la necesidad de grabar la imágen de Windows desde un sistema GNU/LinuX, no es tan sencillo como *grabar bit a bit* los datos de la imágen **.iso** al USB, Windows requiere de ciertas operaciones adicionales, como la instalación de un cargador de arranque dentro del USB. 

Existen múltiples herramientas, pero una de las más sencillas de utilizar, y que podemos encontrar fàcilmente para sistemas *Ubuntu* es **woeusb**.

## Woeusb

Woeusb es la continuación de un proyecto que se llamaba *winusb* cuyo desarrollo fué cancelado hace algún tiempo. Ahora es mantenido por la comunidad en el repositorio de WebUpd8.

[WebUpd8](http://www.webupd8.org/ "WebUpd8")

En temas posteriores también trabajaremos con este tipo de repositorios.

Para incluirlo, basta con ejecutar las órdenes que nos muestran en la página del proyecto:


``` shell
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo apt update
sudo apt install woeusb
```

## Uso de Woeusb

Para crear un USB de instalación de Windows 10, basta con ejecutar la siguiente orden:

``` shell
sudo woeusb --device Windows_10.iso /dev/sdc
```

Siendo *Windows_10.iso* la ruta hasta nuestro fichero iso, y */dev/sdc* el *dispositivo* que utilizaremos como arranque. 


El proceso es bastante largo, pero **woeusb** nos muestra en la terminal el porcentaje de lo que lleva instalado en el USB, así que podemos estimar el tiempo restante.

Hay que tener en cuenta que en cualquier caso, se trata de ficheros de *al menos* 1,4 GB (en el caso de Xubuntu), llegando a los 4,6 GB en el caso de *Windows Server*.









