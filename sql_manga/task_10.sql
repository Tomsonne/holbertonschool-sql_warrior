SELECT
    factures.num_facture,
    clients.prenom,
    clients.nom,
    mangas.titre,
    types_location.libelle,
    table_location.date_retour
FROM table_location
JOIN factures
    ON table_location.num_facture = factures.num_facture
JOIN clients
    ON factures.code_client = clients.code_client
JOIN mangas
    ON table_location.num_manga = mangas.num_manga
JOIN types_location
    ON table_location.code_type = types_location.code_type
ORDER BY clients.code_client ASC, factures.num_facture ASC, mangas.num_manga ASC;
