#!/bin/bash
#echo $0
myFileName=Jyun_An_Zou-M10515026-PCG_For_Billiard_Game
test=$0
prefix=`echo $test |cut -d "/" -f 2|cut -d "." -f 1 `
#echo $test
# echo $prefix
name=$prefix 
# echo "Compile $name.tex"
xelatex -no-pdf $name.tex
bibtex $name
xelatex -no-pdf $name.tex 
xelatex $name.tex
#remove cache
rm ${name}.lof
rm ${name}.lot
rm ${name}.loa
rm ${name}.toc
rm ${name}.aux
rm ${name}.log
rm ${name}.blg
rm ${name}.bbl
rm ${name}.xdv