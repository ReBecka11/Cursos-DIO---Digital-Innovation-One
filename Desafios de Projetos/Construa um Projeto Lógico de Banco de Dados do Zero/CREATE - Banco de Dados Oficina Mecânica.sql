create database bd_OFICINA;
use bd_OFICINA;

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
    Contato char(14) not null unique
);

create table equipe (
	Identificação int not null auto_increment primary key,
    Responsável varchar(60) not null
);

create table mecanico (
	Código int not null auto_increment primary key,
    Nome varchar(60) not null,
    Especialidade varchar(45) not null,
    Endereço_completo varchar(200) not null,
    Contato char(14) not null unique,
    Identificação int,
    constraint fk_Identificação_equipe foreign key (Identificação) references equipe (Identificação)
   );
   
   create table veículo (
	Id_Veículo int not null auto_increment primary key,
    Placa char(7) not null unique,
    Marca varchar(30) not null,
	Modelo varchar(30) not null,
    Ano_Fabricação int(4) not null,
    Cor varchar(12) not null,
    id_cliente int,
	Identificação int,
	constraint fk_cliente foreign key (id_cliente) references cliente (id_cliente),
    constraint fk_equipe_mecanico foreign key (Identificação) references equipe (Identificação)
);

create table forma_pgto_cartaodecredito (
	id_pgto_cartaodecredito int not null auto_increment primary key,
    Num_cartao varchar(20) not null unique,
    Cvv int not null unique,
    Nome_titular varchar(45) not null,
    Data_Validade char (7) not null,
    Bandeira_cartao ENUM('VISA', 'MASTERCARD', 'ELO')
);

create table forma_pgto_boleto (
	id_pgto_boleto int not null auto_increment primary key,
    Num_boleto varchar(50) not null unique,
    Data_Vencimento date not null
    );

create table pagamento (
	id_pagamento int not null auto_increment primary key,
    id_pgto_cartaodecredito int,
    id_pgto_boleto int,
    constraint fk_pagamento_cartao_credito foreign key (id_pgto_cartaodecredito) references forma_pgto_cartaodecredito (id_pgto_cartaodecredito),
    constraint fk_pagamento_boleto foreign key (id_pgto_boleto) references forma_pgto_boleto (id_pgto_boleto)
);

create table mao_de_obra (
	id_maodeobra int not null auto_increment primary key,
    Descrição varchar(120) not null,
    Valor float not null
);

create table pecas (
	id_peca int not null auto_increment primary key,
    Descrição varchar(120) not null,
    Valor float not null
 );
 
create table ordem_serviço (
	Número_OS int not null auto_increment primary key,
    Data_Emissão date not null,
    Tipo enum('MANUTENÇÃO', 'REVISÃO') not null,
    Valor_total float not null,
    Status_OS enum('AGUARDANDO', 'APROVADO', 'RECUSADO', 'EM EXECUÇÃO', 'CONCLUÍDO') not null default 'AGUARDANDO',
    Data_Conclusão date not null,
	id_maodeobra int,
    id_peca int,
    id_pagamento int,
    Id_Veículo int,   
	constraint fk_maodeobra foreign key (id_peca) references pecas (id_peca),
    constraint fk_pecas foreign key (id_maodeobra) references mao_de_obra (id_maodeobra),
    constraint fk_pagamento foreign key (id_pagamento) references pagamento (id_pagamento),
    constraint fk_veículo foreign key (Id_Veículo) references veículo (Id_Veículo)
)