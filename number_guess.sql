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

INSERT INTO public.games VALUES (1, 1, 19);
INSERT INTO public.games VALUES (2, 1, 18);
INSERT INTO public.games VALUES (3, 2, 264);
INSERT INTO public.games VALUES (4, 2, 894);
INSERT INTO public.games VALUES (5, 3, 499);
INSERT INTO public.games VALUES (6, 3, 251);
INSERT INTO public.games VALUES (7, 2, 131);
INSERT INTO public.games VALUES (8, 2, 397);
INSERT INTO public.games VALUES (9, 2, 123);
INSERT INTO public.games VALUES (10, 4, 85);
INSERT INTO public.games VALUES (11, 4, 626);
INSERT INTO public.games VALUES (12, 5, 581);
INSERT INTO public.games VALUES (13, 5, 492);
INSERT INTO public.games VALUES (14, 4, 471);
INSERT INTO public.games VALUES (15, 4, 765);
INSERT INTO public.games VALUES (16, 4, 284);
INSERT INTO public.games VALUES (17, 1, 13);
INSERT INTO public.games VALUES (18, 6, 84);
INSERT INTO public.games VALUES (19, 6, 176);
INSERT INTO public.games VALUES (20, 7, 31);
INSERT INTO public.games VALUES (21, 7, 153);
INSERT INTO public.games VALUES (22, 6, 777);
INSERT INTO public.games VALUES (23, 6, 561);
INSERT INTO public.games VALUES (24, 6, 531);
INSERT INTO public.games VALUES (25, 8, 688);
INSERT INTO public.games VALUES (26, 8, 551);
INSERT INTO public.games VALUES (27, 9, 937);
INSERT INTO public.games VALUES (28, 9, 702);
INSERT INTO public.games VALUES (29, 8, 446);
INSERT INTO public.games VALUES (30, 8, 182);
INSERT INTO public.games VALUES (31, 8, 930);
INSERT INTO public.games VALUES (32, 10, 497);
INSERT INTO public.games VALUES (33, 10, 35);
INSERT INTO public.games VALUES (34, 11, 399);
INSERT INTO public.games VALUES (35, 11, 480);
INSERT INTO public.games VALUES (36, 10, 344);
INSERT INTO public.games VALUES (37, 10, 672);
INSERT INTO public.games VALUES (38, 10, 631);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (3, 'user_1725492460555', 2);
INSERT INTO public.users VALUES (2, 'user_1725492460556', 5);
INSERT INTO public.users VALUES (5, 'user_1725492510786', 2);
INSERT INTO public.users VALUES (4, 'user_1725492510787', 5);
INSERT INTO public.users VALUES (1, 'jim', 3);
INSERT INTO public.users VALUES (7, 'user_1725492567409', 2);
INSERT INTO public.users VALUES (6, 'user_1725492567410', 5);
INSERT INTO public.users VALUES (9, 'user_1725492631955', 2);
INSERT INTO public.users VALUES (8, 'user_1725492631956', 5);
INSERT INTO public.users VALUES (11, 'user_1725492662202', 2);
INSERT INTO public.users VALUES (10, 'user_1725492662203', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 38, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 11, true);


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
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

