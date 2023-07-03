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

--telefone dos clientes
INSERT INTO public.fone_cliente VALUES ('551234567');
INSERT INTO public.fone_cliente VALUES ('559876543');
INSERT INTO public.fone_cliente VALUES ('555551212');
INSERT INTO public.fone_cliente VALUES ('557891234');
INSERT INTO public.fone_cliente VALUES ('552345678');
INSERT INTO public.fone_cliente VALUES ('558765432');
INSERT INTO public.fone_cliente VALUES ('553214567');
INSERT INTO public.fone_cliente VALUES ('554567890');
INSERT INTO public.fone_cliente VALUES ('558889999');
INSERT INTO public.fone_cliente VALUES ('550001111');


--registros dos clientes
INSERT INTO public.cliente VALUES (222494827, '551234567', '1999-06-30', 'Vicent Nery');
INSERT INTO public.cliente VALUES (494355797, '559876543', '1988-04-25', 'Peninha');
INSERT INTO public.cliente VALUES (407045703, '555551212', '1970-06-22', 'Zezo');
INSERT INTO public.cliente VALUES (346920024, '557891234', '1977-04-20', 'Lairton e Seus Teclados');
INSERT INTO public.cliente VALUES (453052241, '552345678', '1989-01-12', 'João Mineiro');
INSERT INTO public.cliente VALUES (363914481, '558765432', '1980-03-30', 'Marciano');
INSERT INTO public.cliente VALUES (229279740, '553214567', '1979-02-20', 'Fernando Mendes');
INSERT INTO public.cliente VALUES (159343756, '550001111', '1990-03-09', 'Shakur');
INSERT INTO public.cliente VALUES (120185817, '554567890', '1992-06-02', 'Marília Mendonça');
INSERT INTO public.cliente VALUES (427037578, '558889999', '1989-02-10', 'Jim Croce');


--telefone dos funcionários
INSERT INTO public.fone_func VALUES ('40028922');
INSERT INTO public.fone_func VALUES ('12345678');
INSERT INTO public.fone_func VALUES ('87654321');
INSERT INTO public.fone_func VALUES ('13245678');
INSERT INTO public.fone_func VALUES ('14325678');
INSERT INTO public.fone_func VALUES ('15432678');
INSERT INTO public.fone_func VALUES ('81765432');
INSERT INTO public.fone_func VALUES ('18234567');
INSERT INTO public.fone_func VALUES ('91234567');
INSERT INTO public.fone_func VALUES ('98765432');

--registro dos funcionários
INSERT INTO public.funcionario VALUES (1, '40028922', 'Reginaldo', '2023-06-30');
INSERT INTO public.funcionario VALUES (2, '12345678', 'Ricardo', '2023-04-25');
INSERT INTO public.funcionario VALUES (3, '87654321', 'Josselio Motos', '2022-06-22');
INSERT INTO public.funcionario VALUES (4, '13245678', 'Penirlando', '2022-04-20');
INSERT INTO public.funcionario VALUES (5, '14325678', 'Custodius Xupus', '2021-01-12');
INSERT INTO public.funcionario VALUES (6, '15432678', 'Humunculus Custodius', '2021-03-30');
INSERT INTO public.funcionario VALUES (7, '81765432', 'Amogus Castus', '2020-02-20');
INSERT INTO public.funcionario VALUES (8, '18234567', 'Joe Mango', '2020-03-09');
INSERT INTO public.funcionario VALUES (9, '91234567', 'Xupus Custus', '1540-06-02');
INSERT INTO public.funcionario VALUES (10, '98765432', 'Reginaldo Rossi', '1699-02-10');

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
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (222494827, 1, '2023-01-15');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (494355797, 2, '2023-06-05');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (407045703, 3, '2022-11-11');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (346920024, 4, '2023-04-03');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (453052241, 5, '2022-05-10');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (363914481, 6, '2023-03-22');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (229279740, 7, '2022-09-18');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (159343756, 8, '2022-07-09');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (120185817, 9, '2023-08-27');
INSERT INTO public.alocacao_area_lazer (rg_cliente, id_area_lazer, data_alocacao) VALUES (120185817, 10, '2022-12-01');

-- alocação dos quartos
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (222494827, 1);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (494355797, 2);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (407045703, 3);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (346920024, 4);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto)VALUES (453052241, 5);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (363914481, 6);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (229279740, 7);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (159343756, 8);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (120185817, 9);
INSERT INTO public.alocacao_quarto (rg_cliente, id_quarto) VALUES (120185817, 10);