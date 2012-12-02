#!/bin/bash
# This script merges most tex files into a single file to help proofreading it in one go.
rm control.txt

names=( person1 )
#names=( M1 M2 M3 M4 N1 W1 W2 W3 W4 )

for i in ${names[@]}; do
  cat ${i}_general.tex >> control.txt
  cat ${i}_secret.tex >> control.txt
  echo "">> control.txt
done



echo "">> control.txt
echo round 1 >> control.txt
echo "">> control.txt
echo "R1_discussion.tex">> control.txt
cat R1_discussion.tex >> control.txt
for i in ${names[@]}; do
  echo "">> control.txt
  echo $i >> control.txt
  echo "">> control.txt
  cat ${i}_R1.tex >> control.txt
done

echo "">> control.txt
echo round 2 >> control.txt
echo "">> control.txt
echo "R2_discussion.tex">> control.txt
cat R2_discussion.tex >> control.txt
for i in ${names[@]}; do
  echo "">> control.txt
  echo $i >> control.txt
  echo "">> control.txt
  cat ${i}_R2.tex >> control.txt
done

echo "">> control.txt
echo round 3 >> control.txt
echo "">> control.txt
echo "R3_discussion.tex">> control.txt
cat R3_discussion.tex >> control.txt
for i in ${names[@]}; do
  echo "">> control.txt
  echo $i >> control.txt
  echo "">> control.txt
  cat ${i}_R3.tex >> control.txt
done

echo "">> control.txt
echo "Motive.tex">> control.txt
cat Motive.tex>> control.txt
echo "">> control.txt
echo "Tathergang.tex">> control.txt
cat Tathergang.tex >> control.txt
