CREATE DATABASE secao04;

USE secao04; 

CREATE TABLE tipos_produtos(
	codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL
);

CREATE TABLE produtos(
 codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
 descricao VARCHAR(30) NOT NULL,
 preco DECIMAL(8, 2) NOT NULL,
 codigo_tipo INT NOT NULL,
 FOREIGN KEY(codigo_tipo) REFERENCES tipos_produtos(codigo)
);

INSERT INTO tipos_produtos(descricao) VALUES ('Computadores');
INSERT INTO tipos_produtos(descricao) VALUES ('Notebooks');

INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Desktop', '1200', 1);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Laptop', '1800', 1);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Impressora. jato de tinta', '300', 2);
INSERT INTO produtos(descricao, preco, codigo_tipo) VALUES ('Impressora. Laser', '500', 2);

#DQL

SELECT * FROM tipos_produtos;

SELECT codigo, descricao FROM tipos_produtos;

SELECT * FROM produtos;

#ALIAS - APELIDOS

SELECT p.codigo AS 'Codigo', p.descricao AS 'Descricao', p.preco AS 'Preco', p.codigo_tipo AS 'Tipo Produto' FROM produtos AS p;

