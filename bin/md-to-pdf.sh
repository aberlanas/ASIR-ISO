#!/bin/bash

echo "Preparando el entorno"
mkdir -p PDFS

# Some values

RED='\033[0;31m'
GREEN="\033[0;32m"
NC='\033[0m' # No Color

TEMPLATE_TEX="../rsrc/templates/temas-tpl.latex"
TEMPLATE_TEX_TAREAS="../rsrc/templates/tareas-tpl.latex"
#TEMPLATE_TEX_TAREAS="../rsrc/templates/tareas-nologo-tpl.latex"
TEMPLATE_TEX_ANEXOS="../rsrc/templates/anexos-tpl.latex"
PDF_PATH="$(readlink -f PDFS)"
PANDOC_OPTIONS="-V fontsize=12pt -V mainfont="Ubuntu" --pdf-engine=xelatex "

#
# Guias
GUIAS_PATH="GuiasInstalacionSO"
GUIA_BIONIC="Guia_Ubuntu_Bionic"
GUIA_XUBUNTU="Guia_Xubuntu_Bionic"
GUIA_WIN10="Guia_Windows_10"
GUIA_WIN2016="Guia_Windows_2016"
GUIA_WIN2019="Guia_Windows_2019"
GUIA_OMV="Guia_OpenMediaVault"

#
# UD : Nombres de las Unidades

UD01_NAME="UD01_IntroduccionSistemasOperativos"
UD02_NAME="UD02_Virtualizacion"
UD03_NAME="UD03_Instalacion_Arranque"
UD04_NAME="UD04_ProcesosYRed"
UD05_NAME="UD05_UsuariosGruposYPermisos"
UD06_NAME="UD06_SistemasDeFicheros"
UD07_NAME="UD07_SoftwareYActualizaciones"
UD08_NAME="UD08_Seguridad"
UD09_NAME="UD09_AdministracionDelDominio"
UD10_NAME="UD10_AccesoAlDominio"
UD11_NAME="UD11_RendimientoYAuditorias"
UD12_NAME="UD12_GestionDeIncidencias"

#
## Unidades
#

say_ok(){
    echo -e " * [ ${GREEN}OK${NC} ] : $1"
}
say_error(){
    echo -e " * [ ${RED}Error${NC} ] : $1"
}

say_file(){

    if [ -f $1 ]; then 
        say_ok "$(readlink -f $1)"
    else
        say_error " [ Warning ] : Not a file $1 "
    fi
    
}

##
# Make teoria
make_teoria(){
    UDTEORIA="${1}"
    echo " * Teoria : $1"
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${UDTEORIA}_Teoria.pdf Teoria_*.md
    say_ok "$(readlink -f "${PDF_PATH}/${UDTEORIA}_Teoria.pdf") "
}


##
# Make Practicas
make_practicas(){
    UDPRACTICAS="${1}"
    echo " * Practicas : ${UDPRACTICAS}"
    NUMP=1
    for ejer in $(ls -1 Tarea_*.md ); do 
        NUM=$(echo $ejer | cut -d "_" -f2 | cut -d "." -f1)
	    NOMBRE=$(echo $ejer | cut -d "_" -f3 | cut -d "." -f1)
        pandoc --template ${TEMPLATE_TEX_TAREAS} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${UDPRACTICAS}_Tarea_"${NUMP}"_"${NOMBRE}".pdf $ejer
        say_file ${PDF_PATH}/${UDPRACTICAS}_Tarea_${NUMP}_${NOMBRE}.pdf
        let NUMP=NUMP+1
    done



    }

## 
# Make Anexos
make_anexos(){
    UDANEXOS="${1}"
    echo " * Anexos : ${UDANEXOS}"
    for ejer in $(ls -1 Anexo_*.md ); do 
        NUM=$(echo $ejer | cut -d "_" -f2 | cut -d "." -f1)
	    NOMBRE=$(echo $ejer | cut -d "_" -f3 | cut -d "." -f1)
        pandoc --template ${TEMPLATE_TEX_ANEXOS} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${UDPRACTICAS}_Anexo_"${NUM}"_"${NOMBRE}".pdf $ejer
        say_file ${PDF_PATH}/${UDPRACTICAS}_Anexo_${NUM}_${NOMBRE}.pdf
    done

    }

