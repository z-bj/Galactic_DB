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
    age integer,
    radius integer,
    mass integer
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
-- Name: lifeform; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.lifeform (
    name character varying(30) NOT NULL,
    lifeform_id integer NOT NULL,
    lifespan integer
);


ALTER TABLE public.lifeform OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.lifeforms_lifeform_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lifeforms_lifeform_id_seq OWNER TO freecodecamp;

--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.lifeforms_lifeform_id_seq OWNED BY public.lifeform.lifeform_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    description text,
    orbital_distance integer,
    has_life boolean
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
    star_id integer,
    description text,
    distance_from_star numeric(8,1),
    has_life boolean
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
    distance_from_sol numeric(4,1),
    type character(1)
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
-- Name: lifeform lifeform_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform ALTER COLUMN lifeform_id SET DEFAULT nextval('public.lifeforms_lifeform_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Lorem ipsum dolor', 14, 20, 133);
INSERT INTO public.galaxy VALUES (2, 'Lorem ipsum dolor', 7, 12, 53);
INSERT INTO public.galaxy VALUES (3, 'Lorem ipsum dolor', 12, 23, 443);
INSERT INTO public.galaxy VALUES (4, 'Lorem ipsum dolor', 122, 2233, 4243);
INSERT INTO public.galaxy VALUES (5, 'Lorem ipsum dolor', 2, 10, 33);
INSERT INTO public.galaxy VALUES (6, 'Lorem ipsum dolor', 123, 3, 2);


--
-- Data for Name: lifeform; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.lifeform VALUES ('Lorem ipsum dolor', 1, 110);
INSERT INTO public.lifeform VALUES ('Lorem ipsum dolor', 2, NULL);
INSERT INTO public.lifeform VALUES ('Lorem ipsum dolor', 3, 2400);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Lorem ipsum dolor', 1, 'Lorem ipsum dolor.', 238900, false);
INSERT INTO public.moon VALUES (2, 'Lorem ipsum dolor', 2, 'Lorem ipsum dolor', 28900, false);
INSERT INTO public.moon VALUES (3, 'Lorem ipsum dolor', 2, 'Lorem ipsum dolor', 22900, false);
INSERT INTO public.moon VALUES (4, 'Lorem ipsum dolor', 3, 'Lorem ipsum dolor', 121231, true);
INSERT INTO public.moon VALUES (5, 'Lorem ipsum dolor', 3, 'Lorem ipsum dolor', 141231, true);
INSERT INTO public.moon VALUES (6, 'Lorem ipsum dolor', 3, 'Lorem ipsum dolor', 1478631, true);
INSERT INTO public.moon VALUES (7, 'Lorem ipsum dolor', 3, 'Lorem ipsum dolor', 8631, true);
INSERT INTO public.moon VALUES (8, 'Lorem ipsum dolor', 4, 'Lorem ipsum dolor', 3631, true);
INSERT INTO public.moon VALUES (9, 'Lorem ipsum dolor', 4, 'Lorem ipsum dolor', 7331, true);
INSERT INTO public.moon VALUES (10, 'Lorem ipsum dolor', 4, 'Lorem ipsum dolor', 73231, true);
INSERT INTO public.moon VALUES (11, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 7331, true);
INSERT INTO public.moon VALUES (12, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 7392, true);
INSERT INTO public.moon VALUES (13, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 73912, true);
INSERT INTO public.moon VALUES (14, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 739172, true);
INSERT INTO public.moon VALUES (15, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 772, true);
INSERT INTO public.moon VALUES (16, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 7172, true);
INSERT INTO public.moon VALUES (17, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 71712, true);
INSERT INTO public.moon VALUES (18, 'Lorem ipsum dolor', 7, 'Lorem ipsum dolor', 73612, true);
INSERT INTO public.moon VALUES (19, 'Lorem ipsum dolor', 10, 'Lorem ipsum dolor', 7312, true);
INSERT INTO public.moon VALUES (20, 'Lorem ipsum dolor', 11, 'Lorem ipsum dolor', 735852, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Lorem ipsum dolor', 1, 'Lorem Ipsum Dolor', 499.0, true);
INSERT INTO public.planet VALUES (2, 'Lorem ipsum dolor', 1, 'Lorem Ipsum Dolor', 760.2, false);
INSERT INTO public.planet VALUES (3, 'Lorem ipsum dolor', 2, 'Lorem Ipsum Dolor', 523.2, true);
INSERT INTO public.planet VALUES (4, 'Lorem ipsum dolor', 3, 'Lorem Ipsum Dolor', 220.2, true);
INSERT INTO public.planet VALUES (5, 'Lorem ipsum dolor', 3, 'Lorem Ipsum Dolor', 1232.2, false);
INSERT INTO public.planet VALUES (6, 'Lorem ipsum dolor', 3, 'Lorem Ipsum Dolor', 4332.2, false);
INSERT INTO public.planet VALUES (7, 'Lorem ipsum dolor', 4, 'Lorem Ipsum Dolor', 332.2, true);
INSERT INTO public.planet VALUES (8, 'Lorem ipsum dolor', 4, 'Lorem Ipsum Dolor', 642.2, false);
INSERT INTO public.planet VALUES (9, 'Lorem ipsum dolor', 4, 'Lorem Ipsum Dolor', 1642.2, false);
INSERT INTO public.planet VALUES (10, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 12.2, true);
INSERT INTO public.planet VALUES (11, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 1332.2, true);
INSERT INTO public.planet VALUES (12, 'Lorem ipsum dolor', 5, 'Lorem ipsum dolor', 133232.2, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Lorem Ipsum Dolor', 1, 0.0, 'A');
INSERT INTO public.star VALUES (2, 'Lorem Ipsum Dolor', 2, 999.0, 'c');
INSERT INTO public.star VALUES (3, 'Lorem Ipsum Dolor', 1, 50.4, 'D');
INSERT INTO public.star VALUES (4, 'Lorem Ipsum Dolor', 3, 999.9, 'L');
INSERT INTO public.star VALUES (5, 'Lorem Ipsum Dolor', 4, 999.9, 'Q');
INSERT INTO public.star VALUES (6, 'Lorem Ipsum Dolor', 6, 999.9, 'R');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: lifeforms_lifeform_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.lifeforms_lifeform_id_seq', 3, true);


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
-- Name: lifeform lifeform_name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeform_name_unique UNIQUE (name);


--
-- Name: lifeform lifeforms_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.lifeform
    ADD CONSTRAINT lifeforms_pkey PRIMARY KEY (lifeform_id);


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

