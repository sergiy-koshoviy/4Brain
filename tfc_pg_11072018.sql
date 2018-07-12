--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 10.4

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
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: address_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.address_translations (
    id bigint NOT NULL,
    address_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    address text
);


ALTER TABLE public.address_translations OWNER TO shadow;

--
-- Name: address_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.address_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.address_translations_id_seq OWNER TO shadow;

--
-- Name: address_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.address_translations_id_seq OWNED BY public.address_translations.id;


--
-- Name: addresses; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.addresses (
    id bigint NOT NULL,
    address text,
    url text,
    show boolean
);


ALTER TABLE public.addresses OWNER TO shadow;

--
-- Name: addresses_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.addresses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.addresses_id_seq OWNER TO shadow;

--
-- Name: addresses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.addresses_id_seq OWNED BY public.addresses.id;


--
-- Name: authentications; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.authentications (
    id bigint NOT NULL,
    user_id bigint,
    provider text,
    uid text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.authentications OWNER TO shadow;

--
-- Name: authentications_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.authentications_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.authentications_id_seq OWNER TO shadow;

--
-- Name: authentications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.authentications_id_seq OWNED BY public.authentications.id;


--
-- Name: chelm_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.chelm_translations (
    id bigint NOT NULL,
    chelm_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    address text
);


ALTER TABLE public.chelm_translations OWNER TO shadow;

--
-- Name: chelm_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.chelm_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chelm_translations_id_seq OWNER TO shadow;

--
-- Name: chelm_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.chelm_translations_id_seq OWNED BY public.chelm_translations.id;


--
-- Name: chelms; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.chelms (
    id bigint NOT NULL,
    address text,
    phone text
);


ALTER TABLE public.chelms OWNER TO shadow;

--
-- Name: chelms_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.chelms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.chelms_id_seq OWNER TO shadow;

--
-- Name: chelms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.chelms_id_seq OWNED BY public.chelms.id;


--
-- Name: ckeditor_assets; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.ckeditor_assets (
    id bigint,
    data_file_name text,
    data_content_type text,
    data_file_size bigint,
    type text,
    width bigint,
    height bigint,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.ckeditor_assets OWNER TO shadow;

--
-- Name: clientemails; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.clientemails (
    id bigint NOT NULL,
    email text
);


ALTER TABLE public.clientemails OWNER TO shadow;

--
-- Name: clientemails_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.clientemails_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.clientemails_id_seq OWNER TO shadow;

--
-- Name: clientemails_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.clientemails_id_seq OWNED BY public.clientemails.id;


--
-- Name: consultations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.consultations (
    id bigint NOT NULL,
    name text,
    phone text,
    email text,
    message text
);


ALTER TABLE public.consultations OWNER TO shadow;

--
-- Name: consultations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.consultations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.consultations_id_seq OWNER TO shadow;

--
-- Name: consultations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.consultations_id_seq OWNED BY public.consultations.id;


--
-- Name: contact_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.contact_translations (
    id bigint NOT NULL,
    contact_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    description text
);


ALTER TABLE public.contact_translations OWNER TO shadow;

--
-- Name: contact_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.contact_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contact_translations_id_seq OWNER TO shadow;

--
-- Name: contact_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.contact_translations_id_seq OWNED BY public.contact_translations.id;


--
-- Name: contacts; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.contacts (
    id bigint NOT NULL,
    phone text,
    show boolean,
    description text
);


ALTER TABLE public.contacts OWNER TO shadow;

--
-- Name: contacts_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.contacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacts_id_seq OWNER TO shadow;

--
-- Name: contacts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.contacts_id_seq OWNED BY public.contacts.id;


--
-- Name: howitwork_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.howitwork_translations (
    id bigint NOT NULL,
    howitwork_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    step text,
    step_title text,
    ster_description text
);


ALTER TABLE public.howitwork_translations OWNER TO shadow;

--
-- Name: howitwork_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.howitwork_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.howitwork_translations_id_seq OWNER TO shadow;

--
-- Name: howitwork_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.howitwork_translations_id_seq OWNED BY public.howitwork_translations.id;


--
-- Name: howitworks; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.howitworks (
    id bigint NOT NULL,
    step text,
    step_title text,
    ster_description text
);


ALTER TABLE public.howitworks OWNER TO shadow;

--
-- Name: howitworks_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.howitworks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.howitworks_id_seq OWNER TO shadow;

--
-- Name: howitworks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.howitworks_id_seq OWNED BY public.howitworks.id;


--
-- Name: info_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.info_translations (
    id bigint NOT NULL,
    info_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    giveback_percent text,
    service text,
    brands text,
    cities text
);


ALTER TABLE public.info_translations OWNER TO shadow;

--
-- Name: info_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.info_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_translations_id_seq OWNER TO shadow;

--
-- Name: info_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.info_translations_id_seq OWNED BY public.info_translations.id;


--
-- Name: infos; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.infos (
    id bigint NOT NULL,
    giveback_percent text,
    service text,
    brands text,
    cities text
);


ALTER TABLE public.infos OWNER TO shadow;

--
-- Name: infos_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.infos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.infos_id_seq OWNER TO shadow;

--
-- Name: infos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.infos_id_seq OWNED BY public.infos.id;


--
-- Name: krakow_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.krakow_translations (
    id bigint NOT NULL,
    krakow_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    address text
);


ALTER TABLE public.krakow_translations OWNER TO shadow;

--
-- Name: krakow_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.krakow_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.krakow_translations_id_seq OWNER TO shadow;

--
-- Name: krakow_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.krakow_translations_id_seq OWNED BY public.krakow_translations.id;


--
-- Name: krakows; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.krakows (
    id bigint NOT NULL,
    address text,
    phone text
);


ALTER TABLE public.krakows OWNER TO shadow;

--
-- Name: krakows_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.krakows_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.krakows_id_seq OWNER TO shadow;

--
-- Name: krakows_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.krakows_id_seq OWNED BY public.krakows.id;


--
-- Name: landing_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.landing_translations (
    id bigint NOT NULL,
    landing_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    main_banner_title text,
    main_banner_decsription text,
    second_section_title text,
    second_section_description text,
    third_section_description text,
    reviews_title text,
    partners_title text,
    partners_description text,
    find_us text,
    second_section_description_right text
);


ALTER TABLE public.landing_translations OWNER TO shadow;

--
-- Name: landing_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.landing_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landing_translations_id_seq OWNER TO shadow;

--
-- Name: landing_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.landing_translations_id_seq OWNED BY public.landing_translations.id;


--
-- Name: landings; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.landings (
    id bigint NOT NULL,
    main_banner_title text,
    main_banner_decsription text,
    second_section_title text,
    second_section_description text,
    third_section_description text,
    reviews_title text,
    partners_title text,
    partners_description text,
    fb_link text,
    insta_link text,
    find_us text,
    second_section_description_right text
);


ALTER TABLE public.landings OWNER TO shadow;

--
-- Name: landings_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.landings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.landings_id_seq OWNER TO shadow;

--
-- Name: landings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.landings_id_seq OWNED BY public.landings.id;


--
-- Name: lublin_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.lublin_translations (
    id bigint NOT NULL,
    lublin_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    address text
);


ALTER TABLE public.lublin_translations OWNER TO shadow;

--
-- Name: lublin_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.lublin_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lublin_translations_id_seq OWNER TO shadow;

--
-- Name: lublin_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.lublin_translations_id_seq OWNED BY public.lublin_translations.id;


--
-- Name: lublins; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.lublins (
    id bigint NOT NULL,
    address text,
    phone text
);


ALTER TABLE public.lublins OWNER TO shadow;

--
-- Name: lublins_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.lublins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lublins_id_seq OWNER TO shadow;

--
-- Name: lublins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.lublins_id_seq OWNED BY public.lublins.id;


--
-- Name: ourfeature_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.ourfeature_translations (
    id bigint NOT NULL,
    ourfeature_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    feature_title text,
    feature_description text
);


ALTER TABLE public.ourfeature_translations OWNER TO shadow;

--
-- Name: ourfeature_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.ourfeature_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ourfeature_translations_id_seq OWNER TO shadow;

--
-- Name: ourfeature_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.ourfeature_translations_id_seq OWNED BY public.ourfeature_translations.id;


--
-- Name: ourfeatures; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.ourfeatures (
    id bigint NOT NULL,
    feature_title text,
    feature_description text,
    image text
);


ALTER TABLE public.ourfeatures OWNER TO shadow;

--
-- Name: ourfeatures_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.ourfeatures_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ourfeatures_id_seq OWNER TO shadow;

--
-- Name: ourfeatures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.ourfeatures_id_seq OWNED BY public.ourfeatures.id;


--
-- Name: partner_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.partner_translations (
    id bigint NOT NULL,
    partner_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name text
);


ALTER TABLE public.partner_translations OWNER TO shadow;

--
-- Name: partner_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.partner_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partner_translations_id_seq OWNER TO shadow;

--
-- Name: partner_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.partner_translations_id_seq OWNED BY public.partner_translations.id;


--
-- Name: partnerforms; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.partnerforms (
    id bigint NOT NULL,
    name text,
    phone text,
    email text,
    message text
);


ALTER TABLE public.partnerforms OWNER TO shadow;

--
-- Name: partnerforms_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.partnerforms_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partnerforms_id_seq OWNER TO shadow;

--
-- Name: partnerforms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.partnerforms_id_seq OWNED BY public.partnerforms.id;


--
-- Name: partners; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.partners (
    id bigint NOT NULL,
    url text,
    name text,
    show boolean,
    postion bigint,
    image text
);


ALTER TABLE public.partners OWNER TO shadow;

--
-- Name: partners_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.partners_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.partners_id_seq OWNER TO shadow;

--
-- Name: partners_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.partners_id_seq OWNED BY public.partners.id;


--
-- Name: partners_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.partners_translations (
    id bigint
);


ALTER TABLE public.partners_translations OWNER TO shadow;

--
-- Name: przemysl_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.przemysl_translations (
    id bigint NOT NULL,
    przemysl_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    address text
);


ALTER TABLE public.przemysl_translations OWNER TO shadow;

--
-- Name: przemysl_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.przemysl_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.przemysl_translations_id_seq OWNER TO shadow;

--
-- Name: przemysl_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.przemysl_translations_id_seq OWNED BY public.przemysl_translations.id;


--
-- Name: przemysls; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.przemysls (
    id bigint NOT NULL,
    address text,
    phone text
);


ALTER TABLE public.przemysls OWNER TO shadow;

--
-- Name: przemysls_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.przemysls_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.przemysls_id_seq OWNER TO shadow;

--
-- Name: przemysls_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.przemysls_id_seq OWNED BY public.przemysls.id;


--
-- Name: review_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.review_translations (
    id bigint NOT NULL,
    review_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    job_position text,
    review_text text,
    name text
);


ALTER TABLE public.review_translations OWNER TO shadow;

--
-- Name: review_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.review_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.review_translations_id_seq OWNER TO shadow;

--
-- Name: review_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.review_translations_id_seq OWNED BY public.review_translations.id;


--
-- Name: reviews; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.reviews (
    id bigint NOT NULL,
    job_position text,
    review_text text,
    name text,
    show boolean,
    postion bigint,
    image text,
    instagram text,
    facebook text
);


ALTER TABLE public.reviews OWNER TO shadow;

--
-- Name: reviews_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.reviews_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.reviews_id_seq OWNER TO shadow;

--
-- Name: reviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.reviews_id_seq OWNED BY public.reviews.id;


--
-- Name: rule_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.rule_translations (
    id bigint NOT NULL,
    rule_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    rule text
);


ALTER TABLE public.rule_translations OWNER TO shadow;

--
-- Name: rule_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.rule_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rule_translations_id_seq OWNER TO shadow;

--
-- Name: rule_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.rule_translations_id_seq OWNED BY public.rule_translations.id;


--
-- Name: rules; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.rules (
    id bigint NOT NULL,
    rule text
);


ALTER TABLE public.rules OWNER TO shadow;

--
-- Name: rules_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.rules_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rules_id_seq OWNER TO shadow;

--
-- Name: rules_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.rules_id_seq OWNED BY public.rules.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.schema_migrations (
    version text
);


ALTER TABLE public.schema_migrations OWNER TO shadow;

--
-- Name: seo_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.seo_translations (
    id bigint NOT NULL,
    seo_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    title text,
    keywords text,
    description text
);


ALTER TABLE public.seo_translations OWNER TO shadow;

--
-- Name: seo_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.seo_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seo_translations_id_seq OWNER TO shadow;

--
-- Name: seo_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.seo_translations_id_seq OWNED BY public.seo_translations.id;


--
-- Name: seos; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.seos (
    id bigint NOT NULL,
    title text,
    keywords text,
    description text,
    page_id bigint,
    page_type text
);


ALTER TABLE public.seos OWNER TO shadow;

--
-- Name: seos_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.seos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seos_id_seq OWNER TO shadow;

--
-- Name: seos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.seos_id_seq OWNED BY public.seos.id;


--
-- Name: socials; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.socials (
    id bigint NOT NULL,
    facebook text,
    instagram text
);


ALTER TABLE public.socials OWNER TO shadow;

--
-- Name: socials_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.socials_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socials_id_seq OWNER TO shadow;

--
-- Name: socials_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.socials_id_seq OWNED BY public.socials.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    email text DEFAULT ''::text,
    encrypted_password text DEFAULT ''::text,
    reset_password_token text,
    reset_password_sent_at timestamp with time zone,
    remember_created_at timestamp with time zone,
    sign_in_count bigint DEFAULT '0'::bigint,
    current_sign_in_at timestamp with time zone,
    last_sign_in_at timestamp with time zone,
    current_sign_in_ip text,
    last_sign_in_ip text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    name text,
    first_name text,
    last_name text,
    gender text
);


ALTER TABLE public.users OWNER TO shadow;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_id_seq OWNER TO shadow;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: warsaw_translations; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.warsaw_translations (
    id bigint NOT NULL,
    warsaw_id bigint,
    locale text,
    created_at timestamp with time zone,
    updated_at timestamp with time zone,
    address text
);


ALTER TABLE public.warsaw_translations OWNER TO shadow;

--
-- Name: warsaw_translations_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.warsaw_translations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warsaw_translations_id_seq OWNER TO shadow;

--
-- Name: warsaw_translations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.warsaw_translations_id_seq OWNED BY public.warsaw_translations.id;


--
-- Name: warsaws; Type: TABLE; Schema: public; Owner: shadow
--

CREATE TABLE public.warsaws (
    id bigint NOT NULL,
    address text,
    phone text
);


ALTER TABLE public.warsaws OWNER TO shadow;

--
-- Name: warsaws_id_seq; Type: SEQUENCE; Schema: public; Owner: shadow
--

CREATE SEQUENCE public.warsaws_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.warsaws_id_seq OWNER TO shadow;

--
-- Name: warsaws_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: shadow
--

ALTER SEQUENCE public.warsaws_id_seq OWNED BY public.warsaws.id;


--
-- Name: address_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.address_translations ALTER COLUMN id SET DEFAULT nextval('public.address_translations_id_seq'::regclass);


--
-- Name: addresses id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.addresses ALTER COLUMN id SET DEFAULT nextval('public.addresses_id_seq'::regclass);


--
-- Name: authentications id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.authentications ALTER COLUMN id SET DEFAULT nextval('public.authentications_id_seq'::regclass);


--
-- Name: chelm_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.chelm_translations ALTER COLUMN id SET DEFAULT nextval('public.chelm_translations_id_seq'::regclass);


--
-- Name: chelms id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.chelms ALTER COLUMN id SET DEFAULT nextval('public.chelms_id_seq'::regclass);


--
-- Name: clientemails id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.clientemails ALTER COLUMN id SET DEFAULT nextval('public.clientemails_id_seq'::regclass);


--
-- Name: consultations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.consultations ALTER COLUMN id SET DEFAULT nextval('public.consultations_id_seq'::regclass);


--
-- Name: contact_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.contact_translations ALTER COLUMN id SET DEFAULT nextval('public.contact_translations_id_seq'::regclass);


--
-- Name: contacts id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.contacts ALTER COLUMN id SET DEFAULT nextval('public.contacts_id_seq'::regclass);


--
-- Name: howitwork_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.howitwork_translations ALTER COLUMN id SET DEFAULT nextval('public.howitwork_translations_id_seq'::regclass);


--
-- Name: howitworks id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.howitworks ALTER COLUMN id SET DEFAULT nextval('public.howitworks_id_seq'::regclass);


--
-- Name: info_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.info_translations ALTER COLUMN id SET DEFAULT nextval('public.info_translations_id_seq'::regclass);


--
-- Name: infos id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.infos ALTER COLUMN id SET DEFAULT nextval('public.infos_id_seq'::regclass);


--
-- Name: krakow_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.krakow_translations ALTER COLUMN id SET DEFAULT nextval('public.krakow_translations_id_seq'::regclass);


--
-- Name: krakows id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.krakows ALTER COLUMN id SET DEFAULT nextval('public.krakows_id_seq'::regclass);


--
-- Name: landing_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.landing_translations ALTER COLUMN id SET DEFAULT nextval('public.landing_translations_id_seq'::regclass);


--
-- Name: landings id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.landings ALTER COLUMN id SET DEFAULT nextval('public.landings_id_seq'::regclass);


--
-- Name: lublin_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.lublin_translations ALTER COLUMN id SET DEFAULT nextval('public.lublin_translations_id_seq'::regclass);


--
-- Name: lublins id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.lublins ALTER COLUMN id SET DEFAULT nextval('public.lublins_id_seq'::regclass);


--
-- Name: ourfeature_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.ourfeature_translations ALTER COLUMN id SET DEFAULT nextval('public.ourfeature_translations_id_seq'::regclass);


--
-- Name: ourfeatures id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.ourfeatures ALTER COLUMN id SET DEFAULT nextval('public.ourfeatures_id_seq'::regclass);


--
-- Name: partner_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partner_translations ALTER COLUMN id SET DEFAULT nextval('public.partner_translations_id_seq'::regclass);


--
-- Name: partnerforms id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partnerforms ALTER COLUMN id SET DEFAULT nextval('public.partnerforms_id_seq'::regclass);


--
-- Name: partners id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partners ALTER COLUMN id SET DEFAULT nextval('public.partners_id_seq'::regclass);


--
-- Name: przemysl_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.przemysl_translations ALTER COLUMN id SET DEFAULT nextval('public.przemysl_translations_id_seq'::regclass);


--
-- Name: przemysls id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.przemysls ALTER COLUMN id SET DEFAULT nextval('public.przemysls_id_seq'::regclass);


--
-- Name: review_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.review_translations ALTER COLUMN id SET DEFAULT nextval('public.review_translations_id_seq'::regclass);


--
-- Name: reviews id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.reviews ALTER COLUMN id SET DEFAULT nextval('public.reviews_id_seq'::regclass);


--
-- Name: rule_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.rule_translations ALTER COLUMN id SET DEFAULT nextval('public.rule_translations_id_seq'::regclass);


--
-- Name: rules id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.rules ALTER COLUMN id SET DEFAULT nextval('public.rules_id_seq'::regclass);


--
-- Name: seo_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.seo_translations ALTER COLUMN id SET DEFAULT nextval('public.seo_translations_id_seq'::regclass);

--
-- Name: seos id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.seos ALTER COLUMN id SET DEFAULT nextval('public.seos_id_seq'::regclass);

--
-- Name: socials id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.socials ALTER COLUMN id SET DEFAULT nextval('public.socials_id_seq'::regclass);

--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);

