CREATE DATABASE if not exists db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_pizzas(
id int not null auto_increment,
nome varchar(255) not null,
tamanho varchar(255) not null,
preco decimal (4,2) not null,
borda varchar(255),
id_categoria int,
foreign key (id_categoria) references tb_pizzas(id),
primary key(id)
);

CREATE TABLE tb_categorias(
id bigint not null auto_increment,
doce boolean,
salgada boolean,
primary key(id)
); 

INSERT INTO  tb_categorias (`doce`, `salgada`)
value (false, true);
INSERT INTO  tb_categorias(`doce`, `salgada`)
value (false, true);
INSERT INTO  tb_categorias (`doce`, `salgada`)
value (false, true);
INSERT INTO tb_categorias (`doce`, `salgada`)
value (true, false);
INSERT INTO  tb_categorias (`doce`, `salgada`)
value (false, true);

INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Portuguesa", "M", 27.99, "Catupiry",1);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Calabresa", "G", 32.99, null,2);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Baiana", "M", 33.99, null,3);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Banana", "M", 35.99, null,4);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Lombo Canadense", "G", 64.40, "Cheddar",5);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Moda", "G", 78.99, null,6);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Frango com Catupiry", "M", 33.99, "Catupiry",7);
INSERT INTO  tb_pizzas(`nome`,`tamanho`,`preco`,`borda`,`id_categoria`)
value ("Chocolate", "P", 24.40, null,8);

select * from tb_pizzas where preco>45.00;
select * from tb_pizzas where preco>50 && preco<100;
select * from tb_pizzas where nome like '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id;
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.id_categoria = tb_categorias.id where doce is true;
