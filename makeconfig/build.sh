#!/bin/bash
# from https://github.com/rxi

#cflags="-Wall -O3 -g -std=gnu11 -Isrc" 
cflags="-Isrc" 
lflags=""

outfile="makeconfig"
compiler="gcc"
lflags="$lflags -o $outfile"

if command -v ccache >/dev/null; then
  compiler="ccache $compiler"
fi

echo "compiling ..."
for f in `find src -name "*.c"`; do
  $compiler -c $cflags $f -o "${f//\//_}.o"
  if [[ $? -ne 0 ]]; then
    got_error=true
  fi
done

if [[ ! $got_error ]]; then
  echo "linking..."
  $compiler *.o $lflags
fi

echo "cleaning up..."
rm *.o
echo "done"
