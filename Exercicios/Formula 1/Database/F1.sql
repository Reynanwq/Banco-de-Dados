CREATE DATABASE formula_01;
USE formula_01;

-- SECAO SELECT

SELECT * FROM construtores;
SELECT * FROM circuit;

-- APENAS PARA REALIZAR A PRATICA DE PRIMARY KEY E FOREIGN KEY
ALTER TABLE piloto 
ADD CONSTRAINT fk_construtores FOREIGN KEY (i_construtores) REFERENCES construtores (id);

-- TIVE QUE DELETAR O BANCO DE DADOS
DROP DATABASE formula_1;

-- TIVE QUE DELETAR A TABELA E CRIAR NOVAMENTE
DROP TABLE piloto;
DELETE FROM circuit WHERE id = 2;
DROP TABLE circuit;

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

INSERT INTO circuit (nome) VALUES (' Circuito Internacional do Barém, Sakhir');
INSERT INTO circuit (nome) VALUES ('Circuito Corniche de Gidá, Gidá');
INSERT INTO circuit (nome) VALUES ('Circuito do Grande Prêmio de Melbourne, Melbourne');
INSERT INTO circuit (nome) VALUES ('Circuito Urbano de Bacu, Bacu');
INSERT INTO circuit (nome) VALUES ('Autódromo Internacional de Miami, Miami Gardens');
INSERT INTO circuit (nome) VALUES ('Autódromo Enzo e Dino Ferrari, Ímola');
INSERT INTO circuit (nome) VALUES ('Circuito de Mônaco, Monte Carlo');
INSERT INTO circuit (nome) VALUES ('Circuito de Barcelona-Catalunha, Montmeló');
INSERT INTO circuit (nome) VALUES ('Circuito Gilles Villeneuve, Montreal');
INSERT INTO circuit (nome) VALUES ('Red Bull Ring, Spielberg');
INSERT INTO circuit (nome) VALUES ('Circuito de Silverstone, Silverstone');
INSERT INTO circuit (nome) VALUES ('Hungaroring, Mogyoród');
INSERT INTO circuit (nome) VALUES ('Circuito de Spa-Francorchamps, Stavelot');
INSERT INTO circuit (nome) VALUES ('Circuito de Zandvoort, Zandvoort');
INSERT INTO circuit (nome) VALUES ('Autódromo Nacional de Monza, Monza');
INSERT INTO circuit (nome) VALUES ('Circuito Urbano de Marina Bay, Singapura');
INSERT INTO circuit (nome) VALUES ('Curso Internacional de Corridas de Suzuka, Suzuka');
INSERT INTO circuit (nome) VALUES ('Circuito Internacional de Losail, Lusail');
INSERT INTO circuit (nome) VALUES ('Circuito das Américas, Austin');
INSERT INTO circuit (nome) VALUES ('Autódromo Hermanos Rodríguez, Cidade do México');
INSERT INTO circuit (nome) VALUES ('Autódromo José Carlos Pace, São Paulo');
INSERT INTO circuit (nome) VALUES ('Circuito Urbano de Las Vegas, Las Vegas');
INSERT INTO circuit (nome) VALUES ('Circuito de Yas Marina, Abu Dhabi');


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
