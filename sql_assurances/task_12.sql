DELIMITER //

CREATE TRIGGER trg_verifier_places
BEFORE INSERT ON deplacements
FOR EACH ROW
BEGIN
    DECLARE v_capacite INT;
    DECLARE v_places_occupees INT;

    SELECT types_vehicules.nbplaces
    INTO v_capacite
    FROM vehicules
    JOIN types_vehicules ON vehicules.type_voiture = types_vehicules.id
    WHERE vehicules.id = NEW.vehicule;

    SELECT COUNT(*)
    INTO v_places_occupees
    FROM deplacements
    WHERE vehicule = NEW.vehicule
        AND debut_dep = NEW.debut_dep
        AND fin_dep = NEW.fin_dep
        AND lieu = NEW.lieu;
    
    IF v_places_occupees >= v_capacite THEN
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Capacite du vehicule depassee';
    END IF;

END //

DELIMITER ;