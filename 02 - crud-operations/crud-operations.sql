CREATE DATABASE crudoperations;

USE crudoperations;

CREATE TABLE product_types(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    id_type INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_type) REFERENCES product_types(id)
);

INSERT INTO product_types(name) VALUES ('Computador');
INSERT INTO product_types(name) VALUES ('Impressora');

INSERT INTO products(name, price, id_type) VALUES ('Desktop', 1200, 1);
INSERT INTO products(name, price, id_type) VALUES ('Laptop', 1800, 1);
INSERT INTO products(name, price, id_type) VALUES ('Impr. Jato Tinta', 300, 2);
INSERT INTO products(name, price, id_type) VALUES ('Impr. Laser', 500, 2);

SELECT * FROM product_types;
SELECT * FROM products;

SELECT p.id, p.name, p.price, tp.name AS 'Product Type'
	FROM products AS p, product_types AS tp
    WHERE p.id_type = tp.id;

INSERT INTO product_types(name) VALUES ('Celular');

INSERT INTO products(name, price, id_type) VALUES ('Notebook', 1500, 1);
INSERT INTO products(name, price, id_type) VALUES ('Iphone 11', 2500, 3);
INSERT INTO products(name, price, id_type) VALUES ('Samsung S25', 3872.82, 1);

UPDATE products set name = 'Notebook Acer' WHERE id = 5;
UPDATE products set name = 'Notebook Dell' WHERE id = 2;
UPDATE products set name = 'Impressora Jato de Tinta', price = 350 WHERE id = 3;
UPDATE products set name = 'Impressora Laser', price = 550 WHERE id = 4;
UPDATE products set id_type = 3 WHERE id = 7;

ALTER TABLE products ADD quantity INT;

DELETE FROM products WHERE id = 1;

UPDATE products set quantity = 13 WHERE id = 2;
UPDATE products set quantity = 25 WHERE id = 3;
UPDATE products set quantity = 30 WHERE id = 4;
UPDATE products set quantity = 18 WHERE id = 5;
UPDATE products set quantity = 9 WHERE id = 6;
UPDATE products set quantity = 11 WHERE id = 7;


-- MAX
SELECT MAX(preco) AS 'Maior preço' FROM produtos;

-- MIN
SELECT MIN(preco) AS 'Menor preço' FROM produtos;

-- AVG
SELECT AVG(preco) AS 'Media por tipo'
FROM produtos AS p WHERE p.codigo_tipo = 1;

-- ROUND
SELECT ROUND(AVG(preco), 2) AS 'Media por tipo 1'
FROM produtos AS p
WHERE p.codigo_tipo = 1;

-- GROUP BY

SELECT 
	tp.descricao AS tipo_produto,
    MAX(p.preco) AS 'Maior preço'
FROM
	produtos AS p
JOIN
	tipos_produto AS tp ON p.codigo_tipo = tp.codigo
GROUP BY
	tp.descricao;