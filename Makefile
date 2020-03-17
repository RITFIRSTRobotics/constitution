# RIT FIRST Constitution
#
# Makefile by Connor Henley

all: constitution.pdf

constitution.pdf: constitution.tex buildinfo.tex
	pdflatex -halt-on-error $<

buildinfo.tex: FORCE
	python3 gen_buildinfo.py > buildinfo.tex

FORCE: ; # build rule that will never leave a trace, making any dependent rules run everytime
