USE tifosi;

-- Drink Brands data
INSERT INTO
    marque (nom_marque)
VALUES
    ('Coca-cola'),
    ('Pepsico'),
    ('Moster'),
    ('Cristaline');

-- Drinks data
INSERT INTO
    boisson (nom_boisson)
VALUES
    ('Coca-cola zéro'),
    ('Coca-cola original'),
    ('Fanta citron'),
    ('Fanta orange'),
    ('Capri-sun'),
    ('Pepsi'),
    ('Pepsi Max Zéro'),
    ('Lipton zéro citron'),
    ('Lipton Peach'),
    ('Monster energy ultra gold'),
    ('Monster energy ultra blue'),
    ('Eau de source');

-- Appartien data
INSERT INTO
    appartient (id_boisson, id_marque)
VALUES
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1),
    (5, 1),
    (6, 2),
    (7, 2),
    (8, 2),
    (9, 2),
    (10, 3),
    (11, 3),
    (12, 4);

-- Ingredients data    
INSERT INTO
    ingredient (nom_ingredient)
VALUES
    ('Ail'),
    ('Ananas'),
    ('Artichaut'),
    ('Bacon'),
    ('Base Tomate'),
    ('Base crème'),
    ('Champignon'),
    ('Chevre'),
    ('Cresson'),
    ('Emmental'),
    ('Gorgonzola'),
    ('Jambon cuit'),
    ('Jambon fumé'),
    ('Oeuf'),
    ('Oignon'),
    ('Olive noire'),
    ('Olive verte'),
    ('Parmesan'),
    ('Piment'),
    ('Poivre'),
    ('Pomme de terre'),
    ('Raclette'),
    ('Salami'),
    ('Tomate cerise'),
    ('Mozzarella');

-- Focaccia data
INSERT INTO
    focaccia (nom_focaccia, prix)
VALUES
    ('Mozaccia', 9.80),
    ('Gorgonzollaccia', 10.80),
    ('Raclaccia', 8.90),
    ('Emmentalaccia', 9.80),
    ('Tradizione', 8.90),
    ('Hawaienne', 11.20),
    ('Américaine', 10.80),
    ('Paysanne', 12.80);

-- Comprend data
INSERT INTO
    comprend (id_focaccia, id_ingredient)
VALUES
    (1, 5),
    (1, 25),
    (1, 9),
    (1, 13),
    (1, 1),
    (1, 3),
    (1, 7),
    (1, 18),
    (1, 20),
    (1, 16),
    (2, 5),
    (2, 11),
    (2, 9),
    (2, 1),
    (2, 7),
    (2, 18),
    (2, 20),
    (3, 5),
    (3, 22),
    (3, 9),
    (3, 1),
    (3, 7),
    (3, 18),
    (3, 20),
    (4, 6),
    (4, 10),
    (4, 9),
    (4, 7),
    (4, 18),
    (4, 20),
    (4, 15),
    (5, 5),
    (5, 25),
    (5, 9),
    (5, 12),
    (5, 7),
    (5, 18),
    (5, 20),
    (5, 16),
    (5, 17),
    (6, 5),
    (6, 25),
    (6, 9),
    (6, 4),
    (6, 2),
    (6, 19),
    (6, 18),
    (6, 20),
    (6, 16),
    (7, 5),
    (7, 25),
    (7, 9),
    (7, 4),
    (7, 21),
    (7, 18),
    (7, 20),
    (7, 16),
    (8, 6),
    (8, 8),
    (8, 9),
    (8, 21),
    (8, 13),
    (8, 1),
    (8, 3),
    (8, 7),
    (8, 18),
    (8, 20),
    (8, 16),
    (8, 14);