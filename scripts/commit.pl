#!/usr/bin/perl

my $filesChanged =`git status -s --untracked-files=no`;
my $trelloMsg = "https://trello.com/c/bVc4dkoV";

printf("filesChanged: %s",$filesChanged);
my $command = sprintf("git commit -a -m \"%s\"",
    sprintf("trello card: %s\nfiles changed:\n%s",$trelloMsg,$filesChanged));

#print $command;
system($command);
