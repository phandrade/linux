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
#       - Início do programa com a adição dos parâmetros e uso do IF para tratar
#         os valores.
#   v1.1 11/05/2019, Paulo:
#       - Uso do CASE para tratar os valores do primeiro parâmetro
#   v1.2 11/05/2019, Paulo:
#       - Inclusao do parametro para listar os usuarios em maiuscula
#       - Uso de chave_flag para combinacao dos dois parametros principais
#       - Uso do while para iterar sobre os parametros de entrada
#       - Uso do shift para leitura sequencial dos parametros de entrada
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
VERSAO="1.2"
CHAVE_ORDENACAO=0
CHAVE_MAIUSCULA=0
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
while [[ -n $1 ]]; do
  case $1 in
    -h ) echo "$MENSAGEM_USO" && exit 0
      ;;
    -v ) echo "$VERSAO" && exit 0
      ;;
    -s ) CHAVE_ORDENACAO=1
      ;;
    -m ) CHAVE_MAIUSCULA=1
      ;;
     * ) echo "Opção inválida, use o -h para obter ajuda." && exit 1
  esac
  shift
done

if [[ $CHAVE_MAIUSCULA -eq 1 ]]; then
  USUARIOS=$(echo "$USUARIOS" | tr [a-z] [A-Z])
fi
if [[ $CHAVE_ORDENACAO -eq 1 ]]; then
  USUARIOS=$(echo "$USUARIOS" | sort)
fi
echo "$USUARIOS"
# ------------------------------------------------------------------------ #
