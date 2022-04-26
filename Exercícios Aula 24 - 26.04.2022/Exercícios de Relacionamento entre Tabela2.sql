/* ATIVIDADE 01
Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá 
ter o seguinte nome db_generation_game_online. O sistema trabalhará com as informações dos 
personagens do jogo. 
O sistema trabalhará com 2 tabelas tb_personagens e tb_classes, que deverão estar relacionadas.

Boas Práticas:
1.	Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os personagens do Game Online. */

CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes(
	id_classe bigint auto_increment primary key,
    nome_classe varchar(50),
    versatilidade double
);

/* 2.	Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
relevantes aos personagens do Game Online.
3.	Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens. */

CREATE TABLE tb_personagens(
	id_personagem bigint auto_increment primary key,
    nome_personagem varchar(100),
    vida bigint,
    poder_ataque bigint,
    poder_defesa bigint,
    classe_id bigint,
    foreign key(id_personagem) references tb_classes(id_classe)
);

-- 4.	Insira 5 registros na tabela tb_classes.

INSERT tb_classes (nome_classe, versatilidade)
VALUES ("Guerreiro(a)", 3.0);

INSERT tb_classes (nome_classe, versatilidade)
VALUES ("Arqueiro(a)", 3.4);

INSERT tb_classes (nome_classe, versatilidade)
VALUES ("Mago/Feitiçeira", 4.2);

INSERT tb_classes (nome_classe, versatilidade)
VALUES ("Trapaceiro(a)", 4.8);

INSERT tb_classes (nome_classe, versatilidade)
VALUES ("Paladino(a)", 3.8);

INSERT tb_classes (nome_classe, versatilidade)
VALUES ("Ninja" , 4.7);

SELECT * FROM tb_classes;

/* 5.	Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para 
criar a relação com a tabela tb_classes. */

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Rafaelitos Hokage", 3000, 2500, 2000, 6);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Danith Hernian", 3250, 2700, 2300, 4);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Arthur Willheim", 3750, 1700, 3000, 5);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Chiff Vahli", 2500, 3000, 2000, 3);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Ister Fehrer", 3000, 2500, 2000, 6);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Marquineos Aguijar", 5000, 2250, 3500, 1);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Legui Lash", 4000, 1500, 2000, 2);

INSERT tb_personagens (nome_personagem, vida, poder_ataque, poder_defesa, classe_id)
VALUES ("Tukk Kabild", 4500, 2250, 2000, 6);

-- 6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

/* 7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 
1000 e 2000. */

SELECT * FROM tb_personagens WHERE poder_defesa >= 1000 AND poder_defesa <= 2000;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que 
possuam a letra C no atributo nome. */

SELECT * FROM tb_personagens WHERE nome_personagem LIKE "%c%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_personagens com os dados da tabela tb_classes. */

SELECT * FROM tb_personagens INNER JOIN tb_classes ON  tb_personagens.classe_id = 
tb_classes.id_classe;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens 
que pertençam a uma classe específica.
(Exemplo: Todes os personagens da classe dos arqueiros) */

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = 
tb_classes.id_classe WHERE id_classe = 6;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
-- --------------------------PODE DEIXAR--------------------------------------------

/* Atividade 2
Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados 
deverá ter o seguinte nome db_pizzaria_legal. O sistema trabalhará com as informações 
dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas 
tb_pizzas e tb_categorias, que deverão estar relacionadas. */

CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal; 

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar as pizzas. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome varchar(50),
    avaliacao double
);

/* 2.	Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da pizzaria. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas. 

CREATE TABLE tb_pizzas(
	id_pizza bigint auto_increment primary key,
    sabor varchar(50),
    borda varchar(50),
    preco double,
    qtd_pedacos bigint,
    categoria_id bigint,
    foreign key(id_pizza) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome, avaliacao)
VALUES ("Vegetariana", 4.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Doce", 2.5);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Exótica", 3.0);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Especial", 4.5);

INSERT tb_categorias (nome, avaliacao)
VALUES ("Simples", 3.5);

/* 5.	Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Rúcula", "Sem", 50.00, 8, 1);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Brigadeiro", "Chocolate", 60.00, 4, 2);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Abacaxi com Marmelada", "Cremosa", 55.00, 4, 3);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Quatro Queijos", "Catupiry", 40.00, 8, 4);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Mussarela", "Catupiry", 30.00, 8, 5);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Banana com Doce de Leite", "Chocolate Branco", 49.00, 4, 2);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Palmito", "Sem", 45.00, 8, 1);

INSERT tb_pizzas (sabor, borda, preco, qtd_pedacos, categoria_id)
VALUES ("Pepperoni", "Catupiry", 39.00, 8, 5);

/* 6.	Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00. */

