-- MariaDB MySQL 

3 grandes familles de valeur que l'on peut stocker dans des colonnes 


Chaine de caractères => nombre maximum caractères à stocker 
CHAR (M)
VARCHAR (M)
TEXT
MEDIUMTEXT
LONGTEXT

=> TEXT 


Chiffres 
TINYINT => valeur mximum de ce chiffre / combien d'octet met à disposition 
SMALLINT
MEDIUMINT
INT
BIGINT

=> INT 

nb_commentaires TINYINT 1 octets , => 255

Date 

=> https://sqlite.org/index.html
=> https://sqlite.org/flextypegood.html


-- update du type d'une colonne
-- remplacer le type de nom VARCHAR(120) => TEXT

-- SQLITE 
-- supprimer la table produits
DROP TABLE produits ; 
-- récréer la table
CREATE TABLE produits (
 id INTEGER PRIMARY KEY AUTOINCREMENT ,
 nom TEXT ,
 description VARCHAR(255),
 nb_commentaires INT ,
 prix INT ,
 dt_creation DATE 
) ;

-- Mariadb // MySQL 

ALTER TABLE produits ALTER COLUMN nom TEXT ; 

-- fin création de table 
-- CRUD 
-- jointure 
-- rdv 10h50 bon café !!!!
-- hello 

-- CRUD => concept central 4 opérations de bases que l'on peut réaliser dans n'importe quelle système : 
-- Create
-- Read 
-- Update
-- Delete 

-- TABLE 
-- Create => CREATE TABLE
-- Read  => SHOW TABLE ; 
-- Update => ALTER TABLE -- MySQL / MariaDB // DROP TABLE  + CREATE TABLE -- sqlite
-- Delete => DROP TABLE 

-- ENREGISTREMENT (n-uple)


