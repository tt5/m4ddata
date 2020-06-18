#!/bin/bash

awk '/^---$/ {x="F"++i".some";next}{print > x;}' $1.m4d
if title=$(jshon -e title -u -F F1.some 2>/dev/null); then
  printf "\def \\\varTitle {%s}" "$title" > header.tex
else
  #echo "\def \\vartitle {title}" > header.tex
  echo "no title"
fi
awk -b -f ./m4ddata/gawkt.awk F2.some > $1.m4
