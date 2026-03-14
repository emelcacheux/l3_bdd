-- Création des rôles : Laurine

CREATE ROLE EMPLOYE ; 
CREATE ROLE MANAGER ;
CREATE ROLE LIBRAIRE ;  
CREATE ROLE CLIENT ; 
CREATE ROLE DIRECTEUR_GENERAL ; 

-- Vues des employés (dont les libraires et les manager)

    -- Laurine
CREATE OR REPLACE VIEW VUE_STOCK AS 
SELECT S.LibrairieID, L.ISBN, L.TITRE, S.QuantiteStock
FROM Stock S 
JOIN Livre L ON L.ISBN = S.ISBN ; 

GRANT SELECT ON VUE_STOCK TO EMPLOYE ; 
GRANT SELECT, UPDATE ON VUE_STOCK TO MANAGER ; 
GRANT SELECT ON VUE_STOCK TO LIBRAIRE ;

    -- Inès
CREATE OR REPLACE VIEW VUE_Commandes_clients AS 
SELECT c.CommandeID, c.DateCommande, c.Statut, c.PrixTotCC, cl.ClientID, cl.NomClient
FROM Commande C
JOIN Client Cl on C.ClientID = Cl.ClientID
Where C.LibrairieID = (
    SELECT LibrairieID 
    FROM EMPLOYE E
    WHERE E.Username = USER) ; -- l'utilisateur connecté

GRANT SELECT ON VUE_Commandes_clients TO EMPLOYE ; 
GRANT SELECT, UPDATE ON VUE_Commandes_clients TO MANAGER ;

-- Vue directeur général 

    -- Laurine
CREATE OR REPLACE VIEW VUE_Chiffre_Affaire AS
SELECT C.LibrairieID, SUM(C.PrixTotCC) AS chiffre_affaire
FROM CommandeClient C
GROUP BY C.LibrairieID;

GRANT SELECT ON VUE_Chiffre_Affaire TO DIRECTEUR_GENERAL ;

--vue libraire
    -- Emel
create or replace view vue_commande_editeur as
select ce.commandeID, ce.dateCommande, ce.statut, ed.nomEditeur
from commandeediteur ce
join editeur ed on ce.editeurid = ed.editeurid 
WHERE librairieID = (
    SELECT librairieID
    FROM Employe
    WHERE username = USER
) --la librairie où le libraire travaille
with check option;

GRANT SELECT, UPDATE ON vue_commande_editeur TO Libraire ;
GRANT SELECT ON vue_commande_editeur TO MANAGER ;

--Vue Client
    --Inès
-- On suppose que TO_NUMBER(USER) correspond au ClientID de l'utilisateur connecté
create or replace view interface_lecture_client as
select l.isbn, l.titre, s.quantiteStock
from stock s
join livre l on s.isbn = l.isbn
where s.quantitestock >= 1;

GRANT SELECT ON interface_lecture_client TO CLIENT ;

    -- Emel
CREATE OR REPLACE VIEW vue_commande_annulable AS
SELECT cc.commandeID, cc.statut, cl.nomClient
FROM CommandeClient cc
JOIN Client cl ON cc.clientID = cl.clientID
WHERE cc.statut = 'en cours'
WITH CHECK OPTION;

GRANT SELECT, UPDATE ON vue_commande_annulable TO CLIENT ;

    -- Inès
CREATE OR REPLACE VIEW vue_client AS
SELECT cl.clientID, cl.nomClient, cl.email, COUNT(cc.commandeID) AS nbCommandes
FROM Client cl
LEFT JOIN CommandeClient cc ON cl.clientID = cc.clientID
WHERE cl.clientID = TO_NUMBER(USER)
GROUP BY cl.clientID, cl.nomClient, cl.email;

GRANT SELECT, INSERT, UPDATE ON vue_client TO CLIENT ;

    -- Inès
CREATE OR REPLACE VIEW vue_commande_client AS
SELECT cc.commandeID, cc.dateCommande, cc.statut, cc.prixTotCC
FROM CommandeClient cc
JOIN Client cl ON cc.clientID = cl.clientID
WHERE cl.clientID = TO_NUMBER(USER);

GRANT SELECT, INSERT ON vue_commande_client TO CLIENT ;