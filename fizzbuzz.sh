#!/bin/bash

# Get upper limit from argv if supplied.
limit=$([ $1 != "" ] && echo $1 || echo 100 )

# TODO: Expand to general case.

# Run FizzBuzz proper.
fizz=3
buzz=5
for i in $(seq 1 $limit); do
	output=""
	if [ $[$i % $fizz ] == 0 ]; then
		output=${output}fizz
	fi
	if [ $((i % $buzz)) == 0 ]; then
		output=$output"buzz"
	fi
	if [ "$output" == "" ]; then
		output=$i
	fi
	echo $output
done

