# SPIEGAZIONE CODICE IN MERITO ALLO SCRIPT positional_parameters.sh

la variabile dichiarata come `MINPARAMS` alla quale è stato assegnato il valore 10 rappresenta il numero minimo di parametri richiesti.

    MINPARAMS=10

Il primo echo mostra il nome dello script con il relativo percorso completo, mentre il secondo stampa solo il nome dello script

    echo "The name of this script is \"$0\"."
    echo "The name of this script is \"`basename $0`\"."

per ciascun parametro lo script, più precisamente il loop if, verifica se il parametro esiste e usa -n per controllare se la variabile è vuota. Questa struttura viene ripetuta fino al decimo parametro racchiuso tra {} --> ${10} 

    if [ -n "$1" ]              
    then
     echo "Parameter #1 is $1"  # Need quotes to escape #
    fi
 
    if [ -n "$2" ]
    then
     echo "Parameter #2 is $2"
    fi
 
    if [ -n "$3" ]
    then
     echo "Parameter #3 is $3"
    fi
 
    if [ -n "${10}" ] 
    then
     echo "Parameter #10 is ${10}"
    fi
 
    echo "All the command-line parameters are: "$*""

l'echo dopo questo ciclo stampa tutti i parametri passati utilizzando $*

     echo "All the command-line parameters are: "$*""

il secondo ciclo if verifica se il numero di parametri $# è inferiore a MINPARAMS cioè 10. 

    if [ $# -lt "$MINPARAMS" ]
    then
      echo
      echo "This script needs at least $MINPARAMS command-line arguments!"
    fi 
