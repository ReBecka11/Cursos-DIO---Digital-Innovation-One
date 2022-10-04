create database bd_ECOMMERCE;
use bd_ECOMMERCE;

create table cliente (
	id_cliente int not null auto_increment primary key,
    tipo enum('PF', 'PJ') not null,
    CPF_CNPJ varchar(14) not null unique,
    Nome_RazãoSocial varchar(45) not null,
    Logradouro varchar(45) not null,
    Número varchar(10) not null,
    Complemento varchar(20),
    Bairro varchar(20) not null,
    Cidade varchar(45)	not	null,
    UF char(2) not null,
    CEP char(8) not	null,
    Contato char(14) not null unique,
    EMAIL varchar(30) not null unique,
    Senha char(8) not null    
    );
    
create table produto (
	id_produto int not null auto_increment primary key,
    Categoria ENUM('FEMININO', 'MASCULINO', 'INFANTIL') not	null,
    Tipo ENUM('VESTIÁRIO', 'CALÇADOS', 'ACESSÓRIOS') not null,
    Tamanho VARCHAR(20) not null,
    Descrição_produto VARCHAR(45),
    Valor float not null
);

create table estoque (
id_estoque int not null auto_increment primary key,
Endereço_Completo VARCHAR(60) not null
);

create table terceiro_vendedor (
	id_terceiro_vendedor int not null auto_increment primary key,
    tipo enum('PF', 'PJ') not null,
    CPF_CNPJ varchar(14) not null unique,
    Nome_RazãoSocial varchar(45) not null,
    Endereço_Completo VARCHAR(60) not null
    );
    
create table fornecedor (
	id_fornencedor int not null auto_increment primary key,
    Razão_Social varchar(45) not null unique,
    Nome_Fantasia varchar(45),
    CPF_CNPJ varchar(14) not null unique,
	Endereço_Completo VARCHAR(60) not null
    );
    
create table entrega (
    id_entrega int not null auto_increment primary key,
    Status_entrega ENUM('EM SEPARAÇÃO', 'EM TRANSITO', 'ENTREGUE', 'DEVOLVIDO') default 'EM SEPARAÇÃO',
    Cód_rastreamento VARCHAR(45) not null
    );

create table forma_pgto_cartaodecredito (
	id_pgto_cartaodecredito int not null auto_increment primary key,
    Num_cartao int not null unique,
    Cvv int not null unique,
    Nome_titular varchar(45) not null,
    Data_Validade date not null,
    Bandeira_cartao ENUM('VISA', 'MASTERCARD', 'ELO')
);

create table forma_pgto_boleto (
	id_pgto_boleto int not null auto_increment primary key,
    Num_boleto int not null unique,
    Data_Vencimento date not null
    );
    
create table forma_pgto_pix (
	id_pgto_pix int not null auto_increment primary key,
    Tipo_chave ENUM('CPF', 'CNPJ', 'EMAIL', 'CELULAR', 'ALEATORIO') not null,
    Chave_pix varchar(50) not null
    );

create table forma_pgto_voucher (
	id_pgto_voucher int not null auto_increment primary key,
    Num_voucher varchar(20) not null unique,
    Data_Vencimento date not null
    );
    
create table pagamento (
	id_pagamento int not null auto_increment primary key,
    id_pgto_cartaodecredito int,
    id_pgto_boleto int,
    id_pgto_pix int,
    id_pgto_voucher int,
    constraint fk_pagamento_cartao_credito foreign key (id_pgto_cartaodecredito) references forma_pgto_cartaodecredito (id_pgto_cartaodecredito),
    constraint fk_pagamento_boleto foreign key (id_pgto_boleto) references forma_pgto_boleto (id_pgto_boleto),
    constraint fk_pagamento_pix foreign key (id_pgto_pix) references forma_pgto_pix (id_pgto_pix),
    constraint fk_pagamento_voucher foreign key (id_pgto_voucher) references forma_pgto_voucher (id_pgto_voucher)
    );

create table pedido (
	id_pedido int not null auto_increment primary key,
    Status_pedido enum('EM PROCESSAMENTO', 'CONFIRMADO', 'CANCELADO') not null default 'EM PROCESSAMENTO',
	Frete float not null,
    id_cliente int,
    id_entrega int,
    id_pagamento int,
	constraint fk_cliente foreign key (id_cliente) references cliente (id_cliente),
    constraint fk_entrega foreign key (id_entrega) references entrega (id_entrega),
    constraint fk_pagamento foreign key (id_pagamento) references pagamento (id_pagamento)
);

create table relacao_produto_pedido (
	id_pedido int,
    id_produto int,
    Quantidade int not null default 1,   
    constraint fk_pedido foreign key (id_pedido) references pedido (id_pedido),
    constraint fk_produto foreign key (id_produto) references produto (id_produto)
    );

create table disponibilizando_produto (
	id_fornecedor int,
    id_produto int,
	constraint fk_fornecedor foreign key (id_fornecedor) references fornecedor (id_fornencedor),
    constraint fk_produtodisponivel foreign key (id_produto) references produto (id_produto)
    );

create table produto_estoque (
	id_estoque int,
    id_produto int,
    Quantidade int default 0,   
    Status_Pdt_estoque ENUM('DISPONIVEL', 'INDISPONIVEL') not null default 'DISPONIVEL',
    constraint fk_estoque foreign key (id_estoque) references estoque (id_estoque),
    constraint fk_produto_estoque foreign key (id_produto) references produto (id_produto)
    );
    
create table produtos_terceiro_vendedor (
	id_terceiro_vendedor int,
    id_produto int,
    Quantidade int not null default 1,   
    constraint fk_terceiro_vendedor foreign key (id_terceiro_vendedor) references terceiro_vendedor (id_terceiro_vendedor),
    constraint fk_produto_terceiro foreign key (id_produto) references produto (id_produto)
    );