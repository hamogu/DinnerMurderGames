#!/bin/bash
# Dieses Script komprimiert alle Hinweise in ein einzelnes .txt file, dmit man sie besser Korrektur lesen kann.
rm kontrolle.txt

names=( person1 )
#names=( M1 M2 M3 M4 N1 W1 W2 W3 W4 )

for i in ${names[@]}; do
  cat ${i}_allg.tex >> kontrolle.txt
  cat ${i}_geheim.tex >> kontrolle.txt
  echo "">> kontrolle.txt
done



echo "">> kontrolle.txt
echo Runde 1 >> kontrolle.txt
echo "">> kontrolle.txt
echo "R1_Gespreach.tex">> kontrolle.txt
cat R1_Gespraech.tex >> kontrolle.txt
for i in ${names[@]}; do
  echo "">> kontrolle.txt
  echo $i >> kontrolle.txt
  echo "">> kontrolle.txt
  cat ${i}_R1.tex >> kontrolle.txt
done

echo "">> kontrolle.txt
echo Runde 2 >> kontrolle.txt
echo "">> kontrolle.txt
echo "R2_Gespraech.tex">> kontrolle.txt
cat R2_Gespraech.tex >> kontrolle.txt
for i in ${names[@]}; do
  echo "">> kontrolle.txt
  echo $i >> kontrolle.txt
  echo "">> kontrolle.txt
  cat ${i}_R2.tex >> kontrolle.txt
done

echo "">> kontrolle.txt
echo Runde 3 >> kontrolle.txt
echo "">> kontrolle.txt
echo "R3_Gespraech.tex">> kontrolle.txt
cat R3_Gespraech.tex >> kontrolle.txt
for i in ${names[@]}; do
  echo "">> kontrolle.txt
  echo $i >> kontrolle.txt
  echo "">> kontrolle.txt
  cat ${i}_R3.tex >> kontrolle.txt
done

echo "">> kontrolle.txt
echo "Motive.tex">> kontrolle.txt
cat Motive.tex>> kontrolle.txt
echo "">> kontrolle.txt
echo "Tathergang.tex">> kontrolle.txt
cat Tathergang.tex >> kontrolle.txt
