{!tags.css!}

# Tempo


## \accelerando

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \accelerando | \accel <br /> \accelBegin \accelEnd | R | accelerando marks |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| tempo | string | the tempo at the beginning | *none* | true |
| abstempo | string | the tempo at the end | *none* | true |
Supports [font parameters](../../tagsparams#text-parameters)

- **tempo** and **abstempo** are intended to be tempo values. A quarter note is inserted before these strings.

**Note**: the implementation of the parameters is not satisfactory, in particular because the value of the time unit is hard coded.
It will be revised in the future to integrate the encoding of the time unit into the tempo string.

See the [Tempo](../../../examples/tempo/) example.





<br />


## \ritardando

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \ritardando | \rit <br /> \ritBegin \ritEnd | R | ritardando marks |

Supports the same parameters and the same note than [\accelerando](#accelerando)

See the [Tempo](../../../examples/tempo/) example. <br />
See the [Lutkin](../../../examples/lutkin/) example.




<br />


## \tempo

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \tempo |  | P | a tempo mark |




### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| tempo | string | a tempo string | *none* | false |
| bpm | string |  | *none* | true |
Supports [font parameters](../../tagsparams#text-parameters)

- **tempo** is an arbitrary string that may contain a marker for note duration in the form "[n/d]" where 'n' and 'd' are integers.
The corresponding mark is decoded as a note duration and replaced with the corresponding note symbol. <br/>Example: "Andante [1/4] = 80"

See the [Tempo](../../../examples/tempo/) example. <br />
See the [Lutkin](../../../examples/lutkin/) example.



