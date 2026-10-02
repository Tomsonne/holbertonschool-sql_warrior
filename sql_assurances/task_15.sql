SELECT
	id,
	modele,
    COUNT(DISTINCT deplacements.debut_dep, deplacements.fin_dep, deplacements.lieu) AS nombre_total_de_trajets
FROM vehicules
JOIN deplacements ON vehicules.id = deplacements.vehicule
GROUP BY vehicules.id, vehicules.modele
ORDER BY nombre_total_de_trajets DESC;