-- ================
-- CONSULTAS SQL
-- ================

-- consultando todos os autores
SELECT a.name AS Nome, a.nationality AS Nacionalidade, a.date_of_birth AS Nascimento
FROM authors a;

-- consultando por nacionaliade
SELECT a.name AS Nome, a.nationality AS Nacionalidade, a.date_of_birth
FROM authors a
WHERE nationality IN ('Brasileiro', 'Brasileira');

-- consultando as diferentes nacionalidades dos autores
SELECT DISTINCT nationality
FROM authors;

-- consultando por ordem alfabética
SELECT * FROM authors
ORDER BY name;

-- Consultando Livro/editora pela ordem nome-livro.
SELECT
	b.title AS Título,
    p.name AS Editora
FROM books b
INNER JOIN publishers p
ON p.id = b.publishers_id
ORDER BY b.title;

-- Empréstimos com informações do leitor e livro e data de devolução
SELECT
	l.loan_date AS 'Data empréstimo',
    r.name As 'Nome',
    b.title AS 'Título',
    l.expected_return_date AS 'Data estimada para devolução',
    l.actual_return_date AS 'Data da devolução'
FROM loan l
INNER JOIN readers r ON r.id = l.reader_id
INNER JOIN books b ON b.id = l.book_id;

-- Listando os livros e seus empréstimos
SELECT
	b.title AS 'Título',
    l.loan_date AS 'Data Empréstimo'
FROM books b
LEFT JOIN loan l 
ON l.book_id = b.id
ORDER BY b.title;

SELECT
	b.title AS 'Título',
    a.name AS 'Autor(a)',
    p.name AS 'Editora'
FROM books b
JOIN book_author ba ON ba.book_id = b.id
JOIN authors a ON a.id = ba.author_id
JOIN publishers p ON p.id = b.publishers_id
ORDER BY b.title;