-- CRIANDO BANCO DE DADOS
CREATE DATABASE genshin_impact;
USE genshin_impact;

-- TABELAS
CREATE TABLE IF NOT EXISTS Player(
	player_id INT NOT NULL PRIMARY KEY,
    player_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(100) NOT NULL,
    level INT NOT NULL,
    experience INT NOT NULL,
    currency INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Characters(
	characters_id INT NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    type VARCHAR(40) NOT NULL,
    level INT NOT NULL,
    Description VARCHAR(500) NOT NULL,
    Release_Date VARCHAR(6) NOT NULL,
    Gender VARCHAR(100) NOT NULL,
    Habilidades VARCHAR(500) NOT NULL,
    Talento_passivo VARCHAR(100) NOT NULL,
    Constelacoes VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS Estatistica_characters(
	id INT NOT NULL PRIMARY KEY,
    name_characters VARCHAR(100) NOT NULL,
    level INT NOT NULL,
    ascender INT NOT NULL,
    vida_basica INT NOT NULL,
    ataque_basico INT NOT NULL,
	defesa_basica INT NOT NULL,
    bonus_de_dano INT NOT NULL
);

CREATE TABLE  IF NOT EXISTS Quests( 
	id INT NOT NULL PRIMARY KEY,
	quest_name VARCHAR(100) NOT NULL, 
    quest_description VARCHAR(500) NOT NULL,
    quest_recompensa VARCHAR(100) NOT NULL, 
    quest_capitulo VARCHAR(100) NOT NULL, 
	quest_atos VARCHAR(100) NOT NULL,
    quest_rank_de_aventura INT NOT NULL,
);
	
CREATE TABLE IF NOT EXISTS Achievements(
	achievements_topico VARCHAR(50) NOT NULL,
	achievements_name VARCHAR(100) NOT NULL,
    achievements_description VARCHAR(50) NOT NULL,
    rarity INT NOT NULL,
    qtd_total_rarity INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Updates( 
	id INT NOT NULL,
    path_version VARCHAR(5) NOT NULL,
    path_name VARCHAR(30) NOT NULL,
    path_sattus VARCHAR(20) NOT NULL,
    path_weapons VARCHAR(300) NOT NULL,
    path_characters VARCHAR(300) NOT NULL,
    path_time VARCHAR(30) NOT NULL,
    path_characters_limitados VARCHAR(500) NOT NULL
    
);

CREATE TABLE IF NOT EXISTS Food(
	food_name VARCHAR(100) NOT NULL,
    food_description VARCHAR(40) NOT NULL,
    rarity INT NOT NULL,
    food_type VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS Fishing(
	fish_name VARCHAR(100) NOT NULL,
    localization VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS Potions(
	potion_name VARCHAR(100) NOT NULL,
    rarity INT NOT NULL,
    effect VARCHAR(199) NOT NULL    
);

CREATE TABLE IF NOT EXISTS Weapons(
	achievements_name VARCHAR(150) NOT NULL,
    type VARCHAR(40) NOT NULL,
    achivivements_description VARCHAR(500) NOT NULL,
    base_ataque INT NOT NULL,
    crit_damage INT NOT NULL,
    level INT NOT NULL,
    ascension INT NOT NULL,
    qtd_stars INT NOT NULL,
);
