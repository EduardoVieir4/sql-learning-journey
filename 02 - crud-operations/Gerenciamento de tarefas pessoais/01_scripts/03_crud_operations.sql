USE task_manager;

-- =============================================
-- OPERAÇÕES CRUD
-- =============================================


-- ================================================
--  					CREATE
-- ================================================
INSERT INTO tasks(title, description, delivery_time, status, id_user, id_category) VALUES 
('Preparar apresentação', 'Slides para reunião de equipe', '2025-09-18', 'Concluída',6, 1);

-- ================================================
--  					READ
-- ================================================
-- Ler todas as tarefas de um usuário específico
SELECT * FROM tasks
WHERE id_user = 2;

-- Ler todas as tarefas Pendentes e Em andamento
SELECT * FROM tasks
WHERE status IN ('Pendente', 'Em andamento');

-- Selecionar a tarefa e status de uma categoria específica
SELECT
	title AS 'Tarefa',
    status AS 'Status'
FROM tasks
WHERE id_category = 2;

-- ================================================
--  					UPDATE
-- ================================================

-- atualizando o status de uma tarefa

UPDATE tasks SET status = 'Em andamento'
WHERE id = 2;

-- atualizando o prazo de entrega de uma tarefa
UPDATE tasks SET delivery_time = '2025-09-09'
WHERE id = 12;

UPDATE tasks SET delivery_time = '2025-10-20'
WHERE id = 14;

UPDATE tasks SET delivery_time = '2025-10-15'
WHERE id = 15;

-- ================================================
--  					DELETE
-- ================================================
-- Excluindo uma tarefa
DELETE FROM tasks
WHERE id = 12;
