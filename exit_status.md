# SPIEGAZIONE DELLO SCRIPT exit_status.sh

Il primo echo stampa a schermo hello quindi il suo codice di uscita sarà 0.
l'echo successivo contiene $?, una variabile speciale in bash che contiene il codice di uscita del comando precedente quindi in questo caso 0.

il comando lskdf non esiste nel sistema ciò significa che il comando non verrà eseguito correttamente
la variabile $? presente nell'echo dopo quindi non stamperà 0 come prima ma 127 che in bash significa comando non trovato.

In sintesi questo script mostra come i comandi una volta eseguiti restituiscano un codice d'uscita dove 0 indica successo mentre qualsiasi altro codice errore

Posso anche personalizzare un codice di uscita come con il comando exit a cui viene assegnato codice 113.
