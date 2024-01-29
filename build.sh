#!/bin/bash

# Depending on your compilation environment, "-lpthread" may not be needed.
# Try the -Os, -O2, -O3, -Ofast compilation options.

gcc -I. -o facil *.c -O2 -march=native  -DNDEBUG -lpthread

# glib, static:
# gcc -I.  -Os -static -march=native -static-libgcc *.c -Os -o facil

# musl:
# musl-gcc -I. -static  -Os *.c -o facil

strip facil
