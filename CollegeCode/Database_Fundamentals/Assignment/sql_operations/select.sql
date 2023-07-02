--mostra quantos quartos padrão o hotel tem
--UPDATE: mostrar quantos quartos padrão estão DISPONÍVEIS
SELECT 'possuimos ' || COUNT(*) || ' quartos padrão'FROM quarto WHERE tipo_quarto = 'standard';

--mostra quantos quartos com quatro camas ou mais o hotel tem
--UPDATE: mostrar quantos quartos com quatro camas ou mais estão DISPONÍVEIS
SELECT id_quarto, tipo_quarto FROM quarto WHERE qtd_camas >= 4;

--mostra quantos quartos com cama de casal o hotel tem
--UPDATE: mostrar quantos quartos com cama de casal estão DISPONÍVEIS
SELECT id_quarto, tipo_quarto FROM quarto WHERE tipo_cama = 'casal';

--mostra quantos quartos estão ocupados
SELECT 'no momento ' || COUNT(*) || ' quartos estão ocupados' FROM quarto 
WHERE id_quarto IN (SELECT id_quarto FROM alocacao_quarto);

--seleciona os clientes que alocaram a area de lazer do começo de 2023 até setembro
SELECT cliente.nome from cliente 
WHERE cliente.rg_cliente IN (
  SELECT alocacao_area_lazer.rg_cliente FROM alocacao_area_lazer
  WHERE data_alocacao >= '2023-01-01'AND data_alocacao <= '2023-09-30');

--mostra id e nome de todos os quartos ocupados
SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto;

--esse select aqui não faz muito sentido, pega todos os quartos alugados e mostra a soma do preço de todos os quartos alugados ao lado 
--de cada um dos quartos, onde o preço é menor que mil (chongers moments)
SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto, SUM(preco) 
FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto
GROUP BY quarto.tipo_quarto, alocacao_quarto.id_alocacao_quarto
HAVING SUM(preco) > 1000;

--pega todos os quartos ocupados, só que usando o left outer join sem motivo aparente
--dá pra ser mais criativo que isso
SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
LEFT OUTER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto;