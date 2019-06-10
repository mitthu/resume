SRC=resume.tex
TARGET=resume.pdf

$TARGET: *.tex *.cls
	xelatex --shell-escape ${SRC}
	open ${TARGET}

.PHONY: version
version:
	@git log --date=short --format="dt. %ad || ver. %h" -n 1

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out *.synctex.gz ${TARGET}
