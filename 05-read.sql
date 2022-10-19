créer une table salle

id PK
nom texte maximum 50 lettres
capacite int Default 10
localisation maximum 50 lettres par défaut "Paris"
dt_creation DATETIME Defaut maintenant
DROP TABLE salle ;
CREATE TABLE salle(
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(50) ,
    capacite INT DEFAULT 10 ,
    localisation VARCHAR(50) DEFAULT "Paris",
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- SQlite 
INSERT INTO salle 
(nom , capacite , localisation , dt_creation)
VALUES 
("jaune" , 30 , "Paris" , DATETIME('now','localtime')),
("verte" , 10 , "Marseille" , "2022-01-01 11:00:00"),
("rouge" , 15 , "Paris" , "2022-01-02 10:00:00"),
("rose" ,   5 , "Paris" , DATETIME('now','localtime'));
-- INSERT (4 colonnes) => VALUES il faut avoir 4 valeurs pas possible avec cette syntaxe


-- MySQL MariaDB
INSERT INTO salle 
(nom , capacite , localisation , dt_creation)
VALUES 
("jaune" , 30 , "Paris" , NOW()),
("verte" , 10 , "Marseille" , "2022-01-01 11:00:00"),
("rouge" , 15 , "Paris" , "2022-01-02 10:00:00"),
("rose" ,   5 , "Paris" , NOW());


INSERT INTO salle 
(nom , capacite )
VALUES 
("jaune" , 30 ) ; 
-- avec cette syntaxe vous pouvez utiliser les valeurs par défaut 

Ajouter des lignes dedans

"jaune" 30 Paris maintenant
"verte" 10 Marseille 01/01/2022 11:00
"rouge" 15 Paris 02/01/2022 10:00
"rose"   5 Paris maintenant

-- bon appétit rdv 13h30 !!! @ toute suite !!!
-- https://github.com/webdevproformation/dba-oct-2022

-- utiliser les valeurs stockées dans une table 
-- récupérer toutes les salles sur les attributs (colonnes) suivants 
SELECT nom , capacite , dt_creation 
FROM salle ; 

-- année
SELECT nom , capacite , STRFTIME(  "%Y" ,  dt_creation  )
FROM salle ;
-- mois
SELECT nom , capacite , STRFTIME(  "%m" ,  dt_creation  )
FROM salle ;
-- jour
SELECT nom , capacite , STRFTIME(  "%d" ,  dt_creation  )
FROM salle ;

-- jj/mm/aaaa
SELECT nom , capacite , STRFTIME(  "%d/%m/%Y" ,  dt_creation  )
FROM salle ;


-- renommer une colonne dans le résultat dans la requete SELECT 
-- AS utiliser comme Alias de colonne => 
-- AS est aussi utilisé sur les tables notamment pour les jointures
SELECT nom , capacite , STRFTIME(  "%d/%m/%Y" ,  dt_creation  ) AS `date française`
FROM salle ;

-- alias de table 
SELECT s.nom , s.capacite , STRFTIME(  "%d/%m/%Y" ,  s.dt_creation  ) AS `date française`
FROM salle AS s;

-- filtrage / recherche WHERE 

-- afficher toutes les salles dont la capacite >= 22 places

SELECT * 
FROM salle 
WHERE capacite >= 22 ; 

-- toutes les salles qui sont localisées à Marseille

SELECT * 
FROM salle 
WHERE localisation = "MArseille" ; 

-- retrouver toutes salles dont le nom contient la lettre o 

SELECT * 
FROM salle 
WHERE nom LIKE "%o%" ;

-- retrouver toutes salles dont le nom commence par r

SELECT * 
FROM salle 
WHERE nom LIKE "r%" ;

-- afficher toutes les salles dont la localisation finie par le lettre s

SELECT * 
FROM salle 
WHERE localisation LIKE "%s" ;

-- retrouver toutes salles dont le nom contient les lettres "ou"  "OU" 

SELECT * 
FROM salle 
WHERE nom LIKE "%oU%" ;


SELECT * 
FROM salle 
WHERE LOWER(localisation) = "paris" ;


-- récupérer toutes les réservations qui ont été réalisées en Janvier 

SELECT * 
FROM salle 
WHERE STRFTIME("%m" , dt_creation) = "01" ;