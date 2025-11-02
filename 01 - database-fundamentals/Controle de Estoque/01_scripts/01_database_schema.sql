CREATE DATABASE IF NOT EXISTS inventory_control;
USE inventory_control;

-- tabela categoria
CREATE TABLE category(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE,
    description TEXT,
    creation_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    active BOOLEAN DEFAULT TRUE
);

-- modificando coluna id
ALTER TABLE category
MODIFY COLUMN id  INT NOT NULL AUTO_INCREMENT;

-- tabela fornecedores
CREATE TABLE supplier(
	id INT NOT NULL PRIMARY KEY,
    cnpj VARCHAR(18) UNIQUE NOT NULL, -- Formato: 00.000.000/0000-00
    company_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    
    CONSTRAINT chk_cnpj_format
    CHECK (cnpj REGEXP '^[0-9]{2}\.[0-9]{3}\.[0-9]{3}/[0-9]{4}-[0-9]{2}$')
);

-- modificando coluna id
ALTER TABLE supplier
MODIFY COLUMN id INT NOT NULL AUTO_INCREMENT;

-- tabela produtos
CREATE TABLE products(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    cost_price DECIMAL(10,2) NOT NULL,
    selling_price DECIMAL(10,2) NOT NULL,
    stock_quantity INT DEFAULT 0,
    minimum_stock INT DEFAULT 0,
    category_id INT,
    supplier_id INT,
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    
    -- foreign keys
    CONSTRAINT fk_product_category
		FOREIGN KEY (category_id)
        REFERENCES category(id)
        ON DELETE SET NULL,
        
	CONSTRAINT fk_product_supplier
		FOREIGN KEY (supplier_id)
        REFERENCES supplier(id)
        ON DELETE SET NULL,
        
	-- constraints de negócios
    CONSTRAINT chk_positive_price
    CHECK (cost_price > 0 AND selling_price > 0),
    
    CONSTRAINT chk_higher_selling_price
    CHECK (selling_price >= cost_price),
    
    CONSTRAINT chk_non_negative_stock
    CHECK (stock_quantity >= 0),
    
    CONSTRAINT chk_minimum_positive_stock
    CHECK (minimum_stock >= 0)
);


CREATE TABLE stock_movement(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    type ENUM('ENTRADA', 'SAIDA') NOT NULL,
    quantity INT NOT NULL,
    movement_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    observation VARCHAR(200),
    
    CONSTRAINT fk_movement_product
		FOREIGN KEY(product_id)
		REFERENCES products(id),
        
	CONSTRAINT chk_positive_quantity
	CHECK (quantity > 0)
);


