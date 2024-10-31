DROP DATABASE IF EXISTS db_senai;

CREATE DATABASE IF NOT EXISTS db_senai;

USE db_senai;

CREATE TABLE IF NOT EXISTS tb_curso (
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nome_curso VARCHAR(30) NOT NULL UNIQUE,
carga_horaria INT UNSIGNED NOT NULL,
ano YEAR NOT NULL
);

CREATE TABLE IF NOT EXISTS tb_aluno ( 
id_professor int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome varchar(30) NOT NULL,
nascimento date,
sexo enum('M','F'),
nacionalidade varchar(20) DEFAULT 'Brasileira',
CURSOS_id_curso int,
FOREIGN KEY (CURSOS_id_curso) REFERENCES tb_curso(id_curso)
);

INSERT INTO tb_curso (nome_curso, carga_horaria, ano) VALUES
('Programação em Python', 120, 2023),
('Análise de Dados com SQL', 80, 2024),
('Design Gráfico', 150, 2023),
('Marketing Digital', 100, 2024),
('Administração de Empresas', 200, 2023),
('Engenharia de Software', 250, 2024),
('Ciência da Computação', 300, 2023),
('Direito', 180, 2024),
('Medicina', 400, 2023),
('Educação Física', 120, 2024);

INSERT INTO tb_aluno VALUES
(DEFAULT, 'João Silva', '1995-05-10', 'M', 'Italiana', 1),
(DEFAULT, 'Maria Oliveira', '1998-02-20', 'F', DEFAULT, 2),
(DEFAULT, 'Pedro Santos', '2000-08-15', 'M', 'Argentina', NULL),
(DEFAULT, 'Ana Costa', '1997-11-25', 'F', DEFAULT, 4),
(DEFAULT, 'Carlos Ferreira', '2002-04-07', 'M', DEFAULT, NULL),
(DEFAULT, 'Letícia Almeida', '1999-09-12', 'F', 'Francesa', 6),
(DEFAULT, 'Rafael Gomes', '2001-03-28', 'M', DEFAULT, 7),
(DEFAULT, 'Isabela Pereira', '1996-07-05', 'F', DEFAULT, NULL),
(DEFAULT, 'Gustavo Santos', '2003-10-22', 'M', 'Espanhola', 9),
(DEFAULT, 'Camila Oliveira', '2004-01-18', 'F', DEFAULT, 10),
(DEFAULT, 'Bruno Alves', '1996-11-30', 'M', DEFAULT, 1),
(DEFAULT, 'Clara Torres', '1995-08-14', 'F', DEFAULT, NULL),
(DEFAULT, 'Diego Ribeiro', '2000-12-01', 'M', 'Mexicana', 3),
(DEFAULT, 'Isabela Gomes', '1998-04-25', 'F', 'Peruana', 4),
(DEFAULT, 'Gustavo Martins', '2001-02-18', 'M', DEFAULT, NULL),
(DEFAULT, 'Juliana Soares', '1997-09-09', 'F', DEFAULT, 6),
(DEFAULT, 'Marcelo Nascimento', '2003-07-04', 'M', DEFAULT, NULL),
(DEFAULT, 'Patrícia Lima', '1999-05-12', 'F', 'Africana', NULL),
(DEFAULT, 'Thiago Dias', '2000-01-21', 'M', 'Brasileira', 9),
(DEFAULT, 'Luana Ferreira', '2002-03-16', 'F', 'Brasileira', 10);

SELECT * FROM tb_curso;
SELECT * FROM tb_aluno;

SELECT tb_aluno.nome, tb_curso.nome_curso 
FROM tb_aluno 
INNER JOIN tb_curso 
ON tb_aluno.CURSOS_id_curso = tb_curso.id_curso;

SELECT *
FROM tb_aluno
LEFT JOIN tb_curso
ON tb_aluno.CURSOS_id_curso = tb_curso.id_curso;

SELECT *
FROM tb_aluno
RIGHT JOIN tb_curso
ON tb_aluno.CURSOS_id_curso = tb_curso.id_curso
WHERE tb_curso.ano = 2023
ORDER BY tb_aluno.nome;












