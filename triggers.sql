-- Emel
CREATE OR REPLACE TRIGGER QuantiteTot_PrixTotCE_maj
AFTER INSERT ON LigneCommandeEditeur
FOR EACH ROW
BEGIN
    UPDATE CommandeEditeur
    SET QuantiteTotCE = QuantiteTotCE + :new.QuantiteLCE,
        PrixTotCE = PrixTotCE + :new.PrixTotLCE
    WHERE CommandeEID = :new.CommandeEID;
END;
/

-- Emel
create or replace trigger PrixtotLCE_maj
before insert or update
on LigneCommandeEditeur
for each row
begin
    :new.PrixTotLCE := :new.QuantiteLCE * :new.PrixUnit;
end;
/

-- Laurine
CREATE OR REPLACE TRIGGER Interdire_commande_sans_stock
BEFORE INSERT ON LigneCommandeClient
FOR EACH ROW
DECLARE
    valeur_stock STOCK.QuantitéStock%TYPE;
    valeur_librairieID CommandeClient.LibrairieID%TYPE;
BEGIN
    SELECT LibrairieID
    INTO valeur_librairieID
    FROM CommandeClient
    WHERE CommandeCID = :NEW.CommandeCID;
    SELECT QuantitéStock
    INTO valeur_stock
    FROM Stock
    WHERE ISBN = :NEW.ISBN AND LibrairieID = valeur_librairieID;
    IF valeur_stock < :NEW.QuantitéStock THEN
        RAISE_APPLICATION_ERROR(-20001, 'Commande impossible : stock insuffisant.');
    END IF;
END;
/

-- Laurine
CREATE OR REPLACE TRIGGER Stock_faible
AFTER UPDATE OF QuantitéStock ON Stock
FOR EACH ROW
BEGIN
    IF :NEW.QuantitéStock < 1 THEN
        DBMS_OUTPUT.PUT_LINE('Le stock pour le livre ' || :NEW.ISBN ||' est épuisé, il faut le renouveler.');
    END IF;
END;
/

-- Emel
create or replace trigger verif_prix_editeur
before insert or update
on LigneCommandeEditeur
for each row
declare 
    librairie_id  number;
    v_prix_stock  number;
begin

select librairieID into librairie_id from CommandeEditeur
where CommandeEID = :new.CommandeEID;

select prix into v_prix_stock from stock
where librairieID = librairie_id and isbn = :new.ISBN;

if :new.PrixUnit != 0.8*v_prix_stock then
	raise_application_error(-20002, 'Le prix inséré est incorrect, il doit être inférieur de 20% au prix en stock');
end if;
end;
/

--Emel
create or replace trigger annuler_commande_terminee
before insert or update on commandeediteur
for each row
begin
    IF :old.statut = 'terminé' AND :new.statut = 'annulé' THEN
        RAISE_APPLICATION_ERROR(-20003, 'Erreur, On ne peut pas annuler une commande déjà terminée');
    END IF;
end;
/

-- Emel
create or replace trigger maj_stock_commande_terminee
after update of statut on CommandeEditeur
for each row
When (new.Statut = 'terminé' and old.Statut != 'terminé')
begin
    for ligne in (select ISBN, QuantiteLCE
                From LigneCommandeEditeur
                Where CommandeEID = :new.CommandeEID)
    Loop
        Update Stock
        SET QuantiteStock = QuantiteStock + ligne.QuantiteLCE
        Where ISBN = ligne.ISBN
        AND LibrairieID = :new.LibrairieID;
    End Loop;
End;
/

-- Emel
CREATE OR REPLACE TRIGGER Gestion_Annulation_Commande
AFTER UPDATE OF Statut ON CommandeEditeur
FOR EACH ROW
WHEN (new.Statut = 'Annulé')
BEGIN
    DELETE FROM LigneCommandeEditeur
    WHERE CommandeEID = :new.CommandeEID;
END;
/

-- Inès
CREATE OR REPLACE TRIGGER adresse_livraison
BEFORE INSERT ON CommandeClient
FOR EACH ROW
DECLARE
    lib_nom Librairie.Nom%TYPE;
    lib_ville Librairie.Ville%TYPE;
BEGIN
    IF :new.AdresseLivraison IS NULL THEN
        SELECT Nom, Ville INTO lib_nom, lib_ville FROM Librairie WHERE LibrairieID = :new.LibrairieID;
        :new.AdresseLivraison := 'Librairie ' || lib_nom || ', ' || lib_ville;
    END IF;
END;
/

-- Inès
CREATE OR REPLACE TRIGGER maj_prixtot_lcc
BEFORE INSERT OR UPDATE ON LigneCommandeClient
FOR EACH ROW
BEGIN
    :new.PrixTotLCC := :new.QuantiteLCC * :new.PrixUnit;
END;
/

-- Inès
CREATE OR REPLACE TRIGGER maj_stock_commande_client_terminee
AFTER UPDATE OF Statut ON CommandeClient
FOR EACH ROW
WHEN (new.Statut = 'terminé' AND old.Statut != 'terminé')
BEGIN
    FOR ligne IN (SELECT ISBN, QuantiteLCC FROM LigneCommandeClient WHERE CommandeCID = :new.CommandeCID)
    LOOP
        UPDATE Stock
        SET QuantiteStock = QuantiteStock - ligne.QuantiteLCC
        WHERE ISBN = ligne.ISBN AND LibrairieID = :new.LibrairieID;
    END LOOP;
END;
/

-- Inès
CREATE OR REPLACE TRIGGER annulation_commande_client
AFTER UPDATE OF Statut ON CommandeClient
FOR EACH ROW
WHEN (new.Statut = 'annulé')
BEGIN
    -- Restaurer le stock
    FOR ligne IN (SELECT ISBN, QuantiteLCC FROM LigneCommandeClient WHERE CommandeCID = :new.CommandeCID)
    LOOP
        UPDATE Stock
        SET QuantiteStock = QuantiteStock + ligne.QuantiteLCC
        WHERE ISBN = ligne.ISBN AND LibrairieID = :new.LibrairieID;
    END LOOP;
    -- Supprimer les lignes de commande
    DELETE FROM LigneCommandeClient WHERE CommandeCID = :new.CommandeCID;
END;
/

-- Inès
CREATE OR REPLACE TRIGGER maj_totals_commande_client
AFTER INSERT OR UPDATE ON LigneCommandeClient
FOR EACH ROW
BEGIN
    UPDATE CommandeClient
    SET QuantiteTotCC = QuantiteTotCC + :new.QuantiteLCC
        PrixTotCC = PrixTotCC + :new.PrixTotLCC
    WHERE CommandeCID = new.CommandeCID;
END;
/