SELECT * FROM tb_pizzas WHERE preco > 45.00;

/* 7.	Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 
e R$ 100,00. */

SELECT * FROM tb_pizzas WHERE preco >= 50.00 AND preco <= 100.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a 
letra M no atributo nome. */

SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = 
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas 
com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma 
categoria específica (Exemplo: Todas as pizzas que são doce). */

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = 
tb_categorias.id_categoria WHERE id_categoria = 1; 

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
-- --------------------------PODE DEIXAR--------------------------------------------

/* Atividade 3
Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados 
deverá ter o seguinte nome db_farmacia_bem_estar. O sistema trabalhará com as 
informações dos produtos comercializados pela empresa. O sistema trabalhará 
com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas. */

 CREATE DATABASE db_farmacia_bem_estar;
 USE db_farmacia_bem_estar;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os produtos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    avaliacao double
);

/* 2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da farmácia. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos. 

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome_produto varchar(50),
    tipo varchar(25),
    valor double,
    doses_diarias int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Comprimido", 3.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Cápsula", 4.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Antibiótico", 4.2);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Pastilha", 3.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Injetável", 2.5);

/* 5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Palhasolver", "Referência", 15.00, 3, 1);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Planífero", "Fitoterápico", 51.00, 2, 2);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Vacina COVID", "Homeopático", 65.00, 1, 5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Remedinho Gostoso pra Tosse", "Genérico", 4.50, 1, 3);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Petrilinha", "Homeopático", 25.00, 4, 4);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Imahguene", "Manipulado", 55.00, 1, 5);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Sketi", "Referência", 1.00, 10, 1);

INSERT tb_produtos (nome_produto, tipo, valor, doses_diarias, categoria_id)
VALUES ("Dramin", "Genérico", 45.00, 5, 3);

-- 6.	Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

SELECT * FROM tb_produtos WHERE valor > 50.00;

/* 7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo 
R$ 5,00 e R$ 60,00. */

SELECT * FROM tb_produtos WHERE valor >= 5.00 AND valor <= 60.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra 
C no atributo nome. */

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos). */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 5;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
-- --------------------------PODE DEIXAR--------------------------------------------

/* Atividade 4
Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. 
O nome do Banco de dados deverá ter o seguinte nome db_cidade_das_carnes ou 
cidade_dos_vegetais. O sistema trabalhará com as informações dos produtos 
comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão 
estar relacionadas. */

 CREATE DATABASE db_cidade_dos_vegetais;
 USE db_cidade_dos_vegetais;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária,
relevantes para classificar os produtos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    avaliacao double
);

/* 2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes 
aos produtos do hortifruti. */
-- 3. Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome_produto varchar(100),
    valor double,
    qtd int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

-- 4. Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Hortaliça", 2.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Frutas", 3.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Grãos", 3.5);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Legumes", 4.0);

INSERT tb_categorias (nome_categoria, avaliacao)
VALUES ("Conserva", 4.5);

/* 5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Rúcula", 55.80, 25, 1);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Maça", 27.40, 20, 2);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Couve-flor", 60.55, 40, 4);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Ervilha(lata)", 30.87, 15, 5);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Feijão", 65.26, 5, 3);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Tomate", 65.26, 15, 1);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Palmito", 60.25, 5, 5);

INSERT tb_produtos(nome_produto, valor, qtd, categoria_id)
VALUES("Melancia", 70.99, 8, 2);

-- 6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.

SELECT * FROM tb_produtos WHERE valor > 50.00;

/* 7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 
e R$ 150,00. */

SELECT * FROM tb_produtos WHERE valor >= 50.00 AND valor <= 150.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a 
 C no atributo nome. */
 
 SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";
 
/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas). */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 2;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
-- --------------------------PODE DEIXAR--------------------------------------------

/* Atividade 5
Crie um banco de dados para um serviço de uma loja de Material de Construção. 
O nome do Banco de dados deverá ter o seguinte nome db_construindo_vidas. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_produtos e tb_categorias, que deverão estar relacionadas. */

CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os produtos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    cuidados varchar(255)
);

