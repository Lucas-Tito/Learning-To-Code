--mostra quantos quartos padrão o hotel tem
SELECT 'possuimos ' || COUNT(*) || ' quartos padrão livres'FROM quarto 
WHERE tipo_quarto = 'standard' 
and quarto.id_quarto NOT IN ( SELECT id_quarto FROM alocacao_quarto);

--mostra quais são os quartos com quatro camas ou mais o hotel tem
SELECT id_quarto, tipo_quarto FROM quarto WHERE qtd_camas >= 4
and quarto.id_quarto NOT IN ( SELECT id_quarto FROM alocacao_quarto);

--mostra quais são os quartos com cama de casal o hotel tem
SELECT id_quarto, tipo_quarto FROM quarto WHERE tipo_cama = 'casal'
and quarto.id_quarto NOT IN ( SELECT id_quarto FROM alocacao_quarto);

--mostra quantos quartos estão ocupados
SELECT 'no momento ' || COUNT(*) || ' quartos estão ocupados' FROM quarto 
WHERE id_quarto IN (SELECT id_quarto FROM alocacao_quarto);

--seleciona os clientes que alocaram a area de lazer do começo de 2023 
--até setembro
SELECT cliente.nome from cliente 
WHERE cliente.rg_cliente IN (
  SELECT alocacao_area_lazer.rg_cliente FROM alocacao_area_lazer
  WHERE data_alocacao >= '2023-01-01'AND data_alocacao <= '2023-09-30');

--mostra id e nome de todos os quartos ocupados
SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto;

--mostra os quartos com o preço menor que 200
SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto, quarto.preco
FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto
GROUP BY quarto.tipo_quarto, alocacao_quarto.id_alocacao_quarto, quarto.preco
HAVING SUM(preco) < 200;

--mostra as alocações e os tipos de quarto mesmo quando as alocaçãoes são nulas
SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
LEFT OUTER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto;