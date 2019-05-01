#!/usr/bin/env bash

echo "For 1 --------"

for (( i = 0; i < 10; i++ )); do
  echo $i
done

echo "For 2 --------"

for i in $(seq 10)
do
  echo $i
done

echo "For 3 (array) ---------"
Frutas=(
"Laranja",
"Ameixa",
"Abacaxi",
"Melancia",
"Jabuticaba"
)
for fruta in "${Frutas[@]}"
do
  echo "$fruta"
done

echo "while ---------"
contador=0
while [[ $contador -lt ${#Frutas[@]} ]]
do
  echo "$contador - ${Frutas[$contador]}"
  contador=$(($contador+1))
done
