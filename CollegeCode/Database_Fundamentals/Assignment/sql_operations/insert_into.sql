INSERT INTO fone_func (fone_func) 
VALUES ('40028922'), ('12345678'), ('87654321'), ('13245678'), ('14325678'),
	('15432678'), ('81765432'), ('18234567'), ('91234567'), ('98765432');


INSERT INTO funcionario (matricula_func, fone_func, nome, data_de_admissao) 
VALUES (1, '40028922', 'Reginaldo', '2023-06-30'), (2, '12345678', 'Ricardo', '2023-04-25'), 
	(3, '87654321', 'Josselio Motos', '2022-06-22'), (4, '13245678', 'Penirlando', '2022-04-20'), 
       (5, '14325678', 'Custodius Xupus', '2021-01-12'), (6, '15432678', 'Humunculus Custodius', '2021-03-30'), 
       (7, '81765432', 'Amogus Castus', '2020-02-20'), (8, '18234567', 'Joe Mango', '2020-03-09'), 
       (9, '91234567', 'Xupus Custus', '1540-06-02'), (10, '98765432', 'Reginaldo Rossi', '1699-02-10');


INSERT INTO fone_cliente (fone_cliente) 
VALUES ('551234567'), ('559876543'), ('555551212'), ('557891234'), ('552345678'),
	('558765432'), ('553214567'), ('554567890'), ('558889999'), ('550001111');


INSERT INTO cliente (rg_cliente, fone_cliente, nome, nascimento) 
VALUES (222494827, '551234567', 'Vicent Nery', '1999-06-30'), (494355797, '559876543', 'Peninha', '1988-04-25'), 
	(407045703, '555551212', 'Zezo', '1970-06-22'), (346920024, '557891234', 'Lairton e Seus Teclados', '1977-04-20'), 
       (453052241, '552345678', 'João Mineiro', '1989-01-12'), (363914481, '558765432', 'Marciano', '1980-03-30'), 
       (229279740, '553214567', 'Fernando Mendes', '1979-02-20'), (159343756, '550001111', 'Shakur', '1990-03-09'), 
       (120185817, '554567890', 'Marília Mendonça', '1992-06-02'), (427037578, '558889999', 'Jim Croce', '1989-02-10');    
      

INSERT INTO quarto (id_quarto, preco, qtd_camas, tipo_cama, tipo_quarto) 
VALUES (1, 150, 2, 'solteiro', 'standard'), (2, 280, 1, 'casal', 'deluxe'), 
	(3, 300, 4, 'solteiro', 'standard'), (4, 450, 3, 'casal', 'deluxe'), 
       (5, 150, 2, 'solteiro', 'standard'), (6, 180, 1, 'casal', 'standard'), 
       (7, 150, 2, 'solteiro', 'standard'), (8, 230, 2, 'solteiro', 'deluxe'), 
       (9, 200, 1, 'casal', 'standard'), (10, 280, 1, 'casal', 'deluxe');

INSERT INTO alocacao_quarto (id_alocacao_quarto, rg_cliente, id_quarto)
VALUES (1, 222494827, 1), (2, 494355797, 2), (3, 407045703, 3), (4, 346920024, 4),
       (5, 453052241, 5), (6, 363914481, 6), (7, 229279740, 7), (8, 159343756, 8),
       (9, 120185817, 9), (10, 120185817, 10);
       
INSERT INTO area_lazer (id_area_lazer, ultima_manutencao)
VALUES (1, '1999-06-30'), (2, '2000-04-25'), 
	(3, '2001-06-22'), (4, '2002-04-20'), 
       (5, '2003-01-12'), (6, '2004-03-30'), 
       (7, '2005-02-20'), (8, '2006-03-09'), 
       (9, '2007-06-02'), (10, '2023-06-30');
       
       
INSERT INTO alocacao_area_lazer (id_alocacao_area_lazer, rg_cliente, id_area_lazer, data_alocacao)
VALUES (1, 222494827, 1, '2023-01-15'), (2, 494355797, 2, '2023-06-05'), 
	(3, 407045703, 3, '2022-11-11'), (4, 346920024, 4, '2023-04-03'),
       (5, 453052241, 5, '2022-05-10'), (6, 363914481, 6, '2023-03-22'), 
       (7, 229279740, 7, '2022-09-18'), (8, 159343756, 8, '2022-07-09'),
       (9, 120185817, 9, '2023-08-27'), (10, 120185817, 10, '2022-12-01');
      