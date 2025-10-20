CREATE DATABASE library;

USE library;

-- criando tabela autores
CREATE TABLE authors(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    nationality VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    PRIMARY KEY(id)
);

-- criando tabela editoras
CREATE TABLE publishers(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    PRIMARY KEY(id)
);

ALTER TABLE publishers ADD city VARCHAR(60); 

-- criando a tabela livros
CREATE TABLE books(
	id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    publication_date INT NOT NULL,
    publishers_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(publisher_id) REFERENCES publishers(id)
);

-- criando tabela leitores
CREATE TABLE readers(
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    registration_date DATE DEFAULT (CURRENT_DATE),
    PRIMARY KEY(id)
);

-- criando tabela relacionamento livro_autor
CREATE TABLE book_author(
	book_id INT NOT NULL,
    author_id INT NOT NULL,
    PRIMARY KEY(book_id, author_id),
    FOREIGN KEY(book_id) REFERENCES books(id),
    FOREIGN KEY(author_id) REFERENCES authors(id)
);

-- criando tabela empréstimo
CREATE TABLE loan(
	id INT NOT NULL AUTO_INCREMENT,
    reader_id INT NOT NULL,
    book_id INT NOT NULL,
    loan_date DATE NOT NULL,
    expected_return_date DATE NOT NULL,
    actual_return_date DATE,
    PRIMARY KEY(id),
    FOREIGN KEY(reader_id) REFERENCES readers(id),
    FOREIGN KEY(book_id) REFERENCES books(id)
);