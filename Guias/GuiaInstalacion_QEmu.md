\newpage

# Instalación de QEmu

Primero hay que comprobar si tenemos instaladas las extensiones Intel VT o AMD-V en nuestra CPU que permitirán al módulo del Kernel Linux KMV rodar la mayor parte del código directamente en el procesador.

Abrimos un terminal y escribimos:

  `egrep '(vmx|svm)' /proc/cpuinfo`

Si el comando no devuelve nada quiere decir que no las tenemos e instalar KMV no va a servir, caso contrario, instalamos KMV:

  `sudo apt install kvm`

Finalmente instalamos QEMU

  `sudo apt install qemu`

Ahora podemos usar una de las imágenes que descagamos de la wiki de QEMU http://wiki.qemu.org/ Testing para iniciar nuestro primer sistema operativo virtual, por ejemplo:

  `qemu-system-x86_64 linux-0.2.img`

También podemos usar imágenes de tipo raw, vmdk (VMware) o vdi (VirtualBox) o la nativa y más flexible qcow2.

Para instalar un sistema operativo virtual, lo primero es crear una imagen de disco en blanco, por ejemplo para instalar Debian7:

  `qemu-img create -f qcow2 debian9.img 3G`

Luego de bajar la iso de Debian https://cdimage.debian.org/debian-cd/current-live/amd64/iso-hybrid/ , la instalamos con:

  `qemu-system-x86_64 -m 2048 -hda debian9.img -cdrom debian-live-9.5.0-amd64-xfce.iso  -boot d`

Si la instalación se hace con un CD-ROM (si es con un DVD cambiar el directorio a /dev/dvd) el comando será:

  `qemu-system-x86_64 -m 2048 -hda debian9.img -cdrom /dev/cdrom -boot d`

Por último, luego de finalizar la instalación, la maquina virtual se apaga normalmente. Para volver a encenderla:

  `qemu-system-x86_64 -m 2048 -hda debian9.img -kernel-kqemu`

Tutorial obtenido de [Fortinux](https://fortinux.com/tutoriales/linux-2-tutoriales/tutorial-instalar-kmv-y-qemu-en-gnulinux/)
