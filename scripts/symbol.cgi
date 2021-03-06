#!/usr/bin/perl
# -*- perl -*-

open(STDERR, ">&STDOUT");
$| = 1;

if (0) {
    print "Content-type: text/plain\n\n";
    for $k (sort keys %ENV) {
	print "$k = $ENV{$k}\n";
    }
    print "PWD: ", `pwd`;
    exit 0;
}

open(STDERR, ">&STDOUT");

$| = 1;

$file = $ENV{'PATH_TRANSLATED'};
$symbol = $ENV{'PATH_INFO'};
$symbol =~ s@.*/@@;
$docroot = $ENV{'DOCUMENT_ROOT'};

if ( ! -f $file ) {
    print "Content-type: text/html\n\n";
    $file =~ s@$docroot@@;
    print "File <tt>$file</tt> not found.\n";
    exit 0;
}

$query = $ENV{'QUERY_STRING'};

if ($query eq "png") {
    &make_png();
} elsif ($query eq "dl") {
    &download(1);
} elsif ($query eq "view") {
    &download(0);
} elsif ($query eq "dlattr") {
    &download_attr();
} else {
    &make_html();
}

sub make_html {
    print "Content-type: text/html\n\n";
    ($filesize,$filetime) = (stat($file))[7,9];
    if ($filesize > 100000) {
	$filesize = sprintf("%.1f Mb", $filesize/1000000.0);
    } elsif ($filesize > 900) {
	$filesize = sprintf("%.1f Kb", $filesize/1000.0);
    } else {
	$filesize = "$filesize bytes";
    }
    $footdate = scalar localtime $filetime;
    open(HTML, "symbol.html");
    while (<HTML>) {
	s/SYMBOL/$symbol/g;
	s/<fsize>/$filesize/g;
	s/<footsize>/$filesize/g;
	s/<footdate>/$footdate/g;
	if (/NOTES_HERE/) {
	    open(F, $file);
	    while (<F>) {
		if (/^T .* (\d+)/) {
		    $ntext = $1;
		    for ($tn=0; $tn<$ntext; $tn++) {
			$_ = <F>;
			next unless /^(author|email|use-license|dist-license|description|documentation)=/;
			s/=/: /;
			s/&/&amp;/;
			s/</&lt;/;
			s/>/&gt;/;
			s@email: (.*)@email: <a href="mailto:$1">$1</a>@;
			s@(http://\S+)@<a href="$1">$1</a>@;
			if (/license: (\S*)/) {
			    $license = $1;
			    if ( -f "$docroot/licenses/$license.html") {
				s@license: (\S*)@license: <a href="/licenses/$license.html">$1</a>@;
			    }
			}
			print;
			print "<br>\n";
		    }
		}
	    }
	    close F;
	} else {
	    print;
	}
    }
    $year = (localtime($filetime))[5] + 1900;
    open(TR, "../www/trailer.html");
    while (<TR>) {
	s@<!--#config timefmt="[^>]*" -->@@;
	s@<!--#echo var="LAST_MODIFIED" -->@$year@;
	print;
    }
    exit 0;
}

sub download {
    my ($savetofile) = @_;
    print "Content-type: text/plain\n";
    print "Content-Disposition: attachment; filename=$symbol\n" if $savetofile;
    ($filesize,$filetime) = (stat($file))[7,9];
    print "Content-size: $filesize\n";
    print "\n";
    open(F, $file);
    print while <F>;
    close F;
    exit 0;
}

sub download_attr {
    print "Content-type: text/plain\n";
    print "Content-Disposition: attachment; filename=$symbol\n";
    ($filesize,$filetime) = (stat($file))[7,9];
    $outline = "T 100 100 0 1 0 0 0 0 1\ngedasymbols::url=http://".$ENV{'HTTP_HOST'}.$ENV{'PATH_INFO'}."\n";
    $filesize += length($outline);
    print "Content-size: $filesize\n";
    print "\n";
    open(F, $file);
    while (<F>) {
        print;
        if (/^v /) { print $outline; }
    }
    close F;
    exit 0;
}

sub cachefile {
    my ($name) = @_;
    $name =~ s@$docroot/@@;
    $name =~ s@/@_@g;
    $name = "cache/$name";
    return $name;
}

sub make_png {

    $eps = "/tmp/symbol$$.eps";
    $png = &cachefile($file);

    if (! -f $png || -M $png > -M $file) {
	system "./sym2eps $file $eps";
	system "./eps2png -o $png -resolution 100 $eps";
	unlink $eps;
    }

    $size = (stat($png))[7];

    print "Content-type: image/png\n";
    print "Content-length: $size\n";
    print "\n";
    open (PNG, $png);
    print $v while read(PNG, $v, 4096) > 0;
    close PNG;

    exit 0;
}
