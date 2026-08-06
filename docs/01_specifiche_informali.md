# Specifiche Informali

Si richiede lo sviluppo di un'applicazione web che consenta di semplificare e digitalizzare le attività di gestione del magazzino, del catalogo prodotti, dei clienti e degli ordini. Il sistema dovrà permettere di monitorare in tempo reale la disponibilità dei prodotti, registrare tutti i movimenti di magazzino e fornire strumenti di consultazione sia al personale interno sia ai clienti dell'azienda.

Gli utenti del sistema sono: Amministratore, Magazziniere, Venditore e Cliente.

Ogni utente interno, una volta creato dall'amministratore, riceve uno **username** ed una **password** che gli consentono di autenticarsi all'interno del sistema. 

Dopo l'accesso può visualizzare esclusivamente le funzionalità previste dal proprio ruolo, consultare il proprio profilo personale e modificare alcune informazioni personali, quali indirizzo e-mail, password ed eventuale immagine del profilo. 

L'amministratore è responsabile della gestione degli utenti interni e può creare, modificare, sospendere o eliminare gli account del personale.

Il sistema deve consentire la gestione del catalogo prodotti, dove ogni prodotto è identificato da: 

1. id univoco 
2. nome 
3. descrizione 
4. categoria 
5. prezzo unitario  
6. quantità disponibile in magazzino 
7. quantità minima di sicurezza 
8. fornitore 
9. stato del prodotto (attivo o non attivo).

I prodotti non più commercializzati possono essere disattivati senza essere eliminati dal sistema, così da preservare lo storico degli ordini nei quali sono presenti.

!!! L'amministratore ed il magazziniere possono inserire nuovi prodotti, modificarne le informazioni e consultarne le giacenze !!!

Per ogni prodotto il sistema deve mantenere traccia di tutte le variazioni della quantità disponibile. Ogni operazione di carico, scarico o rettifica genera automaticamente un movimento di magazzino caratterizzato da: 

1. id univoco dell’operazione
2. prodotto interessato
3. tipo di movimento
4. quantità movimentata
5. data e ora dell'operazione
6. utente che ha effettuato la registrazione
7. eventuali note.

Il sistema aggiorna automaticamente la giacenza del prodotto sulla base dei movimenti registrati e deve impedire che la quantità disponibile assuma valori negativi. Lo storico dei movimenti deve essere consultabile dal personale autorizzato.

Un cliente può registrarsi autonomamente fornendo: 

1. nome
2. cognome
3. indirizzo e-mail
4. numero di telefono
5. indirizzo di spedizione
6. username
7. password. 

Una volta autenticato può accedere al proprio profilo personale, modificarne i dati e consultare lo storico degli ordini effettuati.

Un cliente registrato ed autenticato può effettuare un nuovo ordine selezionando uno o più prodotti presenti nel catalogo. Per ciascun prodotto viene richiesta la quantità desiderata.

Prima della conferma dell'ordine, il sistema verifica automaticamente la disponibilità delle quantità richieste. Nel caso in cui uno o più prodotti non siano disponibili, il sistema informa il cliente impedendo il completamento dell'ordine.

Una volta confermato, il sistema genera un nuovo ordine associandogli un identificativo numerico univoco. Ogni ordine memorizza: 

1. cliente
2. data di creazione
3. elenco dei prodotti ordinati
4. quantità di ciascun prodotto
5. prezzo unitario al momento dell'acquisto
6. importo complessivo
7. stato dell'ordine.

Il personale commerciale dispone di un'interfaccia dedicata nella quale può visualizzare gli ordini inseriti dai clienti, consultarne i dettagli ed aggiornarne lo stato di avanzamento. 

L'ordine può attraversare differenti stati durante il proprio ciclo di vita (creato, confermato, in preparazione, spedito, consegnato oppure annullato). 

Il cliente può in qualsiasi momento consultare lo stato dei propri ordini.

L'amministratore dispone di una sezione dedicata alle statistiche ed al monitoraggio del magazzino. In particolare deve poter:

1. Visualizzare l'elenco dei prodotti con quantità inferiore alla soglia minima
2. Consultare il valore economico complessivo delle merci presenti in magazzino
3. Ottenere l'elenco degli ordini effettuati in un determinato intervallo temporale
4. Visualizzare il totale degli incassi relativi agli ordini completati
5. Consultare l'elenco dei clienti registrati
6. Visualizzare i prodotti maggiormente venduti.