.PHONY: all
all: species-beamer.pdf species-paper.pdf

.PHONY: FORCE
species-beamer.pdf: FORCE
	latexrun --bibtex-cmd=biber --latex-args="-shell-escape" species-beamer

species-paper.pdf: FORCE
	latexrun --bibtex-cmd=biber species-paper

.PHONY: clean
clean:
	latexrun --clean-all
