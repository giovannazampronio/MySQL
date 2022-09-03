create database db_pizzaria_legal;
USE db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
tipo varchar(255),
regime varchar(255),
primary key(id)
);

INSERT INTO tb_categorias(tipo, regime)
values("Salgada", "Vegetariana");
INSERT INTO tb_categorias(tipo, regime)
values("Salgada", "Comum");
INSERT INTO tb_categorias(tipo, regime)
values("Doce", "Vegetariana");
INSERT INTO tb_categorias(tipo, regime)
values("Doce", "Comum");
SELECT * FROM tb_categorias;

create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255),
preco decimal(5,2),
massa varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categorias (id)
);

INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Mussarela", 45.90, "Massa grossa", 1);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Calabresa", 45.90, "Massa grossa", 2);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Pepperoni", 60.90, "Massa grossa", 2);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Rucula com tomate seco", 60.90, "Massa fina", 1);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Chocolate com banana", 40.90, "Massa fina", 3);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("M&M", 50.90, "Massa fina", 3);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Chocolate com morango", 50.90, "Massa fina", 3);
INSERT INTO tb_pizzas (sabor, preco, massa, categoria_id)
values("Doce de leite com farofa de bacon", 55.90, "Massa fina", 4);
SELECT * FROM tb_pizzas;

-- Inner Join
SELECT sabor, preco, massa, tb_categorias.tipo, tb_categorias.regime
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

-- Valor maior que 45 reais
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- Valor entre 50 e 100 reais
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

-- Pizzas contendo a letra M
SELECT * FROM tb_pizzas WHERE sabor LIKE "%m%";

-- Inner Join 2
SELECT sabor, tb_categorias.regime
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id WHERE tb_categorias.regime = "Vegetariana";



