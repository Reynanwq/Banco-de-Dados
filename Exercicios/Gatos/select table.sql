SELECT * FROM person;
SELECT * FROM breeds;
SELECT * FROM cat; 

-- UPDATE person SET name = 'Thalita', idade = 20 WHERE id = 2;

-- DELETE FROM cat WHERE id > 0;

-- PESQUISAS COMPLEXAS
SELECT  per.name AS 'Dono do Gato', per.idade AS 'Idade do Dono', bre.breed AS 'Cat Breeds', ca.nome AS 'Nome do Gato', ca.idade AS 'Idade do Gato', ca.sexo AS 'Sexo'
	FROM person AS per, breeds AS bre, cat AS ca WHERE per.id = ca.id_breeds;

-- SUM E GROUP BY