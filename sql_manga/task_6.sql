SELECT
    genres_manga.signification AS genre,
    COUNT(mangas.num_manga) AS nombre_de_manga_par_genre
FROM mangas
JOIN genres_manga
    ON mangas.code_genre = genres_manga.code_genre
GROUP BY genres_manga.code_genre, genres_manga.signification
ORDER BY nombre_de_manga_par_genre DESC, genres_manga.code_genre ASC;
