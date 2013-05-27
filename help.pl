#!/usr/bin/perl
use strict;
use warnings;

my $nameVar = "Chris";			#variable called nameVar

my @nameArray = ("Bob",			#array variable called nameArray
		"chris",
		"Frank",        	#trailing comma is ok
		);

print "sup ". $nameVar ."!\n";

print "Names: ". @nameArray ."\n"; 	#prints out number of elements in array
print "@nameArray\n";			#prints out array items

print $nameArray[0]."\n";       	#retrieve from array as a variable

print $nameArray[-3]."\n";		#retrieves from array starting at end

print "Size of array: ". (scalar @nameArray)."\n"; #returns size of array 

print "Last element added: ". $#nameArray ."\n";   #retruns index of last element added

print "Number of arguments given: ". @ARGV. "\n";  #prints how many arguments are given on running program

print "Arguments given are: @ARGV\n";              #Prints all of the arguments given


