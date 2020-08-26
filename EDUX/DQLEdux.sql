--DQL que mostra o nome dos alunos e de seus professores, e de que escola são.

USE EduX;

SELECT Aluno.NomeCompleto AS Nome_do_aluno, Professor.NomeCompleto AS Nome_do_professor, InstituicaoEnsino.Nome AS Nome_da_escola FROM Aluno
INNER JOIN AlunoTurma
ON Aluno.IdAluno = AlunoTurma.IdAluno
INNER JOIN Turma
ON Turma.IdTurma = AlunoTurma.IdTurma
INNER JOIN ProfessorTurma
ON ProfessorTurma.IdTurma = Turma.IdTurma
INNER JOIN Professor
ON Professor.IdProfessor = ProfessorTurma.IdProfessor
INNER JOIN InstituicaoEnsino
ON InstituicaoEnsino.IdInstituicaoEnsino = Professor.IdInstituicaoEnsino;