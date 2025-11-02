USE task_manager;

-- ============================
-- INSERÇÃO DE DADOS
-- ============================

INSERT INTO users(name, cpf, email, registration_date) VALUES 
('João Silva', '123.456.789-00', 'joaoSilva@email.com', '2025-08-10 14:30:00'),
('Maria Natividade', '987.654.321-00', 'maria.natividade@email.com', '2025-09-13 13:00:10'),
('Eduardo Nogueira', '197.544.107-98', 'eduardovnogueira10@gmail.com', '2025-10-20 12:40:45'),
('Ciclano Ramos', '111.222.333-44', 'ciclano.ramos@email.com', '2025-09-01'),
('Isaac Newton', '000.000.000-00', 'newton@email.com', '2025-10-25 12:00:00'),
('Clarice', '456.789.321-000', 'clarice@email.com', '2025-09-16 19:45:13');

INSERT INTO categories(name) VALUES
('Trabalho'),
('Estudos'),
('Pessoal'),
('Casa');

INSERT INTO tasks(title, description, delivery_time, status, id_user, id_category) VALUES
('Finalizar relatório trimestral', 'Concluir a análise de dados e gerar gráficos', '2025-08-30', 'Em andamento', 1, 1),
('Estudar SQL', 'Praticar subqueries correlacionadas e não-correlacionadas', '2025-10-20', 'Pendente', 3, 2),
('Fazer compras do mês', 'Comprar itens para a despensa e limpeza', '2025-10-08', 'Pendente', 4, 4),
('Revisar projeto de BD', 'Revisar o modelo entidade-relacionamento do portfólio', '2025-09-12', 'Concluída', 2, 2),
('Agendar dentista', 'Ligar para marcar consulta de rotina', '2025-08-20', 'Pendente', 5, 3),
('Preparar slides para apresentação', 'Criar apresentação sobre normalização de banco de dados', '2025-08-18', 'Pendente', 6, 2),
('Configurar ambiente de desenvolvimento', 'Instalar MySQL Workbench e configurar conexões', '2025-09-11', 'Em andamento', 1, 1),
('Estudar comandos DDL e DML', 'Revisão de CREATE, ALTER, INSERT, UPDATE, DELETE', '2025-10-03', 'Concluída', 2, 2),
('Fazer backup do projeto', 'Backup dos arquivos SQL e documentação', '2025-10-12', 'Pendente', 3, 1),
('Implementar consultas analíticas', 'Desenvolver queries com GROUP BY e agregações', '2025-09-16', 'Em andamento', 4, 2),
('Criar diagrama ER do projeto', 'Diagrama entidade-relacionamento usando dbdiagram.io', '2025-10-05', 'Concluída', 5, 2),
('Organizar armário do quarto', 'Separar roupas para doação e reorganizar', '2024-09-09', 'Pendente', 5, 3),
('Pagar conta de luz', 'Pagamento via internet banking', '2024-10-10', 'Concluída', 6, 4),
('Marcar médico', 'Agendar consulta com cardiologista', '2024-10-20', 'Pendente', 4, 3),
('Planejar férias', 'Pesquisar destinos e fazer orçamento', '2024-11-15', 'Pendente', 2, 3);






