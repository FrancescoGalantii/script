# SPIEGAZIONE CODICE IN MERITO ALLO SCRIPT positional_parameters.sh

la variabile dichiarata come MINPARAMS alla quale è stato assegnato il valore 10 rappresenta il numero minimo di parametri richiesti.

Il primo echo mostra il nome dello script con il relativo percorso completo, mentre il secondo stampa solo il nome dello script

per ciascun parametro lo script, più precisamente il loop if, verifica se il parametro esiste e usa -n per controllare se la variabile è vuota. Questa struttura viene ripetuta fino al decimo parametro racchiuso tra {} --> ${10} 

l'echo dopo questo ciclo stampa tutti i parametri passati utilizzando $*

il secondo ciclo if verifica se il numero di parametri $# è inferiore a MINPARAMS cioè 10. 
