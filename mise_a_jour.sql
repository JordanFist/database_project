-- Ajout d'un adhérent
INSERT INTO ADHERENTS (NUMERO_ADHERENT, NUMERO_PERSONNE)
VALUES (11, 11);

-- Suppression d'un adhérent


-- Modification d'un adhérent
UPDATE ADHERENTS
SET NUMERO_PERSONNE = 3 where NUMERO_PERSONNE = 2; 

-- Ajout d'un évènement
INSERT INTO EVENEMENTS (NUMERO_EVENEMENT, TITRE, DESCRIPTION, COUT, LIEU, NOMBRE_DE_PLACES)
VALUES (11, "TEST", "SUPER", 42, "MARSEILLE", 50);

-- Suppression d'un évènement


-- Modification d'un évènement
UPDATE EVENEMENTS
SET COUT = COUT + 1; 

-- Ajout d'une association
INSERT INTO ASSOCIATIONS (NUMERO_ASSOCIATION, NOM_ASSOCIATION, DATE_DE_CREATION, DESCRIPTION)
VALUES (11, "GCC", "22-JAN-16", "Blablabla");

-- Suppresion d'une association


-- Modification d'une association
UPDATE ASSOCIATIONS
SET NUMERO_ASSOCIATION = NUMERO_ASSOCIATION + 1;