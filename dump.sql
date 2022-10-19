--
-- PostgreSQL database dump
--

-- Dumped from database version 13.7
-- Dumped by pg_dump version 14.5 (Homebrew)

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
-- Data for Name: admin; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.admin (id, username, roles, password) FROM stdin;
1	admin	["ROLE_ADMIN"]	$2y$13$Cj.cg1hasJqZ9Sk4q3R/0OhzJTFBr4eMpT8//dM/Kx72JQk2Te4ry
\.


--
-- Data for Name: conference; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.conference (id, city, year, is_international, slug) FROM stdin;
3	Mexico	2024	f	mexico-2024
2	London	2023	t	london-2023
1	Moscow	2023	t	moscow-2022
4	Amsterdam	2033	t	amsterdam-2033
\.


--
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.comment (id, conference_id, author, text, email, create_at, photo_filename, state) FROM stdin;
1	1	dyhmzall	nice!!!	dyhmzall@gmail.com	2022-06-15 15:11:00	\N	published
2	1	May	Fuck off!	dyhmzall@gmail.com	2022-06-15 15:12:00	\N	published
3	1	Nicklback	I need mo power	dyhmzall@gmail.com	2022-06-15 15:12:00	\N	published
4	1	some man	this is very good	man@mail.com	2022-07-21 15:15:08	\N	published
5	1	image man	this is the image!	image@mail.com	2022-07-21 15:36:31	547a1970a37f2e77656270	published
6	1	image man	the second image	image@mail.com	2022-07-21 15:37:38	cb3390d63acc.webp	published
7	1	image man	the third image	image@mail.com	2022-07-21 15:38:14	96a7d8f7e589.jpg	published
8	1	test	test	test@test.com	2022-07-21 15:41:36	\N	published
9	1	firstname	call me later	call@test.com	2022-08-08 14:18:11	\N	published
\.


--
-- Data for Name: doctrine_migration_versions; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.doctrine_migration_versions (version, executed_at, execution_time) FROM stdin;
DoctrineMigrations\\Version20220606111342	2022-06-14 12:19:18	56
DoctrineMigrations\\Version20220609173259	2022-06-14 12:19:18	19
DoctrineMigrations\\Version20220624132623	2022-06-24 13:30:48	25
DoctrineMigrations\\Version20220624135554	2022-06-24 13:56:08	34
DoctrineMigrations\\Version20220801143203	2022-08-01 14:32:45	48
DoctrineMigrations\\Version20220825153545	2022-08-25 15:37:17	26
\.


--
-- Data for Name: messenger_messages; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.messenger_messages (id, body, headers, queue_name, created_at, available_at, delivered_at) FROM stdin;
\.


--
-- Data for Name: status; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.status (id, title) FROM stdin;
1	new
2	active
3	close
\.


--
-- Data for Name: task; Type: TABLE DATA; Schema: public; Owner: symfony
--

COPY public.task (id, status_id, title, url) FROM stdin;
1	1	Задача 1	https://dyhmzall.ru/
2	1	Тестовая задача	http://dyhmzall.ru
\.


--
-- Name: admin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.admin_id_seq', 1, true);


--
-- Name: comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.comment_id_seq', 9, true);


--
-- Name: conference_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.conference_id_seq', 4, true);


--
-- Name: messenger_messages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.messenger_messages_id_seq', 1, false);


--
-- Name: status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.status_id_seq', 3, true);


--
-- Name: task_id_seq; Type: SEQUENCE SET; Schema: public; Owner: symfony
--

SELECT pg_catalog.setval('public.task_id_seq', 2, true);


--
-- PostgreSQL database dump complete
--

