-- modifier le status de tous les utilisateurs à la valeur 1
UPDATE client SET status = 1;


-- pour le client n°1 et le client n° 3 changer leur email par inconnu@gmail.com
UPDATE client SET email = "inconnu@gmail.com" WHERE id = 1 OR id = 3;
UPDATE client SET email = "inconnu@gmail.com" WHERE id IN (1,3);


-- supprimer tous les clients qui ont un mot de passe dont la longeur est inférieure ou égal à 6 lettres
DELETE FROM client WHERE LENGTH(mdp) <= 6;
