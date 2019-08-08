
BEGIN {
	INDOC = 0;
	INGMN = 0;
}

END {
	print "~~~~~~\n{!GMN/examples/" FILE ".html!}\n";
}

################# papers generation
/\(\*/		{  INDOC=1; print "";}
/\*\)/		{  INDOC=0; INGMN=1; print "\n~~~~~~" }
/^[^(*].*/	{ if (INDOC || INGMN) print $0 }
/^$/		{ print $0 }
