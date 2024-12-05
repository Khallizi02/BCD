DROP DATABASE IF EXISTS db_musica;

CREATE DATABASE IF NOT EXISTS db_musica;

USE  db_musica;

CREATE TABLE IF NOT EXISTS tb_musica(
id_musica INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
estilo VARCHAR(25),
tempo TIME,
FOREIGN KEY(CANTOR_id_cantor) references tb_cantor(id_cantor)
);

CREATE TABLE IF NOT EXISTS tb_cantor(
id_cantor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
idade INT NOT NULL,
altura DOUBLE,
ouvintes_mensais INT,
nacionalidade VARCHAR(50) NOT NULL
)

