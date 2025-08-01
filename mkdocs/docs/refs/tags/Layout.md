{!tags.css!}

# Layout


## \accolade

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \accolade | \accol | P | accolades grouping staves |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| id | integer | an identification number | *none* | false |
| range | string | the accolade range | *none* | false |
| type | string | straightBrace, standard, curlyBrace, thinBrace or none | standard | true |

- the accolade range describes the staves covered by the accolade. It's a string in the form "n-m" or "n",
where 'n' and 'm' are staves indexes (starting from 1)
- straightBrace and standard are equivalent

See the [Barlines](../../../examples/barlines/) example.






<br />


## \color

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \color |  \colour | P | sets the voice color |

The **\color** tag sets the voice color.
Note that cross staff (like \accol) or global tags (like \title) are ignored. To set the whole score color, use the \pageFormat color parameter.
Note also that the color applies to the voices that follow.



### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| c | string | a color string | *none* | false |

The color string must be an html color name or a rgb(a) string in the form `0xrrggbb` or `0xrrggbbaa`





<br />


## \newPage

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \newPage | \newSystem | P | force a page break |

See the [Bach](../../../examples/bach/) example.




<br />


## \newLine

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \newLine | \newSystem | P | force a line break |

See the [notes](../../../examples/notes/) example. <br />
See the [Bartok](../../../examples/bartok/) example.




<br />


## \pageFormat

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \pageFormat |  | P | sets the page format |

The **\pageFormat** tag indicates the score page format. It should be set at the beginning of the first staff.
When no page format is encountered, the default page format is 21cm x 29.6 (A4) and the margins are set to 2 cm.



### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| type | string | A4, A3 or letter | *none* | false when w and h are not present |
| w | unit | the page width | *none* | false when type is not present |
| h | unit | the page height | *none* | false when type is not present |
| lm | unit | the left margin size | 2cm | true |
| tm | unit | the top margin size | 5cm | true |
| rm | unit | the right margin size | 2cm | true |
| bm | unit | the bottom margin size | 3cm | true |
| color | string | the score color | black | true |

See the [Layout](../../../examples/layout/) example.





<br />


## \staff

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \staff |  | P | set staff assignment |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| id | integer | a staff index | *none* | false |
| dy | unit | set the distance to the next staff | *none* | false |

'id' indicates a staff index (starting from 1). All the elements between a **\staff** tag and the next one
(or the end of the voice) are assigned to the staff designated by id.

See the [4 voices](../../../examples/4voices/) example.






<br />


## \staffFormat

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \staffFormat |  | P | sets the staff format |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| style | string | a style string in the form 'n-lines' or 'TAB' | 5-lines | true |
| lineThickness | float | the staff lines thickness | 0.08 | true |
| distance | unit | sets a fixed distance to the preceding staff | 0hs | true |

The "TAB" style is intended to display tablatures, it is similar to
`style="6-lines", size=1.35`

Note: the **\staffFormat** tag supports common parameters but dx has no effect.

See the [Layout](../../../examples/layout/) example.





<br />


## \staffOff

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \staffOff |  | P | hides the staff |

The **\staffOff** tag effect is to hide the staff and all the staff elements up to the next **\staffOn** tag.

The **\staffOn** and **\staffOff** tags are still experimental and may not provide the expected result depending on the context.

See the [Layout](../../../examples/layout/) example.




<br />


## \staffOn

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \staffOn |  | P | cancel the effect of \staffOff |

The **\staffOn** and **\staffOff** tags are still experimental and may not provide the expected result depending on the context.

See the [Layout](../../../examples/layout/) example.




<br />


## \systemFormat

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \systemFormat |  | P | sets the system format |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| dx | unit | set an horizontal offset to the first system | 0hs | true |

Note: the **\systemFormat** tag supports common parameters but only dx has an effect.

See the [Mozart](../../../examples/mozart581/) example.



