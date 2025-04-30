use oficina; 

-- RECUPERAÇÃO SIMPLES COM SELECT
SELECT * FROM veiculos;

-- Filtros com WHERE Statement
SELECT c.Nome, v.modelo, s.nome_servico
	FROM clientes c
    INNER JOIN cliente_veiculo vc
    ON c.idCliente = vc.idCliente
    INNER JOIN veiculos v
    ON vc.idVeiculo = v.idVeiculo
    INNER JOIN ordem o 
    ON c.idCliente = o.idCliente
    INNER JOIN servicos s
    ON o.idServico = s.idServico
    WHERE s.nome_servico = 'Troca de óleo';
    
    -- Crie expressões para gerar atributos derivados
    SELECT v.modelo, v.cor, op.valor_pagamento 'valor sem desconto', ROUND(op.valor_pagamento * 0.90, 2) 'valor com desconto'
		FROM veiculos v 
        INNER JOIN ordem o 
        ON o.idVeiculo = v.idVeiculo
        INNER JOIN ordem_pagamento op
        ON o.idOrdem = op.idOrdem
        WHERE v.cor = 'Vermelho';

-- Defina ordenações dos dados com ORDER BY

	SELECT s.nome_servico, op.valor_pagamento
	FROM ordem_pagamento op 
	INNER JOIN ordem o 
	ON op.idOrdem = o.idOrdem
	INNER JOIN servicos s
	ON o.idServico = s.idServico
	ORDER BY op.valor_pagamento DESC;
    
    -- Condições de filtros aos grupos – HAVING Statement; 
    SELECT f.nome_funcionario, f.idFuncionario, COUNT(sf.idFuncionario) qntd_apareceu
    FROM servicos s 
    INNER JOIN servico_funcionario sf
    ON s.idServico = sf.idServico
    INNER JOIN funcionarios f 
    ON f.idFuncionario = sf.idFuncionario
    GROUP BY f.idFuncionario, f.nome_funcionario
    HAVING COUNT(sf.idFuncionario) > 1 ;
    
   
    -- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
    SELECT s.nome_servico, p.nome_peca 
		FROM servicos s 
        INNER JOIN servico_peca sp
        ON s.idServico = sp.idServico
        INNER JOIN pecas p 
        ON p.idPeca = sp.idPeca;
  

    


