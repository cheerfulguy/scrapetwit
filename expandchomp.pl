#! /usr/pkg/bin/perl -w
#! /usr/pkg/bin/curl

use strict;
use warnings;
use LWP::Simple;
use URI::Escape;
use XML::Simple;

#my @appnames = ("facebook-browser-for-iphone", "tweetie-2");

my @appnames = (
"eU9",
"YdP",
"g2v",
"g6O",
"Vhs",
"MYu",
"g6T",
"gAn",
"fnf",
"vBU",
"gA8",
"eUz",
"VCE",
"fin",
"O3U",
"Rdr",
"1cqD",
"Ws8",
"eRf",
"QU1",
"eQf",
"f4z",
"fvf",
"DYR",
"Pyu",
"176c",
"Ry6",
"1hdh",
"fK8",
"O55",
"fB6",
"fDQ",
"pMS",
"vAO",
"TuY",
"11xG",
"1lq8",
"1jmT",
"4F1",
"XzR",
"1OT",
"101E",
"g7O",
"qVa",
"16Aw",
"yCT",
"KyU",
"Yej",
"1jp7",
"1m9c",
"1ufU",
"1v0g",
"L2D",
"1hiz",
"1AyG",
"1vbQ",
"f1t",
"1m9M",
"16Au",
"1xsP",
"1rzn",
"aYA",
"czz",
"dZB",
"een",
"eMj",
"eQV",
"f5O",
"f9C",
"feq",
"fFV",
"fHa",
"frt",
"fxb",
"fqx",
"fzu",
"fQn",
"g70",
"gco",
"glW",
"gtx",
"rf5",
"tnb",
"DlU",
"DuR",
"EJn",
"H5A",
"Uil",
"14lx",
"14lx",
"1p1d",
"1C5h",
"1Ln2",
"1LBH",
"1NcD",
"fP8",
"fWD",
"pYK",
"rnB",
"ruj",
"wuh",
"wCk",
"zWS",
"B4c",
"Ecf",
"EOg",
"GhW",
"HCH",
"IE0",
"OR4",
"ODt",
"PAS",
"Qsr",
"RaU",
"QFH",
"Ryr",
"RzH",
"Yu1",
"137T",
"16Qp",
"19dh",
"19L9",
"1cEB",
"1d7c",
"1e5t",
"1jEV",
"1lwD",
"1ngx",
"1oW2",
"1p1d",
"1q6F",
"1qGa",
"1tp6",
"1tsI",
"1tYY",
"1uVZ",
"1v6l",
"1wmg",
"1wmA",
"1yqd",
"1CTX",
"1ETD",
"1hU",
"eRK",
"f5k",
"GhV",
"JCZ",
"KlO",
"Lhy",
"Ln1",
"Mej",
"Mwi",
"MYG",
"N5S",
"PwI",
"VoY",
"Ws9",
"WV8",
"XZd",
"11rp",
"11Op",
"1830",
"1aV9",
"1cEH",
"1cLm",
"1cu3",
"1cO1",
"1dpk",
"1eyE",
"1fTe",
"1gU6",
"1lTe",
"1mwt",
"1oIb",
"1pfE",
"1tIF",
"1uWv",
"1v6l",
"1viP",
"1wmx",
"1x4I",
"1yqd",
"1zsK",
"1KmT",
"KcN",
"1eCf",
"1uSj",
"gvp",
"Gn9",
"1A4c",
"1Abs",
"ZlO",
"2yS",
"2As",
"50p",
"axU",
"d08",
"d5n",
"cKy",
"gc1",
"iyi",
"wjq",
"1yKj",
"1IZf",
"1Mgi",
"1NK6",
"14x",
"cAT",
"f06",
"fzX",
"f9G",
"f9Q",
"f9Y",
"fa9",
"fab",
"fag",
"fap",
"fat",
"fax",
"faz",
"faU",
"faX",
"faZ",
"fb1",
"fb9",
"fbb",
"fbs",
"fbu",
"fbD",
"fL5",
"f5m",
"fse",
"fsG",
"faT",
"fbD",
"fbj",
"fbr",
"fbw",
"fL5",
"fse",
"fsG",
"fkf",
"fmL",
"fmV",
"gaQ",
"gbV",
"gpA",
"gu0",
"pOL",
"qU1",
"sfr",
"sfP",
"vt4",
"vFh",
"xAE",
"N4l",
"SZp",
"1cLk",
"1dY7",
"1qdJ",
"1KUe",
"1Lau",
"1M0E",
"1LTJ",
"1rt",
"4w2",
"f9M",
"faB",
"fbt",
"gqL",
"q0f",
"sVY",
"v9l",
"xzu",
"y41",
"z3d",
"MIa",
"OZ7",
"Q8j",
"QRn",
"QCw",
"Rxg",
"Rz1",
"Rzm",
"RBz",
"RCs",
"REM",
"RLr",
"Sqx",
"Uoa",
"12l3",
"136R",
"14cO",
"14oC",
"15tX",
"1a2b",
"1a7q",
"1dK9",
"1eCD",
"1fh9",
"1gLz",
"1iRC",
"1oWb",
"1pPa",
"1ukV",
"1uQd",
"1wCa",
"1xsI",
"1Hv9",
"f9B",
"fcO",
"fIu",
"fVC",
"tcg",
"vF9",
"yeO",
"HcW",
"ISk",
"KLk",
"Mis",
"Mqn",
"Q2o",
"QV3",
"RCP",
"Rxh",
"RqX",
"RqY",
"SIb",
"SZk",
"U2K",
"Uym",
"11Cf",
"14mB",
"17tC",
"18bd",
"1fkR",
"1gBa",
"1ivM",
"1iYO",
"1joT",
"1mPf",
"1nyU",
"1CyI",
"1JBn",
"13BG",
"1yAP"
);


my @testappnames = (
    "1yap","13BG"
);

open (MYFILE, '>>linklongurl.txt');

foreach my $appname (@appnames){


    my $encode = uri_escape("http://chomp.com/s/$appname");
    my $url = "http://api.longurl.org/v2/expand?url=$encode";

    my $ua = new LWP::UserAgent;

    my $req = new HTTP::Request GET => $url;
    my $res = $ua->request($req);

    my $xml = new XML::Simple (KeyAttr=>[]);

    my $data =$xml -> XMLin($res->content);
    my $post = $data ->{"long-url"};

# this script copied from http://pastie.org/pastes/750703

    print $post;
    print MYFILE $post . "\n";

}
 
close(MYFILE);
