--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: components; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.components (
    id_comp integer NOT NULL,
    id_product integer,
    id_supplier integer,
    name_comp character varying(50),
    description text,
    product_used character varying(50)
);


ALTER TABLE public.components OWNER TO postgres;

--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    id_product integer NOT NULL,
    name character varying(50),
    price integer,
    qty integer
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id_supplier integer NOT NULL,
    name_supp character varying(50),
    contact integer,
    address text
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Data for Name: components; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.components (id_comp, id_product, id_supplier, name_comp, description, product_used) FROM stdin;
201	101	301	keyboard	alat mengetik pada komputer	komputer
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (id_product, name, price, qty) FROM stdin;
101	komputer	10000000	10
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (id_supplier, name_supp, contact, address) FROM stdin;
301	Logitech Indonesia	81231232	Jakarta, Indonesia
\.


--
-- Name: components components_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components
    ADD CONSTRAINT components_pkey PRIMARY KEY (id_comp);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id_product);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id_supplier);


--
-- Name: components FK_components.id_product; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.components
    ADD CONSTRAINT "FK_components.id_product" FOREIGN KEY (id_product) REFERENCES public.products(id_product);


--
-- Name: suppliers FK_suppliers.id_supplier; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT "FK_suppliers.id_supplier" FOREIGN KEY (id_supplier) REFERENCES public.suppliers(id_supplier);


--
-- PostgreSQL database dump complete
--

