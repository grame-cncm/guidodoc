
# Tempo 

This example illustrates the use of \tempo \accel, \rit, and tempo format strings.

~~~~~~
[ 
	\pageFormat<tm=1.5cm, rm=1cm, bm=1cm, lm=1cm>
	\clef<"g"> \meter<"3/4"> \tempo<"Moderato [1/4] = 90", fsize=13pt> c d e 
	\mark<"A", "square", dx=3>
	f g/8 a h c2 d e fe d c 
	\meter<"6/8"> \tempo<"[1/8] = [1/8]"> b1 a g f e d 
	c/4. e \mark<"B", "diamond", dx=3>
	\accel(c/8 d e d e f e f g f g a) 
	\tempo<"[3/8] = 100"> b/4. c2
	a1 b g a f g \mark<"C", "triangle", dx=3, dy=2>
	\rit ( a/8 f/8 e d c b0 g1 a f e d e ) \fermata(c1/2.)
]
~~~~~~


<button class="try_it" onclick=window.open("https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/tempo.gmn")>Try it online</button>

{!GMN/examples/tempo.html!}

