#! /usr/pkg/bin/perl -w
#! /usr/pkg/bin/curl

use strict;
use warnings;
use LWP::Simple;

my $count = 0;

open (MYFILE, '>>twitterchompgen.txt');

while ($count < 1174){

    my $url = "http://chomp.com/q/search?q=tweet&&platform=iphone&p=" . $count;
    my $content = get($url);
    die "could not get" unless defined $content;
    my $match = $content;
    #print MYFILE $match . "\n";
    $count=$count+9;
    #print $content;

    ''=~/^(.*?)$/;

    my $count2 = 1;

    while ($match =~ m{\%2Fa\%2F(.*?)\%2F}sg){
	if($count2 % 2 == 1){
        print MYFILE $1;	
	print MYFILE "\n";
        print $1;
        print "\n";
    }
        $count2++;
        #print "\n++++" . $count2 . "+++++\n";
    }; 

    print "---\n";
    ''=~/^(.*?)$/;

}

close(MYFILE);
