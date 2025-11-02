INSERT INTO category(name, description) VALUES
('Eletrônicos', 'Produtos eletrônicos em geral'),
('Informática', 'Computadores, notebooks e acessórios'),
('Movéis', 'Movéis para escritório'),
('Livros', 'Livros literários, educacionais e técnicos'),
('Material escritório', 'Canetas, papéis, pastas e suprimentos'),
('Games', 'Video-games, consoles e acessórios'),
('Smartphones', 'Telefones celulares e tablets'),
('Áudio', 'Fones, caixas de som e equipamentos de áudio');

SELECT * FROM category
WHERE name LIKE "Movéi%";

UPDATE category
SET name = 'Móveis', description = 'Móveis para escritório'
WHERE id = 3;

INSERT INTO supplier(cnpj, company_name, phone, email) VALUES 
('12.345.678/0001-90', 'Tech Fornecedor Ltda', '(11) 9999-8888', 'tech@email.com'),
('98.765.432/0001-10', 'Moveis & Cia SA', '(11) 7777-6666', 'moveiscia@email.com'),
('23.456.789/0001-01', 'Papelaria Central Ltda', '(11) 3333-4444', 'vendas@papelariacentral.com.br'),
('34.567.890/0001-12', 'Game Mania SA', '(11) 5555-6666', 'compras@gamemania.com.br'),
('45.678.901/0001-23', 'Tech Mobile Distribuidora', '(11) 7777-8888', 'contato@techmobile.com.br'),
('56.789.012/0001-34', 'Som & Cia Eletrônicos', '(11) 9999-0000', 'vendas@somcia.com.br'),
('67.890.123/0001-45', 'Distribuidora Rápida Ltda', '(11) 2222-3333', 'pedidos@distribuidorarapida.com.br');

INSERT INTO products(name, cost_price, selling_price, stock_quantity, minimum_stock, category_id, supplier_id) VALUES 
('Notebook Dell i5', 2500.00, 3200.00, 10, 2, 2, 1),
('Mesa Escritório', 450.00, 699.90, 5, 1, 3, 2),
('Mouse Wireless', 45.50, 89.90, 50, 10, 2, 1),
('Livro SQL Avançado', 45.00, 89.90, 25, 5, 4, 3),
('Caneta Esferográfica Azul', 1.20, 2.50, 200, 50, 5, 3),
('PlayStation 5', 3500.00, 4499.90, 8, 2, 6, 4),
('iPhone 15 Pro', 6500.00, 7999.90, 15, 3, 7, 5),
('Fone Bluetooth Headset', 120.00, 249.90, 30, 8, 8, 6),
('Caneta Esferográfica vermelha', 1.20, 2.50, 30, 50, 5, 3),
('Samsung Galaxy S25', 2000, 3799, 2, 5, 7, 5),
('Cadeira Gamer TGT', 500, 750.50, 1, 7, 6, 4),
('Livro SQL para Análise de dados', 50, 89.9, 3, 10, 4, 3),
('Carregador turbo', 70, 129.99, 6, 15, 2, 1);

INSERT INTO stock_movement(product_id, type, quantity, observation) VALUES
(1, 'ENTRADA', 5, 'Compra inicial'),
(1, 'SAIDA', 2, 'Venda para cliente'),
(2, 'ENTRADA', 3, 'Estoque inicial'),
(3, 'ENTRADA', 100, 'Compra em atacado'),
(3, 'SAIDA', 25, 'Venda para escola'),
(4, 'ENTRADA', 15, 'Recebimento de fornecedor'),
(4, 'SAIDA', 3, 'Demonstração para cliente'),
(5, 'ENTRADA', 50, 'Estoque de segurança');

SELECT * FROM stock_movement;