-- DATA TRANSATION LANGUAGEM : DTL

SELECT * FROM tipos_produtos;

-- TRANSATION
INSERT INTO tipos_produtos(codigo, descricao) VALUES (43, 'Roupas');
INSERT INTO tipos_produtos(codigo, descricao) VALUES (11, 'Acessorios');

-- COMMIT 
COMMIT;

-- ROLLBACK
ROLLBACK;