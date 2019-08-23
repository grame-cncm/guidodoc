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
| before | string | a string placed before 'accel.' | *none* | true |
| after | string | a string placed after the accel range | *none* | true |
| dx2 | unit | displacement of the right anchor point | 0 | true |
Supports [font parameters](../../tagsparams#text-parameters)

- **before** and **after** ara arbitrary strings that may contain a marker for note duration in the form "[n/d]" where 'n' and 'd' are integers.
The corresponding mark is decoded as a note duration and replaced with the corresponding note symbol. <br/>Example: *before="[1/4] = 80"*

See the [Tempo](../../../examples/tempo/) example.





<br />


## \ritardando

-------

### Description

| Name | Variants | Type | Notation element |
| :----| :--------| :----| :----------------|
| \ritardando | \rit <br /> \ritBegin \ritEnd | R | ritardando marks |

Works similarly to [\accelerando](#accelerando)



### Parameters

| Name        	| Type   | Description    | Default value  | Optional |
| :------------ |:-------| :--------------| :------------- | :--------| 
| before | string | a string placed before 'accel.' | *none* | true |
| after | string | a string placed after the accel range | *none* | true |
| dx2 | unit | displacement of the right anchor point | 0 | true |
Supports [font parameters](../../tagsparams#text-parameters)

- **before** and **after** ara arbitrary strings that may contain a marker for note duration in the form "[n/d]" where 'n' and 'd' are integers.
The corresponding mark is decoded as a note duration and replaced with the corresponding note symbol. <br/>Example: *before="[1/4] = 80"*

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



