CREATE DATABASE colaboradores_db;
USE colaboradores_db;

create table funcionarios(
id int not null auto_increment,
nome_funcionario varchar(255) not null,
telefone bigint not null,
salario bigint not null,
cargo varchar(255) not null,
primary key(id)
);

INSERT INTO `funcionarios` (`nome_funcionario`,`telefone`,`salario`,`cargo`)
VALUES ("Joao Roberto",3899,2000,"Tecnico em Eletronica");
INSERT INTO `funcionarios` (`nome_funcionario`,`telefone`,`salario`,`cargo`)
VALUES ("Augusto Teles",3888,1500,"Suporte de TI");
INSERT INTO `funcionarios` (`nome_funcionario`,`telefone`,`salario`,`cargo`)
VALUES ("Andre Carlos",3877,250,"Desenvolvedor FrontEndJr");
INSERT INTO `funcionarios` (`nome_funcionario`,`telefone`,`salario`,`cargo`)
VALUES ("Luis Eduardo",3866,4000,"Desenvolvedor BackEnd Pleno");
INSERT INTO `funcionarios` (`nome_funcionario`,`telefone`,`salario`,`cargo`)
VALUES ("Gustavo Henrique",3844,1500,"UI designer");

select * from funcionarios;


select * from funcionarios where salario<2000;

update funcionarios set salario=4000 where id=3;