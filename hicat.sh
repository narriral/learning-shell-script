#!/bin/bash
# This is a program called "Hi cat"
# So, when you feel blue
# You start the program by using
# bash hicat.sh
# and the cat will send you a special random msg
#######################################################
#      \    /\
#       )  ( ')
#      (  /  )
# jgs   \(__)|
#######################################################
# I want to print an ascii-art cat with the sentence
# but I was not able to do so until this date.
# if you have any ideas on how to print the cat
# let me know :)
#######################################################

read -r -p "Do you want to get the cat's msg? [y/N] " response
if [[ "$response" =~ ^([yY][eE][sS]|[yY])+$ ]]
then
  	#$cat=("^^_S")
	action=("hug" "love" "feel"  "watch"  "pratice" "smile" "smell")
	thing=("clouds" "cats" "joy" "movies" "exercise" "water")
	what=("the eyes" "long breathes" "a smile" "happiness" "meditation" "blanket" "napping")
	where=("outside" "at the beach" "in a park with a friend" "on computers" "in the cinema")
###
# pick a random entry from the word list of activities
###
n1=${action[$RANDOM % ${#action[@]}]}
n2=${thing[$RANDOM % ${#thing[@]}]}
n3=${what[$RANDOM % ${#what[@]}]}
n4=${where[$RANDOM % ${#where[@]}]}
echo "this is a nice day to" $n1 $n2 "with" $n3 $n4

else
    echo "how about calling a friend to have a coffee/tea outside?"
fi
