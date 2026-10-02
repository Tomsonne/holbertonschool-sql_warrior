DELIMITER //

CREATE FUNCTION vehicule_est_assure(p_id_vehicule INT)
RETURNS INT
READS SQL DATA
BEGIN
    RETURN EXISTS (
        SELECT 1
        FROM contrats
        WHERE vehicule = p_id_vehicule
          AND CURDATE() BETWEEN DATE(date_effet)
              AND DATE(DATE_ADD(date_effet, INTERVAL duree MONTH))
    );
END //

DELIMITER ;

/* avec ia a revoir les fonction */