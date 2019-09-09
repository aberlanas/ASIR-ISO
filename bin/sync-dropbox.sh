#!/bin/bash


DROPBOX_FOLDER="/home/aberlanas/Dropbox/Opos/ProgramacionDidadctica/Unidades"
PDFS_FOLDER="/home/aberlanas/GitHub/ImplantacionSistemasOperativos/PDFS/"

rsync -avx --delete ${PDFS_FOLDER} ${DROPBOX_FOLDER}


echo " * Sincronizado ${DROPBOX_FOLDER} "

exit 0
