#!/bin/bash

for f in $(ls -1 $1/*); do 

	echo "![$1]($f)"
	echo "\\"
	echo ""

done

exit 0
