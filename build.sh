#!/bin/bash

# Depending on your compilation environment, "-lpthread" may not be needed.
# Try the -Os, -O2, -O3, -Ofast compilation options.

gcc -I. -o facil *.c -O2 -march=native  -DNDEBUG -lpthread

strip facil
