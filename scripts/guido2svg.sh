#!/bin/sh
#

FILE=$1
N=$(guidogetpagecount $FILE | cut -d ':' -f 2  2> /dev/null)
I=1


function page () {
	echo '<div class="guido-page">'
	guido2svg -p $1 $FILE
	echo '</div>' 
}

echo '<div class="guido-code guido-full">'
if [ $N -gt 1 ]
then
	while [ $I -le $N ]
	do
		page $I
		I=$((I + 1))
	done
else
	guido2svg $FILE
fi
echo '</div>' 

