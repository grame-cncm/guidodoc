
BEGIN {
	INDOC = 0;
	INGMN = 0;
}

END {
	URL = "https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/" FILE ".gmn"
	print "~~~~~~\n"
	print "\n<a href=\"https://guidoeditor.grame.fr/?src=" URL "\" target=_blank><button class=\"try_it\"> Try it online </button></a>\n"
	print "{!GMN/examples/" FILE ".html!}\n";
}

################# papers generation
/\(\*/		{  INDOC=1; print "";}
/\*\)/		{  INDOC=0; INGMN=1; print "\n~~~~~~" }
/^[^(*].*/	{ if (INDOC || INGMN) print $0 }
/^$/		{ print $0 }
