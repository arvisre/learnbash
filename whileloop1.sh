#!/bin/bash

n=0

while [ $n -lt 10 ]
do
	echo "Now n is $n.it's less than 10 so add 1."
	n=$(( $n + 1 ))
done
	echo "The value of n is 10. The condition fails and While loop ends "
