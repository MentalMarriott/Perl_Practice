#!/usr/bin/perl					#have these at the 
use strict;					#start of each
use warnings;					#script

##
# Created by Christopher Marriott with help and examples from 
# http://qntm.org/files/perl/perl.html.
##

my $nameVar = "Chris";				#variable called nameVar

my @nameArray = ("Bob",				#array var called nameArray
		 "chris",
		 "Frank",
		 "dave",        		#trailing comma is ok
		);

my %languages = ("Germany" => "German",		#These are hash varibles,
		 "Italy"   => "Italian",	#the first string is the key 
		 "France"  => "French", 	#the second string is the value
		);
		

print "sup ". $nameVar ."!\n";			#concatonate with .
print "Hello $nameVar!\n";			#or stick in " " with string 

print "Names: ". @nameArray ."\n"; 		#prints out number of elements in array
print "@nameArray\n";				#prints out array items

print $nameArray[0]."\n";       		#retrieve from array as a variable

print $nameArray[-3]."\n";			#retrieves from array starting at end

print "Array size: ". (scalar @nameArray)."\n"; #returns size of array 

print "Last element added: ". $#nameArray ."\n";#retruns index of last element added

print "Number of args given: ". @ARGV. "\n";  	#prints how many arguments are given on running program

print "Arguments given are: @ARGV\n";  		#Prints all of the arguments given

print "my \$variable\n"; 			#use \ to escape special chars
print "my \@array\n";		

print 'my $variable2'."\n";			#use ' to escape special chars
print 'my @array2'."\n";			#be careful & put \n in " "

print $languages{"Germany"}."\n";		#access the value stored in languages for the key "Germany"

my @languagesArray = %languages;		#can convert hash into an array
print "@languagesArray"."\n";			#order however is reversed

my %nameHash = @nameArray;			#reverse is also possible
print $nameHash{"Bob"}."\n";			#key value pairs are the values next to each other in the array

my @bones   = (("jaw", "skull"), "tibia");	#can join arrays together easily
my @fingers = ("thumb", "ring", "little");
my @parts   = (@bones, @fingers, ("foot"));	
print "@parts\n";


my $scalerLengthOfArray = @nameArray;		#will store the length of @nameArray

print $scalerLengthOfArray."\n";		#will print 4

print @nameArray,"\n";				#use comma to print contents of array with other values

my $colour = "green";				#normal variable assign
my $scalerRef = \$colour;			#reference to $colour address

print "Colour: ". $colour .", Scaler: ". $scalerRef. "\n";
print ${$scalerRef}."\n";			#this print out contents of ref

print $$scalerRef."\n";				#if no ambiguious no need for brackets


my @colours = ("green", "blue", "yellow");
my $coloursRef = \@colours;			#also works with arrays

print "Direct: ".$colours[0]."\n";				#direct access
print "Reference1: ".$$coloursRef[0]."\n";			#with reference
print "Reference2: ".$coloursRef -> [0]."\n";			#same 


my %atomicWeights = ("Hydrogen" => 1.008, "Helium" => 4.003, "Manganese" => 54.94);
my $hashRef = \%atomicWeights;

print $atomicWeights{"Helium"}."\n" ; # direct hash access
print ${ $hashRef }{"Helium"}."\n";  # use a reference to get to the hash
print $hashRef->{"Helium"}."\n";     # exactly the same thing - this is very common

my @anonArray = [ "anon1", "anon2"]; 				#this is an anonymous array

my $anonHash = {"peter" => "burke", "bruce" => "wayne"};

#print "anon array value 1: ".@anonArray[0]."\n anon hash value 1: ".%anonHash{"bruce"};			#the printed out value will be a reference to the anonymous data structure






















 
