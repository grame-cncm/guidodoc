
# Ornaments

This examples illustrates ornaments: trill, turn, mordent.

~~~~~~
{
	[
		\pageFormat<lm=1cm, tm=1cm, bm=1cm, rm=1cm>
		\barFormat<"system">
		\mord(g) 
		\mord<type="inverted">(g/2) 
		\mord<"a&", "prallprall">(g/4) \mord<"a&", "prallinverted", ady=-5.7, adx=-0.5>(g) 
	],
	[	
		\trill<"g#">(g/2) \trill(g/4) \trill<tr="false">(g/2)
		\tie(\trill(d2/4) \trill<"e&",begin="off" >(d2/4)) 
	],
	[	
		\turn(g/2) \turn<"a#">(g/2)  \turn<"a&", "inverted",dy=2.5,  ady=-5.5, adx=-0.3>(g2/4)
	]
}
~~~~~~


<button class="try_it" onclick=window.open("https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/ornaments.gmn")>Try it online</button>

{!GMN/examples/ornaments.html!}

