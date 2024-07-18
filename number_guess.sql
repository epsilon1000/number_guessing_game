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
-- Name: game; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game (
    game_id integer NOT NULL,
    user_id integer,
    score integer
);


ALTER TABLE public.game OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_game_id_seq OWNED BY public.game.game_id;


--
-- Name: usuario; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.usuario (
    user_id integer NOT NULL,
    username character varying(22)
);


ALTER TABLE public.usuario OWNER TO freecodecamp;

--
-- Name: usuario_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.usuario_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_user_id_seq OWNER TO freecodecamp;

--
-- Name: usuario_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.usuario_user_id_seq OWNED BY public.usuario.user_id;


--
-- Name: game game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game ALTER COLUMN game_id SET DEFAULT nextval('public.game_game_id_seq'::regclass);


--
-- Name: usuario user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuario ALTER COLUMN user_id SET DEFAULT nextval('public.usuario_user_id_seq'::regclass);


--
-- Data for Name: game; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game VALUES (1, 3, 98);
INSERT INTO public.game VALUES (2, 3, 5);
INSERT INTO public.game VALUES (3, 3, 32);
INSERT INTO public.game VALUES (4, 1, 7);
INSERT INTO public.game VALUES (5, 1, 8);
INSERT INTO public.game VALUES (6, 1, 10);
INSERT INTO public.game VALUES (7, 1, 10);
INSERT INTO public.game VALUES (8, 1, 3);
INSERT INTO public.game VALUES (9, 32, 9);
INSERT INTO public.game VALUES (10, 33, 398);
INSERT INTO public.game VALUES (11, 33, 551);
INSERT INTO public.game VALUES (12, 34, 496);
INSERT INTO public.game VALUES (13, 34, 522);
INSERT INTO public.game VALUES (14, 33, 295);
INSERT INTO public.game VALUES (15, 33, 101);
INSERT INTO public.game VALUES (16, 33, 61);
INSERT INTO public.game VALUES (17, 35, 841);
INSERT INTO public.game VALUES (18, 35, 739);
INSERT INTO public.game VALUES (19, 36, 815);
INSERT INTO public.game VALUES (20, 36, 213);
INSERT INTO public.game VALUES (21, 35, 781);
INSERT INTO public.game VALUES (22, 35, 957);
INSERT INTO public.game VALUES (23, 35, 571);


--
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.usuario VALUES (1, 'epsilon');
INSERT INTO public.usuario VALUES (2, 'joaquin');
INSERT INTO public.usuario VALUES (3, 'eustaquio');
INSERT INTO public.usuario VALUES (4, 'chango');
INSERT INTO public.usuario VALUES (5, 'user_1721249510708');
INSERT INTO public.usuario VALUES (6, 'user_1721249510707');
INSERT INTO public.usuario VALUES (7, 'user_1721249896143');
INSERT INTO public.usuario VALUES (8, 'user_1721249896142');
INSERT INTO public.usuario VALUES (9, 'user_1721249905446');
INSERT INTO public.usuario VALUES (10, 'user_1721249905445');
INSERT INTO public.usuario VALUES (11, '');
INSERT INTO public.usuario VALUES (12, 'user_1721250106775');
INSERT INTO public.usuario VALUES (13, 'user_1721250106774');
INSERT INTO public.usuario VALUES (14, 'user_1721250289805');
INSERT INTO public.usuario VALUES (15, 'user_1721250289804');
INSERT INTO public.usuario VALUES (16, 'user_1721250590665');
INSERT INTO public.usuario VALUES (17, 'user_1721250590664');
INSERT INTO public.usuario VALUES (18, 'user_1721250838266');
INSERT INTO public.usuario VALUES (19, 'user_1721250838265');
INSERT INTO public.usuario VALUES (20, 'user_1721250991562');
INSERT INTO public.usuario VALUES (21, 'user_1721250991561');
INSERT INTO public.usuario VALUES (22, 'user_1721251160392');
INSERT INTO public.usuario VALUES (23, 'user_1721251160391');
INSERT INTO public.usuario VALUES (24, 'user_1721251225771');
INSERT INTO public.usuario VALUES (25, 'user_1721251225770');
INSERT INTO public.usuario VALUES (26, 'user_1721251457408');
INSERT INTO public.usuario VALUES (27, 'user_1721251457407');
INSERT INTO public.usuario VALUES (28, 'user_1721251588628');
INSERT INTO public.usuario VALUES (29, 'user_1721251588627');
INSERT INTO public.usuario VALUES (30, 'user_1721331315339');
INSERT INTO public.usuario VALUES (31, 'user_1721331315338');
INSERT INTO public.usuario VALUES (32, 'GOYO');
INSERT INTO public.usuario VALUES (33, 'user_1721332001526');
INSERT INTO public.usuario VALUES (34, 'user_1721332001525');
INSERT INTO public.usuario VALUES (35, 'user_1721332059405');
INSERT INTO public.usuario VALUES (36, 'user_1721332059404');


--
-- Name: game_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_game_id_seq', 23, true);


--
-- Name: usuario_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.usuario_user_id_seq', 36, true);


--
-- Name: game game_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_pkey PRIMARY KEY (game_id);


--
-- Name: usuario usuario_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT usuario_pkey PRIMARY KEY (user_id);


--
-- Name: game game_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game
    ADD CONSTRAINT game_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.usuario(user_id);


--
-- PostgreSQL database dump complete
--

