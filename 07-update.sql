-- on veut modifier une valeur stocker dans une cellule d'une table 

-- update alain@yahoo.fr => aurelie@gmail.com

UPDATE client SET email = "aurelie@gmail.com" ; -- ATTENTION modifier le mail de TOUS LES CLIENTS

-- solution 1 : tout (BASE / TABLES / VALEURS ) copier dans un fichier de back up 

-- DUMP 

-- solution 2 : copier la table que tu vas manipuler 
CREATE TABLE client_bk LIKE client ; 

CREATE TABLE `client_bk` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT ,
  `titre` VARCHAR(3) ,
  `nom` VARCHAR(20) ,
  `email` VARCHAR(255) ,
  `mdp` VARCHAR(255) ,
  `status` TINYINT ,
  `dt_creation` DATETIME  DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO client_bk SELECT * FROM client;

-- UPDATE => ne pas oublier dans la requête le WHERE 

UPDATE client SET email = "aurelie@gmail.com" WHERE id = 1 ; 

-- mettre une email et un password pour Denis ayant l'id 4 

UPDATE client SET email = "denis@caramail.fr" , mdp = "12345689" WHERE id = 4 ;

-------------------

DELETE FROM client ; -- requête dangereuse => supprimer toutes les lignes de votre table
DELETE FROM client WHERE id = 4 ;

DELETE FROM client WHERE titre = "M" ;

DROP => supprimer TABLE / BASE DE DONNEE / COLONNE 
DELETE => supprimer des lignes dans une table 

TRUNCATE client ; -- vider une table de tout son contenu 

-- modifier le status de tous les utilisateurs à la valeur 1
UPDATE client SET status = 1;


-- pour le client n°1 et le client n° 3 changer leur email par inconnu@gmail.com
UPDATE client SET email = "inconnu@gmail.com" WHERE id = 1 OR id = 3;
UPDATE client SET email = "inconnu@gmail.com" WHERE id IN (1,3);


-- supprimer tous les clients qui ont un mot de passe dont la longeur est inférieure ou égal à 6 lettres
DELETE FROM client WHERE LENGTH(mdp) <= 6;

shop-itech.com