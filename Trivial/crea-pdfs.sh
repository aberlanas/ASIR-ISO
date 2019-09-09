#!/bin/bash

for f in $(find . -name "Eva*" -xtype d); do 
    echo $f
    cd $f 
    
    for s in $(ls -1 *.svg); do 
        rsvg-convert -w 320  -f pdf -o $s.pdf $s
    done 
    pdftk *.pdf cat output $f.FINAL.pdf
    
    cd ..
done


rm -rf pdfs/*
mkdir -p pdfs 
find Eva* -name "*.FINAL.pdf" -exec mv {} pdfs \;


exit 0
