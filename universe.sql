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
    name character varying(100) NOT NULL,
    galaxy_shape character varying(40),
    galaxy_group character varying(50),
    constellation character varying(50),
    diameter_in_light_years integer,
    milky_way_satellite boolean
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
    planet_id integer,
    orbital_period numeric(8,3),
    mean_radius_in_km integer,
    note text
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
    number_of_satellites integer,
    planet_type_id integer,
    has_life boolean,
    orbital_period numeric(10,3),
    mean_radius_in_km integer,
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
-- Name: planet_type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_type (
    planet_type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.planet_type OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_type_planet_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_type_planet_type_id_seq OWNER TO freecodecamp;

--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_type_planet_type_id_seq OWNED BY public.planet_type.planet_type_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    galaxy_id integer,
    constellation character varying(50),
    absolute_magnitude numeric(10,2),
    age_in_billion_years numeric(5,2),
    distance_from_earth_in_light_years integer,
    distance_from_sun_in_light_years integer
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
-- Name: planet_type planet_type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type ALTER COLUMN planet_type_id SET DEFAULT nextval('public.planet_type_planet_type_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 'Local Group', 'Andromeda', 152000, false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'spiral', 'Local Group', 'Triangulum', 60000, false);
INSERT INTO public.galaxy VALUES (5, 'NGC 3109', 'magellatic spiral', 'Antlia-Sextans Group', 'Hydra', NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Sextans A (UGCA 205)', 'irregular', 'Antlia-Sextans Group', 'Sextans', NULL, false);
INSERT INTO public.galaxy VALUES (7, 'Leo P', 'irregular', 'Antlia-Sextans Group', 'Leo', NULL, false);
INSERT INTO public.galaxy VALUES (8, 'Sculptor Dwarf', 'dwarf spheroidal', NULL, 'Sculptor', NULL, true);
INSERT INTO public.galaxy VALUES (9, 'Draco Dwarf', 'dwar spheroidal', NULL, 'Draco', NULL, true);
INSERT INTO public.galaxy VALUES (10, 'M32', 'elliptical', NULL, 'Andromeda', NULL, false);
INSERT INTO public.galaxy VALUES (11, 'Pisces Dwarf', 'irregular', NULL, 'Pisces', NULL, false);
INSERT INTO public.galaxy VALUES (12, 'NGC 147', 'dwarf elliptical', NULL, 'Cassiopeia', NULL, false);
INSERT INTO public.galaxy VALUES (13, 'Hercules', 'dwarf spheroidal', NULL, 'Hercules', NULL, true);
INSERT INTO public.galaxy VALUES (4, 'Large Magellatic Cloud', 'magellatic spiral', 'Local Group', 'Dorado', 32200, true);
INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'spiral', 'Local Group', 'Sagittarius', 87400, false);
INSERT INTO public.galaxy VALUES (14, 'SagDSG', 'dwarf spheroidal', NULL, 'Sagittarius', NULL, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, 27.321, 1737, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 6, 0.319, 11, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 6, 1.263, 6, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 10, 1.769, 1821, NULL);
INSERT INTO public.moon VALUES (5, 'Europa', 10, 3.551, 1560, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymed', 10, 7.155, 2634, NULL);
INSERT INTO public.moon VALUES (7, 'Callisto', 10, 16.690, 2410, NULL);
INSERT INTO public.moon VALUES (8, 'Titan', 11, 15.945, 2575, NULL);
INSERT INTO public.moon VALUES (9, 'Enceladus', 11, 1.370, 252, NULL);
INSERT INTO public.moon VALUES (10, 'Lapetus', 11, 79.321, 734, NULL);
INSERT INTO public.moon VALUES (11, 'Rhea', 11, 4.518, 764, NULL);
INSERT INTO public.moon VALUES (12, 'Keptler-1625b I', 7, NULL, NULL, 'unofficial exomoon');
INSERT INTO public.moon VALUES (13, 'Triton', 9, 5.877, 1354, NULL);
INSERT INTO public.moon VALUES (14, 'Proteus', 9, 1.122, 210, NULL);
INSERT INTO public.moon VALUES (15, 'Nereid', 9, 360.110, 175, NULL);
INSERT INTO public.moon VALUES (16, 'Thalassa', 9, 0.311, 41, NULL);
INSERT INTO public.moon VALUES (17, 'Titania', 8, 8.706, 788, NULL);
INSERT INTO public.moon VALUES (18, 'Ariel', 8, 2.520, 579, NULL);
INSERT INTO public.moon VALUES (19, 'Oberon', 8, 13.463, 761, NULL);
INSERT INTO public.moon VALUES (20, 'Miranda', 8, 1.413, 236, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Epsilon Andromedae b', 0, 3, false, 4.617, NULL, 6);
INSERT INTO public.planet VALUES (2, 'Epsilon Andromedae d', NULL, 3, false, 1290.200, NULL, 6);
INSERT INTO public.planet VALUES (3, 'Earth', 1, 1, true, 365.256, 6327, 1);
INSERT INTO public.planet VALUES (4, 'Mercury', 0, 1, false, 87.969, 2439, 1);
INSERT INTO public.planet VALUES (5, 'Venus', 0, 1, false, 224.701, 6051, 1);
INSERT INTO public.planet VALUES (6, 'Mars', 2, 1, false, 686.980, 3389, 1);
INSERT INTO public.planet VALUES (7, 'Kepler-1625b', NULL, 3, false, 287.379, NULL, 7);
INSERT INTO public.planet VALUES (8, 'Uranus', 27, 2, false, 30688.500, 25562, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 14, 2, false, 60195.000, 24622, 1);
INSERT INTO public.planet VALUES (10, 'Jupiter', 80, 3, false, 4332.500, 69911, 1);
INSERT INTO public.planet VALUES (11, 'Saturn', 83, 3, false, 10759.220, 54232, 1);
INSERT INTO public.planet VALUES (12, 'Gliese 163c', 0, 4, false, 25.631, NULL, 8);


--
-- Data for Name: planet_type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_type VALUES (1, 'Terrestrial', 'Planet composed primarly of silicate rocks or metals.');
INSERT INTO public.planet_type VALUES (2, 'ice giant', 'Giant planet composed mainly of elements heavier than hydrogen and helium, such as oxygen, carbon, nitrogen and sulfur.');
INSERT INTO public.planet_type VALUES (3, 'gas giant', 'Giant planet mainly composed of hydrogen and helium. Also called failed stars because they contain the same basic elements as a star.');
INSERT INTO public.planet_type VALUES (4, 'habitable exoplanet', 'Potentially habitable, hypothetical type of planet that has liquid water and may support life');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, NULL, 4.83, 4.60, NULL, NULL);
INSERT INTO public.star VALUES (2, 'Antares', 1, 'Scorpius', -5.28, 11.01, 550, NULL);
INSERT INTO public.star VALUES (3, 'Epsilon Sagittari', 1, 'Sagittarius', -1.41, 0.23, 143, NULL);
INSERT INTO public.star VALUES (4, 'RW Cephei', 1, 'Cephei', -8.00, 18.70, 3500, NULL);
INSERT INTO public.star VALUES (5, 'Alpheratz', 2, 'Andromeda', 2.00, 60.00, NULL, 97);
INSERT INTO public.star VALUES (6, 'Upsilon Andromedae', 2, 'Andromeda', 3.44, 3.00, 44, NULL);
INSERT INTO public.star VALUES (7, 'Kepler-1625', 1, 'Cygnus', NULL, 8.70, 8000, NULL);
INSERT INTO public.star VALUES (8, 'Gliese 163', 4, 'Dorado', 10.91, 5.00, NULL, 49);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 14, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_type_planet_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_type_planet_type_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: planet_type planet_type_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_name_key UNIQUE (name);


--
-- Name: planet_type planet_type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_type
    ADD CONSTRAINT planet_type_pkey PRIMARY KEY (planet_type_id);


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
-- Name: planet planet_planet_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_type_id_fkey FOREIGN KEY (planet_type_id) REFERENCES public.planet_type(planet_type_id);


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

-- complete
