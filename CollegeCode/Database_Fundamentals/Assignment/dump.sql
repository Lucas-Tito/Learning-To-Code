--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2 (Debian 15.2-1.pgdg110+1)
-- Dumped by pg_dump version 15.2 (Debian 15.2-1.pgdg110+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: titos_hotel; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA titos_hotel;


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: alocacao_area_lazer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alocacao_area_lazer (
    id_alocacao_area_lazer integer NOT NULL,
    rg_cliente integer,
    id_area_lazer integer,
    data_alocacao date
);


--
-- Name: alocacao_quarto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.alocacao_quarto (
    id_alocacao_quarto integer NOT NULL,
    rg_cliente integer,
    id_quarto integer
);


--
-- Name: area_lazer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.area_lazer (
    id_area_lazer integer NOT NULL,
    ultima_manutencao date
);


--
-- Name: cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.cliente (
    rg_cliente integer NOT NULL,
    fone_cliente character varying,
    nascimento date,
    nome character varying
);


--
-- Name: fone_cliente; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fone_cliente (
    fone_cliente character varying NOT NULL
);


--
-- Name: fone_func; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.fone_func (
    fone_func character varying NOT NULL
);


--
-- Name: funcionario; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.funcionario (
    matricula_func integer NOT NULL,
    fone_func character varying,
    nome character varying,
    data_de_admissao date
);


--
-- Name: quarto; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE public.quarto (
    id_quarto integer NOT NULL,
    preco double precision,
    qtd_camas integer,
    tipo_cama character varying,
    tipo_quarto character varying
);


--
-- Name: alocacao_area_lazer alocacao_area_lazer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_pkey PRIMARY KEY (id_alocacao_area_lazer);


--
-- Name: alocacao_quarto alocacao_quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_pkey PRIMARY KEY (id_alocacao_quarto);


--
-- Name: area_lazer area_lazer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.area_lazer
    ADD CONSTRAINT area_lazer_pkey PRIMARY KEY (id_area_lazer);


--
-- Name: cliente cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_pkey PRIMARY KEY (rg_cliente);


--
-- Name: fone_cliente fone_cliente_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fone_cliente
    ADD CONSTRAINT fone_cliente_pkey PRIMARY KEY (fone_cliente);


--
-- Name: fone_func fone_func_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.fone_func
    ADD CONSTRAINT fone_func_pkey PRIMARY KEY (fone_func);


--
-- Name: funcionario funcionario_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_pkey PRIMARY KEY (matricula_func);


--
-- Name: quarto quarto_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.quarto
    ADD CONSTRAINT quarto_pkey PRIMARY KEY (id_quarto);


--
-- Name: alocacao_area_lazer alocacao_area_lazer_id_area_lazer_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_id_area_lazer_fkey FOREIGN KEY (id_area_lazer) REFERENCES public.area_lazer(id_area_lazer);


--
-- Name: alocacao_area_lazer alocacao_area_lazer_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alocacao_area_lazer
    ADD CONSTRAINT alocacao_area_lazer_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- Name: alocacao_quarto alocacao_quarto_id_quarto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_id_quarto_fkey FOREIGN KEY (id_quarto) REFERENCES public.quarto(id_quarto);


--
-- Name: alocacao_quarto alocacao_quarto_rg_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.alocacao_quarto
    ADD CONSTRAINT alocacao_quarto_rg_cliente_fkey FOREIGN KEY (rg_cliente) REFERENCES public.cliente(rg_cliente);


--
-- Name: cliente cliente_fone_cliente_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_fone_cliente_fkey FOREIGN KEY (fone_cliente) REFERENCES public.fone_cliente(fone_cliente);


--
-- Name: funcionario funcionario_fone_func_fkey; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.funcionario
    ADD CONSTRAINT funcionario_fone_func_fkey FOREIGN KEY (fone_func) REFERENCES public.fone_func(fone_func);


--
-- PostgreSQL database dump complete
--

