#!/bin/bash
#controllare se un utente esiste e mostrare un messaggio di creazione account con successso

#variabili 
NEWUSERFILE =  /tmp/support/newusers

case $OPTION in 

    '')
        ;;

    -v)
        VERBOSE = y;
        ;;
    
    -h)
        echo "Usage : $0 [-h|-v]"
        echo
        exit
        ;;
    
    *)
        echo "Usage : $0 [-h|-v]"
        echo
        exit 1  #messaggio di errore 
        ;;

esac

#controllo duplicati