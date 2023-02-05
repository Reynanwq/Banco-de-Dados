CREATE DATABASE lck;
use lck;

CREATE TABLE playerLCK(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nick VARCHAR(30) NOT NULL,
    lane VARCHAR(30) NOT NULL,
    team VARCHAR(30) NOT NULL
);

SELECT * FROM playerLCK;
SELECT * FROM playerLCK WHERE team = 'T1';
SELECT * FROM playerLCK WHERE lane = 'ADC';

INSERT INTO playerLCK(nick, lane, team) VALUES ('Zeus', 'Top', 'T1');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Oner', 'Jungler', 'T1');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Faker', 'Mid', 'T1');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Gumayusi', 'ADC', 'T1');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Kerya', 'Sup', 'T1');

INSERT INTO playerLCK(nick, lane, team) VALUES ('Canna', 'Top', 'DK Plus');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Canyon', 'Jungler', 'DK Plus');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Showmaker', 'Mid', 'DK Plus');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Deft', 'ADC', 'DK Plus');
INSERT INTO playerLCK(nick, lane, team) VALUES ('Kellin', 'Sup', 'DK Plus');

DELETE FROM playerLCK WHERE id = 1;