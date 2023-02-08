# inserindo dados de teste - DML

-- TIPOS PRODUTOS
INSERT INTO tipos_produtos(tipos) VALUES ('Remedios');
INSERT INTO tipos_produtos(tipos) VALUES ('Cosmeticos');
INSERT INTO tipos_produtos(tipos) VALUES ('Diversos');

-- FABRICANTES
INSERT INTO fabricantes (fabricantescol) VALUES ('Roche');
INSERT INTO fabricantes (fabricantescol) VALUES ('Vitalis');
INSERT INTO fabricantes (fabricantescol) VALUES ('Palmolive');

-- MÉDICOS
INSERT INTO medicos (nome, crm) VALUES ('Alfedro Muniz', '232313123');
INSERT INTO medicos (nome, crm) VALUES ('Fernando Silva', '23868767823');	
INSERT INTO medicos (nome, crm) VALUES ('Julieta Santana', '23767767923');

-- CLIENTES

INSERT INTO clientes (nome, endereco, cep, telefone, localidade, cpf) 
		VALUES ('Reynan Paiva', 'rua santo amaro', '43700000', '71986472841', 'simoes filho', '09408130502');
INSERT INTO clientes (nome, endereco, cep, telefone, localidade, cpf) 
		VALUES ('lavinia', 'rua da granja', '43700000', '71986689841', 'simoes filho', '30508495631');
INSERT INTO clientes (nome, endereco, cep, telefone, localidade, cpf) 
		VALUES ('Pedro', 'rua da esperanca', '43700000', '71985287463', 'simoes filho', '21469874302');
        
-- PRODUTOS
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Dipirona', 'Dores em geral', 'Multipropeno', '12.44', 1, 1);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Sabonete', 'Limpeza', 'sei lah', '2.56', 2, 2);
INSERT INTO produtos (produto, designacao, composicao, preco_venda, id_tipo_produto, id_fabricante) 
	VALUES ('Protetor Solar', 'Protecao solar', 'soro de abacate', '98.14', 2, 1);
    
-- COMPRAS
INSERT INTO compras (id_clientes, Date) VALUES (1, '2019-05-06');
INSERT INTO compras (id_clientes, Date) VALUES (2, '2019-09-26');
INSERT INTO compras (id_clientes, Date) VALUES (1, '2019-02-16');

-- PRODUTOS COMPRA
INSERT INTO produtos_compras (id, id_compra, id_produtos, quantidade) VALUES (1, 1, 1, 2);
INSERT INTO produtos_compras (id, id_compra, id_produtos, quantidade) VALUES (2, 1, 2, 3);
INSERT INTO produtos_compras (id, id_compra, id_produtos, quantidade) VALUES (3, 2, 3, 1);

-- RECEITAS MEDICAS
INSERT INTO receitas_medicas (id_produtos_compras, id_medicos, receitas) VALUES (1, 1, 'receitas1.pdf');
INSERT INTO receitas_medicas (id_produtos_compras, id_medicos, receitas) VALUES (3, 2, 'receitas2.pdf');