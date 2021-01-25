-- Créations de tables.
-- Exercice 1: Dans la base de données webDevelopment, créer la table languages avec les colonnes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- language (type VARCHAR)
-- Création de table dans la base de donnée webDevelopment.
USE `webDevelopment`; -- Sélection de la base de donnée.
CREATE TABLE IF NOT EXISTS`languages` (  -- Création de la table, si elle n'existe pas.
    `id` INT UNSIGNED AUTO_INCREMENT, -- Création d'une colonne id de type integer qui est positif grâce à UNSIGNED et auto incrémenté.
    `language`VARCHAR(40), -- Création d'une colonne languages de caractères variable j'usquà 40.
    PRIMARY KEY (id) -- Clef primaire de l'id.
    ) 
    ENGINE=INNODB; -- Type de moteur utilisé.

-- Exercice 2: Dans la base de données webDevelopment, créer la table tools avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- tool (type VARCHAR)
CREATE TABLE `tools` (
    `id` INT UNSIGNED AUTO_INCREMENT,
    `tool`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 3: Dans la base de données webDevelopment, créer la table frameworks avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- name (type VARCHAR)
CREATE TABLE `frameworks`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 4: Dans la base de données webDevelopment, créer la table libraries avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- library (type VARCHAR)
CREATE TABLE `libraries`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `library`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 5: Dans la base de données webDevelopment, créer la table ide avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- ideName (type VARCHAR)
CREATE TABLE `ide`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `ideName`VARCHAR(40),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;

-- Exercice 6: Dans la base de données webDevelopment, créer, si elle n'existe pas, la table frameworks avec les colonnes suivantes :
    -- id (type INT, auto-incrémenté, clé primaire)
    -- name (type VARCHAR)
CREATE TABLE IF NOT EXISTS `frameworks`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `name`VARCHAR(40),
    PRIMARY KEY (id)
    ) ENGINE=INNODB;

-- Exercice 7: Supprimer la table tools si elle existe.
DROP TABLE IF EXISTS `tools`;

-- Exercice 8: Supprimer la table libraries.
DROP TABLE `libraries`;

-- Exercice 9: Supprimer la table ide.
DROP TABLE `ide`;

-- TP Créer la base codex. Y créer une table clients qui aura comme colonnes :
+------------------+---------+-------------------------------+
|      Colonne 	   |   Type  |         Attributs             |
+------------------+---------+-------------------------------+
| id	           | INT     | Auto-incrémenté, clé primaire |
+------------------+---------+-------------------------------+
| lastname 	       | VARCHAR |                               |
+------------------+---------+-------------------------------+
| firstname        | VARCHAR |                               |
+------------------+---------+-------------------------------+ 
| birthDate 	   | DATE 	 |                               |
+------------------+---------+-------------------------------+
| address          | VARCHAR |                               |
+------------------+---------+-------------------------------+  
| firstPhoneNumber | INT     |                               |
+------------------+---------+-------------------------------+
| secondPhoneNumber| INT     |                               |
+------------------+---------+-------------------------------+ 
| mail 	           | VARCHAR |                               |  
+------------------+---------+-------------------------------+
CREATE DATABASE `codex`;
USE `codex`;
CREATE TABLE IF NOT EXISTS `clients`(
    `id` INT UNSIGNED AUTO_INCREMENT,
    `lastname`VARCHAR(40),
    `firstname`VARCHAR(40),
    `birthDate` DATE,
    `address`VARCHAR(100),
    `firstPhoneNumber`INT,
    `secondPhoneNumber`INT,
    `mail`VARCHAR(20),
    PRIMARY KEY (id)
    ) 
    ENGINE=INNODB;
