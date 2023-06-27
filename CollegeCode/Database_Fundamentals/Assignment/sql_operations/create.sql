
CREATE TABLE fone_cliente(
	fone_cliente VARCHAR,
  	PRIMARY KEY (fone_cliente)
);

CREATE TABLE cliente(
  rg_cliente INTEGER,
  fone_cliente VARCHAR,
  nascimento DATE,
  nome VARCHAR,
  PRIMARY KEY(rg_cliente),
  FOREIGN KEY(fone_cliente) REFERENCES fone_cliente(fone_cliente)
);

create TABLE fone_func(
	fone_func VARCHAR PRIMARY KEY
);

CREATE TABLE funcionario(
	matricula_func INTEGER,
  	fone_func VARCHAR,
  	nome VARCHAR,
  	data_de_admissao DATE,
  	PRIMARY KEY(matricula_func),
  	FOREIGN KEY(fone_func) REFERENCES fone_func(fone_func)
);

CREATE TABLE quarto(
	id_quarto INTEGER,
  	preco FLOAT,
  	qtd_camas INTEGER,
  	tipo_cama VARCHAR,
  	tipo_quarto VARCHAR,
  	PRIMARY KEY(id_quarto)
);

CREATE TABLE alocacao_quarto(
	id_alocacao_quarto INTEGER,
  	rg_cliente INTEGER,
  	id_quarto INTEGER,
  	PRIMARY KEY(id_alocacao_quarto),
  	FOREIGN KEY(rg_cliente) REFERENCES cliente(rg_cliente),
  	FOREIGN KEY(id_quarto) REFERENCES quarto(id_quarto)
);

CREATE TABLE area_lazer(
	id_area_lazer INTEGER,
  	ultima_manutencao DATE,
  	PRIMARY KEY(id_area_lazer)
);

CREATE TABLE alocacao_area_lazer(
	id_alocacao_area_lazer INTEGER,
  	rg_cliente INTEGER,
  	id_area_lazer INTEGER,
  	data_alocacao DATE,
  	PRIMARY KEY(id_alocacao_area_lazer),
  	FOREIGN KEY(rg_cliente) REFERENCES cliente(rg_cliente),
 	FOREIGN KEY(id_area_lazer) REFERENCES area_lazer(id_area_lazer)
);