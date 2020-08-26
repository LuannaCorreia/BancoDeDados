USE EDUX;

SELECT * FROM Aluno;
SELECT * FROM AlunoObjetivo;
SELECT * FROM AlunoTurma;
SELECT * FROM Categoria;
SELECT * FROM Curso;
SELECT * FROM Dica;
SELECT * FROM InstituicaoEnsino;
SELECT * FROM Objetivo;
SELECT * FROM Post;
SELECT * FROM Professor;
SELECT * FROM ProfessorTurma;
SELECT * FROM Turma;

-- DANIEL

INSERT INTO Professor VALUES
	('Paulo Brandão', 'paulo@gmail.com', '123', 1),
	('Diego', 'diego@gmail.com', '456', 1);

INSERT INTO AlunoTurma VALUES
	(1, 1),
	(2, 1),
	(3, 1),
	(4, 1),
	(5, 1);

INSERT INTO AlunoObjetivo (IdAluno, IdObjetivo) VALUES 
	(1, 2);





--MURILO

INSERT INTO Aluno (NomeCompleto, Email, Senha, Ra, QtdPontos) VALUES
	('Murilo Fernandes Dellize', 'murilo@gmail.com', '87cv7b8c4', '5488', 8.7),
	('Eduardo Almeida', 'eduardo@gmail.com', '2g2d11g', '2214', 9.7),
	('Thiago Nunes', 'thiago@gmail.com', '84wgw7gr4', '9687', 9.5),
	('Daniel Amaral', 'daniel@gmail.com', 'dad844wa', '0478', 9.2),
	('Luanna Correia', 'luana@gmail.com', 'd4awqqd55', '7849', 9.9);

INSERT INTO Post (Texto, Imagem, QtdCurtida, IdProfessor, IdAluno) VALUES
	('aaaaaaaaaaaaaa', 'img.jpeg', 200, NULL, 1),
	('bbbbbbbbbbbbbb', 'img.jpeg', 365, 2, NULL);

SELECT * FROM Aluno;
SELECT * FROM Post;





-- LUANA

USE EDUX;
INSERT INTO Curso
VALUES	('Desenvolvimento de Sistemas', 'Aprender a programar sistemas', 'Tecnologia', '1600');

INSERT INTO Turma
VALUES	('2 - 2020 - 2SDT', 40, 40, 1);




-- TIAGO

INSERT INTO Dica
	(titulo, descricao, IdProfessor)
	VALUES
	('Raízes de uma função de 2º grau','Acesse o link: .https://blog.professorferretto.com.br/equacao-do-2-grau-e-o-metodo-da-soma-e-produto/', 1),
	('Dica de filme - Rede de ódio','O filme fala sobre como fake news podem influenciar a política interna de um país.', 2),
	('Dica de livro - 1984','O livro de George Orwell fala sobre os riscos da ascenção de regimes autoritários.', 1),
	('Dica de estudo de exatas','Utilizem o site Kahn Academy.', 2);

INSERT INTO ProfessorTurma VALUES
	(1, 1),
	(2, 1);



-- EDUARDO

INSERT INTO InstituicaoEnsino (Nome, Logradouro, Numero, Bairro, Cidade, UF, Telefone, CEP) VALUES
('Edux','Rua Alameda Barão de Limeira', '539', 'Santa Cecília', 'São Paulo', 'SP', '(11) 3273-5000', '01202-001');

INSERT INTO Categoria (Tipo) VALUES
('Crítico'),
('Oculto'),
('Desejável');

INSERT INTO Objetivo (Titulo, Descricao, IdCategoria) VALUES 
('Escrever Sintaxe corretamente', 'Não obter nem um erro na escrita da Sintaxe', 1),
('Entregar as atividades no prazo estipulado', 'Todas as atividades devem ser entregues em um prazo determinado pelo professor', 1),
('Acresentar a atividade', 'Acresentar coisa que não foram pedidas, mas que agrega a atividade', 2);