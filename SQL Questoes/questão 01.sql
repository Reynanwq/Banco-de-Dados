-- CRIE UMA TABELA COM 4 COLUNAS (NOME, CPF, ANO, MES)

-- QUESTÃO 01:

CREATE TABLE pessoas (
	Nome VARCHAR(50) NOT NULL PRIMARY KEY,
    Cpf INT NOT NULL,
	Ano INT NOT NULL,
    Mes INT NOT NULL
);

INSERT INTO pessoas (Nome, Cpf, Ano, Mes) 
VALUES 
('Reynan', 05123687, 2003, 08);
('Pedro', 45646, 2001, 09),
('Vinicius', 12478, 2002, 10),
('Keio', 96545, 2000, 03)	


SELECT * FROM pessoas;
