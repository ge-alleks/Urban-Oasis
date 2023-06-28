#!/usr/bin/perl 
# Urban Oasis

use strict; 
use warnings; 

# Global Variables 
my $usename;
my $password;

# Main Program 

# Welcome Message 
print "Welcome to the Urban Oasis!\n\n"; 

# Get Login Details 
print "Please enter your username:\n"; 
$username = <STDIN>; 

print "Please enter your password:\n"; 
$password = <STDIN>; 

# Start Urban Oasis 
print "Welcome! You are now in the Urban Oasis!\n\n";

# Generate Menu 
print "Please select an option from the menu:\n";
print "1 - Explore\n";
print "2 - Marketplace\n";
print "3 - Quests\n";
print "4 - Log Out\n";

my $menuChoice = <STDIN>; 

# Explore 
if($menuChoice == 1) { 
	print "\nLet's explore the Urban Oasis!\n"; 
	print "Where would you like to visit?\n"; 
	print "1 - Mountains\n";
	print "2 - Beach\n";
	print "3 - Forest\n";
	print "4 - City\n";
	
	my $locationChoice = <STDIN>; 
	
	if($locationChoice == 1) { 
		print "Welcome to the Mountains! Enjoy your stay!\n"; 
	} elsif ($locationChoice == 2) { 
		print "Welcome to the Beach! Enjoy your stay!\n";
	} elsif ($locationChoice == 3) { 
		print "Welcome to the Forest! Enjoy your stay!\n";
	} elsif ($locationChoice == 4) { 
		print "Welcome to the City! Enjoy your stay!\n";
	}
	
# Marketplace 
} elsif ($menuChoice == 2) { 
	print "\nWelcome to the Marketplace! What would you like to do?\n"; 
	print "1 - Buy Items\n";
	print "2 - Sell Items\n";
	print "3 - Trade Items\n";
	
	my $marketChoice = <STDIN>; 
	
	if($marketChoice == 1) { 
		print "Welcome to the Item Store! What would you like to buy?\n"; 
	} elsif ($marketChoice == 2) { 
		print "Welcome to the Item Store! What would you like to sell?\n";
	} elsif ($marketChoice == 3) { 
		print "Welcome to the Item Store! What would you like to trade?\n";
	}
	
# Quests 
} elsif ($menuChoice == 3) { 
	print "\nWelcome to the Quests page! What would you like to do?\n"; 
	print "1 - View Quests\n";
	print "2 - Accept Quest\n";
	print "3 - Abandon Quest\n";
	
	my $questChoice = <STDIN>; 
	
	if($questChoice == 1) { 
		print "Welcome to the Quest List! Here are the Available Quests:\n"; 
	} elsif ($questChoice == 2) { 
		print "Welcome to the Quest List! What quest would you like to accept?\n";
	} elsif ($questChoice == 3) { 
		print "Welcome to the Quest List! What quest would you like to abandon?\n";
	}
	
# Log Out 
} elsif ($menuChoice == 4) { 
	print "\nYou have been logged out of the Urban Oasis. See you next time!\n"; 
}