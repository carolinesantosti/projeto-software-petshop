-- Inserindo dados na tabela Cliente --
INSERT INTO cliente (id_cliente, nome_cliente, endereco_cliente, email_cliente, tel_cliente) 
VALUES
    ('1','João Silva', 'Rua Visconde do Uruguai, 123','joao.silva@gmail.com', '21994583698');
INSERT INTO cliente (nome_cliente, endereco_cliente, email_cliente, tel_cliente) 
VALUES    
    ('Maria Souza', 'Rua Visconde do Rio Branco, 365 apto. 302', 'maria.souza@gmail.com', '21978454321'),
    ('Cauã Cambezes', 'Rua Marechal Deodoro, 74 apto. 605', 'caua.cambezes@yahoo.com.br', '21986543251'),
	('Taynara Fiães', 'Rua São João, 85', 'taynarafiaes@hotmail.com', '21994743596'),
	('Felipe Lima','Rua Saldanha Marinho, 86 apto 504','felipe_lima@gmail.com', '21981325648');
SELECT * FROM cliente;

-- Inserindo dados na tabela Pet --
INSERT INTO pet (id_pet, id_cliente, nome_pet, especie, raca, data_nasc) 
VALUES
    ('1', '1', 'Rex', 'Cão', 'Labrador', '2018-01-15');
INSERT INTO pet (id_cliente, nome_pet, especie, raca, data_nasc) 
VALUES
    ('2', 'Mia', 'Gato', 'Siamês', '2019-05-20'),
	('3', 'Thor', 'Cão', 'Pastor Alemão', '2022-06-21'),
    ('4', 'Cora', 'Gato', 'Persa', '2017-04-12'),
	('5', 'Cristal', 'Cão', 'Beagle', '2022-11-19');
SELECT * FROM pet;
    
-- Inserindo dados na tabela Fornecedor --
INSERT INTO fornecedor (id_fornecedor, nome_fornecedor, endereco, telefone, CNPJ, insc_estadual) 
VALUES
    ('1', 'AMF Pet', 'Avenida Dedo de Deus, 201, Vila Formosa - São Paulo - SP, CEP 03363-100', '(11)99512-3474', '42.348.439/0001-50', '131.393.050.114');
INSERT INTO fornecedor (nome_fornecedor, endereco, telefone, CNPJ, insc_estadual) 
VALUES
    ('Furacão Pet', 'Rua Sophia Bagnato, 400, São Paulo - SP, CEP 13573-460', '(16)3509-2800', '17.259.965/0001-04', NULL),
	('My Pet', 'Rua Alencar Araripe, 212, Sacomã, São Paulo - SP, CEP 04253-000', '(11)2914-1594', '10.203.622/0001-70', NULL),
	('NF Pet', 'Rua Marapanim, 182 - JD, Cumbica - Guarulhos - SP, CEP 07240-230', '(11)4970-8010', '19.096.458/0001-14', NULL),
    ('Petix', 'Rua Fiacao da Saude, 145, Edif Paineiras, Sala Comercial 112, Vila da Saude - São Paulo - SP, CEP 04144-902', '(11)4800-1800', '09.134.070/0001-07 ', NULL);
SELECT * FROM fornecedor;

-- Inserindo dados na tabela Produto --
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, descr_produto, valor_produto, qtd_estoque) 
VALUES
    ('1', '1', 'Cama Nova York', 'Cama em tecido suede, super resistente com enchimento em fibra siliconizada antiarlégica, antifúngica e antímofo.', '160.00', '100');
INSERT INTO produto (id_fornecedor, nome_produto, descr_produto, valor_produto, qtd_estoque) 
VALUES
    ('1','Brinquedo Jambo Mordedor Corda Osso Kelev', 'A corda para cachorro Kelev da Jambo é um brinquedo projetado para proporcionar diversão, exercício e estimulação mental para o seu cão', '45.00', '50'),
	('2','Arranhador de Papelão', 'Ótima distração para p seu gato; Não usa aditivos químicos; Design arrojado.', '44.00', '40'),
    ('2','Brinquedo Tubarão Azul com Catnip HomePet Único', 'Indicado para gatos; Com erva de gato (catnip); Feito em nylon; Estimula a atividade física; Ajuda a reduzir o estresse', '19.95', '30'),
    ('3','Biscoito Premier Cookie para cães filhotes porte médico e grande sabor frango - 250gr', 'Pele e pelagem; Saúde intestinal; Paladares exigentes; Sem adição de açúcar; Sem ingredientes trnasgênicos; Sem corantes e aromatizantes artificiais.', '16.90', '150'),
    ('3','Osso Defumado Mini Fêmur ChurrasPet', 'Limpa os dentes e controla o tártaro; Combate o mau hálito, excelente para a saúde das gengivas.', '10.90', 60),
    ('4','Comedouro Regulável Médio Água Ração', 'Possui regulagem de altura, o mais indicado pelos veterinários para que o dono coloque as bacias na altura correta para alimentação do animal.', '89.00', '20'),
    ('5','Ração Premier Fórmula para Cães Sênior de Porte Grande e Gigante Sabor Frango 15kg', 'Indicada para cães sênior; Envelhicimento saudável; Suporte diferenciado para articulações senis.', '262.99', '200'),
    ('5','Ração GranPlus Choice para Gatos Adultos Sabor Frango e Carne 10,1kg', 'Cozida a vapor; Feita para os paladares mais exigentes; Auxilia no controle de peso.', '128.75', '80'),
    ('5','Purê Churu Atum e Salmão para Gatos 56g', 'Feito com atum selvagem e salmão do Pacífico puro e natural; SEm grãos, conservantes ou corantes.', '24.99', '120');
    SELECT * FROM produto;

