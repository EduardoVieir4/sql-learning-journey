-- ============================
-- INSERÇÃO DE DADOS
-- ============================

-- populando tabela editoras
INSERT INTO publishers(name) VALUES ('Editora A');
INSERT INTO publishers(name) VALUES ('Editora B');
INSERT INTO publishers(name) VALUES ('Editora C');
INSERT INTO publishers(name) VALUES ('Editora D');

-- populando tabela autores
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Paulo Coelho', 'Brasileiro', '1947-08-24');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Mario Sergio Cortella', 'Brasileiro', '1954-03-05');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Machado de Assis', 'Brasileiro', '1839-06-21');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('José de Alencar', 'Brasileiro', '1829-05-01');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Clarice Lispector', 'Ucraniana', '1920-12-10');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Jane Austen', 'Inglesa', '1775-12-16');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Viola Davis', 'Norte-americana', '1965-08-11');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Itamar Vieira Junior', 'Brasileiro', '1979-08-06');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Conceição Evaristo', 'Brasileira', '1946-11-29');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('João do Rio', 'Brasileiro', '1881-08-01');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('João do Rio', 'Brasileiro', '1881-08-01');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Frei Betto', 'Brasileiro', '1944-08-25');
INSERT INTO authors(name, nationality, date_of_birth) VALUES ('Leonardo Boff', 'Brasileiro', '1938-12-14');

-- populando tabela livros
INSERT INTO books(title, publication_date, publishers_id) VALUES ('O Alquimista', 1988, 3);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Por que fazemos o que fazemos?', 2016, 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Dom Casmurro', '1899', 2);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('O alienista', '1882', 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Iracema', '1865', 4);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Ubirajara', '1874', 4);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('A hora da estrela', '1977', 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Água viva', '1973', 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('A paixão segundo G.H', '1964', 4);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Razão e sensibilidade', '1811', 4);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Persuasão', '1817', 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Orgulho e preconceito', '1813', 2);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Em busca de mim', '2022', 4);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Torto arado', '2016', 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Olhos de água', '2014', 3);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('O homem da cabeça de papelão', '2023', 1);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Felicidade foi-se embora?', '2018', 3);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('Batismo de Sangue', '2000', 2);
INSERT INTO books(title, publication_date, publishers_id) VALUES ('A águia e a galinha', '1997', 2);

-- populando tabela leitores
INSERT INTO readers (name, email, phone, registration_date) VALUES ('Eduardo Nogueira', 'eduardovnogueira10@gmail.com', '(22) 998175508', '2024-10-22');
INSERT INTO readers (name, email, phone, registration_date) VALUES ('Fulano da Silva', 'fulano@email.com', '(11) 123456789', '2010-05-20');
INSERT INTO readers (name, email, phone, registration_date) VALUES ('Beltrano Nunes', 'beltrano@email.com', '(01) 234567891', '2025-11-01');
INSERT INTO readers (name, email, phone, registration_date) VALUES ('Cleopatra Almeida', 'cleo@email.com', '(21) 987654321', '2025-01-13');
INSERT INTO readers (name, email, phone, registration_date) VALUES ('Maria da Silva', 'maria@email.com', '(98) 987456123', '2018-08-16');

-- populando a tabel book_author com seus relacionamentos
INSERT INTO book_author(book_id, author_id) VALUES (1, 1);
INSERT INTO book_author(book_id, author_id) VALUES (2, 2);
INSERT INTO book_author(book_id, author_id) VALUES (3, 3);
INSERT INTO book_author(book_id, author_id) VALUES (4, 3);
INSERT INTO book_author(book_id, author_id) VALUES (5, 4);
INSERT INTO book_author(book_id, author_id) VALUES (6, 4);
INSERT INTO book_author(book_id, author_id) VALUES (7, 5);
INSERT INTO book_author(book_id, author_id) VALUES (8, 5);
INSERT INTO book_author(book_id, author_id) VALUES (9, 5);
INSERT INTO book_author(book_id, author_id) VALUES (10, 6);
INSERT INTO book_author(book_id, author_id) VALUES (11, 6);
INSERT INTO book_author(book_id, author_id) VALUES (12, 6);
INSERT INTO book_author(book_id, author_id) VALUES (13, 7);
INSERT INTO book_author(book_id, author_id) VALUES (14, 8);
INSERT INTO book_author(book_id, author_id) VALUES (15, 9);
INSERT INTO book_author(book_id, author_id) VALUES (16, 10);
INSERT INTO book_author(book_id, author_id) VALUES (17, 2);
INSERT INTO book_author(book_id, author_id) VALUES (17, 11);
INSERT INTO book_author(book_id, author_id) VALUES (17, 12);
INSERT INTO book_author(book_id, author_id) VALUES (18, 11);
INSERT INTO book_author(book_id, author_id) VALUES (19, 12);

-- populando tabela empréstimos
INSERT INTO loan(reader_id, book_id, loan_date, expected_return_date, actual_return_date) VALUES (1, 1, '2025-10-19', '2025-11-19', NULL);
INSERT INTO loan(reader_id, book_id, loan_date, expected_return_date, actual_return_date) VALUES (4, 7, '2025-08-11', '2025-09-15', '2025-09-10');
INSERT INTO loan(reader_id, book_id, loan_date, expected_return_date, actual_return_date) VALUES (5, 14, '2025-08-30', '2025-09-30', NULL);
INSERT INTO loan(reader_id, book_id, loan_date, expected_return_date, actual_return_date) VALUES (2, 15, '2025-09-01', '2025-10-01', '2025-10-15');
INSERT INTO loan(reader_id, book_id, loan_date, expected_return_date, actual_return_date) VALUES (3, 3, '2025-08-17', '2025-09-17', NULL);
INSERT INTO loan(reader_id, book_id, loan_date, expected_return_date, actual_return_date) VALUES (4, 9, '2025-10-19', '2025-11-19', NULL);