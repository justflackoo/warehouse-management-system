# Decisioni progettuali

1. **Gestione dei prodotti:** la gestione dell'anagrafica dei prodotti e delle relative giacenze è affidata esclusivamente al Magazziniere. L'Amministratore non interviene nelle operazioni ordinarie di gestione del magazzino, ma mantiene le proprie responsabilità amministrative e di supervisione.
2. **Gestione delle giacenze: l**a gestione delle giacenze nella versione 1.0 è semplificata
    
    La quantità disponibile di un prodotto può essere impostata e modificata dal Magazziniere nell'ambito della gestione dell'anagrafica del prodotto. 
    
    In seguito alla conferma di un ordine, il sistema decrementa automaticamente la quantità disponibile dei prodotti ordinati. In una versione successiva potranno essere introdotte le operazioni di carico, scarico e rettifica, con relativa registrazione e consultazione dello storico.

3. **Creazione di un ordine**
    Quando creo un ordine, il sistema permette questa operazione soltanto se l'utente autenticato ha ruolo = 'Cliente'.
