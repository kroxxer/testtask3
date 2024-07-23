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
-- PostgreSQL database dump complete
--

