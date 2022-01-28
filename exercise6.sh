#bin/bash!

#controllo che mi sia passato qualcosa 
if [[ $# -eq 0 ]];
    then echo "Usage:/exam/exercise6/exercise6.sh <file>"
    exit -1
fi
#controllo se è un file 
if [[ ! -f "$1" ]];
    then  echo “File not found”
    exit -2
fi

#ritorno il formato del file 
echo $(file $1)
exit 0
