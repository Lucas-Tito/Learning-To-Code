--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

-- Started on 2023-06-19 23:09:01


--
-- TOC entry 221 (class 1259 OID 16546)
-- Name: alocacao_area_lazer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alocacao_area_lazer (
    id_alocacao_area_lazer integer NOT NULL,
    rg_cliente integer,
    id_area_lazer integer,
    data_alocacao date
);


ALTER TABLE public.alocacao_area_lazer OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16526)
-- Name: alocacao_quarto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alocacao_quarto (
    id_alocacao_quarto integer NOT NULL,
    rg_cliente integer,
    id_quarto integer
);


ALTER TABLE public.alocacao_quarto OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16541)
-- Name: area_lazer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.area_lazer (
    id_area_lazer integer NOT NULL,
    ultima_manutencao date
);


ALTER TABLE public.area_lazer OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16488)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    rg_cliente integer NOT NULL,
    fone_cliente character varying,
    nascimento date,
    nome character varying
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 16481)
-- Name: fone_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fone_cliente (
    fone_cliente character varying NOT NULL
);


ALTER TABLE public.fone_cliente OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16500)
-- Name: fone_func; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fone_func (
    fone_func character varying NOT NULL
);


ALTER TABLE public.fone_func OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16507)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    matricula_func integer NOT NULL,
    fone_func character varying,
    nome character varying,
    data_de_admissao date
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16519)
-- Name: quarto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quarto (
    id_quarto integer NOT NULL,
    preco double precision,
    qtd_camas integer,
    tipo_cama character varying,
    tipo_quarto character varying
);


ALTER TABLE public.quarto OWNER TO postgres;

--
-- TOC entry 3371 (class 0 OID 16546)
-- Dependencies: 221
-- Data for Name: alocacao_area_lazer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alocacao_area_lazer VALUES (1, 222494827, 1, '2023-01-15');
INSERT INTO public.alocacao_area_lazer VALUES (2, 494355797, 2, '2023-06-05');
INSERT INTO public.alocacao_area_lazer VALUES (3, 407045703, 3, '2022-11-11');
INSERT INTO public.alocacao_area_lazer VALUES (4, 346920024, 4, '2023-04-03');
INSERT INTO public.alocacao_area_lazer VALUES (5, 453052241, 5, '2022-05-10');
INSERT INTO public.alocacao_area_lazer VALUES (6, 363914481, 6, '2023-03-22');
INSERT INTO public.alocacao_area_lazer VALUES (7, 229279740, 7, '2022-09-18');
INSERT INTO public.alocacao_area_lazer VALUES (8, 159343756, 8, '2022-07-09');
INSERT INTO public.alocacao_area_lazer VALUES (9, 120185817, 9, '2023-08-27');
INSERT INTO public.alocacao_area_lazer VALUES (10, 120185817, 10, '2022-12-01');


--
-- TOC entry 3369 (class 0 OID 16526)
-- Dependencies: 219
-- Data for Name: alocacao_quarto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alocacao_quarto VALUES (1, 222494827, 1);
INSERT INTO public.alocacao_quarto VALUES (2, 494355797, 2);
INSERT INTO public.alocacao_quarto VALUES (3, 407045703, 3);
INSERT INTO public.alocacao_quarto VALUES (4, 346920024, 4);
INSERT INTO public.alocacao_quarto VALUES (5, 453052241, 5);
INSERT INTO public.alocacao_quarto VALUES (6, 363914481, 6);
INSERT INTO public.alocacao_quarto VALUES (7, 229279740, 7);
INSERT INTO public.alocacao_quarto VALUES (8, 159343756, 8);
INSERT INTO public.alocacao_quarto VALUES (9, 120185817, 9);
INSERT INTO public.alocacao_quarto VALUES (10, 120185817, 10);


--
-- TOC entry 3370 (class 0 OID 16541)
-- Dependencies: 220
-- Data for Name: area_lazer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.area_lazer VALUES (1, '1999-06-30');
INSERT INTO public.area_lazer VALUES (2, '2000-04-25');
INSERT INTO public.area_lazer VALUES (3, '2001-06-22');
INSERT INTO public.area_lazer VALUES (4, '2002-04-20');
INSERT INTO public.area_lazer VALUES (5, '2003-01-12');
INSERT INTO public.area_lazer VALUES (6, '2004-03-30');
INSERT INTO public.area_lazer VALUES (7, '2005-02-20');
INSERT INTO public.area_lazer VALUES (8, '2006-03-09');
INSERT INTO public.area_lazer VALUES (9, '2007-06-02');
INSERT INTO public.area_lazer VALUES (10, '2023-06-30');


