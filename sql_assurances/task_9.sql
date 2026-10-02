DELIMITER //

CREATE FUNCTION date_fin_contrat(p_id_contrat INT)
RETURNS DATE
READS SQL DATA
BEGIN
    DECLARE v_date_effet DATETIME DEFAULT NULL;
    DECLARE v_duree INT DEFAULT NULL;

    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET v_date_effet = NULL;

    SELECT date_effet, duree
    INTO v_date_effet, v_duree
    FROM contrats
    WHERE id = p_id_contrat;

    RETURN DATE(DATE_ADD(v_date_effet, INTERVAL v_duree MONTH));
END //

DELIMITER ;

/* avec ia a revoir les fonction */