CREATE DATABASE petshop_carol;
USE petshop_carol;

-- Criação das tabelas --

-- -----------------------------------------------------
-- Tabela Cliente --
-- -----------------------------------------------------
CREATE TABLE cliente
(
	id_cliente INT NOT NULL AUTO_INCREMENT,
	nome_cliente VARCHAR(80) NOT NULL,
	endereco_cliente TEXT NOT NULL,
	email_cliente VARCHAR(100) NOT NULL,
	tel_cliente VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_cliente)
);


-- -----------------------------------------------------
-- Tabela Pet
-- -----------------------------------------------------
CREATE TABLE pet
(
	id_pet INT NOT NULL AUTO_INCREMENT,
	id_cliente INT NOT NULL,
	nome_pet VARCHAR(45) NOT NULL,
	especie VARCHAR(45) NOT NULL,
	raca VARCHAR(45) NOT NULL,
	data_nasc DATE NOT NULL,
	PRIMARY KEY (id_pet),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
  );


-- -----------------------------------------------------
-- Tabela Fornecedor
-- -----------------------------------------------------
CREATE TABLE fornecedor
(
	id_fornecedor INT NOT NULL AUTO_INCREMENT,
	nome_fornecedor VARCHAR(45) NOT NULL,
	endereco VARCHAR(100) NOT NULL,
	telefone VARCHAR(45) NOT NULL,
	CNPJ VARCHAR(45) NOT NULL,
	insc_estadual VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_fornecedor)
  );


-- -----------------------------------------------------
-- Tabela Produto
-- -----------------------------------------------------
CREATE TABLE produto
(
	id_produto INT NOT NULL AUTO_INCREMENT,
	id_fornecedor INT NOT NULL,
	nome_produto VARCHAR(45) NOT NULL,
	descr_produto MEDIUMTEXT NOT NULL,
	valor_produto DECIMAL(5,2) NOT NULL,
	qtd_estoque DECIMAL NOT NULL,
	PRIMARY KEY (id_produto),
    FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor)
 );


-- -----------------------------------------------------
-- Tabela Funcionarios
-- -----------------------------------------------------
CREATE TABLE funcionarios
(
	id_funcionarios INT NOT NULL AUTO_INCREMENT,
	nome_funcionario VARCHAR(100) NOT NULL,
	cargo VARCHAR(45) NOT NULL,
	CPF VARCHAR(45) NOT NULL,
	endereco VARCHAR(45) NOT NULL,
	telefone VARCHAR(45) NOT NULL,
	email VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_funcionarios)
);


-- -----------------------------------------------------
-- Tabela Servicos
-- -----------------------------------------------------
CREATE TABLE servicos 
(
	id_servicos INT NOT NULL AUTO_INCREMENT,
	id_funcionarios INT NOT NULL,
	tipo_servicos VARCHAR(45) NOT NULL,
	preco_servicos DECIMAL(5,2) NOT NULL,
	PRIMARY KEY (id_servicos),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
  );


-- -----------------------------------------------------
-- Tabela Agendamento
-- -----------------------------------------------------
CREATE TABLE agendamento 
(
	id_agendamento INT NOT NULL AUTO_INCREMENT,
	id_cliente INT NOT NULL,
	id_servico INT NOT NULL,
	id_funcionarios INT NOT NULL,
	data_agendamento DATE NOT NULL,
	tipo_servico_agendado VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_agendamento),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_servico) REFERENCES servicos (id_servicos),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);


-- -----------------------------------------------------
-- Tabela Cupom_Fiscal
-- -----------------------------------------------------
CREATE TABLE cupom_fiscal
(
	id_cupom_fiscal INT NOT NULL AUTO_INCREMENT,
	id_cliente INT NOT NULL,
	id_funcionarios INT NOT NULL,
	data_emissao DATE NOT NULL,
	valor_total DECIMAL(5,2) NOT NULL,
	PRIMARY KEY (id_cupom_fiscal),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);


-- -----------------------------------------------------
-- Tabela Vendas
-- -----------------------------------------------------
CREATE TABLE vendas
(
	id_vendas INT NOT NULL AUTO_INCREMENT,
	id_cupom_fiscal INT NOT NULL,
	id_cliente INT NOT NULL,
	id_funcionarios INT NOT NULL,
	datahora_venda DATETIME NOT NULL,
	valor_total_venda DECIMAL(5,2) NOT NULL,
	forma_pagamento VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_vendas),
    FOREIGN KEY (id_cupom_fiscal) REFERENCES cupom_fiscal (id_cupom_fiscal),
    FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
    FOREIGN KEY (id_funcionarios) REFERENCES funcionarios (id_funcionarios)
);

-- Alterações de tabelas --
ALTER TABLE funcionarios DROP COLUMN endereco;
ALTER TABLE funcionarios DROP COLUMN email;
ALTER TABLE cupom_fiscal ADD COLUMN id_vendas INT NOT NULL;
ALTER TABLE cupom_fiscal ADD FOREIGN KEY (id_vendas) REFERENCES vendas (id_vendas);
ALTER TABLE cupom_fiscal ADD COLUMN id_produto INT NOT NULL;
ALTER TABLE cupom_fiscal ADD FOREIGN KEY (id_produto) REFERENCES produto (id_produto);
ALTER TABLE vendas DROP FOREIGN KEY vendas_ibfk_1;
ALTER TABLE vendas DROP COLUMN id_cupom_fiscal;






