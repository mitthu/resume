# Default variables
BASE=.
OUTPUT=resume.pdf cv/cv-res.pdf

# Target-specific variables
resume: BASE=.
resume: SRC=resume.tex
resume: OUTPUT=resume.pdf

cv: BASE=cv
cv: SRC=cv-res.tex
cv: OUTPUT=cv-res.pdf

# Rules
# =====
# all:     build resume and cv
# resume:  build single page resume
# cv:      build cv
# default: does the actual build
# version: *.tex files calls `make version`. It returns
#          the short SHA commit ID of HEAD.
# clean:   remove build files

.PHONY: all
all:
	$(MAKE) resume
	$(MAKE) cv

.PHONY: resume
resume: default

.PHONY: cv
cv: default

default:
	echo "Build"
	cd ${BASE}; xelatex --shell-escape ${SRC}
	open ${BASE}/${OUTPUT}

# Rules: extras
.PHONY: version
version:
	@git log --date=short --format="dt. %ad || ver. %h" -n 1

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out *.synctex.gz *.dvi
	rm -rf cv/*.aux cv/*.log cv/*.out cv/*.synctex.gz cv/*.dvi
	rm -rf ${OUTPUT}
