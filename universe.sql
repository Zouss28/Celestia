--
-- PostgreSQL database dump
--

-- Dumped from database version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.12 (Ubuntu 12.12-0ubuntu0.20.04.1)

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
    origin_name text,
    is_spiral boolean,
    size_lightyear integer
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
    size integer,
    mass numeric(4,1),
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
    name character varying(30) NOT NULL,
    size integer,
    has_life boolean,
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
-- Name: popular; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.popular (
    popular_id integer NOT NULL,
    name character varying(30) NOT NULL,
    reason text
);


ALTER TABLE public.popular OWNER TO freecodecamp;

--
-- Name: popular_popular_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.popular_popular_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.popular_popular_id_seq OWNER TO freecodecamp;

--
-- Name: popular_popular_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.popular_popular_id_seq OWNED BY public.popular.popular_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    type character varying(30),
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
-- Name: popular popular_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.popular ALTER COLUMN popular_id SET DEFAULT nextval('public.popular_popular_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk way', 'From the goddess hrea who once sprayed milk acreoss the universe', true, 52850);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'gets its name from the constellation of Andromeda', true, 110000);
INSERT INTO public.galaxy VALUES (3, 'Backward Galaxy', 'Bcz It appears to rotate backwards', true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Black Eye Galaxy', NULL, true, 26481);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', NULL, true, 45000);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', 'Lookslike a cigar', false, 18500);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 1737, 493.3, 1);
INSERT INTO public.moon VALUES (2, 'Phobos', 11, 353.3, 5);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 876.0, 5);
INSERT INTO public.moon VALUES (4, 'Io', 1881, 445.2, 4);
INSERT INTO public.moon VALUES (5, 'Europa', 1560, 234.3, 4);
INSERT INTO public.moon VALUES (6, 'Ganymede', 2634, 98.3, 4);
INSERT INTO public.moon VALUES (7, 'Callisto', 2410, 34.2, 4);
INSERT INTO public.moon VALUES (8, 'Titan', 2574, 345.2, 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 763, 32.2, 6);
INSERT INTO public.moon VALUES (10, 'Tethys', 531, 12.3, 6);
INSERT INTO public.moon VALUES (11, 'Dione', 561, 43.2, 6);
INSERT INTO public.moon VALUES (12, 'Iapetus', 734, 87.5, 6);
INSERT INTO public.moon VALUES (13, 'Triton', 1353, 65.9, 8);
INSERT INTO public.moon VALUES (14, 'Nereid', 170, 345.2, 8);
INSERT INTO public.moon VALUES (15, 'Proteus', 210, 43.3, 8);
INSERT INTO public.moon VALUES (16, 'Larissa', 97, 897.3, 8);
INSERT INTO public.moon VALUES (17, 'Galatea', 87, 98.3, 8);
INSERT INTO public.moon VALUES (18, 'Titania', 788, 98.7, 7);
INSERT INTO public.moon VALUES (19, 'Ariel', 578, 98.2, 7);
INSERT INTO public.moon VALUES (20, 'Oberon', 761, 89.3, 7);
INSERT INTO public.moon VALUES (21, 'Umbriel', 584, 78.7, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 6371, true, 1);
INSERT INTO public.planet VALUES (2, 'Mercury', 2439, false, 1);
INSERT INTO public.planet VALUES (3, 'Venus', 6051, false, 1);
INSERT INTO public.planet VALUES (4, 'Jupiter', 69911, false, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 3389, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 58232, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 25363, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 24622, false, 1);
INSERT INTO public.planet VALUES (9, 'pluto', 1188, false, 1);
INSERT INTO public.planet VALUES (10, 'Ixion', 710, false, NULL);
INSERT INTO public.planet VALUES (11, 'Orcus', 479, false, NULL);
INSERT INTO public.planet VALUES (12, 'Varda', NULL, false, NULL);


--
-- Data for Name: popular; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.popular VALUES (1, 'Milkway galaxy', 'Till date the only galaxy to have been found with life');
INSERT INTO public.popular VALUES (2, 'Sun', 'Only star with a known habitable planet');
INSERT INTO public.popular VALUES (3, 'Earth', 'Mother of our civilization');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 696340, 'Solar', 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 107280, 'red dwarf', 1);
INSERT INTO public.star VALUES (3, 'Lalande 21185', 273250, 'red dwarf', 1);
INSERT INTO public.star VALUES (4, 'Lacaille 9352', NULL, 'red dwarf', 1);
INSERT INTO public.star VALUES (5, 'YZ Ceti', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Luytens Star', 243500, NULL, 1);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: popular_popular_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.popular_popular_id_seq', 3, true);


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
-- Name: popular popular_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.popular
    ADD CONSTRAINT popular_name_key UNIQUE (name);


--
-- Name: popular popular_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.popular
    ADD CONSTRAINT popular_pkey PRIMARY KEY (popular_id);


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

