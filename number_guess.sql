--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    name character varying(25) NOT NULL,
    games_played integer DEFAULT 0,
    best_game integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (28, 'user_1692283871845', 1, 167);
INSERT INTO public.users VALUES (8, 'user_1692278464750', 0, 0);
INSERT INTO public.users VALUES (9, 'user_1692278464749', 0, 0);
INSERT INTO public.users VALUES (10, 'user_1692279757228', 0, 0);
INSERT INTO public.users VALUES (11, 'user_1692279757227', 0, 0);
INSERT INTO public.users VALUES (12, 'user_1692282023712', 0, 0);
INSERT INTO public.users VALUES (13, 'user_1692282023711', 0, 0);
INSERT INTO public.users VALUES (80, 'user_1692287038125', 5, 20);
INSERT INTO public.users VALUES (27, 'user_1692283871846', 4, 380);
INSERT INTO public.users VALUES (16, 'user_1692283382705', 1, 35);
INSERT INTO public.users VALUES (58, 'user_1692286162335', 2, 0);
INSERT INTO public.users VALUES (43, 'user_1692285547094', 2, 29);
INSERT INTO public.users VALUES (15, 'user_1692283382706', 4, 321);
INSERT INTO public.users VALUES (72, 'user_1692286852668', 5, 265);
INSERT INTO public.users VALUES (18, 'user_1692283426471', 1, 352);
INSERT INTO public.users VALUES (30, 'user_1692283940149', 1, 157);
INSERT INTO public.users VALUES (42, 'user_1692285547095', 5, 89);
INSERT INTO public.users VALUES (57, 'user_1692286162336', 5, 0);
INSERT INTO public.users VALUES (17, 'user_1692283426472', 4, 224);
INSERT INTO public.users VALUES (29, 'user_1692283940150', 4, 474);
INSERT INTO public.users VALUES (20, 'user_1692283581557', 1, 309);
INSERT INTO public.users VALUES (89, 'user_1692287185520', 2, 584);
INSERT INTO public.users VALUES (19, 'user_1692283581558', 4, 1);
INSERT INTO public.users VALUES (32, 'user_1692284822260', 1, 637);
INSERT INTO public.users VALUES (22, 'user_1692283591505', 1, 802);
INSERT INTO public.users VALUES (31, 'user_1692284822261', 4, 588);
INSERT INTO public.users VALUES (94, 'user_1692287219413', 5, 163);
INSERT INTO public.users VALUES (21, 'user_1692283591506', 4, 125);
INSERT INTO public.users VALUES (60, 'user_1692286210176', 2, 0);
INSERT INTO public.users VALUES (45, 'user_1692285611008', 2, 152);
INSERT INTO public.users VALUES (24, 'user_1692283602622', 1, 942);
INSERT INTO public.users VALUES (34, 'user_1692284951062', 1, 346);
INSERT INTO public.users VALUES (44, 'user_1692285611009', 5, 63);
INSERT INTO public.users VALUES (23, 'user_1692283602623', 4, 148);
INSERT INTO public.users VALUES (33, 'user_1692284951063', 4, 239);
INSERT INTO public.users VALUES (26, 'user_1692283861383', 1, 290);
INSERT INTO public.users VALUES (59, 'user_1692286210177', 5, 0);
INSERT INTO public.users VALUES (25, 'user_1692283861384', 4, 145);
INSERT INTO public.users VALUES (36, 'user_1692284994206', 1, 17);
INSERT INTO public.users VALUES (61, 'New', 1, 0);
INSERT INTO public.users VALUES (62, 'New1', 1, 0);
INSERT INTO public.users VALUES (35, 'user_1692284994207', 4, 68);
INSERT INTO public.users VALUES (37, 'A', 0, 0);
INSERT INTO public.users VALUES (63, 'New2', 1, 0);
INSERT INTO public.users VALUES (88, 'user_1692287185521', 5, 184);
INSERT INTO public.users VALUES (48, 'user_1692285786123', 2, 109);
INSERT INTO public.users VALUES (64, 'New3', 1, 2);
INSERT INTO public.users VALUES (39, 'user_1692285371401', 2, 234);
INSERT INTO public.users VALUES (47, 'user_1692285786124', 5, 47);
INSERT INTO public.users VALUES (65, 'New4', 1, 1);
INSERT INTO public.users VALUES (38, 'user_1692285371402', 5, 136);
INSERT INTO public.users VALUES (49, 'user_1692285796157', 1, 495);
INSERT INTO public.users VALUES (46, 'Audrey', 2, 0);
INSERT INTO public.users VALUES (41, 'user_1692285411632', 2, 696);
INSERT INTO public.users VALUES (40, 'user_1692285411633', 5, 15);
INSERT INTO public.users VALUES (83, 'user_1692287114335', 2, 646);
INSERT INTO public.users VALUES (106, 'user_1692287392531', 5, 24);
INSERT INTO public.users VALUES (75, 'user_1692286900144', 2, 225);
INSERT INTO public.users VALUES (67, 'user_1692286550731', 2, 106);
INSERT INTO public.users VALUES (52, 'user_1692286030199', 2, 626);
INSERT INTO public.users VALUES (82, 'user_1692287114336', 5, 11);
INSERT INTO public.users VALUES (66, 'user_1692286550732', 5, 79);
INSERT INTO public.users VALUES (51, 'user_1692286030200', 5, 99);
INSERT INTO public.users VALUES (74, 'user_1692286900145', 5, 415);
INSERT INTO public.users VALUES (54, 'user_1692286045484', 2, 0);
INSERT INTO public.users VALUES (112, 'user_1692287486833', 5, 173);
INSERT INTO public.users VALUES (53, 'user_1692286045485', 5, 0);
INSERT INTO public.users VALUES (101, 'user_1692287291213', 2, 597);
INSERT INTO public.users VALUES (69, 'user_1692286678123', 2, 475);
INSERT INTO public.users VALUES (56, 'user_1692286068934', 2, 0);
INSERT INTO public.users VALUES (55, 'user_1692286068935', 5, 0);
INSERT INTO public.users VALUES (105, 'user_1692287348243', 2, 148);
INSERT INTO public.users VALUES (68, 'user_1692286678124', 5, 640);
INSERT INTO public.users VALUES (77, 'user_1692286915449', 2, 57);
INSERT INTO public.users VALUES (91, 'user_1692287196791', 2, 106);
INSERT INTO public.users VALUES (111, 'user_1692287447651', 2, 264);
INSERT INTO public.users VALUES (85, 'user_1692287123635', 2, 4);
INSERT INTO public.users VALUES (76, 'user_1692286915450', 5, 220);
INSERT INTO public.users VALUES (71, 'user_1692286838775', 2, 389);
INSERT INTO public.users VALUES (97, 'user_1692287234485', 2, 843);
INSERT INTO public.users VALUES (70, 'user_1692286838776', 5, 80);
INSERT INTO public.users VALUES (90, 'user_1692287196792', 5, 263);
INSERT INTO public.users VALUES (84, 'user_1692287123636', 5, 200);
INSERT INTO public.users VALUES (100, 'user_1692287291214', 5, 40);
INSERT INTO public.users VALUES (79, 'user_1692286998988', 2, 924);
INSERT INTO public.users VALUES (96, 'user_1692287234486', 5, 228);
INSERT INTO public.users VALUES (78, 'user_1692286998990', 5, 14);
INSERT INTO public.users VALUES (87, 'user_1692287163460', 2, 512);
INSERT INTO public.users VALUES (93, 'user_1692287210057', 2, 414);
INSERT INTO public.users VALUES (104, 'user_1692287348244', 5, 190);
INSERT INTO public.users VALUES (81, 'user_1692287038124', 2, 467);
INSERT INTO public.users VALUES (86, 'user_1692287163461', 5, 198);
INSERT INTO public.users VALUES (92, 'user_1692287210058', 5, 234);
INSERT INTO public.users VALUES (116, 'user_1692287512629', 5, 110);
INSERT INTO public.users VALUES (110, 'user_1692287447652', 5, 92);
INSERT INTO public.users VALUES (109, 'user_1692287398664', 2, 771);
INSERT INTO public.users VALUES (103, 'user_1692287306306', 2, 737);
INSERT INTO public.users VALUES (99, 'user_1692287245382', 2, 121);
INSERT INTO public.users VALUES (95, 'user_1692287219412', 2, 106);
INSERT INTO public.users VALUES (98, 'user_1692287245383', 5, 11);
INSERT INTO public.users VALUES (102, 'user_1692287306307', 5, 115);
INSERT INTO public.users VALUES (121, 'user_1692287542192', 2, 107);
INSERT INTO public.users VALUES (108, 'user_1692287398665', 5, 42);
INSERT INTO public.users VALUES (107, 'user_1692287392530', 2, 31);
INSERT INTO public.users VALUES (123, 'user_1692287554749', 2, 546);
INSERT INTO public.users VALUES (115, 'user_1692287505494', 2, 19);
INSERT INTO public.users VALUES (113, 'user_1692287486832', 2, 112);
INSERT INTO public.users VALUES (117, 'user_1692287512628', 2, 251);
INSERT INTO public.users VALUES (122, 'user_1692287554750', 5, 87);
INSERT INTO public.users VALUES (114, 'user_1692287505495', 5, 42);
INSERT INTO public.users VALUES (118, 'user_1692287533335', 5, 474);
INSERT INTO public.users VALUES (119, 'user_1692287533334', 2, 303);
INSERT INTO public.users VALUES (120, 'user_1692287542193', 5, 403);
INSERT INTO public.users VALUES (124, 'user_1692287572409', 5, 136);
INSERT INTO public.users VALUES (125, 'user_1692287572408', 2, 29);
INSERT INTO public.users VALUES (3, 'Sean', 8, 1);
INSERT INTO public.users VALUES (126, 'user_1692287594423', 5, 14);
INSERT INTO public.users VALUES (127, 'user_1692287594422', 2, 46);
INSERT INTO public.users VALUES (128, 'user_1692287675047', 5, 17);
INSERT INTO public.users VALUES (129, 'user_1692287675046', 2, 94);
INSERT INTO public.users VALUES (130, 'user_1692287687369', 5, 376);
INSERT INTO public.users VALUES (131, 'user_1692287687368', 2, 33);
INSERT INTO public.users VALUES (132, 'WC', 1, 14);
INSERT INTO public.users VALUES (133, 'user_1692287759250', 5, 14);
INSERT INTO public.users VALUES (134, 'user_1692287759249', 2, 404);
INSERT INTO public.users VALUES (135, 'user_1692287772368', 5, 206);
INSERT INTO public.users VALUES (136, 'user_1692287772367', 2, 81);
INSERT INTO public.users VALUES (157, 'user_1692288078387', 5, 316);
INSERT INTO public.users VALUES (138, 'user_1692287817193', 2, 240);
INSERT INTO public.users VALUES (137, 'user_1692287817194', 4, 272);
INSERT INTO public.users VALUES (224, 'user_1692288887774', 5, 15);
INSERT INTO public.users VALUES (158, 'user_1692288078386', 2, 625);
INSERT INTO public.users VALUES (140, 'user_1692287845851', 2, 60);
INSERT INTO public.users VALUES (208, 'user_1692288733727', 5, 251);
INSERT INTO public.users VALUES (139, 'user_1692287845852', 5, 236);
INSERT INTO public.users VALUES (160, 'user_1692288087589', 2, 265);
INSERT INTO public.users VALUES (176, 'user_1692288300964', 2, 683);
INSERT INTO public.users VALUES (142, 'user_1692287871217', 2, 7);
INSERT INTO public.users VALUES (159, 'user_1692288087590', 5, 256);
INSERT INTO public.users VALUES (233, 'user_1692289028161', 2, 696);
INSERT INTO public.users VALUES (141, 'user_1692287871218', 5, 225);
INSERT INTO public.users VALUES (175, 'user_1692288300965', 5, 97);
INSERT INTO public.users VALUES (162, 'user_1692288097389', 2, 25);
INSERT INTO public.users VALUES (144, 'user_1692287897487', 2, 365);
INSERT INTO public.users VALUES (219, 'user_1692288840186', 2, 790);
INSERT INTO public.users VALUES (161, 'user_1692288097390', 5, 46);
INSERT INTO public.users VALUES (143, 'user_1692287897488', 5, 76);
INSERT INTO public.users VALUES (211, 'user_1692288740402', 2, 144);
INSERT INTO public.users VALUES (146, 'user_1692287906879', 2, 928);
INSERT INTO public.users VALUES (232, 'user_1692289028162', 5, 36);
INSERT INTO public.users VALUES (164, 'user_1692288132952', 2, 602);
INSERT INTO public.users VALUES (178, 'user_1692288372270', 2, 27);
INSERT INTO public.users VALUES (145, 'user_1692287906880', 5, 443);
INSERT INTO public.users VALUES (218, 'user_1692288840187', 5, 128);
INSERT INTO public.users VALUES (163, 'user_1692288132953', 5, 57);
INSERT INTO public.users VALUES (210, 'user_1692288740403', 5, 462);
INSERT INTO public.users VALUES (149, 'user_1692287921089', 2, 752);
INSERT INTO public.users VALUES (177, 'user_1692288372271', 5, 372);
INSERT INTO public.users VALUES (147, 'user_1692287921090', 4, 259);
INSERT INTO public.users VALUES (166, 'user_1692288146580', 2, 337);
INSERT INTO public.users VALUES (227, 'user_1692288894624', 2, 65);
INSERT INTO public.users VALUES (165, 'user_1692288146581', 5, 183);
INSERT INTO public.users VALUES (151, 'user_1692287972984', 2, 104);
INSERT INTO public.users VALUES (249, 'user_1692289308259', 2, 303);
INSERT INTO public.users VALUES (150, 'user_1692287972985', 5, 64);
INSERT INTO public.users VALUES (152, 'Seabn', 0, 0);
INSERT INTO public.users VALUES (180, 'user_1692288380468', 2, 427);
INSERT INTO public.users VALUES (154, 'user_1692288027448', 2, 43);
INSERT INTO public.users VALUES (250, 'user_1692289372612', 5, 17);
INSERT INTO public.users VALUES (168, 'user_1692288199518', 2, 94);
INSERT INTO public.users VALUES (226, 'user_1692288894625', 5, 13);
INSERT INTO public.users VALUES (153, 'user_1692288027449', 5, 187);
INSERT INTO public.users VALUES (213, 'user_1692288748025', 2, 620);
INSERT INTO public.users VALUES (179, 'user_1692288380469', 5, 89);
INSERT INTO public.users VALUES (181, 'user_1692288409417', 0, 0);
INSERT INTO public.users VALUES (167, 'user_1692288199519', 5, 42);
INSERT INTO public.users VALUES (156, 'user_1692288050203', 2, 380);
INSERT INTO public.users VALUES (183, 'user_1692288409415', 0, 0);
INSERT INTO public.users VALUES (155, 'user_1692288050204', 5, 7);
INSERT INTO public.users VALUES (170, 'user_1692288211023', 2, 568);
INSERT INTO public.users VALUES (188, 'user_1692288443900', 0, 0);
INSERT INTO public.users VALUES (169, 'user_1692288211024', 5, 136);
INSERT INTO public.users VALUES (190, 'user_1692288443899', 0, 0);
INSERT INTO public.users VALUES (195, 'user_1692288472783', 0, 0);
INSERT INTO public.users VALUES (172, 'user_1692288228109', 2, 396);
INSERT INTO public.users VALUES (196, 'user_1692288472782', 0, 0);
INSERT INTO public.users VALUES (197, 'user_1692288526774', 0, 0);
INSERT INTO public.users VALUES (171, 'user_1692288228110', 5, 156);
INSERT INTO public.users VALUES (198, 'user_1692288526773', 0, 0);
INSERT INTO public.users VALUES (199, 'user_1692288535367', 0, 0);
INSERT INTO public.users VALUES (200, 'user_1692288535366', 0, 0);
INSERT INTO public.users VALUES (201, 'user_1692288567197', 0, 0);
INSERT INTO public.users VALUES (202, 'user_1692288567196', 0, 0);
INSERT INTO public.users VALUES (203, 'user_1692288591016', 0, 0);
INSERT INTO public.users VALUES (204, 'user_1692288591014', 0, 0);
INSERT INTO public.users VALUES (174, 'user_1692288244173', 2, 144);
INSERT INTO public.users VALUES (173, 'user_1692288244174', 5, 264);
INSERT INTO public.users VALUES (221, 'user_1692288854377', 2, 116);
INSERT INTO public.users VALUES (239, 'user_1692289056795', 2, 569);
INSERT INTO public.users VALUES (212, 'user_1692288748026', 5, 491);
INSERT INTO public.users VALUES (207, 'user_1692288713245', 2, 840);
INSERT INTO public.users VALUES (243, 'user_1692289222810', 2, 37);
INSERT INTO public.users VALUES (220, 'user_1692288854378', 5, 221);
INSERT INTO public.users VALUES (205, 'user_1692288713246', 4, 244);
INSERT INTO public.users VALUES (229, 'user_1692288904521', 2, 427);
INSERT INTO public.users VALUES (209, 'user_1692288733726', 2, 874);
INSERT INTO public.users VALUES (215, 'user_1692288760471', 2, 655);
INSERT INTO public.users VALUES (235, 'user_1692289035396', 2, 199);
INSERT INTO public.users VALUES (214, 'user_1692288760472', 5, 84);
INSERT INTO public.users VALUES (248, 'user_1692289308260', 5, 188);
INSERT INTO public.users VALUES (223, 'user_1692288878817', 2, 255);
INSERT INTO public.users VALUES (228, 'user_1692288904522', 5, 8);
INSERT INTO public.users VALUES (238, 'user_1692289056796', 5, 688);
INSERT INTO public.users VALUES (222, 'user_1692288878818', 5, 12);
INSERT INTO public.users VALUES (217, 'user_1692288804773', 2, 482);
INSERT INTO public.users VALUES (234, 'user_1692289035397', 5, 116);
INSERT INTO public.users VALUES (216, 'user_1692288804774', 5, 31);
INSERT INTO public.users VALUES (73, 'user_1692286852667', 3, 15);
INSERT INTO public.users VALUES (225, 'user_1692288887773', 2, 660);
INSERT INTO public.users VALUES (231, 'user_1692289016604', 2, 823);
INSERT INTO public.users VALUES (242, 'user_1692289222811', 5, 66);
INSERT INTO public.users VALUES (230, 'user_1692289016605', 5, 54);
INSERT INTO public.users VALUES (247, 'user_1692289251399', 2, 158);
INSERT INTO public.users VALUES (237, 'user_1692289045518', 2, 29);
INSERT INTO public.users VALUES (252, 'user_1692289387305', 5, 59);
INSERT INTO public.users VALUES (241, 'user_1692289205867', 2, 9);
INSERT INTO public.users VALUES (236, 'user_1692289045519', 5, 414);
INSERT INTO public.users VALUES (258, 'user_1692289635515', 5, 198);
INSERT INTO public.users VALUES (246, 'user_1692289251400', 5, 125);
INSERT INTO public.users VALUES (240, 'user_1692289205868', 5, 219);
INSERT INTO public.users VALUES (245, 'user_1692289240748', 2, 464);
INSERT INTO public.users VALUES (259, 'user_1692289635514', 2, 320);
INSERT INTO public.users VALUES (244, 'user_1692289240749', 5, 14);
INSERT INTO public.users VALUES (257, 'user_1692289594962', 2, 72);
INSERT INTO public.users VALUES (253, 'user_1692289387304', 2, 492);
INSERT INTO public.users VALUES (251, 'user_1692289372611', 2, 552);
INSERT INTO public.users VALUES (254, 'user_1692289563046', 5, 439);
INSERT INTO public.users VALUES (255, 'user_1692289563045', 2, 152);
INSERT INTO public.users VALUES (256, 'user_1692289594963', 5, 287);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 259, true);


--
-- Name: users users_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_name_key UNIQUE (name);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- PostgreSQL database dump complete
--

