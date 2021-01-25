-- Sélection de données.
-- Exercice 1: Dans la table languages, afficher toutes les données de la table.
SELECT *
    -> FROM `languages`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
8 rows in set (0.00 sec)

-- Exercice 2: Dans la table languages, afficher toutes les versions de PHP.
SELECT *
    -> FROM `languages`
    -> WHERE `languages`= 'PHP';
+----+-----------+-------------+
| id | language  | version     |
+----+-----------+-------------+
|  2 | PHP       | version 5.2 |
|  3 | PHP       | version 5.4 |
|  8 | PHP       | version 7   |
+----+-----------+-------------+
3 rows in set (0.00 sec)

-- Exercice 3: Dans la table languages, afficher toutes les versions de PHP et de JavaScript.
SELECT *
    -> FROM `languages`
    -> WHERE `languages` <> 'HTML';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
7 rows in set (0.00 sec)