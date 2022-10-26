use bd_OFICINA;


-- Recuperações simples com SELECT Statement --

	-- Quais são nossos clientes? 
				SELECT * FROM cliente;

	-- Quais os registros dos veículos na Oficina? 
		        SELECT * FROM veículo;
        
	
-- Filtros com WHERE Statement --
	        
	-- Qual o funcionário especialista em eletrica automotiva?
				SELECT * FROM mecanico WHERE Especialidade = 'Eletrica Automotiva';

	-- Quais foram as OS com serviço de revisão?
				SELECT * FROM ordem_serviço WHERE Tipo = 'REVISÃO';
                    
-- Crie expressões para gerar atributos derivados --

	-- Qual serviço onde a mão de obra é a mais cara?
    SELECT * FROM mao_de_obra WHERE Valor = (SELECT MAX(valor) FROM mao_de_obra);

    -- Qual é a média dos valores das peças que comercializamos?
				SELECT ROUND(AVG(valor)) AS 'Preço médio arredondado das peças' FROM pecas;
	
   -- Defina ordenações dos dados com ORDER BY --
	
    -- Liste as Ordens de Serviços considerando o valor total de forma Crescente:
			SELECT Número_OS, Valor_total FROM ordem_serviço ORDER BY Valor_total;
            
    -- Exiba os mecanicos em ordem alfabética e seus contatos e endereço:
			SELECT Código, Nome, Contato, Endereço_completo FROM mecanico ORDER BY Nome ASC;


-- Condições de filtros aos grupos – HAVING Statement --

	--  Exiba as Ordens de Serviços agrupado por tipo com valor total inferior igual a R$ 300,00:
			SELECT * FROM ordem_serviço GROUP BY Tipo HAVING Valor_total <=300.00;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados --

	-- Identifique os cadastros dos donos de cada veículo:
			SELECT v.id_cliente, v.placa, v.marca, v.modelo, v.cor, v.Ano_Fabricação, c.Nome_RazãoSocial, c.CPF_CNPJ, c.Contato, 
            CONCAT(Logradouro, ' , ', Número, ' - ', Complemento, ' - ', Bairro, ' - ', Cidade, ' / ', UF, ' - ', CEP) AS 'Endereço Completo'
            FROM veículo AS v INNER JOIN cliente AS c ON v.id_cliente = c.id_cliente;
