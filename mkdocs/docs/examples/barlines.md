
# Barlines 

This example shows the use of barlines, bar format and accolades.

~~~~~~
{
	[ 
		\pageFormat<lm=1cm, tm=1cm, bm=1cm, rm=1cm>
		\accol<range="1-3", dx=-1, type="straightBrace">	 
		\barFormat<"system", range="1-3"> 
	 	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ],
	[	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ], 
	[	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ],

	[	\accol<range="4-5">
		\barFormat<"system", range="4-5"> 
	 	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ],
	[	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ],

	[	\accol<range="6-8", type="thinBrace">
		\barFormat<"system", range="6-8">
	 	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ],
	[	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ],
	[	c c | f g \doubleBar a f \repeatBegin  d e \repeatEnd e/2 ]
}
~~~~~~


<a href="https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/barlines.gmn" target=_blank><button class="try_it"> Try it online </button></a>

{!GMN/examples/barlines.html!}

