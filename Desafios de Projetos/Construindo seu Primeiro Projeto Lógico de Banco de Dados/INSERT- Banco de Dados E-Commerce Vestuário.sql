use bd_ECOMMERCE;

-- INSERINDO VALORES NA TABELA CLIENTE --

INSERT INTO cliente VALUES (
							default,'PF', '123456789010','Rebeca Caroline','Rua A','12',' ','Esperança',
                            'Rio de Janeiro','RJ','96345782','(21)91111-2222','rebeca.caroline@gmail.com','Rc123@ss'
                            );
                            
INSERT INTO cliente VALUES (
							default,'PJ','00123456000199','Empresa Rei Mil LTDA','Rua Jota Jota','1366','Lj. D/E','Carrossel',
                            'Belo Horizonte','MG','12345678','(31)93333-1144','rh@reimil.com.br','123#456B'
                            );


INSERT INTO cliente VALUES (
							default,'PF','98765432190','Eduardo Oliveira','Rua Vinte','104','Apt. 104','Bom Jadim',
                            'Blumenau','SC','25874163','(47)92222-3333','edu_oliveira@hotmail.com','Oliv%edu'
                            );

INSERT INTO cliente VALUES (
							default,'PF','45674189036','Olga Benini','Alameda Dois Dois','520',' ','Vida',
                            'Tocantis','TO','39871560','(63)91818-6336','olgaben@yahoo.com.br','Ben123**'
                            );                            
                          
-- INSERINDO VALORES NA TABELA PRODUTO --

INSERT INTO produto VALUES (default,'FEMININO', 'VESTUÁRIO','48','Vestido Floral','129.99');
INSERT INTO produto VALUES (default,'MASCULINO', 'ACESSÓRIOS','P','Cinto Couro Preto','29.90');
INSERT INTO produto VALUES (default,'INFANTIL', 'CALÇADOS','25',' ','55.00');
INSERT INTO produto VALUES (default,'MASCULINO', 'VESTUÁRIO','G','BLusa Polo Branca','49.80');
INSERT INTO produto VALUES (default,'INFANTIL', 'ACESSÓRIOS','RN','Laço','25.75');
INSERT INTO produto VALUES (default,'MASCULINO', 'ACESSÓRIOS','único','relogio','250.30');
INSERT INTO produto VALUES (default,'FEMININO', 'VESTUÁRIO','P/M/G/GG','T SHirt DIVERSAS','38.60');
INSERT INTO produto VALUES (default,'INFANTIL', 'VESTUÁRIO','P/M/G/GG','T SHirt DIVERSAS','25.99');

-- INSERINDO VALORES NA TABELA ESTOQUE --

INSERT INTO estoque VALUES (default,'Rua do Titi, 62 Lj. C, Barrinho, São Paulo/SP - CEP 55698710');
INSERT INTO estoque VALUES (default,'Av. Amanhã, 10.506 - Tupi, Brasilia/DF');
INSERT INTO estoque VALUES (default,'Pç. Rio Amazonas, 101 - Sobrado, Manaus/AM - CEP: 20698741');

-- INSERINDO VALORES NA TABELA TERCEIRO_VENDEDOR --

INSERT INTO terceiro_vendedor VALUES (default,'PF', '00033369815','Estevão Reis',
                                      'Rua Brasil, 83, Bilu, Rio de Janeiro - CEP 21222555', '(21)98888-8888' );
INSERT INTO terceiro_vendedor VALUES (default,'PJ', '28554402000166','Chik-Chik Estamparia LTDA',
									  'Rua Dalva, 1001, Norte, Fortaleza - CEP 00668741', '(85)95555-0000');
INSERT INTO terceiro_vendedor VALUES (default,'PJ', '33698101000166','Estampa Brasil',
                                      'Av. Camões, 424 Apt. 308, Timbalada, Salvador/BA','(71)96666-6666'); 

-- INSERINDO VALORES NA TABELA FORNECEDOR --

INSERT INTO fornecedor VALUES (default,'Malharia ABC LTDA','ABC Malhas','33000123000188','Rua Uiui, 100, Bras, São Paulo/SP - CEP 10045893', '(11)90110-3322');
INSERT INTO fornecedor VALUES (default,'Model Woman LTDA', ' ','14789021000160','R.Uruguaiana, 62-A, Centro, Rio de Janeiro - CEP 25816740', '(21)97744-1100');
INSERT INTO fornecedor VALUES (default,'Pequenos Detalhes Acessórios Ltda', 'Acessórios Kids','01547963000190','Av. Esmeralda, 5.300, Torres, Florianopolis - CEP 12345678', '(48)90210-3060');
INSERT INTO fornecedor VALUES (default,'Calçados e Acessorios em Geral LTDA.',' ','54169821000133','Rua Uiui, 320, Bras, São Paulo/SP - CEP 10045893', '(11)3669-6969');

