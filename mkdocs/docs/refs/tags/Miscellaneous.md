{!tags.css!}

# Miscellaneous


## \auto

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \auto | \set | P | sets voice level global settings |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| autoEndBar | boolean | automatic end bar | on | true |
| endBar | boolean | variant for autoEndBar | on | true |
| autoPageBreak | boolean | automatic page break | on | true |
| pageBreak | boolean | variant for autoPageBreak | on | true |
| autoSystemBreak | boolean | automatic system break | on | true |
| systemBreak | boolean | variant for autoSystemBreak | on | true |
| autoClefKeyMeterOrder | boolean | automatic reordering of clef, key and meter | on | true |
| clefKeyMeterOrder | boolean | variant for autoClefKeyMeterOrder | on | true |
| autoLyricsPos | boolean | automatic collision avoidance for \lyrics | off | true |
| lyricsAutoPos | boolean | ariant for autoLyricsPos | off | true |
| autoInstrPos | boolean | automatic positionning for \instr | off | true |
| instrAutoPos | boolean | variant for autoInstrPos | off | true |
| autoIntensPos | boolean | automatic collision avoidance for \intens | off | true |
| intensAutoPos | boolean | variant for autoIntensPos | off | true |
| autoHideTiedAccidentals | boolean | hide all acidentals on tied notes | on | true |
| harmonyPos | boolean | above or below (see [\harmony](../Text/#harmony)) | *none* | true |
| fingeringPos | boolean | above or below (see [\fingering](../Text/#fingering)) | *none* | true |
| fingeringSize | float | the fingering text size (see [\fingering](../Text/#fingering)) | *none* | true |

Collision management strategies can produce unexpected results or even create new collisions.
In this case, you should switch to manual layout using the 'dx' and 'dy' [common parameters](../../tagsparams#common-parameters).

See the [Jazz](../../../examples/allthethings/) example.<br />
See the [Beethoven](../../../examples/beethoven/) example.<br />
See the [Sonata](../../../examples/cpebach/) example.






<br />


## \space

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \space |  | P | insert space at any position. |

The **\space** tag can be used to save space for notation elements that do not take up space.



### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| dd | unit | the amount of space | 0 | false |

See the [Space](../../../examples/space/) example.





<br />


## \special

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \special |  | P | insert a musical glyph |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| char | string | the character to display | *none* | false |

**char** may be specified as:

- a litteral character
- an hexadecimal number i.e. a number prefixed with "\x" (e.g. "\xa0")
- an octal number i.e. a number prefixed with "\o" (e.g. "\o130")
- a decimal number i.e. a number prefixed with "\"

See the [Special](../../../examples/space/) example.



