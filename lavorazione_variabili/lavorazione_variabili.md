# SPIEGAZIONE DELLO SCRIPT lavorazione_variabili.sh

il primo echo dopo il quale non segue nulla viene eseguito per migliorare la leggibilità dell'output.

Successivamente viene assognato alla variabile a il valore di 879 seguito da un echo che stampa il valore della variabile utilizzando `$a`.

    a=879
    echo "The value of \"a\" is $a."

Il comando `let` viene utilizzato per assegnare ad a il prodotto di un'operazione aritmetica (16+5=21) stampando nuovamente il valore di a tramite un echo che utilizza `$`.

    let a=16+5
    echo "The value of \"a\" is now $a."

Nel ciclo for vengono assegnati ad a vari valori 7,8,9,11 (for a in 7 8 9 11), all'interno del ciclo il valore corrente di a viene stampato senza mai andare a capo grazie all'opzione -n presente all'interno dell'echo precedente al ciclo avremo cosi un output che sarà: " values of "a" is 7 8 9 11"

    echo -n "Values of \"a\" in the loop are: "
    for a in 7 8 9 11
    do
      echo -n "$a "
    done

All'interno di questo script sono presenti numerosi echo che stampano una stringa vuota al fine di migliorare al massimo la leggibilità

Successivamente con echo l'utente registra un nuovo valore per a che viene letto e assegnato tramite il comando read e verificato con l'ultimo echo che mi stampa l'ultimo valore di a. 
