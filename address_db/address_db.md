# SPIEGAZIONE DELLO SCRIPT ADDRESS_DB 

Con declare combinato all'opzione `-A` si dichiara un `array associativo`, in un `array associativo` le chiavi non devono essere numeri interi bensi possono essere stringhe, cio consente di associare chiavi coppia valore(es indirizzo=nome) 
  
    declare -A address

infatti nello step dopo vengono memorizzati tre indirizzi nell'array associativo [address] con un nome ciascuno (Charles, john, Wilma) che fungono da *chiavi* ai quali vengono associati i rispettivi indirizzi

    address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"
    address[John]="202 E. 3rd St., New York, NY 10009"
    address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"

Negli echo seguente viene utilizzata la sintassi 

    ${address[Name]} 
per stampare l'indirizzo della coppia chiave valore

    address[Charles]="414 W. 10th Ave., Baltimore, MD 21236"
    address[John]="202 E. 3rd St., New York, NY 10009"
    address[Wilma]="1854 Vermont Ave, Los Angeles, CA 90023"

Nell'echo finale invece con l'espressione --> `${!address[*]}`

vengono stampate tutte le chiavi presenti nell'array associativo quindi l'output di questo echo saranno tutti e tre gli indirizzi.
