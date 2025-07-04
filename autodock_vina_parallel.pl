#!/usr/bin/perl

open(FILE, "list.txt");								


my @childs=();

my $maxproc=10;
my $numproc=0;
while ($line, "FILE") {

chomp $line;
$basename=split (".pdbqt",$line);

 system "mkdir -p $basename";


     if(($pid=fork()) == 0)
        {	print "vina --config conf.txt --ligand $line --out $basename/$basename.pdbqt --log $basename/$basename.log\n";
                system("vina --config conf.txt --ligand $line --out $basename/$basename.pdbqt --log $basename/$basename.log");
                exit 0;
        }

        push(@childs, $pid);
        $numproc++;

        while($numproc >= $maxproc)
        {
                waitpid(shift(@childs), 0);
                $numproc--;
        }
}



while($k=shift(@childs))
{
        waitpid($k, 0);
}

print "Docking finished\n check the files\n";



