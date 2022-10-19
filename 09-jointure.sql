SELECT nom, depenses
FROM a
JOIN b
ON a.id = b.fk_a_id

-- ancienne syntaxe
SELECT nom, depenses
FROM a, b
WHERE a.id = b.fk_a_id