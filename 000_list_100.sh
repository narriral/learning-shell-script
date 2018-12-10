#!/bin/bash
# print 1 to 100; when it is divisible to 3 print crackle; divisible to 5 print pop; divisible to both print cracklepop
#
# i spent too much time on this
# but i learned a lot
# thanks drebs, for mentoring me
# :)
# drebs told me my 1st conditional is redundant :/

for i in `seq 1 100`; do
	A=$(( i % 3 ))
	B=$(( i % 5 ))
	C=$(( i % 3 && i % 5 ))

	if [[ "$C" -eq 0 && "$A" -eq 0 && "$B" -eq 0 ]]; then
	echo "CracklePop"
	elif [[ "$A" -eq 0 ]]; then
	echo "Crackle"
	elif [[ "$B" -eq 0 ]]; then
	echo "Pop"
	else echo $i
	fi

done
