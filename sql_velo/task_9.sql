SELECT
    velos.code,
    COUNT(locations.id) AS nombre_locations
FROM velos
JOIN locations
    ON velos.id = locations.velo_id
GROUP BY velos.id, velos.code
ORDER BY velos.code ASC;
