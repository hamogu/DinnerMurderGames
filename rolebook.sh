#!/bin/bash

# this script will make the rolebook_person pdf files from the rolebook_XXX.tex template.

names=( person1 )  # list of short identifiers
namefull=( Max )   # list of full names
#names=( M1 M2 M3 M4 N1 W1 W2 W3 W4 )
#namefull=( "Urav nonus Gibgernus" "Salinus Secundus Submarus" "Quirelesus" "Zenturio Etruscus" "Delphydonosus Oracula" "Lana Psydomynos" "Salina Secunda Submarus" "Mama Klera" "Chinesa Zara" )

#for i in ${names[@]}; do
for j in `seq 0 $((${#names[@]}-1))` ; do
  rm rolebook_${names[j]}.tex
  sed -e "s/XXX/${names[j]}/g" rolebook_XXX.tex > rolebook_${names[j]}.tex
  sed -i "s/AAA${names[j]}AAA/${namefull[j]}/g" rolebook_${names[j]}.tex
  latex rolebook_${names[j]}.tex
  dvips -Ppdf rolebook_${names[j]}.dvi
  psbook rolebook_${names[j]}.ps rolebookA4_${names[j]}.ps
  psnup -2 -pA4 -q rolebookA4_${names[j]}.ps rolebookA5buch_${names[j]}.ps
  ps2pdf -sPAPERSIZE=a4 -dAutoRotatePages=/All -dPDFsettings=/prepress rolebookA5buch_${names[j]}.ps rolebookA5buch_${names[j]}.pdf
  rm rolebook_${names[j]}.dvi
  rm rolebook_${names[j]}.log
  rm rolebook_${names[j]}.aux
  rm rolebook_${names[j]}.ps
  rm rolebookA4_${names[j]}.ps
  rm rolebookA5buch_${names[j]}.ps
done
