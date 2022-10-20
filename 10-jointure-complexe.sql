-- 3 tables

-- utilisateur 
-- id PK
-- nom 

CREATE TABLE utilisateur(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(100) 
);

-- salle 
-- id PK
-- nom
-- capacite

CREATE TABLE salle(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(100)  ,
    capacite INT DEFAULT 0
);

-- reservation 
-- id PK
-- fk_id_utilisateur FK
-- fk_id_salle  FK
-- dt_debut AAAA-MM-JJ HH:MM:SS
-- duree 

CREATE TABLE reservation(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    fk_id_utilisateur INT ,
    fk_id_salle INT ,
    dt_debut DATETIME ,
    duree INT ,
    FOREIGN KEY (fk_id_utilisateur) REFERENCES utilisateur(id),
    FOREIGN KEY (fk_id_salle)  REFERENCES salle(id)
);

-- sqlite 
PRAGMA foreign_keys = ON;

INSERT INTO utilisateur 
(nom)
VALUES
("Alain") , ("Bob") , ("Céline");

INSERT INTO salle 
(nom , capacite)
VALUES
("Milan" , 10 ) , ( "Paris" , 30 ) , ("Rome" , 50 );

INSERT INTO reservation
(fk_id_utilisateur , fk_id_salle , dt_debut , duree) 
VALUES  
(1 , 1 , "2022-01-01 12:00:00" , 3) ,
(1 , 2 , "2022-01-02 12:00:00" , 1) ,
(2 , 1 , "2022-01-01 18:00:00" , 3) ,
(2 , 3 , "2021-01-01 12:00:00" , 2) ,
(3 , 2 , "2022-02-01 12:00:00" , 2) ;

-- je veux récupérer toutes les réservations réalisées par tous les utilisateurs 
-- nom user / dt debut / duree / nom salle / capacite 

SELECT u.nom AS `nom user` , r.dt_debut , r.duree , s.nom AS `nom salle` , s.capacite
FROM utilisateur AS u 
JOIN reservation AS r 
ON r.fk_id_utilisateur = u.id 
JOIN salle AS s 
ON s.id = r.fk_id_salle ;


SELECT u.nom AS `nom user` , r.dt_debut , r.duree , s.nom AS `nom salle` , s.capacite
FROM reservation AS r 
JOIN utilisateur AS u 
ON r.fk_id_utilisateur = u.id 
JOIN salle AS s 
ON s.id = r.fk_id_salle ;

INSERT INTO utilisateur 
(nom)
VALUES
("Denis") ;

SELECT u.nom AS `nom user` , r.dt_debut , r.duree , s.nom AS `nom salle` , s.capacite
FROM utilisateur AS u 
LEFT JOIN reservation AS r 
ON r.fk_id_utilisateur = u.id 
LEFT JOIN salle AS s 
ON s.id = r.fk_id_salle ;