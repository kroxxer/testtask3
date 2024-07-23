--
-- PostgreSQL database dump
--

-- Dumped from database version 16.2 (Debian 16.2-1.pgdg120+2)
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-1.pgdg22.04+1)

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
-- Name: category; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.category (
    category_id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_income boolean NOT NULL
);


ALTER TABLE public.category OWNER TO admin;

--
-- Name: item_money; Type: TABLE; Schema: public; Owner: admin
--

CREATE TABLE public.item_money (
    items_money_id integer NOT NULL,
    category_id integer NOT NULL,
    date timestamp without time zone NOT NULL,
    is_income boolean NOT NULL,
    total numeric(12,2) NOT NULL,
    commentary text NOT NULL,
    CONSTRAINT stock_nonnegative CHECK ((total >= (0)::numeric))
);


ALTER TABLE public.item_money OWNER TO admin;

--
-- Name: item_money_items_money_id_seq; Type: SEQUENCE; Schema: public; Owner: admin
--

CREATE SEQUENCE public.item_money_items_money_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.item_money_items_money_id_seq OWNER TO admin;

--
-- Name: item_money_items_money_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: admin
--

ALTER SEQUENCE public.item_money_items_money_id_seq OWNED BY public.item_money.items_money_id;


--
-- Name: item_money items_money_id; Type: DEFAULT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.item_money ALTER COLUMN items_money_id SET DEFAULT nextval('public.item_money_items_money_id_seq'::regclass);


--
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.category (category_id, name, is_income) FROM stdin;
1	Заработная плата	t
2	Иные доходы	t
3	Продукты питания	f
4	Транспорт	f
5	Мобильная связь	f
6	Интернет	f
7	Развлечения	f
8	Иные	f
\.


--
-- Data for Name: item_money; Type: TABLE DATA; Schema: public; Owner: admin
--

COPY public.item_money (items_money_id, category_id, date, is_income, total, commentary) FROM stdin;
\.


--
-- Name: item_money_items_money_id_seq; Type: SEQUENCE SET; Schema: public; Owner: admin
--

SELECT pg_catalog.setval('public.item_money_items_money_id_seq', 1, false);


--
-- Name: category category_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pkey PRIMARY KEY (category_id);


--
-- Name: item_money item_money_pkey; Type: CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.item_money
    ADD CONSTRAINT item_money_pkey PRIMARY KEY (items_money_id);


--
-- Name: item_money item_money_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: admin
--

ALTER TABLE ONLY public.item_money
    ADD CONSTRAINT item_money_category_id_fkey FOREIGN KEY (category_id) REFERENCES public.category(category_id);


--
-- PostgreSQL database dump complete
--