-- Inserindo dados na tabela Funcionários --
INSERT INTO funcionarios (id_funcionarios, nome_funcionario, CPF, telefone, cargo, salario) 
VALUES
    ('1', 'Carlos Oliveira', '84537768061', '(21)97981-5226', 'Atendente', '2000.00');
INSERT INTO funcionarios (nome_funcionario, CPF, telefone, cargo, salario) 
VALUES
	('Evelyn Picanço', '03074142057', '(21)97981-5226', 'Atendente', '2000.00'),
	('Marina Frazão', '21788502000', '(21)98456-8475', 'Banhista/Tosador', '3500.00'),
	('Joana Freitas', '85690938025', '(21)98524-7032', 'Banhista/Tosador', '3500.00'),
    ('Marcos Valadão', '40967947081', '(21)99756-5984', 'Gerente', '6000.00');
SELECT * FROM funcionarios;
    
-- Inserindo dados na tabela Servicos --
INSERT INTO servicos (id_servicos, id_funcionarios, tipo_servicos, preco_servicos) 
VALUES
    ('1', '3', 'Banho e Tosa', '100.00');
INSERT INTO Servicos (id_funcionarios, tipo_servicos, preco_servicos) 
VALUES
    ('4', 'Tosa', '40.00'),
    ('3', 'Banho', '70.00'); 
SELECT * FROM servicos;


-- Inserindo dados na tabela Agendamento --
INSERT INTO agendamento (id_agendamento, id_cliente, id_servico, id_funcionarios, data_agendamento, tipo_servico_agendado) 
VALUES
    (1, 1, 3, 3, '2023-01-10', 'Banho');
INSERT INTO agendamento (id_cliente, id_servico, id_funcionarios, data_agendamento, tipo_servico_agendado) 
VALUES
    (2, 2, 4, '2023-01-12', 'Tosa'),
    (3, 3, 3, '2023-11-23', 'Banho'),
    (4, 1, 4, '2023-06-14', 'Banho e Tosa');
SELECT * FROM agendamento;  


-- Inserindo dados na tabela Vendas
INSERT INTO vendas (id_vendas, id_cliente, id_funcionarios, datahora_venda, valor_total_venda, forma_pagamento) 
VALUES
    (1, 1, 1, '2023-01-10 10:30:00', '45.00', 'credito');
INSERT INTO vendas (id_cliente, id_funcionarios, datahora_venda, valor_total_venda, forma_pagamento) 
VALUES
    (4, 1, '2023-01-12 09:54:25', '19.95', 'debito'),  
	(3, 2, '2023-01-08 12:12:34', '89.00', 'debito'), 
    (5, 2, '2023-01-04 18:21:04', '24.99', 'dinheiro'), 
    (2, 1, '2023-01-03 15:09:42', '128.75', 'credito');
SELECT * FROM vendas; 
    
-- Inserindo dados na tabela Cupom Fiscal --
INSERT INTO cupom_fiscal (id_cupom_fiscal, id_cliente, id_vendas, id_funcionarios, id_produto, data_emissao, valor_total) 
VALUES
    (1, 1, 1, 1, 2, '2023-01-10', 45.00);
INSERT INTO cupom_fiscal (id_cliente, id_vendas, id_funcionarios, id_produto, data_emissao, valor_total) 
VALUES   
	(4, 2, 1, 4, '2023-01-12', '19.95'),
    (3, 3, 2, 7, '2023-01-12', '89.00'),
    (5, 4, 2, 10, '2023-01-12', '24.99'),
    (2, 5, 1, 9, '2023-01-12', '128.75');
SELECT * FROM cupom_fiscal;
    




