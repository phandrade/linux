#!/usr/bin/env bash
#
# listaUsuarios.sh - Extrai usuarios do /etc/passwd
#
# Site:       http://meuinstrumento.com/portfolio/
# Autor:      Paulo Andrade
# Manutenção: Paulo Andrade
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair os usuários do arquivo /etc/passwd, havendo a
#  possibilidade de imprimir a lista em maiúsculo e colocar em ordem alfabética
#
#  Exemplos:
#      $ ./listaUsuarios.sh -s -m
#      Neste exemplo o script listará os usuários em ordem alfabética e em maiúsculas.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 07/05/2019, Paulo:
#       - Início do programa com a adição dos parâmetros
#   v1.1 11/05/2019, Paulo:
#       - Uso do CASE para tratar os valores do primeiro parâmetro
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.3.48
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Mateus Muller - Pelo compartilhamento do conhecimento.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
USUARIOS="$(cat /etc/passwd | cut -d : -f 1)"
MENSAGEM_USO="
$(basename $0) - [OPÇÕES]

-h - Menu de Ajuda
-v - Versão do programa
-s - Ordenar a saída
"
VERSAO="1.1"
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
case $1 in
  -h ) echo "$MENSAGEM_USO"
    ;;
  -v ) echo "$VERSAO"
    ;;
  -s ) echo "$USUARIOS" | sort
    ;;
   * ) echo "$USUARIOS"
esac
exit 0
# ------------------------------------------------------------------------ #
