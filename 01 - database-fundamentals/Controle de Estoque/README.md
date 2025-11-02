## Sistema de Controle de inventário

# 📊 Sobre o Projeto
Sistema completo de controle de inventário desenvolvido em MySQL, com estrutura relacional para gerenciamento de produtos, categorias, fornecedores e movimentações de estoque.

## 🗂️ Estrutura do banco de dados

# Tabelas Principais
- `category` - Categorias de produtos (Eletrônicos, Informática, Móveis, etc.)
- `supplier` - Fornecedores com CNPJ validado e informações de contato
- `products` - Cadastro de produtos com controle de preços e estoque
- `stock_movement` - Registro de entradas e saídas do estoque

# Funcionalidades do sistema
- Controle completo de estoque com quantidades mínimas
- Gestão de preços (custo e venda) com validações de negócio
- Rastreabilidade de movimentações de estoque
- Categorização de produtos
- Cadastro de fornecedores com validação de CNPJ
- Alertas de produtos abaixo do estoque mínimo


## 🗂️ Estrutura dos arquivos

# Estrutura do Projeto
- `scripts/01_database_schema.sql` - Criação do banco de dados, tabelas, constraints e relacionamentos
- `scripts/02_sample_data.sql` - Dados de exemplo para popular o sistema (categorias, fornecedores, produtos e movimentações)
- `scripts/03_queries.sql` - Consultas SQL para análise de dados e relatórios


##  🎯 Objetivos de Aprendizado
- [x] Modelagem de banco de dados relacional
- [x] Constraints e validações de dados (CHECK, UNIQUE, FOREIGN KEY)
- [x] Relacionamentos 1-N (categoria↔produtos, fornecedor↔produtos)
- [x] Tipos de dados apropriados (DECIMAL, ENUM, TIMESTAMP)
- [x] Inserção e manipulação de dados

## 🔍 Principais Consultas Implementadas
- Listagem de produtos abaixo do estoque mínimo
- Produtos ordenados por preço (maior/menor)
- Contagem total de produtos
- Identificação do produto mais caro e mais barato

Sistema ideal para pequenos e médios negócios que necessitam de controle de inventário eficiente e confiável.