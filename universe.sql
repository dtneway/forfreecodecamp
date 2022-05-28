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
    name character varying(80) NOT NULL,
    category character varying(50),
    constelation character varying(50),
    location character varying(80)
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
    name character varying(80) NOT NULL,
    planet_id integer NOT NULL,
    mass numeric,
    distancefromearth text
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
    name character varying(80) NOT NULL,
    exoplanet boolean NOT NULL,
    hasmoon boolean NOT NULL,
    galaxy_id integer NOT NULL,
    nbrofmoon integer NOT NULL
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
-- Name: rock; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rock (
    name character varying(80) NOT NULL,
    class text NOT NULL,
    planet_id integer NOT NULL,
    rock_id integer NOT NULL
);


ALTER TABLE public.rock OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rock_rock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rock_rock_id_seq OWNER TO freecodecamp;

--
-- Name: rock_rock_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rock_rock_id_seq OWNED BY public.rock.rock_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(80) NOT NULL,
    howmanytimesthesuninsize integer,
    distancefromearthinlightyear numeric,
    galaxy_id integer
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
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rock rock_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock ALTER COLUMN rock_id SET DEFAULT nextval('public.rock_rock_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'NGC67', 'Elliptical', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (3, 'NGC71', 'Elliptical', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (4, 'NGC7618', 'Elliptical', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (5, 'NGC79', 'Elliptical', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (6, 'NGC83', 'Elliptical', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (7, 'NGC7707', 'Elliptical', 'Andromeda', NULL);
INSERT INTO public.galaxy VALUES (1, 'NGC5', 'Elliptical', 'Andromeda', 'North of the celectial equator');
INSERT INTO public.galaxy VALUES (8, 'Milky Way', 'spiral', 'Sagittarius', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'phobos', 5, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (2, 'deimos', 5, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (3, 'ganymede', 1, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (4, 'europa', 1, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (5, 'rhea', 1, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (6, 'lo', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (7, 'callisto', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (8, 'amalthea', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (9, 'humalia', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (10, 'veletudo', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (12, 'adrastea', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (14, 'carme', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (15, 'elara', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (16, 'ananke', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (17, 'thebe', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (18, 'kalyke', 4, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (21, 'titan', 6, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (19, 'pan', 6, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (11, 'daphnis', 6, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (13, 'ymir', 6, 5746575867776757757557.22, '2 light year');
INSERT INTO public.moon VALUES (20, 'aegir', 6, 5746575867776757757557.22, '2 light year');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', false, false, 8, 0);
INSERT INTO public.planet VALUES (2, 'Venus', false, false, 8, 0);
INSERT INTO public.planet VALUES (3, 'Earth', false, true, 8, 1);
INSERT INTO public.planet VALUES (4, 'Jupyter', false, true, 8, 79);
INSERT INTO public.planet VALUES (5, 'Mars', false, true, 8, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', false, true, 8, 62);
INSERT INTO public.planet VALUES (7, 'Uranium', false, true, 8, 27);
INSERT INTO public.planet VALUES (8, 'Neptune', false, true, 8, 14);
INSERT INTO public.planet VALUES (9, 'Pluto', false, true, 8, 5);
INSERT INTO public.planet VALUES (10, 'Eris', false, true, 8, 1);
INSERT INTO public.planet VALUES (11, 'Haumea', false, true, 8, 2);
INSERT INTO public.planet VALUES (12, 'makemake', false, true, 8, 1);
INSERT INTO public.planet VALUES (13, 'ceres', false, false, 8, 0);


--
-- Data for Name: rock; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rock VALUES ('biocalcarenite', 'sedimentary', 3, 1);
INSERT INTO public.rock VALUES ('calcarenite silicifiel', 'sedimentary', 3, 2);
INSERT INTO public.rock VALUES ('travertin', 'sedimentary', 3, 3);
INSERT INTO public.rock VALUES ('marble', 'metamorphic', 3, 4);
INSERT INTO public.rock VALUES ('granite', 'magmatic', 3, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'antares', 883, 550, 8);
INSERT INTO public.star VALUES (2, 'betelgeuse', 887, 643, 8);
INSERT INTO public.star VALUES (3, 'KW Sagittarii', 1009, 7900, 8);
INSERT INTO public.star VALUES (4, 'VV Cephei A', 1050, 4900, 8);
INSERT INTO public.star VALUES (5, 'MU Cephei', 1260, 6000, 8);
INSERT INTO public.star VALUES (6, 'RW Cephei', 1535, 3500, 8);
INSERT INTO public.star VALUES (7, 'sun', 1, 0.00001581, 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: rock_rock_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rock_rock_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: rock rock_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT rock_pkey PRIMARY KEY (rock_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy u_galagy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_galagy UNIQUE (name);


--
-- Name: moon u_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_moon UNIQUE (name);


--
-- Name: planet u_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_planet UNIQUE (name);


--
-- Name: rock u_rock; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT u_rock UNIQUE (name);


--
-- Name: star u_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_star UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: rock fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: rock fk_rock; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rock
    ADD CONSTRAINT fk_rock FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

