#!/bin/sh

ln -s m4ddata/makefile-v0.2 Makefile
ln -s m4ddata/math-template.tex template.tex
ln -s m4ddata/prepm4-v0-1.sh prepm4.sh
echo "title and path:"
m4ddata/makeconfig/makeconfig > config.json
