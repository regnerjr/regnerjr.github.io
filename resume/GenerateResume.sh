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
  --fontspacing 1.0 \
  -f JohnRegnerResume.pdf

