
# Accidentals 

This example shows the use of the \accidental and \alter tags.

~~~~~~
[
	\pageFormat<lm=1cm, tm=1cm, bm=1cm, rm=1cm>
	\key<1> \meter<"2/4">
	\acc<dy=-0.5hs,dx=-2hs>( c# ) % set accidental position
	\acc<size=1.4>(d&)            % set accidental size
	\acc( f# )                    % force a sharp
	\acc( c2 )                    % force a natural sign

	\alter<0.5> c                 % \alter is used without range
	\acc<"cautionary", color="blue">(c)
	\alter<-0.5>(c) b1            % \alter used with a range, applied to c only
	\alter<0> d a
]
~~~~~~


<button class="try_it" onclick=window.open("https://guidoeditor.grame.fr/?src=https://raw.githubusercontent.com/grame-cncm/guidodoc/master/examples/mkdocs/examples/accidentals.gmn")>Try it online</button>

{!GMN/examples/accidentals.html!}

