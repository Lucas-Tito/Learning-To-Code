--áreas de lazer e suas últimas data de manutenção
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('1999-06-30');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2000-04-25');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2001-06-22');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2002-04-20');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2003-01-12');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2004-03-30');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2005-02-20');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2006-03-09');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2007-06-02');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2023-06-30');
INSERT INTO public.area_lazer (ultima_manutencao) VALUES ('2023-06-30');


--registros dos clientes
INSERT INTO public.cliente VALUES (222494827, '1999-06-30', 'Vicent Nery');
INSERT INTO public.cliente VALUES (494355797, '1988-04-25', 'Peninha');
INSERT INTO public.cliente VALUES (407045703, '1970-06-22', 'Zezo');
INSERT INTO public.cliente VALUES (346920024, '1977-04-20', 'Lairton e Seus Teclados');
INSERT INTO public.cliente VALUES (453052241, '1989-01-12', 'João Mineiro');
INSERT INTO public.cliente VALUES (363914481, '1980-03-30', 'Marciano');
INSERT INTO public.cliente VALUES (229279740, '1979-02-20', 'Fernando Mendes');
INSERT INTO public.cliente VALUES (159343756, '1990-03-09', 'Shakur');
INSERT INTO public.cliente VALUES (120185817, '1992-06-02', 'Marília Mendonça');
INSERT INTO public.cliente VALUES (427037578, '1989-02-10', 'Jim Croce');

--telefone dos clientes
INSERT INTO public.fone_cliente VALUES ('551234567', 222494827);
INSERT INTO public.fone_cliente VALUES ('559876543', 494355797);
INSERT INTO public.fone_cliente VALUES ('555551212', 407045703);
INSERT INTO public.fone_cliente VALUES ('557891234', 346920024);
INSERT INTO public.fone_cliente VALUES ('552345678', 453052241);
INSERT INTO public.fone_cliente VALUES ('558765432', 363914481);
INSERT INTO public.fone_cliente VALUES ('553214567', 229279740);
INSERT INTO public.fone_cliente VALUES ('554567890', 159343756);
INSERT INTO public.fone_cliente VALUES ('558889999', 120185817);
INSERT INTO public.fone_cliente VALUES ('550001111', 427037578);

--registro dos funcionários
INSERT INTO public.funcionario VALUES (1, 'Reginaldo', '2023-06-30');
INSERT INTO public.funcionario VALUES (2, 'Ricardo', '2023-04-25');
INSERT INTO public.funcionario VALUES (3, 'Josselio Motos', '2022-06-22');
INSERT INTO public.funcionario VALUES (4, 'Penirlando', '2022-04-20');
INSERT INTO public.funcionario VALUES (5, 'Custodius Xupus', '2021-01-12');
INSERT INTO public.funcionario VALUES (6, 'Humunculus Custodius', '2021-03-30');
INSERT INTO public.funcionario VALUES (7, 'Amogus Castus', '2020-02-20');
INSERT INTO public.funcionario VALUES (8, 'Joe Mango', '2020-03-09');
INSERT INTO public.funcionario VALUES (9, 'Xupus Custus', '1540-06-02');
INSERT INTO public.funcionario VALUES (10, 'Reginaldo Rossi', '1699-02-10');


--telefone dos funcionários
INSERT INTO public.fone_func VALUES ('40028922', 1);
INSERT INTO public.fone_func VALUES ('12345678', 2);
INSERT INTO public.fone_func VALUES ('87654321', 3);
INSERT INTO public.fone_func VALUES ('13245678', 4);
INSERT INTO public.fone_func VALUES ('14325678', 5);
INSERT INTO public.fone_func VALUES ('15432678', 6);
INSERT INTO public.fone_func VALUES ('81765432', 7);
INSERT INTO public.fone_func VALUES ('18234567', 8);
INSERT INTO public.fone_func VALUES ('91234567', 9);
INSERT INTO public.fone_func VALUES ('98765432', 10);

--registro dos quartos
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (280, 1, 'casal', 'deluxe');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (300, 4, 'solteiro', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (450, 3, 'casal', 'deluxe');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (180, 1, 'casal', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (230, 2, 'solteiro', 'deluxe');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (230, 2, 'solteiro', 'deluxe');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (200, 1, 'casal', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (200, 1, 'casal', 'standard');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (280, 1, 'casal', 'deluxe');
INSERT INTO public.quarto (preco, qtd_camas, tipo_cama, tipo_quarto) VALUES (280, 1, 'casal', 'deluxe');


-- alocação da area lazer     
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (222494827, 1, '2023-01-15', '2023-01-16');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (494355797, 2, '2023-06-05', '2023-06-06');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (407045703, 3, '2022-11-11', '2022-11-12');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (346920024, 4, '2023-04-03', '2023-04-04');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (453052241, 5, '2022-05-10', '2022-05-11');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (363914481, 6, '2023-03-22', '2023-03-23');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (229279740, 7, '2022-09-18', '2022-09-19');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (159343756, 8, '2022-07-09', '2022-07-10');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (120185817, 9, '2023-08-27', '2023-08-28');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao_inicio, data_alocacao_fim) VALUES (120185817, 10, '2022-12-01', '2022-12-02');

-- alocação dos quartos
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (222494827, 1, '2022-12-01', '2022-12-02');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (494355797, 2, '2023-08-27', '2023-08-28');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (407045703, 3, '2022-07-09', '2022-07-10');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (346920024, 4, '2022-09-18', '2022-09-19');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (453052241, 5, '2023-03-22', '2023-03-23');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (363914481, 6, '2022-05-10', '2022-05-11');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (229279740, 7, '2023-04-03', '2023-04-04');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (159343756, 8, '2022-11-11', '2022-11-12');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (120185817, 9, '2023-06-05', '2023-06-06');
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto, data_alocacao_inicio, data_alocacao_fim) VALUES (120185817, 10, '2023-01-15', '2023-01-16');