--
-- Name: warsaw_translations id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.warsaw_translations ALTER COLUMN id SET DEFAULT nextval('public.warsaw_translations_id_seq'::regclass);

--
-- Name: warsaws id; Type: DEFAULT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.warsaws ALTER COLUMN id SET DEFAULT nextval('public.warsaws_id_seq'::regclass);

--
-- Data for Name: address_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.address_translations (id, address_id, locale, created_at, updated_at, address) FROM stdin;
1	1	uk	2018-01-26 14:22:28.205424-05	2018-06-06 16:03:01.85937-04	УкрПошта: a/c 6338 м. Львів 79059, отримувач: Матвєєв Андрій
2	1	en	2018-01-26 14:22:28.20648-05	2018-01-26 14:22:28.20648-05	м. Львів, вул. Івана Франка 71, офіс 14
3	1	ru	2018-01-26 14:22:28.207247-05	2018-05-27 22:10:50.060334-04	
4	2	uk	2018-01-26 14:23:08.890913-05	2018-06-06 16:10:18.640975-04	Poczta Polska: ul. Lindleya, 16 Warszawa 02-013 Tax Free Club sp. z o.o.
5	2	en	2018-01-26 14:23:08.89217-05	2018-01-26 14:23:08.89217-05	івівів
6	2	ru	2018-01-26 14:23:08.893129-05	2018-05-27 22:07:38.710685-04	а/я 81657 г. Львов 79000, или Нова Почта, отделение №100  al. Juliusza Słowackiego 1/6 Kraków 31-159 (adres korespondencyjny)
\.


--
-- Data for Name: addresses; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.addresses (id, address, url, show) FROM stdin;
1	\N	https://www.google.com.ua/maps/place/%D0%97%D0%B0%D0%B3%D1%80%D0%B5%D0%B1,+%D0%A5%D0%BE%D1%80%D0%B2%D0%B0%D1%82%D0%B8%D1%8F/@45.8402941,15.8942921,12z/data=!3m1!4b1!4m8!1m2!2m1!1z0YHQsNGA0LDQuQ!3m4!1s0x4765d692c902cc39:0x3a45249628fbc28a!8m2!3d45.8134865!4d15.9796143	t
2	\N	https://www.google.com.ua/maps/place/%D0%93%D1%83%D0%B4%D0%B0%D1%83%D1%80%D0%B8/@42.4758793,44.4751789,16z/data=!4m15!1m9!2m8!1z0JPQvtGB0YLQuNC90LjRhtGL!3m6!1z0JPQvtGB0YLQuNC90LjRhtGL!2s42.475539399999995,+44.480472299999995!3s0x404528fdf2ee8197:0xf2c31d07053611a4!4m2!1d44.4804723!2d42.4755394!3m4!1s0x404528fd95555555:0xeef860abdd8230d0!8m2!3d42.4755393!4d44.4804722	t
\.


--
-- Data for Name: authentications; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.authentications (id, user_id, provider, uid, created_at, updated_at) FROM stdin;
2	33	facebook	2138210926418469	2018-07-09 20:09:18.241539-04	2018-07-09 20:09:18.241539-04
\.


--
-- Data for Name: chelm_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.chelm_translations (id, chelm_id, locale, created_at, updated_at, address) FROM stdin;
1	1	uk	2018-03-19 13:36:07.052895-04	2018-04-30 21:03:12.83403-04	ul. Mikołaja Kopernika, 21
2	1	en	2018-03-19 13:36:07.055458-04	2018-03-19 13:36:07.055458-04	qweqweqwe
3	1	ru	2018-03-19 13:36:07.056594-04	2018-03-19 13:36:07.056594-04	qweqweqwe
4	1	pl	2018-03-19 13:36:07.057825-04	2018-03-19 13:36:07.057825-04	qweqweqwe
\.


--
-- Data for Name: chelms; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.chelms (id, address, phone) FROM stdin;
1	\N	
\.


