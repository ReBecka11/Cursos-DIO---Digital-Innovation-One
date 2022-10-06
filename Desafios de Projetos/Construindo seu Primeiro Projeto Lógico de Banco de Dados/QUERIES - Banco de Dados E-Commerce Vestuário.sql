use bd_ECOMMERCE;


-- Recuperações simples com SELECT Statement --

	-- Quais os registros de clientes cadastrados em nosso BD? 
		        SELECT * FROM cliente;
        
	-- Quais são nossos fornecedores? 
				SELECT * FROM fornecedor;


-- Filtros com WHERE Statement --
	        
	-- Quais entregas tiveram o status de devolvido?
				SELECT * FROM entrega WHERE Status_entrega = 'DEVOLVIDO';

	-- Qual dos nossos produtos tem o maior valor?
				SELECT * FROM produto WHERE Valor = (SELECT MAX(valor) FROM produto);
    
    
-- Crie expressões para gerar atributos derivados --

	-- Qual é a média da quantidade dos nossos produtos em estoque?
				SELECT ROUND(AVG(quantidade)) AS 'Média Quantidade de Produtos em Estoque' FROM produto_estoque;
	
	-- Qual o nome e o endereço completo dos clientes cadastrados?
			SELECT Nome_RazãoSocial AS 'Nome', 
            CONCAT(Logradouro, ' , ',  Número, ' - ', Complemento, ' - ', Bairro, ' - ', Cidade, ' / ', UF, ' - ', CEP) AS 'Endereço Completo' 
            FROM cliente;
	
    
-- Defina ordenações dos dados com ORDER BY --
	
    -- Liste os pedidos considerando o valor do frete de forma decrescente:
			SELECT id_pedido, frete FROM pedido ORDER BY frete DESC;
            
    -- Exiba os parceiros (Terceiro – Vendedor) em ordem alfabética e seus contatos:
			SELECT id_terceiro_vendedor, Nome_RazãoSocial, Contato FROM terceiro_vendedor ORDER BY Nome_RazãoSocial ASC;


-- Condições de filtros aos grupos – HAVING Statement --

	-- Exiba os produtos com valor superior a 45 do tipo Vestuário agrupado por categoria:
			SELECT id_produto, Categoria, Tipo, Descrição_produto, Valor FROM produto WHERE Tipo = 'VESTUÁRIO' GROUP BY Categoria HAVING Valor >45;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados --

	-- Exiba a relação entre pedidos e clientes:
			SELECT * FROM pedido INNER JOIN cliente USING (id_cliente);        
         
            