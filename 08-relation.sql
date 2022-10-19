CREATE TABLE a (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    nom VARCHAR(50)
);

CREATE TABLE b (
    id INTEGER PRIMARY KEY AUTOINCREMENT ,
    depenses INT ,
    fk_a_id INTEGER ,
    FOREIGN KEY (fk_a_id) REFERENCES a(id)
);
-- sqlite forcer la vérification de
-- la cohérence des données insérer par sqlite
-- par défaut il ne le fait pas 
PRAGMA foreign_keys = ON;

INSERT INTO a 
(nom)
VALUES 
("Alain") , ("Béatrice") , ("Charles")  ;

INSERT INTO B 
(depenses , fk_a_id )
VALUES 
( 10 , 1  ),
(30 , 1) ,
(40, 3 ) ,
(50 , 1) ,
(150 , 4) ;


INSERT INTO B 
(depenses , fk_a_id )
VALUES 
( 10 , 1  ),
(30 , 1) ,
(40, 3 ) ,
(50 , 1) ;


// fk => foreign key clé étrangère
// a le nom de la table avec laquelle on veut réaliser l'association
// id la colonne dans la table associée sur laquel on va réaliser l'association
// pour faire un relation les deux colonnes doivent avoir le même type 

-- 0-n
-- utilisateur a peut réaliser plusieurs dépenses ou aucune 
-- dépense est associée à un utilisateur 

a 
id   nom 
1    Alain
2    Béatrice
3    Charles 

b 
id   depenses 
1    50

