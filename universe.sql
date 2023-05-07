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
    awesomeness integer,
    inhabitable boolean,
    notes text
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
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    diameter numeric,
    inhabitable boolean
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
-- Name: native_language; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.native_language (
    native_language_id integer NOT NULL,
    language character varying(30) NOT NULL,
    planet_id integer,
    native_speakers integer,
    alien_speakers integer,
    name character varying(30)
);


ALTER TABLE public.native_language OWNER TO freecodecamp;

--
-- Name: native_language_native_language_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.native_language_native_language_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.native_language_native_language_id_seq OWNER TO freecodecamp;

--
-- Name: native_language_native_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.native_language_native_language_id_seq OWNED BY public.native_language.native_language_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer,
    inhabitable boolean,
    notes text
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
    name character varying(30) NOT NULL,
    galaxy_id integer,
    inhabitable boolean,
    notes text
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: native_language native_language_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.native_language ALTER COLUMN native_language_id SET DEFAULT nextval('public.native_language_native_language_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Star Wars', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Star Trek', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Battlestar Galactica', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Marvel', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'DC', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Apollo 13', 1, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'mickey', 2, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'minnie', 2, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Yavin IV', 3, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Yavin III', 3, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Deathstar', 4, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Deathstar II', 4, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Spock', 5, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Kirk', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Worf', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Picard', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Cylon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Replicant', 7, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Gods', 8, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Frak', 8, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Iron Man', 9, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Captain America', 9, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Starlord', 10, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Groot', 10, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Lois Lane', 11, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Jimmy', 11, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Doomsday', 12, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Silver Surfer', 12, NULL, NULL);


--
-- Data for Name: native_language; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.native_language VALUES (1, 'English', 1, NULL, NULL, NULL);
INSERT INTO public.native_language VALUES (2, 'Plutonian', 2, NULL, NULL, NULL);
INSERT INTO public.native_language VALUES (3, 'Ryl', 3, NULL, NULL, NULL);
INSERT INTO public.native_language VALUES (4, 'Huttese', 4, NULL, NULL, NULL);
INSERT INTO public.native_language VALUES (5, 'Vulcan', 5, NULL, NULL, NULL);
INSERT INTO public.native_language VALUES (6, 'Klingon', 6, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Pluto', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Hoth', 2, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Dagobah', 2, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Vulcan', 3, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Klingon', 3, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Caprica', 4, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Picon', 4, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'Xandar', 5, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'Ego', 5, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'Krypton', 6, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'Apokolips', 6, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'The Sun', 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Harrison Ford', 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'Patrick Stewart', 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Katee Sackhoff', 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Robert Downy Jr.', 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'Henry Cavill', 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 24, true);


--
-- Name: native_language_native_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.native_language_native_language_id_seq', 6, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: native_language native_language_language_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.native_language
    ADD CONSTRAINT native_language_language_key UNIQUE (language);


--
-- Name: native_language native_language_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.native_language
    ADD CONSTRAINT native_language_name_key UNIQUE (name);


--
-- Name: native_language native_language_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.native_language
    ADD CONSTRAINT native_language_pkey PRIMARY KEY (native_language_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: native_language native_language_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.native_language
    ADD CONSTRAINT native_language_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

