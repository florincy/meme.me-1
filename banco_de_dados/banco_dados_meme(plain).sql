--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

-- Started on 2018-11-22 15:31:02 -02

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 13041)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2986 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 202 (class 1259 OID 16528)
-- Name: comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.comment (
    cd_comment integer NOT NULL,
    "post_cd_post(FK)" integer,
    "user_cd_user_meme (FK)" integer
);


ALTER TABLE public.comment OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16475)
-- Name: complaint; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.complaint (
    cd_complaint integer NOT NULL,
    "post_cd_post(FK)" integer,
    "user_cd_user_meme (FK)" integer,
    "adm_cd_user_adm (FK)" integer,
    ds_description text
);


ALTER TABLE public.complaint OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16543)
-- Name: follow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.follow (
    cd_follow integer NOT NULL,
    "user_cd_user_meme (FK)" integer
);


ALTER TABLE public.follow OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16553)
-- Name: followers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.followers (
    cd_followers integer NOT NULL,
    "user_cd_user_meme (FK)" integer
);


ALTER TABLE public.followers OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16498)
-- Name: like; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."like" (
    cd_like integer NOT NULL,
    "post_cd_post(FK)" integer,
    "user_cd_user_meme (FK)" integer
);


ALTER TABLE public."like" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16465)
-- Name: post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post (
    cd_post integer NOT NULL,
    "user_cd_user_meme (FK)" integer,
    dt_moments date,
    tm_moments time with time zone,
    ds_post integer
);


ALTER TABLE public.post OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16513)
-- Name: share; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.share (
    cd_share integer NOT NULL,
    "post_cd_post(FK)" integer,
    "user_cd_user_meme (FK)" integer
);


ALTER TABLE public.share OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16457)
-- Name: user_adm; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_adm (
    cd_user_adm integer NOT NULL,
    nm_first character varying,
    nm_last character varying,
    ds_nick character varying,
    ds_email character varying,
    ds_password character varying,
    dt_birth date,
    ds_country character varying
);


ALTER TABLE public.user_adm OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 16449)
-- Name: user_meme; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_meme (
    cd_user_meme integer NOT NULL,
    nm_first character varying,
    nm_last character varying,
    ds_nick character varying,
    ds_email character varying,
    dt_birth date,
    ds_country character varying,
    tp_private character(1)[],
    ds_bios text
);


ALTER TABLE public.user_meme OWNER TO postgres;

--
-- TOC entry 2976 (class 0 OID 16528)
-- Dependencies: 202
-- Data for Name: comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.comment (cd_comment, "post_cd_post(FK)", "user_cd_user_meme (FK)") FROM stdin;
\.


--
-- TOC entry 2973 (class 0 OID 16475)
-- Dependencies: 199
-- Data for Name: complaint; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.complaint (cd_complaint, "post_cd_post(FK)", "user_cd_user_meme (FK)", "adm_cd_user_adm (FK)", ds_description) FROM stdin;
\.


--
-- TOC entry 2977 (class 0 OID 16543)
-- Dependencies: 203
-- Data for Name: follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.follow (cd_follow, "user_cd_user_meme (FK)") FROM stdin;
\.


--
-- TOC entry 2978 (class 0 OID 16553)
-- Dependencies: 204
-- Data for Name: followers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.followers (cd_followers, "user_cd_user_meme (FK)") FROM stdin;
\.


--
-- TOC entry 2974 (class 0 OID 16498)
-- Dependencies: 200
-- Data for Name: like; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public."like" (cd_like, "post_cd_post(FK)", "user_cd_user_meme (FK)") FROM stdin;
\.


--
-- TOC entry 2972 (class 0 OID 16465)
-- Dependencies: 198
-- Data for Name: post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post (cd_post, "user_cd_user_meme (FK)", dt_moments, tm_moments, ds_post) FROM stdin;
\.


--
-- TOC entry 2975 (class 0 OID 16513)
-- Dependencies: 201
-- Data for Name: share; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.share (cd_share, "post_cd_post(FK)", "user_cd_user_meme (FK)") FROM stdin;
\.


--
-- TOC entry 2971 (class 0 OID 16457)
-- Dependencies: 197
-- Data for Name: user_adm; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_adm (cd_user_adm, nm_first, nm_last, ds_nick, ds_email, ds_password, dt_birth, ds_country) FROM stdin;
\.


--
-- TOC entry 2970 (class 0 OID 16449)
-- Dependencies: 196
-- Data for Name: user_meme; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.user_meme (cd_user_meme, nm_first, nm_last, ds_nick, ds_email, dt_birth, ds_country, tp_private, ds_bios) FROM stdin;
\.


