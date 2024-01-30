#!/bin/bash

#This is my script for the fastq file "ERR020236_1.fastq" for PART 1

#This line of code unzips the file "ERR020236_1.fastq.gz"
gunzip ERR020236_1.fastq.gz

#This display the files in the long format and the size of the file is shown as well
ls -l

#Displays the number of sequences found in the fastq file "ERR020236_1.fastq"
awk '(NR%4==2)' ERR020236_1.fastq | wc -l

#Counts the number of "A"s, "T"s, "C"s and "G"s found in sequence 59
awk '(NR%4==2)' ERR020236_1.fastq | awk '(NR==59)' | grep "A" | wc -l
awk '(NR%4==2)' ERR020236_1.fastq | awk '(NR==59)' | grep "T" | wc -l
awk '(NR%4==2)' ERR020236_1.fastq | awk '(NR==59)' | grep "C" | wc -l
awk '(NR%4==2)' ERR020236_1.fastq | awk '(NR==59)' | grep "G" | wc -l

