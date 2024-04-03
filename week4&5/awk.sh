#!/bin/bash

#awk command
echo -e "using cat:"
cat file1.txt
echo -e "\n"

echo -e "cat using awk:"
awk '{print $0}' file1.txt
echo -e "\n"

echo -e "printing selected columns:"
awk '{print $1, $3}' file1.txt
echo -e "\n"

echo -e "printing total salary:"
awk '{ sum+= $3 } END {print sum}' file1.txt
echo -e "\n"

echo -e "printing average salary:"
awk '{ sum += $3 } END { print sum/ NR}' file1.txt
echo -e "\n"

echo -e "printing substring:"
awk '{ print substr($1, 2, 3) }' file1.txt
echo -e "\n"

echo -e "printing last column:"
awk '{ print $NF }' file1.txt
echo -e "\n"

echo -e "conditional statements in awk:"
awk '{ if( $3 > 10000) { print "senior" } else { print "junior" } }' file1.txt
echo -e "\n"

echo -e "functions:"
awk 'function cube(x) {return x*x*x } {print cube($4) }' file1.txt
echo -e "\n"

echo -e "functions with recurssion:"
awk 'function printFirstNNum(x) {if( x == 20 ) { print "\n" } else { printFirstNNum(x-1); print x  }} { printFirstNNum($4) }' file1.txt
echo -e "\n"

echo -e "repition statements for :"
awk '{ for( i = $4 ; i > 20; i = i-1 ) { print i; if( i == 21 ){ print "\n" } } }' file1.txt
echo -e "\n"

echo -e "repition statements array :"
awk '{array[$0] = $4; for( i in array ) { print i } }' file1.txt
echo -e "\n"

echo -e "repition statements while :"
awk '{ i = $4; while( i > 20 ){ print i; i=i-1; if( i == 20 ){ print "\n" } } }' file1.txt
echo -e "\n"

echo -e "repition statements do-while :"
awk '{ i = $4; do{ print i; i=i-1; if( i == 20 ){ print "\n" } }while( i > 20 ) }' file1.txt
echo -e "\n"

echo -e "break:"
awk '{ for( i = $4 ; i > 20; i = i-1 ) { if( i == 22 ){ print "breaking\n"; break } else{ print i } } }' file1.txt
echo -e "\n"

echo -e "continue:"
awk '{ for( i = $4 ; i > 20; i = i-1 ) { if( i == 22 ){ continue } else{ print i } ; if( i == 21 ){ print "\n" } } }' file1.txt
echo -e "\n"

echo "sin:"
awk '{ print sin($4) }' file1.txt
echo -e "\n"

echo "cos:"
awk '{ print cos($4) }' file1.txt
echo -e "\n"

echo "logarithm:"
awk '{ print log($4) }' file1.txt
echo -e "\n"

echo "exponential:"
awk '{ print exp($4) }' file1.txt
echo -e "\n"

echo "random:"
awk '{ print rand() }' file1.txt
echo -e "\n"

echo "square root:"
awk '{ print sqrt($4) }' file1.txt
echo -e "\n"


