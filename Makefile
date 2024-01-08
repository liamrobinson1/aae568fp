.PHONY: all clean clean_after tex open clc commit

all: clc clean tex open commit

clc:
	clear

tex:
	pdflatex main
	biber main
	pdflatex main
	pdflatex main

clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

clean_after:
	rm -f *.aux *.bbl *.blg *.log *.out *.toc *.idx *.lot *.lof *.fls *.fdb* *.bcf *.lol *.run.xml *.snm *.nav

commit:
	git add --all
	git commit -m "Update"
	git push origin

open:
	open main.pdf