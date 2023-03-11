CREATE DATABASE formula_01;
USE formula_01;

-- SECAO SELECT

SELECT * FROM construtores;
SELECT * FROM circuit;
SELECT * FROM grand_prix;
SELECT * FROM race_date;
SELECT * FROM chefe_de_equipe;
SELECT * FROM piloto;
SELECT * FROM pontos;

-- TABELA COMPLETA
SELECT const.nome AS 'Equipe', race.race_day AS 'Data', chefe.nome AS 'Chefe de Equipe', driver.nome AS 'Piloto', pon.points AS 'Pontuação Geral'
	FROM construtores AS const, race_date AS race, chefe_de_equipe AS chefe, piloto AS driver, pontos AS pon
    WHERE const.id = race.id AND const.id = driver.id AND const.id = pon.id
    ORDER BY points DESC;

-- APENAS PARA REALIZAR A PRATICA DE PRIMARY KEY E FOREIGN KEY
ALTER TABLE piloto 
ADD CONSTRAINT fk_construtores FOREIGN KEY (i_construtores) REFERENCES construtores (id);

-- TIVE QUE DELETAR O BANCO DE DADOS
DROP DATABASE formula_1;

-- TIVE QUE DELETAR A TABELA E CRIAR NOVAMENTE
DROP TABLE piloto;
DELETE FROM circuit WHERE id = 2;
DROP TABLE circuit;
DROP TABLE race_date;

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

-- INSERINDO CIRCUITOS
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

-- INSERINDO GRAND-PRIX
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio do Barém');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Arábia Saudita');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Austrália');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio do Azerbaijão');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio de Miami');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Emília-Romanha');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio de Mônaco');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Espanha');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio do Canadá');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Áustria');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Grã-Bretanha');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Hungria');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Bélgica');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio dos Países Baixos');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Itália');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio de Singapura');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio do Japão');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio do Catar');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio dos Estados Unidos');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio da Cidade do México');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio de São Paulo');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio de Las Vegas');
INSERT INTO grand_prix (nome) VALUES ('Grande Prêmio de Abu Dhabi');

-- INSERINDO DATA DA CORRIDA
INSERT INTO race_date (race_day) VALUES ('5 de março ');
INSERT INTO race_date (race_day) VALUES ('19 de março ');
INSERT INTO race_date (race_day) VALUES ('2 de abril ');
INSERT INTO race_date (race_day) VALUES ('30 de abril ');
INSERT INTO race_date (race_day) VALUES ('7 de maio ');
INSERT INTO race_date (race_day) VALUES ('21 de maio ');
INSERT INTO race_date (race_day) VALUES ('28 de maio');
INSERT INTO race_date (race_day) VALUES ('4 de Junho ');
INSERT INTO race_date (race_day) VALUES ('18 de junho ');
INSERT INTO race_date (race_day) VALUES ('2 de julho ');
INSERT INTO race_date (race_day) VALUES ('9 de julho ');
INSERT INTO race_date (race_day) VALUES ('23 de julho ');
INSERT INTO race_date (race_day) VALUES ('30 de julho');
INSERT INTO race_date (race_day) VALUES ('27 de agosto ');
INSERT INTO race_date (race_day) VALUES ('3 de setembro ');
INSERT INTO race_date (race_day) VALUES ('17 de setembro');
INSERT INTO race_date (race_day) VALUES ('24 de setembro ');
INSERT INTO race_date (race_day) VALUES ('8 de outubro ');
INSERT INTO race_date (race_day) VALUES ('22 de outubro ');
INSERT INTO race_date (race_day) VALUES ('29 de outubro ');
INSERT INTO race_date (race_day) VALUES ('5 de novembro ');
INSERT INTO race_date (race_day) VALUES ('18 de novembro ');
INSERT INTO race_date (race_day) VALUES ('26 de novembro ');

-- INSERINDO CHEFES DE EQUIPE
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Toto Wolff', 50, 'Austriaco', 'Mercedes');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Christian Horner', 49, 'Britânico', 'Red Bull');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Mattia Binotto', 53, 'Italiano', 'Ferrari');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Otmar Szafnauer', 58, 'ARomenio-Americano', 'Alpine');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Andreas Seidl', 47, 'Alemao', 'MClaren');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Jost Capito', 64, 'Alemao', 'Williams');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Frederic Vasseur', 54, 'Frances', 'Alpha Romeu');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Franz Tost', 67, 'Austriaco', 'AlphaTauri');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Gunther Steiner', 57, 'Italiano-Americano', 'Haas');
INSERT INTO chefe_de_equipe(nome, age, nacionalidade, construtores) VALUES ('Mike Krack', 50, 'Luxembourgish', 'Aston Martin');
 
-- INSERINDO OS PILOTOS
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Lewis Hamilton', 38, 'Britânico');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('George Russel', 25, 'Britânico');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Max Verstappen', 25, 'Holandês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Sergio Pérez', 33, 'Mexicano');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Charles Leclerc', 25, 'Ferrari');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Carlos Sainz', 28, 'Espanhou');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Oscar Piastri', 21, 'Australiano');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Lando Norris', 23, 'Brintânico');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Esteban Ocon', 26, 'Francês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Pierre Gasly', 27, 'Francês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Lance Stroll', 24, 'Canadense');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Fernando Alonso', 41, 'Espanhou');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Yuki Tsunoda', 22, 'Japonês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Nick de Vries', 28, 'Holandês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Alexander Albon', 26, 'Tailandês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Logan Sargeant', 22, 'Americano');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Valtteri Bottas', 33, 'Finlandês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Guanyu Zhou', 23, 'Chinês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Kevin Magnussen', 30, 'Dinamarquês');
INSERT INTO piloto (nome, age, nacionalidade) VALUES ('Nico Hulkenberg', 35, 'Alemão');
    
-- INSERINDO PONTUAÇÃO
INSERT INTO pontos (points, piloto) VALUES ( 10, 'Lewis Hamilton');
INSERT INTO pontos (points, piloto) VALUES ( 6, 'George Russel');
INSERT INTO pontos (points, piloto) VALUES ( 25, 'Max Verstappen');
INSERT INTO pontos (points, piloto) VALUES ( 18, 'Sergio Pérez');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Charles Leclerc');
INSERT INTO pontos (points, piloto) VALUES ( 12, 'Carlos Sainz');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Oscar Piastri');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Lando Norris');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Esteban Ocon');
INSERT INTO pontos (points, piloto) VALUES ( 2, 'Pierre Gasly');
INSERT INTO pontos (points, piloto) VALUES ( 8, 'Lance Stroll');
INSERT INTO pontos (points, piloto) VALUES ( 15, 'Fernando Alonso');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Yuki Tsunoda');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Nick de Vries');
INSERT INTO pontos (points, piloto) VALUES ( 1, 'Alexander Albon');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Logan Sargeant');
INSERT INTO pontos (points, piloto) VALUES ( 4, 'Valtteri Bottas');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Guanyu Zhou');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Kevin Magnussen');
INSERT INTO pontos (points, piloto) VALUES ( 0, 'Nico Hulkenberg');

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
    race_day VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS pontos(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    points INT NOT NULL,
    piloto VARCHAR(50)
    -- FOREIGN KEY (piloto) REFERENCES piloto(name)
);
