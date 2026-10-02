SELECT
    velos.id,
    velos.code,
    velos.type_velo,
    velos.statut,
    velos.station_actuelle_id
FROM velos
WHERE velos.statut = 'maintenance';
