CREATE DATABASE oficina;
use oficina;

DROP TABLE ordem_pagamento;


CREATE TABLE clientes(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
    Endereco VARCHAR(255) NOT NULL,
    Nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(14) NOT NULL UNIQUE
);
ALTER TABLE clientes AUTO_INCREMENT = 1;

CREATE TABLE veiculos(
	idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(8) NOT NULL,
    modelo VARCHAR(30) NOT NULL,
    cor VARCHAR(10) NOT NULL
);
ALTER TABLE veiculos AUTO_INCREMENT = 1;

CREATE TABLE servicos(
	idServico INT AUTO_INCREMENT PRIMARY KEY,
    nome_servico VARCHAR(50) NOT NULL
);

CREATE TABLE pecas(
	idPeca INT AUTO_INCREMENT PRIMARY KEY,
    nome_peca VARCHAR(100) NOT NULL
);

CREATE TABLE funcionarios(
	idFuncionario INT AUTO_INCREMENT PRIMARY KEY,
    nome_funcionario VARCHAR(20) NOT NULL,
    CPF CHAR(11) NOT NULL UNIQUE,
    data_nasc DATE NOT NULL
);

CREATE TABLE ordem(
	idOrdem INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT NOT NULL,
    idVeiculo INT NOT NULL,
    idServico INT NOT NULL,
    CONSTRAINT fk_ordem_cliente FOREIGN KEY(idCliente) REFERENCES clientes(idCliente),
	CONSTRAINT fk_ordem_veiculo FOREIGN KEY(idVeiculo) REFERENCES veiculos(idVeiculo),
    CONSTRAINT fk_ordem_servico FOREIGN KEY(idServico) REFERENCES servicos(idServico)
);
ALTER TABLE ordem AUTO_INCREMENT = 1;

CREATE TABLE pagamento(
idPagamento INT AUTO_INCREMENT PRIMARY KEY,
tipo_pagamento VARCHAR(30) NOT NULL
);

CREATE TABLE fornecedor(
	idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_fornec VARCHAR(20) NOT NULL
);

CREATE TABLE estoque(
	idEstoque INT AUTO_INCREMENT PRIMARY KEY,
    idPeca INT NOT NULL,
    quantidade INT NOT NULL,
    CONSTRAINT fk_estoque_peca FOREIGN KEY(idPeca) REFERENCES pecas(idPeca)
);

CREATE TABLE cliente_veiculo(
idCliente INT NOT NULL,
idVeiculo INT NOT NULL,
PRIMARY KEY(idCliente, idVeiculo),
CONSTRAINT fk_cliente FOREIGN KEY(idCliente) REFERENCES clientes(idCliente),
CONSTRAINT fk_veiculo FOREIGN KEY(idVeiculo) REFERENCES veiculos(idVeiculo)
);

CREATE TABLE servico_peca(
	idServico INT NOT NULL,
    idPeca INT NOT NULL,
    PRIMARY KEY(idServico, idPeca),
    CONSTRAINT fk_servico FOREIGN KEY(idServico) REFERENCES servicos(idServico),
	CONSTRAINT fk_peca FOREIGN KEY(idPeca) REFERENCES pecas(idPeca)
);

CREATE TABLE servico_funcionario(
	idServico INT NOT NULL,
    idFuncionario INT NOT NULL,
    PRIMARY KEY(idServico, idFuncionario),
	CONSTRAINT fk_servico_funcionario FOREIGN KEY(idServico) REFERENCES servicos(idServico),
	CONSTRAINT fk_funcionario FOREIGN KEY(idFuncionario) REFERENCES funcionarios(idFuncionario)
);

CREATE TABLE fornecedor_peca(
	idFornecedor INT NOT NULL,
    idPeca INT NOT NULL,
	PRIMARY KEY(idFornecedor, idPeca),
    CONSTRAINT fk_fornecedor_peca FOREIGN KEY(idFornecedor) REFERENCES fornecedor(idFornecedor),
	CONSTRAINT fk_peca_fornecedor FOREIGN KEY(idPeca) REFERENCES pecas(idPeca)
);

CREATE TABLE ordem_pagamento(
	idOrdem INT NOT NULL PRIMARY KEY,
    idPagamento INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_pagamento DECIMAL(10,2) NOT NULL,
	CONSTRAINT fk_ordem_pagamento FOREIGN KEY(idOrdem) REFERENCES ordem(idOrdem),
	CONSTRAINT fk_ordem_tipo_pagamento FOREIGN KEY(idPagamento) REFERENCES pagamento(idPagamento)
    
);