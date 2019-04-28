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

echo "----------------------------------"

echo "Parametro 1: $1"
echo "Parametro 2: $2"
echo "Todos os parametros: $*"
echo "Quantidade de parametros: $#"

echo "Saida do ultimo comando(0 para sucesso e 1 para erro): $?"
echo "PID: $$"
echo "Nome do script executado: $0"

#he he he he
