CREATE DATABASE restinga;

use restinga;

CREATE TABLE usuario(
	id int unsigned NOT NULL auto_increment,
	nome varchar(50) NOT NULL,
	genero enum ('F','M'),
	endereço varchar (50) NOT NULL,
	bairro varchar (50) NOT NULL,
	cep varchar(8) NOT NULL,
	ramo_negocios varchar(2) NOT NULL,
	PRIMARY KEY(id),
	CONSTRAINT fk_ramo
	FOREIGN KEY (usuario)
	REFERENCES ramo(id)
);

INSERT INTO usuario
(id,nome,genero,endereço,bairro,cep,sigla_estado)
VALUES
(1,'nome','genero','endereco','bairro','cep','sigla_estado');

CREATE TABLE negocios(
	ramo_negocios varchar (50) NOT NULL,
	nome_negocios varchar(100) NOT NULL,
	PRIMARY KEY (ramo_negocios)
);

INSERT INTO negocios(ramo_negocios,nome_negocios)
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
('armarinho','      ');
INSERT INTO negocios(ramo_negocios,nome_negocios)
VALUES
('loja','       ');

SELECT * FROM negocios;


CREATE TABLE ramos(
	id int unsigned NOT NULL auto_increment,        
	usuario_id int unsigned default null,
	restaurante varchar(20) NOT NULL,
	supermercado varchar (50) NOT NULL,
	atacado varchar(30) NOT NULL, 
	armarinho varchar(30) NOT NULL,
	loja varchar(30) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT fk_ramo_negocios
	FOREIGN KEY (negocios)
	REFERENCES usuario(id)
);

INSERT ramo (id,usuario_id,restaurante,supermercado,atacado,armarinho,loja)
VALUES
(null,'restaurante','supermercado','atacado','armarinho','loja');


