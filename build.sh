#!/bin/bash
gcc -I. -o abc *.c -O2 -march=native  -DNDEBUG -lpthread

strip abc
