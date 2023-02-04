-- DML

INSERT INTO tipos_produtos(descricao) VALUE ('Apple');
INSERT INTO produtos VALUES (NULL, 'Mackbook Pro', '5200', 3);

SELECT * FROM tipos_produtos;
SELECT * FROM produtos;

-- UPDATE

UPDATE produtos set codigo_tipo = 3 WHERE codigo = 5;
UPDATE produtos set descricao = 'Impressora. Jato de Tinta', preco = '700' WHERE codigo = 3;
UPDATE produtos set preco = '12300' WHERE codigo > 6;

DELETE FROM produtos WHERE codigo > 7;