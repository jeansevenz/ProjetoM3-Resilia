-- Selecionar a quantidade total de clientes cadastrados no banco;
select count(nome) from cliente;
-- Selecionar todos os alunos com os respectivos produtos que compraram;
select cl.nome, pr.nome from cliente cl INNER JOIN cliente_has_pedido clp on cpf = cliente_cpf
INNER JOIN pedido on clp.pedido_idPedido = idPedido
INNER JOIN produto pr on idPedido= pr.pedido_idPedido;
-- Mostrar os vendedores que são PJ com seus respectivos produtos vendidos;
select ve.nome, contrato, pr.nome from vendedor ve INNER JOIN produto_has_vendedor on matricula = vendedor_matricula
INNER JOIN produto pr on codProduto = produto_codProduto and contrato = 'PJ';

-- Selecionar o valor total de produtos vendidos;
select sum(valor) as total_da_venda from produto;