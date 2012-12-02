#!/bin/bash

# Dieses Script erzeugt die Rollenbuch.tex fuer alle Personen aus einem Template und lässt das Latex laufen.

names=( person1 )  # Hier Liste der Identifiers einfügen.
namefull=( Max )   # Hier Liste der Klarnamen einfügen. 
#names=( M1 M2 M3 M4 N1 W1 W2 W3 W4 )
#namefull=( "Urav nonus Gibgernus" "Salinus Secundus Submarus" "Quirelesus" "Zenturio Etruscus" "Delphydonosus Oracula" "Lana Psydomynos" "Salina Secunda Submarus" "Mama Klera" "Chinesa Zara" )

#for i in ${names[@]}; do
for j in `seq 0 $((${#names[@]}-1))` ; do
  rm Rollenbuch_${names[j]}.tex
  sed -e "s/XXX/${names[j]}/g" Rollenbuch_XXX.tex > Rollenbuch_${names[j]}.tex
  sed -i "s/AAA${names[j]}AAA/${namefull[j]}/g" Rollenbuch_${names[j]}.tex
  latex Rollenbuch_${names[j]}.tex
  dvips -Ppdf Rollenbuch_${names[j]}.dvi
  psbook Rollenbuch_${names[j]}.ps RollenbuchA4_${names[j]}.ps
  psnup -2 -pA4 -q RollenbuchA4_${names[j]}.ps RollenbuchA5buch_${names[j]}.ps
  ps2pdf -sPAPERSIZE=a4 -dAutoRotatePages=/All -dPDFsettings=/prepress RollenbuchA5buch_${names[j]}.ps RollenbuchA5buch_${names[j]}.pdf
  rm Rollenbuch_${names[j]}.dvi
  rm Rollenbuch_${names[j]}.log
  rm Rollenbuch_${names[j]}.aux
  rm Rollenbuch_${names[j]}.ps
  rm RollenbuchA4_${names[j]}.ps
  rm RollenbuchA5buch_${names[j]}.ps
done
