SELECT
    vehicules.modele,
    types_vehicules.nbplaces,
    ROUND(
        COUNT(deplacements.employe) / types_vehicules.nbplaces * 100,
        2
    ) AS taux_remplissage
FROM vehicules
JOIN types_vehicules ON vehicules.type_voiture = types_vehicules.id
LEFT JOIN deplacements ON vehicules.id = deplacements.vehicule
GROUP BY vehicules.id, vehicules.modele, types_vehicules.nbplaces
ORDER BY taux_remplissage DESC, vehicules.id ASC;