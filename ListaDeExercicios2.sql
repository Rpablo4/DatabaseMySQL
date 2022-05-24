CREATE DATABASE if not exists quitanda_gen_db;

use quitanda_gen_db;



CREATE TABLE produtos_tb(
id int not null  auto_increment primary key,
nome_quitanda varchar(255) not null,
preco decimal(5,2) not null,
fruta boolean not null,
legume boolean not null
);

INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Maçã", 2.50, true, false);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Banana", 2.00, true, false);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Batata", 3.00, false, true);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Cenoura", 1.50, false, true);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Abacaxi", 7.00, true, false);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Abóbora", 3.50, false, true);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Xuxu", 1.00, false, true);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Kiwi", 1.80, true, true);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Abacate", 3.50, false, true);
INSERT INTO `produtos_tb` (`nome_quitanda`,`preco`,`fruta`,`legume`)
VALUE ("Melão", 4.00, true, false);

select * from produtos_tb where fruta = 1;
select * from produtos_tb where legume = 1;

update produtos_tb set fruta= 0 where id=8;

set sql_safe_updates =0;

delete from produtos_tb where legume=1;