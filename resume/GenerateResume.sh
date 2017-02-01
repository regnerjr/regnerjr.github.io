#!/usr/bin/env bash

#generate html resume page in the correct format for display on web cp resume.txt JohnRegnerResume.txt
cp resume.txt JohnRegnerResume.txt
mmd JohnRegnerResume.txt
rm JohnRegnerResume.txt

#generate pdf resume from html
htmldoc JohnRegnerResume.html \
  --no-numbered \
  --no-title \
  --no-toc \
  --header . \
  --footer . \
  --top 20pt \
  --bottom 20pt \
  --right 40pt \
  --left 40pt \
  --fontspacing 0.9 \
  --linkstyle plain \
  -f JohnRegnerResume.pdf

