
TEST := tablaturenotes.rail

OUTDIR := ../mkdocs/docs/BNF
INPUT  := tablaturenotes.rail
OUTPUT := $(INPUT:%.rail=$(OUTDIR)/%.html)

help:
	@echo "Convert rail files to html"
	@echo "Available target:"
	@echo "   test:  convert $(TEST) to test.js - open test.html"
	@echo "   html:  convert input files in place ($(OUTDIR))"

test:
	rail2js $(TEST) > test.js
	open test.html

html: $(OUTPUT)

var:
	echo $(OUTPUT)

$(OUTDIR)/%.html : %.rail
	echo '<div>\n\t<script>' > $@
	rail2js $< >> $@
	echo '\t</script>\n</div>' >> $@
	