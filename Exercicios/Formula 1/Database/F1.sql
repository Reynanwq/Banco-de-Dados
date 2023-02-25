CREATE DATABASE formula_01;
USE formula_01;

-- SECAO SELECT

SELECT * FROM construtores;

-- APENAS PARA REALIZAR A PRATICA DE PRIMARY KEY E FOREIGN KEY
ALTER TABLE piloto 
ADD CONSTRAINT fk_construtores FOREIGN KEY (i_construtores) REFERENCES construtores (id);

-- TIVE QUE DELETAR O BANCO DE DADOS
DROP DATABASE formula_1;

-- TIVE QUE DELETAR A TABELA E CRIAR NOVAMENTE
DROP TABLE piloto;


-- INSERINDO CONSTRUTORES
INSERT INTO construtores (nome) VALUES ('Scuderia Ferrari');
INSERT INTO construtores (nome) VALUES ('Suíça Alfa Romeo F1 Team Stake');
INSERT INTO construtores (nome) VALUES ('França BWT Alpine F1 Team');
INSERT INTO construtores (nome) VALUES (' Aston Martin Aramco Cognizant F1 Team');
INSERT INTO construtores (nome) VALUES ('MoneyGram Haas F1 Team');
INSERT INTO construtores (nome) VALUES ('McLaren F1 Team');
INSERT INTO construtores (nome) VALUES ('Mercedes-AMG Petronas F1 Team');
INSERT INTO construtores (nome) VALUES (' Oracle Red Bull Racing');
INSERT INTO construtores (nome) VALUES ('Williams Racing');
INSERT INTO construtores (nome) VALUES ('Scuderia AlphaTauri');


-- ATUALIZACOES QUE PRECISARAM SER FEITAS NA  TABELA CONSTRUTORES
UPDATE construtores SET nome = 'Alfa Romeo F1 Team Stake'
	WHERE id = 2;
    
UPDATE construtores SET nome = 'BWT Alpine F1 Team' 
	WHERE id = 3;

UPDATE construtores SET nome = 'Aston Martin Aramco Cognizant F1 Team'
	WHERE id = 4;
    
UPDATE construtores SET nome = 'Oracle Red Bull Racing'
	WHERE id = 8;


-- SECAO CRIANDO TABELAS

CREATE TABLE IF NOT EXISTS construtores(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS piloto(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL,
    i_construtores INT 
);

CREATE TABLE IF NOT EXISTS chefe_de_equipe(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    nacionalidade VARCHAR(50) NOT NULL,
    construtores VARCHAR(50)
    -- FOREIGN KEY (construtores) REFERENCES construtores(nome)
);

CREATE TABLE IF NOT EXISTS grand_prix(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS circuit(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(400) NOT NULL
);

CREATE TABLE IF NOT EXISTS race_date(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    race_day VARCHAR(200) NOT NULL,
    grand_prix VARCHAR(400)
    -- FOREIGN KEY (grand_prix) REFERENCES grand_prix(name)
);

CREATE TABLE IF NOT EXISTS pontos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    points INT NOT NULL,
    piloto VARCHAR(50)
    -- FOREIGN KEY (piloto) REFERENCES piloto(name)
);
