CREATE DATABASE if not exists db_generation_game_online;
use db_generation_game_online;

CREATE TABLE tb_classes(
id int not null auto_increment,
arqueiro boolean,
lutador boolean,
elfo boolean,
goblin boolean,
berserker boolean,
primary key(id)
);

CREATE TABLE tb_personagens(
id bigint not null auto_increment,
nome varchar(15) not null,
sexo_feminino boolean,
sexo_masculino boolean,
sexo_indefinido boolean,
poder_de_ataque int not null,
poder_de_defesa int not null,
id_classes int,
foreign key (id_classes) references tb_classes(id),
primary key(id)
); 

INSERT INTO  tb_classes (`arqueiro`, `lutador`,`elfo`, `goblin`, `berserker`)
value (true, false, false, false, false);
INSERT INTO  tb_classes (`arqueiro`, `lutador`,`elfo`, `goblin`, `berserker`)
value (false, false, true, false, false);
INSERT INTO  tb_classes (`arqueiro`, `lutador`,`elfo`, `goblin`, `berserker`)
value (false, false, false, true, false);
INSERT INTO  tb_classes (`arqueiro`, `lutador`,`elfo`, `goblin`, `berserker`)
value (false, true, false, false, false);
INSERT INTO  tb_classes (`arqueiro`, `lutador`,`elfo`, `goblin`, `berserker`)
value (false, false, false, false, true);

select * from tb_classes;

INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Oliver Queen", false, true, false, 500, 1000,1);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Soluss", false,false,true, 3000, 1200,2);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Ali B", false, true, false, 800, 800,3);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Lee Bruce", false, true, false, 7400, 1800,4);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Kitana A", true, false, false, 2500, 4000,5);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Akali", true, false, false, 3500, 4000,null);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Jade", true, false, false, 2500, 2000,null);
INSERT INTO  tb_personagens(`nome`,`sexo_feminino`,`sexo_masculino`,`sexo_indefinido`,`poder_de_ataque`,`poder_de_defesa`,`id_classes`)
value ("Liu Kang", false, true, false, 6000, 1300,null);

select * from tb_personagens where poder_de_ataque>2000;
select * from tb_personagens where poder_de_defesa>1000 && poder_de_defesa<2000;
select * from tb_personagens where nome like '%C%';
select * from tb_personagens inner join tb_classes on tb_personagens.id_classes=tb_classes.id;
select * from tb_personagens inner join tb_classes on tb_personagens.id_classes=tb_classes.id where lutador=1;
