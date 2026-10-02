SELECT
    c.ville,
    SUM(CASE
        WHEN g.signification = 'Aventure' THEN 1
        ELSE 0
    END) AS Aventure,
    SUM(CASE
        WHEN g.signification = 'Fantasy' THEN 1
        ELSE 0
    END) AS Fantasy,
    SUM(CASE
        WHEN g.signification = 'Horreur' THEN 1
        ELSE 0
    END) AS Horreur,
    SUM(CASE
        WHEN g.signification = 'Shōnen' THEN 1
        ELSE 0
    END) AS `Shōnen`
FROM clients AS c
JOIN factures AS f
    ON c.code_client = f.code_client
JOIN table_location AS l
    ON f.num_facture = l.num_facture
JOIN mangas AS m
    ON l.num_manga = m.num_manga
JOIN genres_manga AS g
    ON m.code_genre = g.code_genre
GROUP BY c.ville
ORDER BY c.ville ASC;