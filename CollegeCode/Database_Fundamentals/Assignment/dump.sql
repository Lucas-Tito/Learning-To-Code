

CREATE TABLE public.alocacao_area_lazer (
    id_alocacao_area_lazer integer NOT NULL,
    rg_cliente integer,
    id_area_lazer integer,
    data_alocacao_inicio date,
    data_alocacao_fim date
);


ALTER TABLE public.alocacao_area_lazer OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 18225)
-- Name: alocacao_area_lazer_id_alocacao_area_lazer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alocacao_area_lazer_id_alocacao_area_lazer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alocacao_area_lazer_id_alocacao_area_lazer_seq OWNER TO postgres;

--
-- TOC entry 3397 (class 0 OID 0)
-- Dependencies: 215
-- Name: alocacao_area_lazer_id_alocacao_area_lazer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alocacao_area_lazer_id_alocacao_area_lazer_seq OWNED BY public.alocacao_area_lazer.id_alocacao_area_lazer;


--
-- TOC entry 216 (class 1259 OID 18226)
-- Name: alocacao_quarto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.alocacao_quarto (
    id_alocacao_quarto integer NOT NULL,
    rg_cliente integer,
    id_quarto integer,
    data_alocacao_inicio date,
    data_alocacao_fim date
);


ALTER TABLE public.alocacao_quarto OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 18229)
-- Name: alocacao_quarto_id_alocacao_quarto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.alocacao_quarto_id_alocacao_quarto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.alocacao_quarto_id_alocacao_quarto_seq OWNER TO postgres;

--
-- TOC entry 3399 (class 0 OID 0)
-- Dependencies: 217
-- Name: alocacao_quarto_id_alocacao_quarto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.alocacao_quarto_id_alocacao_quarto_seq OWNED BY public.alocacao_quarto.id_alocacao_quarto;


--
-- TOC entry 218 (class 1259 OID 18230)
-- Name: area_lazer; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.area_lazer (
    id_area_lazer integer NOT NULL,
    ultima_manutencao date
);


ALTER TABLE public.area_lazer OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 18233)
-- Name: area_lazer_id_area_lazer_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.area_lazer_id_area_lazer_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.area_lazer_id_area_lazer_seq OWNER TO postgres;

--
-- TOC entry 3401 (class 0 OID 0)
-- Dependencies: 219
-- Name: area_lazer_id_area_lazer_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.area_lazer_id_area_lazer_seq OWNED BY public.area_lazer.id_area_lazer;


--
-- TOC entry 220 (class 1259 OID 18234)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    rg_cliente integer NOT NULL,
    nascimento date,
    nome character varying
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 18239)
-- Name: fone_cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fone_cliente (
    fone_cliente character varying NOT NULL,
    rg_cliente integer
);


ALTER TABLE public.fone_cliente OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 18244)
-- Name: fone_func; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fone_func (
    fone_func character varying NOT NULL,
    matricula_func integer
);


ALTER TABLE public.fone_func OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 18249)
-- Name: funcionario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.funcionario (
    matricula_func integer NOT NULL,
    nome character varying,
    data_de_admissao date
);


ALTER TABLE public.funcionario OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 18254)
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
-- TOC entry 225 (class 1259 OID 18259)
-- Name: quarto_id_quarto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.quarto_id_quarto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quarto_id_quarto_seq OWNER TO postgres;

--
-- TOC entry 3407 (class 0 OID 0)
-- Dependencies: 225
-- Name: quarto_id_quarto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.quarto_id_quarto_seq OWNED BY public.quarto.id_quarto;


--
-- TOC entry 226 (class 1259 OID 18311)
-- Name: top3_nonspenders; Type: VIEW; Schema: public; Owner: postgres
--

CREATE VIEW public.top3_nonspenders AS
 SELECT cliente.rg_cliente,
    cliente.nome,
    ( SELECT sum(quarto.preco) AS sum
           FROM (public.quarto
             JOIN public.alocacao_quarto ON ((quarto.id_quarto = alocacao_quarto.id_quarto)))
          WHERE ((alocacao_quarto.rg_cliente = cliente.rg_cliente) AND ((alocacao_quarto.data_alocacao_inicio >= '2023-01-01'::date) AND (alocacao_quarto.data_alocacao_inicio <= '2023-12-31'::date)))) AS total_gasto
   FROM public.cliente
  ORDER BY ( SELECT sum(quarto.preco) AS sum
           FROM (public.quarto
             JOIN public.alocacao_quarto ON ((quarto.id_quarto = alocacao_quarto.id_quarto)))
          WHERE ((alocacao_quarto.rg_cliente = cliente.rg_cliente) AND ((alocacao_quarto.data_alocacao_inicio >= '2023-01-01'::date) AND (alocacao_quarto.data_alocacao_inicio <= '2023-12-31'::date))))
 LIMIT 3;


