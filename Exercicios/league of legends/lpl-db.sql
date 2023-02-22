CREATE DATABASE lpl;
USE lpl;

SELECT * FROM times; 
SELECT * FROM topPlayer;
SELECT * FROM junglerPlayer;
SELECT * FROM midPlayer;
SELECT * FROM botPlayer;
SELECT * FROM supPlayer;

-- SELECIONANDO TODOS OS JOGADORES
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE top.id = mid.id AND top.id = jg.id AND top.id = bot.id AND top.id = sup.id AND top.id = team.id;


-- DADOS DO TIME DA ANYONES LEGEND
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 1 AND top.id = 1 AND jg.id = 1 AND mid.id = 1 AND bot.id = 1 AND sup.id = 1;

-- DADOS DO TIME DA BILIBILI GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 2 AND top.id = 2 AND jg.id = 2 AND mid.id = 2 AND bot.id = 2 AND sup.id = 2;

-- DADOS DO TIME DA EDWARD GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 3 AND top.id = 3 AND jg.id = 3 AND mid.id = 3 AND bot.id = 3 AND sup.id = 3;

-- DADOS DO TIME DA FUNPLUS GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 4 AND top.id = 4 AND jg.id = 4 AND mid.id = 4 AND bot.id = 4 AND sup.id = 4;
    
-- DADOS DO TIME DA INVICTUS GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 5 AND top.id = 5 AND jg.id = 5 AND mid.id = 5 AND bot.id = 5 AND sup.id = 5;
    
-- DADOS DO TIME DA JD GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 6 AND top.id = 6 AND jg.id = 6 AND mid.id = 6 AND bot.id = 6 AND sup.id = 6;

-- DADOS DO TIME DA LGD GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 7 AND top.id = 7 AND jg.id = 7 AND mid.id = 7 AND bot.id = 7 AND sup.id = 7;
    
-- DADOS DO TIME DA LNG GAMING
SELECT team.teamName AS 'Team', top.nickName AS 'Top Laner', jg.nickName AS 'Jungler', mid.nickName AS 'Mid Laner', bot.nickName AS 'ADC', sup.nickName AS 'Sup' 
    FROM times AS team, topPlayer AS top, junglerPlayer AS jg, midPlayer AS mid, botPlayer AS bot, supPlayer AS sup
    WHERE team.id = 8 AND top.id = 8 AND jg.id = 8 AND mid.id = 8 AND bot.id = 8 AND sup.id = 8;
    
-- HORA ATUAL
SELECT LOCALTIME();

-- TIVE QUE DELETAR UM ID
DELETE FROM junglerPlayer WHERE id = 1; 

DROP TABLE junglerPlayer; 

UPDATE times set teamName = 'Top Sports' WHERE id = 14;

UPDATE topPlayer SET nickName = 'YSKM' 
	WHERE id = 5;

INSERT INTO times (teamName) VALUES ('Anyones Legend');
INSERT INTO times (teamName) VALUES ('Bilibili Gaming'); 	
INSERT INTO times (teamName) VALUES ('EDward Gaming');
INSERT INTO times (teamName) VALUES ('FunPlus Phoenix');
INSERT INTO times (teamName) VALUES ('Invictus Gaming');
INSERT INTO times (teamName) VALUES ('JD Gaming');
INSERT INTO times (teamName) VALUES ('LGD Gaming');
INSERT INTO times (teamName) VALUES ('LGN Esports');
INSERT INTO times (teamName) VALUES ('Ninjas in Pyjamas');
INSERT INTO times (teamName) VALUES ('Oh My God');
INSERT INTO times (teamName) VALUES ('Rare Atom');
INSERT INTO times (teamName) VALUES ('Royal Never Give Up');
INSERT INTO times (teamName) VALUES ('Team WE');
INSERT INTO times (teamName) VALUES ('Top Esports');
INSERT INTO times (teamName) VALUES ('TT Gaming');
INSERT INTO times (teamName) VALUES ('Ultra Prime');
INSERT INTO times (teamName) VALUES ('Weibo Gaming');

INSERT INTO topPlayer (nickName, lane) VALUES ('Zdz', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Bin', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Ale', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('fearness', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('neny', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('369', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Xiaoxu', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Zika', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Invincible', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('shanji', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Cube', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Breathe', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Biubiu', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Qingtian', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('HOYA', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('Hery', 'top');
INSERT INTO topPlayer (nickName, lane) VALUES ('TheShy', 'top');

INSERT INTO junglerPlayer (nickName, lane) VALUES ('Xiaohao', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Xun', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('JieJie', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('H4cker', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('gideon', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Kanavi', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Meteor', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Tarzan', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('XLB', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Aki', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Leyan', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Wei', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Heng', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Tian', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Beichuan', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Ning', 'JG');
INSERT INTO junglerPlayer (nickName, lane) VALUES ('Karsa', 'JG');

INSERT INTO midPlayer (nickName, lane) VALUES ('Harder' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Yagao' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('FoFo' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Care' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Dove' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Knight' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Haichao' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Scout' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Dream' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Creme' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Strive' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Angel' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Shanks' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Rookie' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Ucal' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Qing' , 'Mid');
INSERT INTO midPlayer (nickName, lane) VALUES ('Xiaohu' , 'Mid');


INSERT INTO botPlayer (nickName, lane) VALUES ('Betty' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Elk' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Leave' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Lwx' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Ahn' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Ruler' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Lpc' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('LP' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Photic' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Able' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Assum' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('GALA' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Hope' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('JackeyLove' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Huanfeng' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Doggo' , 'ADC');
INSERT INTO botPlayer (nickName, lane) VALUES ('Light' , 'ADC');

INSERT INTO supPlayer (nickName, lane) VALUES ('SwordArt', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('ON', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Meiko', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Lele', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Wink', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Missing', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Jinjao', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Hang', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Zhou', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('ppgod', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Southwind', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Ming', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Iwandy', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Mark', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Xinliu', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Baolan', 'Sup');
INSERT INTO supPlayer (nickName, lane) VALUES ('Crisp', 'Sup');

CREATE TABLE IF NOT EXISTS times(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    teamName VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS topPlayer(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(50) NOT NULL,
    lane VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS junglerPlayer(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(50) NOT NULL,
    lane VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS midPlayer(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(50) NOT NULL,
    lane VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS botPlayer(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(50) NOT NULL,
    lane VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS supPlayer(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(50) NOT NULL,
    lane VARCHAR(5) NOT NULL
);

CREATE TABLE IF NOT EXISTS coach(
	id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nickName VARCHAR(50) NOT NULL,
    lane VARCHAR(5) NOT NULL
);
