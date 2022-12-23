#!/bin/bash

xelatex -synctex=1 -interaction=nonstopmode thesis &&
makeglossaries thesis &&
bibtex8 -W -c cp1256fa thesis &&
xindy -L persian-variant3 -C utf8 -I xindy -M thesis.xdy -t thesis.glg -o thesis.gls thesis.glo &&
xindy -L persian-variant3 -C utf8 -I xindy -M thesis.xdy -t thesis.blg -o thesis.bls thesis.blo &&
xindy -L english -C utf8 -I xindy -M thesis.xdy -t thesis.alg -o thesis.acr thesis.acn &&
xelatex -synctex=1 -interaction=nonstopmode thesis &&
xelatex -synctex=1 -interaction=nonstopmode thesis
