-- EXCLUIR DADOS

-- DELETE NÃO DELETA TABELAS, DELETA REGISTROS

SELECT * FROM produtos_compras;
SELECT * FROM receitas_medicas;
DELETE FROM produtos_compras WHERE id = 3;
DELETE FROM receitas_medicas WHERE id_produtos_compras = 3;

-- neste caso, as tabelas estavam relacionadas, então tive que apagar nas duas tabelas