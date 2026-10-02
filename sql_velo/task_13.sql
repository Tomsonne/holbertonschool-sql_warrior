SELECT
    velos.code,
    COUNT(locations.id) AS total_locations
FROM velos
LEFT JOIN locations
    ON velos.id = locations.velo_id
GROUP BY velos.id, velos.code
ORDER BY total_locations DESC, velos.code ASC;
