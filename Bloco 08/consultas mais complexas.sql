-- Realizando consultas complexas

-- PASSO 1: TRAZER AS COMPRAS
SELECT * FROM compras;
-- PASSO 2: COLOCAR OS NOMES DOS CLIENTES NAS COMPRAS
SELECT com.id AS 'ID Compra', cli.nome AS 'Clientes', com.Date AS 'Data Compra'
	FROM compras AS com, clientes AS cli WHERE com.id_clientes = cli.id;
-- PASSO 3: PRODUTOS COMPRA
SELECT * FROM produtos_compras;

-- PASSO 4:	 	
SELECT com.id AS 'Compra',
cli.nome AS 'Cliente',
SUM(prod.preco_venda * proc.quantidade) AS 'Total',
com.Date AS 'Data compra'
FROM produtos_compras AS proc, produtos AS prod, compras AS com, clientes AS cli
WHERE com.id = proc.id_compra AND prod.id = proc.id_produtos AND cli.id = com.id_clientes
GROUP BY com.id;