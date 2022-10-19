-- il ne faut pas confondre les relations
-- Primary key 
-- Foreign key 

-- Avec les jointures 

-- permet de récupérer des informations qui sont stockées dans plusieurs tables pour créer un résultat qui regroupe ces informations

-- jointure interne => afficher tous les utilisateurs qui ont fait de dépenses 
-- les utilisateurs qui n'ont fait aucune dépense => voit pas dans le résultat 

SELECT nom , depenses 
FROM a 
JOIN b 
ON a.id = b.fk_a_id ; 

-- ancienne syntaxe équivalente 
SELECT nom , depenses 
FROM a , b 
WHERE a.id = b.fk_a_id ; 

-- si j'ai besoin d'afficher toutes les utilisateurs Même ceux qui n'ont pas fait de dépense 

-- a est la table gauche => FROM
-- table b la table droite => JOIN

SELECT nom , depenses 
FROM a 
LEFT JOIN b 
ON a.id = b.fk_a_id ;

-- MySQL et sur MariaDB
-- ne fonctionne pas sur sqlite 

SELECT nom , depenses 
FROM b 
RIGHT JOIN a
ON a.id = b.fk_a_id ;


INSERT INTO b (depenses , fk_a_id ) VALUES ( 150 , 15 );

SELECT nom , depenses 
FROM a 
LEFT JOIN b
ON a.id = b.fk_a_id ;

-- https://forms.gle/h5va1YoiPPAJ1xWJ6