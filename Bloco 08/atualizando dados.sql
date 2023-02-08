-- atualizando dados

SELECT * FROM produtos;
UPDATE produtos SET preco_venda = '4,26', id_tipo_produto = 1, id_fabricante = 1 WHERE id = 2;

SELECT * FROM tipos_produtos;
UPDATE tipos_produtos SET tipos = 'Bijuterias' WHERE id = '3';