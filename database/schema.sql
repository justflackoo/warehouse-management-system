CREATE TABLE utente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(32) NOT NULL,
    cognome VARCHAR(32) NOT NULL,
    email VARCHAR(64) NOT NULL UNIQUE,
    telefono VARCHAR(16) NOT NULL,
    indirizzo VARCHAR(32) NOT NULL,
    username VARCHAR(16) NOT NULL UNIQUE,
    password VARCHAR(256) NOT NULL,
    ruolo ENUM('Amministratore', 'Magazziniere', 'Venditore', 'Cliente') NOT NULL,
    attivo TINYINT(1) NOT NULL DEFAULT 1
);

CREATE TABLE categoria (
    id_categoria INT PRIMARY KEY AUTO_INCREMENT,
    nome_categoria VARCHAR(32) NOT NULL UNIQUE
);

CREATE TABLE fornitore (
    id_fornitore INT PRIMARY KEY AUTO_INCREMENT,
    nome_fornitore VARCHAR(32) NOT NULL UNIQUE
);

CREATE TABLE prodotto (
    id_prodotto INT PRIMARY KEY AUTO_INCREMENT,
    nome_prodotto VARCHAR(32) NOT NULL UNIQUE,
    descrizione VARCHAR(1024),
    categoria INT NOT NULL,
    prezzo_unitario DECIMAL(10,2) NOT NULL,
    quantita_disponibile INT NOT NULL CHECK (quantita_disponibile >= 0),
    fornitore INT NOT NULL,
    FOREIGN KEY (categoria) REFERENCES categoria(id_categoria),
    FOREIGN KEY (fornitore) REFERENCES fornitore(id_fornitore)
);

CREATE TABLE ordine (
    id_ordine INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT NOT NULL,
    importo_complessivo DECIMAL(10,2) NOT NULL,
    stato ENUM('In attesa', 'Confermato', 'Spedito', 'Completato', 'Annullato') NOT NULL,
    data_ordine DATE NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES utente(id)
);

CREATE TABLE dettaglio_ordine (
    id_ordine INT NOT NULL,
    id_prodotto INT NOT NULL,
    quantita INT NOT NULL CHECK (quantita > 0),
    prezzo_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_ordine, id_prodotto),
    FOREIGN KEY (id_ordine) REFERENCES ordine(id_ordine),
    FOREIGN KEY (id_prodotto) REFERENCES prodotto(id_prodotto)
);