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
INSERT INTO player(nick, lane, team) VALUES ('Croc', 'Jungler', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Tinnows', 'Mid', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Route', 'ADC', 'LOUD');
INSERT INTO player(nick, lane, team) VALUES ('Ceos', 'Sup', 'LOUD');

INSERT INTO player(nick, lane, team) VALUES ('Boal', 'Top', 'Red Canids');
INSERT INTO player(nick, lane, team) VALUES ('Aegis', 'Jungler', 'Red Canids');
INSERT INTO player(nick, lane, team) VALUES ('Avenger', 'Mid', 'Red Canids');
INSERT INTO player(nick, lane, team) VALUES ('Titan', 'ADC', 'Red Canids');
INSERT INTO player(nick, lane, team) VALUES ('Kuri', 'Sup', 'Red Canids');

INSERT INTO player(nick, lane, team) VALUES ('Hirit', 'Top', 'Los Grandes');
INSERT INTO player(nick, lane, team) VALUES ('Ranger', 'Jungler', 'Los Grandes');
INSERT INTO player(nick, lane, team) VALUES ('Lava', 'Mid', 'Los Grandes');
INSERT INTO player(nick, lane, team) VALUES ('Neturno', 'ADC', 'Los Grandes');
INSERT INTO player(nick, lane, team) VALUES ('Zay', 'Sup', 'Los Grandes');

INSERT INTO player(nick, lane, team) VALUES ('Fnb', 'Top', 'Furia');
INSERT INTO player(nick, lane, team) VALUES ('Goot', 'Jungler', 'Furia');
INSERT INTO player(nick, lane, team) VALUES ('Envy', 'Mid', 'Furia');
INSERT INTO player(nick, lane, team) VALUES ('Trigo', 'ADC', 'Furia');
INSERT INTO player(nick, lane, team) VALUES ('RedBert', 'Sup', 'Furia');

INSERT INTO player(nick, lane, team) VALUES ('Lonely', 'Top', 'Kabum');
INSERT INTO player(nick, lane, team) VALUES ('Scary', 'Jungler', 'Kabum');
INSERT INTO player(nick, lane, team) VALUES ('Yuri', 'Mid', 'Kabum');
INSERT INTO player(nick, lane, team) VALUES ('Duds', 'ADC', 'Kabum');
INSERT INTO player(nick, lane, team) VALUES ('Scuro', 'Sup', 'Kabum');

INSERT INTO player(nick, lane, team) VALUES ('Kyari', 'Top', 'Libert');
INSERT INTO player(nick, lane, team) VALUES ('Acezz', 'Jungler', 'Libert');
INSERT INTO player(nick, lane, team) VALUES ('Piloto', 'Mid', 'Libert');
INSERT INTO player(nick, lane, team) VALUES ('Julieira', 'ADC', 'Libert');
INSERT INTO player(nick, lane, team) VALUES ('Cavalo', 'Sup', 'Libert');

INSERT INTO player(nick, lane, team) VALUES ('zzk', 'Top', 'INTZ');
INSERT INTO player(nick, lane, team) VALUES ('Yampi', 'Jungler', 'INTZ');
INSERT INTO player(nick, lane, team) VALUES ('Nosferus', 'Mid', 'INTZ');
INSERT INTO player(nick, lane, team) VALUES ('NinjaKiwi', 'ADC', 'INTZ');
INSERT INTO player(nick, lane, team) VALUES ('Mia', 'Sup', 'INTZ');

INSERT INTO player(nick, lane, team) VALUES ('Guigo', 'Top', 'Vivo Keyd');
INSERT INTO player(nick, lane, team) VALUES ('Hugato', 'Jungler', 'Vivo Keyd');
INSERT INTO player(nick, lane, team) VALUES ('Grevtar', 'Mid', 'Vivo Keyd');
INSERT INTO player(nick, lane, team) VALUES ('Micao', 'ADC', 'Vivo Keyd');
INSERT INTO player(nick, lane, team) VALUES ('Bount', 'Sup', 'Vivo Keyd');

INSERT INTO player(nick, lane, team) VALUES ('Tay', 'Top', 'Fluxo');
INSERT INTO player(nick, lane, team) VALUES ('Disamis', 'Jungler', 'Fluxo');
INSERT INTO player(nick, lane, team) VALUES ('Hauz', 'Mid', 'Fluxo');
INSERT INTO player(nick, lane, team) VALUES ('Brence', 'ADC', 'Fluxo');
INSERT INTO player(nick, lane, team) VALUES ('Jojo', 'Sup', 'Fluxo');



SELECT p.nick AS Nick, p.lane AS Lane, p.team AS Team FROM player AS p;

-- DELETE FROM player WHERE id = 12;


	
