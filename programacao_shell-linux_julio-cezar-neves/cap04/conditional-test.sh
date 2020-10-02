#!/bin/bash

var1=010

# faz teste de inteiros
test "$var1" -eq 10
echo $?

echo ""
# faz comparacao entre cadeias de caracteres
test "$var1" = 10
echo $?
