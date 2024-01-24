#!/bin/bash
gcc -I. -o facil *.c -O2 -march=native  -DNDEBUG -lpthread

strip facil
