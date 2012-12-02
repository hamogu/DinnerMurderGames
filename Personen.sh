#!/bin/bash


  latex Personen.tex
  dvips -Ppdf Personen.dvi
  psbook Personen.ps PersonenA4.ps
  psnup -2 -pA4 -q PersonenA4.ps PersonenA5.ps
  ps2pdf -sPAPERSIZE=a4 -dAutoRotatePages=/All -dPDFsettings=/prepress PersonenA5.ps PersonenA5.pdf


