SELECT
    t.code_type,
    COUNT(*) AS nb_utilisations
FROM table_location AS l
JOIN types_location AS t ON l.code_type = t.code_type
WHERE t.libelle = 'Retard régularisé'
GROUP BY t.code_type;
