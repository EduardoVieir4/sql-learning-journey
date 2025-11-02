SELECT * FROM products;

-- Produtos abaixo do estoque mínimo
SELECT
	name As 'Produto',
    minimum_stock AS 'Estoque mínimo',
    stock_quantity AS 'Quantidade em estoque'
FROM products
WHERE stock_quantity < minimum_stock;

-- Ordenando os produtos do mais caro/menos caro
SELECT
	p.name AS 'Nome do produto',
    p.selling_price AS 'Preço'
FROM products p
ORDER BY selling_price DESC;

-- Consultando o total de produtos
SELECT
	COUNT(*) AS 'Total de produtos'
FROM products;

-- Consultando o produto mais caro
SELECT
	name AS 'Nome do produto',
    selling_price AS 'Maior preço'
FROM products
WHERE selling_price = (SELECT MAX(selling_price) FROM products);

-- Consultando o produto mais barato
SELECT
	name AS 'Nome do produto',
    selling_price AS 'Menor preço'
FROM products
WHERE selling_price = (SELECT MIN(selling_price) FROM products);

