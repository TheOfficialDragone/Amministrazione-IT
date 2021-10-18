#!/bin/bash
#@author: Rocco Carpi
#

#variables
fileUtente = /home/esercizi/esercitazione3

#loop for read and split data
for ENTRY in $(cat $fileUtente); do
    #split data when character is :
    userFirstName = $(echo $ENTRY | cut -d: -f1) 
    userLastName = $(echo $ENTRY | cut -d: -f2)
    tail = $(echo $ENTRY | cut -d: -f4)

    #transofrm first character to upper case
    #cut -c 1 | tr 'a-z' 'A-Z'

    #concatenate first and last name for create userName
    userName = $userFirstName$userLastName
    
    #create a new account
    useradd userName -c "$userFirstName $userLastName"

    #number of strings ending with :1
    #grep -c :1$
done


    