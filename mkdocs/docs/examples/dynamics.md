
# Dynamics 

This example illustrates the use of dynamics.

~~~~~~
[
	\pageFormat<lm=1cm, tm=1cm, bm=1cm, rm=1cm>
	\clef<"g"> \meter<"3/4">
	\i<"pp", autopos="on"> { f, c1, a0} 
	\i<"sfz"> a1 g a
	\i<"mp", before="un poco", after="piu", autopos="on"> c
	\i<"f", size=1.4, dy=-3.2>  \accent<"above">(g1) 
	\dim<dx2=-3>(g/8 g g g g \i<"p"> g)
]
~~~~~~


<button class="try_it" onclick=window.open("https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/dynamics.gmn")>Try it online</button>

{!GMN/examples/dynamics.html!}

