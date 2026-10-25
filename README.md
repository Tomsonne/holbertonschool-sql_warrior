# holbertonschool-sql_warrior

Exercices de **SQL** (projet Holberton School) : conception de schémas et écriture de
requêtes sur quatre bases de données thématiques.

Chaque thème est fourni en deux temps à la racine du dépôt : un script `*_DDL.sql`
qui crée le schéma et un script `*_dump_data.sql` qui insère les données. Les
requêtes correspondantes sont rangées dans un dossier par thème — `sql_assurances/`,
`sql_dvd/`, `sql_manga/`, `sql_velo/` — avec un fichier `task_<n>.sql` par exercice.

L'environnement de travail est fourni par `docker-compose.yaml` : un serveur
**MySQL 8.0** et une interface **phpMyAdmin**. Copiez `.env.example` vers `.env`,
renseignez les valeurs, puis lancez `docker compose up -d`.
