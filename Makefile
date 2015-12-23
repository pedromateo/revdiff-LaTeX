#! /usr/bin/make -f
#
# $Id: Makefile 174 2004-09-28 23:33:43Z dsevilla $
#

FILEBASE = test
TARGETS = $(FILEBASE).pdf
DEPS_DIR = .deps
LATEXMK = latexmk -recorder -use-make -deps

all: $(TARGETS)

define pdfrule
$(1).pdf: $(1).tex
	test -e $$(DEPS_DIR) || mkdir $$(DEPS_DIR)
	$$(LATEXMK) -pdf -dvi- -ps- -deps-out=$$(DEPS_DIR)/$$@P $$<
endef

$(foreach file,$(TARGETS),$(eval -include $(DEPS_DIR)/$(file)P))

$(foreach file,$(patsubst %.pdf,%,$(TARGETS)),$(eval $(call pdfrule, $(file))))

clean:
	-latexmk -C $(TARGETS)
	rm -rf .deps *.nav *.vrb *.snm *~

.PHONY: clean all
