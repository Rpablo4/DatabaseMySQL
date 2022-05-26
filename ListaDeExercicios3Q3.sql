CREATE DATABASE if not exists db_farmacia_bem_estar;
use db_farmacia_bem_estar;


CREATE TABLE tb_categorias(
id int not null auto_increment,
cosmeticos boolean,
remedio boolean,
primary key(id)
); 

CREATE TABLE tb_produtos(
id int not null auto_increment,
nome varchar(255) not null,
validade date,
preco decimal(5,2),
marca varchar(255) not null,
id_cat int,
foreign key (id_cat) references tb_categorias(id),
primary key(id)
);


INSERT INTO  tb_categorias (`cosmeticos`, `remedio`)
value (true, false);
INSERT INTO  tb_categorias (`cosmeticos`, `remedio`)
value (true,false);
INSERT INTO  tb_categorias (`cosmeticos`, `remedio`)
value (false, true);
INSERT INTO  tb_categorias (`cosmeticos`, `remedio`)
value (false, true);
INSERT INTO tb_categorias (`cosmeticos`, `remedio`)
value (false, true);

INSERT INTO  tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Batom", "2023/04/07", 7.99, "Avon", 1);
INSERT INTO  tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Blush", "2023/08/12", 12.99, "Avon", 2);
INSERT INTO tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Dipirona", "2025/11/09", 10.99, "DipiMed", 3);
INSERT INTO  tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Paracetamol", "2024/02/13", 13.99, "MedKit", 4);
INSERT INTO  tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Benegripe", "2026/02/07", 14.99, "Benegripe", 5);
INSERT INTO  tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Sabonete de rosto", "2029/01/06", 3.99, "Nivea",null);
INSERT INTO  tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Camisinha", "2023/04/07", 4.99, "Prudence",null);
INSERT INTO tb_produtos(`nome`,`validade`,`preco`,`marca`,`id_cat`)
value ("Anticoncepcional", "2026/04/07", 5.99, "nextDay",null);

select * from tb_produtos where preco>50;
select * from tb_produtos where preco>5 && preco<60;
select * from tb_produtos where nome like '%C%';
select * from tb_produtos inner join tb_categorias on tb_produtos.id_cat=tb_categorias.id;
select * from tb_produtos inner join tb_categorias on tb_produtos.id_cat=tb_categorias.id where cosmeticos=1;
