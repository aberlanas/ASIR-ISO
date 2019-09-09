#!/bin/bash
# Version 5.0
# Este script tiene licencia ARTISTICA!
# Que para eso es musical...

# Algunos valores interesantes...
MODO="644"

say_error(){
	echo -e " * [\e[0;31m ERROR\e[0;m ] : $1"
}

say_info(){
	echo -e " * [\e[1;32m INFO\e[0;m ] : $1"
}

say_warning(){
	echo -e " * [\e[1;33m ATENCION\e[0;m ] : $1"
}

# Lo primero es comprobar los permisos del que me ejecuta
if [ "$(id -u)" != "0" ]; then
	say_error "Permiso denegado..." 1>&2
	exit 1
fi

# Ahora comprobamos que no tenemos ningun parametro pasado como 
# argumento que nos cambie la logica.
if [ $# -gt 1 ]; then
	echo "Veo que me has indicado algun parametro..."	
	echo -n "El parametro ha sido : " $@
	echo "Veamos que se hacer con el..."
	
	# En la variable ACTION vamos a guardarnos el parametro.
	ACTION=$1
    	case $ACTION in
        	--modo)
          	shift
          	if [ -n $1 ]; then
           		MODO=$1
          	fi
        	;;
        	*)
        	echo " * [ Info ] Desconozco ese parametro"
        	;;
    	esac

fi

# Ahora vamos con el script en si mismo
echo "Hola! Soy el compositor_de_partituras de la orquesta de Budapest..."
sleep 1
echo "Vamos a crear en un momento todas las partituras para una obra..."
echo -n "¿Podrias indicarme el nombre de la obra, sin espacios, tal y como esta en el programa?"
read NOMBREOBRA

# Como el lector avezado podra comprobar, existe la remota posibilidad 
# de que el usuario pulse "ENTER" sin darse cuenta...provocando cierta
# situacion graciosa. Para ello vamos a asegurarnos de que NOMBREOBRA 
# no esta vacia antes de continuar.
while [ -z $NOMBREOBRA ]; do
	say_warning "Debe introducir un nombre"
	echo -n "Introduzca un nombre : "
	read NOMBREOBRA
done


# Preparamos la carpeta de la Obra
say_info "Creando la carpeta de $NOMBREOBRA"
mkdir -p /srv/orquesta/$NOMBREOBRA

# Ahora vamos a recorrer los diferentes instrumentos.
for instrumento in  flautin clarinete corno trompa violin viola chelo contrabajo bateria xilofono director; do

	# Realizamos los 
	say_info "Creando la partitura de $instrumento"
	echo "Esta es la partitura de $instrumento" > /srv/orquesta/$NOMBREOBRA/$instrumento.txt
	chmod $MODO /srv/orquesta/$NOMBREOBRA/$instrumento.txt
	sleep 1
done

# Mostramos un mensaje final 
say_info "Todo ha ido bien. La carpeta esta en : "
say_info " /srv/orquesta/$NOMBREOBRA/ "

# Salimos graciosamente
exit 0
