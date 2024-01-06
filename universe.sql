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
-- Name: celestial_body; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.celestial_body (
    celestial_body_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    has_life boolean
);


ALTER TABLE public.celestial_body OWNER TO freecodecamp;

--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.celestial_body_celestial_body_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.celestial_body_celestial_body_id_seq OWNER TO freecodecamp;

--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.celestial_body_celestial_body_id_seq OWNED BY public.celestial_body.celestial_body_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    galaxy_type character varying(50),
    has_life boolean
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
    name character varying(100) NOT NULL,
    distance_from_planet integer,
    is_spherical boolean,
    planet_id integer
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
    name character varying(100) NOT NULL,
    distance_from_earth integer,
    planet_type character varying(50),
    has_moons boolean,
    star_id integer
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
    name character varying(100) NOT NULL,
    mass_kg integer NOT NULL,
    diameter_km integer,
    is_spherical boolean,
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
-- Name: celestial_body celestial_body_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body ALTER COLUMN celestial_body_id SET DEFAULT nextval('public.celestial_body_celestial_body_id_seq'::regclass);


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
-- Data for Name: celestial_body; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.celestial_body VALUES (1, 'meteor1', 'apa ya1', 20, false);
INSERT INTO public.celestial_body VALUES (2, 'meteor2', 'apa ya 2', 25, false);
INSERT INTO public.celestial_body VALUES (3, 'meteor3', 'Apa ya 3', 26, true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral galaxy', 13000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral galaxy', 14000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Elliptical galaxy', 6500, 'Elliptical', false);
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Spiral galaxy', 4000, 'Spiral', true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero', 'Spiral galaxy', 10000, 'Spiral', false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral galaxy', 12000, 'Spiral', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, true, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 9377, true, 3);
INSERT INTO public.moon VALUES (3, 'Deimos', 23458, true, 3);
INSERT INTO public.moon VALUES (4, 'Titan Moon', 1221870, true, 7);
INSERT INTO public.moon VALUES (5, 'Io', 421700, true, 5);
INSERT INTO public.moon VALUES (6, 'Callisto', 1882700, true, 6);
INSERT INTO public.moon VALUES (7, 'Europa Moon', 670900, true, 6);
INSERT INTO public.moon VALUES (8, 'Enceladus', 147952, true, 6);
INSERT INTO public.moon VALUES (9, 'Triton', 354760, true, 8);
INSERT INTO public.moon VALUES (10, 'Charon', 19591, true, 9);
INSERT INTO public.moon VALUES (11, 'Oberon', 583500, true, 9);
INSERT INTO public.moon VALUES (12, 'Ariel', 191020, true, 9);
INSERT INTO public.moon VALUES (13, 'Rhea', 527040, true, 6);
INSERT INTO public.moon VALUES (14, 'Tethys', 294660, true, 6);
INSERT INTO public.moon VALUES (15, 'Dione', 377400, true, 6);
INSERT INTO public.moon VALUES (16, 'Iapetus', 3561300, true, 6);
INSERT INTO public.moon VALUES (17, 'Miranda', 129390, true, 9);
INSERT INTO public.moon VALUES (18, 'Umbriel', 266300, true, 9);
INSERT INTO public.moon VALUES (19, 'Titania', 435840, true, 9);
INSERT INTO public.moon VALUES (20, 'Nereid', 5513000, true, 10);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1496, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (2, 'Mars', 2250, 'Terrestrial', true, 1);
INSERT INTO public.planet VALUES (3, 'Jupiter', 5880, 'Gas Giant', true, 2);
INSERT INTO public.planet VALUES (4, 'Venus', 2610, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (5, 'Mercury', 9170, 'Terrestrial', false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 11950, 'Gas Giant', true, 2);
INSERT INTO public.planet VALUES (7, 'Neptune', 450, 'Ice Giant', true, 3);
INSERT INTO public.planet VALUES (8, 'Uranus', 2900, 'Ice Giant', true, 3);
INSERT INTO public.planet VALUES (9, 'Pluto', 5900, 'Dwarf', false, 4);
INSERT INTO public.planet VALUES (10, 'Titan', 120, 'Satellite', false, 6);
INSERT INTO public.planet VALUES (11, 'Europa', 6714, 'Satellite', false, 4);
INSERT INTO public.planet VALUES (12, 'Ganymede', 1072, 'Satellite', false, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1989, 1392000, true, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 212, 1921680, true, 1);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 8512, 1400000, true, 2);
INSERT INTO public.star VALUES (4, 'Sirius', 3512, 1673100, true, 1);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 2213, 1182100, true, 1);
INSERT INTO public.star VALUES (6, 'Rigel', 223, 1190000, true, 2);


--
-- Name: celestial_body_celestial_body_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.celestial_body_celestial_body_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: celestial_body celestial_body_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_name_key UNIQUE (name);


--
-- Name: celestial_body celestial_body_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.celestial_body
    ADD CONSTRAINT celestial_body_pkey PRIMARY KEY (celestial_body_id);


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

