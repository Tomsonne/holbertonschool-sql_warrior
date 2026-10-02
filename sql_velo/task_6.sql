SELECT
    locations.id,
    locations.statut
FROM locations
WHERE locations.statut = 'active';
