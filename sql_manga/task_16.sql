SELECT
    clients.ville,
    ROUND(SUM(mangas.prix_base * types_location.coefficient), 2) AS chiffre_affaires
FROM clients
JOIN factures ON clients.code_client = factures.code_client
JOIN table_location ON factures.num_facture = table_location.num_facture
JOIN mangas ON table_location.num_manga = mangas.num_manga
JOIN types_location ON table_location.code_type = types_location.code_type
GROUP BY clients.ville
ORDER BY chiffre_affaires DESC;
