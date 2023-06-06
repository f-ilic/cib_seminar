#!/bin/bash

for img in *.tex; do
    # extension="${filename##*.}"
    filename="${img%.*}"
    [[ $img =~ ^[0-9]{4}-.+.tex$ ]] && pdflatex -synctex=1 -interaction=nonstopmode $img || continue
    # for lang in "de" "en"
    # do
    #     sed "s/%% SED %%/\\\\${lang}true \\\\group{${group}}/g" ${lecture}.tex > temp.tex
    #     pdflatex -synctex=1 -interaction=nonstopmode -jobname=${lecture}_exam_${group}_${date}_${lang}_big temp.tex --shell-escape
    #     pdflatex -synctex=1 -interaction=nonstopmode -jobname=${lecture}_exam_${group}_${date}_${lang}_big temp.tex --shell-escape
    #     gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=${lecture}_exam_${group}_${date}_${lang}.pdf ${lecture}_exam_${group}_${date}_${lang}_big.pdf
    # done
    source convert.sh $filename.pdf $filename.png
done

rm -f *.aux
rm -f *.log
rm -f *.synctex.gz