-- DDL
CREATE DATABASE meudb;
USE meudb;

CREATE TABLE pessoas(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

INSERT INTO pessoas(nome) VALUES ('Felicity Jones');
SELECT  * FROM pessoas;

-- Alter

ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;
UPDATE pessoas set mes_nascimento = 6 WHERE id = 1; 

-- DROP TABLE PESSOAS: Utilizado para deletar um banco de dados ou uma tabela  