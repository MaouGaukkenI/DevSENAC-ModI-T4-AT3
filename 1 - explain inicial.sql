USE uc4atividades;

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
SELECT 
	v.data as DataDaVenda,
    v.valor_total as ValorTotal,
    iv.nome_produto as NomeDoProduto,
    iv.quantidade as Quantidade,
    iv.valor_unitario as ValorUnitario,
    c.nome as NomeDocliente,
    c.cpf as CPF,
    c.telefone as Telefone
FROM venda v
JOIN item_venda iv
JOIN produto p
JOIN cliente c
JOIN funcionario f
WHERE v.id = iv.venda_id AND c.id = v.cliente_id AND p.id = iv.produto_id AND f.id = v.funcionario_id and tipo_pagamento = 'D';

/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
SELECT 
	p.*,
    iv.quantidade,
    v.data
FROM produto p
JOIN item_venda iv
JOIN venda v
WHERE p.id = iv.produto_id AND v.id = iv.venda_id AND p.fabricante like '%lar%';
 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
SELECT 
	c.*,
    p.*,
	SUM(iv.subtotal) as valor_total_venda,
    SUM(iv.quantidade) as quantidade_total_venda
FROM cliente c
JOIN venda v ON c.id = v.cliente_id
JOIN item_venda iv ON
JOIN produto p
WHERE p.id = iv.produto_id AND v.id = iv.venda_id AND c.id = v.cliente_id /*f.id = v.funcionario_id*/
GROUP BY c.nome, p.nome




