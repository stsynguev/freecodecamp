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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    age integer,
    average_temperature numeric(3,1),
    has_life boolean,
    reachable boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    planet_id integer,
    name character varying(30) NOT NULL,
    size integer,
    age integer,
    average_temperature numeric(3,1),
    has_life boolean,
    reachable boolean,
    moon_id integer NOT NULL,
    description text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(30) NOT NULL,
    size integer,
    age integer,
    average_temperature numeric(3,1),
    has_life boolean,
    reachable boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(30) NOT NULL,
    size integer,
    age integer,
    average_temperature numeric(3,1),
    has_life boolean,
    reachable boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: universe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.universe (
    universe_id integer NOT NULL,
    name character varying(20) NOT NULL,
    description text
);


ALTER TABLE public.universe OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.universe_universe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.universe_universe_id_seq OWNER TO freecodecamp;

--
-- Name: universe_universe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.universe_universe_id_seq OWNED BY public.universe.universe_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: universe universe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe ALTER COLUMN universe_id SET DEFAULT nextval('public.universe_universe_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 50000, 1000000, -70.4, false, false);
INSERT INTO public.galaxy VALUES (2, 'Hercules', 100000, 2000000, 50.4, true, false);
INSERT INTO public.galaxy VALUES (3, 'Cesar', 300000, 5000000, 15.4, true, false);
INSERT INTO public.galaxy VALUES (4, 'Hermes', 300000, 5000000, 15.4, true, false);
INSERT INTO public.galaxy VALUES (5, 'Homer', 430000, 232000000, 10.4, false, false);
INSERT INTO public.galaxy VALUES (6, 'Ariadna', 20000, 45000000, 30.4, true, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (12, 'Moon-1', 2000, 450000, 10.8, false, false, 1, NULL);
INSERT INTO public.moon VALUES (2, 'Moon-2', 1000, 430000, 10.2, false, false, 2, NULL);
INSERT INTO public.moon VALUES (12, 'Moon-13', 100, 45000, 0.2, false, false, 3, NULL);
INSERT INTO public.moon VALUES (11, 'Moon-132', 3000, 350000, 91.2, false, false, 4, NULL);
INSERT INTO public.moon VALUES (3, 'Moon-231', 1000, 250000, 11.1, false, false, 5, NULL);
INSERT INTO public.moon VALUES (3, 'Moon-431', 2000, 50000, 0.9, false, false, 6, NULL);
INSERT INTO public.moon VALUES (13, 'Moon-51', 2000, 50000, 0.9, false, false, 7, NULL);
INSERT INTO public.moon VALUES (4, 'Moon-41', 2000, 50000, 0.9, false, false, 8, NULL);
INSERT INTO public.moon VALUES (5, 'Moon-413', 4, 40000, 25.9, false, false, 9, NULL);
INSERT INTO public.moon VALUES (5, 'Moon-4324', 2000, 50000, 0.9, false, false, 10, NULL);
INSERT INTO public.moon VALUES (4, 'Moon-3453', 2000, 50000, 0.9, false, false, 11, NULL);
INSERT INTO public.moon VALUES (6, 'Moon-453', 2000, 50000, 0.9, false, false, 12, NULL);
INSERT INTO public.moon VALUES (7, 'Moon-3121', 2000, 50000, 0.9, false, false, 13, NULL);
INSERT INTO public.moon VALUES (7, 'Moon-3122', 2000, 50000, 0.9, false, false, 14, NULL);
INSERT INTO public.moon VALUES (6, 'Moon-3123', 2000, 50000, 0.9, false, false, 15, NULL);
INSERT INTO public.moon VALUES (8, 'Moon-3124', 2000, 50000, 0.9, false, false, 16, NULL);
INSERT INTO public.moon VALUES (9, 'Moon-3125', 2000, 50000, 0.9, false, false, 17, NULL);
INSERT INTO public.moon VALUES (9, 'Moon-3126', 2000, 50000, 0.9, false, false, 18, NULL);
INSERT INTO public.moon VALUES (8, 'Moon-3127', 2000, 50000, 0.9, false, false, 19, NULL);
INSERT INTO public.moon VALUES (10, 'Moon-3128', 2000, 50000, 0.9, false, false, 20, NULL);
INSERT INTO public.moon VALUES (13, 'Moon-3129', 2000, 50000, 0.9, false, false, 21, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 2, 'Green', 2000, 450000, 10.8, true, false);
INSERT INTO public.planet VALUES (2, 2, 'Red', 1000, 430000, 10.2, false, false);
INSERT INTO public.planet VALUES (3, 6, 'Blue', 100, 45000, 0.2, true, false);
INSERT INTO public.planet VALUES (4, 6, 'Cyan', 3000, 350000, 91.2, false, false);
INSERT INTO public.planet VALUES (5, 5, 'Brown', 1000, 250000, 11.1, true, true);
INSERT INTO public.planet VALUES (6, 5, 'White', 2000, 50000, 0.9, false, false);
INSERT INTO public.planet VALUES (7, 3, 'Black', 2000, 50000, 0.9, false, false);
INSERT INTO public.planet VALUES (8, 4, 'Yellow', 2000, 50000, 0.9, false, false);
INSERT INTO public.planet VALUES (9, 1, 'Earth', 4, 40000, 25.9, true, true);
INSERT INTO public.planet VALUES (10, 1, 'Pluton', 2000, 50000, 0.9, false, false);
INSERT INTO public.planet VALUES (11, 1, 'Mercury', 2000, 50000, 0.9, false, false);
INSERT INTO public.planet VALUES (12, 1, 'Saturn', 2000, 50000, 0.9, false, false);
INSERT INTO public.planet VALUES (13, 1, 'Venerus', 2000, 50000, 0.9, false, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 2000, 450000, 10.8, true, false);
INSERT INTO public.star VALUES (2, 2, 'Plebo', 1000, 430000, 10.2, false, false);
INSERT INTO public.star VALUES (3, 3, 'Bart', 100, 45000, 0.2, true, false);
INSERT INTO public.star VALUES (4, 4, 'Griffin', 3000, 350000, 91.2, false, false);
INSERT INTO public.star VALUES (5, 5, 'Marge', 1000, 250000, 10.1, true, true);
INSERT INTO public.star VALUES (6, 6, 'Madsen', 2000, 50000, 0.9, false, false);


--
-- Data for Name: universe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.universe VALUES (1, 'present', NULL);
INSERT INTO public.universe VALUES (2, 'past', NULL);
INSERT INTO public.universe VALUES (3, 'future', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 34, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: universe_universe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.universe_universe_id_seq', 3, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: universe universe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_pkey PRIMARY KEY (universe_id);


--
-- Name: universe universe_universe_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.universe
    ADD CONSTRAINT universe_universe_id_key UNIQUE (universe_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