move_pdfs(){
    UDNAME=$1

    mkdir -p PDFS/${UDNAME}
    mv PDFS/*.pdf PDFS/${UDNAME}/

    say_ok "PDFS generados en : PDFS/${UDNAME}/"
}


##
# Make GUIAs

make_guia_ubuntu_bionic(){

    echo " * [ GUIA ] : Ubuntu Bionic"
    cd ${GUIAS_PATH}
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${GUIA_BIONIC}.pdf ${GUIA_BIONIC}.md

    say_file ${PDF_PATH}/${GUIA_BIONIC}.pdf

    cd ..
}

make_guia_xubuntu_bionic(){

    echo " * [ GUIA ] : Xubuntu Bionic"
    cd ${GUIAS_PATH}
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${GUIA_XUBUNTU}.pdf ${GUIA_XUBUNTU}.md

    say_file ${PDF_PATH}/${GUIA_XUBUNTU}.pdf

    cd ..
}


make_guia_windows_10(){

    echo " * [ GUIA ] : Windows 10"
    cd ${GUIAS_PATH}
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${GUIA_WIN10}.pdf ${GUIA_WIN10}.md

    say_file ${PDF_PATH}/${GUIA_WIN10}.pdf

    cd ..
}


make_guia_windows_2016(){

    echo " * [ GUIA ] : Windows 2016 Server"
    cd ${GUIAS_PATH}
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${GUIA_WIN2016}.pdf ${GUIA_WIN2016}.md

    say_file ${PDF_PATH}/${GUIA_WIN2016}.pdf

    cd ..
}

make_guia_windows_2019(){

    echo " * [ GUIA ] : Windows 2019 Server"
    cd ${GUIAS_PATH}
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${GUIA_WIN2019}.pdf ${GUIA_WIN2019}.md

    say_file ${PDF_PATH}/${GUIA_WIN2019}.pdf

    cd ..
}


make_guia_omv(){

    echo " * [ GUIA ] : OpenMediaVault"
    cd ${GUIAS_PATH}
    pandoc --template ${TEMPLATE_TEX} ${PANDOC_OPTIONS} -o ${PDF_PATH}/${GUIA_OMV}.pdf ${GUIA_OMV}.md

    say_file ${PDF_PATH}/${GUIA_OMV}.pdf

    cd ..

}


# 
# Make Unidades
# 

make_UD01(){

    cd ${UD01_NAME}
    make_teoria ${UD01_NAME}
    make_practicas ${UD01_NAME}
    
    cd ..

    move_pdfs ${UD01_NAME}
}

make_UD02(){

    cd ${UD02_NAME}
    make_teoria ${UD02_NAME}
    make_practicas ${UD02_NAME}
    cd ..
  
    # Guias del tema
    make_guia_ubuntu_bionic
    make_guia_xubuntu_bionic

    move_pdfs ${UD02_NAME}
}

make_UD03()
{
    cd ${UD03_NAME}
    make_teoria ${UD03_NAME}
    make_practicas ${UD03_NAME}
    cd ..
    
    # Guias del tema
    make_guia_windows_10
    make_guia_windows_2019

    move_pdfs ${UD03_NAME}
}

make_UD04()
{
    cd ${UD04_NAME}
    make_teoria ${UD04_NAME}
    make_practicas ${UD04_NAME}
    #make_anexos ${UD04_NAME}
    cd ..

    move_pdfs ${UD04_NAME}
}

make_UD05()
{
    cd ${UD05_NAME}
    make_teoria ${UD05_NAME}
    make_practicas ${UD05_NAME}
    cd ..

    move_pdfs ${UD05_NAME}
}

make_UD06()
{
    cd ${UD06_NAME}
    make_teoria ${UD06_NAME}
    make_practicas ${UD06_NAME}
    cd ..

    move_pdfs ${UD06_NAME}
}


make_UD07()
{
    cd ${UD07_NAME}
    make_teoria ${UD07_NAME}
    make_practicas ${UD07_NAME}
    cd ..

    move_pdfs ${UD07_NAME}
}

make_UD08(){
    cd ${UD08_NAME}
    make_teoria ${UD08_NAME}
    make_practicas ${UD08_NAME}
    
    cd ..

    # Guias del tema
    make_guia_omv 

    move_pdfs ${UD08_NAME}

}

make_UD09(){
    cd ${UD09_NAME}
    make_teoria ${UD09_NAME}
    make_practicas ${UD09_NAME}
    cd ..


    move_pdfs ${UD09_NAME}
}

make_UD10(){
    cd ${UD10_NAME}
    make_teoria ${UD10_NAME}
    make_practicas ${UD10_NAME}
    cd ..

    move_pdfs ${UD10_NAME}

}

make_UD11(){
    cd ${UD11_NAME}
    make_teoria ${UD11_NAME}
    make_practicas ${UD11_NAME}
    cd ..


    move_pdfs ${UD11_NAME}
}

make_UD12(){
    cd ${UD12_NAME}
    make_teoria ${UD12_NAME}
    make_practicas ${UD12_NAME}
    cd ..

    move_pdfs ${UD12_NAME}
}


#
# MAIN

case $1 in 
    "01")
        make_UD01     
		;;
    "02")
	    make_UD02
	    ;;
    "03")
		make_UD03
		;;
    "04")
        make_UD04
        ;;
    "05")
        make_UD05
        ;;
    "06")
		make_UD06
		;;
    "07")
        make_UD07
        ;;
    "08")
        make_UD08
		;;
    "09")
        make_UD09
		;;
    "10")
        make_UD10
	;;
    "11")
        make_UD11
	;;
    "12")
        make_UD12
	;;
    "all")
        make_UD01
        make_UD02
        make_UD03
        make_UD04
        make_UD05
        make_UD06
        make_UD07
        make_UD08
        make_UD09
        make_UD10
        make_UD11
        make_UD12
        ;;
    *)
        echo "Tema desconocido"
		exit 1
		;;
esac    

exit 0