--
-- Data for Name: ckeditor_assets; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.ckeditor_assets (id, data_file_name, data_content_type, data_file_size, type, width, height, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: clientemails; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.clientemails (id, email) FROM stdin;
1	cm@voroninstudio.eu, viktor.o@voroninstudio.eu
\.


--
-- Data for Name: consultations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.consultations (id, name, phone, email, message) FROM stdin;
86	Ggh	Bbb	Hjjn	Bjjn
87	Ggh	Bbb	Hjjn	Bjjn
88	Ладалал	Рлвдао	Аллала	Галала
89	Test	Test	ahnezdyuk@gmail.com	
90	Test	Test	ahnezdyuk@gmail.com	
91	Test	Test	ahnezdyuk@gmail.com	
92	Test	Test	ahnezdyuk@gmail.com	
93	Test	Test	ahnezdyuk	
94	Ysadasd 	213	213@gmail.com	2131231
95	Ysadasd 	213	213@gmail.com	2131231
96	Ysadasd 	213	213@gmail.com	2131231
97	Ysadasd 	213	213@gmail.com	2131231
98	Ysadasd 	213	213@gmail.com	2131231
99	rrr	044444	ahnezdyuk@gmail.com	rrr
100	Кап	4	skdfj@djfk.com	
101	ddd	dd	dddd	
102	ddd	dd	dddd	
103	ddd	dd	dddd	
104	dd	22	ddd@test.com	
105	oinjjk	oijikm,;l	iuy8hiuj	
106	oinjjk	oijikm,;l	iuy8hiuj	
107	oinjjk	oijikm,;l	iuy8hiuj	
108	oinjjk	oijikm,;l	iuy8hiuj	
109	Микола	045043053045	fdsfd@fdsfs	fdfsdfa fad sf 
\.


--
-- Data for Name: contact_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.contact_translations (id, contact_id, locale, created_at, updated_at, description) FROM stdin;
1	2	uk	2018-05-22 12:49:04.622871-04	2018-05-22 12:49:13.472633-04	- дзвінки з польських мобільних і стаціонарних 
2	1	uk	2018-05-22 12:49:31.50585-04	2018-05-22 12:49:35.464507-04	 - безкоштовні дзвінки в Україні
\.


--
-- Data for Name: contacts; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.contacts (id, phone, show, description) FROM stdin;
1	+38 800 75 05 72	t	\N
2	+48 188 880 213	t	\N
\.


--
-- Data for Name: howitwork_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.howitwork_translations (id, howitwork_id, locale, created_at, updated_at, step, step_title, ster_description) FROM stdin;
1	3	uk	2018-01-24 09:25:55.352136-05	2018-01-24 09:25:55.352136-05	1 Крок	Здіснення \r\n                  <span class="orange-text-gradient"> покупок</span>	Ви самостійно здійснюєте покупки в торгових мережах або ж в інтернеті, після чого передаєте нашим співробітникам інформацію про перелік товарів, для яких необхідно підготувати консолідоване Такс-Фрі
2	3	en	2018-01-24 09:25:55.353521-05	2018-01-24 09:25:55.353521-05	1 Step	Здіснення \r\n                  <span class="orange-text-gradient"> покупок</span>	Ви самостійно здійснюєте покупки в торгових мережах або ж в інтернеті, після чого передаєте нашим співробітникам інформацію про перелік товарів, для яких необхідно підготувати консолідоване Такс-Фрі
3	3	ru	2018-01-24 09:25:55.354852-05	2018-01-24 09:25:55.354852-05	1 ШАг	Здіснення \r\n                  <span class="orange-text-gradient"> покупок</span>	Ви самостійно здійснюєте покупки в торгових мережах або ж в інтернеті, після чого передаєте нашим співробітникам інформацію про перелік товарів, для яких необхідно підготувати консолідоване Такс-Фрі
4	4	uk	2018-01-24 09:29:34.84514-05	2018-05-25 12:52:53.23324-04	1 Крок	Здійснення \r\n  <span class="orange-text-gradient"> покупок<span>	Перший шопінг відбувається за участі нашого консультанта. Клієнт отримує  спеціальну платіжну  картку для здійснення покупок в торгових центрах та інтернеті. 
5	4	en	2018-01-24 09:29:34.848258-05	2018-05-30 15:07:42.81552-04	1 step	Making \r\n  <span class="orange-text-gradient"> purchases<span>	Our consultant helps you with the first shopping. Client receives a special payment card for purchases in shopping malls and in the Internet
6	4	ru	2018-01-24 09:29:34.849247-05	2018-05-27 21:34:00.350257-04	1 ШАг	Совершение \r\n  <span class="orange-text-gradient"> покупок<span>	Первый шопинг проходит с участием нашего консультанта. Клиент получает специальную платежную карту для совершения покупок в торговых центрах и интернете.
7	5	uk	2018-01-24 09:30:55.733473-05	2018-05-27 21:45:40.127699-04	2 Крок	Приготування \r\n<span class="orange-text-gradient"> документів</span>	Після шопінгу протягом 10-15 хв особистий консультант виготовить документ Taxfree з переліком твоїх покупок. У містах, де наші представнитства відсутні, ти отримаєш документ швидкою кур‘єрською доставкою. \r\n
8	5	en	2018-01-24 09:30:55.734889-05	2018-05-30 17:14:45.861886-04	2 Step	Preparation of\r\n<span class="orange-text-gradient"> dokuments</span>	It will take 10-15 minutes our personal consultant to prepare a document with a list of your purchases. You will get a document with the help of express courier delivery if you currently located in the city in which we  don't have agencies.
9	5	ru	2018-01-24 09:30:55.735825-05	2018-05-27 21:45:05.943623-04	2 Шаг	Подготовка \r\n<span class="orange-text-gradient"> документов</span>	В течение 10-15 минут после шопинга, личный консультант составит документ Taxfree с перечнем твоих покупок. В городах, где наши представительства отсутствуют, Ты получишь документ быстрой курьерской доставкой
10	6	uk	2018-01-24 09:32:09.683859-05	2018-04-29 15:49:47.759201-04	3 Крок	Повернення \r\n <span class="orange-text-gradient"> податку </span>\r\n	Умовою повернення податку VAT є митне підтвердження вивозу товару за межі ЄС. Поставивши на кордоні печатку, залишається повернути нам документ ТaxFree i обрати зручний спосіб отримання податку. 
11	6	en	2018-01-24 09:32:09.685989-05	2018-05-30 17:11:57.635937-04	3 step	Refund\r\n <span class="orange-text-gradient"> </span>\r\n	To get your tax refunding it is necessary to seal your document on the border. After that you only need to return us the document choosing method which is the most convenient for you 
12	6	ru	2018-01-24 09:32:09.687581-05	2018-05-27 21:37:17.276309-04	3 шаг	Возвращение \r\n <span class="orange-text-gradient"> налога</span>\r\n	Условием возврата налога VAT является таможенное подтверждение вывоза товара за пределы ЕС. Поставив на границе печать, остается передать нам документ ТaxFree и выбрать удобный способ возврата налога.
13	6	pl	2018-06-06 22:20:34.039536-04	2018-06-06 22:20:34.039536-04	3 krok	Zwrot <span class="orange-text-gradient"> podatku </span>	Warunkiem zwrotu podatku VAT jest potwierdzenie wywozu towarów poza UE. Po opieczętowaniu dokumentu na granicy, trzeba tylko zwrócić dokument TaxFree i wybrać odpowiadający sposób zwrotu podatku.
14	5	pl	2018-06-06 22:29:15.650329-04	2018-06-06 22:29:15.650329-04	2 krok	Przygotowanie<span class="orange-text-gradient">  dokumentów </span>	10-15 minut po zakupie osobisty konsultant  sporządzi listę z zakupami. Klient znajdujący się w mieście, gdzie nie ma naszych przedstawicielstw otrzymuje dokument szybką dostawą kurierską. 
15	4	pl	2018-06-06 22:32:24.705674-04	2018-06-06 22:35:47.111463-04	1 krok	Dokonywanie <span class="orange-text-gradient"> zakupów<span>	\r\nPierwszy szoping odbywa się  przy udziale naszego konsultanta. Klient otrzymuje specjalną kartę płatniczą dla dokonywania zakupów w centrach handlowych i Internecie.
\.


--
-- Data for Name: howitworks; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.howitworks (id, step, step_title, ster_description) FROM stdin;
4	\N	\N	\N
5	\N	\N	\N
6	\N	\N	\N
\.


--
-- Data for Name: info_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.info_translations (id, info_id, locale, created_at, updated_at, giveback_percent, service, brands, cities) FROM stdin;
1	1	uk	2018-01-22 13:12:25.808183-05	2018-03-09 14:48:49.393982-05	15%	24/7	5	5
2	1	en	2018-01-22 13:12:25.812057-05	2018-05-24 18:15:02.009028-04	15%*	24/7	5	5
3	1	ru	2018-01-22 13:12:25.814627-05	2018-01-24 08:54:59.081024-05	100%	24/7	5	4
\.


--
-- Data for Name: infos; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.infos (id, giveback_percent, service, brands, cities) FROM stdin;
1	<div class="figure"> 24%</div>\r\n<div class="title"> повернення</div>	<div class="figure"> 24/7</div>\r\n<div class="title"> обслуговування</div>	<div class="figure"> 100</div>\r\n<div class="title"> брендів</div>	<div class="figure"> 88</div>\r\n<div class="title"> міст</div>
\.


--
-- Data for Name: krakow_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.krakow_translations (id, krakow_id, locale, created_at, updated_at, address) FROM stdin;
1	1	uk	2018-03-19 13:35:39.030369-04	2018-04-30 21:05:54.768254-04	Galeria Krakowska, Bonarka, CH Bronowice, etc.
2	1	en	2018-03-19 13:35:39.033796-04	2018-04-16 08:44:10.299699-04	plac Mariacki 3, 30-001 Kraków, Poland
3	1	ru	2018-03-19 13:35:39.035758-04	2018-04-16 08:44:10.300788-04	plac Mariacki 3, 30-001 Kraków, Poland
4	1	pl	2018-03-19 13:35:39.03804-04	2018-04-16 08:44:10.301912-04	plac Mariacki 3, 30-001 Kraków, Poland
\.


--
-- Data for Name: krakows; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.krakows (id, address, phone) FROM stdin;
1	\N	
\.


--
-- Data for Name: landing_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.landing_translations (id, landing_id, locale, created_at, updated_at, main_banner_title, main_banner_decsription, second_section_title, second_section_description, third_section_description, reviews_title, partners_title, partners_description, find_us, second_section_description_right) FROM stdin;
1	1	uk	2018-01-22 14:18:48.955223-05	2018-05-30 08:00:49.909177-04	<div class="head-title blue-text-gradient"> Ти вибираєш </div><div class="head-title orange-text-gradient"> ми платимо</div>\r\n<div class="sub-title"> Перебуваєш в Польщі з коротким візитом, або ж вчишся тут чи працюєш? </div>	\r\n	Сервіс\r\n  <span class="blue-text-gradient"> вигідного </span>\r\n<span class="blue-text-gradient"> шопінгу </span>\r\n<span class="orange-text-gradient"> для </span>\r\n<span class="orange-text-gradient"> іноземців </span>\r\n<span class="blue-text-gradient"> в </span> <span class="blue-text-gradient"> Польщі </span>	Доводиться купувати речі в торгових мережах чи інтернеті перед поїздкою в Україну? Маємо для Тебе вигідну пропозицію: заощаджуй завдяки знижкам, а також можливості повернення податку VAT. 	 Як це \r\n  <span class="orange-text-gradient"> працює</span>	Bідгуки	<div class="title"> пропонуємо\r\n\t<span class = "orange-text-gradient"> співпрацю </span>\r\n\t<span class = "blue-text-gradient"> для </span>\r\n        <span class = "orange-text-gradient"> шопінг </span>\r\n\t<span class = "blue-text-gradient">-агентів </span>\r\n</div>	Якщо Ти амбітна, працьовита, дисциплінована людина, володієш іноземними мовами і хочеш познайомитись з нашою командою - запрошуємо на інтерв'ю і стажування! 	Як\r\n<span class="orange-text-gradient"> нас </span>\r\n<span class="blue-text-gradient"> знайти</span>	Порозуміємося з продавцем, домовимося про спеціальні умови для Тебе. Посприяємо у вирішенні гарантійних питань, заміни чи повернення товару, навіть коли Ти перебуватимеш вже за межами ЄС. 
2	1	en	2018-01-22 14:18:48.960987-05	2018-05-30 17:21:39.733722-04	<div class="head-title blue-text-gradient">You choose </div>\r\n<div class="head-title orange-text-gradient">we PAY</div>\r\n<div class="sub-title"> Do You visit Poland for a couple a days or live her temporary? </div>		Beneficial \r\n  <span class="blue-text-gradient"> shopping </span>\r\n  <span class="blue-text-gradient"> service </span>\r\n<span class="orange-text-gradient"> for foreigners </span>	Do You have to go shopping before the departure? We have a GREAT DEAL for You! Save Your time with a personal assistant, spare Your money with discounts and finally - refund a VAT! It's convenient to make shopping with us.	How \r\n<span class="blue-text-gradient"> does </span> \r\n  <span class="orange-text-gradient"> it work </span>	Feedback	<div class="title"> Shopping\r\n\t<span class = "orange-text-gradient"> agents </span>\r\n\t<span class = "blue-text-gradient"> wanted! </span>\r\n\r\n</div>	If you are ambitious, hardworking, disciplined person. If you can communicate in foreign languages and want to get acquainted with our team, we invite you for the interview and offer you an internship in Taxfreeclub!	How\r\n<span class="orange-text-gradient"> to find </span>\r\n<span class="blue-text-gradient"> us </span>	Before let You buy something we'll negotiate with a vendors in their native language. Further warranty issues, exchange or return climes will be solved on behalf of You remotely, even after Your departure. \r\n
3	1	ru	2018-01-22 14:18:48.964462-05	2018-05-27 22:02:55.344745-04	<div class="head-title blue-text-gradient"> ты выбираешь </div>\r\n<div class="head-title orange-text-gradient"> мы платим</div>\r\n<div class="sub-title"> </div>	Находишься в Польше с коротким визитом, либо же учишься здесь или работаешь?	Сервис выгодного\r\n  <span class="blue-text-gradient"> шопинга <span orange="blue-text-gradient"> для иностранцев </span>\r\n<span class="orange-text-gradient"> в Польше </span>  	Приходится покупать вещи в торговых сетях или интернете перед поездкой в ​​Украину? У нас для Тебя выгодное предложение: экономь благодаря скидкам, а также возможности возврата налога VAT	Как это \r\n  <span class="orange-text-gradient"> работает </span>	Отзывы	<div class="title">Предлагаем  <span class = "orange-text-gradient"> сотрудничество  <span class="blue-text-gradient">для </span> <span class = "orange-text-gradient">  шопинг  </span> <span class = "blue-text-gradient">-агентов \r\n</span> </div>	Если Ты амбициозная, трудолюбивая, дисциплинированная личность, владеющая иностранными языками и хочешь познакомиться с нашей командой - приглашаем на интервью и стажировку!	Как нас \r\n<span class="blue-text-gradient"> найти</span>	Наладим контакт с продавцом, договоримся о специальных условиях для Тебя. Решим вопросы с гарантией, заменой или возвратом товара, даже если ты будешь находиться за пределами ЕС.
7	1	pl	2018-03-19 13:46:19.667024-04	2018-06-06 22:49:02.450291-04	<div class="head-title blue-text-gradient">  Ty wybierasz, </div><div class="head-title orange-text-gradient">  my płacimy </div> <div class="sub-title">  Jesteś w Polsce z krótką wizytą, studiujesz tutaj lub pracujesz?</div> 		Serwis  <span class="blue-text-gradient"> efektywnego</span> <span class="blue-text-gradient"> szopingu </span> <span class="orange-text-gradient"> dla </span> <span class="orange-text-gradient">obcokrajowców</span> <span class="blue-text-gradient"></span> <span class="blue-text-gradient">  w Polsce </span> 	Musisz robić zakupy  w centrach handlowych lub w Internecie przed podróżą na Ukrainę? Mamy dla Ciebie ciekawą ofertę: oszczędzaj dzięki rabatom i  możliwości zwrotu podatku VAT.		Opinie	<div class="title"> Oferujemy <span class = "orange-text-gradient">współpracę </span>\r\n\r\n\t<span class = "blue-text-gradient">dla </span>\r\n        <span class = "orange-text-gradient"> agentów</span>\r\n\t<span class = "blue-text-gradient">  handlowych </span>\r\n</div>	Jeśli jesteś osobą ambitną, pracowitą, zdyscyplinowaną, mówisz w językach obcych i chcesz zapoznać się z naszym zespołem - zapraszam na rozmowę kwalifikacyjną i staż!	Jak <span class="orange-text-gradient">nas </span>\r\n<span class="blue-text-gradient">znaleźć</span>	Kontaktujemy się ze sprzedawcami, negocjujemy specjalne warunki. Pomożemy w rozwianiu potencjalne problem z gwarancją, wymianą lub zwrotem towarów, nawet jeśli będziesz już poza granicą Unii Europejskiej. \r\n\r\n
\.


--
-- Data for Name: landings; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.landings (id, main_banner_title, main_banner_decsription, second_section_title, second_section_description, third_section_description, reviews_title, partners_title, partners_description, fb_link, insta_link, find_us, second_section_description_right) FROM stdin;
1	          <div class="head-title">\r\n            <div class= "blue-text-gradient">шопінг\r\n            </div>\r\n            <div class= "orange-text-gradient">в польші\r\n            </div>\r\n          </div>\r\n          <div class ="sub-title"> без податку VAT!</div>	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quaerat perspiciatis, voluptatibus sequi deserunt maiores, nam distinctio aliquid possimus nesciunt voluptates atque consequuntur labore incidunt et fuga facere eius magni minima!	Ми сервіс \r\n<span class="blue-text-gradient"> відшкодування </span> \r\n<span class="blue-text-gradient">податків Tax Free</span>\r\n	Ми об’єднаємо на одному документі Tax-Free всі ваші покупки, зроблені у різних магазинах, що дозволить відшкодувати більше податку, після перетину кордону ЄС. Консолідоване Tax-Free застосовується як для купівлі товарів в звичайних роздрібних мережах, так і в інтернет-магазинах. Документи можемо вислати поштою по всій території Польщі, натомість податок вам повернемо відразу по прибутті в Україну.	Як це \r\n<span class="orange-text-gradient">працює</span>	Відгуки	Наші \r\n<span class="orange-text-gradient" >партнери</span>	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus, iste! Tenetur praesentium iste, reiciendis dignissimos adipisci libero. Ullam odit rem tempore, labore deserunt, inventore error praesentium recusandae aspernatur quaerat nesciunt!	https://www.facebook.com/	https://www.instagram.com/	\N	\N
\.


--
-- Data for Name: lublin_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.lublin_translations (id, lublin_id, locale, created_at, updated_at, address) FROM stdin;
1	1	uk	2018-03-19 13:35:24.528629-04	2018-04-30 20:54:27.813819-04	SKENDE Shopping, Tarasy Zamkowe, Olimp, Lublin Plaza, Atrium Felicity
2	1	en	2018-03-19 13:35:24.530434-04	2018-04-16 08:45:27.92255-04	Tomasza Zana 19, 20-601 Lublin, Poland
3	1	ru	2018-03-19 13:35:24.531553-04	2018-04-16 08:45:27.92375-04	Томаша Зана 19, 20-601 Люблин, Польша
4	1	pl	2018-03-19 13:35:24.532704-04	2018-04-16 08:45:27.924859-04	Tomasza Zana 19, 20-601 Lublin, Poland
\.


--
-- Data for Name: lublins; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.lublins (id, address, phone) FROM stdin;
1	\N	
\.


--
-- Data for Name: ourfeature_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.ourfeature_translations (id, ourfeature_id, locale, created_at, updated_at, feature_title, feature_description) FROM stdin;
1	4	uk	2018-01-24 09:34:35.76945-05	2018-05-25 12:48:41.989859-04	Це \r\n  <span class="orange-text-gradient"> зручно </span>	Наші представництва знаходяться в 5 містах Польщі, а завдяки кур'єрській доставці обслуговуємо також клієнтів з інших регіонів країни.
2	4	en	2018-01-24 09:34:35.77147-05	2018-05-30 09:18:36.348591-04	It is\r\n  <span class="orange-text-gradient"> convenient</span>	Our agencies are located in 5 cities in Poland. With the help of curier delivery we also provide services for clients from all regions of the country 
3	4	ru	2018-01-24 09:34:35.77231-05	2018-05-27 21:31:39.839988-04	Это\r\n  <span class="orange-text-gradient"> удобно</span>	Наши представительства находятся в 5 городах Польши, а благодаря курьерской доставке обслуживаем также клиентов из других регионов страны.
4	5	uk	2018-01-24 09:35:20.795154-05	2018-05-25 22:11:39.604772-04	це\r\n  <span class="orange-text-gradient"> ощадно </span>	Клієнтам TFC надаються знижки у багатьох магазинах, а податок VAT повертається навiть при покупках до 200 злотих *
5	5	en	2018-01-24 09:35:20.796686-05	2018-05-30 09:08:04.804612-04	It is \r\n  <span class="orange-text-gradient"> beneficial</span>	TFC clients are offered discounts in many stores. The VAT is refunded even if you have purchases under 200 zloty
6	5	ru	2018-01-24 09:35:20.797657-05	2018-05-27 21:30:41.078654-04	Это\r\n  <span class="orange-text-gradient"> практично</span>	Клиентам TFC предоставляются скидки во многих магазинах, а налог VAT возвращается даже при покупках до 200 злотых
7	6	uk	2018-01-24 09:36:05.513923-05	2018-05-25 22:20:18.546499-04	Це\r\n  <span class="orange-text-gradient"> надійно </span>	Нам довіряє вже понад 3400 клієнтів і більшість з них користуються нашими послугами постійно. Ти платиш за товар в момент його отримання. 
8	6	en	2018-01-24 09:36:05.515852-05	2018-05-30 09:23:42.090445-04	It is\r\n  <span class="orange-text-gradient"> reliable</span>	We already have more than 3,400 clients and most of them regulary use our services. You pay for product after receiving it
9	6	ru	2018-01-24 09:36:05.517048-05	2018-05-27 21:29:54.600818-04	Это\r\n  <span class="orange-text-gradient"> надежно </span>	Нам доверяет уже более 3400 клиентов и большинство из них пользуются нашими услугами постоянно. Ты платишь за товар в момент его получения.
10	6	pl	2018-03-19 13:49:12.59538-04	2018-03-20 22:43:53.798349-04	<span class="orange-text-gradient"> Zaufanie	Z naszych usług korzystało już trzy tysiące zadowolonych klientów. Większość z nich stale korzysta z naszych usług. Za zamówione towary płacisz w momencie ich odbioru. 
11	5	pl	2018-03-20 22:45:04.111811-04	2018-03-20 22:45:04.111811-04	<span class="orange-text-gradient">  Oszczędność	Zapewniamy wyjątkowe zniżki w większości sklepów i gwarantujemy zwrot podatku VAT nawet przy zakupach do 200 zł. 
12	4	pl	2018-03-20 22:50:09.275539-04	2018-03-20 22:52:00.887049-04	<span class="orange-text-gradient">  wygoda	Nasze biura znajdują się w 5 miastach Polski, a dzięki współpracy z firmą kurierską obsługujemy również klientów z innych regionów kraju. 
\.


--
-- Data for Name: ourfeatures; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.ourfeatures (id, feature_title, feature_description, image) FROM stdin;
4	\N	\N	\N
5	\N	\N	\N
6	\N	\N	face-head-logos-design-025.jpg
\.


--
-- Data for Name: partner_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.partner_translations (id, partner_id, locale, created_at, updated_at, name) FROM stdin;
2	12	uk	2018-01-24 09:10:10.944739-05	2018-01-24 09:10:10.944739-05	івдідід
3	12	en	2018-01-24 09:10:10.946147-05	2018-01-24 09:10:10.946147-05	
4	12	ru	2018-01-24 09:10:10.947051-05	2018-01-24 09:10:10.947051-05	
5	13	uk	2018-01-24 09:10:24.544261-05	2018-01-24 09:10:24.544261-05	іфвфів
6	13	en	2018-01-24 09:10:24.545218-05	2018-01-24 09:10:24.545218-05	фівіфв
7	13	ru	2018-01-24 09:10:24.545968-05	2018-01-24 09:10:24.545968-05	іввів
8	14	uk	2018-01-24 09:10:38.798604-05	2018-01-24 09:10:38.798604-05	апавп
9	14	en	2018-01-24 09:10:38.799656-05	2018-01-24 09:10:38.799656-05	
10	14	ru	2018-01-24 09:10:38.800539-05	2018-01-24 09:10:38.800539-05	
11	15	uk	2018-01-24 09:10:51.5591-05	2018-01-24 09:10:51.5591-05	івфіфв
12	15	en	2018-01-24 09:10:51.5602-05	2018-01-24 09:10:51.5602-05	
13	15	ru	2018-01-24 09:10:51.561553-05	2018-01-24 09:10:51.561553-05	
14	16	uk	2018-01-24 09:11:01.888016-05	2018-01-24 09:11:01.888016-05	іфвфів
15	16	en	2018-01-24 09:11:01.889138-05	2018-01-24 09:11:01.889138-05	
16	16	ru	2018-01-24 09:11:01.890166-05	2018-01-24 09:11:01.890166-05	
17	17	uk	2018-01-24 09:11:15.314236-05	2018-01-24 09:11:15.314236-05	фвіів
18	17	en	2018-01-24 09:11:15.315102-05	2018-01-24 09:11:15.315102-05	
19	17	ru	2018-01-24 09:11:15.315782-05	2018-01-24 09:11:15.315782-05	
20	18	uk	2018-01-24 09:11:54.355913-05	2018-01-24 09:11:54.355913-05	фів
21	18	en	2018-01-24 09:11:54.356845-05	2018-01-24 09:11:54.356845-05	
22	18	ru	2018-01-24 09:11:54.357649-05	2018-01-24 09:11:54.357649-05	
23	19	uk	2018-01-24 09:12:06.089008-05	2018-01-24 09:12:06.089008-05	івф
24	19	en	2018-01-24 09:12:06.09015-05	2018-01-24 09:12:06.09015-05	
25	19	ru	2018-01-24 09:12:06.090982-05	2018-01-24 09:12:06.090982-05	
38	24	uk	2018-01-24 09:14:18.844759-05	2018-01-24 09:14:18.844759-05	
39	24	en	2018-01-24 09:14:18.845638-05	2018-01-24 09:14:18.845638-05	
40	24	ru	2018-01-24 09:14:18.846311-05	2018-01-24 09:14:18.846311-05	
41	25	uk	2018-01-24 09:14:27.937548-05	2018-01-24 09:14:27.937548-05	
42	25	en	2018-01-24 09:14:27.938736-05	2018-01-24 09:14:27.938736-05	
43	25	ru	2018-01-24 09:14:27.939573-05	2018-01-24 09:14:27.939573-05	
44	26	uk	2018-01-24 09:14:34.603487-05	2018-01-24 09:14:34.603487-05	
45	26	en	2018-01-24 09:14:34.604503-05	2018-01-24 09:14:34.604503-05	
46	26	ru	2018-01-24 09:14:34.605347-05	2018-01-24 09:14:34.605347-05	
\.


--
-- Data for Name: partnerforms; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.partnerforms (id, name, phone, email, message) FROM stdin;
21	asdas	asdasd	asdasd	asdasd
22	hhh	hhhh	hhhh	hhhh
23	Воалм	Воа	Аласл	Пла
24	Воалм	Воа	Аласл	Пла
25	Воалм	Воа	Аласл	Пла
26	dd	dd	ddd	dd
27	ddd	ddd	ddd	dd
28	вфівфі	232132131	fdsfsdf@fdsfsd	fsdfsdfds
\.


--
-- Data for Name: partners; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.partners (id, url, name, show, postion, image) FROM stdin;
12	https://www.google.com.ua/webhp?hl=ru&sa=X&ved=0ahUKEwiNxITWnfDYAhUHiKYKHXbRBYwQPAgD	\N	t	1	images.jpeg
13	івфівф	\N	t	2	face-head-logos-design-025.jpg
14	іфвфівфів	\N	t	2	images.png
15	іфвфівфів	\N	t	4	images__1_.jpeg
16	іфвіфв	\N	t	22	images__1_.jpeg
17	фівфів	\N	t	2	images__2_.jpeg
18	івфв	\N	t	2	women_woman_model_female_girl_girls_models_mood_d_2560x1600.jpg
19	ваіаі	\N	t	3	Snowboard-Wallpaper-Mario-Kaeppeli-Tyrol-1920x1080-featured.jpg
24		\N	t	\N	face-head-logos-design-025.jpg
25		\N	t	\N	images__2_.jpeg
26		\N	t	\N	images__2_.jpeg
\.


--
-- Data for Name: partners_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.partners_translations (id) FROM stdin;
\.


--
-- Data for Name: przemysl_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.przemysl_translations (id, przemysl_id, locale, created_at, updated_at, address) FROM stdin;
1	1	uk	2018-03-19 13:35:48.320321-04	2018-04-30 21:04:32.679328-04	Galeria Sanowa, Medyka
2	1	en	2018-03-19 13:35:48.322209-04	2018-03-19 13:35:48.322209-04	qweqweqwe
3	1	ru	2018-03-19 13:35:48.323572-04	2018-03-19 13:35:48.323572-04	qweqwe
4	1	pl	2018-03-19 13:35:48.325042-04	2018-03-19 13:35:48.325042-04	rewtret
\.


--
-- Data for Name: przemysls; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.przemysls (id, address, phone) FROM stdin;
1	\N	
\.


--
-- Data for Name: review_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.review_translations (id, review_id, locale, created_at, updated_at, job_position, review_text, name) FROM stdin;
4	5	uk	2018-01-24 08:59:56.037399-05	2018-05-25 14:33:22.596463-04	студентка, маркетолог, Краків	Познайомилася з засновниками проекту в кафе. Наважилась, спробувала і не пошкодувала! Тепер користуюсь постiйно	Аліна Бахарєва
5	5	en	2018-01-24 08:59:56.038419-05	2018-01-24 08:59:56.038419-05	Posada	sdasdasd	IGAR
6	5	ru	2018-01-24 08:59:56.039362-05	2018-01-24 08:59:56.039362-05	ДОлжность	фівфів	вававаав
7	6	uk	2018-01-24 09:00:44.812348-05	2018-05-25 14:28:57.226649-04	Водій	Тимчасово працюю водієм в Польщі. Тут хлопці розповіли про таксфрі. Класна штука і консультанти круті;)	Андрiй
8	6	en	2018-01-24 09:00:44.813564-05	2018-01-24 09:00:44.813564-05	nihto	sadasd	sor
9	6	ru	2018-01-24 09:00:44.814651-05	2018-01-24 09:00:44.814651-05	вааів	іваіва	ЛЬолік
10	7	uk	2018-01-24 09:01:38.260272-05	2018-05-25 14:09:43.77392-04	Путешественница	Открыла для себя новый вид шопинга с ассистентом, который  помог справиться со всеми проблемами. Всё, как в фильмах. 	Диана
11	7	en	2018-01-24 09:01:38.261583-05	2018-01-24 09:01:38.261583-05	sdasdsad	ssdsd	IDIDID
12	7	ru	2018-01-24 09:01:38.262566-05	2018-01-24 09:01:38.262566-05	ваоаоао	воаовао	ДОДА
13	8	uk	2018-03-10 21:48:20.140055-05	2018-05-25 14:03:10.612327-04	Бизнесмен	Сам с Одессы, часто бываю в Польше по работе. Вернул налог на за покупки в интернете  без проблем	Руслан
14	8	en	2018-03-10 21:48:20.143116-05	2018-03-10 21:48:20.143116-05			
15	8	ru	2018-03-10 21:48:20.144714-05	2018-03-10 21:48:20.144714-05			
16	8	pl	2018-05-01 11:18:04.899-04	2018-05-01 11:18:04.899-04			
17	5	pl	2018-05-01 11:31:20.82239-04	2018-05-01 11:31:20.82239-04			
18	6	pl	2018-05-01 12:08:23.366817-04	2018-05-01 12:08:23.366817-04			
19	7	pl	2018-05-01 12:23:28.743341-04	2018-05-01 12:23:28.743341-04			
20	9	uk	2018-05-01 12:53:27.27438-04	2018-05-25 13:54:30.103126-04	Project manager 	We met in an airport, in Katovice and spoke for a few hours. Guys are crazy, did their best to satisfy customer expectations	Sabina
21	9	en	2018-05-01 12:53:27.276876-04	2018-05-01 12:53:27.276876-04			
22	9	ru	2018-05-01 12:53:27.278351-04	2018-05-01 12:53:27.278351-04			
23	9	pl	2018-05-01 12:53:27.279597-04	2018-05-01 12:53:27.279597-04			
24	10	uk	2018-05-16 09:54:13.33444-04	2018-05-25 14:47:45.945323-04	Студентка	Прочитала о tfc в Facebook и одногруппники пользуются. Я довольна	Лиза
25	10	en	2018-05-16 09:54:13.33747-04	2018-05-16 09:54:13.33747-04			
26	10	ru	2018-05-16 09:54:13.338641-04	2018-05-16 09:54:13.338641-04			
27	10	pl	2018-05-16 09:54:13.339849-04	2018-05-16 09:54:13.339849-04			
28	11	uk	2018-05-22 08:04:20.322241-04	2018-05-25 13:04:56.075893-04		Таксфріклаб  нам з чоловіком порадили друзі з Польщі, часто їздимо на шопінг, задоволені  послугою	Іринка
29	11	en	2018-05-22 08:04:20.325451-04	2018-05-22 08:04:20.325451-04			
30	11	ru	2018-05-22 08:04:20.327388-04	2018-05-22 08:04:20.327388-04			
31	11	pl	2018-05-22 08:04:20.329245-04	2018-05-22 08:04:20.329245-04			
\.


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.reviews (id, job_position, review_text, name, show, postion, image, instagram, facebook) FROM stdin;
5	\N	\N	\N	t	3	Screen_Shot_2018-05-01_at_13.32.10.png	https://www.instagram.com/bakharieva_01	https://facebook.com/alina.bakharieva
6	\N	\N	\N	t	4	33553620_2093070240930302_3599529399772250112_n.jpg	https://www.instagram.com/3bdul_ae/	
7	\N	\N	\N	t	1	Screen_Shot_2018-05-01_at_14.24.04.png		https://www.facebook.com/annelise.brown.10
8	\N	\N	\N	t	2	33686748_2093080527595940_3414608874173366272_n.jpg		
9	\N	\N	\N	t	1	Screen_Shot_2018-05-01_at_14.50.12.png		https://www.facebook.com/fennycado.tp
10	\N	\N	\N	t	5	33475137_2093055144265145_3196523723511300096_n.jpg	instagram	facebook
11	\N	\N	\N	t	7	18194128_834503626715704_6216135122406498433_n.jpg		
\.


