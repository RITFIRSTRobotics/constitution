# RIT FIRST Constitution
#
# Makefile by Connor Henley
PDFLATEX_ARGS=-halt-on-error
GS_ARGS=-sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dNOPAUSE -dQUIET -dBATCH -dPrinted=false

all: constitution.pdf

constitution-raw.pdf: constitution.tex buildinfo.tex watermark.tex
	@# build the main pdf, which must be run with a different jobname (output file name),
	@# which must be stripped of the last .pdf in order to not come out as .pdf.pdf
	pdflatex $(PDFLATEX_ARGS) -jobname=$(subst .pdf,,$@) $<

constitution.pdf: constitution-raw.pdf
	@# compress the pdf that pdflatex created
	@# see: https://tex.stackexchange.com/questions/18987/how-to-make-the-pdfs-produced-by-pdflatex-smaller/19047#19047
	gs $(GS_ARGS) -sOutputFile=$@ $<

buildinfo.tex: FORCE
	python3 gen_buildinfo.py > buildinfo.tex

watermark.tex: FORCE
	python3 gen_watermark.py > watermark.tex

FORCE: ; @# build rule that will never generate output, making any dependent rules run everytime

.PHONY: clean
clean:
	-/bin/rm -f buildinfo.tex watermark.tex *.log *.pdf *.aux
