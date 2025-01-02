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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    description text,
    age_in_millions_of_years numeric,
    name character varying(40) NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    density numeric,
    description text,
    has_life boolean,
    is_spherical boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    density numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    density numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer,
    mass numeric,
    avg_temp integer,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    density numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'A bright comet visible every 100 years.', 4500, 'Comet Hale-Bopp');
INSERT INTO public.comet VALUES (2, 'A comet with a highly elliptical orbit.', 3000, 'Comet Ison');
INSERT INTO public.comet VALUES (3, 'A faint comet discovered in 2007.', 500, 'Comet 17P/Holmes');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13000, 0, 0.58, 'The galaxy that contains our solar system.', true, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 2537000, 0.75, 'A neighboring galaxy to the Milky Way, on a collision course.', false, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 12000, 3000000, 0.50, 'A small spiral galaxy in the Local Group, close to Andromeda.', false, true);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool Galaxy', 15000, 23000000, 0.65, 'A stunning spiral galaxy located in the constellation Canes Venatici.', false, true);
INSERT INTO public.galaxy VALUES (5, 'Sombrero Galaxy', 8000, 28000000, 0.45, 'A well-known spiral galaxy in the constellation Virgo, named for its resemblance to a sombrero hat.', false, true);
INSERT INTO public.galaxy VALUES (6, 'Black Eye Galaxy', 12000, 17000000, 0.60, 'A spiral galaxy known for its distinct dark band of dust across its center.', false, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (21, 'Moon', 4500, 384400, 3.34, 'The natural satellite of Earth.', true, true, 22);
INSERT INTO public.moon VALUES (22, 'Phobos', 4500, 9300, 1.87, 'A moon of Mars with an irregular shape.', false, false, 23);
INSERT INTO public.moon VALUES (23, 'Deimos', 4500, 23460, 1.47, 'A small moon of Mars.', false, false, 23);
INSERT INTO public.moon VALUES (24, 'Io', 4500, 421700, 3.53, 'A volcanic moon of Jupiter.', false, true, 24);
INSERT INTO public.moon VALUES (25, 'Europa', 4500, 670900, 3.01, 'A moon of Jupiter with a possible ocean beneath.', false, true, 24);
INSERT INTO public.moon VALUES (26, 'Ganymede', 4500, 1070400, 1.94, 'The largest moon in the solar system, orbiting Jupiter.', false, true, 24);
INSERT INTO public.moon VALUES (27, 'Callisto', 4500, 1882700, 1.83, 'A heavily cratered moon of Jupiter.', false, true, 24);
INSERT INTO public.moon VALUES (28, 'Titan', 4500, 1222000, 1.88, 'A large moon of Saturn.', false, true, 25);
INSERT INTO public.moon VALUES (29, 'Rhea', 4500, 527108, 1.24, 'A moon of Saturn with an icy surface.', false, true, 25);
INSERT INTO public.moon VALUES (30, 'Enceladus', 4500, 238020, 1.61, 'A moon of Saturn with water geysers.', false, true, 25);
INSERT INTO public.moon VALUES (31, 'Mimas', 4500, 185000, 1.17, 'A moon of Saturn with a large crater.', false, true, 25);
INSERT INTO public.moon VALUES (32, 'Triton', 4500, 3560000, 2.06, 'A moon of Neptune with geysers.', false, true, 26);
INSERT INTO public.moon VALUES (33, 'Charon', 4500, 1955000, 1.63, 'The largest moon of Pluto.', false, true, 27);
INSERT INTO public.moon VALUES (34, 'Ceres', 4500, 508000, 2.09, 'A dwarf planet in the asteroid belt.', false, true, 28);
INSERT INTO public.moon VALUES (35, 'Miranda', 4500, 1300000, 1.21, 'A moon of Uranus with extreme surface features.', false, true, 29);
INSERT INTO public.moon VALUES (36, 'Umbriel', 4500, 2660000, 1.22, 'A moon of Uranus with a dark surface.', false, true, 29);
INSERT INTO public.moon VALUES (37, 'Ariel', 4500, 1900000, 1.59, 'A moon of Uranus with valleys and ridges.', false, true, 29);
INSERT INTO public.moon VALUES (38, 'Titania', 4500, 4350000, 1.67, 'The largest moon of Uranus.', false, true, 29);
INSERT INTO public.moon VALUES (39, 'Neptune', 4500, 1000000, 2.17, 'A small moon of Neptune.', false, true, 26);
INSERT INTO public.moon VALUES (40, 'Ganymedes 2', 4500, 500000, 2.19, 'An additional moon orbiting Jupiter.', false, true, 24);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (22, 'Earth', 4500, 0, 5.51, 'Our home planet, the only one known to support life.', true, true, 1, 5.97, 15, true);
INSERT INTO public.planet VALUES (23, 'Mercury', 4500, 500000, 5.43, 'The smallest planet in the solar system, closest to the Sun.', false, true, 1, 0.33, 167, false);
INSERT INTO public.planet VALUES (24, 'Venus', 4600, 500000, 5.24, 'The second planet from the Sun, known for its thick atmosphere and high temperatures.', false, true, 1, 4.87, 464, false);
INSERT INTO public.planet VALUES (25, 'Mars', 4500, 500000, 3.93, 'The fourth planet from the Sun, known as the Red Planet.', false, true, 1, 0.64, -60, true);
INSERT INTO public.planet VALUES (26, 'Jupiter', 4600, 500000, 1.33, 'The largest planet in our solar system, a gas giant.', false, true, 1, 1898, -108, false);
INSERT INTO public.planet VALUES (27, 'Saturn', 4500, 500000, 0.69, 'The sixth planet from the Sun, known for its prominent ring system.', false, true, 1, 568, -139, false);
INSERT INTO public.planet VALUES (28, 'Uranus', 4600, 500000, 1.27, 'The seventh planet from the Sun, known for its tilted rotation axis.', false, true, 1, 86.8, -195, false);
INSERT INTO public.planet VALUES (29, 'Neptune', 4700, 500000, 1.64, 'The eighth planet from the Sun, known for its deep blue color.', false, true, 1, 102, -200, false);
INSERT INTO public.planet VALUES (30, 'Proxima b', 4000, 500000, 5.23, 'An exoplanet orbiting the closest star to the Sun, Proxima Centauri.', true, true, 3, 1.17, 30, true);
INSERT INTO public.planet VALUES (31, 'Alpha Centauri Bb', 4000, 500000, 4.72, 'An exoplanet orbiting Alpha Centauri B, part of the Alpha Centauri system.', false, true, 3, 1.13, 300, false);
INSERT INTO public.planet VALUES (32, 'Kepler-452b', 5000, 500000, 5.24, 'An exoplanet orbiting in the habitable zone of its star, similar to Earth.', true, true, 5, 1.60, 25, true);
INSERT INTO public.planet VALUES (33, 'Gliese 581g', 4500, 500000, 4.88, 'A potentially habitable exoplanet in the Gliese 581 system.', true, true, 2, 1.03, 45, true);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 0, 1.41, 'Our home star at the center of the solar system.', true, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 230, 81000000, 1.71, 'The brightest star in the night sky.', false, true, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 5000, 425000000, 0.89, 'A star in the Alpha Centauri system, one of the closest to Earth.', false, true, 3);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 800, 643, 1.20, 'A red supergiant star in the constellation Orion.', false, true, 4);
INSERT INTO public.star VALUES (5, 'Proxima Centauri', 4000, 402000000, 0.68, 'The closest known star to the Sun, part of the Alpha Centauri system.', false, true, 3);
INSERT INTO public.star VALUES (6, 'Vega', 4550, 250000000, 1.16, 'A bright star in the constellation Lyra, often used for celestial navigation.', false, true, 5);


--
-- Name: comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 40, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 33, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: moon unique_pmoon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_pmoon_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


--
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

