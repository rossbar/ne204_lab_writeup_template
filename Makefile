manuscript = writeup
latexopt = -file-line-error -halt-on-error

# Build the PDF of the lab report from the source files
$(manuscript).pdf: $(manuscript).tex
	pdflatex $(latexopt) $(manuscript).tex
	pdflatex $(latexopt) $(manuscript).tex

clean :
	rm -f *.aux *.log *.bbl *.lof *.lot *.blg *.out *.toc *.run.xml *.bcf
	rm -f text/*.aux
	rm $(manuscript).pdf

# Make keyword for commands that don't have dependencies
.PHONY : clean
