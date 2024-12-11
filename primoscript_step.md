# SPIEGAZIONE DEL PRIMO SCRIPT DELLO STEP 8 primoscript_step.sh

nel primo loop il ciclo if verifica, attraverso l'UID se l'utente che sta eseguendo lo script sia root oppure un semplice utente ordinario.

    ROOT_UID=0  
 
    if [ "$UID" -eq "$ROOT_UID" ]  
    then
      echo "You are root."
    else
      echo "You are just an ordinary user (but mom loves you just the same)."
    fi
 
    exit 0

Il secondo ciclo fa la stessa cosa ma verificando lo username al posto dello UID.

    ROOTUSER_NAME=root
 
    username=`id -nu`              # Or...   username=`whoami`
    if [ "$username" = "$ROOTUSER_NAME" ]
    then
      echo "Rooty, toot, toot. You are root."
    else
      echo "You are just a regular fella."
    fi
