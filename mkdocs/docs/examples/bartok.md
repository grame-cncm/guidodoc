
# Bela Bartock

Bela Bartock - Romanian Folk Dance No2

\newSystem is used to enforced the source layout.

Source: [Mutopia project](https://www.mutopiaproject.org/ftp/BartokB/rom_folk_dance_1_bartok/rom_folk_dance_1_bartok-a4.pdf)

~~~~~~
{
	[
		\pageFormat<"A4", tm=5cm, bm=2cm>
		\title<"Romanian Folk Dance No2">
		\title<"Peasant Costume", dy=-8, fsize=18pt>
		\composer<"Bela Bartock (1881-1945)", dy=9>
		\systemFormat< dx=2cm> \barFormat<"system">

		\clef<"g"> \meter<"2/4", autoMeasuresNum="system"> 
		\tempo<"Allegro">
		d/8 e f g a g d g a/4 a/8 _/16b a/2 
		\newSystem
		g/8 a b g c2/4 \stemsUp \tuplet<"5", "above">(c2/20 b1 a g f) 
		g/4 g/8 _/16 a \stemsAuto 
		\newSystem
		g/2 g/8 a b g \stemsUp c2/4 c/16 b1a g \stemsAuto 
		\newSystem
		f/8 e f g f e d/4 d/8 e f a 
		\newSystem
		g f e f d/4 d/8 _/16 a0 d1/2 
	],
	[
		\clef<"f"> \meter<"2/4"> 
		d-1 {f0, a}
		d-1 {g0, b}
		d-1 {a0, d1, f} {a0/2, d1, f}
		g-1/4 {d1, f}
		a-1 {c1, f}
		g-1 {c1, d} {b0/2, d1}
		f-1/4 {g0, d1}
		e-1 {b0, c1}
		{f0, a, c1} {a0, c#1}
		{b&0, d1} \stemsDown {b&-1, f0} \stemsAuto
		g-1/4 {d0, b}
		a-1 {g0, c#1}
		d-1 {d0, f, a}
		{d0/2, f, a}
	]
}

~~~~~~


<button class="try_it" onclick=window.open("https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/bartok.gmn")>Try it online</button>

{!GMN/examples/bartok.html!}

