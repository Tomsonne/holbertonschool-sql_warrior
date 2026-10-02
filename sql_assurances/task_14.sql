SELECT
    assureurs.nom,
    COUNT(contrats.id) AS nb_contrat
FROM
    contrats
JOIN assureurs ON contrats.assureur = assureurs.id
GROUP BY assureurs.nom
ORDER BY nb_contrat DESC LIMIT 1;