CREATE DATABASE IF NOT EXISTS db_loja;

USE db_loja;

DROP TABLE IF EXISTS tb_venda;
CREATE TABLE IF NOT EXISTS tb_venda (
id_nf INT NOT NULL,
id_item INT NOT NULL,
cod_prod INT NOT NULL, 
valor_unit DOUBLE (4,2) NOT NULL,
quantidade INT,
desconto INT
);

INSERT INTO tb_venda(id_nf, id_item,cod_prod, valor_unit,quantidade,desconto ) 
VALUES
(1, 1, 1, 25.00, 10, 5),
(1, 2, 2, 13.50, 3, NULL),
(1, 3, 3, 15.00, 2, NULL),
(1, 4, 4, 10.00, 1, NULL),
(1, 5, 5, 30.00, 1, NULL),
(2, 1, 3, 15.00, 4, NULL),
(2, 2, 4, 10.00, 5, NULL),
(2, 3, 5, 30.00, 7, NULL),
(3, 1, 1, 25.00, 5, NULL),
(3, 2, 4, 10.00, 4, NULL),
(3, 3, 5, 30.00, 5, NULL),
(3, 4, 2, 13.50, 7, NULL),
(4, 1, 5, 30.00, 10, 15),
(4, 2, 4, 10.00, 12, 5),
(4, 3, 1, 25.00, 13, 5),
(4, 4, 2, 13.50, 15, 5),
(5, 1, 3, 15.00, 3, NULL),
(5, 2, 5, 30.00, 6, NULL),
(6, 1, 1, 25.00, 22, 15),
(6, 2, 3, 15.00, 25, 20),
(7, 1, 1, 25.00, 10, 3),
(7, 2, 2, 13.50, 10, 4),
(7, 3, 3, 15.00, 10, 4),
(7, 4, 5, 30.00, 10, 1);

/* 1. */

SELECT tb_venda.id_nf, id_item,cod_prod, valor_unit
FROM tb_venda
WHERE desconto IS NULL;

/* 2. */
SELECT tb_venda.id_nf, id_item,cod_prod, valor_unit, valor_unit - (valor_unit*(desconto/100))
AS "valor_vendido"
FROM tb_venda
WHERE desconto IS NOT NULL;

/* 3. */
UPDATE tb_venda
SET desconto = 0
WHERE desconto IS NULL;

/* 4 */
SELECT tb_venda.id_nf, id_item,cod_prod, valor_unit, valor_unit*quantidade
AS "valor_total",valor_unit - (valor_unit*(desconto/100))
AS "valor_vendido"
FROM tb_venda
WHERE id_item IS NOT NULL;

/* 5. */ 
SELECT tb_venda.id_nf, valor_unit*quantidade
AS "valor_total"
FROM tb_venda
WHERE id_item IS NOT NULL
ORDER BY id_nf DESC;

/* 6. */
SELECT tb_venda.id_nf, 
ORDER BY id_nf DESC;