--
-- Data for Name: rule_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.rule_translations (id, rule_id, locale, created_at, updated_at, rule) FROM stdin;
2	2	uk	2018-03-05 14:55:08.748462-05	2018-05-26 16:19:05.545784-04	<div><strong>ПРАВИЛА КОРИСТУВАННЯ</strong>&nbsp;</div>\r\n\r\n<div>Даний розділ описує взаємовідносити, правові наслідки, а також зобов&#39;язання&nbsp;між сторонами договору.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>СЛОВНИК ТЕРМІНІВ:</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Сервіс</strong>&nbsp;- послуга, обумовлена в цьому документі, що полягає на постачанні товарів широкого вжитку для кінцевих споживачів, фізичних осіб, громадян країн, про які згадується у статті 126 закону Республіки Польща про податок VAT.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Подорожуючий</strong> - фізична особа, що не має постійного місця проживання на території однієї з країн євро-спільноти (ЄС) і легально перебуває, або має намір відвідати Республіку Польща.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Продавець</strong> - Гусар&nbsp;Ярослав,&nbsp;приватний підприємець фізична особа,&nbsp;зареєстрований в центральній обліковій системі господарської діяльності&nbsp;(CEIDG) 1-ого серпня 2014-ого року. Його реквізити:&nbsp;ІПН (NIP) 6762478016,&nbsp;статистичний номер: (REGON) 123171918.&nbsp;Юридична і кореспонденційна адреса: алея Юліуша Словацького 1/6 Краків,&nbsp;поштовий індекс&nbsp;31-159.&nbsp;Продавець є платником податку VAT в Польщі і виконує решту вимог, передбачених зокрема&nbsp;артикулом 127 закону Республіки про ВАТ для виконання діяльності, що передбачена цим документом.&nbsp;&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Подорожуючий і Продавець разом називатимуться <strong>Сторони</strong>.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Виконавець</strong>: Tax Free Club sp z o.o. (ТзОВ) спілка зареєстрована в державному судовому реєстрі KRS&nbsp;0000731738, ІПН (NIP): 7010822196,&nbsp;REGON: 380208074 за адресою: вул. Ліндлея, 16 Варшава, поштовий індекс&nbsp;02-013</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Товари</strong>&nbsp;- нові, не вживані предмети&nbsp;особистого вжитку (в широкому розумінні), за виключенням паливно-мастильних матеріалів, алкоголю, тютюну, автозапчастин та інших, виключених статтею 126 закону про ВАТ.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>Tax-Free</strong> - супровідний іменний документ продажу, що являється необхідною, але не єдиною передумовою повернення податку ВАТ.&nbsp;&nbsp;Виставляється Продавцем&nbsp;для Туриста, відповідає вимогам законодавства Республіки Польща.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><strong>РЕГЛАМЕНТ СЕРВІСУ</strong></div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Подорожуючий інформує заздалегідь&nbsp;Продавця про намір придбати певний Товар під час свого перебування на території Республіки Польща. Продавець надає&nbsp;Подорожуючому оферту з ціною, термінами і умовами&nbsp;постачання вказаного товару, або ж схожого, інформуючи про відмінності. Подорожуючий приймає або ж відхиляє оферту. У разі прийняття оферти, Сторони &nbsp;домовляються про передоплату і після цього розпочинається процес постачальння Товару. Продавець має право залучати треті особи до виконання замовлення&nbsp;Подорожуючого, включаючи, але не обмежуючись Виконавцем.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Товар передається (продається)&nbsp;Подорожуючому особисто, або ж надсилається поштою, проте в обох випадках Подорожучий повинен перебувати&nbsp;на території євро-спільноти (ЄС). Продавець за бажанням Подорожуючого окрім фіскального чеку може приготувати також бланк Tax-Free для подальшого відшкодування податку VAT. У цьому випадку, Продавець інформує Подорожуючого про вимоги і обмеження, накладені законодавством. Підписуючи бланк Tax-Free Подорожуючий підтверджує, що ознайомлений з вищезгаданими правилами.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>У випадку виставлення Tax-Free Подорожуючий повинен зголосити для контролю митно-податковому органу при перетині&nbsp;кордону ЄС&nbsp;даний Товар в первинному стані, тобто невживаний. Підтвердженням вивезення даного Товару за межі ЄС вважається&nbsp;штамп і печатка митного органу на бланку Tax-Free.&nbsp;У випадку, якщо митний орган підтвердить загалом вивіз зазначеного в TaxFree товару, але занотує відсутність одного або ж декількох позицій товару, Продавець&nbsp;поверне Подорожуючому пропорційну частину податку VAT з врахуванням відповідної Комісії за свої послуги.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Наступною умовою повернення&nbsp;податку VAT Подорожуючому є передача оригіналу бланку Tax-Free Продавцю разом з фіскальним чеком, що прикріплений до нього. Для цього Подорожуючий може скористатись однією&nbsp;з кореспонденційних адрес, що зазначені в цьому документі або ж на веб-сторінці Сервісу. Продавець додатково верифіковує факт вивезення товару за межі ЄС завдяки інформатичній системі, що надається митним органом. У разі відсутності там підтвердження вивезення, повернення податку VAT може бути затримане, до з&#39;ясування обславин.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div>Продавець бере на себе всі зобов&#39;язання, передбачені законодавством РП щодо післяпродажного&nbsp;обслуговування Подорожуючого.&nbsp;</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<p>&nbsp;</p>\r\n
3	2	en	2018-03-05 14:55:08.749834-05	2018-05-26 16:29:28.938252-04	<p><strong>ПРАВИЛА КОРИСТУВАННЯ</strong>&nbsp;</p>\r\n\r\n<p>Даний розділ описує взаємовідносити, правові наслідки, а також зобов&#39;язання&nbsp;між сторонами договору.</p>\r\n\r\n<p>This document reffers to the relationships&nbsp;</p>\r\n\r\n<p><strong>СЛОВНИК ТЕРМІНІВ:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Сервіс</strong>&nbsp;- послуга, обумовлена в цьому документі, що полягає на постачанні товарів широкого вжитку для кінцевих споживачів, фізичних осіб, громадян країн, про які згадується у статті 126 закону Республіки Польща про податок VAT.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Подорожуючий</strong> - фізична особа, що не має постійного місця проживання на території однієї з країн євро-спільноти (ЄС) і легально перебуває, або має намір відвідати Республіку Польща.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Продавець</strong> - Гусар&nbsp;Ярослав,&nbsp;приватний підприємець фізична особа,&nbsp;зареєстрований в центральній обліковій системі господарської діяльності&nbsp;(CEIDG) 1-ого серпня 2014-ого року. Його реквізити:&nbsp;ІПН (NIP) 6762478016,&nbsp;статистичний номер: (REGON) 123171918.&nbsp;Юридична і кореспонденційна адреса: алея Юліуша Словацького 1/6 Краків,&nbsp;поштовий індекс&nbsp;31-159.&nbsp;Продавець є платником податку VAT в Польщі і виконує решту вимог, передбачених зокрема&nbsp;артикулом 127 закону Республіки про ВАТ для виконання діяльності, що передбачена цим документом.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Подорожуючий і Продавець разом називатимуться <strong>Сторони</strong>.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Виконавець</strong>: Tax Free Club sp z o.o. (ТзОВ) спілка зареєстрована в державному судовому реєстрі KRS&nbsp;0000731738, ІПН (NIP): 7010822196,&nbsp;REGON: 380208074 за адресою: вул. Ліндлея, 16 Варшава, поштовий індекс&nbsp;02-013</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Товари</strong>&nbsp;- нові, не вживані предмети&nbsp;особистого вжитку (в широкому розумінні), за виключенням паливно-мастильних матеріалів, алкоголю, тютюну, автозапчастин та інших, виключених статтею 126 закону про ВАТ.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tax-Free</strong> - супровідний іменний документ продажу, що являється необхідною, але не єдиною передумовою повернення податку ВАТ.&nbsp;&nbsp;Виставляється Продавцем&nbsp;для Туриста, відповідає вимогам законодавства Республіки Польща.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>РЕГЛАМЕНТ СЕРВІСУ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Подорожуючий інформує заздалегідь&nbsp;Продавця про намір придбати певний Товар під час свого перебування на території Республіки Польща. Продавець надає&nbsp;Подорожуючому оферту з ціною, термінами і умовами&nbsp;постачання вказаного товару, або ж схожого, інформуючи про відмінності. Подорожуючий приймає або ж відхиляє оферту. У разі прийняття оферти, Сторони &nbsp;домовляються про передоплату і після цього розпочинається процес постачальння Товару. Продавець має право залучати треті особи до виконання замовлення&nbsp;Подорожуючого, включаючи, але не обмежуючись Виконавцем.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Товар передається (продається)&nbsp;Подорожуючому особисто, або ж надсилається поштою, проте в обох випадках Подорожучий повинен перебувати&nbsp;на території євро-спільноти (ЄС). Продавець за бажанням Подорожуючого окрім фіскального чеку може приготувати також бланк Tax-Free для подальшого відшкодування податку VAT. У цьому випадку, Продавець інформує Подорожуючого про вимоги і обмеження, накладені законодавством. Підписуючи бланк Tax-Free Подорожуючий підтверджує, що ознайомлений з вищезгаданими правилами.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>У випадку виставлення Tax-Free Подорожуючий повинен зголосити для контролю митно-податковому органу при перетині&nbsp;кордону ЄС&nbsp;даний Товар в первинному стані, тобто невживаний. Підтвердженням вивезення даного Товару за межі ЄС вважається&nbsp;штамп і печатка митного органу на бланку Tax-Free.&nbsp;У випадку, якщо митний орган підтвердить загалом вивіз зазначеного в TaxFree товару, але занотує відсутність одного або ж декількох позицій товару, Продавець&nbsp;поверне Подорожуючому пропорційну частину податку VAT з врахуванням відповідної Комісії за свої послуги.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Наступною умовою повернення&nbsp;податку VAT Подорожуючому є передача оригіналу бланку Tax-Free Продавцю разом з фіскальним чеком, що прикріплений до нього. Для цього Подорожуючий може скористатись однією&nbsp;з кореспонденційних адрес, що зазначені в цьому документі або ж на веб-сторінці Сервісу. Продавець додатково верифіковує факт вивезення товару за межі ЄС завдяки інформатичній системі, що надається митним органом. У разі відсутності там підтвердження вивезення, повернення податку VAT може бути затримане, до з&#39;ясування обславин.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Продавець бере на себе всі зобов&#39;язання, передбачені законодавством РП щодо післяпродажного&nbsp;обслуговування Подорожуючого.</p>\r\n
4	2	ru	2018-03-05 14:55:08.750874-05	2018-05-26 16:29:28.953402-04	<p><strong>ПРАВИЛА КОРИСТУВАННЯ</strong>&nbsp;</p>\r\n\r\n<p>Даний розділ описує взаємовідносити, правові наслідки, а також зобов&#39;язання&nbsp;між сторонами договору.</p>\r\n\r\n<p>Данный документ описует взаимоотношения&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>СЛОВНИК ТЕРМІНІВ:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Сервіс</strong>&nbsp;- послуга, обумовлена в цьому документі, що полягає на постачанні товарів широкого вжитку для кінцевих споживачів, фізичних осіб, громадян країн, про які згадується у статті 126 закону Республіки Польща про податок VAT.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Подорожуючий</strong> - фізична особа, що не має постійного місця проживання на території однієї з країн євро-спільноти (ЄС) і легально перебуває, або має намір відвідати Республіку Польща.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Продавець</strong> - Гусар&nbsp;Ярослав,&nbsp;приватний підприємець фізична особа,&nbsp;зареєстрований в центральній обліковій системі господарської діяльності&nbsp;(CEIDG) 1-ого серпня 2014-ого року. Його реквізити:&nbsp;ІПН (NIP) 6762478016,&nbsp;статистичний номер: (REGON) 123171918.&nbsp;Юридична і кореспонденційна адреса: алея Юліуша Словацького 1/6 Краків,&nbsp;поштовий індекс&nbsp;31-159.&nbsp;Продавець є платником податку VAT в Польщі і виконує решту вимог, передбачених зокрема&nbsp;артикулом 127 закону Республіки про ВАТ для виконання діяльності, що передбачена цим документом.&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Подорожуючий і Продавець разом називатимуться <strong>Сторони</strong>.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Виконавець</strong>: Tax Free Club sp z o.o. (ТзОВ) спілка зареєстрована в державному судовому реєстрі KRS&nbsp;0000731738, ІПН (NIP): 7010822196,&nbsp;REGON: 380208074 за адресою: вул. Ліндлея, 16 Варшава, поштовий індекс&nbsp;02-013</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Товари</strong>&nbsp;- нові, не вживані предмети&nbsp;особистого вжитку (в широкому розумінні), за виключенням паливно-мастильних матеріалів, алкоголю, тютюну, автозапчастин та інших, виключених статтею 126 закону про ВАТ.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tax-Free</strong> - супровідний іменний документ продажу, що являється необхідною, але не єдиною передумовою повернення податку ВАТ.&nbsp;&nbsp;Виставляється Продавцем&nbsp;для Туриста, відповідає вимогам законодавства Республіки Польща.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>РЕГЛАМЕНТ СЕРВІСУ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Подорожуючий інформує заздалегідь&nbsp;Продавця про намір придбати певний Товар під час свого перебування на території Республіки Польща. Продавець надає&nbsp;Подорожуючому оферту з ціною, термінами і умовами&nbsp;постачання вказаного товару, або ж схожого, інформуючи про відмінності. Подорожуючий приймає або ж відхиляє оферту. У разі прийняття оферти, Сторони &nbsp;домовляються про передоплату і після цього розпочинається процес постачальння Товару. Продавець має право залучати треті особи до виконання замовлення&nbsp;Подорожуючого, включаючи, але не обмежуючись Виконавцем.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Товар передається (продається)&nbsp;Подорожуючому особисто, або ж надсилається поштою, проте в обох випадках Подорожучий повинен перебувати&nbsp;на території євро-спільноти (ЄС). Продавець за бажанням Подорожуючого окрім фіскального чеку може приготувати також бланк Tax-Free для подальшого відшкодування податку VAT. У цьому випадку, Продавець інформує Подорожуючого про вимоги і обмеження, накладені законодавством. Підписуючи бланк Tax-Free Подорожуючий підтверджує, що ознайомлений з вищезгаданими правилами.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>У випадку виставлення Tax-Free Подорожуючий повинен зголосити для контролю митно-податковому органу при перетині&nbsp;кордону ЄС&nbsp;даний Товар в первинному стані, тобто невживаний. Підтвердженням вивезення даного Товару за межі ЄС вважається&nbsp;штамп і печатка митного органу на бланку Tax-Free.&nbsp;У випадку, якщо митний орган підтвердить загалом вивіз зазначеного в TaxFree товару, але занотує відсутність одного або ж декількох позицій товару, Продавець&nbsp;поверне Подорожуючому пропорційну частину податку VAT з врахуванням відповідної Комісії за свої послуги.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Наступною умовою повернення&nbsp;податку VAT Подорожуючому є передача оригіналу бланку Tax-Free Продавцю разом з фіскальним чеком, що прикріплений до нього. Для цього Подорожуючий може скористатись однією&nbsp;з кореспонденційних адрес, що зазначені в цьому документі або ж на веб-сторінці Сервісу. Продавець додатково верифіковує факт вивезення товару за межі ЄС завдяки інформатичній системі, що надається митним органом. У разі відсутності там підтвердження вивезення, повернення податку VAT може бути затримане, до з&#39;ясування обславин.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Продавець бере на себе всі зобов&#39;язання, передбачені законодавством РП щодо післяпродажного&nbsp;обслуговування Подорожуючого.</p>\r\n
9	2	pl	2018-05-26 16:28:30.369601-04	2018-05-28 18:36:16.783072-04	<p><strong>ZASADY KORZYSTANIA&nbsp;</strong></p>\r\n\r\n<p>Dany dokument opisuje relacji, konsekwencji prawne jak r&oacute;wnież zobowiązania pomiędzy stronami umowy.&nbsp;</p>\r\n\r\n<p><strong>SŁOWNIK OKREŚLEŃ:&nbsp;</strong></p>\r\n\r\n<p><b>SERWIS</b> - usługa, opisana w w obecnym dokumencie, polegająca na zaopatrzeniu towarami konsumenckimi&nbsp;odbiorc&oacute;w końcowych, wspomnianych w ust.1&nbsp;art.126 ustawy o VAT.&nbsp;&nbsp;</p>\r\n\r\n<p><b>Podr&oacute;żny</b> - osoba fizyczna, nie posiadająca stałego miejsca zamieszkania&nbsp;na terenie Unii Europejskiej, kt&oacute;ra legalnie przebywa, lub zamierza odwiedzić&nbsp;Rzeczpospolitą Polskę.&nbsp;</p>\r\n\r\n<p><b>Sprzedawca</b> - Yaroslav Husar, prowadzący jednoosobową działalność gospodarczą zarejestrowaną w CEIDG&nbsp;1-ego sierpnia roku 2014-ego. NIP:&nbsp;6762478016, REGON:&nbsp;123171918. Adres prawny i korespondencyjny: al. Juliusza Słowackiego&nbsp;1/6 Krak&oacute;w,&nbsp;31-159.&nbsp;Sprzedawca jest płatnikiem podatku VAT w Polsce spełnia resztę wymagań nałożonych m.i. art.&nbsp;127 ustawy o VAT dla prowadzenia działalności, przewidzianej danym Serwisem.&nbsp;</p>\r\n\r\n<p>Podr&oacute;żny i Sprzedawca&nbsp;razem mianowane są Stronami.&nbsp;</p>\r\n\r\n<p><strong>Wykonawca</strong>: Tax Free Club sp&oacute;łka z ograniczoną&nbsp;odpowiedzialnością&nbsp;- zarejestrowana w Krajowym Rejestrze Sądowym&nbsp;pod nr. 0000731738, NIP: 7010822196,&nbsp;REGON: 380208074 z adresem ul. W. Lindleya, 16 w Warszawie 02-013.</p>\r\n\r\n<p><b>Towary</b> - нові, не вживані предмети&nbsp;особистого вжитку (в широкому розумінні), за виключенням паливно-мастильних матеріалів, алкоголю, тютюну, автозапчастин та інших, виключених статтею 126 закону про ВАТ.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Tax-Free</strong> - супровідний іменний документ продажу, що являється необхідною, але не єдиною передумовою повернення податку ВАТ.&nbsp;&nbsp;Виставляється Продавцем&nbsp;для Туриста, відповідає вимогам законодавства Республіки Польща.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>РЕГЛАМЕНТ СЕРВІСУ</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Подорожуючий інформує заздалегідь&nbsp;Продавця про намір придбати певний Товар під час свого перебування на території Республіки Польща. Продавець надає&nbsp;Подорожуючому оферту з ціною, термінами і умовами&nbsp;постачання вказаного товару, або ж схожого, інформуючи про відмінності. Подорожуючий приймає або ж відхиляє оферту. У разі прийняття оферти, Сторони &nbsp;домовляються про передоплату і після цього розпочинається процес постачальння Товару. Продавець має право залучати треті особи до виконання замовлення&nbsp;Подорожуючого, включаючи, але не обмежуючись Виконавцем.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Товар передається (продається)&nbsp;Подорожуючому особисто, або ж надсилається поштою, проте в обох випадках Подорожучий повинен перебувати&nbsp;на території євро-спільноти (ЄС). Продавець за бажанням Подорожуючого окрім фіскального чеку може приготувати також бланк Tax-Free для подальшого відшкодування податку VAT. У цьому випадку, Продавець інформує Подорожуючого про вимоги і обмеження, накладені законодавством. Підписуючи бланк Tax-Free Подорожуючий підтверджує, що ознайомлений з вищезгаданими правилами.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>У випадку виставлення Tax-Free Подорожуючий повинен зголосити для контролю митно-податковому органу при перетині&nbsp;кордону ЄС&nbsp;даний Товар в первинному стані, тобто невживаний. Підтвердженням вивезення даного Товару за межі ЄС вважається&nbsp;штамп і печатка митного органу на бланку Tax-Free.&nbsp;У випадку, якщо митний орган підтвердить загалом вивіз зазначеного в TaxFree товару, але занотує відсутність одного або ж декількох позицій товару, Продавець&nbsp;поверне Подорожуючому пропорційну частину податку VAT з врахуванням відповідної Комісії за свої послуги.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Наступною умовою повернення&nbsp;податку VAT Подорожуючому є передача оригіналу бланку Tax-Free Продавцю разом з фіскальним чеком, що прикріплений до нього. Для цього Подорожуючий може скористатись однією&nbsp;з кореспонденційних адрес, що зазначені в цьому документі або ж на веб-сторінці Сервісу. Продавець додатково верифіковує факт вивезення товару за межі ЄС завдяки інформатичній системі, що надається митним органом. У разі відсутності там підтвердження вивезення, повернення податку VAT може бути затримане, до з&#39;ясування обславин.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Продавець бере на себе всі зобов&#39;язання, передбачені законодавством РП щодо післяпродажного&nbsp;обслуговування Подорожуючого.</p>\r\n
\.


