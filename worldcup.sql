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

INSERT INTO public.games VALUES (245, 2018, 'Final', 4, 2, 615, 616);
INSERT INTO public.games VALUES (246, 2018, 'Third Place', 2, 0, 617, 618);
INSERT INTO public.games VALUES (247, 2018, 'Semi-Final', 2, 1, 616, 618);
INSERT INTO public.games VALUES (248, 2018, 'Semi-Final', 1, 0, 615, 617);
INSERT INTO public.games VALUES (249, 2018, 'Quarter-Final', 3, 2, 616, 619);
INSERT INTO public.games VALUES (250, 2018, 'Quarter-Final', 2, 0, 618, 620);
INSERT INTO public.games VALUES (251, 2018, 'Quarter-Final', 2, 1, 617, 621);
INSERT INTO public.games VALUES (252, 2018, 'Quarter-Final', 2, 0, 615, 622);
INSERT INTO public.games VALUES (253, 2018, 'Eighth-Final', 2, 1, 618, 623);
INSERT INTO public.games VALUES (254, 2018, 'Eighth-Final', 1, 0, 620, 624);
INSERT INTO public.games VALUES (255, 2018, 'Eighth-Final', 3, 2, 617, 625);
INSERT INTO public.games VALUES (256, 2018, 'Eighth-Final', 2, 0, 621, 626);
INSERT INTO public.games VALUES (257, 2018, 'Eighth-Final', 2, 1, 616, 627);
INSERT INTO public.games VALUES (258, 2018, 'Eighth-Final', 2, 1, 619, 628);
INSERT INTO public.games VALUES (259, 2018, 'Eighth-Final', 2, 1, 622, 629);
INSERT INTO public.games VALUES (260, 2018, 'Eighth-Final', 4, 3, 615, 630);
INSERT INTO public.games VALUES (261, 2014, 'Final', 1, 0, 631, 630);
INSERT INTO public.games VALUES (262, 2014, 'Third Place', 3, 0, 632, 621);
INSERT INTO public.games VALUES (263, 2014, 'Semi-Final', 1, 0, 630, 632);
INSERT INTO public.games VALUES (264, 2014, 'Semi-Final', 7, 1, 631, 621);
INSERT INTO public.games VALUES (265, 2014, 'Quarter-Final', 1, 0, 632, 633);
INSERT INTO public.games VALUES (266, 2014, 'Quarter-Final', 1, 0, 630, 617);
INSERT INTO public.games VALUES (267, 2014, 'Quarter-Final', 2, 1, 621, 623);
INSERT INTO public.games VALUES (268, 2014, 'Quarter-Final', 1, 0, 631, 615);
INSERT INTO public.games VALUES (269, 2014, 'Eighth-Final', 2, 1, 621, 634);
INSERT INTO public.games VALUES (270, 2014, 'Eighth-Final', 2, 0, 623, 622);
INSERT INTO public.games VALUES (271, 2014, 'Eighth-Final', 2, 0, 615, 635);
INSERT INTO public.games VALUES (272, 2014, 'Eighth-Final', 2, 1, 631, 636);
INSERT INTO public.games VALUES (273, 2014, 'Eighth-Final', 2, 1, 632, 626);
INSERT INTO public.games VALUES (274, 2014, 'Eighth-Final', 2, 1, 633, 637);
INSERT INTO public.games VALUES (275, 2014, 'Eighth-Final', 1, 0, 630, 624);
INSERT INTO public.games VALUES (276, 2014, 'Eighth-Final', 2, 1, 617, 638);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (615, 'France');
INSERT INTO public.teams VALUES (616, 'Croatia');
INSERT INTO public.teams VALUES (617, 'Belgium');
INSERT INTO public.teams VALUES (618, 'England');
INSERT INTO public.teams VALUES (619, 'Russia');
INSERT INTO public.teams VALUES (620, 'Sweden');
INSERT INTO public.teams VALUES (621, 'Brazil');
INSERT INTO public.teams VALUES (622, 'Uruguay');
INSERT INTO public.teams VALUES (623, 'Colombia');
INSERT INTO public.teams VALUES (624, 'Switzerland');
INSERT INTO public.teams VALUES (625, 'Japan');
INSERT INTO public.teams VALUES (626, 'Mexico');
INSERT INTO public.teams VALUES (627, 'Denmark');
INSERT INTO public.teams VALUES (628, 'Spain');
INSERT INTO public.teams VALUES (629, 'Portugal');
INSERT INTO public.teams VALUES (630, 'Argentina');
INSERT INTO public.teams VALUES (631, 'Germany');
INSERT INTO public.teams VALUES (632, 'Netherlands');
INSERT INTO public.teams VALUES (633, 'Costa Rica');
INSERT INTO public.teams VALUES (634, 'Chile');
INSERT INTO public.teams VALUES (635, 'Nigeria');
INSERT INTO public.teams VALUES (636, 'Algeria');
INSERT INTO public.teams VALUES (637, 'Greece');
INSERT INTO public.teams VALUES (638, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 276, true);


--
-- Name: teams_teams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_teams_id_seq', 638, true);


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

