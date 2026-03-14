emel
--Quelles sont les librairies qui possèdent le livre ayant pour ISBN le n°9782092543030 ?

SELECT l.nom
FROM Librairie l, Stock s
WHERE l.LibrairieID = s.LibrairieID
AND s.ISBN like '9782092543030';

--Quels sont les éditeurs spécialisés dans la bande dessinée ?

select e.nom
from editeur e
where e.Specialisation = 'BD';

--Quel client a acheté tous les livres de Harlan Coben ?
SELECT c.nom
from client c 
WHERE not exists(
    Select l.ISBN 
    From Livre l
    where l.auteur like 'Harlan Coben'
    AND not exists(
        Select *
        FROM CommandeClient cc, LigneCommandeClient lcc
        WHERE c.ClientID = cc.ClientID
        AND cc.CommandeCID = lcc.CommandeCID 
        AND lcc.ISBN = l.ISBN
    )
);
-- Quel client n’a jamais acheté un livre appartenant à la maison d’édition Pika ?
--no rows selected

select c.nom
from client c 
where not exists(
        Select *
        from CommandeClient cc, LigneCommandeClient lcc, livre l, editeur e
        where c.ClientID = cc.ClientID
        AND cc.CommandeCID = lcc.CommandeCID
        AND lcc.ISBN = l.ISBN
        AND l.EditeurID = e.editeurID
        AND e.nom like 'Pika'
    );

-- Quelle maison d’édition a vendu le plus de livres à la librairie de Versailles ?
--now rows selected
select e.nom, sum(ce.quantitetotCE) as qte_livres
from Editeur e, CommandeEditeur ce, librairie lib
where e.editeurID = ce.editeurID AND ce.librairieID = lib.librairieID
AND lib.ville = 'Versailles'
group by (e.nom)
order by qte_livres desc;

-- Quelle librairie passe le plus de commandes auprès de la maison d’édition Hachette ?
--no rows selected
select lib.nom, COUNT(ce.CommandeEID) as qte_commande
from Editeur e, CommandeEditeur ce, librairie lib
where e.editeurID = ce.editeurID AND ce.librairieID = lib.librairieID
AND e.nom = 'Hachette'
group by (lib.nom)
order by qte_commande desc;

-- Quel genre a été le plus acheté en 2024 ?
--no rows selected
select l.genre, sum(lcc.quantite) as qte_genre
from livre l, commandeclient cc, lignecommandeclient lcc
where l.isbn = lcc.isbn and cc.commandecid = lcc.commandecid
and TO_CHAR(cc.DateCC, 'YYYY') = '2024'
group by (l.genre)
order by qte_genre desc;

laurine
-- Quel livre de Coben a été le moins acheté ? fonctionne

SELECT L.ISBN, L.Titre, COALESCE(SUM(LC.Quantite), 0) AS nb_ventes
FROM Livre L
LEFT JOIN LigneCommandeClient LC ON L.ISBN = LC.ISBN --permet de ne pas supprimer les livres étant dans aucune commande
WHERE (L.Auteur = 'Coben' OR L.Auteur = 'Harlan Coben')
GROUP BY L.ISBN, L.Titre
HAVING COALESCE(SUM(LC.Quantite), 0) = ( --permet de modifier la quantité NULL en 0 pour calculer
    SELECT MIN(nb_ventes)
    FROM (
        SELECT COALESCE(SUM(LC.Quantite), 0) AS nb_ventes
        FROM Livre L
        LEFT JOIN LigneCommandeClient LC ON L.ISBN = LC.ISBN
        WHERE (L.Auteur = 'Coben' OR L.Auteur = 'Harlan Coben')
        GROUP BY L.ISBN
    )
);


-- Quel client a passé la commande qui a été la plus chère dans la librairie de Paris entre juin et septembre 2025

SELECT C.ClientID, C.Nom, C.Prenom, CC.PrixTotCC
FROM Client C
JOIN CommandeClient CC ON C.ClientID = CC.ClientID
JOIN Librairie L ON CC.LibrairieID = L.LibrairieID
WHERE L.VILLE = 'Paris'
  AND CC.dateCC BETWEEN '2025-06-01' AND '2025-09-30'
  AND CC.PrixTotCC = (
      SELECT MAX(CC.PrixTot)
      FROM CommandeClient CC
      JOIN Librairie L ON CC.LibrairieID = L.LibrairieID
      WHERE L.VILLE = 'Paris'
      AND CC.dateCC BETWEEN '2025-06-01' AND '2025-09-30'
  );

-- Quelle romance disponible à Toulouse est éditée chez Gallimard ?

SELECT L.Titre, L.ISBN
FROM Livre L
JOIN Editeur E ON L.EditeurID = E.EditeurID
JOIN Stock S ON S.ISBN = L.ISBN
JOIN Librairie Lib ON Lib.LibrairieID = S.LibrairieID
WHERE Lib.Ville = 'Toulouse' AND E.Nom = 'Gallimard' AND L.Genre = 'Romance';

-- Quel client a le plus haut taux d’annulation de commandes?

SELECT C.Nom,C.Prenom, C.ClientID, COUNT(*) AS nb_commandes_client
FROM CommandeClient CC
JOIN Client C ON CC.ClientID = C.ClientID
WHERE CC.Statut = 'Annulé'
GROUP BY C.ClientID, C.Nom, C.Prenom
HAVING COUNT(*) = (
    SELECT MAX(nb_commandes_client)
    FROM (
        SELECT COUNT(*) AS nb_commandes_client
        FROM CommandeClient
        WHERE Statut = 'Annulé'
        GROUP BY ClientID
    ) annulations
);

