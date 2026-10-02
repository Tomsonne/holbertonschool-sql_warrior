DELIMITER //

CREATE PROCEDURE ajouter_employe(IN e_nom VARCHAR(50), IN e_prenom VARCHAR(50), IN e_num_permis VARCHAR(12))
BEGIN
    DECLARE e_id INT;

    SELECT COALESCE(MAX(id), 0) + 1
    INTO e_id
    FROM employes;
    INSERT INTO employes (id, nom, prenom, num_permis) VALUES (e_id, UPPER(e_nom), e_prenom, e_num_permis);
END //

DELIMITER ;
