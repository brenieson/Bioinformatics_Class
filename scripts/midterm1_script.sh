#!/bin/bash

#This code is used to create a new directory 'Midterm1' while already in the bioinformatics directory

mkdir Midterm1

#This code is what I used to move the file from the Midterm_Project directory (located in the  Bioinformatics directory)into the Midterm1 directory. The Midterm_Project directory is the directory in which i kept all my documentation for the project from the start.

mv Midterm_Project/kikkawai.fasta ./Midterm1/

#The following codes were used to move all the other FASTA files from their original location "Midterm_Project" directory, to the new designated location "Midterm1" directory

mv Midterm_Project/*.fasta ./Midterm1/

#To compare the different, sequences, we use the following lines of code to get t
he sequnce length of each species

grep -v ">" dingo.fasta | wc -c
grep -v ">" dog.fasta | wc -c
grep -v ">" fruit_fly.fasta | wc -c
grep -v ">" giant_panda.fasta | wc -c
grep -v ">" house_mouse.fasta | wc -c
grep -v ">" human.fasta | wc -c
grep -v ">" kikkawai.fasta | wc -c
grep -v ">" rhesus_monkey.fasta | wc -c
grep -v ">" zebrafish.fasta | wc -c

#To compare the species sequnces using nucleotide composition, the following lines of codes are used

tail -n +2 dingo.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 dog.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 fruit_fly.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 giant_panda.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 house_mouse.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 human.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 kikkawai.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 rhesus_monkey.fasta | grep -o '[ATCG]' | sort | uniq -c
tail -n +2 zebrafish.fasta | grep -o '[ATCG]' | sort | uniq -c


#To combine all the 9 different sequences into a single FASTA file, the following code is used

cat *.fasta >> abcd1_sequences.fasta

