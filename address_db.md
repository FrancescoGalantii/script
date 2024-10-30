#SPIEGAZIONE DELLO SCRIPT ADDRESS_DB 

Con declare combinato all'opzione -A si dichiara un array associativo, in un array associativo le chiavi non devono essere numeri interi bensi possono essere stringhe, cio consente di associare chiavi coppia valore(es indirizzo=nome) 

infatti nello step dopo vengono memorizzati tre indirizzi nell'array associativo [address] con un nome ciascuno (Charles, john, Wilma) che fungono da chiavi ai quali vengono associati i rispettivi indirizzi

Nell'echo seguente viene utilizzata la sintassi ${address[Charles]} per stampare l'indirizzo della coppia chiave valore e si fa la stessa cosa negli echo successivi con le chiavi coppie valore ${address[Wilma]} e ${address[john]} 

Nell'echo dopo ancora invece con l'espressione ${!address[*]} vengono stampate tutte le chiavi presenti nell'array associativo quindi l'output di questo echo saranno tutti e tre gli indirizzi.
