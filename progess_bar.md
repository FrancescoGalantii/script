# SPIEGAZIONE CODICE SCRIPT progress_bar.sh

Interval=1 definisce un intervallo di 1 secondo che verrà usato per la barra di progresso,
il secondo interval invece con la sintassi long_interval=10 definisce un intervallo di 10 secondi per simulare un processo a lunga durata 

Con il comando trap si setta un uscita la dove lo script ricevesse il segnale passato(SIGUSR1)

con il comando sleep si setta invece una pausa di 1 secondo tra un intervallo e un altro.

Il ciclo while invece stampa un punto a intervalli regolari (ogni secondo) creando cosi la barra di progresso e continua a farlo finchè non incontra il segnale SIGUSR1.

La & fa si che il while venga eseguito in background separatamente dal resto dello script.

Il pid=$! salva il pid del processo in background, questo servirà successivamente per poter terminare il processo.

Il trap successivo definisce cosa fare quando si termina lo script:
-->echo stampa un punto esclamativo
-->kill -USR1 $pid; invia il segnale SIGUSR1 al processo in background per fermarlo
-->wait $pid; che attende che il processo termini correttamente.

nell'ultimo step è presente la simulazione di un processo a lungo termine che:
-->echo;stamperà un messaggio senza andare a capo(-n) dove avviserà che sta per partire un processo a lungo termine
-->sleep $long_interval; verrà effettuata una pausa di 10 secondi a simulare un processo a lungo termine
-->echo 'finished'; che stamperà in output la fine del processo. 
