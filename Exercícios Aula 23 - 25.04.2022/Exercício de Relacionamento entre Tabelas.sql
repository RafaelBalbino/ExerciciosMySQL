/* 1.	Crie um banco de dados para um serviço de uma quitanda, onde o sistema trabalhará 
com as informações dos produtos desta empresa. */

CREATE DATABASE db_servicos_quitanda;

/* 2.	Crie uma tabela de produtos e determine 5 atributos relevantes para se trabalhar 
com o serviço desta quitanda. */

USE db_servicos_quitanda;

CREATE TABLE tb_produtos(
    cod_produto bigint auto_increment primary key,
    nome varchar(100),
    valor decimal(65, 2),
    qtd bigint,
    avaliacao double,
    id_categoria bigint,
    foreign key(cod_produto) references tb_categoria(id_categoria)
);

-- 3. Crie uma tabela de categorias para esses produtos.
/* 4. Faça o relacionamento de categorias na tabela de produto através da foreign key 
(id_categoria) */

CREATE TABLE tb_categoria(
    id_categoria bigint auto_increment primary key,
    nome_categoria varchar(100)
);

-- 5.	Insira nestas tabelas no mínimo 5 dados (registros).
INSERT tb_categoria(nome_categoria)
VALUES("Hortaliça");

INSERT tb_categoria(nome_categoria)
VALUES("Fruta");

INSERT tb_categoria(nome_categoria)
VALUES("Legume");

INSERT tb_categoria(nome_categoria)
VALUES("Conserva");

INSERT tb_categoria(nome_categoria)
VALUES("Grãos");
-- --------------------------------------------------------------------------------------- --
INSERT tb_produtos(nome, valor, qtd, avaliacao, id_categoria)
VALUES("Alface", 15.80, 25, 4.5, 1);

INSERT tb_produtos(nome, valor, qtd, avaliacao,id_categoria)
VALUES("Banana", 27.40, 20, 4.0, 2);

INSERT tb_produtos(nome, valor, qtd, avaliacao, id_categoria)
VALUES("Batata", 60.55, 40, 4.9, 3);

INSERT tb_produtos(nome, valor, qtd, avaliacao, id_categoria)
VALUES("Milho(lata)", 30.87, 15, 3.0, 4);

INSERT tb_produtos(nome, valor, qtd, avaliacao, id_categoria)
VALUES("Arroz", 65.26, 5, 2.5, 5);

-- 6.	Faça um SELECT que retorne todos os produtos.

SELECT * FROM tb_produtos;

-- 7.	Faça um SELECT que retorne todas as categorias.

SELECT * FROM tb_categoria;

-- 8.	Faça um SELECT que retorne todas as categorias com produtos de valor maior do que 50.

SELECT * FROM tb_categoria INNER JOIN tb_produtos ON  tb_categoria.id_categoria = 
tb_produtos.id_categoria WHERE tb_produtos.valor > 50.00;

-- 9.	Faça um SELECT que retorne todos os produtos que contém a letra %a%.

SELECT * FROM tb_produtos WHERE nome LIKE "%a%";

-- 10.	Ao término atualize um registro desta tabela através de uma query de atualização.

UPDATE tb_produtos SET nome = "Pêssego" WHERE cod_produto = 2;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único script 
(arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados. */
-- -------------------------------- PODE DEIXAR! ----------------------------------------- --
