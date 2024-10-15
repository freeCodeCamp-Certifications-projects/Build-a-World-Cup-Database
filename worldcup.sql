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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(100) NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_teams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_teams_id_seq OWNER TO freecodecamp;

--
-- Name: teams_teams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_teams_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_teams_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (181, 2018, 'Final', 4, 2, 567, 568);
INSERT INTO public.games VALUES (182, 2018, 'Third Place', 2, 0, 569, 570);
INSERT INTO public.games VALUES (183, 2018, 'Semi-Final', 2, 1, 568, 570);
INSERT INTO public.games VALUES (184, 2018, 'Semi-Final', 1, 0, 567, 569);
INSERT INTO public.games VALUES (185, 2018, 'Quarter-Final', 3, 2, 568, 571);
INSERT INTO public.games VALUES (186, 2018, 'Quarter-Final', 2, 0, 570, 572);
INSERT INTO public.games VALUES (187, 2018, 'Quarter-Final', 2, 1, 569, 573);
INSERT INTO public.games VALUES (188, 2018, 'Quarter-Final', 2, 0, 567, 574);
INSERT INTO public.games VALUES (189, 2018, 'Eighth-Final', 2, 1, 570, 575);
INSERT INTO public.games VALUES (190, 2018, 'Eighth-Final', 1, 0, 572, 576);
INSERT INTO public.games VALUES (191, 2018, 'Eighth-Final', 3, 2, 569, 577);
INSERT INTO public.games VALUES (192, 2018, 'Eighth-Final', 2, 0, 573, 578);
INSERT INTO public.games VALUES (193, 2018, 'Eighth-Final', 2, 1, 568, 579);
INSERT INTO public.games VALUES (194, 2018, 'Eighth-Final', 2, 1, 571, 580);
INSERT INTO public.games VALUES (195, 2018, 'Eighth-Final', 2, 1, 574, 581);
INSERT INTO public.games VALUES (196, 2018, 'Eighth-Final', 4, 3, 567, 582);
INSERT INTO public.games VALUES (197, 2014, 'Final', 1, 0, 583, 582);
INSERT INTO public.games VALUES (198, 2014, 'Third Place', 3, 0, 584, 573);
INSERT INTO public.games VALUES (199, 2014, 'Semi-Final', 1, 0, 582, 584);
INSERT INTO public.games VALUES (200, 2014, 'Semi-Final', 7, 1, 583, 573);
INSERT INTO public.games VALUES (201, 2014, 'Quarter-Final', 1, 0, 584, 585);
INSERT INTO public.games VALUES (202, 2014, 'Quarter-Final', 1, 0, 582, 569);
INSERT INTO public.games VALUES (203, 2014, 'Quarter-Final', 2, 1, 573, 575);
INSERT INTO public.games VALUES (204, 2014, 'Quarter-Final', 1, 0, 583, 567);
INSERT INTO public.games VALUES (205, 2014, 'Eighth-Final', 2, 1, 573, 586);
INSERT INTO public.games VALUES (206, 2014, 'Eighth-Final', 2, 0, 575, 574);
INSERT INTO public.games VALUES (207, 2014, 'Eighth-Final', 2, 0, 567, 587);
INSERT INTO public.games VALUES (208, 2014, 'Eighth-Final', 2, 1, 583, 588);
INSERT INTO public.games VALUES (209, 2014, 'Eighth-Final', 2, 1, 584, 578);
INSERT INTO public.games VALUES (210, 2014, 'Eighth-Final', 2, 1, 585, 589);
INSERT INTO public.games VALUES (211, 2014, 'Eighth-Final', 1, 0, 582, 576);
INSERT INTO public.games VALUES (212, 2014, 'Eighth-Final', 2, 1, 569, 590);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (567, 'France');
INSERT INTO public.teams VALUES (568, 'Croatia');
INSERT INTO public.teams VALUES (569, 'Belgium');
INSERT INTO public.teams VALUES (570, 'England');
INSERT INTO public.teams VALUES (571, 'Russia');
INSERT INTO public.teams VALUES (572, 'Sweden');
INSERT INTO public.teams VALUES (573, 'Brazil');
INSERT INTO public.teams VALUES (574, 'Uruguay');
INSERT INTO public.teams VALUES (575, 'Colombia');
INSERT INTO public.teams VALUES (576, 'Switzerland');
INSERT INTO public.teams VALUES (577, 'Japan');
INSERT INTO public.teams VALUES (578, 'Mexico');
INSERT INTO public.teams VALUES (579, 'Denmark');
INSERT INTO public.teams VALUES (580, 'Spain');
INSERT INTO public.teams VALUES (581, 'Portugal');
INSERT INTO public.teams VALUES (582, 'Argentina');
INSERT INTO public.teams VALUES (583, 'Germany');
INSERT INTO public.teams VALUES (584, 'Netherlands');
INSERT INTO public.teams VALUES (585, 'Costa Rica');
INSERT INTO public.teams VALUES (586, 'Chile');
INSERT INTO public.teams VALUES (587, 'Nigeria');
INSERT INTO public.teams VALUES (588, 'Algeria');
INSERT INTO public.teams VALUES (589, 'Greece');
INSERT INTO public.teams VALUES (590, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 212, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 590, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: teams unique_team_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT unique_team_name UNIQUE (name);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

