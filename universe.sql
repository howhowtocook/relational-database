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
-- Name: country; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.country (
    country_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.country OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    discription text,
    age numeric,
    distance integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    is_spherical boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age numeric,
    is_spherical boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    distance integer,
    age numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.country VALUES (1, 'c1', 1);
INSERT INTO public.country VALUES (2, 'c2', 2);
INSERT INTO public.country VALUES (3, 'c3', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'g1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'g2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'g3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'g4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'g5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'g6', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'p1', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'm2', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'm3', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'm4', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'm5', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'm6', NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'm7', NULL, NULL, 1);
INSERT INTO public.moon VALUES (8, 'm8', NULL, NULL, 2);
INSERT INTO public.moon VALUES (9, 'm9', NULL, NULL, 3);
INSERT INTO public.moon VALUES (10, 'm10', NULL, NULL, 4);
INSERT INTO public.moon VALUES (11, 'm11', NULL, NULL, 5);
INSERT INTO public.moon VALUES (12, 'm12', NULL, NULL, 6);
INSERT INTO public.moon VALUES (13, 'm13', NULL, NULL, 3);
INSERT INTO public.moon VALUES (14, 'm14', NULL, NULL, 4);
INSERT INTO public.moon VALUES (15, 'm15', NULL, NULL, 5);
INSERT INTO public.moon VALUES (16, 'm16', NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'm17', NULL, NULL, 1);
INSERT INTO public.moon VALUES (18, 'm18', NULL, NULL, 2);
INSERT INTO public.moon VALUES (19, 'm19', NULL, NULL, 3);
INSERT INTO public.moon VALUES (20, 'm20', NULL, NULL, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'p2', NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'p3', NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'p4', NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'p5', NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'p6', NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'p7', NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'p8', NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'p9', NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'p10', NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'p11', NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'p12', NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 's1', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 's2', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 's3', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 's4', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 's5', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 's6', NULL, NULL, 6);


--
-- Name: country country_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_name_key UNIQUE (name);


--
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (country_id);


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
-- Name: country country_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

