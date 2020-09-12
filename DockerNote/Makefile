# MIT License
# 
# Makefile
# 
# Copyright (c) 2020 冬ノ夜空
# 

TARGETS := dockernote.pdf
# TARGETS = dockernote.pdf appendix.pdf
RM_LIST :=  *.listing *.dvi *.txt *.synctex.gz

LATEXMK := latexmk 
LATEXMK_OPT := -cd -r ./.latexmkrc -f -gg


.PHONY: all
all: $(TARGETS)

dockernote.pdf: dockernote.tex 
	$(LATEXMK) $(LATEXMK_OPT) $<

appendix.pdf: appx/appendix.tex
	$(LATEXMK) $(LATEXMK_OPT) $<

.PHONY: clean
clean: 
	rm -f $(RM_LIST)
	$(LATEXMK) -c $(TARGETS)

.PHONY: clean-all
clean-all: 
	rm -f $(RM_LIST)
	$(LATEXMK) -C $(TARGETS)


