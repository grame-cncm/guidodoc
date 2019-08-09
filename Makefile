
MAKE 	?= make

TMPTAGDIR := .tmptags

IGNORED  := "shareLocation|splitChord|chord|bembel|merge|port|shortFermata|color|colour|symbol|unit"
MKDIR    := mkdocs
DOCDIR   := $(MKDIR)/docs
TAGSDEST := $(DOCDIR)/refs/tags
GUIDODIR ?= ../guidolib
SRCDIR   := $(GUIDODIR)/src/engine

INLINEGMN 	:= $(wildcard examples/mkdocs/*.gmn)
INLINEHTML 	:= $(INLINEGMN:examples/mkdocs/%.gmn=$(DOCDIR)/GMN/%.html)
GMNEXAMPLES := $(wildcard examples/mkdocs/examples/*.gmn)
HTMLEXAMPLES:= $(GMNEXAMPLES:examples/mkdocs/examples/%.gmn=$(DOCDIR)/GMN/examples/%.html) 
MDEXAMPLES  := $(GMNEXAMPLES:examples/mkdocs/examples/%.gmn=$(DOCDIR)/examples/%.md)
EXAMPLESMENU:= $(MDEXAMPLES:%.md=%.item)

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
	@echo "  serve    : launch the mkdoc server"
	@echo "  all      : generates all the necessary files from the src code or from gmn files"
	@echo "             actually call the 'gmn' and 'tagfiles' targets"
	@echo "Development specific targets are available:"
	@echo "  tagfiles : create the tags documention md files from the src files"
	@echo "  tagsindex: generates the tags index page"
	@echo "  gmn      : call inlinegmn and examples targets"
	@echo "  inlinegmn: process the inline gmn files"
	@echo "  examples : process the gmn examples files"
	@echo "  menu     : generates the examples menu"

test: 
	@echo EXAMPLESMENU: $(EXAMPLESMENU)

####################################################################
build:
	cd $(MKDIR) && mkdocs build

serve:
	cd $(MKDIR) && mkdocs serve

all:
	$(MAKE) tagfiles
	$(MAKE) gmn
	$(MAKE) zip
	cp -r Introduction $(DOCDIR)

publish:
	$(MAKE) all
	$(MAKE) build
	git checkout gh-pages
	cp -Rf $(MKDIR)/site/* .
	

####################################################################
# building guido examples
gmn:
	$(MAKE) inlinegmn
	$(MAKE) examples
	
inlinegmn: $(INLINEHTML)

examples : $(MDEXAMPLES) $(HTMLEXAMPLES)

examplesmd : $(MDEXAMPLES)
exampleshtml : $(HTMLEXAMPLES)

gmnclean: 
	rm -f $(INLINEHTML) $(MDEXAMPLES) $(HTMLEXAMPLES)
	
menu: $(EXAMPLESMENU)

zip: 
	@[ -d $(DOCDIR)/rsrc ] || mkdir $(DOCDIR)/rsrc
	cd examples/mkdocs && zip -r examples examples 
	mv examples/mkdocs/examples.zip $(DOCDIR)/rsrc
	

####################################################################
tagfiles: $(GUIDODIR)
	@rm -rf $(TMPTAGDIR)
	@[ -d $(TMPTAGDIR) ] || mkdir $(TMPTAGDIR)
	awk -v OUT=$(TMPTAGDIR) -f scripts/maketag.awk $(SRCDIR)/abstract/AR*.h
	@[ -d  $(TAGSDEST) ] || mkdir  $(TAGSDEST)
	mv -f $(TMPTAGDIR)/*.md $(TAGSDEST)

tagslist:
	$(MAKE) -C $(GUIDODIR)/build/ tags | egrep -v 'make|grep' | egrep -v $(IGNORED) | grep -v ^s$ | sort -u

$(GUIDODIR):
	@echo "GUIDODIR not found !"
	@echo "you should either:"
	@echo "   - set GUIDODIR to the guidolib projet location in this Makefile"
	@echo "   - call $(MAKE) GUIDODIR=guidolib_projet_path"
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
$(DOCDIR)/GMN/examples/%.html: examples/mkdocs/examples/%.gmn
	@[ -d $(DOCDIR)/GMN/examples ] || mkdir $(DOCDIR)/GMN/examples
	sh scripts/guido2svg.sh $<	> $@

$(DOCDIR)/GMN/notes.html: examples/mkdocs/notes.gmn
	@echo '<div class="guido-code guido-medium">' > $@
	guido2svg $< >> $@
	@echo '</div>' >> $@

$(DOCDIR)/GMN/%.html: examples/mkdocs/%.gmn
	@echo '<div class="guido-code">' > $@
	guido2svg $< >> $@
	@echo '</div>' >> $@

$(DOCDIR)/examples/%.md: examples/mkdocs/examples/%.gmn
	@[ -d $(DOCDIR)/examples ] || mkdir $(DOCDIR)/examples
	$(eval name := $(patsubst $(DOCDIR)/examples/%.md, %, $@))	
	awk -v FILE=$(name) -f scripts/sample2md.awk $< > $@

####################################################################
# rule to generate the example menu items
$(DOCDIR)/examples/%.item : $(DOCDIR)/examples/%.md
	$(eval file := $(patsubst $(DOCDIR)/examples/%.item, %, $@))	
	@echo "        - '$(shell egrep '^# ' $< | sed 's/# *//' | sed 's/ *$$//')': examples/$(file).md"


####################################################################
install:
	pip install mkdocs
	pip install mkdocs-pdf-export-plugin
	pip install markdown-include
#	npm i railroad-diagrams

uninstall:
	pip uninstall -y mkdocs-material
	pip uninstall -y pymdown-extensions
	pip uninstall -y markdown-blockdiag
	pip uninstall -y mkdocs-pdf-export-plugin
