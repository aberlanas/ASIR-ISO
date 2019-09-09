#!/bin/bash

AUXPATH=$1
CUSTOMPATH="$2"

for f in $(ls -1 ${AUXPATH}); do 
   
   F_CAPT=$(echo $f| cut -d "/" -f -1| cut -d "." -f1| sed -e "s%_% %g")
   F_PATH="$f"

   echo "![${F_CAPT}](${CUSTOMPATH}/${F_PATH})"

done

exit 0
