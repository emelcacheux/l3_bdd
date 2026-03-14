-- Emel
CREATE TABLE Editeur(
    EditeurId       number(5),    -- Changé en NUMBER
    Nom             varchar(30),
    Specialisation  varchar(25),
    Numtel          number(10),
    AdresseMail     varchar(50),


    PRIMARY KEY     (EditeurID)
);


-- Laurine
CREATE TABLE LIBRAIRIE (
    LibrairieID     NUMBER(5),    -- Changé en NUMBER
    Ville           VARCHAR(30),
    Nom             VARCHAR(30),


    PRIMARY KEY     (LibrairieID)
);


-- Inès
CREATE TABLE Client(
    ClientID        NUMBER(5),
    Nom             VARCHAR(20) NOT NULL,
    Prenom          VARCHAR(20) NOT NULL,
    AdressePostale  VARCHAR(50) NOT NULL,
    NumTel          NUMBER(10),
    AdresseMail     VARCHAR(50),


    PRIMARY KEY     (ClientID)
);


-- Laurine
CREATE TABLE EMPLOYE (
    EMPLOYEID   NUMBER(5),        -- Changé en NUMBER
    NOM         VARCHAR(50) NOT NULL,
    PRENOM      VARCHAR(50) NOT NULL,
    LIBRAIRIEID NUMBER(5) NOT NULL, -- Changé en NUMBER (doit matcher Librairie)
    NB_HEURES   NUMBER(4),
    SALAIRE     NUMBER(10),
    STATUT      VARCHAR(20),


    PRIMARY KEY (EMPLOYEID),
    FOREIGN KEY (LibrairieID) REFERENCES LIBRAIRIE(LibrairieID),
    CONSTRAINT salaire CHECK ((SALAIRE>=0) AND (SALAIRE >= (nb_heures*9.40*4.3)))
);


-- Laurine
CREATE TABLE Livre (
    ISBN          NUMBER(13),       -- Changé en NUMBER(13)
    Titre         VARCHAR(150),
    Genre         VARCHAR(50),
    EditeurID     NUMBER(5),        -- Changé en NUMBER (doit matcher Editeur)
    Auteur        VARCHAR(100),                                    
    DateParution  DATE,
    Resume        VARCHAR(4000),


    PRIMARY KEY   (ISBN),
    FOREIGN KEY   (EditeurID) REFERENCES Editeur(EditeurId)
);


-- Laurine
CREATE TABLE STOCK(
    PRIX        NUMBER(4,2),
    ISBN        NUMBER(13) NOT NULL, -- Changé en NUMBER(13)
    LIBRAIRIEID NUMBER(5) NOT NULL,  -- Changé en NUMBER
    QuantitéStock NUMBER(3) NOT NULL,


    PRIMARY KEY (ISBN, LIBRAIRIEID),
    FOREIGN KEY (ISBN) REFERENCES Livre(ISBN),
    FOREIGN KEY (LIBRAIRIEID) REFERENCES LIBRAIRIE(LibrairieID),


    CONSTRAINT prix_stock CHECK (PRIX >= 0)
);


-- Emel
CREATE TABLE CommandeEditeur(
    CommandeEID   number(5),
    Statut        varchar(20),
    PrixTotCE     number(10,2),
    QuantiteTotCE number(4),
    DateCE        date,
    EditeurId     number(5) NOT NULL,   -- Changé en NUMBER
    LibrairieID   number(5) NOT NULL,   -- Changé en NUMBER


    PRIMARY KEY   (CommandeEID),
    FOREIGN KEY   (EditeurId) REFERENCES Editeur(EditeurId),
    FOREIGN KEY   (LibrairieID) REFERENCES LIBRAIRIE(LibrairieID),


    CONSTRAINT statut_ce CHECK (Statut in ('en cours', 'annulé', 'terminé')),
    CONSTRAINT qte_ce CHECK (QuantiteTotCE >= 0),
    CONSTRAINT prix_ce CHECK (PrixTotCE >= 0)
);


-- Emel
CREATE TABLE LigneCommandeEditeur(
    ISBN        number(13),       -- Changé en NUMBER(13)
    CommandeEID number(5),
    QuantiteLCE number(3),
    PrixUnit    number(8,2),
    Reduction   number(3,1),
    PrixTotLCE  number(8,2),


    PRIMARY KEY (ISBN, CommandeEID),
    FOREIGN KEY (ISBN) REFERENCES Livre(ISBN),
    FOREIGN KEY (CommandeEID) REFERENCES CommandeEditeur(CommandeEID),


    CONSTRAINT cqte_lce CHECK (QuantiteLCE > 0),
    CONSTRAINT reduc_lce CHECK (Reduction > 0),
    CONSTRAINT pu_lce CHECK (PrixUnit > 0),
    CONSTRAINT pt_lce CHECK (PrixTotLCE > 0)
);


-- Inès
CREATE TABLE CommandeClient(
    CommandeCID      NUMBER(5),
    Statut           VARCHAR(20),
    AdresseLivraison VARCHAR(50),
    PrixTotCC        NUMBER(10,2),
    QuantiteTotCC    NUMBER(3),
    DateCC           DATE,
    ClientID         NUMBER(5) NOT NULL,
    LibrairieID      NUMBER(5) NOT NULL,   -- Changé en NUMBER


    PRIMARY KEY      (CommandeCID),
    FOREIGN KEY      (ClientID) REFERENCES Client(ClientID),
    FOREIGN KEY      (LibrairieID) REFERENCES LIBRAIRIE(LibrairieID),


    CONSTRAINT statut_cc CHECK (Statut in ('en cours', 'annulé', 'terminé')),
    CONSTRAINT qte_cc CHECK (QuantiteTotCC >= 0),
    CONSTRAINT prix_cc CHECK (PrixTotCC >= 0)
);


-- Inès
CREATE TABLE LigneCommandeClient(
    CommandeCID NUMBER(5) NOT NULL,
    ISBN        NUMBER(13) NOT NULL,      -- Changé en NUMBER(13)
    PrixUnit    NUMBER(5,2),
    PrixTotLCC  NUMBER(5,2),
    QuantiteLCC    NUMBER(3),


    PRIMARY KEY (CommandeCID, ISBN),
    FOREIGN KEY (CommandeCID) REFERENCES CommandeClient (CommandeCID),
    FOREIGN KEY (ISBN) REFERENCES Livre (ISBN),


    CONSTRAINT qte_lcc CHECK (QuantiteLCC > 0),
    CONSTRAINT prixu_lcc CHECK (PrixUnit > 0),
    CONSTRAINT prixt_lcc CHECK (PrixTotLCC > 0)
);
