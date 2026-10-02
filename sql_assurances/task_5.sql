SELECT
	libelle,
	COUNT(vehicules.type_voiture) AS total
FROM types_vehicules
LEFT JOIN vehicules ON types_vehicules.id = vehicules.type_voiture
GROUP BY libelle
ORDER BY total DESC;

    