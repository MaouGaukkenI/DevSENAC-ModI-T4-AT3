CREATE INDEX idx_venda_id ON venda (id);
CREATE INDEX idx_venda_tipo_poagamento ON venda (tipo_pagamento);
CREATE INDEX idx_venda_id_cliente ON venda (cliente_id);
CREATE INDEX idx_venda_data ON venda (data);

CREATE INDEX idx_item_venda_id_produro on item_venda (produto_id);
CREATE INDEX idx_item_venda_venda_id ON item_venda (venda_id);
CREATE INDEX idx_item_venda_subtotal ON item_venda (subtotal);
CREATE INDEX idx_item_venda_quantidade ON item_venda (quantidade);
CREATE INDEX idx_item_venda_nome_produto ON item_venda (nome_produto);

CREATE INDEX idx_cliente_nome ON cliente (nome);
CREATE INDEX idx_cliente_cpf ON cliente (cpf);
CREATE INDEX idx_cliente_telefone ON cliente (telefone);
CREATE INDEX idx_cliente_endereco ON cliente (endereco);

CREATE INDEX idx_produto_nome ON produto (nome);
CREATE INDEX idx_produto_descricao ON produto (descricao);
CREATE INDEX idx_produto_estoque ON produto (estoque);
CREATE INDEX idx_produto_fabricante ON produto (fabricante);

-- criei uma index para cada uma das variaveis que foi requisitada na pesquisa.