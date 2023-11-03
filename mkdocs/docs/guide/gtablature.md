
{!include.txt!}

# Guido extension for guitar tablatures.

Since version 1.7.7, the Guido engine supports guitar tablatures.

## Designing a tablature for guitar

Two extensions are provided to support a special staff for tablature :

- the [\clef](../../refs/tags/ClefKeyMeter) tag supports a new 'TAB' type
- the [\staffFormat](../../refs/tags/Layout/#staffformat) tag supports a 'TAB' type.

Tablatures are using special notes names that behave similarly to regular notes except that they don't support accidentals..

{!BNF/tablaturenotes.html!} 

The leading `s` is a marker for tablature notes and stands for string.  
It is followed by a string number where 1 corresponds to the upper string, followed by a frette number enclosed in colons (':').   
String numbers must be in the interval 1 to 6.  
Frette number is actually a string intended to display numbers but it supports any string.


## Example
~~~~~~
[
	\clef<"TAB"> 
	\staffFormat<style="TAB">
	{ s4:5:/8, s3:5: } s5:4: s2:4: s1:2:
	{ s4:7:/8, s3:7: }	{ s4:x:/4, s3:x: }
]
~~~~~~
{!GMN/tablature.html!}
