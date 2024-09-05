{!tags.css!}

# Text


## \composer

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \composer |  | P | the composer name |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| name | string | the composer name | *none* | false |
| pageformat | string | a page location | 53 | true |
Supports [font parameters](../../tagsparams#text-parameters)

**pageformat** works similarly to [\title](#title).

See the [Mozart](../../../examples/mozart581/) example.<br />
See the [Fauré](../../../examples/faure/) example.<br />
See the [Jazz](../../../examples/allthethings/) example.





<br />


## \fingering

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \fingering | \fing | P | fingering |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| text | string | the fingering string | *none* | true |
| position | string | above or below | *none* | true |
Supports [font parameters](../../tagsparams#text-parameters)

The default position for fingering is close to the note head. When **position** is specified, the fingering is placed above or below the note, avoiding collisions with the stems and always outside the staff.

The position can be set at global voice level using the [\auto](../Miscellaneous/) tag.

**Note about the fingering string:** a comma can be used as a text separator. In this case, comma separated strings are stacked verticaly. This form can be used to express chords fingering. In this case, you should place the fingering on the highest note when the fingering positon is above, or on the lowest note on the contrary.

See the [Beethoven](../../../examples/beethoven/) example.





<br />


## \footer

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \footer |  | P | the score footer |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| text | string | the footer text | *none* | false |
| pageformat | string | a page location | c6 | true |
Supports [font parameters](../../tagsparams#text-parameters)

**pageformat** works similarly to [\title](#title).

See the [Jazz](../../../examples/allthethings/) example.





<br />


## \harmony

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \harmony |  | P | harmony marking |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| text | string | the harmony string (e.g. C7) | *none* | false |
| position | string | above or below | below | false |
Supports [font parameters](../../tagsparams#text-parameters)

The harmony string may contain # and & characters. They are converted to sharp and flat symbols.

See the [jazz](../../../examples/allthethings/) example.





<br />


## \instrument

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \instrument | \instr | P | instrument marking |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| name | string | the instrument name | *none* | false |
| transp | string | a transposition string | *none* | true |
| autopos | boolean | automatic position control | off | true |
| repeat | boolean | allows to display on each system | off | true |
| MIDI | int | MIDI instrument number | -1 | true |
Supports [font parameters](../../tagsparams#text-parameters)

- **name** is the instrument name (e.g. "Violin I")
- **transp** is provided for transposing instruments. For example, with a Trumpet in B flat, you should set **transp** to "B&". When *transp* is set, a transposing key is automatically inserted and the notes are automatically transposed to the corresponding interval.
- **autopos**: when "on", put the instrument string centered to the left of the corresponding staff. The default position if on top, left of the staff.
- **repeat**: when "on", the instrument string is repeated on each system.

See the [Articulations](../../../examples/articulations/) example.<br />
See the [Mozart](../../../examples/mozart581/) example.<br />
See the [Fauré](../../../examples/faure/) example.





<br />


## \lyrics

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \lyrics |  | R | lyrics |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| text | string | the lyrics | *none* | false |
| autopos | string |  | off | true |
Supports [font parameters](../../tagsparams#text-parameters)

The lyrics are mapped onto the enclosed notes and rests according to the following rules:

- a " " (space) after a word (or syllable) progresses to the following event.
- a "~" (tilde) between characters specifies a blank within the lyrics. There is no progression to the following event. The tilde is used to place more than one word on a single note.
- a "-" (hyphen) progresses to the following event. The hyphen is also printed in the score.
- a "_" (underscore) progresses to the following event. The underscore is also printed in the score.
- a "<n>" progresses to the event that is marked with the \mark<n>-tag. If the <n> is proceeded by a hyphen ("-"), a series of hyphens is printed from the current event to the target event.

When **autopos** is on, the system moves the lyrics in case of collision.

See the [Faure](../../../examples/faure/) example.





<br />


## \mark

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \mark |  | P | marks |

The **\text** tag is both a range and a position tag. When a range is specified, the text doesn't take place: it is placed over the range.
With no range, the text is inserted at its position.



### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| text | string | the mark | *none* | false |
| enclosure | string | none, square, rectangle, bracket, triangle, diamond | none | true |
Supports [font parameters](../../tagsparams#text-parameters)


See the [Tempo](../../../examples/tempo/) example.





<br />


## \text

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \text | \label <br/> \t | RP | textual elements |

The **\text** tag is both a range and a position tag. When a range is specified, the text doesn't take place: it is placed over the range.
With no range, the text is inserted at its position.



### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| text | string | the text | *none* | false |
Supports [font parameters](../../tagsparams#text-parameters)

See the [Notes](../../../examples/notes/) example.





<br />


## \title

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \title |  | P | the score title |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| name | string | the title of the piece | *none* | false |
| pageformat | string | a page location | c2 | true |
Supports [font parameters](../../tagsparams#text-parameters)

**pageformat** is a 2 chars string that describes the location of the title on the page: the first char gives the x position, and the secod the y position.
This location is relative to the page size and to the page margins (see [\pageFormat](../Layout/#pageformat)).

Values for the first char must be in:

- **1** or **l**: the x position is set to the left side of the page
- **2**: the x position is set to the middle of left margin.
- **3**: the x position is set to the left margin.
- **4** or **c**: the x position is centered on the page
- **5**: the x position is set to the right margin.
- **6**: the x position is set to the middle of right margin.
- **7** or **r**: the x position is set to the right side of the page

Values for the second char must be in:

- **1** or **t**: the y position is set to the top side of the page
- **2**: the y position is set to the middle of top margin.
- **3**: the y position is set to the top margin.
- **4** or **c**: the y position is centered on the page
- **5**: the y position is set to the bottom margin.
- **6**: the y position is set to the middle of bottom margin.
- **7** or **b**: the y position is set to the bottom side of the page


See the [Mozart](../../../examples/mozart581/) example.<br />
See the [Fauré](../../../examples/faure/) example.<br />
See the [Jazz](../../../examples/allthethings/) example.



