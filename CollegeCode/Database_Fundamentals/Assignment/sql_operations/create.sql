CREATE TABLE cliente(
  rg_cliente INTEGER,
  nascimento DATE,
  nome VARCHAR,
  PRIMARY KEY(rg_cliente)
);

CREATE TABLE fone_cliente(
	fone_cliente VARCHAR,
	rg_cliente INTEGER,
  	PRIMARY KEY (fone_cliente),
	FOREIGN KEY(rg_cliente) REFERENCES cliente(rg_cliente)
);

CREATE TABLE funcionario(
	matricula_func INTEGER,
  	nome VARCHAR,
  	data_de_admissao DATE,
  	PRIMARY KEY(matricula_func)
);


create TABLE fone_func(
	fone_func VARCHAR,
	matricula_func INTEGER,
	PRIMARY KEY (fone_func),
	FOREIGN KEY(matricula_func) REFERENCES funcionario(matricula_func)
);


CREATE TABLE quarto(
	id_quarto SERIAL PRIMARY KEY,
  	preco FLOAT,
  	qtd_camas INTEGER,
  	tipo_cama VARCHAR,
  	tipo_quarto VARCHAR
);


CREATE TABLE alocacao_quarto(
	id_alocacao_quarto SERIAL PRIMARY KEY,
  	rg_cliente INTEGER,
  	id_quarto INTEGER,
	data_alocacao_inicio DATE,
	data_alocacao_fim DATE,
  	FOREIGN KEY(rg_cliente) REFERENCES cliente(rg_cliente),
  	FOREIGN KEY(id_quarto) REFERENCES quarto(id_quarto)
);

CREATE TABLE area_lazer(
	id_area_lazer SERIAL PRIMARY KEY,
  	ultima_manutencao DATE
);

CREATE TABLE alocacao_area_lazer(
	id_alocacao_area_lazer SERIAL PRIMARY KEY,
  	rg_cliente INTEGER,
  	id_area_lazer INTEGER,
  	data_alocacao_inicio DATE,
	data_alocacao_fim DATE,
  	FOREIGN KEY(rg_cliente) REFERENCES cliente(rg_cliente),
 	FOREIGN KEY(id_area_lazer) REFERENCES area_lazer(id_area_lazer)
);