-- Combien d'exemplaires du Livre “Anatomy Love Story” est dans le stock de la librairie de Marseilles ?

SELECT SUM(S.Quantite) as nb_exemplaire
FROM Livre L
JOIN Stock S ON S.ISBN = L.ISBN
JOIN Librairie Lib ON Lib.LibrairieID = S.LibrairieID
WHERE L.Titre = 'Anatomy Love Story'
AND Lib.Ville = 'Marseilles' ;

-- Quel est le livre qui a été édité dans le plus de maisons d’édition différentes ?

SELECT L.Titre, L.ISBN, COUNT(*) AS nb_editeur
FROM Livre L
JOIN Editeur E ON L.EditeurID = E.EditeurID
GROUP BY L.Titre, L.ISBN
HAVING COUNT(*) = (
    SELECT MAX(nb_editeur)
    FROM (
        SELECT COUNT(*) AS nb_editeur
        FROM Livre
        GROUP BY ISBN
    ) editeurs
);

-- Quel est le livre (ou les livres) qui ont été édité par Kioon et qui ont pour auteur Yoshitoki Oima ?

SELECT * 
FROM LIVRE L
JOIN EDITEUR E ON E.EditeurID = L.EditeurID 
WHERE E.NOM = 'Kioon' AND (L.Auteur = "Yoshitoki Oima" or L.Auteur = "Oima Yoshitoki") ;

Ines

-- Quel livre a été édité à la fois par la maison d’édition “Le livre de poche” et à la fois dans la maison d’édition “Albin Michel”
SELECT L1.Titre
FROM Livre L1
JOIN Editeur E1 ON L1.EditeurID = E1.EditeurID
WHERE E1.Nom = 'Le livre de poche'
AND EXISTS (
    SELECT *
    FROM Livre L2
    JOIN Editeur E2 ON L2.EditeurID = E2.EditeurID
    WHERE L2.Titre = L1.Titre
    AND E2.Nom = 'Albin Michel'
);

-- Quel auteur n’a aucun livre publié chez Folio ?
SELECT Auteur
FROM Livre L1
WHERE NOT EXISTS (
    SELECT *
    FROM Livre L2
    JOIN Editeur E ON L2.EditeurID = E.EditeurID
    WHERE L2.Auteur = L1.Auteur
    AND E.Nom = 'Folio'
);

-- Quelles sont les paires de clients qui habitent dans la même ville ?

SELECT C1.Nom AS Client1, C2.Nom AS Client2, SUBSTR(C1.AdressePostale, INSTR(C1.AdressePostale, ',', -1) + 2) AS Ville
FROM Client C1
JOIN Client C2 ON SUBSTR(C1.AdressePostale, INSTR(C1.AdressePostale, ',', -1) + 2) = SUBSTR(C2.AdressePostale, INSTR(C2.AdressePostale, ',', -1) + 2)
WHERE C1.ClientID < C2.ClientID;

-- Quel client a passé la commande contenant le moins de livre la plus chère, auprès de la librairie de paris ?
SELECT C.Nom, C.Prenom
FROM CommandeClient CC
JOIN Client C ON CC.ClientID = C.ClientID
JOIN Librairie L ON CC.LibrairieID = L.LibrairieID
WHERE L.Ville = 'Paris'
AND CC.PrixTotCC = (
    SELECT MAX(PrixTotCC)
    FROM CommandeClient CC3
    JOIN Librairie L3 ON CC3.LibrairieID = L3.LibrairieID
    WHERE L3.Ville = 'Paris'
    AND CC3.QuantiteTotCC = (
        SELECT MIN(QuantiteTotCC)
        FROM CommandeClient CC4
        JOIN Librairie L4 ON CC4.LibrairieID = L4.LibrairieID
        WHERE L4.Ville = 'Paris'
    )
);

-- Quelle librairie a exclusivement commandé des livres de romance ?
SELECT L.Nom
FROM Librairie L
WHERE EXISTS (
    SELECT *
    FROM CommandeEditeur CE
    JOIN LigneCommandeEditeur LCE ON CE.CommandeEID = LCE.CommandeEID
    JOIN Livre LV ON LCE.ISBN = LV.ISBN
    WHERE CE.LibrairieID = L.LibrairieID
)
AND NOT EXISTS (
    SELECT *
    FROM CommandeEditeur CE
    JOIN LigneCommandeEditeur LCE ON CE.CommandeEID = LCE.CommandeEID
    JOIN Livre LV ON LCE.ISBN = LV.ISBN
    WHERE CE.LibrairieID = L.LibrairieID
    AND LV.Genre != 'Romance'
);

-- Quel éditeur a vendu des livres à toutes les librairies ?
SELECT E.Nom
FROM Editeur E
WHERE NOT EXISTS (
    SELECT *
    FROM Librairie L
    WHERE NOT EXISTS (
        SELECT * 
        FROM CommandeEditeur CE
        JOIN LigneCommandeEditeur LCE ON CE.CommandeEID = LCE.CommandeEID
        WHERE CE.EditeurID = E.EditeurID
        AND CE.LibrairieID = L.LibrairieID
        AND CE.Statut = 'terminé'
    )
);
