SELECT
    utilisateurs.nom_complet,
    COUNT(locations.id) AS nombre_locations
FROM utilisateurs
LEFT JOIN locations
    ON utilisateurs.id = locations.utilisateur_id
GROUP BY utilisateurs.id, utilisateurs.nom_complet
ORDER BY utilisateurs.id ASC;
