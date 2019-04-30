#!/bin/bash

#Mini challenge for lab 4

#Question 1 input: Cats eat 5 billion birds a year

#Output: 5 billion? 5 billion!

echo "Cats eat 5 billion birds a year" | sed 's/\(Cats eat\) \(5 billion\) \(birds a year\)/\2? \2!/'
#Question 2 input: 12345abcde678910fghij
#output:abcdefghij12345678910
echo "12345abcde678910fghij" | sed 's/\(12345\)\([a-e]*\)\(678910\)\([f-j]*\)/\2\4\1\3/'

#Q3 Input 12345abcde678910fghij
#Output ab cd ef gh ij 12 34 56 78 91 0

echo "12345abcde678910fghij" | sed 's/\([0-9]*\)\([a-e]*\)\([0-9]*\)\([f-j]*\)/\2\4\1\3/' | sed 's/\(..\)/\1\t/g'
#the /g ensures that all pairs of characters will be included as oppsed to just the first occurence


#Q4 input:12345abcde678910fghij
#output: ab cd ef gh ij 

echo "12345abcde678910fghij" | sed 's/\([0-9]*\)//g' | sed 's/\(..\)/\1\t/g' 
