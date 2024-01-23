#!/bin/bash

#This is my fruits script!

#Displays The number of rows in fruits.txt
cat fruits.txt | wc -l

#Displays the Number of apples sold on Day 1
cat fruits.txt | cut -f1 | grep "apple" -c -i

#Displays the Number of fruits sold on Day 2
cat fruits.txt | cut -f2 | grep -v "Day2" -c -i

