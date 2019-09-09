#!/bin/bash

# 
# Parser for coding guidelines

#
# Some Values
MDFILE=""

RED='\033[0;31m'
GREEN="\033[0;32m"
NC='\033[0m' # No Color

say_ok(){
    echo -e " * [ ${GREEN}OK${NC} ] : $1"
}
say_error(){
    echo -e " * [ ${RED}Error${NC} ] : $1"
}

test_firstline(){

    FIRSTLINE=$(head -n 1 $1)

    if [ $FIRSTLINE = "---" ]; then
        say_ok "Firstline"
    else 
        say_error "Firstline"
    fi

}


test_yml(){
	head -n 7 $1 >/tmp/yml.tmp
	
	rc=0
	diff -q /tmp/yml.tmp $(dirname $1)/Header.yml|| rc=1
	if [ $rc -eq 1 ]; then
		say_error "Header diferente : $1" 
	else
		say_ok "Header YML ok"
	fi
 	
}

all_tests(){
    test_firstline $1
	test_yml $1
}


MDFILE=$1

if [ -d $MDFILE ]; then
    for f in $(find $MDFILE -name "*.md"); do 
        echo " [ Testing ] Working with $f "
        all_tests $f
    done
else

all_tests $1

fi
exit 0