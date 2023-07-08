--ideia de view -> top 3 clientes que mais gastaram no ano de 2023
CREATE VIEW top3_spenders AS
SELECT cliente.rg_cliente, cliente.nome, 
    (SELECT SUM(quarto.preco) FROM quarto 
    INNER JOIN alocacao_quarto ON quarto.id_quarto = alocacao_quarto.id_quarto
    WHERE alocacao_quarto.rg_cliente = cliente.rg_cliente) AS total_gasto
FROM cliente
ORDER BY total_gasto DESC
LIMIT 3;

