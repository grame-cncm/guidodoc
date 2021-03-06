
# Sonata for flute

Excerpt from "Sonata in A Minor", a work by C. P. E. Bach.   

Source: [Mutopia project](https://www.mutopiaproject.org/ftp/BachCPE/Wq132/Sonata_solo_flute_a_min-fl/Sonata_solo_flute_a_min-fl-a4.pdf)

~~~~~~
[
	\pageFormat<"A4", tm=6cm>
	\title<"Sonata in A Minor", fattrib="b", dy=6>
	\title<"for solo flute, Wq 132 (H 562)", dy=0, fsize=12pt>
	\title<"Manuscript from Gieddes Samling (I,26 mu 6210.2926)", dy=-6, fsize=12pt>
	\title<"Flute", dy=-16, fsize=18pt, fattrib="b">
	\composer<"C. P. E. Bach (1714-1788)", fsize=12pt, dy=6>

	\set<autoIntensPos="on">
	\clef<"g"> \meter<"3/8", autoMeasuresNum="system"> 
	\tempo<"Poco Adagio", dy=6>

	\stemsDown \stacc(a/8) \i<"p"> \slurBegin<"Up", dy=3> a2 b 
	\stemsUp \slur<"down", dx2=-1.3, dy2=0.3>(\grace(d3/16) \stemsDown c/8) b2 a \slurEnd
	\i<"f", dx=3> \stacc(f1) \i<"p"> \slurBegin<"Up", dy=3> a2 b
	\stemsUp \slur<"down", dy1=1, dy2=7>(\bm(\grace(b2/16 d3)) \stemsDown c3/8) b2 a \slurEnd
	\i<"f", dx=3> d1 \slur<dx1=-2, dy1=4, dy2=3> (\turn<dx=2>(b2) f3)

	\slur<dx2=1, dy1=2.5, dy2=2>(a2 g#/16) \slur(e1 g# b)
	\stacc(d2) \slur(f e d c b1)
	\slur (\beam (\trill(c2/8) b1)) _ 
	\slur (c2 e g)
	\stemsUp \slur (c2 b1/16) \slur (d f b)

	\stemsDown \slur(d2 f b d3) \slur<dx1=-1,dy1=2, dy2=2>(g1 f2)
	\slur<dx1=-1, dx2=1, h=6, dy=2>(c e a g) \slur<dx1=-1,dy1=1, dy2=2>(e1 c2)
	\slur<dy1=5, dy2=2, dy=2>(f1 e2 d b1 ) g f2
	\slur( \tuplet<format="3">( \bm(e2/24 d c))) c/8 _

	\stacc(c#) \slurBegin b&1 a
	g f e/16 \slurEnd b&2
	a \slur(c# d f e) g1
	\stemsUp f \slur( \i<"p"> a c#2 d) _ \stemsDown \i<"f"> f
	g1 \sl(e2 a1) \sl<dy1=2, dy2=1,  dy=2>(d2 c#) g
	\slur(g \trill<dy=3.5>(e) f) \slur(d1 f a)
	d2 \sl(a g f e d)
	\sl(c/8 \trill(b1/16)) \sl(g b d2)
	f \sl(d3 b2 f) g1 f2
	\stemsUp \sl<"down", dy1=-0.5>(\grace(g/16) \stemsDown \trill<dx=0.5>(f/8)) e e1/16 c2
	\sl<dy1=2, dy2=1, dy=1>(b&2 a) f1 e&2 f#1 d2
	\sl(c3 b2) g1 f2 g#1 e2
	\sl(d3 c) a1 \sl(e2 g f#)
	\sl(a g) b1/8. f2/16
	\bm ( \tuplet<format="3">(e/24 d c)) \trill(d/8.) c/16
	\stacc(f#1/8) \slurBegin<"up", dy=3> \i<"p">c2 d

	\stemsUp \slur<"down", dy2=1, dy=-1>(\grace(f2/16) \stemsDown e&/8) d c \slurEnd
	\i<"f", dx=4> \stacc(g1) \slurBegin<"up", dy=3> \i<"p"> c2 d 
	\stemsUp \sl<"down", dx2=3, dy2=6>(\bm(\grace(d/16 f))\stemsDown e&/8) d c \slurEnd
	_ \i<"f"> \stacc(a&1/16) \sl<dx1=-2, dy1=2, dy=4, h=3>(f#2 e&3 d) |
]
~~~~~~


<button class="try_it" onclick=window.open("https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/cpebach.gmn")>Try it online</button>

{!GMN/examples/cpebach.html!}

