SRC=resume.tex
TARGET=resume.pdf

$TARGET: *.tex *.cls
	xelatex ${SRC}
	open ${TARGET}

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out *.synctex.gz ${TARGET}
