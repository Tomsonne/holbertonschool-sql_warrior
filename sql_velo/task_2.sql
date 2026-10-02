-- Expected result after loading the dump: ERROR 1062 (23000),
-- because id 1 is already used by the first utilisateur.
INSERT INTO utilisateurs (id, nom_complet, email, mot_de_passe)
VALUES (1, 'Test', 'test@test.com', '123');
