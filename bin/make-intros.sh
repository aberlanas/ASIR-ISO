#!/bin/bash

:> /tmp/Intros.md
for f in $(find . -name "Teoria_00_Introduccion.md" | sort ); do cat $f >> /tmp/Intros.md ; done

cat /tmp/Intros.md  | grep -v "$\-" | sed -e "s%\\\newpage%%g" | sed -e "s%author:.*%%g"| sed -e "s%.*tableof.*%%g" | sed -e "s%header-in.*%%g"| sed -e "s%keywor.*%%g" | sed -e "s%---%%g" | sed -e "s%title\:%#%g" | sed -e "s%# In%## In%g" > /tmp/intros.md

pandoc /tmp/intros.md -o PDFS/00_Introducciones.pdf
