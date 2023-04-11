--1. Selecionar a quantidade total de estudantes cadastrados no banco;
select count (MATRICULA) as QTDE_DE_ALUNOS_MATRICULADOS
 FROM ALUNOS
 

--2. Selecionar todos os estudantes com os respectivos cursos que eles estão cadastrados;
SELECT alunos.nome, cursos.nome
 from alunos
 inner join alunos_cursos
 on alunos.matricula = Alunos_Cursos.Matricula_aluno
 left join cursos
 on alunos_cursos.id_cursos = cursos.id
 order by alunos.nome
 
--3. Selecionar quais pessoas facilitadoras atuam em mais de uma turma.
SELECT Facilitadores.Nome, COUNT(DISTINCT Cursos_Facilitadores.ID_cursos) AS Quantidade_Turmas
FROM Facilitadores 
INNER JOIN Cursos_Facilitadores  ON Facilitadores.ID = Cursos_Facilitadores.ID_facilitadores
GROUP BY Facilitadores.Nome
HAVING COUNT(DISTINCT Cursos_Facilitadores.ID_cursos) > 1;