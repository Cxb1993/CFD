# type "make" command in Unix to create asme2e.pdf file 
all:
	pdflatex main
	#bibtex main
	pdflatex main
	#pdflatex main
	#dvips -o main.ps main
	#ps2pdf main.ps main.pdf

abstract:
	pdflatex abstract
	#dvips -o abstract.ps abstract
	#ps2pdf abstract.ps abstract.pdf

clean:
	(rm -rf *.ps *.log *.dvi *.aux *.*% *.lof *.lop *.lot *.toc *.idx *.ilg *.ind *.bbl *blg)

deepclean: clean
	(rm -f main.pdf)
