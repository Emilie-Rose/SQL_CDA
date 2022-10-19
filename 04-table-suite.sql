-- lorsque l'on crée un table il est déconseillé d'utiliser des espaces dans les noms des colonnes

créer table decouverte informatique (espace dans le nom de la table) 

id 
duree formation (espace dans le nom d'une colonne) 

' apostrophe 
" guillemet 
` AltGr + 7 (au dessus des lettres) backtick 

CREATE TABLE `decouverte informatique` (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    `duree formation` SMALLINT 
) ;

-- si vos colonnes ou vos noms de table sont des mots clé du langage 

CREATE TABLE `table` (
    id INTEGER PRIMARY KEY AUTOINCREMENT
);


-- ajouter des valeurs par défaut 


-- stocker une image => 
-- fichier + adresse 
-- stocker son adresse https://www.google.fr/url?sa=i&url=https%3A%2F%2Ffr.wikipedia.org%2Fwiki%2FFichier%3ALogo_Montreuil_Seine_St_Denis.svg&psig=AOvVaw1xp07eaPK0urjxHWmsfvXf&ust=1666256629979000&source=images&cd=vfe&ved=0CAoQjRxqFwoTCKCi-4346_oCFQAAAAAdAAAAABAD
-- C:\Users\stagiaire\Desktop\pdf-html-css-flex-rwd-bootstrap\support_html_css.pdf


CREATE TABLE `images` (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    url TEXT ,
    contenu_fichier BLOB 
);
// Binary Large Object


-- créer une nouvelle table article
-- id 
-- titre texte maximum de 30 lettres par défaut (si je ne la précise pas) "à remplir"
-- contenu TEXT (+ 255 caractères)
-- dt_creation AAAAMMJJ par défaut (si je ne la précise pas) => maintenant 

CREATE TABLE article (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(30) DEFAULT "à remplir" ,
    contenu TEXT ,
    dt_creation DATE DEFAULT NOW() -- MariaDB MySQL 
);


-- sqlite 
CREATE TABLE article (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(30) DEFAULT "à remplir" ,
    contenu TEXT ,
    dt_creation DATE DEFAULT CURRENT_TIMESTAMP
);

-- ajouter une colonne 
DROP TABLE article ; 
CREATE TABLE article (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    titre VARCHAR(30) DEFAULT "à remplir" ,
    contenu TEXT ,
    dt_creation DATE DEFAULT CURRENT_TIMESTAMP,
    img TEXT 
);

-- MySQL MariaDB
ALTER TABLE article ADD COLUMN img TEXT 

-- pédagogique => saisir du SQL 
-- léger (facile à installer) par rapport à MySQL MariaDB 
-- très utilisé dans le monde ds app des smartphones
-- familiser sur le fait que version de SQL par SGBD 
-- le SQL de Sqlite est très proche du SQL MySQL MariaDB 


/*
créer une nouvelle table exo1
id clé primaire
nom texte maximum de 100 caractères
dt_creation AAAAMMJJ HH:MM:SS => DATETIME par défaut ce sera maintenant 
prix chiffre entier valeur par défault 0 
email texte long par défaut "à remplir"
*/

CREATE TABLE exo1 (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(100) , 
    dt_creation DATETIME DEFAULT CURRENT_TIMESTAMP ,
    prix INT DEFAULT 0 ,
    email LONGTEXT DEFAULT "à remplir"
);

/*
client
id nom 
1  Alain
2  Béatrice

facture 
id  total client_id
1    10      1
2    20      1
3    30      null

Maria MySQL => 0 - 255 VARCHAR()
            => 256 => 65000 TEXT 

*/