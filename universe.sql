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
    name character varying,
    age integer,
    weight numeric(6,2),
    applicable boolean NOT NULL
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
    name character varying,
    age integer,
    has_planets boolean,
    planet_id integer NOT NULL
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
    name character varying,
    age integer,
    has_moons boolean,
    star_id integer NOT NULL
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
-- Name: relations; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.relations (
    name character varying,
    relations_id integer NOT NULL,
    applicable boolean NOT NULL,
    explanation text
);


ALTER TABLE public.relations OWNER TO freecodecamp;

--
-- Name: relations_relations_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.relations_relations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.relations_relations_id_seq OWNER TO freecodecamp;

--
-- Name: relations_relations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.relations_relations_id_seq OWNED BY public.relations.relations_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying,
    age integer,
    galaxy_id integer,
    applicable boolean NOT NULL
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
-- Name: relations relations_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relations ALTER COLUMN relations_id SET DEFAULT nextval('public.relations_relations_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'First G', 1500, 5256.00, true);
INSERT INTO public.galaxy VALUES (2, 'Second G', 3000, 8746.00, true);
INSERT INTO public.galaxy VALUES (3, 'Third G', 4500, 1379.00, true);
INSERT INTO public.galaxy VALUES (4, 'Fourth G', 6000, 4278.00, true);
INSERT INTO public.galaxy VALUES (5, 'Fifth G', 7500, 2574.00, true);
INSERT INTO public.galaxy VALUES (6, 'Sixth G', 9000, 4959.00, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'First Moon', 85, true, 1);
INSERT INTO public.moon VALUES (2, 'Second Moon', 45, true, 2);
INSERT INTO public.moon VALUES (3, 'Third Moon', 70, true, 3);
INSERT INTO public.moon VALUES (4, 'Fourth', 12, true, 4);
INSERT INTO public.moon VALUES (5, 'Fifth', 45, true, 5);
INSERT INTO public.moon VALUES (6, 'Sixth', 634, true, 6);
INSERT INTO public.moon VALUES (7, 'Seventh', 56, true, 7);
INSERT INTO public.moon VALUES (8, 'Eighth', 12, true, 8);
INSERT INTO public.moon VALUES (9, 'Ninth', 45, true, 6);
INSERT INTO public.moon VALUES (10, 'Tenth', 34, true, 6);
INSERT INTO public.moon VALUES (11, 'Eleventh', 66, true, 9);
INSERT INTO public.moon VALUES (12, 'Twelfth', 33, true, 10);
INSERT INTO public.moon VALUES (13, 'Thirteenth', 44, true, 11);
INSERT INTO public.moon VALUES (14, 'Fourteenth', 55, true, 12);
INSERT INTO public.moon VALUES (15, 'Fifteenth', 66, true, 11);
INSERT INTO public.moon VALUES (16, 'Sixteenth', 77, true, 10);
INSERT INTO public.moon VALUES (17, 'Seventeenth', 99, true, 9);
INSERT INTO public.moon VALUES (18, 'Eighteenth', 101, true, 8);
INSERT INTO public.moon VALUES (19, 'Nineteenth', 111, true, 7);
INSERT INTO public.moon VALUES (20, 'Twentieth', 123, true, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'First Planet', 234, true, 1);
INSERT INTO public.planet VALUES (2, 'Second Planet', 2356, true, 1);
INSERT INTO public.planet VALUES (3, 'Third Planet', 656, true, 3);
INSERT INTO public.planet VALUES (4, 'Fourth Planet', 1237, true, 2);
INSERT INTO public.planet VALUES (5, 'Fifth Planet', 8234, true, 6);
INSERT INTO public.planet VALUES (6, 'Sixth Planet', 1283, true, 3);
INSERT INTO public.planet VALUES (7, 'Seventh', 1238, true, 4);
INSERT INTO public.planet VALUES (8, 'Eighth', 9856, true, 5);
INSERT INTO public.planet VALUES (9, 'Ninth', 958, true, 3);
INSERT INTO public.planet VALUES (10, 'Tenth', 96834, true, 2);
INSERT INTO public.planet VALUES (11, 'Eleventh', 12378, true, 4);
INSERT INTO public.planet VALUES (12, 'Twelfth', 345, true, 6);


--
-- Data for Name: relations; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.relations VALUES ('Warrior', 1, true, NULL);
INSERT INTO public.relations VALUES ('Resources', 2, true, NULL);
INSERT INTO public.relations VALUES ('Trading', 3, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alfa', 1200, 1, true);
INSERT INTO public.star VALUES (2, 'Beta', 2400, 2, true);
INSERT INTO public.star VALUES (3, 'Gamma', 3600, 3, true);
INSERT INTO public.star VALUES (4, 'D', 4800, 4, true);
INSERT INTO public.star VALUES (5, 'E', 6000, 5, true);
INSERT INTO public.star VALUES (6, 'F', 7200, 6, true);


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
-- Name: relations_relations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.relations_relations_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: planet planetunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planetunique UNIQUE (planet_id);


--
-- Name: relations relations_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relations_pkey PRIMARY KEY (relations_id);


--
-- Name: relations relatunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.relations
    ADD CONSTRAINT relatunique UNIQUE (relations_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star starsunique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT starsunique UNIQUE (star_id);


--
-- Name: galaxy uniquegalaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uniquegalaxy UNIQUE (galaxy_id);


--
-- Name: moon uniquemoon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uniquemoon UNIQUE (moon_id);


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

