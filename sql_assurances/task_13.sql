SELECT employes.id, employes.nom, employes.prenom
FROM employes
LEFT JOIN deplacements ON employes.id = deplacements.employe
WHERE deplacements.employe IS NULL
ORDER BY employes.id;