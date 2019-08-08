

IGNORED  := "shareLocation|splitChord|chord|bembel|merge|port|shortFermata|color|colour|symbol|unit"
MKDIR    := mkdocs
DOCDIR   := $(MKDIR)/docs
TAGSDEST := $(DOCDIR)/refs/tags
GUIDODIR ?= ../guidolib
SRCDIR   := $(GUIDODIR)/src/engine

INLINEGMN 	:= $(wildcard examples/mkdocs/*.gmn)
INLINEHTML 	:= $(INLINEGMN:examples/mkdocs/%.gmn=$(DOCDIR)/GMN/%.html)
GMNEXAMPLES := $(wildcard examples/mkdocs/examples/*.gmn)
HTMLEXAMPLES:= $(GMNEXAMPLES:examples/mkdocs/%.gmn=$(DOCDIR)/GMN/%.html) 
MDEXAMPLES  := $(GMNEXAMPLES:examples/mkdocs/%.gmn=$(DOCDIR)/%.md)

.PHONY: tagslist.txt


####################################################################
help:
	@echo "======================================================="
	@echo "            Guido Music Notation format"
	@echo "This Makefile is intended to generate the documentation"
	@echo "======================================================="
	@echo "Available targets are:"
	@echo "  install  : install the required components"
	@echo "  build    : build the web site"
	@echo "  server   : launch the mkdoc server"
	@echo "  tagfiles : create the tags documention md files from the src files"
	@echo "  tagsindex: generates the tags index page"

test: 
	@echo MDEXAMPLES: $(MDEXAMPLES)

####################################################################
build:
	cd $(DOCDIR) && mkdocs build

server:
	cd $(DOCDIR) && mkdocs serve


####################################################################
# building guido examples
inlinegmn: $(INLINEHTML)

examples : $(MDEXAMPLES) $(HTMLEXAMPLES)

gmnclean: 
	rm -f $(INLINEHTML) $(MDEXAMPLES) $(HTMLEXAMPLES)

####################################################################
tagfiles: $(GUIDODIR)
	rm -rf tmptags
	[ -d tmptags ] || mkdir tmptags
	awk -v OUT=tmptags -f maketag.awk $(SRCDIR)/abstract/AR*.h
	mv -f tmptags/*.md $(TAGSDEST)

tagslist:
	make -C $(GUIDODIR)/build/ tags | egrep -v 'make|grep' | egrep -v $(IGNORED) | grep -v ^s$ | sort -u

$(GUIDODIR):
	@echo "GUIDODIR not found !"
	@echo "you should either:"
	@echo "   - set GUIDODIR to the guidolib projet location in this Makefile"
	@echo "   - call make GUIDODIR=guidolib_projet_path"
	@false;

chapters:
	cat tags.txt | cut -d':' -f 2 | sort -u
	
tagschapters:
	cat tags.txt | sed -e 's/\([^:]*\):\([^:]*\)/\2:\1/' | sed 's/ *//g' | sort -u
	
tagsindex:  docs/refs/index.md

docs/refs/index.md: tags.txt
	cat tags.txt | awk -f tagslist.awk  > docs/refs/index.md

####################################################################
# rules to convert gmn to html
$(DOCDIR)/GMN/%.html: examples/mkdocs/%.gmn
	echo '<div class="guido-code">' > $@
	guido2svg $< >> $@
	echo '</div>' >> $@

$(DOCDIR)/examples/%.md: examples/mkdocs/examples/%.gmn
	$(eval name := $(patsubst $(DOCDIR)/examples/%.md, %, $@))	
	awk -v FILE=$(name) -f scripts/sample2md.awk $< > $@

$(DOCDIR)/GMN/examples/%.html/%.md: examples/mkdocs/examples/%.gmn
	$(eval name := $(patsubst $(DOCDIR)/examples/%.md, %, $@))	
	echo '<div class="guido-code guido-full">' > $@
	guido2svg $< >> $@
	echo '</div>' >> $@


####################################################################
install:
	pip install mkdocs
	pip install mkdocs-pdf-export-plugin
	pip install markdown-include
	npm i railroad-diagrams

uninstall:
	pip uninstall -y mkdocs-material
	pip uninstall -y pymdown-extensions
	pip uninstall -y markdown-blockdiag
	pip uninstall -y mkdocs-pdf-export-plugin
