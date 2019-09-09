#!/bin/bash

echo "Working with $1"

convert $1 -bordercolor white -border 13 \( +clone -background black -shadow 80x3+2+2 \) +swap -background white -layers merge +repage $1.drop

mv $1.drop $1

exit 0