--
-- Data for Name: rules; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.rules (id, rule) FROM stdin;
2	\N
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.schema_migrations (version) FROM stdin;
20180118104519
20180118105720
20180118144333
20180119103550
20180119103747
20180119122609
20180119130000
20180119134831
20180119142516
20180119143350
20180119145942
20180119153338
20180119153919
20180122093511
20180122102219
20180122150037
20180124094640
20180124123606
20180126110940
20180126134220
20180205123112
20180305091013
20180305113322
20180308105012
20180308112923
20180316101140
20180319123521
20180319123536
20180319123543
20180319123551
20180319123607
20180522120723
20180524084550
20180709104747
20180709200409
\.


--
-- Data for Name: seo_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.seo_translations (id, seo_id, locale, created_at, updated_at, title, keywords, description) FROM stdin;
1	1	uk	2018-02-05 12:59:47.875852-05	2018-05-22 09:17:30.12147-04	«TaxFreeClub» — сервіс професійного шопінгу для іноземців.	Такс фрі, Податки, Відшкодування, Сервіс, Закупи, Польща. 	Сервіс професійного шопінгу для іноземців. Заощаджуй завдяки знижкам, а також можливості повернення податку VAT! Скористайся з послуг особистого консультанта! 
2	1	en	2018-02-05 12:59:47.877189-05	2018-05-22 09:19:07.395408-04	«TaxFreeClub» — is a professional shopping service for foreigners.	Tax Free, Taxes, Refunds, Service, Procurement, Poland.	Professional shopping for foreigners. Save with discounts, as well as VAT refunds! Take advantage of the services of a personal consultant!
3	1	ru	2018-02-05 12:59:47.878079-05	2018-02-05 12:59:47.878079-05			
4	1	pl	2018-03-19 13:46:19.672736-04	2018-03-19 13:46:19.672736-04			
\.


