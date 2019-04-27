#!/bin/bash
for indice in $(seq 10)
do
        RESTO_DIVISAO_POR_2="$(($indice % 2))"
        if [ $RESTO_DIVISAO_POR_2 -eq 0 ]
        then
                echo "O número $indice é divisível por 2."
        else
                echo "O número $indice não é divisível por 2."
        fi
done
echo "Este programa foi executado pelo usuário: $USERNAME"