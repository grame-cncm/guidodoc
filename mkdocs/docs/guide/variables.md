{!include.txt!}

# Variables

Variables have been introduced with the version 1.7.0 of the Guido Engine. They are intended to share tags parameters or to structure a score. 

## Variable names

A variable name must always start with `$` followed by a letter and by any number of letters, numbers or `_` characters.
{!BNF/varname.html!}


## Declaration section

Variables must be declared in a variables declaration section that precedes the score description.  
A variable declaration assigns a value to a variable name.

{!BNF/variables.html!}

Note that the `string` value may refer to another variable.  

**Warning !**  
A variable `string` value should not refer to itself (directly or indirectly). It will cause an infinite loop and an unpredictable behavior.



## Using variables

Variables may be used at any location within a [voice](../voices) description. They are expanded in place at parsing level. You may think of *macro* when using a variable and thus, figure out how to use it in a given context.

## Examples
~~~~~~
% start of variables declaration section
$dx = -2;
$text1="foo 1";

$a = "a";
$b = "f/16 g f a";
$c = "b/8 a g f g e";
$seq = "a/4 \slur(b c2/2) a1/4 $b $b $b";
% end of variables section

% start of the score
[ 
	\meter<"4/4">
	\text<$text1, dx=$dx>($a ) 
	\text<$text1, dx=$dx>($a ) 
	$a /2
	\text<'foo 2', dy=12>($c ) 
	b c 
	$seq $seq c/1
]
~~~~~~
{!GMN/variables.html!}
