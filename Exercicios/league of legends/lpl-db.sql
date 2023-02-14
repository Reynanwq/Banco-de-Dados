CREATE DATABASE lpl;
USE lpl;

SELECT * FROM times;
SELECT * FROM topPlayer;
SELECT * FROM junglerPlayer;

DELETE FROM junglerPlayer WHERE id = 1; 

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
