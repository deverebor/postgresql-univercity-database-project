--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5 (Debian 14.5-1.pgdg110+1)
-- Dumped by pg_dump version 14.5 (Debian 14.5-1.pgdg110+1)

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

CREATE DATABASE my_db;
GRANT ALL PRIVILEGES ON DATABASE my_db TO postgres;

--
-- Name: table_about_work; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_about_work (
    id_about_work integer NOT NULL,
    id_interviewee integer NOT NULL,
    work_city text NOT NULL,
    working_time integer NOT NULL,
    work_country text NOT NULL
);


ALTER TABLE public.table_about_work OWNER TO postgres;

--
-- Name: TABLE table_about_work; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.table_about_work IS 'Tabela responsável pelos dados sobre o trabalho do usuário';


--
-- Name: table_change_work; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_change_work (
    id_change_work integer NOT NULL,
    id_interviewee integer NOT NULL,
    new_work_model text NOT NULL,
    will_change_work_model boolean NOT NULL,
    new_country text NOT NULL
);


ALTER TABLE public.table_change_work OWNER TO postgres;

--
-- Name: table_interviewee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.table_interviewee (
    id_interviewee integer NOT NULL,
    full_name text NOT NULL,
    age integer NOT NULL,
    job_stack text NOT NULL,
    working_age integer NOT NULL,
    job_model text NOT NULL
);


ALTER TABLE public.table_interviewee OWNER TO postgres;

--
-- Name: TABLE table_interviewee; Type: COMMENT; Schema: public; Owner: postgres
--

COMMENT ON TABLE public.table_interviewee IS 'Tabela dos entrevistados';


--
-- Name: table_about_work table_about_work_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_about_work
    ADD CONSTRAINT table_about_work_pkey PRIMARY KEY (id_about_work);


--
-- Name: table_change_work table_change_work_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_change_work
    ADD CONSTRAINT table_change_work_pkey PRIMARY KEY (id_change_work);


--
-- Name: table_interviewee table_interviewee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_interviewee
    ADD CONSTRAINT table_interviewee_pkey PRIMARY KEY (id_interviewee);


--
-- Name: table_about_work id_interviewee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_about_work
    ADD CONSTRAINT id_interviewee FOREIGN KEY (id_interviewee) REFERENCES public.table_interviewee(id_interviewee);


--
-- Name: table_change_work id_interviewee; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.table_change_work
    ADD CONSTRAINT id_interviewee FOREIGN KEY (id_interviewee) REFERENCES public.table_interviewee(id_interviewee);


--
-- PostgreSQL database dump complete
--