INSERT INTO Departamento (id_departamento, nome, descricao) VALUES
  (1, 'Tecnologia', 'Departamento responsável pelos cursos de tecnologia'),
  (2, 'Negócios', 'Departamento responsável pelos cursos de negócios'),
  (3, 'Design', 'Departamento responsável pelos cursos de design');

INSERT INTO Curso (id_curso, nome, descricao, departamento_id) VALUES
  (1, 'Desenvolvimento Full Stack', 'Curso de desenvolvimento web full stack', 1),
  (2, 'Gestão de Projetos', 'Curso de gestão de projetos', 2),
  (3, 'Design de Interfaces', 'Curso de design de interfaces', 3);

INSERT INTO Facilitador (id_facilitador, nome, email, telefone, departamento_id) VALUES
  (1, 'João Silva', 'joao.silva@resilia.com', '(11) 99999-9999', 1),
  (2, 'Maria Santos', 'maria.santos@resilia.com', '(11) 88888-8888', 2),
  (3, 'Pedro Souza', 'pedro.souza@resilia.com', '(11) 77777-7777', 3);

INSERT INTO Modulo (id_modulo, nome, descricao, curso_id, facilitador_id) VALUES
  (1, 'Introdução ao Desenvolvimento Web', 'Módulo introdutório de desenvolvimento web', 1, 1),
  (2, 'Desenvolvimento Back-End', 'Módulo de desenvolvimento back-end', 1, 1),
  (3, 'Desenvolvimento Front-End', 'Módulo de desenvolvimento front-end', 1, 1),
  (4, 'Gerenciamento de Projetos', 'Módulo de gerenciamento de projetos', 2, 2),
  (5, 'Design de Interfaces para Web', 'Módulo de design de interfaces para web', 3, 3);

INSERT INTO Aluno (id_aluno, nome, email, telefone, data_nascimento, turma_id, curso_id, modulo_atual_id, data_inicio, data_conclusao, nota) VALUES
  (1, 'Ana Silva', 'ana.silva@gmail.com', '(11) 66666-6666', '1995-01-01', 1, 1, 1, '2022-01-01', '2022-03-01', 9.5),
  (2, 'Bruno Souza', 'bruno.souza@hotmail.com', '(11) 55555-5555', '1997-05-01', 1, 1, 2, '2022-01-01', NULL, NULL),
  (3, 'Carlos Santos', 'carlos.santos@yahoo.com.br', '(11) 44444-4444', '1999-03-01', 2, 2, 4, '2022-02-01', NULL, NULL),
  (4, 'Débora Alves', 'debora.alves@uol.com.br', '(11) 33333-3333', '1998-02-01', 2, 2, 4, '2022-02-01', NULL, NULL);
  
