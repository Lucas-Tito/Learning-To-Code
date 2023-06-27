SELECT 'possuimos ' || COUNT(*) || ' quartos padrão'FROM quarto WHERE tipo_quarto = 'standard'

SELECT id_quarto, tipo_quarto FROM quarto WHERE qtd_camas >= 4

SELECT id_quarto, tipo_quarto FROM quarto WHERE tipo_cama = 'casal'

SELECT 'no momento ' || COUNT(*) || ' quartos estão ocupados' FROM quarto 
WHERE id_quarto IN (SELECT id_quarto FROM alocacao_quarto)

SELECT cliente.nome from cliente 
WHERE cliente.rg_cliente IN (
  SELECT alocacao_area_lazer.rg_cliente FROM alocacao_area_lazer
  WHERE data_alocacao >= '2023-01-01'AND data_alocacao <= '2023-09-30')


SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto


SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto , SUM(preco) FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto
GROUP BY quarto.tipo_quarto, alocacao_quarto.id_alocacao_quarto


SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
LEFT OUTER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto