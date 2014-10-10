#!/usr/bin/env bash

#generate html resume page in the correct format for display on web
markdown resume.txt > JohnRegnerResume.html

#Create resume.tex, to be latex processed into a pdf
mmd2tex resume.txt

#remove the first 4 lines of the generated tex, you do not need them.
sed '1,4d' resume.tex > resume1.tex

#remove the work history, header, it is obvious.
sed '10,11d' resume1.tex > resume.tex

#clean up resume1.tex
rm resume1.tex

#put the tex files together, substitute the part for the NewPart
cat tex_header.tex resume.tex tex_footer.tex | sed 's_\part_\NewPart_g' > resume_temp.tex

sed -e '116r tex_pagebreak.tex' resume_temp.tex > resume.tex

pdflatex resume.tex
# run 2x just to make sure you get the labels right
pdflatex resume.tex

#clean up latex artifacts
rm resume_temp.tex
rm resume.log
rm resume.tex
rm resume.aux

//name your resume sensibly, so when people download it they know it belongs to you
mv resume.pdf JohnRegnerResume.pdf
