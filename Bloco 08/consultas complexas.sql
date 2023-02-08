-- Realizando consultas simples

-- TIPOS PRODUTOS
SELECT * FROM tipos_produtos;
SELECT tipos, id FROM tipos_produtos;
SELECT id, tipos FROM tipos_produtos ORDER BY id DESC;

-- FABRICANTES 
SELECT * FROM fabricantes;

-- MEDICOS
SELECT * FROM medicos;

-- CLIENTES
SELECT * FROM clientes;

-- COMPRAS
SELECT * FROM compras;

-- PRODUTOS
SELECT * FROM produtos;

-- RECEITAS MEDICAS
SELECT * FROM receitas_medicas;

-- PRODUTOS COMPRAS
SELECT * FROM produtos_compras;
SELECT * FROM produtos_compras WHERE quantidade > 2;