#!/bin/bash 

FILE=/home/exam3/exercise8/Directory.txt

for Directory in $(cat $FILE); do
 mkdir -p -v $Directory 
 if [ $? != 0 ]; then 
    echo "la cartella esiste gia"
 fi
done