--
-- TOC entry 2832 (class 2606 OID 16532)
-- Name: comment comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT comment_pkey PRIMARY KEY (cd_comment);


--
-- TOC entry 2826 (class 2606 OID 16482)
-- Name: complaint complaint_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint
    ADD CONSTRAINT complaint_pkey PRIMARY KEY (cd_complaint);


--
-- TOC entry 2834 (class 2606 OID 16547)
-- Name: follow follow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT follow_pkey PRIMARY KEY (cd_follow);


--
-- TOC entry 2836 (class 2606 OID 16557)
-- Name: followers followers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.followers
    ADD CONSTRAINT followers_pkey PRIMARY KEY (cd_followers);


--
-- TOC entry 2828 (class 2606 OID 16502)
-- Name: like like_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."like"
    ADD CONSTRAINT like_pkey PRIMARY KEY (cd_like);


--
-- TOC entry 2824 (class 2606 OID 16469)
-- Name: post post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT post_pkey PRIMARY KEY (cd_post);


--
-- TOC entry 2830 (class 2606 OID 16517)
-- Name: share share_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.share
    ADD CONSTRAINT share_pkey PRIMARY KEY (cd_share);


--
-- TOC entry 2822 (class 2606 OID 16464)
-- Name: user_adm user_adm_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_adm
    ADD CONSTRAINT user_adm_pkey PRIMARY KEY (cd_user_adm);


--
-- TOC entry 2820 (class 2606 OID 16456)
-- Name: user_meme user_meme_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_meme
    ADD CONSTRAINT user_meme_pkey PRIMARY KEY (cd_user_meme);


--
-- TOC entry 2845 (class 2606 OID 16533)
-- Name: comment comment_post_cd_post(FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "comment_post_cd_post(FK)_fkey" FOREIGN KEY ("post_cd_post(FK)") REFERENCES public.post(cd_post);


--
-- TOC entry 2846 (class 2606 OID 16538)
-- Name: comment comment_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.comment
    ADD CONSTRAINT "comment_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


--
-- TOC entry 2840 (class 2606 OID 16493)
-- Name: complaint complaint_adm_cd_user_adm (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint
    ADD CONSTRAINT "complaint_adm_cd_user_adm (FK)_fkey" FOREIGN KEY ("adm_cd_user_adm (FK)") REFERENCES public.user_adm(cd_user_adm);


--
-- TOC entry 2838 (class 2606 OID 16483)
-- Name: complaint complaint_post_cd_post(FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint
    ADD CONSTRAINT "complaint_post_cd_post(FK)_fkey" FOREIGN KEY ("post_cd_post(FK)") REFERENCES public.post(cd_post);


--
-- TOC entry 2839 (class 2606 OID 16488)
-- Name: complaint complaint_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.complaint
    ADD CONSTRAINT "complaint_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


--
-- TOC entry 2847 (class 2606 OID 16548)
-- Name: follow follow_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.follow
    ADD CONSTRAINT "follow_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


--
-- TOC entry 2848 (class 2606 OID 16558)
-- Name: followers followers_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.followers
    ADD CONSTRAINT "followers_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


--
-- TOC entry 2841 (class 2606 OID 16503)
-- Name: like like_post_cd_post(FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."like"
    ADD CONSTRAINT "like_post_cd_post(FK)_fkey" FOREIGN KEY ("post_cd_post(FK)") REFERENCES public.post(cd_post);


--
-- TOC entry 2842 (class 2606 OID 16508)
-- Name: like like_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."like"
    ADD CONSTRAINT "like_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


--
-- TOC entry 2837 (class 2606 OID 16470)
-- Name: post post_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post
    ADD CONSTRAINT "post_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


--
-- TOC entry 2843 (class 2606 OID 16518)
-- Name: share share_post_cd_post(FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.share
    ADD CONSTRAINT "share_post_cd_post(FK)_fkey" FOREIGN KEY ("post_cd_post(FK)") REFERENCES public.post(cd_post);


--
-- TOC entry 2844 (class 2606 OID 16523)
-- Name: share share_user_cd_user_meme (FK)_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.share
    ADD CONSTRAINT "share_user_cd_user_meme (FK)_fkey" FOREIGN KEY ("user_cd_user_meme (FK)") REFERENCES public.user_meme(cd_user_meme);


-- Completed on 2018-11-22 15:31:02 -02

--
-- PostgreSQL database dump complete
--

