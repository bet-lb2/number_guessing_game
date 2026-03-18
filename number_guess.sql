--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    attempts integer NOT NULL
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
    name character varying NOT NULL
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

INSERT INTO public.games VALUES (1, 12, 746);
INSERT INTO public.games VALUES (2, 12, 925);
INSERT INTO public.games VALUES (3, 13, 288);
INSERT INTO public.games VALUES (4, 13, 806);
INSERT INTO public.games VALUES (5, 12, 484);
INSERT INTO public.games VALUES (6, 12, 54);
INSERT INTO public.games VALUES (7, 12, 221);
INSERT INTO public.games VALUES (8, 14, 761);
INSERT INTO public.games VALUES (9, 14, 506);
INSERT INTO public.games VALUES (10, 15, 135);
INSERT INTO public.games VALUES (11, 15, 164);
INSERT INTO public.games VALUES (12, 14, 523);
INSERT INTO public.games VALUES (13, 14, 408);
INSERT INTO public.games VALUES (14, 14, 767);
INSERT INTO public.games VALUES (15, 16, 651);
INSERT INTO public.games VALUES (16, 16, 129);
INSERT INTO public.games VALUES (17, 17, 346);
INSERT INTO public.games VALUES (18, 17, 383);
INSERT INTO public.games VALUES (19, 16, 379);
INSERT INTO public.games VALUES (20, 16, 611);
INSERT INTO public.games VALUES (21, 16, 538);
INSERT INTO public.games VALUES (22, 18, 882);
INSERT INTO public.games VALUES (23, 18, 890);
INSERT INTO public.games VALUES (24, 19, 535);
INSERT INTO public.games VALUES (25, 19, 328);
INSERT INTO public.games VALUES (26, 18, 734);
INSERT INTO public.games VALUES (27, 18, 204);
INSERT INTO public.games VALUES (28, 18, 940);
INSERT INTO public.games VALUES (29, 20, 523);
INSERT INTO public.games VALUES (30, 20, 983);
INSERT INTO public.games VALUES (31, 21, 683);
INSERT INTO public.games VALUES (32, 21, 956);
INSERT INTO public.games VALUES (33, 20, 898);
INSERT INTO public.games VALUES (34, 20, 135);
INSERT INTO public.games VALUES (35, 20, 646);
INSERT INTO public.games VALUES (36, 22, 455);
INSERT INTO public.games VALUES (37, 22, 778);
INSERT INTO public.games VALUES (38, 23, 830);
INSERT INTO public.games VALUES (39, 23, 547);
INSERT INTO public.games VALUES (40, 22, 767);
INSERT INTO public.games VALUES (41, 22, 644);
INSERT INTO public.games VALUES (42, 22, 689);
INSERT INTO public.games VALUES (43, 24, 597);
INSERT INTO public.games VALUES (44, 24, 363);
INSERT INTO public.games VALUES (45, 25, 701);
INSERT INTO public.games VALUES (46, 25, 688);
INSERT INTO public.games VALUES (47, 24, 249);
INSERT INTO public.games VALUES (48, 24, 435);
INSERT INTO public.games VALUES (49, 24, 867);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1773816472327');
INSERT INTO public.users VALUES (2, 'user_1773816472326');
INSERT INTO public.users VALUES (3, 'sample');
INSERT INTO public.users VALUES (4, 'user_1773816988871');
INSERT INTO public.users VALUES (5, 'user_1773816988870');
INSERT INTO public.users VALUES (6, 'user_1773817022215');
INSERT INTO public.users VALUES (7, 'user_1773817022214');
INSERT INTO public.users VALUES (8, 'user_1773817083612');
INSERT INTO public.users VALUES (9, 'user_1773817083611');
INSERT INTO public.users VALUES (10, 'user_1773817208493');
INSERT INTO public.users VALUES (11, 'user_1773817208492');
INSERT INTO public.users VALUES (12, 'user_1773817448033');
INSERT INTO public.users VALUES (13, 'user_1773817448032');
INSERT INTO public.users VALUES (14, 'user_1773817971676');
INSERT INTO public.users VALUES (15, 'user_1773817971675');
INSERT INTO public.users VALUES (16, 'user_1773818029444');
INSERT INTO public.users VALUES (17, 'user_1773818029443');
INSERT INTO public.users VALUES (18, 'user_1773818062406');
INSERT INTO public.users VALUES (19, 'user_1773818062405');
INSERT INTO public.users VALUES (20, 'user_1773818308212');
INSERT INTO public.users VALUES (21, 'user_1773818308211');
INSERT INTO public.users VALUES (22, 'user_1773818396797');
INSERT INTO public.users VALUES (23, 'user_1773818396796');
INSERT INTO public.users VALUES (24, 'user_1773818516515');
INSERT INTO public.users VALUES (25, 'user_1773818516514');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 49, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

