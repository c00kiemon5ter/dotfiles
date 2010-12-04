use Irssi;
use strict;
use IO::Handle; # for (auto)flush
use Fcntl; # for sysopen
use vars qw($VERSION %IRSSI);
$VERSION = '0.1';
%IRSSI = (
	authors     => 'Romain Bignon',
	contact     => 'romain@peerfuse.org',
	name        => 'im_cacacam',
	description => 'draw cacacam',
	license     => 'GPLv2',
	url         => 'http://minbif.im',
	changed     => '2009-10-03',
);

my $caca_width = 40;
my $screen_resizing = 0;
my @nicklist=();
my ($height, $irssi_width);

sub cmd_screen_start {
	if (!defined($ENV{'STY'})) {
		Irssi::print 'screen not detected, screen mode only works inside screen';
		return;
	}
	#$mode = $SCREEN;
	#Irssi::signal_add_last('gui print text finished', \&sig_gui_print_text_finished);
	#Irssi::signal_add_last('gui page scrolled', \&sig_page_scrolled);
	Irssi::signal_add('terminal resized', \&sig_terminal_resized);
	screen_size();
	draw_cacacam();
}

sub screen_stop {
	#$mode = $OFF;
	#Irssi::signal_remove('gui print text finished', \&sig_gui_print_text_finished);
	#Irssi::signal_remove('gui page scrolled', \&sig_page_scrolled);
	Irssi::signal_remove('terminal resized', \&sig_terminal_resized);
	system 'screen -x '.$ENV{'STY'}.' -X fit';
}

sub screen_size {
	$screen_resizing = 1;
	# fit screen
	system 'screen -x '.$ENV{'STY'}.' -X fit';
	# get size (from perldoc -q size)
	my ($winsize, $row, $col, $xpixel, $ypixel);
	eval 'use Term::ReadKey; ($col, $row, $xpixel, $ypixel) = GetTerminalSize';
	#	require Term::ReadKey 'GetTerminalSize';
	#	($col, $row, $xpixel, $ypixel) = Term::ReadKey::GetTerminalSize;
	#};
	if ($@) { # no Term::ReadKey, try the ugly way
		eval {
			require 'sys/ioctl.ph';
			# without this reloading doesn't work. workaround for some unknown bug
			do 'asm/ioctls.ph';
		};

		# ugly way not working, let's try something uglier, the dg-hack(tm) (constant for linux only?)
		if($@) { no strict 'refs'; *TIOCGWINSZ = sub { return 0x5413 } }

		unless (defined &TIOCGWINSZ) {
			die "Term::ReadKey not found, and ioctl 'workaround' failed. Install the Term::ReadKey perl module to use screen mode.\n";
		}
		open(TTY, "+</dev/tty") or die "No tty: $!";
		unless (ioctl(TTY, &TIOCGWINSZ, $winsize='')) {
			die "Term::ReadKey not found, and ioctl 'workaround' failed ($!). Install the Term::ReadKey perl module to use screen mode.\n";
		}
		close(TTY);
		($row, $col, $xpixel, $ypixel) = unpack('S4', $winsize);
	}

	# set screen width
	$irssi_width = $col-$caca_width-1;
	$height = $row-1;

	# on some recent systems, "screen -X fit; screen -X width -w 50" doesn't work, needs a sleep in between the 2 commands
	# so we wait a second before setting the width
	Irssi::timeout_add_once(1000, sub {
		my ($new_irssi_width) = @_;
		system 'screen -x '.$ENV{'STY'}.' -X width -w ' . $new_irssi_width;
		# and then we wait another second for the resizing, and then redraw.
		Irssi::timeout_add_once(1000,sub {$screen_resizing = 0; draw_cacacam()}, []);
	}, $irssi_width);
}

sub sig_terminal_resized {
	if ($screen_resizing) {
		return;
	}
	$screen_resizing = 1;
	Irssi::timeout_add_once(1000,\&screen_size,[]);
}


sub cacacam_write_start {
	print STDERR "\033P\033[s\033\\"; # save cursor
}

sub cacacam_write_end {
	print STDERR "\033P\033[u\033\\"; # restore cursor
}

sub cacacam_write_line {
	my ($line, $data) = @_;
	print STDERR "\033P\033[" . ($line+1) . ';'. ($irssi_width+1) .'H' . "\033[m" . $data . "\033\\";
}

sub draw_cacacam
{
	my $nick = Irssi::active_win();

	my $i = find_nick($nick->get_active_name());
	if($i < 0)
	{
		return;
	}

	my $n = @nicklist[$i];
	cacacam_write_start();
	my $line = 1;
	for (my $i=0;$line < $height && $i < $n->{'buffer'}; $i++) {
		cacacam_write_line($line++, $n->{'buffer'}[$i]);
	}
	cacacam_write_end();
}

sub find_nick {
	my ($nick) = @_;
	for (my $i=0;$i < @nicklist; $i++) {
		if ($nicklist[$i]->{'nick'} eq $nick) {
			return $i;
		}
	}
	return -1;
}

# insert nick(as hash) into nicklist
# pre: cmp has to be calculated
sub insert_nick {
	my ($nick) = @_;
	push @nicklist, $nick;
}

# remove nick(as nr) from nicklist
sub remove_nick {
	my ($nr) = @_;
	splice @nicklist, $nr, 1;
}

sub dccinfoline
{
	my ($server, $data) = @_;

	my $nick;
	my $i = find_nick($server->{nick});
	if($i < 0)
	{
		$nick = {'nick' => $server->{nick}, 'i' => 0, 'buffer' => ()};
		insert_nick($nick);
	}
	else
	{
		$nick = @nicklist[$i];
	}

	$nick->{'buffer'}[$nick->{'i'}++] = $data;
	if($nick->{'i'} >= 20)
	{
		$nick->{'i'} = 0;
		draw_cacacam();
	}
}

Irssi::signal_add_last('window item changed', \&draw_cacacam);
Irssi::signal_add_last('window changed', \&draw_cacacam);
Irssi::signal_add("dcc chat message","dccinfoline");


cmd_screen_start();
