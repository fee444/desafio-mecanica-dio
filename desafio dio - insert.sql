use oficina;

INSERT INTO clientes (Endereco, Nome, CPF) VALUES
('Rua das Flores, 123', 'João Silva', '123.456.789-00'),
('Av. Paulista, 1000', 'Maria Souza', '987.654.321-00'),
('Rua A, 45', 'Carlos Lima', '111.222.333-44'),
('Rua B, 76', 'Fernanda Dias', '555.666.777-88'),
('Av. Brasil, 321', 'Lucas Oliveira', '999.888.777-66'),
('Rua do Sol, 90', 'Aline Costa', '222.333.444-55'),
('Rua X, 10', 'Ricardo Mendes', '444.555.666-77'),
('Av. das Nações, 300', 'Beatriz Ramos', '666.777.888-99'),
('Rua Z, 88', 'Paulo Vieira', '000.111.222-33'),
('Av. Central, 59', 'Juliana Rocha', '888.999.000-11');


INSERT INTO veiculos (placa, modelo, cor) VALUES
('ABC1234', 'Fiat Uno', 'Vermelho'),
('XYZ9876', 'Honda Civic', 'Preto'),
('DEF5678', 'Toyota Corolla', 'Branco'),
('GHI4321', 'Ford Ka', 'Prata'),
('JKL8765', 'Chevrolet Onix', 'Azul'),
('MNO6543', 'Renault Kwid', 'Cinza'),
('PQR3210', 'Volkswagen Gol', 'Preto'),
('STU0987', 'Hyundai HB20', 'Branco'),
('VWX7654', 'Peugeot 208', 'Vermelho'),
('YZA5432', 'Jeep Renegade', 'Verde');


INSERT INTO cliente_veiculo (idCliente, idVeiculo) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

INSERT INTO funcionarios (nome_funcionario, CPF, data_nasc) VALUES
('Carlos Pinto', '12345678901', '1990-05-12'),
('Mariana Reis', '23456789012', '1985-11-30'),
('André Gomes', '34567890123', '1992-03-20'),
('Patrícia Lima', '45678901234', '1988-07-25'),
('Roberto Silva', '56789012345', '1995-12-10'),
('Renata Costa', '67890123456', '1993-06-18'),
('Felipe Rocha', '78901234567', '1991-09-01'),
('Tatiane Freitas', '89012345678', '1994-02-14'),
('Lucas Azevedo', '90123456789', '1989-08-05'),
('Juliana Moura', '01234567890', '1996-04-22');


INSERT INTO servicos (nome_servico) VALUES
('Troca de óleo'),
('Alinhamento e balanceamento'),
('Revisão completa'),
('Troca de pastilhas de freio'),
('Reparo no sistema elétrico'),
('Substituição de embreagem'),
('Diagnóstico eletrônico'),
('Troca de pneus'),
('Limpeza de bico'),
('Troca de bateria');


INSERT INTO pecas (nome_peca) VALUES
('Filtro de óleo'),
('Pastilha de freio'),
('Velas de ignição'),
('Bateria 60Ah'),
('Pneu 175/65 R14'),
('Filtro de ar'),
('Correia dentada'),
('Embreagem completa'),
('Sensor de oxigênio'),
('Lâmpada farol H7');

INSERT INTO estoque (idPeca, quantidade) VALUES
(1, 30),  -- Filtro de óleo
(2, 20),  -- Pastilha de freio
(3, 50),  -- Velas de ignição
(4, 15),  -- Bateria 60Ah
(5, 40),  -- Pneu 175/65 R14
(6, 25),  -- Filtro de ar
(7, 10),  -- Correia dentada
(8, 8),   -- Embreagem completa
(9, 12),  -- Sensor de oxigênio
(10, 35); -- Lâmpada farol H7

INSERT INTO servico_peca (idServico, idPeca) VALUES
(1, 1),  -- Troca de óleo usa Filtro de óleo
(1, 6),  -- Troca de óleo usa Filtro de ar
(2, 2),  -- Alinhamento e balanceamento usa Pastilha de freio
(3, 7),  -- Revisão completa usa Correia dentada
(4, 2),  -- Troca de pastilhas de freio usa Pastilha de freio
(5, 9),  -- Reparo no sistema elétrico usa Sensor de oxigênio
(6, 8),  -- Substituição de embreagem usa Embreagem completa
(7, 3),  -- Diagnóstico eletrônico usa Velas de ignição
(8, 5),  -- Troca de pneus usa Pneu 175/65 R14
(9, 10), -- Limpeza de bico usa Lâmpada farol H7
(10, 4); -- Troca de bateria usa Bateria 60Ah


INSERT INTO servico_funcionario (idServico, idFuncionario) VALUES
(1, 1),  -- Troca de óleo com Carlos Pinto
(2, 2),  -- Alinhamento e balanceamento com Mariana Reis
(3, 1),  -- Revisão completa com Carlos Pinto
(4, 3),  -- Troca de pastilhas de freio com André Gomes
(5, 4),  -- Reparo no sistema elétrico com Patrícia Lima
(6, 1),  -- Substituição de embreagem com Carlos Pinto
(7, 5),  -- Diagnóstico eletrônico com Roberto Silva
(8, 2),  -- Troca de pneus com Mariana Reis
(9, 6),  -- Limpeza de bico com Renata Costa
(10, 3); -- Troca de bateria com André Gomes

INSERT INTO ordem (idCliente, idVeiculo, idServico) VALUES
(1, 1, 1),  -- Cliente 1, Veículo 1, Serviço Troca de óleo
(2, 2, 2),  -- Cliente 2, Veículo 2, Serviço Alinhamento e balanceamento
(3, 3, 3),  -- Cliente 3, Veículo 3, Serviço Revisão completa
(4, 4, 4),  -- Cliente 4, Veículo 4, Serviço Troca de pastilhas de freio
(5, 5, 5),  -- Cliente 5, Veículo 5, Serviço Reparo no sistema elétrico
(6, 6, 6),  -- Cliente 6, Veículo 6, Serviço Substituição de embreagem
(7, 7, 7),  -- Cliente 7, Veículo 7, Serviço Diagnóstico eletrônico
(8, 8, 8),  -- Cliente 8, Veículo 8, Serviço Troca de pneus
(9, 9, 9),  -- Cliente 9, Veículo 9, Serviço Limpeza de bico
(10, 10, 10); -- Cliente 10, Veículo 10, Serviço Troca de bateria

INSERT INTO pagamento (tipo_pagamento) VALUES
('Cartão de Crédito'),
('Dinheiro'),
('Pix');

INSERT INTO ordem_pagamento (idOrdem, idPagamento, data_pagamento, valor_pagamento) VALUES
(1, 1, '2024-10-01', 350.00),
(2, 2, '2024-10-01', 500.00),
(3, 3, '2024-10-01', 275.50),
(4, 1, '2024-10-02', 600.00),
(5, 2, '2024-10-02', 450.75),
(6, 3, '2024-10-03', 320.00),
(7, 1, '2024-10-03', 700.00),
(8, 2, '2024-10-04', 150.00),
(9, 3, '2024-10-04', 920.99),
(10, 1, '2024-10-05', 1100.00);



