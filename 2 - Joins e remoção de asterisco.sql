USE uc4atividades;

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
SELECT 
	v.data as Data_venda,
    v.valor_total as Valor_total,
    iv.nome_produto as Nome_produto,
    iv.quantidade as Quantidade,
    iv.valor_unitario as Valor_unitario,
    c.nome as Nome_cliente,
    c.cpf as CPF,
    c.telefone as Telefone
FROM item_venda iv
JOIN venda v ON v.id = iv.venda_id
JOIN produto p ON p.id = iv.produto_id
JOIN cliente c ON c.id = v.cliente_id
WHERE tipo_pagamento = 'D';

/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
SELECT 
	p.nome as Nome_produto,
    p.descricao,
    p.estoque,
    p.fabricante,
    iv.quantidade,
    v.data
FROM item_venda iv
JOIN produto p ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
WHERE p.fabricante like '%lar%';
 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
SELECT 
	c.nome as Nome_cliente,
    c.cpf,
    c.endereco,
    c.telefone,
    p.nome as Nome_produto,
    p.descricao,
    p.estoque,
    p.fabricante,
	SUM(iv.subtotal) as valor_total_venda,
    SUM(iv.quantidade) as quantidade_total_venda
FROM item_venda iv
JOIN  produto p ON p.id = iv.produto_id
JOIN venda v ON v.id = iv.venda_id
JOIN cliente c ON c.id = v.cliente_id
GROUP BY c.nome, c.cpf, c.endereco, c.telefone, p.nome, p.descricao, p.estoque, p.fabricante;
