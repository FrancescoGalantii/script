#!/bin/bash

LOG_DIR=/var/log
# Variabile che definisce la directory dei log del sistema.

ROOT_UID=0
#l'UID (User ID) 0 appartiene all'utente root. Questa variabile memorizza il valore 0 per verificare i permessi dell'utente.

LINES=50
# Il numero predefinito di righe del file `messages` da salvare, se non viene specificato diversamente tramite argomenti a riga di comando.

E_XCD=86
# Codice di errore utilizzato se lo script non riesce a cambiare directory.

E_NOTROOT=87
# Codice di errore utilizzato se lo script non viene eseguito da root.
if [ "$UID" -ne "$ROOT_UID" ] 
then
  echo "Must be root to run this script." 
  exit $E_NOTROOT 
fi
# Verifica che l'utente che esegue lo script abbia privilegi di root (UID=0).
# Se l'UID non è 0, stampa un messaggio di errore e termina con il codice di errore $E_NOTROOT (87).
if [ -n "$1" ]
then
  lines=$1
else
  lines=$LINES # Valore predefinito se non viene passato un argomento.
fi
# Se viene fornito un argomento (il numero di righe da salvare), lo usa come valore per la variabile `lines`.
# In caso contrario, utilizza il valore predefinito di 50 righe.
#    E_WRONGARGS=85
#    case "$1" in
#    ""      ) lines=50;;
#    *[!0-9]*) echo "Usage: `basename $0` lines-to-cleanup"; exit $E_WRONGARGS;;
#    *       ) lines=$1;;
#    esac
# Suggerimento avanzato che utilizza un `case` per controllare se l'argomento fornito è un numero. Se no, fornisce un errore.
cd $LOG_DIR

if [ `pwd` != "$LOG_DIR" ]
then
  echo "Can't change to $LOG_DIR."
  exit $E_XCD
fi
# Cambia la directory corrente in `/var/log`. 
# Se non riesce, o la directory corrente non è esattamente quella, stampa un messaggio di errore e termina con il codice di errore $E_XCD (86).
tail -n $lines messages > mesg.temp
mv mesg.temp messages
# Il comando `tail` estrae le ultime `$lines` righe dal file `messages` e le salva in un file temporaneo `mesg.temp`.
# Poi rinomina `mesg.temp` come `messages`, sovrascrivendo il file originale.
cat /dev/null > wtmp
# Questo comando svuota completamente il file `wtmp`, che tiene traccia degli accessi utente.
# È simile a utilizzare `: > wtmp` o `> wtmp`, che hanno lo stesso effetto.




