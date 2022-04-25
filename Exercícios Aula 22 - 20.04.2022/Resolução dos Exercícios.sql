-- ATIVIDADE 1
/* 1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema 
trabalhará com as informações dos colaboradores desta empresa. */

CREATE DATABASE db_servicos_RH;

/* 2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para 
se trabalhar com o serviço deste RH. */

USE db_servicos_RH;

CREATE TABLE tb_colaboradores(
	id_colaborador int auto_increment primary key,
    nome varchar(200),
    cargo varchar(20),
    celular varchar(12),
    cpf varchar(100),
    salario decimal(65, 2)
);
ALTER TABLE tb_colaboradores MODIFY salario decimal(65, 3);
ALTER TABLE tb_colaboradores MODIFY cargo varchar(50);

/* 3. Insira nesta tabela no mínimo 5 dados (registros). */

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Rafael Balbino", "Analista de Sistemas", "92345-2384", "12345-678", 2.500);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Ester Ferreira", "Supervisora", "98520-8253", "23456-908", 4.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Daniel Hernan", "RH", "98008-5345", "40028-922", 5.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Sérgio Vasconcelos", "Analista de Sistemas", "92345-2384", "12258-036", 2.000);

INSERT INTO tb_colaboradores(nome, cargo, celular, cpf, salario)
VALUES("Pablo Vineiro", "Faxineiro", "91479-2382", "72953-672", 1.250);

/* 4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000. */

SELECT * FROM tb_colaboradores WHERE salario > 2.000;

/* 5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000. */

SELECT * FROM tb_colaboradores WHERE salario <= 2.000;

/* 6. Ao término atualize um registro desta tabela através de uma query de atualização. */

UPDATE tb_colaboradores SET salario = 2.000 WHERE id_colaborador = 4;
UPDATE tb_colaboradores SET cargo = "Desenvolvedor JAVA Full Stack Jr." WHERE id_colaborador = 1;
UPDATE tb_colaboradores SET celular = "98734-8291" WHERE id_colaborador = 4;

SELECT * FROM tb_colaboradores;

/* 7.	Salve todas as queries para cada um dos requisitos do exercício em um único script 
(arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados. */
-- -------------------------------------- Pode Deixar! -------------------------------------

-- ATIVIDADE 2

/* 1.	Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações 
dos produtos deste e-commerce. */

CREATE DATABASE db_comercio;

/* 2.	Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se 
trabalhar com o serviço deste e-commerce. */

USE db_comercio; 

CREATE TABLE tb_produtos(
	cod_prod int auto_increment primary key,
    nome varchar(200),
    qtd bigint,
    avaliacao decimal(65, 2),
    valor decimal(65, 3)
);

/* 3.	Insira nesta tabela no mínimo 8 dados (registros). */

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Notebook", 15, 4.5, 2.000);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Computador", 20, 4.3, 3.000);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Celular LG X Power", 25, 4.0, 750); 

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Geladeira", 5, 3.5, 1.500);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("TV", 10, 3.0, 2.500);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Liquidificador", 30, 4.9, 250.00);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Air Fryer", 45, 2.5, 150.00);

INSERT INTO tb_produtos (nome, qtd, avaliacao, valor)
VALUES("Modem", 50, 2.0, 100.00);

/* 4.	Faça um SELECT que retorne todes os produtos com o valor maior do que 500. */

SELECT * FROM tb_produtos WHERE valor > 5;

/* 5.	Faça um SELECT que retorne todes os produtos com o valor menor do que 500. */

SELECT * FROM tb_produtos WHERE valor < 5;

/* 6.	Ao término atualize um registro desta tabela através de uma query de atualização. */

UPDATE tb_produtos SET qtd = 100 WHERE cod_prod = 8;

SELECT * FROM tb_produtos;

/* 7.	Salve todas as queries para cada um dos requisitos do exercício em um único script 
(arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados. */
-- -------------------------------------- Pode Deixar! -------------------------------------

-- ATIVIDADE 3

/*
1.	Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as 
informações dos estudantes deste registro dessa escola. */

CREATE DATABASE db_escola;

/* 2.	Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos 
relevantes dos estudantes para se trabalhar com o serviço dessa escola. */

USE db_escola;
CREATE TABLE tb_estudantes(
	id_estudante int auto_increment primary key,
    nome_est varchar(200),
    idade int,
    serie varchar(3),
    periodo varchar(10),
    nota decimal(65,1)
);

/* 3.	Insira nesta tabela no mínimo 8 dados (registros). */

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Rafael Balbino", 20, "8ªA", "Integral", 8.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Charlie Brown", 48, "9ªC", "Noturno", 9.5);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Chico Bia", 90, "1ªE", "Diurno", 6.5);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Maria Antonieta", 18, "5ªD", "Integral", 7.8);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Marcelo Vigarista", 45, "7ªC", "Noturno", 6.9);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Xavier Brew", 19, "6ªE", "Integral", 8.2);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Priscila Brinaw", 25, "8ªA", "Integral", 8.7);

INSERT INTO tb_estudantes (nome_est, idade, serie, periodo, nota)
VALUES("Jefferson Bahxarel", 30, "9ªA", "Integral", 10.0);

/* 4.	Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0. */

SELECT * FROM tb_estudantes WHERE nota > 7.0;

/* 5.	Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.*/

SELECT * FROM tb_estudantes WHERE nota < 7.0;

/* 6.	Ao término atualize um registro desta tabela através de uma query de atualização. */

UPDATE tb_estudantes SET nota = 6.0 WHERE id_estudante = 2;

SELECT * FROM tb_estudantes;

/* 7.	Salve todas as queries para cada um dos requisitos do exercício em um único script 
(arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre 
Banco de dados. */
-- -------------------------------------- Pode Deixar! -------------------------------------