--
-- Data for Name: seos; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.seos (id, title, keywords, description, page_id, page_type) FROM stdin;
1	\N	\N	\N	1	Landing
\.


--
-- Data for Name: socials; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.socials (id, facebook, instagram) FROM stdin;
1	https://www.facebook.com/taxfreeclub/	https://www.instagram.com/taxfreeclub
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, sign_in_count, current_sign_in_at, last_sign_in_at, current_sign_in_ip, last_sign_in_ip, created_at, updated_at, name, first_name, last_name, gender) FROM stdin;
1	example@gmail.com	$2a$11$egaGASgXTS7bhHEyHMooWOVbGoLpuXEdLiuaTIEMnqCk58DWYH2tq	\N	\N	\N	21	2018-03-09 08:24:04.328241-05	2018-03-09 08:21:41.33476-05	178.136.239.163	178.136.239.163	2018-01-22 15:07:40.917568-05	2018-03-09 08:24:04.330112-05	\N	\N	\N	\N
3	cm@voroninstudio.eu	$2a$11$9N36xxjR8TdMnjKy0KBkkevyIwoR5uXdB96oibCGI4IiZQzmGkJ7q	\N	\N	\N	12	2018-05-24 09:09:12.289195-04	2018-05-22 08:40:27.727213-04	178.136.239.163	178.136.239.163	2018-03-09 08:44:03.997147-05	2018-05-24 09:09:12.291804-04	\N	\N	\N	\N
4	urbano_rider@yahoo.ca	$2a$11$pktf8jkpaoUpIWvigPhnleMpMIM/5ZlbcvNITnZUwzRdh8wWEE7j.	\N	\N	\N	25	2018-06-06 21:57:07.474152-04	2018-06-06 15:45:31.11152-04	89.64.40.76	95.132.28.251	2018-03-09 09:09:05.939073-05	2018-06-06 21:57:07.477028-04	\N	\N	\N	\N
5	test@mail.com	$2a$11$Y6NUUCLx6Q.IcgnAp.YDjuuksXtjazwL/zy7j0xgiOffS3/w1liFa	\N	\N	\N	6	2018-07-05 16:54:18.76352-04	2018-07-01 20:12:42.974665-04	::1	::1	2018-06-22 17:44:40.925632-04	2018-07-05 16:54:18.773144-04	\N	\N	\N	\N
6	test@com.ua	$2a$11$kK4S9zFpZxEMdb7s9pNjCOxLThpXyBhRvAznI82xsa8.ymR.07Wbe	\N	\N	\N	1	2018-07-05 07:10:33.858451-04	2018-07-05 07:10:33.858451-04	::1	::1	2018-07-05 07:10:33.842158-04	2018-07-05 07:10:33.859806-04	\N	\N	\N	\N
7	test2@test.com	$2a$11$LwjgrXKz2y4Mpz5xbme15.tMzcFFe5r1sIoveBA4vbO8oxI/DfkuS	\N	\N	\N	1	2018-07-08 21:23:19.216944-04	2018-07-08 21:23:19.216944-04	::1	::1	2018-07-08 21:23:19.192953-04	2018-07-08 21:23:19.219529-04	\N	\N	\N	\N
8	test3@test.com	$2a$11$sley74rKf2BxnrSK6MtQ9uJlQ.ljSsLZOyG3LjLrFtBXjTeXCM1oq	\N	\N	\N	1	2018-07-08 21:29:14.846111-04	2018-07-08 21:29:14.846111-04	::1	::1	2018-07-08 21:29:14.840457-04	2018-07-08 21:29:14.846999-04	\N	\N	\N	\N
9	test4@test.com	$2a$11$gY2IkLPB.tX8njLJiFY6BeKcUDKythmkbiBZMLXcfwAnvPTQQZskK	\N	\N	\N	1	2018-07-08 21:33:34.577529-04	2018-07-08 21:33:34.577529-04	::1	::1	2018-07-08 21:33:34.572236-04	2018-07-08 21:33:34.578322-04	\N	\N	\N	\N
10	test5@test.com	$2a$11$23dyqFxfsssrfrDXShcdf.w7EvAF9vV5ISTPaVY6pBkD3bqMqlH4m	\N	\N	\N	1	2018-07-08 21:37:58.04014-04	2018-07-08 21:37:58.04014-04	::1	::1	2018-07-08 21:37:58.008561-04	2018-07-08 21:37:58.041412-04	\N	\N	\N	\N
11	test6@test.com	$2a$11$WOcWyC6Z0QUulLwEYQiueePXab50NjmNowdKPPnDXxsLGiZyWqVgq	\N	\N	\N	1	2018-07-08 21:39:44.009095-04	2018-07-08 21:39:44.009095-04	::1	::1	2018-07-08 21:39:44.004559-04	2018-07-08 21:39:44.009906-04	\N	\N	\N	\N
12	test7@test.com	$2a$11$2noZoIAaopTQ7rTPe3jG3O9Vq6joDvi3EK5iijFpCYyDPlX5Xy9X2	\N	\N	\N	1	2018-07-08 21:44:54.502146-04	2018-07-08 21:44:54.502146-04	::1	::1	2018-07-08 21:44:54.496106-04	2018-07-08 21:44:54.503593-04	\N	\N	\N	\N
13	test8@test.com	$2a$11$nPDFYpbDlywF0TwHIU4j5OIJho8DQYuMl6LDv.chKTRA9mJsrzhiW	\N	\N	\N	1	2018-07-08 21:48:35.201142-04	2018-07-08 21:48:35.201142-04	::1	::1	2018-07-08 21:48:35.19626-04	2018-07-08 21:48:35.202137-04	\N	\N	\N	\N
14	test9@test.com	$2a$11$FlRiivUhjnHD.H1gt6lNL.pJqT1LP1OnysArxvVoiLXdM0nLHEZx6	\N	\N	\N	1	2018-07-08 21:59:39.491877-04	2018-07-08 21:59:39.491877-04	::1	::1	2018-07-08 21:59:39.487294-04	2018-07-08 21:59:39.492983-04	\N	\N	\N	\N
15	testt1@test.com	$2a$11$Ejw8bc9bdoxubANMfakCr.Yi9n0dh6EpupwR0TliDE7qcJt5WtlTu	\N	\N	\N	1	2018-07-08 22:04:09.381937-04	2018-07-08 22:04:09.381937-04	::1	::1	2018-07-08 22:04:09.376418-04	2018-07-08 22:04:09.382799-04	\N	\N	\N	\N
16	testt2@text.com	$2a$11$sb0KAZV94/G5yDRZnD4JVeMU/c8D20p5.8QtyPsYrdUsZzab2ZSDa	\N	\N	\N	1	2018-07-08 22:08:03.705762-04	2018-07-08 22:08:03.705762-04	::1	::1	2018-07-08 22:08:03.702153-04	2018-07-08 22:08:03.706627-04	\N	\N	\N	\N
17	testt3@test.com	$2a$11$Tc5GOg8fK.RHycsgrlCtQuv3kI55p2RPrEyXzTslTpwa2H7qLqo9K	\N	\N	\N	1	2018-07-08 22:13:58.96968-04	2018-07-08 22:13:58.96968-04	::1	::1	2018-07-08 22:13:58.963447-04	2018-07-08 22:13:58.970652-04	\N	\N	\N	\N
18	testt4@test.com	$2a$11$cf7ZnbPKrCYRS6zpF/fuJOqwIv1G3oVszu0ulqQxob3MGVe82IQBa	\N	\N	\N	1	2018-07-08 22:31:21.233698-04	2018-07-08 22:31:21.233698-04	::1	::1	2018-07-08 22:31:21.226893-04	2018-07-08 22:31:21.234934-04	\N	\N	\N	\N
19	testt5@test.com	$2a$11$l.TGsUe7H2myuBiGF2sQQuwmNeTc8eVHmSganKkUtLpTwcw5xb76m	\N	\N	\N	1	2018-07-09 05:34:42.814881-04	2018-07-09 05:34:42.814881-04	::1	::1	2018-07-09 05:34:42.798791-04	2018-07-09 05:34:42.816531-04	\N	\N	\N	\N
20	testt6@test.com	$2a$11$lSMaZAUIJFpmtkvGgTOicuEuN9QZrOkB414XQ20WJ2X72tPPIMw.y	\N	\N	\N	1	2018-07-09 05:37:20.142132-04	2018-07-09 05:37:20.142132-04	::1	::1	2018-07-09 05:37:20.133962-04	2018-07-09 05:37:20.143034-04	\N	\N	\N	\N
21	testt7@test.com	$2a$11$oXnEv..TeMSwKKF3tdPHMeKDg3sJ/cEaAK9/nc7B9MWpL0n9Z4NTq	\N	\N	\N	1	2018-07-09 05:41:12.709374-04	2018-07-09 05:41:12.709374-04	::1	::1	2018-07-09 05:41:12.701957-04	2018-07-09 05:41:12.711434-04	\N	\N	\N	\N
22	testt8@test.com	$2a$11$4SZ.Yn0IWRf3xG8yMch6K.XW7FLwB2hqkb6qiWQVfEEmyzOXp6zpO	\N	\N	\N	1	2018-07-09 05:46:25.661198-04	2018-07-09 05:46:25.661198-04	::1	::1	2018-07-09 05:46:25.648229-04	2018-07-09 05:46:25.662038-04	\N	\N	\N	\N
23	testt9@test.com	$2a$11$yowDa49bFy3sA5nZBFbbMOcZO0EvBQrNMnaOifrW0U2AMh4VsN3U6	\N	\N	\N	1	2018-07-09 05:48:47.226645-04	2018-07-09 05:48:47.226645-04	::1	::1	2018-07-09 05:48:47.216618-04	2018-07-09 05:48:47.228394-04	\N	\N	\N	\N
24	testtt1@test.com	$2a$11$1NFLwdKpMecUUo2gDvT3rO1mulLglPfI5JgH9IqQorFw7dTCVoHCO	\N	\N	\N	1	2018-07-09 05:51:31.253061-04	2018-07-09 05:51:31.253061-04	::1	::1	2018-07-09 05:51:31.24865-04	2018-07-09 05:51:31.2538-04	\N	\N	\N	\N
25	testtt2@test.com	$2a$11$43JW5KCXA3af7Ab2fuUr1Of9OJhXESfDG84ehuuqQ2Il47w0542Om	\N	\N	\N	1	2018-07-09 05:57:19.423446-04	2018-07-09 05:57:19.423446-04	::1	::1	2018-07-09 05:57:19.418386-04	2018-07-09 05:57:19.424329-04	\N	\N	\N	\N
26	testtt3@test.com	$2a$11$hbBVp8Jau7CjsTDaC93dxOG3mKJQwVBrwpvbvAGQzHYrDRz5OggYO	\N	\N	\N	1	2018-07-09 06:04:00.646747-04	2018-07-09 06:04:00.646747-04	::1	::1	2018-07-09 06:04:00.643811-04	2018-07-09 06:04:00.647655-04	\N	\N	\N	\N
27	testtt4@test.com	$2a$11$7yudEhyY2tsEzSUdvPrWiuanmsJhHZtvjo5PMarVqg3kIiEsNR7va	\N	\N	\N	1	2018-07-09 06:05:46.707512-04	2018-07-09 06:05:46.707512-04	::1	::1	2018-07-09 06:05:46.704009-04	2018-07-09 06:05:46.708368-04	\N	\N	\N	\N
28	testttt5@test.com	$2a$11$uUOT/5t2XKj5Dy0ZgMXOG.eUuI14nEiV.tTWGQvQHnEaBlpzEP1OK	\N	\N	\N	1	2018-07-09 06:07:22.027425-04	2018-07-09 06:07:22.027425-04	::1	::1	2018-07-09 06:07:22.0228-04	2018-07-09 06:07:22.028426-04	\N	\N	\N	\N
29	testtt6@test.com	$2a$11$XuvdKJAnupdYOGz86Q4gTuOv9hc9MEl9h36vb58jNecUhfJUcbQ4G	\N	\N	\N	1	2018-07-09 06:08:49.678063-04	2018-07-09 06:08:49.678063-04	::1	::1	2018-07-09 06:08:49.674174-04	2018-07-09 06:08:49.678972-04	\N	\N	\N	\N
30	testtt7@test.com	$2a$11$ITAGbtRaF31wrAk4B32xLunupeqzp219T1Rdz.VXr5rpUaE4ANym.	\N	\N	\N	1	2018-07-09 06:10:31.193423-04	2018-07-09 06:10:31.193423-04	::1	::1	2018-07-09 06:10:31.189861-04	2018-07-09 06:10:31.194453-04	\N	\N	\N	\N
31	testtt9@test.com	$2a$11$qMLDeZpzBP5j8Hmh6TQD.OxGhkACAapBwOtDSQTXCSYELwIs/LAFq	\N	\N	\N	1	2018-07-09 06:23:30.152334-04	2018-07-09 06:23:30.152334-04	::1	::1	2018-07-09 06:23:30.147697-04	2018-07-09 06:23:30.153935-04	\N	\N	\N	\N
32	testttt1@test.com	$2a$11$5MjD9E/2QnZxDQ5Qrz3YSeH9L8rYsNFaBtyoSGKO6JnyraGGjBC.S	\N	\N	\N	1	2018-07-09 06:28:33.893433-04	2018-07-09 06:28:33.893433-04	::1	::1	2018-07-09 06:28:33.882412-04	2018-07-09 06:28:33.895153-04	\N	\N	\N	\N
33	sergiy.koshoviy@gmail.com	$2a$11$gfCT37YFdM94mvYeu/OTQeE9CjfiKqTpcnZl2/QBS2MhVL1Rn5dJ.	\N	\N	\N	15	2018-07-11 04:49:48.81142-04	2018-07-11 04:25:33.883089-04	::1	::1	2018-07-09 20:09:18.231119-04	2018-07-11 04:49:48.813174-04	\N	Sergiy	Koshovyi	\N
34	test555@test.com	$2a$11$g0EmH0hJcrrcJJHv/nFgf.hO9j9mUVXktccocTphIykTkQ.yuHlUO	\N	\N	\N	1	2018-07-09 21:55:35.665599-04	2018-07-09 21:55:35.665599-04	::1	::1	2018-07-09 21:55:35.661208-04	2018-07-09 21:55:35.666729-04	\N	\N	\N	\N
\.


