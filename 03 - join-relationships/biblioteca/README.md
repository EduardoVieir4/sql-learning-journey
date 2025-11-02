## Gerenciamento de biblioteca

# 📊 Sobre o Projeto
Sistema completo de gerenciamento de biblioteca desenvolvido em MySQL, com estrutura relacional para controle de acervo, autores, editoras, leitores e empréstimos.

## 🗂️ Estrutura do banco de dados

# Tabelas Principais
- `authors` - Cadastro de autores com nacionalidade e data de nascimento
- `publishers` - Editoras com informações de localização
- `books` - Acervo de livros com dados de publicação
- `readers` - Leitores cadastrados na biblioteca
- `book_author` - Tabela de relacionamento N-N entre livros e autores
- `loan` - Controle completo de empréstimos e devoluções

# Funcionalidades do sistema
- Cadastro completo de livros com múltiplos autores
- Controle de editoras e suas localidades
- Gestão de leitores com dados de contato
- Sistema de empréstimos com datas de retorno
- Relacionamento muitos-para-muitos entre livros e autores


## 🗂️ Estrutura dos arquivos

# Estrutura do Projeto
- `scripts/01_database_schema.sql` - Criação do banco de dados, tabelas, chaves estrangeiras e relacionamentos
- `scripts/02_sample_data.sql` - Dados de exemplo para popular o sistema (autores, editoras, livros, leitores e empréstimos)
- `scripts/03_queries.sql` - Consultas SQL para relatórios e análise do acervo


##  🎯 Objetivos de Aprendizado
- [x] Modelagem de banco de dados relacional complexa
- [x] Relacionamentos N-N através de tabela associativa (book_author)
- [x] Chaves estrangeiras e integridade referencial
- [x] Consultas JOIN complexas com múltiplas tabelas
- [x] Manipulação de datas para controle de empréstimos
- [x] Distinção entre LEFT JOIN e INNER JOIN
- [x] Ordenação e filtragem de resultados

## 🔍 Principais Consultas Implementadas

# Consultas básicas
- Listagem completa de autores com nacionalidade
- Filtro por nacionalidade brasileira
- Identificação de nacionalidades distintas
- Ordenação alfabética de autores

# Consultas com JOIN
- Livros e Editoras: Relação completa ordenada por título
- Empréstimos Detalhados: Informações completas de leitores, livros e datas
- Livros e Autores: Listagem completa com múltiplos autores por livro
- Análise de Empréstimos: LEFT JOIN para identificar livros nunca emprestados

Sistema ideal para bibliotecas de pequeno e médio porte que necessitam de controle eficiente de acervo e empréstimos.