## Gerenciamento de tarefas 

# 📊 Sobre o Projeto
Sistema completo de gerenciamento de tarefas desenvolvido em MySQL, com estrutura relacional para organizar usuários, categorias e tarefas de forma eficiente.

## 🗂️ Estrutura do banco de dados

# Tabelas Principais
- `users` - Cadastro de usuários com CPF e email únicos
- `categories` - Categorias para organização das tarefas (Trabalho, Estudos, Pessoal, Casa)
- `tasks` - Gerenciamento completo de tarefas com prazos e status

# Funcionalidades do sistema
- Cadastro de usuários com validação de CPF e email
- Categorização de tarefas para melhor organização
- Controle de status (Pendente, Em andamento, Concluída)
- Gestão de prazos de entrega
- Operações CRUD completas para gerenciamento de tarefas


## 🗂️ Estrutura dos arquivos

# Estrutura do Projeto
- `scripts/01_database_schema.sql` - Criação do banco de dados, tabelas e relacionamentos
- `scripts/02_sample_data.sql` - Dados de exemplo para popular o sistema (usuários, categorias e tarefas)
- `scripts/03_crud_operations.sql` - Operações CRUD completas (Create, Read, Update, Delete)


##  🎯 Objetivos de Aprendizado
- [x] Modelagem de banco de dados relacional
- [x] Constraints e validações de dados (UNIQUE, FOREIGN KEY)
- [x] Relacionamentos 1-N (usuários↔tarefas, categorias↔tarefas)
- [x] Tipos de dados apropriados (ENUM, TIMESTAMP, DATE)
- [x] Operações CRUD completas (CREATE, READ, UPDATE, DELETE)
- [x] Consultas com filtros e condições (WHERE, IN)
- [x] Gestão de estados com tipos ENUM

## 🔍 Principais Consultas Implementadas

# Operações READ
- Listagem de tarefas por usuário específico
- Filtro de tarefas por status (Pendente/Em andamento)
- Seleção de tarefas por categoria específica
- Consulta de título e status das tarefas

# Operações UPDATE
- Atualização de status das tarefas
- Modificação de prazos de entrega
- Ajuste de datas para organização temporal

# Operação DELETE
- Remoção segura de tarefas específicas

Sistema ideal para indivíduos e pequenas equipes que necessitam de organização eficiente de tarefas e prazos.