--
-- Data for Name: warsaw_translations; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.warsaw_translations (id, warsaw_id, locale, created_at, updated_at, address) FROM stdin;
1	1	uk	2018-03-19 13:34:48.059876-04	2018-06-06 16:19:36.331911-04	www.chjanki.pl, www.atrium-targowek.pl, www.zlotetarasy.pl
2	1	en	2018-03-19 13:34:48.061805-04	2018-06-07 09:04:02.660879-04	www.chjanki.pl, www.atrium-targowek.pl, www.zlotetarasy.pl
3	1	ru	2018-03-19 13:34:48.062916-04	2018-06-07 09:04:02.664511-04	www.chjanki.pl, www.atrium-targowek.pl, www.zlotetarasy.pl
4	1	pl	2018-03-19 13:34:48.064094-04	2018-06-07 09:04:02.665772-04	www.chjanki.pl, www.atrium-targowek.pl, www.zlotetarasy.pl
\.


--
-- Data for Name: warsaws; Type: TABLE DATA; Schema: public; Owner: shadow
--

COPY public.warsaws (id, address, phone) FROM stdin;
1	\N	
\.


--
-- Name: address_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.address_translations_id_seq', 1, false);


--
-- Name: addresses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.addresses_id_seq', 1, false);


--
-- Name: authentications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.authentications_id_seq', 1, false);


--
-- Name: chelm_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.chelm_translations_id_seq', 1, false);


--
-- Name: chelms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.chelms_id_seq', 1, false);


--
-- Name: clientemails_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.clientemails_id_seq', 1, false);


--
-- Name: consultations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.consultations_id_seq', 1, false);


--
-- Name: contact_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.contact_translations_id_seq', 1, false);


--
-- Name: contacts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.contacts_id_seq', 1, false);


--
-- Name: howitwork_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.howitwork_translations_id_seq', 1, false);


--
-- Name: howitworks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.howitworks_id_seq', 1, false);


--
-- Name: info_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.info_translations_id_seq', 1, false);


--
-- Name: infos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.infos_id_seq', 1, false);


--
-- Name: krakow_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.krakow_translations_id_seq', 1, false);


--
-- Name: krakows_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.krakows_id_seq', 1, false);


--
-- Name: landing_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.landing_translations_id_seq', 1, false);


--
-- Name: landings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.landings_id_seq', 1, false);


--
-- Name: lublin_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.lublin_translations_id_seq', 1, false);


--
-- Name: lublins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.lublins_id_seq', 1, false);


--
-- Name: ourfeature_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.ourfeature_translations_id_seq', 1, false);


--
-- Name: ourfeatures_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.ourfeatures_id_seq', 1, false);


--
-- Name: partner_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.partner_translations_id_seq', 1, false);


--
-- Name: partnerforms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.partnerforms_id_seq', 1, false);


--
-- Name: partners_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.partners_id_seq', 1, false);


--
-- Name: przemysl_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.przemysl_translations_id_seq', 1, false);


--
-- Name: przemysls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.przemysls_id_seq', 1, false);


--
-- Name: review_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.review_translations_id_seq', 1, false);


--
-- Name: reviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.reviews_id_seq', 1, false);


--
-- Name: rule_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.rule_translations_id_seq', 1, false);


--
-- Name: rules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.rules_id_seq', 1, false);


--
-- Name: seo_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.seo_translations_id_seq', 1, false);


--
-- Name: seos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.seos_id_seq', 1, false);


--
-- Name: socials_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.socials_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.users_id_seq', 1, false);


--
-- Name: warsaw_translations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.warsaw_translations_id_seq', 1, false);


--
-- Name: warsaws_id_seq; Type: SEQUENCE SET; Schema: public; Owner: shadow
--

SELECT pg_catalog.setval('public.warsaws_id_seq', 1, false);

--
-- Name: warsaws warsaws_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.warsaws
    ADD CONSTRAINT warsaws_pkey PRIMARY KEY (id);

--
-- Name: warsaw_translations warsaw_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.warsaw_translations
    ADD CONSTRAINT warsaw_translations_pkey PRIMARY KEY (id);

--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);

--
-- Name: socials socials_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.socials
    ADD CONSTRAINT socials_pkey PRIMARY KEY (id);

