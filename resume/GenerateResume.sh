#!/usr/bin/env bash

#generate html resume page in the correct format for display on web cp resume.txt JohnRegnerResume.txt
mmd resume.txt

#generate pdf resume from html
htmldoc resume.html \
  --no-numbered \
  --no-title \
  --no-toc \
  --header . \
  --footer ..1\
  --top 20pt \
  --bottom 20pt \
  --right 40pt \
  --left 40pt \
  --fontspacing 1.1 \
  --linkstyle plain \
  -f JohnRegnerResume.pdf

