-- Suppression et modification de données.
-- Exercice 1: Dans la table languages, supprimer toutes les lignes parlant de HTML.
DELETE FROM `languages` -- DELETE permet de supprimer une ou des valeurs de la table.
    -> WHERE `language` = 'HTML';
-- Résultat
SELECT *
    -> FROM `languages`;
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

-- Exercice 2: Dans la table frameworks, modifier toutes les lignes ayant le framework Symfony par Symfony2.
UPDATE `frameworks` -- UPDATE permet de modifier des valeurs.
    -> SET `framework` = 'Symfony2'
    -> WHERE `framework` = 'Symfony';
-- Résultat
SELECT *
    -> FROM `frameworks`;
+----+-----------+------------+
| id | framework | version    |
+----+-----------+------------+
|  1 | Symfony2  | version2.8 |
|  2 | Symfony2  | version 3  |
|  3 | Jquery    | version1.6 |
|  4 | Jquery    | vers2.10   |
+----+-----------+------------+
4 rows in set (0.00 sec)

-- Exercice 3: Dans la table languages, modifier la ligne du langage JavaScript version 5 par la version 5.1.
UPDATE `languages`
    -> SET `version` = 'version 5.1'
    -> WHERE `version` = 'version 5';
-- Résultat
SELECT *
    -> FROM `languages`;
+----+------------+-------------+
| id | language   | version     |
+----+------------+-------------+
|  1 | JavaScript | version 5.1 |
|  2 | PHP        | version 5.2 |
|  3 | PHP        | version 5.4 |
|  5 | JavaScript | version 6   |
|  6 | JavaScript | version 7   |
|  7 | JavaScript | version 8   |
|  8 | PHP        | version 7   |
+----+------------+-------------+
7 rows in set (0.00 sec)