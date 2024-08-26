
-- ----------------------------------------------------------------
-- AUTHOR : Tiago Machado					  
-- DATE : 25-05-2024						  
-- Nº.CEF : F471277A						  
-- DEVOIR : Concevoir une base de données collaborative avec MySQL 
-- ----------------------------------------------------------------

-- ----------------------------------------------------------------
-- SET DATABASE tifosi
-- ----------------------------------------------------------------
DROP DATABASE IF EXISTS tifosi;

CREATE DATABASE tifosi;

USE tifosi;

-- ----------------------------------------------------------------
-- SET USER AND PRIVILEGES
-- ----------------------------------------------------------------
DROP USER IF EXISTS 'tifosi'@'localhost';

CREATE USER 'tifosi'@'localhost' IDENTIFIED BY 'focaccia';

GRANT ALL PRIVILEGES ON tifosi.* to 'tifosi'@'localhost';

FLUSH PRIVILEGES;

-- ----------------------------------------------------------------
-- CREATE TABLES
-- ----------------------------------------------------------------
CREATE TABLE client(
	id_client INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nom_client VARCHAR(45) NOT NULL,
	age INT NOT NULL,
	cp_client INT NOT NULL
);

CREATE TABLE focaccia(
	id_focaccia INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nom_focaccia VARCHAR(45) NOT NULL,
	prix FLOAT NOT NULL
);

CREATE TABLE achete(
	id_achete INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_client INT NOT NULL,
	id_focaccia INT NOT NULL,
	jour DATE NOT NULL,
	FOREIGN KEY (id_client) REFERENCES client(id_client),
	FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia)
);

CREATE TABLE ingredient(
	id_ingredient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nom_ingredient VARCHAR(45) NOT NULL
);

CREATE TABLE comprend (
    	id_comprend INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    	id_focaccia INT NOT NULL,
    	id_ingredient INT NOT NULL,
   	FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    	FOREIGN KEY (id_ingredient) REFERENCES ingredient(id_ingredient)
);

CREATE TABLE menu (
	id_menu INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome_menu VARCHAR(45) NOT NULL,
	prix_menu FLOAT NOT NULL
);

CREATE TABLE paye (
	id_paye INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	jour DATE NOT NULL,
	id_client INT NOT NULL,
	id_menu INT NOT NULL,
	FOREIGN KEY (id_client) REFERENCES client(id_client),
    	FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);

CREATE TABLE est_constitue (
	id_constitue INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_focaccia INT NOT NULL,
	id_menu INT NOT NULL,
	FOREIGN KEY (id_focaccia) REFERENCES focaccia(id_focaccia),
    	FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);

CREATE TABLE boisson (
	id_boisson INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nom_boisson VARCHAR(45) NOT NULL
);

CREATE TABLE contient(
	id_contient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_menu INT NOT NULL,
	id_boisson INT NOT NULL,
	FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
	FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson)
);

CREATE TABLE marque(
	id_marque INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nom_marque VARCHAR(45) NOT NULL
);

CREATE TABLE appartient(
	id_appartient INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	id_boisson INT NOT NULL,
	id_marque INT NOT NULL,
	FOREIGN KEY (id_boisson) REFERENCES boisson(id_boisson),
	FOREIGN KEY (id_marque) REFERENCES marque(id_marque)
);

-- ----------------------------------------------------------------
-- View to get focaccia name, price and ingredients
-- ----------------------------------------------------------------
CREATE VIEW view_focaccia_ingredients AS
SELECT
    f.nom_focaccia AS Focaccia,
    f.prix AS Prix,
    GROUP_CONCAT(i.nom_ingredient ORDER BY i.nom_ingredient ASC SEPARATOR ', ') AS Ingredients
FROM
    focaccia f
JOIN
    comprend c ON f.id_focaccia = c.id_focaccia
JOIN
    ingredient i ON c.id_ingredient = i.id_ingredient
GROUP BY
    f.nom_focaccia, f.prix;
    
-- ----------------------------------------------------------------    
-- View to get drink name and is brand    
-- ----------------------------------------------------------------
CREATE VIEW view_boisson_marque AS
SELECT
    b.nom_boisson AS Boisson,
    m.nom_marque AS Marque
FROM
    boisson b
JOIN
    appartient a ON b.id_boisson = a.id_boisson
JOIN
    marque m ON a.id_marque = m.id_marque
ORDER BY
    m.nom_marque, b.nom_boisson;
    
    
