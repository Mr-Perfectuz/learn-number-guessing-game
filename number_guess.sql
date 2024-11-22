--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 146);
INSERT INTO public.games VALUES (2, 1, 641);
INSERT INTO public.games VALUES (3, 2, 680);
INSERT INTO public.games VALUES (4, 2, 514);
INSERT INTO public.games VALUES (5, 1, 477);
INSERT INTO public.games VALUES (6, 1, 173);
INSERT INTO public.games VALUES (7, 1, 142);
INSERT INTO public.games VALUES (8, 3, 155);
INSERT INTO public.games VALUES (9, 3, 434);
INSERT INTO public.games VALUES (10, 4, 489);
INSERT INTO public.games VALUES (11, 4, 479);
INSERT INTO public.games VALUES (12, 3, 880);
INSERT INTO public.games VALUES (13, 3, 466);
INSERT INTO public.games VALUES (14, 3, 307);
INSERT INTO public.games VALUES (15, 20, 380);
INSERT INTO public.games VALUES (16, 20, 982);
INSERT INTO public.games VALUES (17, 21, 82);
INSERT INTO public.games VALUES (18, 21, 165);
INSERT INTO public.games VALUES (19, 20, 584);
INSERT INTO public.games VALUES (20, 20, 898);
INSERT INTO public.games VALUES (21, 20, 288);
INSERT INTO public.games VALUES (22, 22, 90);
INSERT INTO public.games VALUES (23, 22, 144);
INSERT INTO public.games VALUES (24, 23, 710);
INSERT INTO public.games VALUES (25, 23, 315);
INSERT INTO public.games VALUES (26, 22, 473);
INSERT INTO public.games VALUES (27, 22, 58);
INSERT INTO public.games VALUES (28, 22, 623);
INSERT INTO public.games VALUES (29, 24, 313);
INSERT INTO public.games VALUES (30, 24, 393);
INSERT INTO public.games VALUES (31, 25, 149);
INSERT INTO public.games VALUES (32, 25, 99);
INSERT INTO public.games VALUES (33, 24, 437);
INSERT INTO public.games VALUES (34, 24, 37);
INSERT INTO public.games VALUES (35, 24, 967);
INSERT INTO public.games VALUES (36, 26, 31);
INSERT INTO public.games VALUES (37, 26, 878);
INSERT INTO public.games VALUES (38, 27, 256);
INSERT INTO public.games VALUES (39, 27, 805);
INSERT INTO public.games VALUES (40, 26, 398);
INSERT INTO public.games VALUES (41, 26, 590);
INSERT INTO public.games VALUES (42, 26, 81);
INSERT INTO public.games VALUES (43, 28, 601);
INSERT INTO public.games VALUES (44, 28, 341);
INSERT INTO public.games VALUES (45, 29, 767);
INSERT INTO public.games VALUES (46, 29, 311);
INSERT INTO public.games VALUES (47, 28, 139);
INSERT INTO public.games VALUES (48, 28, 785);
INSERT INTO public.games VALUES (49, 28, 130);
INSERT INTO public.games VALUES (50, 30, 890);
INSERT INTO public.games VALUES (51, 30, 526);
INSERT INTO public.games VALUES (52, 31, 301);
INSERT INTO public.games VALUES (53, 31, 185);
INSERT INTO public.games VALUES (54, 30, 439);
INSERT INTO public.games VALUES (55, 30, 103);
INSERT INTO public.games VALUES (56, 30, 966);
INSERT INTO public.games VALUES (57, 32, 712);
INSERT INTO public.games VALUES (58, 32, 759);
INSERT INTO public.games VALUES (59, 33, 972);
INSERT INTO public.games VALUES (60, 33, 74);
INSERT INTO public.games VALUES (61, 32, 126);
INSERT INTO public.games VALUES (62, 32, 314);
INSERT INTO public.games VALUES (63, 32, 938);
INSERT INTO public.games VALUES (64, 34, 934);
INSERT INTO public.games VALUES (65, 34, 501);
INSERT INTO public.games VALUES (66, 35, 938);
INSERT INTO public.games VALUES (67, 35, 491);
INSERT INTO public.games VALUES (68, 34, 590);
INSERT INTO public.games VALUES (69, 34, 983);
INSERT INTO public.games VALUES (70, 34, 938);
INSERT INTO public.games VALUES (71, 36, 701);
INSERT INTO public.games VALUES (72, 36, 911);
INSERT INTO public.games VALUES (73, 37, 256);
INSERT INTO public.games VALUES (74, 37, 785);
INSERT INTO public.games VALUES (75, 36, 804);
INSERT INTO public.games VALUES (76, 36, 768);
INSERT INTO public.games VALUES (77, 36, 114);
INSERT INTO public.games VALUES (78, 38, 963);
INSERT INTO public.games VALUES (79, 38, 929);
INSERT INTO public.games VALUES (80, 39, 52);
INSERT INTO public.games VALUES (81, 39, 604);
INSERT INTO public.games VALUES (82, 38, 415);
INSERT INTO public.games VALUES (83, 38, 372);
INSERT INTO public.games VALUES (84, 38, 414);
INSERT INTO public.games VALUES (85, 40, 481);
INSERT INTO public.games VALUES (86, 40, 264);
INSERT INTO public.games VALUES (87, 41, 937);
INSERT INTO public.games VALUES (88, 41, 664);
INSERT INTO public.games VALUES (89, 40, 632);
INSERT INTO public.games VALUES (90, 40, 968);
INSERT INTO public.games VALUES (91, 40, 117);
INSERT INTO public.games VALUES (92, 42, 673);
INSERT INTO public.games VALUES (93, 42, 902);
INSERT INTO public.games VALUES (94, 43, 695);
INSERT INTO public.games VALUES (95, 43, 660);
INSERT INTO public.games VALUES (96, 42, 849);
INSERT INTO public.games VALUES (97, 42, 339);
INSERT INTO public.games VALUES (98, 42, 637);
INSERT INTO public.games VALUES (99, 44, 326);
INSERT INTO public.games VALUES (100, 44, 843);
INSERT INTO public.games VALUES (101, 45, 789);
INSERT INTO public.games VALUES (102, 45, 340);
INSERT INTO public.games VALUES (103, 44, 597);
INSERT INTO public.games VALUES (104, 44, 689);
INSERT INTO public.games VALUES (105, 44, 430);
INSERT INTO public.games VALUES (106, 46, 650);
INSERT INTO public.games VALUES (107, 46, 800);
INSERT INTO public.games VALUES (108, 47, 742);
INSERT INTO public.games VALUES (109, 47, 907);
INSERT INTO public.games VALUES (110, 46, 64);
INSERT INTO public.games VALUES (111, 46, 642);
INSERT INTO public.games VALUES (112, 46, 96);
INSERT INTO public.games VALUES (113, 48, 116);
INSERT INTO public.games VALUES (114, 48, 425);
INSERT INTO public.games VALUES (115, 49, 4);
INSERT INTO public.games VALUES (116, 49, 873);
INSERT INTO public.games VALUES (117, 48, 667);
INSERT INTO public.games VALUES (118, 48, 896);
INSERT INTO public.games VALUES (119, 48, 362);
INSERT INTO public.games VALUES (120, 50, 264);
INSERT INTO public.games VALUES (121, 50, 53);
INSERT INTO public.games VALUES (122, 51, 229);
INSERT INTO public.games VALUES (123, 51, 725);
INSERT INTO public.games VALUES (124, 50, 375);
INSERT INTO public.games VALUES (125, 50, 131);
INSERT INTO public.games VALUES (126, 50, 701);
INSERT INTO public.games VALUES (127, 52, 14);
INSERT INTO public.games VALUES (128, 52, 673);
INSERT INTO public.games VALUES (129, 53, 561);
INSERT INTO public.games VALUES (130, 53, 196);
INSERT INTO public.games VALUES (131, 52, 53);
INSERT INTO public.games VALUES (132, 52, 972);
INSERT INTO public.games VALUES (133, 52, 754);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1732284291199', 2);
INSERT INTO public.users VALUES (1, 'user_1732284291200', 5);
INSERT INTO public.users VALUES (35, 'user_1732284961363', 2);
INSERT INTO public.users VALUES (4, 'user_1732284341129', 2);
INSERT INTO public.users VALUES (3, 'user_1732284341130', 5);
INSERT INTO public.users VALUES (5, 'user_1732284359085', 0);
INSERT INTO public.users VALUES (34, 'user_1732284961364', 5);
INSERT INTO public.users VALUES (7, 'user_1732284359084', 0);
INSERT INTO public.users VALUES (37, 'user_1732284979725', 2);
INSERT INTO public.users VALUES (12, 'user_1732284364216', 0);
INSERT INTO public.users VALUES (14, 'user_1732284364215', 0);
INSERT INTO public.users VALUES (36, 'user_1732284979726', 5);
INSERT INTO public.users VALUES (19, 'few', 0);
INSERT INTO public.users VALUES (21, 'user_1732284398768', 2);
INSERT INTO public.users VALUES (39, 'user_1732285012402', 2);
INSERT INTO public.users VALUES (20, 'user_1732284398769', 5);
INSERT INTO public.users VALUES (23, 'user_1732284727348', 2);
INSERT INTO public.users VALUES (38, 'user_1732285012403', 5);
INSERT INTO public.users VALUES (22, 'user_1732284727349', 5);
INSERT INTO public.users VALUES (25, 'user_1732284811574', 2);
INSERT INTO public.users VALUES (41, 'user_1732285073708', 2);
INSERT INTO public.users VALUES (24, 'user_1732284811575', 5);
INSERT INTO public.users VALUES (27, 'user_1732284816419', 2);
INSERT INTO public.users VALUES (40, 'user_1732285073709', 5);
INSERT INTO public.users VALUES (26, 'user_1732284816420', 5);
INSERT INTO public.users VALUES (29, 'user_1732284832661', 2);
INSERT INTO public.users VALUES (28, 'user_1732284832662', 5);
INSERT INTO public.users VALUES (43, 'user_1732285104316', 2);
INSERT INTO public.users VALUES (31, 'user_1732284904624', 2);
INSERT INTO public.users VALUES (30, 'user_1732284904625', 5);
INSERT INTO public.users VALUES (42, 'user_1732285104317', 5);
INSERT INTO public.users VALUES (33, 'user_1732284921299', 2);
INSERT INTO public.users VALUES (32, 'user_1732284921300', 5);
INSERT INTO public.users VALUES (45, 'user_1732285131449', 2);
INSERT INTO public.users VALUES (44, 'user_1732285131450', 5);
INSERT INTO public.users VALUES (47, 'user_1732285166072', 2);
INSERT INTO public.users VALUES (46, 'user_1732285166073', 5);
INSERT INTO public.users VALUES (49, 'user_1732285183263', 2);
INSERT INTO public.users VALUES (48, 'user_1732285183264', 5);
INSERT INTO public.users VALUES (51, 'user_1732285208373', 2);
INSERT INTO public.users VALUES (50, 'user_1732285208374', 5);
INSERT INTO public.users VALUES (53, 'user_1732285259529', 2);
INSERT INTO public.users VALUES (52, 'user_1732285259530', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 133, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 53, true);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

