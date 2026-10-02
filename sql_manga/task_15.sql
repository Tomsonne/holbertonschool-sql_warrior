SELECT
    g.signification,
    t.libelle,
    COUNT(*) AS nombre_location
FROM table_location AS l
JOIN mangas AS m ON l.num_manga = m.num_manga
JOIN genres_manga AS g ON m.code_genre = g.code_genre
JOIN types_location AS t ON l.code_type = t.code_type
GROUP BY g.code_genre, g.signification, t.code_type, t.libelle
ORDER BY g.signification ASC, t.libelle ASC;
