#!/usr/bin/env bash
#
# listaDadosFrotaVeiculos.sh - Extrai dados de uma lista de veiculos
# extraida do portal da transparencia do estado de minas gerais
#
# Site:       http://meuinstrumento.com/portfolio/
# Autor:      Paulo Andrade
# Manutenção: Paulo Andrade
#
# ------------------------------------------------------------------------ #
#  Este programa irá extrair os dados da lista de veiculos, com a possibilidade
#  de imprimir dados como as placas dos veiculos, marcas, modelos, etc
#  Os dados já são impressos em ordem alfabetica.
#
#  Exemplos:
#      $ ./listaDadosFrotaVeiculos.sh -p
#      Neste exemplo o script listará as placas dos veiculos.
# ------------------------------------------------------------------------ #
# Histórico:
#
#   v1.0 27/07/2019, Paulo:
#       - Início do programa com a adição dos parâmetros e uso do IF para tratar
#         os valores.
# ------------------------------------------------------------------------ #
# Testado em:
#   bash 4.3.48
# ------------------------------------------------------------------------ #
# Agradecimentos:
#
# 	Mateus Muller - Pelo compartilhamento do conhecimento.
# ------------------------------------------------------------------------ #

# ------------------------------- VARIÁVEIS ----------------------------------------- #
INDICE_COLUNA=-1
MENSAGEM_USO="
$(basename $0) - [OPÇÕES]

-h   - Menu de Ajuda
-v   - Versão do programa
-p   - Imprimir as placas
-m   - Imprimir as marcas
-c   - Imprimir números de chassi
-vcl - Imprimir a descrição dos veículos
-f   - Imprimir ano de fabricação
"
VERSAO="1.0"
# ------------------------------------------------------------------------ #

# ------------------------------- EXECUÇÃO ----------------------------------------- #
while [[ -n $1 ]]; do
  case $1 in
    -h ) echo "$MENSAGEM_USO" && exit 0
      ;;
    -v ) echo "$VERSAO" && exit 0
      ;;
    -p ) INDICE_COLUNA=14
      ;;
    -m ) INDICE_COLUNA=11
      ;;
    -c ) INDICE_COLUNA=15
      ;;
    -vcl ) INDICE_COLUNA=10
      ;;
    -f ) INDICE_COLUNA=13
      ;;
     * ) echo "Opção inválida, use o -h para obter ajuda." && exit 1
  esac
  shift
done

COMANDO="$(cat "2018 (cópia).3166105.frota.frota.csv" | cut -d , -f $INDICE_COLUNA | sed -n '1!p' | sort | uniq)"

if [[ $INDICE_COLUNA -gt 0 ]]; then
  echo "$COMANDO"
fi
