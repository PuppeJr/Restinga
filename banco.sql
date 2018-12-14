create database restinga;

use restinga;

create table negocios(
ramo_negocios varchar (50) not null,
nome_negocios varchar(100)not null,
primary key (ramo_negocios)
);

insert into negocios(ramo_negocios,nome_negocios)
values
('restaurante','    ');
insert into negocios(ramo_negocios,nome_negocios)
values
('supermercado','    ');
insert into negocios(ramo_negocios,nome_negocios)
values
('atacado','    ');
insert into negocios(ramo_negocios,nome_negocios)
values
('armarinho','      ');
insert into negocios(ramo_negocios,nome_negocios)
values
('loja','       ');

select*from negocios;


create table ramo(
id int unsigned not null auto_increment,        
usuario_id int unsigned default null,
restaurante varchar(20) not null,
supermercado varchar (50) not null,
atacado varchar(30) not null, 
armarinho varchar(30) not null,
loja varchar(30) not null,
primary key (id),
CONSTRAINT fk_ramo_negocios
FOREIGN KEY (negocios)
REFERENCES usuario(id)
);
insert ramo (id,usuario_id,restaurante,supermercado,atacado,armarinho,loja)
values
(null,'restaurante','supermercado','atacado','armarinho','loja');

create table usuario(
id int unsigned not null auto_increment,
Nome varchar(50) not null,
genêro enum ('F','M'),
Endereço varchar (50) not null,
Bairro varchar (50)not null,
Cep varchar(8)not null,
ramo_negocios varchar(2)not null,
primary key(id),
constraint fk_ramo
foreign key (usuario)
references ramo(id)
);

insert into usuario
(id,Nome,genêro,Endereço,Bairro,Cep,sigla_estado)
values
(1,'Nome','genêro','Endereço','Bairro','Cep','sigla_estado');
