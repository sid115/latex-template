MAIN=main
TEXC=pdflatex
BIBC=bibtex
OUTDIR=./output
OUTNAME=$(MAIN).pdf

all: $(MAIN)

$(MAIN): $(MAIN).tex
	$(TEXC) $(MAIN).tex
	$(BIBC) $(MAIN)
	$(TEXC) $(MAIN).tex
	$(TEXC) $(MAIN).tex
	mkdir -p $(OUTDIR)
	mv $(MAIN).pdf $(OUTDIR)/$(OUTNAME).pdf

clean:
	rm -f *.aux *.log *.out *.toc

.PHONY: clean all
