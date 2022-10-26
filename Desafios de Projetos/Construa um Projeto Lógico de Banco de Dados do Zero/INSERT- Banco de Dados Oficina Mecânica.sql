use bd_OFICINA;

-- INSERINDO VALORES NA TABELA CLIENTE --

INSERT INTO cliente VALUES (default,'PF', '123456789010','Rebeca Caroline','Rua A','12',' ','Esperança',
                            'Rio de Janeiro','RJ','96345782','(21)91111-2222');
                            
INSERT INTO cliente VALUES (default,'PJ','00123456000199','Auto Colecionaveis LTDA','Rua Jota Jota','1366','Lj. D/E','Carrossel',
                            'Nova Iguaçu','RJ','12345678','(21)93333-1144');


INSERT INTO cliente VALUES (default,'PF','98765432190','Eduardo Oliveira','Rua Vinte','104','Apt. 104','Bom Jadim',
                            'Duque de Caxias','RJ','25874163','(21)92222-3333');
                            
-- INSERINDO VALORES NA TABELA EQUIPE --

INSERT INTO equipe VALUES (default,'Arthur Braga');
INSERT INTO equipe VALUES (default,'Olga Cristina');

-- INSERINDO VALORES NA TABELA MECANICO --

INSERT INTO mecanico VALUES (default,'Arthur Braga Nunes de Mattos', 'Retifica de motor', 
                              'Av. um dois três, 57. Apto 301 - Ferraz. Rio de Janeiro/RJ - CEP: 21856-32','(21)93685-1616', 1);
                              
INSERT INTO mecanico VALUES (default,'Olga Cristina Bizum', 'Lanternagem', 
                              'Rua 18, 456A. Pipa. Mesquita/RJ - CEP: 33987-22','(21)91478-2020', 2);

INSERT INTO mecanico VALUES (default,'João de Cristo', 'Eletrica Automotiva', 
                              'Pç. da liberdade, casa 8 - Liberdade. Rio de Janeiro/RJ - CEP: 22403-75','(21)93232-1212', 1);

INSERT INTO mecanico VALUES (default,'Ana Paula Abidala Morais ', 'mecanica geral', 
                              'Rua pequena, 22 - fundos - Alameda. Nova Iguaçu/RJ','(21)91885-9365', 1);

INSERT INTO mecanico VALUES (default,'Davi Pena', 'Pintor Automotivo', 
                              'Rua Trinta e Três, 1.120 - Apto. 103 - Coração. Rio de Janeiro/RJ - CEP: 27854-99','(21)92666-3355', 2);
                              
INSERT INTO mecanico VALUES (default,'Marcos Abidala Morais ', 'borracheiro', 
                              'Rua pequena, 22 - fundos - Alameda. Nova Iguaçu/RJ','(21)92858-1010', 1);

-- INSERINDO VALORES NA TABELA VEÍCULO --

INSERT INTO veículo VALUES (default, 'BVC1E36', 'FIAT', 'ARGO', 2020, 'BRANCA', 1, 1);
INSERT INTO veículo VALUES (default, 'MHG5Y44', 'Volkswagen', 'FUSCA', 1967, 'AZUL', 2, 2);
INSERT INTO veículo VALUES (default, 'FRE6E18', 'Hyundai', 'HB20', 2022, 'PRETO', 3, 1);
INSERT INTO veículo VALUES (default, 'CTY3O98', 'CHEVROLET', 'Opala Diplomata', 1986, 'BRANCA', 2, 1);

-- INSERINDO VALORES NAS TABELAS CARTÃO CRÉDITO/BOLETO --

INSERT INTO forma_pgto_cartaodecredito VALUES (default,'5541 1624 3040 5512', '004', 'Rebeca Caroline', '04/2024', 'MASTERCARD');
INSERT INTO forma_pgto_cartaodecredito VALUES (default,'8856 3013 2471 6622', '835', 'Eduardo Oliveira', '06/2026', 'VISA');
INSERT INTO forma_pgto_boleto VALUES (default,'0685001116121821782691521503320', '2022-11-15');


-- INSERINDO VALORES NA TABELA PAGAMENTO --

INSERT INTO pagamento VALUES (default, 1, null);
INSERT INTO pagamento VALUES (default, null, 1);
INSERT INTO pagamento VALUES (default, 2, null);


-- INSERINDO VALORES NA TABELA MÃO DE OBRA --

INSERT INTO mao_de_obra VALUES (default, 'TROCA DE ÓLEO', 120.00);
INSERT INTO mao_de_obra VALUES (default, 'ALINHAMENTO', 230.00);
INSERT INTO mao_de_obra VALUES (default, 'BORRACHARIA', 60.80);
INSERT INTO mao_de_obra VALUES (default, 'PINTURA AUTOMOTIVA', 2630.00);
INSERT INTO mao_de_obra VALUES (default, 'RETIFICA DO MOTOR', 5341.00);

-- INSERINDO VALORES NA TABELA PEÇAS --

INSERT INTO pecas VALUES (default, 'PEÇA A', 32.90);
INSERT INTO pecas VALUES (default, 'PEÇA B', 99.90);
INSERT INTO pecas VALUES (default, 'PEÇA C', 478.52);
INSERT INTO pecas VALUES (default, 'PEÇA D', 74.20);
INSERT INTO pecas VALUES (default, 'PNEU ARO 14', 331.42);

-- INSERINDO VALORES NA TABELA ORDEM DE SERVIÇO --

INSERT INTO ordem_serviço VALUES (default, '2022-10-20', 'MANUTENÇÃO', 60.80, 'CONCLUÍDO', '2022-10-20', 3, null, 1, 1);
INSERT INTO ordem_serviço VALUES (default, '2022-10-03', 'MANUTENÇÃO', 2630.00, 'EM EXECUÇÃO', '2022-10-31', 4, null, 2, 2);
INSERT INTO ordem_serviço VALUES (default, '2022-10-20', 'REVISÃO', 120.00, 'APROVADO', '2022-10-20', 1, null, 3, 3);
INSERT INTO ordem_serviço VALUES (default, '2022-10-20', 'MANUTENÇÃO', 1555.68 , default, '2022-10-20', 2, 5, null, 4);
