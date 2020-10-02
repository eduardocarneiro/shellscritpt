#!/bin/bash

var1="carro"

# faz teste de inteiros
test "$var1" -eq "carro"
echo $?
echo "usado para comprar inteiros somente, por isto o erro mostrado"


echo ""
# faz comparacao entre cadeias de caracteres
test "$var1" = "carro"
echo $?
