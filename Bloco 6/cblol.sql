CREATE DATABASE cblol;
use cblol;

CREATE TABLE player(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nick VARCHAR(10) NOT NULL,
    lane VARCHAR(10) NOT NULL,
    team VARCHAR(30) NOT NULL
);

SELECT * FROM player;
SELECT * FROM player WHERE lane = 'Top';
SELECT * FROM player WHERE lane = 'Jungler';
SELECT * FROM player WHERE lane = 'Mid';
SELECT * FROM player WHERE lane = 'ADC';
SELECT * FROM player WHERE lane = 'Sup';

INSERT INTO player(nick, lane, team) VALUES ('Wizer', 'Top', 'Pain Gaming');
INSERT INTO player(nick, lane, team) VALUES ('Cariok', 'Jungler', 'Pain Gaming');
INSERT INTO player(nick, lane, team) VALUES ('Dinkedo', 'Mid', 'Pain Gaming');
INSERT INTO player(nick, lane, team) VALUES ('Bvoy', 'ADC', 'Pain Gaming');
INSERT INTO player(nick, lane, team) VALUES ('Damage', 'Sup', 'Pain Gaming');

INSERT INTO player(nick, lane, team) VALUES ('Robo', 'Top', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Croc', 'Jungle', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Tinnows', 'Mid', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Route', 'ADC', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Ceos', 'Sup', 'LOUD');

-- SELECT p.nick AS Nick, p.lane AS Lane, p.team AS Team FROM player AS p;



	