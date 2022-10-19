-- on sait créer des tables MAIS pour l'instant toutes les crées sont VIDE 
-- toutes ces tables sont VIDES 

-- Réaliser le CRUD sur les enregistrements
-- action à réaliser        mot clé de SQL
-- CREATE =>                INSERT INTO 
-- READ   =>                SELECT 
-- UPDATE =>                UPDATE
-- DELETE  =>                DELETE 


-- ajouter dans la table produits une ligne d'une d'enregistrement 

-- id (ne pas préciser => laisser le SGBD lui donner sa valeur)
-- nom => "Play Station 5"
-- description => "lorem ipsum"
-- nb_commentaires => 10 
-- prix => 600 
-- dt_creation => 01/01/2022


INSERT INTO produits () VALUES () ;
-- premières () préciser les colonnes 
-- deuxieme () préciser les valeurs 

INSERT INTO produits 
( nom              , description    , nb_commentaires , prix , dt_creation) 
VALUES 
( "Play Station 5" , "lorem ipsum" , 10               , 600  , "2022-01-01") ;

-- une fois insérer la première ligne

SELECT * FROM produits ; 

-- exo 
ajouter deux lignes dans la table etudiant 

nom Alain 
age 22
dt_creation 01/01/2020

nom Béatrice  
age 20
dt_creation 01/02/2020

-- solution 1 : 2 requêtes INSERT
INSERT INTO etudiant 
(nom , age , dt_creation) 
VALUES 
("Alain" , 22 , "2022-01-01" ) ;

INSERT INTO etudiant 
(nom , age , dt_creation) 
VALUES 
("Béatrice" , 20 , "2022-02-01" ) ;

-- solution 1 : 1 requête INSERT

INSERT INTO etudiant 
(nom , age , dt_creation) 
VALUES 
("Alain" , 22 , dt_creation ) ,
("Béatrice" , 20 , "2022-02-01" ) ; 

SELECT * FROM etudiant ;

-- exactement la même syntaxe sur mySQL / mariadb / sqlite 

-- uniquement sur MySQL 
INSERT INTO etudiant SET nom = "Alain" , age = 22 , dt_creation = "2022-02-01" ;

-- il est possible d'utiliser la requête INSERT INTO sans la première pair de parenthèses
-- connaitre l'id 
-- respecter l'ordre des colonnes 
INSERT INTO etudiant VALUES (3 , "Charles" , 45, "2022-02-01") ;
-- exactement la même syntaxe sur mySQL / mariadb / sqlite 