ALTER TABLE public.top3_nonspenders OWNER TO postgres;

--
-- TOC entry 3209 (class 2604 OID 18260)
-- Name: alocacao_area_lazer id_alocacao_area_lazer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer ALTER COLUMN id_alocacao_area_lazer SET DEFAULT nextval('public.alocacao_area_lazer_id_alocacao_area_lazer_seq'::regclass);


--
-- TOC entry 3210 (class 2604 OID 18261)
-- Name: alocacao_quarto id_alocacao_quarto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto ALTER COLUMN id_alocacao_quarto SET DEFAULT nextval('public.alocacao_quarto_id_alocacao_quarto_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 18262)
-- Name: area_lazer id_area_lazer; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_lazer ALTER COLUMN id_area_lazer SET DEFAULT nextval('public.area_lazer_id_area_lazer_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 18263)
-- Name: quarto id_quarto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto ALTER COLUMN id_quarto SET DEFAULT nextval('public.quarto_id_quarto_seq'::regclass);


--
-- TOC entry 3378 (class 0 OID 18222)
-- Dependencies: 214
-- Data for Name: alocacao_area_lazer; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alocacao_area_lazer VALUES (1, 222494827, 1, '2023-01-15', '2023-01-16');
INSERT INTO public.alocacao_area_lazer VALUES (2, 494355797, 2, '2023-06-05', '2023-06-06');
INSERT INTO public.alocacao_area_lazer VALUES (3, 407045703, 3, '2022-11-11', '2022-11-12');
INSERT INTO public.alocacao_area_lazer VALUES (4, 346920024, 4, '2023-04-03', '2023-04-04');
INSERT INTO public.alocacao_area_lazer VALUES (5, 453052241, 5, '2022-05-10', '2022-05-11');
INSERT INTO public.alocacao_area_lazer VALUES (6, 363914481, 6, '2023-03-22', '2023-03-23');
INSERT INTO public.alocacao_area_lazer VALUES (7, 229279740, 7, '2022-09-18', '2022-09-19');
INSERT INTO public.alocacao_area_lazer VALUES (8, 159343756, 8, '2022-07-09', '2022-07-10');
INSERT INTO public.alocacao_area_lazer VALUES (9, 120185817, 9, '2023-08-27', '2023-08-28');
INSERT INTO public.alocacao_area_lazer VALUES (10, 120185817, 10, '2022-12-01', '2022-12-02');
INSERT INTO public.alocacao_area_lazer VALUES (11, 123, 1, '2023-07-10', '2023-07-13');


--
-- TOC entry 3380 (class 0 OID 18226)
-- Dependencies: 216
-- Data for Name: alocacao_quarto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.alocacao_quarto VALUES (1, 222494827, 1, '2022-12-01', '2022-12-02');
INSERT INTO public.alocacao_quarto VALUES (2, 494355797, 2, '2023-08-27', '2023-08-28');
INSERT INTO public.alocacao_quarto VALUES (3, 407045703, 3, '2022-07-09', '2022-07-10');
INSERT INTO public.alocacao_quarto VALUES (4, 346920024, 4, '2022-09-18', '2022-09-19');
INSERT INTO public.alocacao_quarto VALUES (5, 453052241, 5, '2023-03-22', '2023-03-23');
INSERT INTO public.alocacao_quarto VALUES (6, 363914481, 6, '2022-05-10', '2022-05-11');
INSERT INTO public.alocacao_quarto VALUES (7, 229279740, 7, '2023-04-03', '2023-04-04');
INSERT INTO public.alocacao_quarto VALUES (8, 159343756, 8, '2022-11-11', '2022-11-12');
INSERT INTO public.alocacao_quarto VALUES (9, 120185817, 9, '2023-06-05', '2023-06-06');
INSERT INTO public.alocacao_quarto VALUES (10, 120185817, 10, '2023-01-15', '2023-01-16');


--
-- TOC entry 3382 (class 0 OID 18230)
-- Dependencies: 218
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
INSERT INTO public.area_lazer VALUES (11, '2023-06-30');
INSERT INTO public.area_lazer VALUES (12, '2023-07-10');


--
-- TOC entry 3384 (class 0 OID 18234)
-- Dependencies: 220
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

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
INSERT INTO public.cliente VALUES (123, '2023-07-11', 'Lucas Tito S');


--
-- TOC entry 3385 (class 0 OID 18239)
-- Dependencies: 221
-- Data for Name: fone_cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3386 (class 0 OID 18244)
-- Dependencies: 222
-- Data for Name: fone_func; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3387 (class 0 OID 18249)
-- Dependencies: 223
-- Data for Name: funcionario; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


--
-- TOC entry 3388 (class 0 OID 18254)
-- Dependencies: 224
-- Data for Name: quarto; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.quarto VALUES (1, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (2, 280, 1, 'casal', 'deluxe');
INSERT INTO public.quarto VALUES (3, 300, 4, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (4, 450, 3, 'casal', 'deluxe');
INSERT INTO public.quarto VALUES (5, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (6, 180, 1, 'casal', 'standard');
INSERT INTO public.quarto VALUES (7, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (8, 150, 2, 'solteiro', 'standard');
INSERT INTO public.quarto VALUES (9, 230, 2, 'solteiro', 'deluxe');
INSERT INTO public.quarto VALUES (10, 230, 2, 'solteiro', 'deluxe');
INSERT INTO public.quarto VALUES (11, 200, 1, 'casal', 'standard');
INSERT INTO public.quarto VALUES (12, 200, 1, 'casal', 'standard');
INSERT INTO public.quarto VALUES (13, 280, 1, 'casal', 'deluxe');
INSERT INTO public.quarto VALUES (14, 280, 1, 'casal', 'deluxe');


--
-- TOC entry 3409 (class 0 OID 0)
-- Dependencies: 215
-- Name: alocacao_area_lazer_id_alocacao_area_lazer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alocacao_area_lazer_id_alocacao_area_lazer_seq', 11, true);


--
-- TOC entry 3410 (class 0 OID 0)
-- Dependencies: 217
-- Name: alocacao_quarto_id_alocacao_quarto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.alocacao_quarto_id_alocacao_quarto_seq', 10, true);


--
-- TOC entry 3411 (class 0 OID 0)
-- Dependencies: 219
-- Name: area_lazer_id_area_lazer_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.area_lazer_id_area_lazer_seq', 12, true);


--
-- TOC entry 3412 (class 0 OID 0)
-- Dependencies: 225
-- Name: quarto_id_quarto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.quarto_id_quarto_seq', 14, true);


--
-- TOC entry 3214 (class 2606 OID 18265)
-- Name: alocacao_area_lazer alocacao_area_lazer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_pkey PRIMARY KEY (id_alocacao_area_lazer);


--
-- TOC entry 3216 (class 2606 OID 18267)
-- Name: alocacao_quarto alocacao_quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_pkey PRIMARY KEY (id_alocacao_quarto);


--
-- TOC entry 3218 (class 2606 OID 18269)
-- Name: area_lazer area_lazer_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.area_lazer
    ADD CONSTRAINT area_lazer_pkey PRIMARY KEY (id_area_lazer);


--
-- TOC entry 3220 (class 2606 OID 18271)
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (rg_cliente);


--
-- TOC entry 3222 (class 2606 OID 18273)
-- Name: fone_cliente fone_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fone_cliente
    ADD CONSTRAINT fone_cliente_pkey PRIMARY KEY (fone_cliente);


--
-- TOC entry 3224 (class 2606 OID 18275)
-- Name: fone_func fone_func_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fone_func
    ADD CONSTRAINT fone_func_pkey PRIMARY KEY (fone_func);


--
-- TOC entry 3226 (class 2606 OID 18277)
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (matricula_func);


--
-- TOC entry 3228 (class 2606 OID 18279)
-- Name: quarto quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (id_quarto);


--
-- TOC entry 3229 (class 2606 OID 18280)
-- Name: alocacao_area_lazer alocacao_area_lazer_id_area_lazer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_id_area_lazer_fkey FOREIGN KEY (id_area_lazer) REFERENCES public.area_lazer(id_area_lazer);


--
-- TOC entry 3230 (class 2606 OID 18285)
-- Name: alocacao_area_lazer alocacao_area_lazer_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- TOC entry 3231 (class 2606 OID 18290)
-- Name: alocacao_quarto alocacao_quarto_id_quarto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_id_quarto_fkey FOREIGN KEY (id_quarto) REFERENCES public.quarto(id_quarto);


--
-- TOC entry 3232 (class 2606 OID 18295)
-- Name: alocacao_quarto alocacao_quarto_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- TOC entry 3233 (class 2606 OID 18300)
-- Name: fone_cliente fone_cliente_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fone_cliente
    ADD CONSTRAINT fone_cliente_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- TOC entry 3234 (class 2606 OID 18305)
-- Name: fone_func fone_func_matricula_func_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fone_func
    ADD CONSTRAINT fone_func_matricula_func_fkey FOREIGN KEY (matricula_func) REFERENCES public.funcionario(matricula_func);


--
-- TOC entry 3395 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: pg_database_owner
--

GRANT USAGE ON SCHEMA public TO readonly_user;


--
-- TOC entry 3396 (class 0 OID 0)
-- Dependencies: 214
-- Name: TABLE alocacao_area_lazer; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.alocacao_area_lazer TO readonly_user;


--
-- TOC entry 3398 (class 0 OID 0)
-- Dependencies: 216
-- Name: TABLE alocacao_quarto; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.alocacao_quarto TO readonly_user;


--
-- TOC entry 3400 (class 0 OID 0)
-- Dependencies: 218
-- Name: TABLE area_lazer; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.area_lazer TO readonly_user;


--
-- TOC entry 3402 (class 0 OID 0)
-- Dependencies: 220
-- Name: TABLE cliente; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.cliente TO readonly_user;


--
-- TOC entry 3403 (class 0 OID 0)
-- Dependencies: 221
-- Name: TABLE fone_cliente; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.fone_cliente TO readonly_user;


--
-- TOC entry 3404 (class 0 OID 0)
-- Dependencies: 222
-- Name: TABLE fone_func; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.fone_func TO readonly_user;


--
-- TOC entry 3405 (class 0 OID 0)
-- Dependencies: 223
-- Name: TABLE funcionario; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.funcionario TO readonly_user;


--
-- TOC entry 3406 (class 0 OID 0)
-- Dependencies: 224
-- Name: TABLE quarto; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.quarto TO readonly_user;


--
-- TOC entry 3408 (class 0 OID 0)
-- Dependencies: 226
-- Name: TABLE top3_nonspenders; Type: ACL; Schema: public; Owner: postgres
--

GRANT SELECT ON TABLE public.top3_nonspenders TO readonly_user;


--
-- TOC entry 2070 (class 826 OID 18310)
-- Name: DEFAULT PRIVILEGES FOR TABLES; Type: DEFAULT ACL; Schema: public; Owner: postgres
--

ALTER DEFAULT PRIVILEGES FOR ROLE postgres IN SCHEMA public GRANT SELECT ON TABLES  TO readonly_user;


-- Completed on 2023-07-11 13:18:17

--
-- PostgreSQL database dump complete
--

--mostra quantos quartos padrão o hotel tem
SELECT COUNT(*) FROM quarto 
WHERE tipo_quarto = 'standard' 
and quarto.id_quarto NOT IN ( SELECT id_quarto FROM alocacao_quarto);

--mostra quais são os quartos com quatro camas ou mais o hotel tem livre
SELECT id_quarto, tipo_quarto FROM quarto WHERE qtd_camas >= 4
and quarto.id_quarto NOT IN ( SELECT id_quarto FROM alocacao_quarto);

--mostra quais são os quartos com cama de casal o hotel tem livre
SELECT id_quarto, tipo_quarto FROM quarto WHERE tipo_cama = 'casal'
and quarto.id_quarto NOT IN ( SELECT id_quarto FROM alocacao_quarto);

--mostra quantos quartos estão ocupados
SELECT COUNT(*) FROM quarto 
WHERE id_quarto IN (SELECT id_quarto FROM alocacao_quarto);

--seleciona os clientes que alocaram a area de lazer do começo de 2023 
--até setembro
SELECT cliente.nome from cliente 
WHERE cliente.rg_cliente IN (
  SELECT alocacao_area_lazer.rg_cliente FROM alocacao_area_lazer
  WHERE data_alocacao_inicio >= '2023-01-01'AND data_alocacao_inicio <= '2023-09-30');

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