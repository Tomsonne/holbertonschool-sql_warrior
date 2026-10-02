SELECT
    g.signification,
    ROUND(SUM(m.prix_base * t.coefficient), 2) AS chiffre_affaires
FROM table_location AS l
JOIN mangas AS m ON l.num_manga = m.num_manga
JOIN genres_manga AS g ON m.code_genre = g.code_genre
JOIN types_location AS t ON l.code_type = t.code_type
GROUP BY g.code_genre, g.signification
ORDER BY chiffre_affaires DESC;
