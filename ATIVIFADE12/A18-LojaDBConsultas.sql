DROP DATABASE IF EXISTS db_senai;

CREATE DATABASE IF NOT EXISTS db_senai;

USE db_senai;

CREATE TABLE IF NOT EXISTS  tb_curso(
id_curso INT PRIMARY KEY AUTO_INCREMENT,
nome_curso VARCHAR(30) NOT NULL UNIQUE,
carga_horaria INT UNSIGNED,
ano YEAR
);

INSERT INTO tb_curso (nome_curso, carga_horaria, ano) VALUES 
('engenheira de SOFTWARE', 260, 2022),
('Adiministração', 400,2021),
('Medicina', 360, NULL),
('Direito', NULL,NULL),
('Arquitetura', 420, 2023),
('Psicologiai', 480, 2023),
('Biomedicina', NULL, 2021),
('Educação Fisica',360,2022),
('Engenharia Civil', 400,2018),
('Farmacia',400, 2022),
('Veterinaria',500,NULL),
('Design Grafico', 360,2023),
('Ciencia da COmputação', 480,2020),
('Contabilidade',400,2019),
('Gestão de Recursos Humanos',360,2023),
('Sistemas de Informação',480,2022),
('Enegenharia Eletrica',400,2020),
('Marketing', 360, 2021),
('Turismo', 320,2023),
('Ciencias Biologicas', 420, 2019);

SELECT * FROM tb_curso
ORDER BY nome_curso DESC;

 SELECT nome_curo, ano FROM tb_curso
ORDER BY ano DESC;

SELECT nome_curso, ano FROM tb_curso
WHERE ano = 2020
ORDER BY nome_curso;

SELECT nome_curso, ano FROM tb_curso
WHERE ano > 2020
ORDER BY nome_curso;

SELECT nome_curso, ano FROM tb_curso 
WHERE ano != 2020
ORDER BY nome_curso;

SELECT nome_curso, ano FROM tb_curso
WHERE carga_horaria > 360 AND carga_horaria < 500
ORDER BY nome_curso;

SELECT nome_curso FROM tb_curso
WHERE carga_horaria > 360 or ano = 2018
ORDER BY nome_curso;

SELECT nome_curso FROM tb_curso
WHERE NOT carga_horaria > 360 or ano = 2018
ORDER BY nome_curso;

SELECT nome_curso, ano FROM tb_curso
WHERE  ano IS NULL;

SELECT nome_curso, ano FROM tb_curso
WHERE ano IS NOT NULL;

SELECT nome_curso ,carga_horaria ,ano FROM tb_curso
WHERE carga_horaria BETWEEN 400 AND 480
ORDER BY ano ASC, nome_curso DESC;

SELECT nome_curso, ano FROM tb_curso
WHERE ano IN(2018, 2020,2023);

SELECT * FROM tb_curso
WHERE nome_curso like 'A%';

SELECT * FROM tb_curso
WHERE nome_curso like'%A%';

SELECT * FROM tb_curso
WHERE nome_curso NOT LIKE '%A%';

SELECT * FROM tb_curso
WHERE nome_curso LIKE 'Adm%o';

SELECT * FROM tb_curso
WHERE nome_curso like 'Eng%a%';

SELECT * FROM tb_curso
WHERE nome_curso LIKE 'Dir__to';

SELECT COUNT(*) FROM tb_curso;

SELECT COUNT(*) FROM tb_curso 
WHERE carga_horaria > 400;

SELECT COUNT(carga_horaria) FROM tb_curso;

SELECT COUNT(carga_horaria) FROM tb_curso
WHERE ano = 2018;

SELECT MIN(carga_horaria) FROM tb_curso
WHERE ano = 2002;

SELECT SUM(carga_horaria) FROM tb_curso
WHERE ano = 2021;

SELECT AVG(carga_horaria) AS media
FROM tb_curso
WHERE ano = 2023;

SELECT carga_horaria AS carga, COUNT(*) AS contagem
FROM tb_curso
GROUP BY carga_horaria
ORDER BY carga_horaria;

SELECT carga_horaria AS carga, COUNT(*) AS contagem
FROM tb_curso
WHERE ano > 2019
GROUP BY carga_horaria
HAVING carga_horaria > (SELECT AVG(carga_horaria) FROM tb_curso)
ORDER BY carga_horaria;






