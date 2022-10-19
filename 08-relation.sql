DROP TABLE A;
DROP TABLE B;
CREATE TABLE a(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nom VARCHAR(50)    
);

CREATE TABLE b(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    depenses INT,
    fk_a_id INTEGER,
    FOREIGN KEY(fk_a_id) REFERENCES a(id)
);

INSERT INTO a
(nom) 
VALUES
('Alain'),('Béatrice'),('Charles');

INSERT INTO b
(depenses, fk_a_id) 
VALUES
(10,1),
(30,1),
(40,3),
(50,1),
(150,4);

