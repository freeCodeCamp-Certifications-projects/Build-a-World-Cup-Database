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

INSERT INTO public.games VALUES (213, 2018, 'Final', 4, 2, 591, 592);
INSERT INTO public.games VALUES (214, 2018, 'Third Place', 2, 0, 593, 594);
INSERT INTO public.games VALUES (215, 2018, 'Semi-Final', 2, 1, 592, 594);
INSERT INTO public.games VALUES (216, 2018, 'Semi-Final', 1, 0, 591, 593);
INSERT INTO public.games VALUES (217, 2018, 'Quarter-Final', 3, 2, 592, 595);
INSERT INTO public.games VALUES (218, 2018, 'Quarter-Final', 2, 0, 594, 596);
INSERT INTO public.games VALUES (219, 2018, 'Quarter-Final', 2, 1, 593, 597);
INSERT INTO public.games VALUES (220, 2018, 'Quarter-Final', 2, 0, 591, 598);
INSERT INTO public.games VALUES (221, 2018, 'Eighth-Final', 2, 1, 594, 599);
INSERT INTO public.games VALUES (222, 2018, 'Eighth-Final', 1, 0, 596, 600);
INSERT INTO public.games VALUES (223, 2018, 'Eighth-Final', 3, 2, 593, 601);
INSERT INTO public.games VALUES (224, 2018, 'Eighth-Final', 2, 0, 597, 602);
INSERT INTO public.games VALUES (225, 2018, 'Eighth-Final', 2, 1, 592, 603);
INSERT INTO public.games VALUES (226, 2018, 'Eighth-Final', 2, 1, 595, 604);
INSERT INTO public.games VALUES (227, 2018, 'Eighth-Final', 2, 1, 598, 605);
INSERT INTO public.games VALUES (228, 2018, 'Eighth-Final', 4, 3, 591, 606);
INSERT INTO public.games VALUES (229, 2014, 'Final', 1, 0, 607, 606);
INSERT INTO public.games VALUES (230, 2014, 'Third Place', 3, 0, 608, 597);
INSERT INTO public.games VALUES (231, 2014, 'Semi-Final', 1, 0, 606, 608);
INSERT INTO public.games VALUES (232, 2014, 'Semi-Final', 7, 1, 607, 597);
INSERT INTO public.games VALUES (233, 2014, 'Quarter-Final', 1, 0, 608, 609);
INSERT INTO public.games VALUES (234, 2014, 'Quarter-Final', 1, 0, 606, 593);
INSERT INTO public.games VALUES (235, 2014, 'Quarter-Final', 2, 1, 597, 599);
INSERT INTO public.games VALUES (236, 2014, 'Quarter-Final', 1, 0, 607, 591);
INSERT INTO public.games VALUES (237, 2014, 'Eighth-Final', 2, 1, 597, 610);
INSERT INTO public.games VALUES (238, 2014, 'Eighth-Final', 2, 0, 599, 598);
INSERT INTO public.games VALUES (239, 2014, 'Eighth-Final', 2, 0, 591, 611);
INSERT INTO public.games VALUES (240, 2014, 'Eighth-Final', 2, 1, 607, 612);
INSERT INTO public.games VALUES (241, 2014, 'Eighth-Final', 2, 1, 608, 602);
INSERT INTO public.games VALUES (242, 2014, 'Eighth-Final', 2, 1, 609, 613);
INSERT INTO public.games VALUES (243, 2014, 'Eighth-Final', 1, 0, 606, 600);
INSERT INTO public.games VALUES (244, 2014, 'Eighth-Final', 2, 1, 593, 614);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (591, 'France');
INSERT INTO public.teams VALUES (592, 'Croatia');
INSERT INTO public.teams VALUES (593, 'Belgium');
INSERT INTO public.teams VALUES (594, 'England');
INSERT INTO public.teams VALUES (595, 'Russia');
INSERT INTO public.teams VALUES (596, 'Sweden');
INSERT INTO public.teams VALUES (597, 'Brazil');
INSERT INTO public.teams VALUES (598, 'Uruguay');
INSERT INTO public.teams VALUES (599, 'Colombia');
INSERT INTO public.teams VALUES (600, 'Switzerland');
INSERT INTO public.teams VALUES (601, 'Japan');
INSERT INTO public.teams VALUES (602, 'Mexico');
INSERT INTO public.teams VALUES (603, 'Denmark');
INSERT INTO public.teams VALUES (604, 'Spain');
INSERT INTO public.teams VALUES (605, 'Portugal');
INSERT INTO public.teams VALUES (606, 'Argentina');
INSERT INTO public.teams VALUES (607, 'Germany');
INSERT INTO public.teams VALUES (608, 'Netherlands');
INSERT INTO public.teams VALUES (609, 'Costa Rica');
INSERT INTO public.teams VALUES (610, 'Chile');
INSERT INTO public.teams VALUES (611, 'Nigeria');
INSERT INTO public.teams VALUES (612, 'Algeria');
INSERT INTO public.teams VALUES (613, 'Greece');
INSERT INTO public.teams VALUES (614, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 244, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 614, true);


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

