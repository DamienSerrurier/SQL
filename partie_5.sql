-- Sélection de données.
-- Exercice 1: Dans la table languages, afficher toutes les données de la table.
SELECT * -- SELECt * permet de faire une sélection complète dans le tableau.
    -> FROM `languages`; -- FROM permet d'inquer le tableau dans lequel faire les recherches.
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
    -> WHERE `language`= 'PHP'; -- la clause WHERE permet d’extraire les lignes d’une base de données respactants une condition.
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
    -> WHERE `language` = 'PHP' OR  `language` = 'JavaScript'; -- OR opérateur logique OU.
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

-- Exercice 4: Dans la table languages, afficher toutes les lignes ayant pour id 3,5,7.
SELECT *
    -> FROM `languages`
    -> WHERE `id`IN (3, 5, 7); -- IN opérateur logique permet de remplacer OR lors de données multiples.
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+
3 rows in set (0.00 sec)

-- Exercice 5: Dans la table languages, afficher les deux première entrées de JavaScript.
SELECT *
    -> FROM `languages`
    -> WHERE `language` = 'JavaScript'
    -> LIMIT 2; -- la clause LIMIT permet de spécifier le nombre maximum de résultats que l’ont souhaite obtenir.
+----+------------+-----------+
| id | language   | version   |
+----+------------+-----------+
|  1 | JavaScript | version 5 |
|  7 | JavaScript | version 8 |
+----+------------+-----------+
2 rows in set (0.00 sec)

-- Exercice 6: Dans la table languages, afficher toutes les lignes qui ne sont pas du PHP.
SELECT *
    -> FROM `languages`
    -> WHERE `language` <> 'PHP';
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5   |
|  4 | HTML       | version 5.1 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
+----+------------+-------------+
5 rows in set (0.00 sec)

-- Exercice 7: Dans la table languages, afficher toutes les données par ordre alphabétique.
SELECT *
    -> FROM `languages`
    -> ORDER BY `language`; -- ORDER BY permet de trier les lignes dans un résultat d’une requête.
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  4 | HTML       | version 5.1 |
|  1 | JavaScript | version 5   |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  8 | PHP        | version 7   |
+----+------------+-------------+
8 rows in set (0.00 sec)