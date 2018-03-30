#!/bin/bash
cat $1 | cut -f1 > prvnisloupec

while read line
do
	delka=${#line}
	echo $delka >> delkynazvu
	
done < prvnisloupec

paste delkynazvu $1 | sort -n | cut -f2- 

rm -r delkynazvu
rm -r prvnisloupec

