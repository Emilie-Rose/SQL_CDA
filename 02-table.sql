-- commentaire monoligne
-- créer une table Etudiant qui contient les 4 colonnes suivantes 
-- id PK 
-- nom chaine de caractères de maximum 100 lettres
-- age chiffre entier
-- dt_creation AAAAMMJJ 

/*
    commentaire 
    multiligne 
*/

-- PK Primary Key (clé primaire)
-- colonne qui permet de distinguer chaque ligne de la table sans ambiguité 
-- cette colonne s'appelle id 
-- id_etudiant
-- contient un entier qui va s'incrémenter qui va augmenter de +1 pour chaque ligne ajotuée

CREATE TABLE etudiant (
 id INTEGER PRIMARY KEY AUTOINCREMENT, -- syntaxe SQLITE 
 nom VARCHAR(100),
 age INT,
 dt_creation DATE
); 


CREATE TABLE etudiant (
 id INT PRIMARY KEY AUTO_INCREMENT, -- MariaDB MySQL 
 nom VARCHAR(100),
 age INT,
 dt_creation DATE
); 

-- CREATE TABLE  => SQL => mot clé de sql mettre en MAJUSCULE 
----------------------------

exo créer la table produits 
6 colonnes 
id clé primaire 
nom texte maximum de 120 lettres
description texte maximum de 255 lettres
nb_commentaires chiffre entier 
prix chiffre entier 
dt_creation AAAAMMJJ

-- MAJUSCULE mot clé du langage
-- minuscule nom table / colonnes ...
-- ; à la fin facultatif si j'ai 1 seule requete à effectuer 
-- ; si j'ai plusieurs requetes SQL à effectuer , il faut mettre des ; 
-- espace entre les mots clés sont obligatoires
-- pour la dernière colonne (lorsque je crée une table) pas de virgule => ERREUR de Syntaxe
CREATE TABLE produits (
 id INTEGER PRIMARY KEY AUTOINCREMENT ,
 nom VARCHAR(120) ,
 description VARCHAR(255),
 nb_commentaires INT ,
 prix INT ,
 dt_creation DATE 
) ;

-- question sur les Types 

