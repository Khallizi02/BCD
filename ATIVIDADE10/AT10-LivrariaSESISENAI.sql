-- Criando banco de dados
CREATE DATABASE db_livraria;

USE db_livraria;

-- Criando as tabelas 

CREATE TABLE tb_cliente(
id_cliente int PRIMARY KEY NOT NULL AUTO_INCREMENT,
 nome Varchar (20) NOT NULL,
 cpf Varchar (11) NOT NULL,
 rg Varchar (11) NOT NULL,
 email Varchar (20) NOT NULL 
);

CREATE TABLE tb_editora(
id_editora int PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome_editora Varchar (20) NOT NULL,
nome_contato Varchar (20) NOT NULL,
email Varchar (20) NOT NULL,
contato Varchar (20) NOT NULL
);

CREATE TABLE tb_livro(
id_livro int PRIMARY KEY NOT NULL AUTO_INCREMENT,
titulo Varchar (20) NOT NULL,
categoria Varchar (20) NOT NULL,
isbn Varchar (13) NOT NULL,
ano DATE,
valor DECIMAL(10,2),
autor Varchar (20) NOT NULL
);

ALTER TABLE tb_livro
ADD COLUMN EDITORA_id_editora int;

ALTER TABLE tb_livro
ADD  FOREIGN KEY (EDITORA_id_editora)
REFERENCES tb_editora(id_editora);

CREATE TABLE tb_estoque(
quantidade INT NOT NULL
);

ALTER TABLE tb_estoque
ADD COLUMN LIVRO_id_livro int;

ALTER TABLE tb_estoque 
ADD  FOREIGN KEY (LIVRO_id_livro)
REFERENCES tb_livro(id_livro);

CREATE TABLE tb_clientes_telefone(
id_telefone int PRIMARY KEY NOT NULL AUTO_INCREMENT,
telefone Varchar(15)
);

ALTER TABLE tb_clientes_telefone
ADD COLUMN CLIENTE_id_cliente int;

ALTER TABLE tb_clientes_telefone
ADD  FOREIGN KEY (CLIENTE_id_cliente)
REFERENCES tb_cliente(id_cliente);

CREATE TABLE tb_cliente_endereco(
id_endereco int PRIMARY KEY NOT NULL AUTO_INCREMENT,
rua Varchar (20) NOT NULL,
numero int NOT NULL,
cidade Varchar (20) NOT NULL,
estado Varchar (20) NOT NULL
);

ALTER TABLE tb_cliente_endereco
ADD COLUMN CLIENTE_id_cliente int;

ALTER TABLE tb_cliente_endereco
ADD  FOREIGN KEY (CLIENTE_id_cliente)
REFERENCES tb_cliente(id_cliente);

CREATE TABLE tb_pedido(
 id_pedido int PRIMARY KEY NOT NULL AUTO_INCREMENT,
 valor DECIMAL(10,2),
 ano DATE 
);

ALTER TABLE tb_pedido
ADD COLUMN CLIENTE_id_cliente int;

ALTER TABLE tb_pedido
MODIFY COLUMN valor DECIMAL(10,2)  NOT NULL;

ALTER TABLE tb_pedido
MODIFY COLUMN ano date  NOT NULL;

ALTER TABLE tb_pedido
ADD FOREIGN KEY (CLIENTE_id_cliente)
REFERENCES tb_cliente(id_cliente);

CREATE TABLE tb_item_pedido(
quantidade int NOT NULL,
valor DECIMAL (10,2) NOT NULL
);

ALTER TABLE tb_item_pedido
add COLUMN CLIENTE_id_cliente int;

ALTER TABLE tb_item_pedido
ADD FOREIGN KEY (CLIENTE_id_cliente)
REFERENCES tb_cliente(id_cliente);

ALTER TABLE tb_item_pedido
ADD COLUMN LIVRO_id_livro int;