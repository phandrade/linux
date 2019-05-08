#!/usr/bin/env bash
#
# tarefa3.sh - Imprime vários asteriscos na tela de acordo com limites pré estabelecidos
#
# Site:       http://meuinstrumento.com/portfolio/
# Autor:      Paulo Andrade
# Manutenção: Paulo Andrade
#
# ------------------------------------------------------------------------ #
#  Este programa irá imprimir vários asteriscos na tela de acordo com uma contagem de números pré estabalecidas
#  como parâmetros internos.
#
#  Exemplos:
#      $ ./tarefa3.sh
#      Neste exemplo o script será executado no modo debug nível 1.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 07/05/2019, Paulo:
#       - Início do programa
#       - Melhorias e organização do código com base no programa já existente
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.3.48
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Mateus Muller - Pelo compartilhamento do conhecimento e a base deste programa.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
INICIO_CONTADOR=0
FIM_CONTADOR=100
# ------------------------------------------------------------------------ #

# ------------------------------- TESTES ----------------------------------------- #
# testa se o valor do INICIO_CONTADOR atingiu o mesmo valor do FIM_CONTADOR para poder encerrar o programa
if [ $INICIO_CONTADOR -ge $FIM_CONTADOR ]
  then exit 1
fi
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
# Faz um loop partindo do inicio da contagem ate o final pré estabelecidos
for i in $(seq $INICIO_CONTADOR $FIM_CONTADOR)
do
  for j in $(seq $i $FIM_CONTADOR) # Faz outro loop partindo do valor atual da contagem até o limite da contagem
    do printf "*" # imprime asterisco na tela até chegar no limite
  done
  printf "\n" # faz uma quebra de linha para o próximo valor da contagem
done
# ------------------------------------------------------------------------ #