--
-- Name: seos seos_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.seos
    ADD CONSTRAINT seos_pkey PRIMARY KEY (id);

--
-- Name: seo_translations seo_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.seo_translations
    ADD CONSTRAINT seo_translations_pkey PRIMARY KEY (id);

--
-- Name: rules rules_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.rules
    ADD CONSTRAINT rules_pkey PRIMARY KEY (id);

--
-- Name: rule_translations rule_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.rule_translations
    ADD CONSTRAINT rule_translations_pkey PRIMARY KEY (id);

--
-- Name: reviews reviews_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.reviews
    ADD CONSTRAINT reviews_pkey PRIMARY KEY (id);

--
-- Name: review_translations review_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.review_translations
    ADD CONSTRAINT review_translations_pkey PRIMARY KEY (id);

--
-- Name: przemysls przemysls_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.przemysls
    ADD CONSTRAINT przemysls_pkey PRIMARY KEY (id);

--
-- Name: przemysl_translations przemysl_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.przemysl_translations
    ADD CONSTRAINT przemysl_translations_pkey PRIMARY KEY (id);

--
-- Name: partners partners_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partners
    ADD CONSTRAINT partners_pkey PRIMARY KEY (id);

--
-- Name: partners_translations partners_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partners_translations
    ADD CONSTRAINT partners_translations_pkey PRIMARY KEY (id);

--
-- Name: partnerforms partnerforms_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partnerforms
    ADD CONSTRAINT partnerforms_pkey PRIMARY KEY (id);

--
-- Name: partner_translations partner_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.partner_translations
    ADD CONSTRAINT partner_translations_pkey PRIMARY KEY (id);

--
-- Name: ourfeatures ourfeatures_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.ourfeatures
    ADD CONSTRAINT ourfeatures_pkey PRIMARY KEY (id);

--
-- Name: ourfeature_translations ourfeature_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.ourfeature_translations
    ADD CONSTRAINT ourfeature_translations_pkey PRIMARY KEY (id);

--
-- Name: lublins lublins_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.lublins
    ADD CONSTRAINT lublins_pkey PRIMARY KEY (id);

--
-- Name: lublin_translations lublin_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.lublin_translations
    ADD CONSTRAINT lublin_translations_pkey PRIMARY KEY (id);

--
-- Name: landings landings_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.landings
    ADD CONSTRAINT landings_pkey PRIMARY KEY (id);

--
-- Name: landing_translations landing_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.landing_translations
    ADD CONSTRAINT landing_translations_pkey PRIMARY KEY (id);

--
-- Name: krakows krakows_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.krakows
    ADD CONSTRAINT krakows_pkey PRIMARY KEY (id);

--
-- Name: krakow_translations krakow_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.krakow_translations
    ADD CONSTRAINT krakow_translations_pkey PRIMARY KEY (id);

--
-- Name: infos infos_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.infos
    ADD CONSTRAINT infos_pkey PRIMARY KEY (id);

--
-- Name: info_translations info_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.info_translations
    ADD CONSTRAINT info_translations_pkey PRIMARY KEY (id);

--
-- Name: howitworks howitworks_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.howitworks
    ADD CONSTRAINT howitworks_pkey PRIMARY KEY (id);

--
-- Name: howitwork_translations howitwork_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.howitwork_translations
    ADD CONSTRAINT howitwork_translations_pkey PRIMARY KEY (id);

--
-- Name: contacts contacts_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.contacts
    ADD CONSTRAINT contacts_pkey PRIMARY KEY (id);

--
-- Name: contact_translations contact_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.contact_translations
    ADD CONSTRAINT contact_translations_pkey PRIMARY KEY (id);

--
-- Name: consultations consultations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.consultations
    ADD CONSTRAINT consultations_pkey PRIMARY KEY (id);

--
-- Name: clientemails clientemails_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.clientemails
    ADD CONSTRAINT clientemails_pkey PRIMARY KEY (id);

--
-- Name: chelms chelms_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.chelms
    ADD CONSTRAINT chelms_pkey PRIMARY KEY (id);

--
-- Name: chelm_translations chelm_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.chelm_translations
    ADD CONSTRAINT chelm_translations_pkey PRIMARY KEY (id);

--
-- Name: ckeditor_assets ckeditor_assets_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.ckeditor_assets
    ADD CONSTRAINT ckeditor_assets_pkey PRIMARY KEY (id);

--
-- Name: authentications authentications_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.authentications
    ADD CONSTRAINT authentications_pkey PRIMARY KEY (id);

--
-- Name: addresses addresses_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.addresses
    ADD CONSTRAINT addresses_pkey PRIMARY KEY (id);

--
-- Name: address_translations address_translations_pkey; Type: CONSTRAINT; Schema: public; Owner: shadow
--

ALTER TABLE ONLY public.address_translations
    ADD CONSTRAINT address_translations_pkey PRIMARY KEY (id);

--
-- Name: idx_290752_unique_schema_migrations; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290752_unique_schema_migrations ON public.schema_migrations USING btree (version);


--
-- Name: idx_290760_partners_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290760_partners_pkey ON public.partners USING btree (id);


--
-- Name: idx_290769_reviews_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290769_reviews_pkey ON public.reviews USING btree (id);


--
-- Name: idx_290778_landings_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290778_landings_pkey ON public.landings USING btree (id);


--
-- Name: idx_290787_howitworks_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290787_howitworks_pkey ON public.howitworks USING btree (id);


--
-- Name: idx_290796_ourfeatures_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290796_ourfeatures_pkey ON public.ourfeatures USING btree (id);


--
-- Name: idx_290805_infos_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290805_infos_pkey ON public.infos USING btree (id);


--
-- Name: idx_290814_index_info_translations_on_info_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290814_index_info_translations_on_info_id ON public.info_translations USING btree (info_id);


--
-- Name: idx_290814_index_info_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290814_index_info_translations_on_locale ON public.info_translations USING btree (locale);


--
-- Name: idx_290814_info_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290814_info_translations_pkey ON public.info_translations USING btree (id);


--
-- Name: idx_290823_index_ourfeature_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290823_index_ourfeature_translations_on_locale ON public.ourfeature_translations USING btree (locale);


--
-- Name: idx_290823_index_ourfeature_translations_on_ourfeature_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290823_index_ourfeature_translations_on_ourfeature_id ON public.ourfeature_translations USING btree (ourfeature_id);


--
-- Name: idx_290823_ourfeature_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290823_ourfeature_translations_pkey ON public.ourfeature_translations USING btree (id);


--
-- Name: idx_290832_howitwork_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290832_howitwork_translations_pkey ON public.howitwork_translations USING btree (id);


--
-- Name: idx_290832_index_howitwork_translations_on_howitwork_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290832_index_howitwork_translations_on_howitwork_id ON public.howitwork_translations USING btree (howitwork_id);


--
-- Name: idx_290832_index_howitwork_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290832_index_howitwork_translations_on_locale ON public.howitwork_translations USING btree (locale);


--
-- Name: idx_290841_index_landing_translations_on_landing_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290841_index_landing_translations_on_landing_id ON public.landing_translations USING btree (landing_id);


--
-- Name: idx_290841_index_landing_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290841_index_landing_translations_on_locale ON public.landing_translations USING btree (locale);


--
-- Name: idx_290841_landing_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290841_landing_translations_pkey ON public.landing_translations USING btree (id);


--
-- Name: idx_290848_partners_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290848_partners_translations_pkey ON public.partners_translations USING btree (id);


--
-- Name: idx_290853_index_review_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290853_index_review_translations_on_locale ON public.review_translations USING btree (locale);


--
-- Name: idx_290853_index_review_translations_on_review_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290853_index_review_translations_on_review_id ON public.review_translations USING btree (review_id);


--
-- Name: idx_290853_review_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290853_review_translations_pkey ON public.review_translations USING btree (id);


--
-- Name: idx_290862_index_partner_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290862_index_partner_translations_on_locale ON public.partner_translations USING btree (locale);


--
-- Name: idx_290862_index_partner_translations_on_partner_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290862_index_partner_translations_on_partner_id ON public.partner_translations USING btree (partner_id);


--
-- Name: idx_290862_partner_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290862_partner_translations_pkey ON public.partner_translations USING btree (id);


--
-- Name: idx_290871_consultations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290871_consultations_pkey ON public.consultations USING btree (id);


--
-- Name: idx_290880_partnerforms_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290880_partnerforms_pkey ON public.partnerforms USING btree (id);


--
-- Name: idx_290889_addresses_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290889_addresses_pkey ON public.addresses USING btree (id);


--
-- Name: idx_290898_address_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290898_address_translations_pkey ON public.address_translations USING btree (id);


--
-- Name: idx_290898_index_address_translations_on_address_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290898_index_address_translations_on_address_id ON public.address_translations USING btree (address_id);


--
-- Name: idx_290898_index_address_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290898_index_address_translations_on_locale ON public.address_translations USING btree (locale);


--
-- Name: idx_290907_contacts_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290907_contacts_pkey ON public.contacts USING btree (id);


--
-- Name: idx_290916_seos_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290916_seos_pkey ON public.seos USING btree (id);


--
-- Name: idx_290925_index_seo_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290925_index_seo_translations_on_locale ON public.seo_translations USING btree (locale);


--
-- Name: idx_290925_index_seo_translations_on_seo_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290925_index_seo_translations_on_seo_id ON public.seo_translations USING btree (seo_id);


--
-- Name: idx_290925_seo_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290925_seo_translations_pkey ON public.seo_translations USING btree (id);


--
-- Name: idx_290934_rules_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290934_rules_pkey ON public.rules USING btree (id);


--
-- Name: idx_290943_index_rule_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290943_index_rule_translations_on_locale ON public.rule_translations USING btree (locale);


--
-- Name: idx_290943_index_rule_translations_on_rule_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290943_index_rule_translations_on_rule_id ON public.rule_translations USING btree (rule_id);


--
-- Name: idx_290943_rule_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290943_rule_translations_pkey ON public.rule_translations USING btree (id);


--
-- Name: idx_290950_ckeditor_assets_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290950_ckeditor_assets_pkey ON public.ckeditor_assets USING btree (id);


--
-- Name: idx_290950_index_ckeditor_assets_on_type; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290950_index_ckeditor_assets_on_type ON public.ckeditor_assets USING btree (type);


--
-- Name: idx_290958_socials_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290958_socials_pkey ON public.socials USING btree (id);


--
-- Name: idx_290967_warsaws_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290967_warsaws_pkey ON public.warsaws USING btree (id);


--
-- Name: idx_290976_index_warsaw_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290976_index_warsaw_translations_on_locale ON public.warsaw_translations USING btree (locale);


--
-- Name: idx_290976_index_warsaw_translations_on_warsaw_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290976_index_warsaw_translations_on_warsaw_id ON public.warsaw_translations USING btree (warsaw_id);


--
-- Name: idx_290976_warsaw_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290976_warsaw_translations_pkey ON public.warsaw_translations USING btree (id);


--
-- Name: idx_290985_krakows_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290985_krakows_pkey ON public.krakows USING btree (id);


--
-- Name: idx_290994_index_krakow_translations_on_krakow_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290994_index_krakow_translations_on_krakow_id ON public.krakow_translations USING btree (krakow_id);


--
-- Name: idx_290994_index_krakow_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_290994_index_krakow_translations_on_locale ON public.krakow_translations USING btree (locale);


--
-- Name: idx_290994_krakow_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_290994_krakow_translations_pkey ON public.krakow_translations USING btree (id);


--
-- Name: idx_291003_lublins_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291003_lublins_pkey ON public.lublins USING btree (id);


--
-- Name: idx_291012_index_lublin_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291012_index_lublin_translations_on_locale ON public.lublin_translations USING btree (locale);


--
-- Name: idx_291012_index_lublin_translations_on_lublin_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291012_index_lublin_translations_on_lublin_id ON public.lublin_translations USING btree (lublin_id);


--
-- Name: idx_291012_lublin_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291012_lublin_translations_pkey ON public.lublin_translations USING btree (id);


--
-- Name: idx_291021_chelms_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291021_chelms_pkey ON public.chelms USING btree (id);


--
-- Name: idx_291030_chelm_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291030_chelm_translations_pkey ON public.chelm_translations USING btree (id);


--
-- Name: idx_291030_index_chelm_translations_on_chelm_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291030_index_chelm_translations_on_chelm_id ON public.chelm_translations USING btree (chelm_id);


--
-- Name: idx_291030_index_chelm_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291030_index_chelm_translations_on_locale ON public.chelm_translations USING btree (locale);


--
-- Name: idx_291039_przemysls_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291039_przemysls_pkey ON public.przemysls USING btree (id);


--
-- Name: idx_291048_index_przemysl_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291048_index_przemysl_translations_on_locale ON public.przemysl_translations USING btree (locale);


--
-- Name: idx_291048_index_przemysl_translations_on_przemysl_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291048_index_przemysl_translations_on_przemysl_id ON public.przemysl_translations USING btree (przemysl_id);


--
-- Name: idx_291048_przemysl_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291048_przemysl_translations_pkey ON public.przemysl_translations USING btree (id);


--
-- Name: idx_291057_contact_translations_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291057_contact_translations_pkey ON public.contact_translations USING btree (id);


--
-- Name: idx_291057_index_contact_translations_on_contact_id; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291057_index_contact_translations_on_contact_id ON public.contact_translations USING btree (contact_id);


--
-- Name: idx_291057_index_contact_translations_on_locale; Type: INDEX; Schema: public; Owner: shadow
--

CREATE INDEX idx_291057_index_contact_translations_on_locale ON public.contact_translations USING btree (locale);


--
-- Name: idx_291066_clientemails_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291066_clientemails_pkey ON public.clientemails USING btree (id);


--
-- Name: idx_291075_authentications_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291075_authentications_pkey ON public.authentications USING btree (id);


--
-- Name: idx_291084_index_users_on_email; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291084_index_users_on_email ON public.users USING btree (email);


--
-- Name: idx_291084_index_users_on_reset_password_token; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291084_index_users_on_reset_password_token ON public.users USING btree (reset_password_token);


--
-- Name: idx_291084_users_pkey; Type: INDEX; Schema: public; Owner: shadow
--

CREATE UNIQUE INDEX idx_291084_users_pkey ON public.users USING btree (id);


--
-- PostgreSQL database dump complete
--

