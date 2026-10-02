SELECT
    mangas.titre,
    mangakas.prenom,
    mangakas.nom,
    mangakas.pays
FROM mangas
JOIN mangakas
    ON mangas.code_mangaka = mangakas.code_mangaka
ORDER BY mangas.titre ASC;