--
-- TOC entry 3365 (class 0 OID 16488)
-- Dependencies: 215
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3364 (class 0 OID 16481)
-- Dependencies: 214
-- Data for Name: fone_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3366 (class 0 OID 16500)
-- Dependencies: 216
-- Data for Name: fone_func; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3367 (class 0 OID 16507)
-- Dependencies: 217
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3368 (class 0 OID 16519)
-- Dependencies: 218
-- Data for Name: quarto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quarto VALUES (1, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (2, 280, 1, 'casal', 'deluxe');
INSERT INTO public.quarto VALUES (3, 300, 4, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (4, 450, 3, 'casal', 'deluxe');
INSERT INTO public.quarto VALUES (5, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (6, 180, 1, 'casal', 'standard');
INSERT INTO public.quarto VALUES (7, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (8, 230, 2, 'solteiro', 'deluxe');
INSERT INTO public.quarto VALUES (9, 200, 1, 'casal', 'standard');
INSERT INTO public.quarto VALUES (10, 280, 1, 'casal', 'deluxe');


--
-- TOC entry 3215 (class 2606 OID 16550)
-- Name: alocacao_area_lazer alocacao_area_lazer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_pkey PRIMARY KEY (id_alocacao_area_lazer);


--
-- TOC entry 3211 (class 2606 OID 16530)
-- Name: alocacao_quarto alocacao_quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_pkey PRIMARY KEY (id_alocacao_quarto);


--
-- TOC entry 3213 (class 2606 OID 16545)
-- Name: area_lazer area_lazer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_lazer
    ADD CONSTRAINT area_lazer_pkey PRIMARY KEY (id_area_lazer);


--
-- TOC entry 3203 (class 2606 OID 16494)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (rg_cliente);


--
-- TOC entry 3201 (class 2606 OID 16487)
-- Name: fone_cliente fone_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fone_cliente
    ADD CONSTRAINT fone_cliente_pkey PRIMARY KEY (fone_cliente);


--
-- TOC entry 3205 (class 2606 OID 16506)
-- Name: fone_func fone_func_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fone_func
    ADD CONSTRAINT fone_func_pkey PRIMARY KEY (fone_func);


--
-- TOC entry 3207 (class 2606 OID 16513)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (matricula_func);


--
-- TOC entry 3209 (class 2606 OID 16525)
-- Name: quarto quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (id_quarto);


--
-- TOC entry 3220 (class 2606 OID 16556)
-- Name: alocacao_area_lazer alocacao_area_lazer_id_area_lazer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_id_area_lazer_fkey FOREIGN KEY (id_area_lazer) REFERENCES public.area_lazer(id_area_lazer);


--
-- TOC entry 3221 (class 2606 OID 16551)
-- Name: alocacao_area_lazer alocacao_area_lazer_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- TOC entry 3218 (class 2606 OID 16536)
-- Name: alocacao_quarto alocacao_quarto_id_quarto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_id_quarto_fkey FOREIGN KEY (id_quarto) REFERENCES public.quarto(id_quarto);


--
-- TOC entry 3219 (class 2606 OID 16531)
-- Name: alocacao_quarto alocacao_quarto_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- TOC entry 3216 (class 2606 OID 16495)
-- Name: cliente cliente_fone_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_fone_cliente_fkey FOREIGN KEY (fone_cliente) REFERENCES public.fone_cliente(fone_cliente);


--
-- TOC entry 3217 (class 2606 OID 16514)
-- Name: funcionario funcionario_fone_func_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_fone_func_fkey FOREIGN KEY (fone_func) REFERENCES public.fone_func(fone_func);


-- Completed on 2023-06-19 23:09:01

--
-- PostgreSQL database dump complete
--

SELECT 'possuimos ' || COUNT(*) || ' quartos padrão'FROM quarto WHERE tipo_quarto = 'standard';

SELECT id_quarto, tipo_quarto FROM quarto WHERE qtd_camas >= 4;

SELECT id_quarto, tipo_quarto FROM quarto WHERE tipo_cama = 'casal';

SELECT 'no momento ' || COUNT(*) || ' quartos estão ocupados' FROM quarto 
WHERE id_quarto IN (SELECT id_quarto FROM alocacao_quarto);

SELECT cliente.nome from cliente 
WHERE cliente.rg_cliente IN (
  SELECT alocacao_area_lazer.rg_cliente FROM alocacao_area_lazer
  WHERE data_alocacao >= '2023-01-01'AND data_alocacao <= '2023-09-30');


SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto;


SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto, SUM(preco) 
FROM quarto
INNER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto
GROUP BY quarto.tipo_quarto, alocacao_quarto.id_alocacao_quarto
HAVING SUM(preco) > 1000;


SELECT alocacao_quarto.id_alocacao_quarto, quarto.tipo_quarto FROM quarto
LEFT OUTER JOIN alocacao_quarto ON alocacao_quarto.id_quarto = quarto.id_quarto;