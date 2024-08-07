USE uc4atividades;

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
CREATE VIEW view_vendas_pagas_em_dinheiro AS
SELECT 
--  as variaveis requisitadas pela quetão são as: data da venda, valor total, produtos vendidos, quantidade, valor unitario dos produtos, nome do cliente, cpf, e telefone
	v.data as Data_venda,
    v.valor_total as Valor_total,
    iv.nome_produto as Nome_produto,
    iv.quantidade as Quantidade,
    iv.valor_unitario as Valor_unitario,
    c.nome as Nome_cliente,
    c.cpf as CPF,
    c.telefone as Telefone
--  as variaveis que requisitei acima foi as que achei nescessario de acordo com o que foi pedido    
FROM item_venda iv
JOIN venda v ON v.id = iv.venda_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
JOIN produto p ON p.id = iv.produto_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
JOIN cliente c ON c.id = v.cliente_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
WHERE tipo_pagamento = 'D' -- este comando continuou como WHERE para que apenas as vendas pagas em dinheiro fosse apresentada
ORDER BY V.data ASC; -- usei este comando para a pesquisa ser apresentada na ordem que foi pedida pela questão

/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
CREATE VIEW view_vendas_por_fabricante AS
SELECT 
--  as variaveis requisitadas na questão foram: dados do produto (eu coloquei todos os dados que eram referentes ao produto em si, sem considerar id que é referente a organização das tabelas), quntidade de produtos, data da venda
	p.nome as Nome_produto,
    p.descricao,
    p.estoque,
    p.fabricante,
    iv.quantidade,
    v.data
--  as variaveis que requisitei acima foi as que achei nescessario de acordo com o que foi pedido
FROM item_venda iv
JOIN produto p ON p.id = iv.produto_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
JOIN venda v ON v.id = iv.venda_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
WHERE p.fabricante like '%lar%'
ORDER BY P.nome ASC; -- usei este comando para a pesquisa ser apresentada na ordem que foi pedida pela questão
 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/

CREATE VIEW viewn_produtos_por_cliente AS
SELECT 
--  as vairiaveis que foram pedidas seriam: dados do clientwe e do produto, quantidade dos produtos, alem das somas dos totais de produtos e valor dos produtos.
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
--  as variaveis que requisitei acima foi as que achei nescessario de acordo com o que foi pedido
FROM item_venda iv
JOIN  produto p ON p.id = iv.produto_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
JOIN venda v ON v.id = iv.venda_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
JOIN cliente c ON c.id = v.cliente_id -- preferi insereis as requisições de restriação de ids usando o comando ON no lu=gar de usar um comando WHERE para diminuir a complexidade da pesquisa que teria muitas restrições.
GROUP BY c.nome, c.cpf, c.endereco, c.telefone, p.nome, p.descricao, p.estoque, p.fabricante; -- alimentei com mais variaveis de acordo com as que eu apresentei