-- INSERINDO VALORES NA TABELA ENTREGA --

INSERT INTO entrega VALUES (default,'EM TRANSITO', 'br123456ss');
INSERT INTO entrega VALUES (default,'EM TRANSITO', 'br158941ss');
INSERT INTO entrega VALUES (default,'ENTREGUE', 'br168963ss');
INSERT INTO entrega VALUES (default,'DEVOLVIDO', 'br198755ss');
INSERT INTO entrega VALUES (default,'EM TRANSITO', 'br205964ss');
INSERT INTO entrega VALUES (default,'ENTREGUE', 'br226674ss');

-- INSERINDO VALORES NAS TABELAS CARTÃO CRÉDITO/BOLETO/PIX/VOUCHER --

INSERT INTO forma_pgto_cartaodecredito VALUES (default,'5541 1624 3040 5512', '004', 'Rebeca Caroline', '04/2024', 'MASTERCARD');
INSERT INTO forma_pgto_voucher VALUES (default,'AC06131615351894-00B', '2023-01-05');
INSERT INTO forma_pgto_boleto VALUES (default,'0568716932710287896204823501452', '2022-10-31');
INSERT INTO forma_pgto_pix VALUES (default,'ALEATORIO','023151321asd056161frgf064');
INSERT INTO forma_pgto_boleto VALUES (default,'0685001116121821782691521503320', '2022-11-15');
INSERT INTO forma_pgto_cartaodecredito VALUES (default,'8856 3013 2471 6622', '835', 'Eduardo Oliveira', '06/2026', 'VISA');

-- INSERINDO VALORES NA TABELA PAGAMENTO --

INSERT INTO pagamento VALUES (default,'1', null, null,	null);
INSERT INTO pagamento VALUES (default, null, null, null, 1);
INSERT INTO pagamento VALUES (default, null, 1, null,	null);
INSERT INTO pagamento VALUES (default, null, null, '1',	null);
INSERT INTO pagamento VALUES (default, null, 2, null,	null);
INSERT INTO pagamento VALUES (default, 2, null, null,	null);

-- INSERINDO VALORES NA TABELA PEDIDO --

INSERT INTO pedido VALUES (default,'CANCELADO', 13.60, 3, 4, 2);
INSERT INTO pedido VALUES (default, default, 18.30, 2, 2, 5);
INSERT INTO pedido VALUES (default, 'CONFIRMADO', 9.90, 1, 3, 5);
INSERT INTO pedido VALUES (default, 'EM PROCESSAMENTO', 32.20, 4, 1, 5);
INSERT INTO pedido VALUES (default, 'CONFIRMADO', 18.30, 1, 5, 4);
INSERT INTO pedido VALUES (default, 'CONFIRMADO', 0.00, 3, 6, 6);

-- INSERINDO VALORES NA TABELA RELAÇÃO PRODUTO/PEDIDO --

INSERT INTO relacao_produto_pedido VALUES (1,5,1);
INSERT INTO relacao_produto_pedido VALUES (2,3,1);
INSERT INTO relacao_produto_pedido VALUES (3,1,1);
INSERT INTO relacao_produto_pedido VALUES (4,2,3);
INSERT INTO relacao_produto_pedido VALUES (5,4,1);
INSERT INTO relacao_produto_pedido VALUES (6,6,1);

-- INSERINDO VALORES NA TABELA DISPONIBILIZANDO UM PRODUTO --

INSERT INTO disponibilizando_produto VALUES (2,1);
INSERT INTO disponibilizando_produto VALUES (4,2);
INSERT INTO disponibilizando_produto VALUES (4,3);
INSERT INTO disponibilizando_produto VALUES (1,4);
INSERT INTO disponibilizando_produto VALUES (3,5);

-- INSERINDO VALORES NA TABELA PRODUTOS EM ESTOQUE --

INSERT INTO produto_estoque VALUES (2,1,150,default);
INSERT INTO produto_estoque VALUES (1,2,1020,'DISPONIVEL');
INSERT INTO produto_estoque VALUES (3,3,default,'INDISPONIVEL');
INSERT INTO produto_estoque VALUES (2,4,70,default);
INSERT INTO produto_estoque VALUES (3,5,default,'INDISPONIVEL');

-- INSERINDO VALORES NA TABELA PRODUTOS POR VENDENDOR (TERCEIRO) --

INSERT INTO produtos_terceiro_vendedor VALUES (1,4,100);
INSERT INTO produtos_terceiro_vendedor VALUES (2,5,280);
INSERT INTO produtos_terceiro_vendedor VALUES (3,6,default);
