-- INSERINDO DADOS - HOSPITAIS
INSERT INTO hospitais (localizacao, nome_hospital, id_medicos) VALUES ('Salvador', 'Ondina', 1);
INSERT INTO hospitais (localizacao, nome_hospital, id_medicos) VALUES ('Camaçari', 'Canela', 2);

-- INSERINDO DADOS - MEDICOS
INSERT INTO medicos (id, nome, idade, especialidade, id_medicos_hospitais) VALUES (1, 'Reynan Paiva', 19, 'Neurologista', 1);
INSERT INTO medicos (id, nome, idade, especialidade, id_medicos_hospitais) VALUES (2, 'Lavinia Beatriz', 20, 'Cirurgia Geral', 1);
INSERT INTO medicos (id, nome, idade, especialidade, id_medicos_hospitais) VALUES (3, 'Davi Barbosa', 21, 'Pediatria', 1);
INSERT INTO medicos (id, nome, idade, especialidade, id_medicos_hospitais) VALUES (4, 'Robert Paiva', 19, 'Trauma', 1);

-- INSERINDO DADOS - PACIENTES
INSERT INTO pacientes (id, nome, idade, doenca, id_pacientes_medicos) VALUES (1, 'Cristina Frangurt', '50', 'Problema Neural', 1);
INSERT INTO pacientes (id, nome, idade, doenca, id_pacientes_medicos) VALUES (2, 'Pedro Alberval', '28', 'Problema Desconhecido', 1);
INSERT INTO pacientes (id, nome, idade, doenca, id_pacientes_medicos) VALUES (3, 'Flavio Chagas', '21', 'Bloco de metal na perna', 1);
INSERT INTO pacientes (id, nome, idade, doenca, id_pacientes_medicos) VALUES (4, 'Juliana Otanha', '23', 'Constantes Convulcoes', 1);

-- SELECT
SELECT * FROM hospitais;
SELECT * FROM medicos;
SELECT * FROM pacientes;

-- DELETE
DELETE FROM hospitais WHERE id = 4;

-- CONSULTAS COMPLEXAS
SELECT * FROM hospitais WHERE localizacao = 'Salvador';
SELECT * FROM medicos WHERE idade > 18;

SELECT med.id AS 'ID Medicos', med.idade AS 'Idade', med.nome AS 'Nome do Medico', med.id_medicos_hospitais AS 'ID Hospital'
	FROM medicos AS med WHERE id_medicos_hospitais = 1;

-- Nome do Médico + Nome do cliente 

SELECT med.nome AS 'Nome do Medico', med.especialidade AS 'Especialidaded', pac.nome AS 'Nome do Paciente', pac.doenca AS 'Doenca'
	FROM medicos AS med, pacientes AS pac WHERE med.id = pac.id;