/* 2.	Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, 
relevantes aos produtos da loja de construção. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.

CREATE TABLE tb_produtos(
	cod_produto bigint auto_increment primary key,
    nome_produto varchar(50),
    valor double,
    qtd int,
    categoria_id bigint,
    foreign key(cod_produto) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Caixas D'água", "Contatar técnico para instalação");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Argamassa", "Deixar longe das crianças");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Calhas e rufos", "Contatar pedreiro para construção");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Protetores de Construção", "Determine qual o melhor para o trabalho");

INSERT tb_categorias (nome_categoria, cuidados)
VALUES ("Drywall", "Escolha a melhor cor para você");

/* 5.	Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Caixa d'água Polietileno 1.000L Azul Fortlev", 150.00, 5, 1);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Argamassa de Porcelamento", 65.00, 10, 2);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Argamassa Massa Pronta", 71.00, 12, 2);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Calha Moldura Galvanizada", 69.52, 17, 3);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Calha Alumínio Marrom", 64.50, 16, 3);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Chapa de Drywall Standard 1,80x1,20m Branca Knauf", 120.00, 3, 4);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Chapa de Drywall Resistente ao Fogo", 130.00, 2, 4);

INSERT tb_produtos (nome_produto, valor, qtd, categoria_id)
VALUES ("Arame Recozido Trançado 1kg ArcelorMittal", 55.00, 20, 5);

-- 6.	Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.

SELECT * FROM tb_produtos WHERE valor > 100.00;

/* 7.	Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo 
R$ 70,00 e R$ 150,00. */

SELECT * FROM tb_produtos WHERE valor >= 70.00 AND valor <= 150.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam 
a letra C no atributo nome. */

SELECT * FROM tb_produtos WHERE nome_produto LIKE "%c%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias. */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = 
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos 
com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma 
categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica). */

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON  tb_produtos.categoria_id = 
tb_categorias.id_categoria WHERE id_categoria = 5;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
-- --------------------------PODE DEIXAR--------------------------------------------
/* Atividade 6
Crie um banco de dados para uma plataforma de Cursos Online (EAD). 
O nome do Banco de dados deverá ter o seguinte nome db_curso_da_minha_vida. 
O sistema trabalhará com as informações dos produtos comercializados pela empresa. 
O sistema trabalhará com 2 tabelas tb_cursos e tb_categorias, que deverão estar 
relacionadas.*/

CREATE DATABASE db_curso_da_minha_vida;
USE db_curso_da_minha_vida;

/* Boas Práticas:
1.	Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, 
relevantes para classificar os cursos. */

CREATE TABLE tb_categorias(
	id_categoria bigint auto_increment primary key,
    nome_categoria varchar(50),
    taxa_retencao int
);

/* 2.	Crie a tabela tb_cursos e determine 4 atributos, além da Chave Primária, relevantes 
aos cursos. */
-- 3.	Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.

CREATE TABLE tb_cursos(
	cod_curso bigint auto_increment primary key,
    nome_curso varchar(50),
    preco double,
    vagas int,
    categoria_id bigint,
    foreign key(cod_curso) references tb_categorias(id_categoria)
);

-- 4.	Insira 5 registros na tabela tb_categorias.

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Administração", 80);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Informática", 88);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Mecânica", 75);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Mecatrônica", 79);

INSERT tb_categorias (nome_categoria, taxa_retencao)
VALUES ("Arquitetura e Decoração", 90);

/* 5.	Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar 
a relação com a tabela tb_categorias. */

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenvolvimento JAVA", 780.50, 200, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("ADM", 650.28, 300, 1);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Conserto de Carros", 480.00, 50, 3);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Construindo com Arduíno", 800.00, 45, 4);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenvolvimento Python", 550, 150, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Desenvolvimento VSCode", 475.66, 200, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Aprendendo Tudo Sobre HTML5", 900.50, 230, 2);

INSERT tb_cursos (nome_curso, preco, vagas, categoria_id)
VALUES ("Faça Uma Estátua de si Mesmo", 1100.99, 10, 5);

-- 6.	Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.

SELECT * FROM tb_cursos WHERE preco > 500.00;

/* 7.	Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo 
R$ 600,00 e R$ 1000,00. */

SELECT * FROM tb_cursos WHERE preco >= 600.00 AND preco <= 1000.00;

/* 8.	Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que 
possuam a letra J no atributo nome. */

SELECT * FROM tb_cursos WHERE nome_curso LIKE "%J%";

/* 9.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_cursos com os dados da tabela tb_categorias. */

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id =
tb_categorias.id_categoria;

/* 10.	Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que 
pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a 
categoria Java). */

SELECT * FROM tb_cursos INNER JOIN tb_categorias ON tb_cursos.categoria_id =
tb_categorias.id_categoria WHERE id_categoria = 2;

/* 11.	Salve todas as queries para cada um dos requisitos do exercício em um único 
script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou 
sobre Banco de dados. */
-- --------------------------PODE DEIXAR--------------------------------------------
