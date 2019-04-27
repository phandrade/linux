#!/usr/bin/env bash

NOME="Paulo Andrade"
TEXTO="Texto qualquer com quebra de linha

fim."

echo $NOME
echo $TEXTO
echo "$TEXTO"

NUMERO_1=24
NUMERO_2=45

TOTAL=$((NUMERO_1+NUMERO_2))
echo $TOTAL
echo "$TOTAL"

SAIDA_CAT=$(cat /etc/passwd | grep paulo)

echo "$SAIDA_CAT"
