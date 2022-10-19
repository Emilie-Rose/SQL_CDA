CREATE TABLE `client` (
  `id` INTEGER PRIMARY KEY AUTOINCREMENT ,
  `titre` VARCHAR(3) ,
  `nom` VARCHAR(20) ,
  `email` VARCHAR(255) ,
  `mdp` VARCHAR(255) ,
  `status` TINYINT ,
  `dt_creation` DATETIME  DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `client` (`id`, `titre`, `nom`, `email`, `mdp`, `status`, `dt_creation`) VALUES
(1, 'Mme', 'Aurélie', 'alain@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-14 11:46:47'),
(2, 'Mme', 'Béatrice', 'beatrice@yahoo.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', 1, '2020-01-14 11:50:49'),
(3, 'Mme', 'Chantal', 'chantal@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 0, '2020-01-14 11:51:33'),
(4, 'M', 'Denis', '', '', 0, '2020-01-15 11:08:17'),
(5, 'Mme', 'Estelle', 'estelle@yahoo.fr', 'azerty', 1, '2020-01-15 11:14:17'),
(6, 'Mme', 'Francine', 'francine@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:22:03'),
(7, 'M', 'Gérard', 'gerard@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:26:31'),
(8, 'M', 'Henri', 'henri@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:26:31'),
(9, 'M', 'Ismael', 'ismael@yahoo.fr', 'ab4f63f9ac65152575886860dde480a1', 1, '2020-01-15 11:26:31');

-- récupérer tout les clients inscrit le 15/01/2020
-- récupérer tout les clients de sexe feminin
-- récupérer tout les clients dont l'email contient les lettre a ou L
-- compter le nombre de jour entre la date d l'inscription du client et maintenant (pour chaque client)
-- compter le nombre de lettre dans le mot de passe de chaque utilisateur

-- recuperer tout les clients inscrit le 15/01/2020
SELECT * FROM client WHERE dt_creation LIKE '%2020-01-15%';
SELECT * FROM client WHERE STRFTIME("%Y", dt_creation) = '2020' AND STRFTIME("%m", dt_creation) = '01' AND STRFTIME("%d", dt_creation) = '15';
SELECT * FROM client WHERE STRFTIME("%Y-%m-%d", dt_creation) = '15/01/2020';


-- récupérer tout les clients de sexe feminin
SELECT * FROM client WHERE titre LIKE 'Mme';

-- récupérer tout les clients dont l'email contient les lettre a ou L
SELECT * FROM client WHERE email LIKE '%a%' OR email LIKE '%l%';

-- compter le nombre de jour entre la date d l'inscription du client et maintenant (pour chaque client)
-- https://www.w3schools.com/Sql/func_mysql_datediff.asp
-- SELECT id, titre, nom, email, mdp, status, dt_creation, (julianday('now') - julianday(dt_creation)) AS nb_jour FROM client;
SELECT id, titre, nom, dt_creation, (julianday('now') - julianday(dt_creation)) AS nb_jour FROM client;
SELECT nom, printf("%.0f", (julianday('now') - julianday(dt_creation)) AS nb_jour FROM client;

-- correction
SELECT nom , printf("%.0f" ,JULIANDAY("now") - JULIANDAY(dt_creation)) AS nb_jours
FROM client ;

SELECT nom , CAST (JULIANDAY("now") - JULIANDAY(dt_creation) AS INTEGER ) AS nb_jours
FROM client ;

SELECT printf("%.0f" , 10.9) ; -- arrondi
SELECT CAST( 10.9  AS INTEGER ); -- pas d'arrondi

-- compter le nombre de lettre dans le mot de passe de chaque utilisateur
-- SELECT id, titre, nom, email, mdp, status, dt_creation, LENGTH(mdp) AS nb_lettre FROM client;
SELECT id, titre, nom,  LENGTH(mdp) AS nb_lettre FROM client;

