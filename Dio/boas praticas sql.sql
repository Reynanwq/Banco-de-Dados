CREATE DATABASE dio;

USE dio;

CREATE TABLE produtos2(
	CODIGO INT NOT NULL,
    DESCRICAO VARCHAR(50) NOT NULL,
    DATA_VALIDADE DATETIME,
    EAN VARCHAR(15) NOT NULL,
    INO_INATIVO INT NOT NULL DEFAULT 0
);

ALTER TABLE produtos2
	ADD CONSTRAINT pk_produtos
		PRIMARY KEY (codigo)
;
		
CREATE INDEX IDX_PRODUTOS_EAN
	ON produtos2(EAN)
;

INSERT INTO produtos2 VALUES(1, 'Nome do Produto', LOCALTIME(), '1234567890', 0);

SELECT LOCALTIME();	
SELECT * FROM produtos2;

INSERT INTO produtos2 (CODIGO, DESCRICAO, EAN) VALUES(2, 'Nome do Produto 2', '1234567890');

SELECT * FROM produtos2 WHERE DESCRICAO LIKE '%Produto%';

SELECT COUNT(*) AS TOTAL FROM produtos2; 
-- é o totalde registros na minnha tabela produto 

CREATE TABLE LOJAS(
	CODIGO INT NOT NULL,
    NOME VARCHAR(50) NOT NULL,
    INO_INATIVO INT NOT NULL DEFAULT 0,
    CONSTRAINT LOJA_PK PRIMARY KEY(CODIGO) 
);

DROP TABLE LOJA;

INSERT INTO LOJAS (CODIGO, NOME) VALUES (100, 'Filial Nova iguaçu');
INSERT INTO LOJAS (CODIGO, NOME) VALUES (200, 'Filial São Paulo');
INSERT INTO LOJAS (CODIGO, NOME) VALUES (300, 'Filial Recife');

SELECT CODIGO, NOME FROM LOJAS WHERE INO_INATIVO = 0;


CREATE TABLE ESTOQUE (
	CODIGO_PRODUTO INT NOT NULL,
    CODIGO_FILIAL INT NOT NULL,
    QUANTIDADE DECIMAL NOT NULL DEFAULT 0,
    CONSTRAINT PK_ESTOQUE PRIMARY KEY (CODIGO_PRODUTO, CODIGO_FILIAL)
);

ALTER TABLE ESTOQUE 
	ADD CONSTRAINT FK_ESTOQUE_PRODUTOS
		FOREIGN KEY (CODIGO_PRODUTO)
        REFERENCES produtos2 (CODIGO) 
;

ALTER TABLE ESTOQUE
	ADD CONSTRAINT FK_ESTOQUE_LOJAS
		FOREIGN KEY (CODIGO_FILIAL)
        REFERENCES LOJAS (CODIGO) 
;

ALTER TABLE ESTOQUE
	DROP CONSTRAINT FK_ESTOQUE_LOJAS;
    
INSERT INTO ESTOQUE (CODIGO_PRODUTO, CODIGO_FILIAL, QUANTIDADE) VALUES (1, 100, 10);
    
SELECT * FROM ESTOQUE;

SELECT E.CODIGO_FILIAL,
	   L.NOME,
       E.CODIGO_PRODUTO,
       P.DESCRICAO,
       E.QUANTIDADE
	FROM ESTOQUE E INNER JOIN LOJAS L
		ON E.CODIGO_FILIAL = L.CODIGO
     INNER JOIN produtos2 P
		ON E.CODIGO_PRODUTO = P.CODIGO    


	
