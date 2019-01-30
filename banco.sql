CREATE DATABASE restinga;

use restinga;

CREATE TABLE clientes(
	id int unsigned NOT NULL auto_increment,
	nome varchar(50) NOT NULL,
	genero enum ('F','M'),
	endereço varchar (50) NOT NULL,
	bairro varchar (50) NOT NULL,
	cep varchar(8) NOT NULL,
	ramo_negocios varchar(50) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_ramo
	FOREIGN KEY (usuario)
	REFERENCES loja(id)
);

INSERT INTO clientes
(id,nome,genero,endereço,bairro,cep,ramo_negocios)
VALUES
(null,'nome','genero','endereco','bairro','cep','ramo_negocios');

CREATE TABLE loja(
	id int unsigned NOT NULL auto_increment,
	nome varchar(100) NOT NULL,
	endereço varchar(100) NOT NULL,
	cep: 
	PRIMARY KEY (loja)
);

INSERT INTO Loja(id, nome, endereço, cep)
VALUES
('restaurante','    ');
INSERT INTO negocios(ramo_negocios,nome_negocios)
VALUES
('supermercado','    ');
INSERT INTO negocios(ramo_negocios,nome_negocios)
VALUES
('atacado','    ');
INSERT INTO negocios(ramo_negocios,nome_negocios)
VALUES
('mercado','      ');
INSERT INTO negocios(ramo_negocios,nome_negocios)
VALUES
('loja','       ');


CREATE TABLE ramos(
	id int unsigned NOT NULL auto_increment,        
	usuario_id int unsigned default null,
	restaurante varchar(50) NOT NULL,
	supermercado varchar (50) NOT NULL,
	atacado varchar(50) NOT NULL, 
	mercado varchar(50) NOT NULL,
	loja varchar(30) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_ramo_negocios
	FOREIGN KEY (negocios)
	REFERENCES usuario(id)
);

INSERT ramo (id,usuario_id,restaurante,supermercado,atacado,mercado,loja)
VALUES
(null,'restaurante','supermercado','atacado','mercado','loja');

CREATE TABLE 


