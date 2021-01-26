-- Les jointures
-- Exercice 1: Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework l'afficher aussi.
SELECT `languages`.`name` AS `languName`, `frameworks`.`name` AS `frameName` -- permet de créer un alias pour facilité la lecture.
    -> FROM `frameworks`
    -> RIGHT JOIN `languages` -- RIGHT JOIN permet de retourner tous les enregistrements de la table de droite même s’il n’y a pas de correspondance avec la table de gauche.
    -> ON `languages`.`id` = `frameworks`.`languagesId`; -- ON permet de spécifier une condition de jointure.
+------------+---------------+
| languName  | frameName     |
+------------+---------------+
| C++        | Qt            |
| Java       | SDK Android   |
| CSS        | Bootstrap     |
| CSS        | Foundation    |
| CSS        | KNACSS        |
| CSS        | Avalanche     |
| CSS        | Miligram      |
| CSS        | Skeleton      |
| CSS        | Hoisin        |
| CSS        | Inuit         |
| CSS        | Mimic         |
| CSS        | Ministrap     |
| CSS        | Lotus         |
| JavaScript | Jquery        |
| JavaScript | Angular       |
| JavaScript | ReactJS       |
| JavaScript | Vue.js        |
| JavaScript | Ember.js      |
| JavaScript | Meteor.js     |
| PHP        | Laravel       |
| PHP        | Symfony       |
| PHP        | CodeIgniter   |
| PHP        | Yii           |
| PHP        | Phalcon       |
| PHP        | Lumen         |
| PHP        | Silex         |
| PHP        | Slim          |
| C#         | .NET          |
| VB         | .NET          |
| Python     | Django        |
| Ruby       | Ruby On Rails |
| Assembleur | NULL          |
| C          | NULL          |
| HTML       | NULL          |
| Swift      | NULL          |
+------------+---------------+
35 rows in set (0.00 sec)

-- Exercice 2: Afficher tous les frameworks associés à leurs langages. Si un langage n'a pas de framework ne pas l'afficher.
 SELECT *
    -> FROM `frameworks`
    -> INNER JOIN `languages` -- INNER JOIN permet de lier des tables entre elle et d'afficher les lignes si elles respectent la condition.
    -> WHERE `frameworks`.`languagesId` = `languages`.`id`;
+----+---------------+-------------+----+------------+
| id | name          | languagesId | id | name       |
+----+---------------+-------------+----+------------+
|  1 | Qt            |           3 |  3 | C++        |
|  2 | SDK Android   |           4 |  4 | Java       |
|  3 | Bootstrap     |           6 |  6 | CSS        |
|  4 | Foundation    |           6 |  6 | CSS        |
|  5 | KNACSS        |           6 |  6 | CSS        |
|  6 | Avalanche     |           6 |  6 | CSS        |
|  7 | Miligram      |           6 |  6 | CSS        |
|  8 | Skeleton      |           6 |  6 | CSS        |
|  9 | Hoisin        |           6 |  6 | CSS        |
| 10 | Inuit         |           6 |  6 | CSS        |
| 11 | Mimic         |           6 |  6 | CSS        |
| 12 | Ministrap     |           6 |  6 | CSS        |
| 13 | Lotus         |           6 |  6 | CSS        |
| 14 | Jquery        |           7 |  7 | JavaScript |
| 15 | Angular       |           7 |  7 | JavaScript |
| 16 | ReactJS       |           7 |  7 | JavaScript |
| 17 | Vue.js        |           7 |  7 | JavaScript |
| 18 | Ember.js      |           7 |  7 | JavaScript |
| 19 | Meteor.js     |           7 |  7 | JavaScript |
| 20 | Laravel       |           8 |  8 | PHP        |
| 21 | Symfony       |           8 |  8 | PHP        |
| 22 | CodeIgniter   |           8 |  8 | PHP        |
| 23 | Yii           |           8 |  8 | PHP        |
| 24 | Phalcon       |           8 |  8 | PHP        |
| 25 | Lumen         |           8 |  8 | PHP        |
| 26 | Silex         |           8 |  8 | PHP        |
| 27 | Slim          |           8 |  8 | PHP        |
| 28 | .NET          |           9 |  9 | C#         |
| 29 | .NET          |          10 | 10 | VB         |
| 30 | Django        |          11 | 11 | Python     |
| 31 | Ruby On Rails |          12 | 12 | Ruby       |
+----+---------------+-------------+----+------------+
31 rows in set (0.00 sec)

-- Exercice 3: Afficher le nombre de framework qu'a un langage.
SELECT COUNT(*) AS `numberFrame`, `languages`.`name` AS `langName`
    -> FROM `frameworks`
    -> INNER JOIN `languages`
    -> ON `languages`.`id` = `frameworks`.`languagesId`
    -> GROUP BY `frameworks`.`languagesId`; -- GROUP BY permet grouper plusieurs résultats et utiliser une fonctionde totaux sur un groupe de résultat.
+-------------+------------+
| numberFrame | langName   |
+-------------+------------+
|           1 | C++        |
|           1 | Java       |
|          11 | CSS        |
|           6 | JavaScript |
|           8 | PHP        |
|           1 | C#         |
|           1 | VB         |
|           1 | Python     |
|           1 | Ruby       |
+-------------+------------+
9 rows in set (0.00 sec)

-- Exercice 4: Afficher les langages ayant plus de 3 frameworks.
SELECT COUNT(*) AS `numberFrame`, `languages`.`name` AS `langName`
    -> FROM `frameworks`
    -> INNER JOIN `languages`
    -> ON `languages`.`id` = `frameworks`.`languagesId`
    -> GROUP BY `frameworks`.`languagesId`
    -> HAVING COUNT(*) > 3; -- HAVING permet de filtrer en utilisant des fonctions telles que SUM(), COUNT(), AVG(), MIN() ou MAX().
+-------------+------------+
| numberFrame | langName   |
+-------------+------------+
|          11 | CSS        |
|           6 | JavaScript |
|           8 | PHP        |
+-------------+------------+
3 rows in set (0.00 sec)