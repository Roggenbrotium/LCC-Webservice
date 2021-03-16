--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-0ubuntu0.20.04.1)

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

--
-- Name: tcn; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS tcn WITH SCHEMA public;


--
-- Name: EXTENSION tcn; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION tcn IS 'Triggered change notifications';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: data; Type: TABLE; Schema: public; Owner: praktikum
--

CREATE TABLE public.data (
    id integer NOT NULL,
    uuid character varying(36),
    instancetype integer,
    version character varying(20),
    status integer,
    "timestamp" timestamp without time zone,
    publickey oid,
    ipaddress character varying(15),
    role integer
);


ALTER TABLE public.data OWNER TO praktikum;

--
-- Name: data_id_seq; Type: SEQUENCE; Schema: public; Owner: praktikum
--

CREATE SEQUENCE public.data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.data_id_seq OWNER TO praktikum;

--
-- Name: data_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: praktikum
--

ALTER SEQUENCE public.data_id_seq OWNED BY public.data.id;


--
-- Name: tenants; Type: TABLE; Schema: public; Owner: praktikum
--

CREATE TABLE public.tenants (
    id integer NOT NULL,
    systemid integer NOT NULL,
    externalid integer NOT NULL,
    name character varying(255),
    expirationdate date NOT NULL
);


ALTER TABLE public.tenants OWNER TO praktikum;

--
-- Name: tenants_id_seq; Type: SEQUENCE; Schema: public; Owner: praktikum
--

CREATE SEQUENCE public.tenants_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tenants_id_seq OWNER TO praktikum;

--
-- Name: tenants_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: praktikum
--

ALTER SEQUENCE public.tenants_id_seq OWNED BY public.tenants.id;


--
-- Name: data id; Type: DEFAULT; Schema: public; Owner: praktikum
--

ALTER TABLE ONLY public.data ALTER COLUMN id SET DEFAULT nextval('public.data_id_seq'::regclass);


--
-- Name: tenants id; Type: DEFAULT; Schema: public; Owner: praktikum
--

ALTER TABLE ONLY public.tenants ALTER COLUMN id SET DEFAULT nextval('public.tenants_id_seq'::regclass);


--
-- Name: 16453; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16453');


ALTER LARGE OBJECT 16453 OWNER TO praktikum;

--
-- Name: 16454; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16454');


ALTER LARGE OBJECT 16454 OWNER TO praktikum;

--
-- Name: 16455; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16455');


ALTER LARGE OBJECT 16455 OWNER TO praktikum;

--
-- Name: 16456; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16456');


ALTER LARGE OBJECT 16456 OWNER TO praktikum;

--
-- Name: 16457; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16457');


ALTER LARGE OBJECT 16457 OWNER TO praktikum;

--
-- Name: 16458; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16458');


ALTER LARGE OBJECT 16458 OWNER TO praktikum;

--
-- Name: 16459; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16459');


ALTER LARGE OBJECT 16459 OWNER TO praktikum;

--
-- Name: 16460; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16460');


ALTER LARGE OBJECT 16460 OWNER TO praktikum;

--
-- Name: 16461; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16461');


ALTER LARGE OBJECT 16461 OWNER TO praktikum;

--
-- Name: 16462; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16462');


ALTER LARGE OBJECT 16462 OWNER TO praktikum;

--
-- Name: 16463; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16463');


ALTER LARGE OBJECT 16463 OWNER TO praktikum;

--
-- Name: 16464; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16464');


ALTER LARGE OBJECT 16464 OWNER TO praktikum;

--
-- Name: 16465; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16465');


ALTER LARGE OBJECT 16465 OWNER TO praktikum;

--
-- Name: 16466; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16466');


ALTER LARGE OBJECT 16466 OWNER TO praktikum;

--
-- Name: 16467; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16467');


ALTER LARGE OBJECT 16467 OWNER TO praktikum;

--
-- Name: 16468; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16468');


ALTER LARGE OBJECT 16468 OWNER TO praktikum;

--
-- Name: 16469; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16469');


ALTER LARGE OBJECT 16469 OWNER TO praktikum;

--
-- Name: 16470; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16470');


ALTER LARGE OBJECT 16470 OWNER TO praktikum;

--
-- Name: 16471; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16471');


ALTER LARGE OBJECT 16471 OWNER TO praktikum;

--
-- Name: 16472; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16472');


ALTER LARGE OBJECT 16472 OWNER TO praktikum;

--
-- Name: 16473; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16473');


ALTER LARGE OBJECT 16473 OWNER TO praktikum;

--
-- Name: 16474; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16474');


ALTER LARGE OBJECT 16474 OWNER TO praktikum;

--
-- Name: 16475; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16475');


ALTER LARGE OBJECT 16475 OWNER TO praktikum;

--
-- Name: 16476; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16476');


ALTER LARGE OBJECT 16476 OWNER TO praktikum;

--
-- Name: 16477; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16477');


ALTER LARGE OBJECT 16477 OWNER TO praktikum;

--
-- Name: 16478; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16478');


ALTER LARGE OBJECT 16478 OWNER TO praktikum;

--
-- Name: 16479; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16479');


ALTER LARGE OBJECT 16479 OWNER TO praktikum;

--
-- Name: 16480; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16480');


ALTER LARGE OBJECT 16480 OWNER TO praktikum;

--
-- Name: 16481; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16481');


ALTER LARGE OBJECT 16481 OWNER TO praktikum;

--
-- Name: 16482; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16482');


ALTER LARGE OBJECT 16482 OWNER TO praktikum;

--
-- Name: 16483; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16483');


ALTER LARGE OBJECT 16483 OWNER TO praktikum;

--
-- Name: 16484; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16484');


ALTER LARGE OBJECT 16484 OWNER TO praktikum;

--
-- Name: 16485; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16485');


ALTER LARGE OBJECT 16485 OWNER TO praktikum;

--
-- Name: 16486; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16486');


ALTER LARGE OBJECT 16486 OWNER TO praktikum;

--
-- Name: 16487; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16487');


ALTER LARGE OBJECT 16487 OWNER TO praktikum;

--
-- Name: 16488; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16488');


ALTER LARGE OBJECT 16488 OWNER TO praktikum;

--
-- Name: 16489; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16489');


ALTER LARGE OBJECT 16489 OWNER TO praktikum;

--
-- Name: 16490; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16490');


ALTER LARGE OBJECT 16490 OWNER TO praktikum;

--
-- Name: 16491; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16491');


ALTER LARGE OBJECT 16491 OWNER TO praktikum;

--
-- Name: 16492; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16492');


ALTER LARGE OBJECT 16492 OWNER TO praktikum;

--
-- Name: 16493; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16493');


ALTER LARGE OBJECT 16493 OWNER TO praktikum;

--
-- Name: 16494; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16494');


ALTER LARGE OBJECT 16494 OWNER TO praktikum;

--
-- Name: 16495; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16495');


ALTER LARGE OBJECT 16495 OWNER TO praktikum;

--
-- Name: 16496; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16496');


ALTER LARGE OBJECT 16496 OWNER TO praktikum;

--
-- Name: 16497; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16497');


ALTER LARGE OBJECT 16497 OWNER TO praktikum;

--
-- Name: 16498; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16498');


ALTER LARGE OBJECT 16498 OWNER TO praktikum;

--
-- Name: 16499; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16499');


ALTER LARGE OBJECT 16499 OWNER TO praktikum;

--
-- Name: 16500; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16500');


ALTER LARGE OBJECT 16500 OWNER TO praktikum;

--
-- Name: 16501; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16501');


ALTER LARGE OBJECT 16501 OWNER TO praktikum;

--
-- Name: 16502; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16502');


ALTER LARGE OBJECT 16502 OWNER TO praktikum;

--
-- Name: 16503; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16503');


ALTER LARGE OBJECT 16503 OWNER TO praktikum;

--
-- Name: 16505; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16505');


ALTER LARGE OBJECT 16505 OWNER TO praktikum;

--
-- Name: 16506; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16506');


ALTER LARGE OBJECT 16506 OWNER TO praktikum;

--
-- Name: 16507; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16507');


ALTER LARGE OBJECT 16507 OWNER TO praktikum;

--
-- Name: 16508; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16508');


ALTER LARGE OBJECT 16508 OWNER TO praktikum;

--
-- Name: 16509; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16509');


ALTER LARGE OBJECT 16509 OWNER TO praktikum;

--
-- Name: 16510; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16510');


ALTER LARGE OBJECT 16510 OWNER TO praktikum;

--
-- Name: 16511; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16511');


ALTER LARGE OBJECT 16511 OWNER TO praktikum;

--
-- Name: 16512; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16512');


ALTER LARGE OBJECT 16512 OWNER TO praktikum;

--
-- Name: 16513; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16513');


ALTER LARGE OBJECT 16513 OWNER TO praktikum;

--
-- Name: 16514; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16514');


ALTER LARGE OBJECT 16514 OWNER TO praktikum;

--
-- Name: 16515; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16515');


ALTER LARGE OBJECT 16515 OWNER TO praktikum;

--
-- Name: 16516; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16516');


ALTER LARGE OBJECT 16516 OWNER TO praktikum;

--
-- Name: 16517; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16517');


ALTER LARGE OBJECT 16517 OWNER TO praktikum;

--
-- Name: 16518; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16518');


ALTER LARGE OBJECT 16518 OWNER TO praktikum;

--
-- Name: 16519; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16519');


ALTER LARGE OBJECT 16519 OWNER TO praktikum;

--
-- Name: 16520; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16520');


ALTER LARGE OBJECT 16520 OWNER TO praktikum;

--
-- Name: 16521; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16521');


ALTER LARGE OBJECT 16521 OWNER TO praktikum;

--
-- Name: 16522; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16522');


ALTER LARGE OBJECT 16522 OWNER TO praktikum;

--
-- Name: 16523; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16523');


ALTER LARGE OBJECT 16523 OWNER TO praktikum;

--
-- Name: 16524; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16524');


ALTER LARGE OBJECT 16524 OWNER TO praktikum;

--
-- Name: 16525; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16525');


ALTER LARGE OBJECT 16525 OWNER TO praktikum;

--
-- Name: 16526; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16526');


ALTER LARGE OBJECT 16526 OWNER TO praktikum;

--
-- Name: 16527; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16527');


ALTER LARGE OBJECT 16527 OWNER TO praktikum;

--
-- Name: 16528; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16528');


ALTER LARGE OBJECT 16528 OWNER TO praktikum;

--
-- Name: 16529; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16529');


ALTER LARGE OBJECT 16529 OWNER TO praktikum;

--
-- Name: 16530; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16530');


ALTER LARGE OBJECT 16530 OWNER TO praktikum;

--
-- Name: 16531; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16531');


ALTER LARGE OBJECT 16531 OWNER TO praktikum;

--
-- Name: 16532; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16532');


ALTER LARGE OBJECT 16532 OWNER TO praktikum;

--
-- Name: 16533; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16533');


ALTER LARGE OBJECT 16533 OWNER TO praktikum;

--
-- Name: 16534; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16534');


ALTER LARGE OBJECT 16534 OWNER TO praktikum;

--
-- Name: 16535; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16535');


ALTER LARGE OBJECT 16535 OWNER TO praktikum;

--
-- Name: 16536; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16536');


ALTER LARGE OBJECT 16536 OWNER TO praktikum;

--
-- Name: 16537; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16537');


ALTER LARGE OBJECT 16537 OWNER TO praktikum;

--
-- Name: 16538; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16538');


ALTER LARGE OBJECT 16538 OWNER TO praktikum;

--
-- Name: 16539; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16539');


ALTER LARGE OBJECT 16539 OWNER TO praktikum;

--
-- Name: 16540; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16540');


ALTER LARGE OBJECT 16540 OWNER TO praktikum;

--
-- Name: 16541; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16541');


ALTER LARGE OBJECT 16541 OWNER TO praktikum;

--
-- Name: 16542; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16542');


ALTER LARGE OBJECT 16542 OWNER TO praktikum;

--
-- Name: 16543; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16543');


ALTER LARGE OBJECT 16543 OWNER TO praktikum;

--
-- Name: 16544; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16544');


ALTER LARGE OBJECT 16544 OWNER TO praktikum;

--
-- Name: 16545; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16545');


ALTER LARGE OBJECT 16545 OWNER TO praktikum;

--
-- Name: 16546; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16546');


ALTER LARGE OBJECT 16546 OWNER TO praktikum;

--
-- Name: 16547; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16547');


ALTER LARGE OBJECT 16547 OWNER TO praktikum;

--
-- Name: 16548; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16548');


ALTER LARGE OBJECT 16548 OWNER TO praktikum;

--
-- Name: 16549; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16549');


ALTER LARGE OBJECT 16549 OWNER TO praktikum;

--
-- Name: 16550; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16550');


ALTER LARGE OBJECT 16550 OWNER TO praktikum;

--
-- Name: 16551; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16551');


ALTER LARGE OBJECT 16551 OWNER TO praktikum;

--
-- Name: 16552; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16552');


ALTER LARGE OBJECT 16552 OWNER TO praktikum;

--
-- Name: 16553; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16553');


ALTER LARGE OBJECT 16553 OWNER TO praktikum;

--
-- Name: 16554; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16554');


ALTER LARGE OBJECT 16554 OWNER TO praktikum;

--
-- Name: 16555; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16555');


ALTER LARGE OBJECT 16555 OWNER TO praktikum;

--
-- Name: 16556; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16556');


ALTER LARGE OBJECT 16556 OWNER TO praktikum;

--
-- Name: 16557; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16557');


ALTER LARGE OBJECT 16557 OWNER TO praktikum;

--
-- Name: 16558; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16558');


ALTER LARGE OBJECT 16558 OWNER TO praktikum;

--
-- Name: 16559; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16559');


ALTER LARGE OBJECT 16559 OWNER TO praktikum;

--
-- Name: 16560; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16560');


ALTER LARGE OBJECT 16560 OWNER TO praktikum;

--
-- Name: 16561; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16561');


ALTER LARGE OBJECT 16561 OWNER TO praktikum;

--
-- Name: 16562; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16562');


ALTER LARGE OBJECT 16562 OWNER TO praktikum;

--
-- Name: 16563; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16563');


ALTER LARGE OBJECT 16563 OWNER TO praktikum;

--
-- Name: 16566; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16566');


ALTER LARGE OBJECT 16566 OWNER TO praktikum;

--
-- Name: 16567; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16567');


ALTER LARGE OBJECT 16567 OWNER TO praktikum;

--
-- Name: 16568; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16568');


ALTER LARGE OBJECT 16568 OWNER TO praktikum;

--
-- Name: 16569; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16569');


ALTER LARGE OBJECT 16569 OWNER TO praktikum;

--
-- Name: 16570; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16570');


ALTER LARGE OBJECT 16570 OWNER TO praktikum;

--
-- Name: 16571; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16571');


ALTER LARGE OBJECT 16571 OWNER TO praktikum;

--
-- Name: 16572; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16572');


ALTER LARGE OBJECT 16572 OWNER TO praktikum;

--
-- Name: 16573; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16573');


ALTER LARGE OBJECT 16573 OWNER TO praktikum;

--
-- Name: 16574; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16574');


ALTER LARGE OBJECT 16574 OWNER TO praktikum;

--
-- Name: 16575; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16575');


ALTER LARGE OBJECT 16575 OWNER TO praktikum;

--
-- Name: 16576; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16576');


ALTER LARGE OBJECT 16576 OWNER TO praktikum;

--
-- Name: 16577; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16577');


ALTER LARGE OBJECT 16577 OWNER TO praktikum;

--
-- Name: 16578; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16578');


ALTER LARGE OBJECT 16578 OWNER TO praktikum;

--
-- Name: 16579; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16579');


ALTER LARGE OBJECT 16579 OWNER TO praktikum;

--
-- Name: 16580; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16580');


ALTER LARGE OBJECT 16580 OWNER TO praktikum;

--
-- Name: 16581; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16581');


ALTER LARGE OBJECT 16581 OWNER TO praktikum;

--
-- Name: 16582; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16582');


ALTER LARGE OBJECT 16582 OWNER TO praktikum;

--
-- Name: 16583; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16583');


ALTER LARGE OBJECT 16583 OWNER TO praktikum;

--
-- Name: 16584; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16584');


ALTER LARGE OBJECT 16584 OWNER TO praktikum;

--
-- Name: 16585; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16585');


ALTER LARGE OBJECT 16585 OWNER TO praktikum;

--
-- Name: 16586; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16586');


ALTER LARGE OBJECT 16586 OWNER TO praktikum;

--
-- Name: 16587; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16587');


ALTER LARGE OBJECT 16587 OWNER TO praktikum;

--
-- Name: 16588; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16588');


ALTER LARGE OBJECT 16588 OWNER TO praktikum;

--
-- Name: 16589; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16589');


ALTER LARGE OBJECT 16589 OWNER TO praktikum;

--
-- Name: 16590; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16590');


ALTER LARGE OBJECT 16590 OWNER TO praktikum;

--
-- Name: 16591; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16591');


ALTER LARGE OBJECT 16591 OWNER TO praktikum;

--
-- Name: 16592; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16592');


ALTER LARGE OBJECT 16592 OWNER TO praktikum;

--
-- Name: 16593; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16593');


ALTER LARGE OBJECT 16593 OWNER TO praktikum;

--
-- Name: 16594; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16594');


ALTER LARGE OBJECT 16594 OWNER TO praktikum;

--
-- Name: 16595; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16595');


ALTER LARGE OBJECT 16595 OWNER TO praktikum;

--
-- Name: 16596; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16596');


ALTER LARGE OBJECT 16596 OWNER TO praktikum;

--
-- Name: 16597; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16597');


ALTER LARGE OBJECT 16597 OWNER TO praktikum;

--
-- Name: 16598; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16598');


ALTER LARGE OBJECT 16598 OWNER TO praktikum;

--
-- Name: 16599; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16599');


ALTER LARGE OBJECT 16599 OWNER TO praktikum;

--
-- Name: 16600; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16600');


ALTER LARGE OBJECT 16600 OWNER TO praktikum;

--
-- Name: 16601; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16601');


ALTER LARGE OBJECT 16601 OWNER TO praktikum;

--
-- Name: 16602; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16602');


ALTER LARGE OBJECT 16602 OWNER TO praktikum;

--
-- Name: 16603; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16603');


ALTER LARGE OBJECT 16603 OWNER TO praktikum;

--
-- Name: 16604; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16604');


ALTER LARGE OBJECT 16604 OWNER TO praktikum;

--
-- Name: 16605; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16605');


ALTER LARGE OBJECT 16605 OWNER TO praktikum;

--
-- Name: 16606; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16606');


ALTER LARGE OBJECT 16606 OWNER TO praktikum;

--
-- Name: 16607; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16607');


ALTER LARGE OBJECT 16607 OWNER TO praktikum;

--
-- Name: 16608; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16608');


ALTER LARGE OBJECT 16608 OWNER TO praktikum;

--
-- Name: 16609; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16609');


ALTER LARGE OBJECT 16609 OWNER TO praktikum;

--
-- Name: 16610; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16610');


ALTER LARGE OBJECT 16610 OWNER TO praktikum;

--
-- Name: 16611; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16611');


ALTER LARGE OBJECT 16611 OWNER TO praktikum;

--
-- Name: 16612; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16612');


ALTER LARGE OBJECT 16612 OWNER TO praktikum;

--
-- Name: 16613; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16613');


ALTER LARGE OBJECT 16613 OWNER TO praktikum;

--
-- Name: 16614; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16614');


ALTER LARGE OBJECT 16614 OWNER TO praktikum;

--
-- Name: 16615; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16615');


ALTER LARGE OBJECT 16615 OWNER TO praktikum;

--
-- Name: 16616; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16616');


ALTER LARGE OBJECT 16616 OWNER TO praktikum;

--
-- Name: 16617; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16617');


ALTER LARGE OBJECT 16617 OWNER TO praktikum;

--
-- Name: 16618; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16618');


ALTER LARGE OBJECT 16618 OWNER TO praktikum;

--
-- Name: 16619; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16619');


ALTER LARGE OBJECT 16619 OWNER TO praktikum;

--
-- Name: 16620; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16620');


ALTER LARGE OBJECT 16620 OWNER TO praktikum;

--
-- Name: 16621; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16621');


ALTER LARGE OBJECT 16621 OWNER TO praktikum;

--
-- Name: 16622; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16622');


ALTER LARGE OBJECT 16622 OWNER TO praktikum;

--
-- Name: 16623; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16623');


ALTER LARGE OBJECT 16623 OWNER TO praktikum;

--
-- Name: 16624; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16624');


ALTER LARGE OBJECT 16624 OWNER TO praktikum;

--
-- Name: 16625; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16625');


ALTER LARGE OBJECT 16625 OWNER TO praktikum;

--
-- Name: 16626; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16626');


ALTER LARGE OBJECT 16626 OWNER TO praktikum;

--
-- Name: 16627; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16627');


ALTER LARGE OBJECT 16627 OWNER TO praktikum;

--
-- Name: 16630; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16630');


ALTER LARGE OBJECT 16630 OWNER TO praktikum;

--
-- Name: 16631; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16631');


ALTER LARGE OBJECT 16631 OWNER TO praktikum;

--
-- Name: 16632; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16632');


ALTER LARGE OBJECT 16632 OWNER TO praktikum;

--
-- Name: 16633; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16633');


ALTER LARGE OBJECT 16633 OWNER TO praktikum;

--
-- Name: 16634; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16634');


ALTER LARGE OBJECT 16634 OWNER TO praktikum;

--
-- Name: 16635; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16635');


ALTER LARGE OBJECT 16635 OWNER TO praktikum;

--
-- Name: 16636; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16636');


ALTER LARGE OBJECT 16636 OWNER TO praktikum;

--
-- Name: 16637; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16637');


ALTER LARGE OBJECT 16637 OWNER TO praktikum;

--
-- Name: 16638; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16638');


ALTER LARGE OBJECT 16638 OWNER TO praktikum;

--
-- Name: 16639; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16639');


ALTER LARGE OBJECT 16639 OWNER TO praktikum;

--
-- Name: 16640; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16640');


ALTER LARGE OBJECT 16640 OWNER TO praktikum;

--
-- Name: 16641; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16641');


ALTER LARGE OBJECT 16641 OWNER TO praktikum;

--
-- Name: 16642; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16642');


ALTER LARGE OBJECT 16642 OWNER TO praktikum;

--
-- Name: 16643; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16643');


ALTER LARGE OBJECT 16643 OWNER TO praktikum;

--
-- Name: 16644; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16644');


ALTER LARGE OBJECT 16644 OWNER TO praktikum;

--
-- Name: 16645; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16645');


ALTER LARGE OBJECT 16645 OWNER TO praktikum;

--
-- Name: 16646; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16646');


ALTER LARGE OBJECT 16646 OWNER TO praktikum;

--
-- Name: 16647; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16647');


ALTER LARGE OBJECT 16647 OWNER TO praktikum;

--
-- Name: 16648; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16648');


ALTER LARGE OBJECT 16648 OWNER TO praktikum;

--
-- Name: 16649; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16649');


ALTER LARGE OBJECT 16649 OWNER TO praktikum;

--
-- Name: 16650; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16650');


ALTER LARGE OBJECT 16650 OWNER TO praktikum;

--
-- Name: 16651; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16651');


ALTER LARGE OBJECT 16651 OWNER TO praktikum;

--
-- Name: 16652; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16652');


ALTER LARGE OBJECT 16652 OWNER TO praktikum;

--
-- Name: 16653; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16653');


ALTER LARGE OBJECT 16653 OWNER TO praktikum;

--
-- Name: 16654; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16654');


ALTER LARGE OBJECT 16654 OWNER TO praktikum;

--
-- Name: 16655; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16655');


ALTER LARGE OBJECT 16655 OWNER TO praktikum;

--
-- Name: 16656; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16656');


ALTER LARGE OBJECT 16656 OWNER TO praktikum;

--
-- Name: 16657; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16657');


ALTER LARGE OBJECT 16657 OWNER TO praktikum;

--
-- Name: 16658; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16658');


ALTER LARGE OBJECT 16658 OWNER TO praktikum;

--
-- Name: 16659; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16659');


ALTER LARGE OBJECT 16659 OWNER TO praktikum;

--
-- Name: 16660; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16660');


ALTER LARGE OBJECT 16660 OWNER TO praktikum;

--
-- Name: 16661; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16661');


ALTER LARGE OBJECT 16661 OWNER TO praktikum;

--
-- Name: 16662; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16662');


ALTER LARGE OBJECT 16662 OWNER TO praktikum;

--
-- Name: 16663; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16663');


ALTER LARGE OBJECT 16663 OWNER TO praktikum;

--
-- Name: 16664; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16664');


ALTER LARGE OBJECT 16664 OWNER TO praktikum;

--
-- Name: 16665; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16665');


ALTER LARGE OBJECT 16665 OWNER TO praktikum;

--
-- Name: 16666; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16666');


ALTER LARGE OBJECT 16666 OWNER TO praktikum;

--
-- Name: 16667; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16667');


ALTER LARGE OBJECT 16667 OWNER TO praktikum;

--
-- Name: 16668; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16668');


ALTER LARGE OBJECT 16668 OWNER TO praktikum;

--
-- Name: 16669; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16669');


ALTER LARGE OBJECT 16669 OWNER TO praktikum;

--
-- Name: 16670; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16670');


ALTER LARGE OBJECT 16670 OWNER TO praktikum;

--
-- Name: 16671; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16671');


ALTER LARGE OBJECT 16671 OWNER TO praktikum;

--
-- Name: 16672; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16672');


ALTER LARGE OBJECT 16672 OWNER TO praktikum;

--
-- Name: 16677; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16677');


ALTER LARGE OBJECT 16677 OWNER TO praktikum;

--
-- Name: 16678; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16678');


ALTER LARGE OBJECT 16678 OWNER TO praktikum;

--
-- Name: 16679; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16679');


ALTER LARGE OBJECT 16679 OWNER TO praktikum;

--
-- Name: 16680; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16680');


ALTER LARGE OBJECT 16680 OWNER TO praktikum;

--
-- Name: 16681; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16681');


ALTER LARGE OBJECT 16681 OWNER TO praktikum;

--
-- Name: 16682; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16682');


ALTER LARGE OBJECT 16682 OWNER TO praktikum;

--
-- Name: 16683; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16683');


ALTER LARGE OBJECT 16683 OWNER TO praktikum;

--
-- Name: 16684; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16684');


ALTER LARGE OBJECT 16684 OWNER TO praktikum;

--
-- Name: 16689; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16689');


ALTER LARGE OBJECT 16689 OWNER TO praktikum;

--
-- Name: 16690; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16690');


ALTER LARGE OBJECT 16690 OWNER TO praktikum;

--
-- Name: 16691; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16691');


ALTER LARGE OBJECT 16691 OWNER TO praktikum;

--
-- Name: 16692; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16692');


ALTER LARGE OBJECT 16692 OWNER TO praktikum;

--
-- Name: 16693; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16693');


ALTER LARGE OBJECT 16693 OWNER TO praktikum;

--
-- Name: 16694; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16694');


ALTER LARGE OBJECT 16694 OWNER TO praktikum;

--
-- Name: 16695; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16695');


ALTER LARGE OBJECT 16695 OWNER TO praktikum;

--
-- Name: 16696; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16696');


ALTER LARGE OBJECT 16696 OWNER TO praktikum;

--
-- Name: 16697; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16697');


ALTER LARGE OBJECT 16697 OWNER TO praktikum;

--
-- Name: 16698; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16698');


ALTER LARGE OBJECT 16698 OWNER TO praktikum;

--
-- Name: 16699; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16699');


ALTER LARGE OBJECT 16699 OWNER TO praktikum;

--
-- Name: 16700; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16700');


ALTER LARGE OBJECT 16700 OWNER TO praktikum;

--
-- Name: 16701; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16701');


ALTER LARGE OBJECT 16701 OWNER TO praktikum;

--
-- Name: 16702; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16702');


ALTER LARGE OBJECT 16702 OWNER TO praktikum;

--
-- Name: 16703; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16703');


ALTER LARGE OBJECT 16703 OWNER TO praktikum;

--
-- Name: 16704; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16704');


ALTER LARGE OBJECT 16704 OWNER TO praktikum;

--
-- Name: 16711; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16711');


ALTER LARGE OBJECT 16711 OWNER TO praktikum;

--
-- Name: 16712; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16712');


ALTER LARGE OBJECT 16712 OWNER TO praktikum;

--
-- Name: 16713; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16713');


ALTER LARGE OBJECT 16713 OWNER TO praktikum;

--
-- Name: 16714; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16714');


ALTER LARGE OBJECT 16714 OWNER TO praktikum;

--
-- Name: 16715; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16715');


ALTER LARGE OBJECT 16715 OWNER TO praktikum;

--
-- Name: 16716; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16716');


ALTER LARGE OBJECT 16716 OWNER TO praktikum;

--
-- Name: 16717; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16717');


ALTER LARGE OBJECT 16717 OWNER TO praktikum;

--
-- Name: 16718; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16718');


ALTER LARGE OBJECT 16718 OWNER TO praktikum;

--
-- Name: 16719; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16719');


ALTER LARGE OBJECT 16719 OWNER TO praktikum;

--
-- Name: 16720; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16720');


ALTER LARGE OBJECT 16720 OWNER TO praktikum;

--
-- Name: 16721; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16721');


ALTER LARGE OBJECT 16721 OWNER TO praktikum;

--
-- Name: 16722; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16722');


ALTER LARGE OBJECT 16722 OWNER TO praktikum;

--
-- Name: 16727; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16727');


ALTER LARGE OBJECT 16727 OWNER TO praktikum;

--
-- Name: 16728; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16728');


ALTER LARGE OBJECT 16728 OWNER TO praktikum;

--
-- Name: 16729; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16729');


ALTER LARGE OBJECT 16729 OWNER TO praktikum;

--
-- Name: 16730; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16730');


ALTER LARGE OBJECT 16730 OWNER TO praktikum;

--
-- Name: 16731; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16731');


ALTER LARGE OBJECT 16731 OWNER TO praktikum;

--
-- Name: 16732; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16732');


ALTER LARGE OBJECT 16732 OWNER TO praktikum;

--
-- Name: 16733; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16733');


ALTER LARGE OBJECT 16733 OWNER TO praktikum;

--
-- Name: 16734; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16734');


ALTER LARGE OBJECT 16734 OWNER TO praktikum;

--
-- Name: 16735; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16735');


ALTER LARGE OBJECT 16735 OWNER TO praktikum;

--
-- Name: 16736; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16736');


ALTER LARGE OBJECT 16736 OWNER TO praktikum;

--
-- Name: 16737; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16737');


ALTER LARGE OBJECT 16737 OWNER TO praktikum;

--
-- Name: 16738; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16738');


ALTER LARGE OBJECT 16738 OWNER TO praktikum;

--
-- Name: 16739; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16739');


ALTER LARGE OBJECT 16739 OWNER TO praktikum;

--
-- Name: 16740; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16740');


ALTER LARGE OBJECT 16740 OWNER TO praktikum;

--
-- Name: 16741; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16741');


ALTER LARGE OBJECT 16741 OWNER TO praktikum;

--
-- Name: 16742; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16742');


ALTER LARGE OBJECT 16742 OWNER TO praktikum;

--
-- Name: 16743; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16743');


ALTER LARGE OBJECT 16743 OWNER TO praktikum;

--
-- Name: 16744; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16744');


ALTER LARGE OBJECT 16744 OWNER TO praktikum;

--
-- Name: 16745; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16745');


ALTER LARGE OBJECT 16745 OWNER TO praktikum;

--
-- Name: 16746; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16746');


ALTER LARGE OBJECT 16746 OWNER TO praktikum;

--
-- Name: 16747; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16747');


ALTER LARGE OBJECT 16747 OWNER TO praktikum;

--
-- Name: 16748; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16748');


ALTER LARGE OBJECT 16748 OWNER TO praktikum;

--
-- Name: 16749; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16749');


ALTER LARGE OBJECT 16749 OWNER TO praktikum;

--
-- Name: 16750; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16750');


ALTER LARGE OBJECT 16750 OWNER TO praktikum;

--
-- Name: 16755; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16755');


ALTER LARGE OBJECT 16755 OWNER TO praktikum;

--
-- Name: 16756; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16756');


ALTER LARGE OBJECT 16756 OWNER TO praktikum;

--
-- Name: 16757; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16757');


ALTER LARGE OBJECT 16757 OWNER TO praktikum;

--
-- Name: 16758; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16758');


ALTER LARGE OBJECT 16758 OWNER TO praktikum;

--
-- Name: 16759; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16759');


ALTER LARGE OBJECT 16759 OWNER TO praktikum;

--
-- Name: 16760; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16760');


ALTER LARGE OBJECT 16760 OWNER TO praktikum;

--
-- Name: 16761; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16761');


ALTER LARGE OBJECT 16761 OWNER TO praktikum;

--
-- Name: 16762; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16762');


ALTER LARGE OBJECT 16762 OWNER TO praktikum;

--
-- Name: 16763; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16763');


ALTER LARGE OBJECT 16763 OWNER TO praktikum;

--
-- Name: 16764; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16764');


ALTER LARGE OBJECT 16764 OWNER TO praktikum;

--
-- Name: 16765; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16765');


ALTER LARGE OBJECT 16765 OWNER TO praktikum;

--
-- Name: 16766; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16766');


ALTER LARGE OBJECT 16766 OWNER TO praktikum;

--
-- Name: 16767; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16767');


ALTER LARGE OBJECT 16767 OWNER TO praktikum;

--
-- Name: 16768; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16768');


ALTER LARGE OBJECT 16768 OWNER TO praktikum;

--
-- Name: 16769; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16769');


ALTER LARGE OBJECT 16769 OWNER TO praktikum;

--
-- Name: 16770; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16770');


ALTER LARGE OBJECT 16770 OWNER TO praktikum;

--
-- Name: 16771; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16771');


ALTER LARGE OBJECT 16771 OWNER TO praktikum;

--
-- Name: 16772; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16772');


ALTER LARGE OBJECT 16772 OWNER TO praktikum;

--
-- Name: 16773; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16773');


ALTER LARGE OBJECT 16773 OWNER TO praktikum;

--
-- Name: 16774; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16774');


ALTER LARGE OBJECT 16774 OWNER TO praktikum;

--
-- Name: 16775; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16775');


ALTER LARGE OBJECT 16775 OWNER TO praktikum;

--
-- Name: 16776; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16776');


ALTER LARGE OBJECT 16776 OWNER TO praktikum;

--
-- Name: 16777; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16777');


ALTER LARGE OBJECT 16777 OWNER TO praktikum;

--
-- Name: 16778; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16778');


ALTER LARGE OBJECT 16778 OWNER TO praktikum;

--
-- Name: 16779; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16779');


ALTER LARGE OBJECT 16779 OWNER TO praktikum;

--
-- Name: 16780; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16780');


ALTER LARGE OBJECT 16780 OWNER TO praktikum;

--
-- Name: 16781; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16781');


ALTER LARGE OBJECT 16781 OWNER TO praktikum;

--
-- Name: 16782; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16782');


ALTER LARGE OBJECT 16782 OWNER TO praktikum;

--
-- Name: 16783; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16783');


ALTER LARGE OBJECT 16783 OWNER TO praktikum;

--
-- Name: 16784; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16784');


ALTER LARGE OBJECT 16784 OWNER TO praktikum;

--
-- Name: 16785; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16785');


ALTER LARGE OBJECT 16785 OWNER TO praktikum;

--
-- Name: 16786; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16786');


ALTER LARGE OBJECT 16786 OWNER TO praktikum;

--
-- Name: 16787; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16787');


ALTER LARGE OBJECT 16787 OWNER TO praktikum;

--
-- Name: 16788; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16788');


ALTER LARGE OBJECT 16788 OWNER TO praktikum;

--
-- Name: 16789; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16789');


ALTER LARGE OBJECT 16789 OWNER TO praktikum;

--
-- Name: 16790; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16790');


ALTER LARGE OBJECT 16790 OWNER TO praktikum;

--
-- Name: 16800; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16800');


ALTER LARGE OBJECT 16800 OWNER TO praktikum;

--
-- Name: 16801; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16801');


ALTER LARGE OBJECT 16801 OWNER TO praktikum;

--
-- Name: 16802; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16802');


ALTER LARGE OBJECT 16802 OWNER TO praktikum;

--
-- Name: 16803; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16803');


ALTER LARGE OBJECT 16803 OWNER TO praktikum;

--
-- Name: 16805; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16805');


ALTER LARGE OBJECT 16805 OWNER TO praktikum;

--
-- Name: 16806; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16806');


ALTER LARGE OBJECT 16806 OWNER TO praktikum;

--
-- Name: 16807; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16807');


ALTER LARGE OBJECT 16807 OWNER TO praktikum;

--
-- Name: 16808; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16808');


ALTER LARGE OBJECT 16808 OWNER TO praktikum;

--
-- Name: 16814; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16814');


ALTER LARGE OBJECT 16814 OWNER TO praktikum;

--
-- Name: 16815; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16815');


ALTER LARGE OBJECT 16815 OWNER TO praktikum;

--
-- Name: 16816; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16816');


ALTER LARGE OBJECT 16816 OWNER TO praktikum;

--
-- Name: 16817; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16817');


ALTER LARGE OBJECT 16817 OWNER TO praktikum;

--
-- Name: 16821; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16821');


ALTER LARGE OBJECT 16821 OWNER TO praktikum;

--
-- Name: 16822; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16822');


ALTER LARGE OBJECT 16822 OWNER TO praktikum;

--
-- Name: 16823; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16823');


ALTER LARGE OBJECT 16823 OWNER TO praktikum;

--
-- Name: 16824; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16824');


ALTER LARGE OBJECT 16824 OWNER TO praktikum;

--
-- Name: 16825; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16825');


ALTER LARGE OBJECT 16825 OWNER TO praktikum;

--
-- Name: 16826; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16826');


ALTER LARGE OBJECT 16826 OWNER TO praktikum;

--
-- Name: 16827; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16827');


ALTER LARGE OBJECT 16827 OWNER TO praktikum;

--
-- Name: 16828; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16828');


ALTER LARGE OBJECT 16828 OWNER TO praktikum;

--
-- Name: 16829; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16829');


ALTER LARGE OBJECT 16829 OWNER TO praktikum;

--
-- Name: 16830; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16830');


ALTER LARGE OBJECT 16830 OWNER TO praktikum;

--
-- Name: 16831; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16831');


ALTER LARGE OBJECT 16831 OWNER TO praktikum;

--
-- Name: 16832; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16832');


ALTER LARGE OBJECT 16832 OWNER TO praktikum;

--
-- Name: 16833; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16833');


ALTER LARGE OBJECT 16833 OWNER TO praktikum;

--
-- Name: 16834; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16834');


ALTER LARGE OBJECT 16834 OWNER TO praktikum;

--
-- Name: 16835; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16835');


ALTER LARGE OBJECT 16835 OWNER TO praktikum;

--
-- Name: 16836; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16836');


ALTER LARGE OBJECT 16836 OWNER TO praktikum;

--
-- Name: 16837; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16837');


ALTER LARGE OBJECT 16837 OWNER TO praktikum;

--
-- Name: 16838; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16838');


ALTER LARGE OBJECT 16838 OWNER TO praktikum;

--
-- Name: 16839; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16839');


ALTER LARGE OBJECT 16839 OWNER TO praktikum;

--
-- Name: 16840; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16840');


ALTER LARGE OBJECT 16840 OWNER TO praktikum;

--
-- Name: 16841; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16841');


ALTER LARGE OBJECT 16841 OWNER TO praktikum;

--
-- Name: 16842; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16842');


ALTER LARGE OBJECT 16842 OWNER TO praktikum;

--
-- Name: 16843; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16843');


ALTER LARGE OBJECT 16843 OWNER TO praktikum;

--
-- Name: 16844; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16844');


ALTER LARGE OBJECT 16844 OWNER TO praktikum;

--
-- Name: 16845; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16845');


ALTER LARGE OBJECT 16845 OWNER TO praktikum;

--
-- Name: 16846; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16846');


ALTER LARGE OBJECT 16846 OWNER TO praktikum;

--
-- Name: 16847; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16847');


ALTER LARGE OBJECT 16847 OWNER TO praktikum;

--
-- Name: 16848; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16848');


ALTER LARGE OBJECT 16848 OWNER TO praktikum;

--
-- Name: 16849; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16849');


ALTER LARGE OBJECT 16849 OWNER TO praktikum;

--
-- Name: 16851; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16851');


ALTER LARGE OBJECT 16851 OWNER TO praktikum;

--
-- Name: 16852; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16852');


ALTER LARGE OBJECT 16852 OWNER TO praktikum;

--
-- Name: 16853; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16853');


ALTER LARGE OBJECT 16853 OWNER TO praktikum;

--
-- Name: 16854; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16854');


ALTER LARGE OBJECT 16854 OWNER TO praktikum;

--
-- Name: 16855; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16855');


ALTER LARGE OBJECT 16855 OWNER TO praktikum;

--
-- Name: 16856; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16856');


ALTER LARGE OBJECT 16856 OWNER TO praktikum;

--
-- Name: 16857; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16857');


ALTER LARGE OBJECT 16857 OWNER TO praktikum;

--
-- Name: 16858; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16858');


ALTER LARGE OBJECT 16858 OWNER TO praktikum;

--
-- Name: 16859; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16859');


ALTER LARGE OBJECT 16859 OWNER TO praktikum;

--
-- Name: 16860; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16860');


ALTER LARGE OBJECT 16860 OWNER TO praktikum;

--
-- Name: 16861; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16861');


ALTER LARGE OBJECT 16861 OWNER TO praktikum;

--
-- Name: 16862; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16862');


ALTER LARGE OBJECT 16862 OWNER TO praktikum;

--
-- Name: 16863; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16863');


ALTER LARGE OBJECT 16863 OWNER TO praktikum;

--
-- Name: 16864; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16864');


ALTER LARGE OBJECT 16864 OWNER TO praktikum;

--
-- Name: 16867; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16867');


ALTER LARGE OBJECT 16867 OWNER TO praktikum;

--
-- Name: 16868; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16868');


ALTER LARGE OBJECT 16868 OWNER TO praktikum;

--
-- Name: 16869; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16869');


ALTER LARGE OBJECT 16869 OWNER TO praktikum;

--
-- Name: 16871; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16871');


ALTER LARGE OBJECT 16871 OWNER TO praktikum;

--
-- Name: 16872; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16872');


ALTER LARGE OBJECT 16872 OWNER TO praktikum;

--
-- Name: 16876; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16876');


ALTER LARGE OBJECT 16876 OWNER TO praktikum;

--
-- Name: 16877; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16877');


ALTER LARGE OBJECT 16877 OWNER TO praktikum;

--
-- Name: 16878; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16878');


ALTER LARGE OBJECT 16878 OWNER TO praktikum;

--
-- Name: 16879; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16879');


ALTER LARGE OBJECT 16879 OWNER TO praktikum;

--
-- Name: 16880; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16880');


ALTER LARGE OBJECT 16880 OWNER TO praktikum;

--
-- Name: 16881; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16881');


ALTER LARGE OBJECT 16881 OWNER TO praktikum;

--
-- Name: 16882; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16882');


ALTER LARGE OBJECT 16882 OWNER TO praktikum;

--
-- Name: 16883; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16883');


ALTER LARGE OBJECT 16883 OWNER TO praktikum;

--
-- Name: 16884; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16884');


ALTER LARGE OBJECT 16884 OWNER TO praktikum;

--
-- Name: 16885; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16885');


ALTER LARGE OBJECT 16885 OWNER TO praktikum;

--
-- Name: 16886; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16886');


ALTER LARGE OBJECT 16886 OWNER TO praktikum;

--
-- Name: 16887; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16887');


ALTER LARGE OBJECT 16887 OWNER TO praktikum;

--
-- Name: 16888; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16888');


ALTER LARGE OBJECT 16888 OWNER TO praktikum;

--
-- Name: 16889; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('16889');


ALTER LARGE OBJECT 16889 OWNER TO praktikum;

--
-- Name: 17589; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17589');


ALTER LARGE OBJECT 17589 OWNER TO praktikum;

--
-- Name: 17590; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17590');


ALTER LARGE OBJECT 17590 OWNER TO praktikum;

--
-- Name: 17591; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17591');


ALTER LARGE OBJECT 17591 OWNER TO praktikum;

--
-- Name: 17592; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17592');


ALTER LARGE OBJECT 17592 OWNER TO praktikum;

--
-- Name: 17593; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17593');


ALTER LARGE OBJECT 17593 OWNER TO praktikum;

--
-- Name: 17594; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17594');


ALTER LARGE OBJECT 17594 OWNER TO praktikum;

--
-- Name: 17595; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17595');


ALTER LARGE OBJECT 17595 OWNER TO praktikum;

--
-- Name: 17596; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17596');


ALTER LARGE OBJECT 17596 OWNER TO praktikum;

--
-- Name: 17597; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17597');


ALTER LARGE OBJECT 17597 OWNER TO praktikum;

--
-- Name: 17598; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17598');


ALTER LARGE OBJECT 17598 OWNER TO praktikum;

--
-- Name: 17599; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17599');


ALTER LARGE OBJECT 17599 OWNER TO praktikum;

--
-- Name: 17600; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17600');


ALTER LARGE OBJECT 17600 OWNER TO praktikum;

--
-- Name: 17601; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17601');


ALTER LARGE OBJECT 17601 OWNER TO praktikum;

--
-- Name: 17602; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17602');


ALTER LARGE OBJECT 17602 OWNER TO praktikum;

--
-- Name: 17603; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17603');


ALTER LARGE OBJECT 17603 OWNER TO praktikum;

--
-- Name: 17604; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17604');


ALTER LARGE OBJECT 17604 OWNER TO praktikum;

--
-- Name: 17605; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17605');


ALTER LARGE OBJECT 17605 OWNER TO praktikum;

--
-- Name: 17606; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17606');


ALTER LARGE OBJECT 17606 OWNER TO praktikum;

--
-- Name: 17607; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17607');


ALTER LARGE OBJECT 17607 OWNER TO praktikum;

--
-- Name: 17616; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17616');


ALTER LARGE OBJECT 17616 OWNER TO praktikum;

--
-- Name: 17617; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17617');


ALTER LARGE OBJECT 17617 OWNER TO praktikum;

--
-- Name: 17618; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17618');


ALTER LARGE OBJECT 17618 OWNER TO praktikum;

--
-- Name: 17619; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17619');


ALTER LARGE OBJECT 17619 OWNER TO praktikum;

--
-- Name: 17620; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17620');


ALTER LARGE OBJECT 17620 OWNER TO praktikum;

--
-- Name: 17621; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17621');


ALTER LARGE OBJECT 17621 OWNER TO praktikum;

--
-- Name: 17622; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17622');


ALTER LARGE OBJECT 17622 OWNER TO praktikum;

--
-- Name: 17623; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17623');


ALTER LARGE OBJECT 17623 OWNER TO praktikum;

--
-- Name: 17624; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17624');


ALTER LARGE OBJECT 17624 OWNER TO praktikum;

--
-- Name: 17625; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17625');


ALTER LARGE OBJECT 17625 OWNER TO praktikum;

--
-- Name: 17626; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17626');


ALTER LARGE OBJECT 17626 OWNER TO praktikum;

--
-- Name: 17627; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17627');


ALTER LARGE OBJECT 17627 OWNER TO praktikum;

--
-- Name: 17628; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17628');


ALTER LARGE OBJECT 17628 OWNER TO praktikum;

--
-- Name: 17629; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17629');


ALTER LARGE OBJECT 17629 OWNER TO praktikum;

--
-- Name: 17630; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17630');


ALTER LARGE OBJECT 17630 OWNER TO praktikum;

--
-- Name: 17631; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17631');


ALTER LARGE OBJECT 17631 OWNER TO praktikum;

--
-- Name: 17632; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17632');


ALTER LARGE OBJECT 17632 OWNER TO praktikum;

--
-- Name: 17633; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17633');


ALTER LARGE OBJECT 17633 OWNER TO praktikum;

--
-- Name: 17634; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17634');


ALTER LARGE OBJECT 17634 OWNER TO praktikum;

--
-- Name: 17635; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17635');


ALTER LARGE OBJECT 17635 OWNER TO praktikum;

--
-- Name: 17637; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17637');


ALTER LARGE OBJECT 17637 OWNER TO praktikum;

--
-- Name: 17638; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17638');


ALTER LARGE OBJECT 17638 OWNER TO praktikum;

--
-- Name: 17639; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17639');


ALTER LARGE OBJECT 17639 OWNER TO praktikum;

--
-- Name: 17640; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17640');


ALTER LARGE OBJECT 17640 OWNER TO praktikum;

--
-- Name: 17641; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17641');


ALTER LARGE OBJECT 17641 OWNER TO praktikum;

--
-- Name: 17642; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17642');


ALTER LARGE OBJECT 17642 OWNER TO praktikum;

--
-- Name: 17643; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17643');


ALTER LARGE OBJECT 17643 OWNER TO praktikum;

--
-- Name: 17644; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17644');


ALTER LARGE OBJECT 17644 OWNER TO praktikum;

--
-- Name: 17645; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17645');


ALTER LARGE OBJECT 17645 OWNER TO praktikum;

--
-- Name: 17646; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17646');


ALTER LARGE OBJECT 17646 OWNER TO praktikum;

--
-- Name: 17649; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17649');


ALTER LARGE OBJECT 17649 OWNER TO praktikum;

--
-- Name: 17650; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17650');


ALTER LARGE OBJECT 17650 OWNER TO praktikum;

--
-- Name: 17651; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17651');


ALTER LARGE OBJECT 17651 OWNER TO praktikum;

--
-- Name: 17652; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17652');


ALTER LARGE OBJECT 17652 OWNER TO praktikum;

--
-- Name: 17653; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17653');


ALTER LARGE OBJECT 17653 OWNER TO praktikum;

--
-- Name: 17654; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17654');


ALTER LARGE OBJECT 17654 OWNER TO praktikum;

--
-- Name: 17655; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17655');


ALTER LARGE OBJECT 17655 OWNER TO praktikum;

--
-- Name: 17656; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17656');


ALTER LARGE OBJECT 17656 OWNER TO praktikum;

--
-- Name: 17657; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17657');


ALTER LARGE OBJECT 17657 OWNER TO praktikum;

--
-- Name: 17658; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17658');


ALTER LARGE OBJECT 17658 OWNER TO praktikum;

--
-- Name: 17659; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17659');


ALTER LARGE OBJECT 17659 OWNER TO praktikum;

--
-- Name: 17660; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17660');


ALTER LARGE OBJECT 17660 OWNER TO praktikum;

--
-- Name: 17661; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17661');


ALTER LARGE OBJECT 17661 OWNER TO praktikum;

--
-- Name: 17662; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17662');


ALTER LARGE OBJECT 17662 OWNER TO praktikum;

--
-- Name: 17663; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17663');


ALTER LARGE OBJECT 17663 OWNER TO praktikum;

--
-- Name: 17664; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17664');


ALTER LARGE OBJECT 17664 OWNER TO praktikum;

--
-- Name: 17665; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17665');


ALTER LARGE OBJECT 17665 OWNER TO praktikum;

--
-- Name: 17666; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17666');


ALTER LARGE OBJECT 17666 OWNER TO praktikum;

--
-- Name: 17667; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17667');


ALTER LARGE OBJECT 17667 OWNER TO praktikum;

--
-- Name: 17668; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17668');


ALTER LARGE OBJECT 17668 OWNER TO praktikum;

--
-- Name: 17669; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17669');


ALTER LARGE OBJECT 17669 OWNER TO praktikum;

--
-- Name: 17670; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17670');


ALTER LARGE OBJECT 17670 OWNER TO praktikum;

--
-- Name: 17671; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17671');


ALTER LARGE OBJECT 17671 OWNER TO praktikum;

--
-- Name: 17672; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17672');


ALTER LARGE OBJECT 17672 OWNER TO praktikum;

--
-- Name: 17673; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17673');


ALTER LARGE OBJECT 17673 OWNER TO praktikum;

--
-- Name: 17674; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17674');


ALTER LARGE OBJECT 17674 OWNER TO praktikum;

--
-- Name: 17675; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17675');


ALTER LARGE OBJECT 17675 OWNER TO praktikum;

--
-- Name: 17676; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17676');


ALTER LARGE OBJECT 17676 OWNER TO praktikum;

--
-- Name: 17677; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17677');


ALTER LARGE OBJECT 17677 OWNER TO praktikum;

--
-- Name: 17678; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17678');


ALTER LARGE OBJECT 17678 OWNER TO praktikum;

--
-- Name: 17679; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17679');


ALTER LARGE OBJECT 17679 OWNER TO praktikum;

--
-- Name: 17680; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17680');


ALTER LARGE OBJECT 17680 OWNER TO praktikum;

--
-- Name: 17681; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17681');


ALTER LARGE OBJECT 17681 OWNER TO praktikum;

--
-- Name: 17682; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17682');


ALTER LARGE OBJECT 17682 OWNER TO praktikum;

--
-- Name: 17683; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17683');


ALTER LARGE OBJECT 17683 OWNER TO praktikum;

--
-- Name: 17684; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17684');


ALTER LARGE OBJECT 17684 OWNER TO praktikum;

--
-- Name: 17685; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17685');


ALTER LARGE OBJECT 17685 OWNER TO praktikum;

--
-- Name: 17686; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17686');


ALTER LARGE OBJECT 17686 OWNER TO praktikum;

--
-- Name: 17687; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17687');


ALTER LARGE OBJECT 17687 OWNER TO praktikum;

--
-- Name: 17688; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17688');


ALTER LARGE OBJECT 17688 OWNER TO praktikum;

--
-- Name: 17689; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17689');


ALTER LARGE OBJECT 17689 OWNER TO praktikum;

--
-- Name: 17690; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17690');


ALTER LARGE OBJECT 17690 OWNER TO praktikum;

--
-- Name: 17691; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17691');


ALTER LARGE OBJECT 17691 OWNER TO praktikum;

--
-- Name: 17692; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17692');


ALTER LARGE OBJECT 17692 OWNER TO praktikum;

--
-- Name: 17693; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17693');


ALTER LARGE OBJECT 17693 OWNER TO praktikum;

--
-- Name: 17694; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17694');


ALTER LARGE OBJECT 17694 OWNER TO praktikum;

--
-- Name: 17695; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17695');


ALTER LARGE OBJECT 17695 OWNER TO praktikum;

--
-- Name: 17697; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17697');


ALTER LARGE OBJECT 17697 OWNER TO praktikum;

--
-- Name: 17698; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17698');


ALTER LARGE OBJECT 17698 OWNER TO praktikum;

--
-- Name: 17699; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17699');


ALTER LARGE OBJECT 17699 OWNER TO praktikum;

--
-- Name: 17700; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17700');


ALTER LARGE OBJECT 17700 OWNER TO praktikum;

--
-- Name: 17701; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17701');


ALTER LARGE OBJECT 17701 OWNER TO praktikum;

--
-- Name: 17702; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17702');


ALTER LARGE OBJECT 17702 OWNER TO praktikum;

--
-- Name: 17703; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17703');


ALTER LARGE OBJECT 17703 OWNER TO praktikum;

--
-- Name: 17704; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17704');


ALTER LARGE OBJECT 17704 OWNER TO praktikum;

--
-- Name: 17705; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17705');


ALTER LARGE OBJECT 17705 OWNER TO praktikum;

--
-- Name: 17706; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17706');


ALTER LARGE OBJECT 17706 OWNER TO praktikum;

--
-- Name: 17707; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17707');


ALTER LARGE OBJECT 17707 OWNER TO praktikum;

--
-- Name: 17708; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17708');


ALTER LARGE OBJECT 17708 OWNER TO praktikum;

--
-- Name: 17709; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17709');


ALTER LARGE OBJECT 17709 OWNER TO praktikum;

--
-- Name: 17710; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17710');


ALTER LARGE OBJECT 17710 OWNER TO praktikum;

--
-- Name: 17711; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17711');


ALTER LARGE OBJECT 17711 OWNER TO praktikum;

--
-- Name: 17712; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17712');


ALTER LARGE OBJECT 17712 OWNER TO praktikum;

--
-- Name: 17713; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17713');


ALTER LARGE OBJECT 17713 OWNER TO praktikum;

--
-- Name: 17714; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17714');


ALTER LARGE OBJECT 17714 OWNER TO praktikum;

--
-- Name: 17715; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17715');


ALTER LARGE OBJECT 17715 OWNER TO praktikum;

--
-- Name: 17716; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17716');


ALTER LARGE OBJECT 17716 OWNER TO praktikum;

--
-- Name: 17717; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17717');


ALTER LARGE OBJECT 17717 OWNER TO praktikum;

--
-- Name: 17718; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17718');


ALTER LARGE OBJECT 17718 OWNER TO praktikum;

--
-- Name: 17719; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17719');


ALTER LARGE OBJECT 17719 OWNER TO praktikum;

--
-- Name: 17720; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17720');


ALTER LARGE OBJECT 17720 OWNER TO praktikum;

--
-- Name: 17721; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17721');


ALTER LARGE OBJECT 17721 OWNER TO praktikum;

--
-- Name: 17722; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17722');


ALTER LARGE OBJECT 17722 OWNER TO praktikum;

--
-- Name: 17723; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17723');


ALTER LARGE OBJECT 17723 OWNER TO praktikum;

--
-- Name: 17724; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17724');


ALTER LARGE OBJECT 17724 OWNER TO praktikum;

--
-- Name: 17725; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17725');


ALTER LARGE OBJECT 17725 OWNER TO praktikum;

--
-- Name: 17726; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17726');


ALTER LARGE OBJECT 17726 OWNER TO praktikum;

--
-- Name: 17727; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17727');


ALTER LARGE OBJECT 17727 OWNER TO praktikum;

--
-- Name: 17728; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17728');


ALTER LARGE OBJECT 17728 OWNER TO praktikum;

--
-- Name: 17729; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17729');


ALTER LARGE OBJECT 17729 OWNER TO praktikum;

--
-- Name: 17730; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17730');


ALTER LARGE OBJECT 17730 OWNER TO praktikum;

--
-- Name: 17731; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17731');


ALTER LARGE OBJECT 17731 OWNER TO praktikum;

--
-- Name: 17732; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17732');


ALTER LARGE OBJECT 17732 OWNER TO praktikum;

--
-- Name: 17733; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17733');


ALTER LARGE OBJECT 17733 OWNER TO praktikum;

--
-- Name: 17734; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17734');


ALTER LARGE OBJECT 17734 OWNER TO praktikum;

--
-- Name: 17735; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17735');


ALTER LARGE OBJECT 17735 OWNER TO praktikum;

--
-- Name: 17736; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17736');


ALTER LARGE OBJECT 17736 OWNER TO praktikum;

--
-- Name: 17737; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17737');


ALTER LARGE OBJECT 17737 OWNER TO praktikum;

--
-- Name: 17738; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17738');


ALTER LARGE OBJECT 17738 OWNER TO praktikum;

--
-- Name: 17739; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17739');


ALTER LARGE OBJECT 17739 OWNER TO praktikum;

--
-- Name: 17740; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17740');


ALTER LARGE OBJECT 17740 OWNER TO praktikum;

--
-- Name: 17741; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17741');


ALTER LARGE OBJECT 17741 OWNER TO praktikum;

--
-- Name: 17742; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17742');


ALTER LARGE OBJECT 17742 OWNER TO praktikum;

--
-- Name: 17743; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17743');


ALTER LARGE OBJECT 17743 OWNER TO praktikum;

--
-- Name: 17744; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17744');


ALTER LARGE OBJECT 17744 OWNER TO praktikum;

--
-- Name: 17745; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17745');


ALTER LARGE OBJECT 17745 OWNER TO praktikum;

--
-- Name: 17746; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17746');


ALTER LARGE OBJECT 17746 OWNER TO praktikum;

--
-- Name: 17747; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17747');


ALTER LARGE OBJECT 17747 OWNER TO praktikum;

--
-- Name: 17748; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17748');


ALTER LARGE OBJECT 17748 OWNER TO praktikum;

--
-- Name: 17749; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17749');


ALTER LARGE OBJECT 17749 OWNER TO praktikum;

--
-- Name: 17750; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17750');


ALTER LARGE OBJECT 17750 OWNER TO praktikum;

--
-- Name: 17751; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17751');


ALTER LARGE OBJECT 17751 OWNER TO praktikum;

--
-- Name: 17752; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17752');


ALTER LARGE OBJECT 17752 OWNER TO praktikum;

--
-- Name: 17753; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17753');


ALTER LARGE OBJECT 17753 OWNER TO praktikum;

--
-- Name: 17754; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17754');


ALTER LARGE OBJECT 17754 OWNER TO praktikum;

--
-- Name: 17755; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17755');


ALTER LARGE OBJECT 17755 OWNER TO praktikum;

--
-- Name: 17756; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17756');


ALTER LARGE OBJECT 17756 OWNER TO praktikum;

--
-- Name: 17757; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17757');


ALTER LARGE OBJECT 17757 OWNER TO praktikum;

--
-- Name: 17758; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17758');


ALTER LARGE OBJECT 17758 OWNER TO praktikum;

--
-- Name: 17760; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17760');


ALTER LARGE OBJECT 17760 OWNER TO praktikum;

--
-- Name: 17761; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17761');


ALTER LARGE OBJECT 17761 OWNER TO praktikum;

--
-- Name: 17762; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17762');


ALTER LARGE OBJECT 17762 OWNER TO praktikum;

--
-- Name: 17763; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17763');


ALTER LARGE OBJECT 17763 OWNER TO praktikum;

--
-- Name: 17764; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17764');


ALTER LARGE OBJECT 17764 OWNER TO praktikum;

--
-- Name: 17765; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17765');


ALTER LARGE OBJECT 17765 OWNER TO praktikum;

--
-- Name: 17766; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17766');


ALTER LARGE OBJECT 17766 OWNER TO praktikum;

--
-- Name: 17767; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17767');


ALTER LARGE OBJECT 17767 OWNER TO praktikum;

--
-- Name: 17768; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17768');


ALTER LARGE OBJECT 17768 OWNER TO praktikum;

--
-- Name: 17769; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17769');


ALTER LARGE OBJECT 17769 OWNER TO praktikum;

--
-- Name: 17770; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17770');


ALTER LARGE OBJECT 17770 OWNER TO praktikum;

--
-- Name: 17771; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17771');


ALTER LARGE OBJECT 17771 OWNER TO praktikum;

--
-- Name: 17772; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17772');


ALTER LARGE OBJECT 17772 OWNER TO praktikum;

--
-- Name: 17773; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17773');


ALTER LARGE OBJECT 17773 OWNER TO praktikum;

--
-- Name: 17774; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17774');


ALTER LARGE OBJECT 17774 OWNER TO praktikum;

--
-- Name: 17775; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17775');


ALTER LARGE OBJECT 17775 OWNER TO praktikum;

--
-- Name: 17776; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17776');


ALTER LARGE OBJECT 17776 OWNER TO praktikum;

--
-- Name: 17777; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17777');


ALTER LARGE OBJECT 17777 OWNER TO praktikum;

--
-- Name: 17778; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17778');


ALTER LARGE OBJECT 17778 OWNER TO praktikum;

--
-- Name: 17779; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17779');


ALTER LARGE OBJECT 17779 OWNER TO praktikum;

--
-- Name: 17780; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17780');


ALTER LARGE OBJECT 17780 OWNER TO praktikum;

--
-- Name: 17781; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17781');


ALTER LARGE OBJECT 17781 OWNER TO praktikum;

--
-- Name: 17782; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17782');


ALTER LARGE OBJECT 17782 OWNER TO praktikum;

--
-- Name: 17783; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17783');


ALTER LARGE OBJECT 17783 OWNER TO praktikum;

--
-- Name: 17784; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17784');


ALTER LARGE OBJECT 17784 OWNER TO praktikum;

--
-- Name: 17785; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17785');


ALTER LARGE OBJECT 17785 OWNER TO praktikum;

--
-- Name: 17786; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17786');


ALTER LARGE OBJECT 17786 OWNER TO praktikum;

--
-- Name: 17787; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17787');


ALTER LARGE OBJECT 17787 OWNER TO praktikum;

--
-- Name: 17788; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17788');


ALTER LARGE OBJECT 17788 OWNER TO praktikum;

--
-- Name: 17789; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17789');


ALTER LARGE OBJECT 17789 OWNER TO praktikum;

--
-- Name: 17790; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17790');


ALTER LARGE OBJECT 17790 OWNER TO praktikum;

--
-- Name: 17791; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17791');


ALTER LARGE OBJECT 17791 OWNER TO praktikum;

--
-- Name: 17792; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17792');


ALTER LARGE OBJECT 17792 OWNER TO praktikum;

--
-- Name: 17793; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17793');


ALTER LARGE OBJECT 17793 OWNER TO praktikum;

--
-- Name: 17794; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17794');


ALTER LARGE OBJECT 17794 OWNER TO praktikum;

--
-- Name: 17795; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17795');


ALTER LARGE OBJECT 17795 OWNER TO praktikum;

--
-- Name: 17796; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17796');


ALTER LARGE OBJECT 17796 OWNER TO praktikum;

--
-- Name: 17797; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17797');


ALTER LARGE OBJECT 17797 OWNER TO praktikum;

--
-- Name: 17798; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17798');


ALTER LARGE OBJECT 17798 OWNER TO praktikum;

--
-- Name: 17799; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17799');


ALTER LARGE OBJECT 17799 OWNER TO praktikum;

--
-- Name: 17800; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17800');


ALTER LARGE OBJECT 17800 OWNER TO praktikum;

--
-- Name: 17801; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17801');


ALTER LARGE OBJECT 17801 OWNER TO praktikum;

--
-- Name: 17802; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17802');


ALTER LARGE OBJECT 17802 OWNER TO praktikum;

--
-- Name: 17803; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17803');


ALTER LARGE OBJECT 17803 OWNER TO praktikum;

--
-- Name: 17804; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17804');


ALTER LARGE OBJECT 17804 OWNER TO praktikum;

--
-- Name: 17805; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17805');


ALTER LARGE OBJECT 17805 OWNER TO praktikum;

--
-- Name: 17806; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17806');


ALTER LARGE OBJECT 17806 OWNER TO praktikum;

--
-- Name: 17807; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17807');


ALTER LARGE OBJECT 17807 OWNER TO praktikum;

--
-- Name: 17808; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17808');


ALTER LARGE OBJECT 17808 OWNER TO praktikum;

--
-- Name: 17809; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17809');


ALTER LARGE OBJECT 17809 OWNER TO praktikum;

--
-- Name: 17810; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17810');


ALTER LARGE OBJECT 17810 OWNER TO praktikum;

--
-- Name: 17811; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17811');


ALTER LARGE OBJECT 17811 OWNER TO praktikum;

--
-- Name: 17812; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17812');


ALTER LARGE OBJECT 17812 OWNER TO praktikum;

--
-- Name: 17813; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17813');


ALTER LARGE OBJECT 17813 OWNER TO praktikum;

--
-- Name: 17814; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17814');


ALTER LARGE OBJECT 17814 OWNER TO praktikum;

--
-- Name: 17815; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17815');


ALTER LARGE OBJECT 17815 OWNER TO praktikum;

--
-- Name: 17816; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17816');


ALTER LARGE OBJECT 17816 OWNER TO praktikum;

--
-- Name: 17817; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17817');


ALTER LARGE OBJECT 17817 OWNER TO praktikum;

--
-- Name: 17818; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17818');


ALTER LARGE OBJECT 17818 OWNER TO praktikum;

--
-- Name: 17819; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17819');


ALTER LARGE OBJECT 17819 OWNER TO praktikum;

--
-- Name: 17820; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17820');


ALTER LARGE OBJECT 17820 OWNER TO praktikum;

--
-- Name: 17821; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17821');


ALTER LARGE OBJECT 17821 OWNER TO praktikum;

--
-- Name: 17822; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17822');


ALTER LARGE OBJECT 17822 OWNER TO praktikum;

--
-- Name: 17823; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17823');


ALTER LARGE OBJECT 17823 OWNER TO praktikum;

--
-- Name: 17824; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17824');


ALTER LARGE OBJECT 17824 OWNER TO praktikum;

--
-- Name: 17825; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17825');


ALTER LARGE OBJECT 17825 OWNER TO praktikum;

--
-- Name: 17826; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17826');


ALTER LARGE OBJECT 17826 OWNER TO praktikum;

--
-- Name: 17827; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17827');


ALTER LARGE OBJECT 17827 OWNER TO praktikum;

--
-- Name: 17829; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17829');


ALTER LARGE OBJECT 17829 OWNER TO praktikum;

--
-- Name: 17830; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17830');


ALTER LARGE OBJECT 17830 OWNER TO praktikum;

--
-- Name: 17831; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17831');


ALTER LARGE OBJECT 17831 OWNER TO praktikum;

--
-- Name: 17832; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17832');


ALTER LARGE OBJECT 17832 OWNER TO praktikum;

--
-- Name: 17833; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17833');


ALTER LARGE OBJECT 17833 OWNER TO praktikum;

--
-- Name: 17834; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17834');


ALTER LARGE OBJECT 17834 OWNER TO praktikum;

--
-- Name: 17835; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17835');


ALTER LARGE OBJECT 17835 OWNER TO praktikum;

--
-- Name: 17836; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17836');


ALTER LARGE OBJECT 17836 OWNER TO praktikum;

--
-- Name: 17837; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17837');


ALTER LARGE OBJECT 17837 OWNER TO praktikum;

--
-- Name: 17838; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17838');


ALTER LARGE OBJECT 17838 OWNER TO praktikum;

--
-- Name: 17839; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17839');


ALTER LARGE OBJECT 17839 OWNER TO praktikum;

--
-- Name: 17840; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17840');


ALTER LARGE OBJECT 17840 OWNER TO praktikum;

--
-- Name: 17841; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17841');


ALTER LARGE OBJECT 17841 OWNER TO praktikum;

--
-- Name: 17842; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17842');


ALTER LARGE OBJECT 17842 OWNER TO praktikum;

--
-- Name: 17843; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17843');


ALTER LARGE OBJECT 17843 OWNER TO praktikum;

--
-- Name: 17844; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17844');


ALTER LARGE OBJECT 17844 OWNER TO praktikum;

--
-- Name: 17845; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17845');


ALTER LARGE OBJECT 17845 OWNER TO praktikum;

--
-- Name: 17846; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17846');


ALTER LARGE OBJECT 17846 OWNER TO praktikum;

--
-- Name: 17847; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17847');


ALTER LARGE OBJECT 17847 OWNER TO praktikum;

--
-- Name: 17848; Type: BLOB; Schema: -; Owner: praktikum
--

SELECT pg_catalog.lo_create('17848');


ALTER LARGE OBJECT 17848 OWNER TO praktikum;

--
-- Data for Name: data; Type: TABLE DATA; Schema: public; Owner: praktikum
--

COPY public.data (id, uuid, instancetype, version, status, "timestamp", publickey, ipaddress, role) FROM stdin;
\.


--
-- Data for Name: tenants; Type: TABLE DATA; Schema: public; Owner: praktikum
--

COPY public.tenants (id, systemid, externalid, name, expirationdate) FROM stdin;
\.


--
-- Name: data_id_seq; Type: SEQUENCE SET; Schema: public; Owner: praktikum
--

SELECT pg_catalog.setval('public.data_id_seq', 264, true);


--
-- Name: tenants_id_seq; Type: SEQUENCE SET; Schema: public; Owner: praktikum
--

SELECT pg_catalog.setval('public.tenants_id_seq', 75, true);


--
-- Data for Name: BLOBS; Type: BLOBS; Schema: -; Owner: -
--

BEGIN;

SELECT pg_catalog.lo_open('16453', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16454', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16455', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16456', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16457', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16458', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16459', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16460', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16461', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16462', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16463', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16464', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16465', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16466', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16467', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16468', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16469', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16470', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16471', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16472', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16473', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16474', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16475', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16476', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16477', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16478', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16479', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16480', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16481', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16482', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16483', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16484', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16485', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16486', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16487', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16488', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16489', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16490', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16491', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16492', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16493', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16494', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16495', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16496', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16497', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16498', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16499', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16500', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16501', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16502', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16503', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16505', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16506', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16507', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16508', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16509', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16510', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16511', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16512', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16513', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16514', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16515', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16516', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16517', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16518', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16519', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16520', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16521', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16522', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16523', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16524', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16525', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16526', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16527', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16528', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16529', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16530', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16531', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16532', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16533', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16534', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16535', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16536', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16537', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16538', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16539', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16540', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16541', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16542', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16543', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16544', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16545', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16546', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16547', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16548', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16549', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16550', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16551', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16552', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16553', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16554', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16555', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16556', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16557', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16558', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16559', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16560', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16561', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16562', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16563', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16566', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16567', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16568', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16569', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16570', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16571', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16572', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16573', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16574', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16575', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16576', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16577', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16578', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16579', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16580', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16581', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16582', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16583', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16584', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16585', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16586', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16587', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16588', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16589', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16590', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16591', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16592', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16593', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16594', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16595', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16596', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16597', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16598', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16599', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16600', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16601', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16602', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16603', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16604', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16605', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16606', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16607', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16608', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16609', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16610', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16611', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16612', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16613', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16614', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16615', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16616', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16617', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16618', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16619', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16620', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16621', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16622', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16623', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16624', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16625', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16626', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16627', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16630', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16631', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16632', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16633', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16634', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16635', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16636', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16637', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16638', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16639', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16640', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16641', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16642', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16643', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16644', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16645', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16646', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16647', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16648', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16649', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16650', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16651', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16652', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16653', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16654', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16655', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16656', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16657', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16658', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16659', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16660', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16661', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16662', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16663', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16664', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16665', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16666', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16667', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16668', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16669', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16670', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16671', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16672', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16677', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16678', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16679', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16680', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16681', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16682', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16683', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16684', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16689', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16690', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16691', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16692', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16693', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16694', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16695', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16696', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16697', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16698', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16699', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16700', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16701', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16702', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16703', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16704', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16711', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16712', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16713', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16714', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16715', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16716', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16717', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16718', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16719', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16720', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16721', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16722', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16727', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16728', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16729', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16730', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16731', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16732', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16733', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16734', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16735', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16736', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16737', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16738', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16739', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16740', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16741', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16742', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16743', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16744', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16745', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16746', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16747', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16748', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16749', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16750', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16755', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16756', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16757', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16758', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16759', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16760', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16761', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16762', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16763', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16764', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16765', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16766', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16767', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16768', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16769', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16770', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16771', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16772', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16773', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16774', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16775', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16776', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16777', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16778', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16779', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16780', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16781', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16782', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16783', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16784', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16785', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16786', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16787', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16788', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16789', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16790', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16800', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16801', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16802', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16803', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16805', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16806', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16807', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16808', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16814', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16815', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16816', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16817', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16821', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16822', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16823', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16824', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16825', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16826', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16827', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16828', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16829', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16830', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16831', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16832', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16833', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16834', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16835', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16836', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16837', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16838', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16839', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16840', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16841', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16842', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16843', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16844', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16845', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16846', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16847', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16848', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16849', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16851', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16852', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16853', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16854', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16855', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16856', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16857', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16858', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16859', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16860', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16861', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16862', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16863', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16864', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16867', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16868', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16869', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16871', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16872', 131072);
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16876', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a755a7a49434f6a6b6831724c594d7853653841374d68426636524450325a476a6457537a7156342f654d324d534674597832677847652f4d516b46724b756639567a385365716473736d32324a6d6b70485731514f7569585533437833566c776c347352396c456f414c6853326a39663141766242707265647530616b635a52342b7a7656554638586f4b734e5143706548556252574167546454486f4562704e454f6e434a67357550524d494b2b753875693941486569714e6935777558524f647243724a67326d7449314d566e717531436e774e782f337955364a36425353654d5656314856414379786f79304d6b6a43504236424d795a4646455254506732384d2f6b484e45737165524372484c724b306e52436e50306a4953753968776258346b774668446c686f6738723171756578575776527466544d314864323459723168596959715178624f4d6f716d4c5759466e4e4b4c796a41785a4d79746c4b434d77534e6362382f556e373463556a716e49575a6e4d4176654e4b2b377a676251654f7049687764594670304a6c5052776667676b4d2b686a5052782f5065367156376376336e33327947424f31586e34687153366c7378517667542f61486277577266505736767543563149426b2f684366326c4a534d696e3268464a306258302f62422b436b4c7a68716155434f5350374c42473758423565384c3364567a4a4a6d6177735a43675779676661384f6330464b696f532f397466382b2b5a504c626a79356d446346725173726d2b764f614d43756963696939626c6766457245347456736d6675476676352f544f51474567634142577570744d4a695a44616d6734344b7634316e766e78386344425849694e32532f396161382b4842394c59446736644144314745714267533341334758687a494162395633697365634a64725a4845434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16877', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e496d35545a6e65513161674f4662765a3136486b30774579377a315256327a30326b33306d78776f31364761456433326d5355557236664f32434a38524858393443307a52322b3734476135434878786b635a4c50315953525132554b57334a374f7669524a6d77457a7443546551754c72645673486f546a542f794931563054455147773564774b79735054504f433465304c326f35666a6a6c68474c516b61335a6448374261314344336837325a66594768696c33543352697338766e61566f2b33764f6b42565436526e65416457526e78575835736933334762496b3057314f324a704f6e4356442f497138713949536b38546751736653386e7770633648586869527254557659427942596c3143784777634351365173586d50396457456761416f58334b47496a6f57526d6e45647a566b574a61756e55346f4d53366b2f33337a48342f69637837696369336871626670346b44555079636d63494c737955314a733738636d53725371504e674e735254394d6375414b5749544a796b7a51595934334154576e6f412f6a6534575573646f65386f586f5363574e724d48306c394372635a6c5058567a3839324e6a4d454f2f48337275537039433732754c7630755064527046775a6e6469302b36596170584530527978506e577637576233436f6355434e4d51734a6c586b35446f59337043796652425375796847444d4142486c374e67486a4e586d4e317077396e6258746e57756c6274472b456965417a717030614633544e7563527875584e636e366f4f74375a6b6d413449474f71545a466e7a4b45344238364f6e462f70345670484e562b657679642b526d546645384939684964734145566648544d756648465a596e33394977456236644b66433543574a774d7732784e4e592b397171397079634931597371336c79703769316463484d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16878', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417261616a435351663773516b613969546d726e45327062334174336a6e556b495a3554417a323237777677743867347a476f726c642b777650536d64417a6835776563474649706d3137582f42306a446863377a4161523859314d786571634c5632586742334b5338376f4b42375671566b363973334c6666434765365772696733534a66466a325955755a43426a595136644d6e6e38496e6c597a454c5562793941475244617a6765613051784b66463664673654695a4f72627a7033445a6f41372f445a376f3572785869476f385a413847414f726b52723059414c6b704839653731576e556b757969366d416443555937544a4b52354f3150614c67474957664e35364f6a5168556859664f455a50653643545a4b696c587070584f59716c524d765645494f6137706159727673484b7a776a4a58665a48596359493456716c6f3430394b51483962494c525956666e746b4b696741694d774439436d37795257536c38624e4b38365632656b574171596742504179517a4f317364554c5170466d564a4134505336483132526d484f2b36687734464534537568617a7a427379636257672f372f2b34734557472f64315a37437755474d6879554a6279426f493463584f593749313443473452496d2b4b6f7a6977655a4c7737414d78367861484a59592f75716b6b626a5056557832756e394d422b576b4c736a4443586d3937756f42566e4769577244706b57344a666f34696f37347a776151775765776b5236627a615937354c7978474a5a765659486572584e416c51523938612b456243536143376a59334357354169714d5938415a556179654e473530744a6b7262324d726b6e4b6d61305a6a4f7a73716d6e6a4d4a5873545552616557557932472b65734c2f6e4d7a3642545a31552b387554494f6649487a53456f52336f313133684f7748504d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16879', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e56796b424a636f47343941424d5151357178386637474354597a327437505768686e435636736e5455783664556c7362346f7a346f64544b464f384e6479554550695065385374753267386850556753334d5a7a3155547442793354525a4b6955474d5144426d7930526d776e736d4e504a4b507032504137416675785052364a47414c5047575532744a6456586c39445a66796350466939415844662f65594b486a4543326a52446f50756147545534354b642f5a694e6e433457726c73444b6d4c7a2b4551546e396257346a7451536a3977596c5a7a617277546e5332316d61797a474e6b70476a45723930365776714f576f305974495268693679373174304d5658765a6e672b447979427430776837424b636d4e715a6c4c314274454d5a342f563069336a667a46694b55497974614c394445624f31302f754a497a722b643975466467526344595458702b4f45413366722b7a624a725037416c61656f4c317a68726d6d756b364e704e723068564753334f4a3853343853744d61434b666354595032314158436d654d5733383859455479316831664a4b6f4d7a63707354476335375369334a3965486d486b7039483856655641534766446c4334636353465266306649756f59725264787173654e504451504a6878416e3176774a4672376b41366b73586b674364306a54586e4d2b4c42577a616b7a7667315046545076515461426e4436456861744159533439326a61766b565458717658305a6b586747353376394559574f6d4638346e56794d776676696b6f7145364a6d504378493677596f7a75345632794a59555562343438646a47312f3850786b635a4b6777644f2f42726d2f69636b736d706746535555774d392f433359754c2f4d4b4a555251454874304742572f77623779694368746b7779746c39754a6135687a4c6e74546a5a4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16880', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745413232744a705946506d2b70394b66383263734256377a534a5365315242583432396c52375239584d79636f6151334a445133577a6c49424949567774364d747576394e6e414d416247356e5832707064486452534d474a63765751446f6b3041526635573458374270646d76566e55707247644c6a6f49615561772f5a7735743153554b59697741442f76447077505637525a6a386a6a5137323939765757424a5163642b78786f37473634737442494b69464b684743445030536e6c2f6930716e3768397431302b6a4b5a647333702f694153655a4f38684162724244412f4959715975434a73516a775247545370523073357a6847745433496d7552576950315558776f58574f45583446767856376b30624d5238715a775647644d4d6672775763665351653234635859366476544a4a38796d62416a5979433457786264455644784f536372324530694230764e58503433697955746f694c5778615a427a45343958657267556d565059684252306d4c3349637555353835506b70435232734e6a4773374a472f59386a3552344464784d676f3748724f4245555464533269432f62737739564c334b38304956636d79386e51426e63536d342b48346b69386c53577775464254365550456b386e6b464c7a336165375456396e465565366d53756577474839564639534e6e474f516979304c784962363063693742665937765a46656733424b54642f4a59764e564d396b6b45666f4b624668384b77595a53734f302f3278636643414f5a7a2b594177566c45786e4d4663675578626f373476306e6b5041424e656f45584171362f4338346b4d7a574761424b49757749477868535350574449697358676a69734f635a33356971474e33787937412b7062647445766d4b30354a666c56625732794a68416170654931534155745062775052706c57653973434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16881', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454167693659626d4f6c7930414b644c494e4f5438532f312f654b7239544466594151745a52755538797147374348777441366a435a6d41344b53336e64796349552f734f6d4b57764b6d7158737a796652492b5275415a6d4c65395a50315853456e3230766b6e48444a4c6a4e6f69413741316e344d5a35494a724a4e7537556965664d4a4d484c6b6b736e644c32794f53486c79742f4257626a6a553367777058362b466673384e6e4e325746794e34564676644b6332536d56355a6d5730344649724d6c6a4b6b4a382f2f396241733158554a5479524f776276467175356752487139636644384538786659657031616d4e7458366d452b504d474158516a486943486c6465316f2f6133446f4e507a6f496749515a445077316b69484f63686a693536706f52774a3971767166314862694f7873344842594a525652423964766249723150395654786f48734933394b6331374d505634425373386b6a473551672b6a77643571504d6f5a314e7a462f6c537130637a504a5246566d784233566a3576412f75696e306530715664657a4c654c34676d51416448584d682f465054326f572b67474e6175467978376e36476a6e555a484e45736c626d4a647363464c724a7261445a4d6f2f5976627357515362485473613278466161426e797442786e732b31657173646833424756734d713646532f5243706e4f35502b315a4b346f7a41307a586e2f7a7661316e5269477a6438447a39654548393335714733693666645376504a6f42745550454a34726677726a79636c67636d4f33374b76376c497067673350614b48777555306771506b353769656857392b6c4670526770522b6d755763622b4359556b4a59417837594365302f416465777046754b6a50482b6c63486e452f455a705934414d66674a472f5a646a4569694d6c78624a52706e546f484d6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16882', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c647837786446526738366b476d7a616a51795a536b316f4872743436737969335359504764734a6b65646953594b6b4547726c75367a482f397474554d4b347057594f6676415070704a6149737056472f6f7076496444367846676c31704a6966325933514f564b6c5758555753707066537744546f316f76484147674f4b7651754a446f4e75776738475951534c664a38374d496f766c625166584449496e77656759527447435842566254487a4d4467656732536b633576757a352b6b3459443855534532723138414636784a37474d4a77364d65315a576a496930783746343249414a524442787561484b6351307a78616f557639457542582b747568686966553163494734586747302b6a62637437654a486563612b57656852356252446877755550426b4d666b36496632507a3955364c675a756d516f436c3746396b684e43746c586e554c336a617a6e736d596451787a4a347062443354764d7373434837317a6749636f667a69743375723754556e6c78656348793134726f6c794e337165626c69504f644c737077757a626c2b487655302f6e6a5a31307456466561747a6e54446b4d4f59354d4f31396b514e77752f52644d6e773337796d6131744d46716a35364b6f5a5876582f6c476c564444653238385361765433687954743166525a733471324d304b36723355514b52506c4e577530425a585246576a4b43352b4f662f526b67654d594a4e6c6b424742504f6f5a45653165727968364f7a63752b364158793767305a715769567359453175364b66364670765337704a46554652456f473450496f2b496243476c4d736f635552763358706c47636f6d5432764d3256526b5155742b4f727046666731434b777a4c3766776d30444330614741346a6f664a714e65716b4d4f4970724e7a763547313575736a766751326e4178697730434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16883', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454170444c764671496b39784d57414a46445130374f524d78442b4959764a7677316a4d75384e6d4d544350673830486953397952643439674d625676713765415157585267775677687447644e4b7141772f4e734f6c326d3547726b51562f427550396c503064393764696c7a63345971704a797a664641616e4e4d3642686e633338384a554743436d75622f6e784f6352517071612f655373653145664f432f2b444b7a4f52755935375849526f34596e423649756e7542763146353069617a4e513850796361306f664a6b4855574939714877494c315a7075437950796a432f6f4743307a72455173706c39665551427a3177413750676f6c4b71616d306e745a58737251485677543754477a49736e63352b4f702f335635746458567062514f6835507255556b356d69636a553274673743596a652f345444396b6a4f4f6c393259745172467837327a7567364441684e4f502b493374646f332f497a646546506f336e7a4d71344979616543497a2f5a4e4f5045664c42366f7159397143657832786762316b467646575954673148716e6d51674c54712b4b31546176364463437648356a5934334766506a764f6d4e2b62644c513044314f743543544571624633336650757651557176444e477743613572775a493738644c614933784c3859352f2b69445262304a582f375332516277306e7736644b452f6348637969543376342f6b3841313338467a575174414e674479694e586653413354584b7150315857677163312f64356d5658674366487963555373647a6a7a56694c5838723549484c6550305279514d55684b42653149793477646733694f7049436c586853376f676a4d6b336730544467556a2b5454426b32666d30727545714f4c6d6c7939757a72765647513871726b4d636337785744546c6874556e30706169766b6e734b514e687a38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16884', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416751634c514274467336696e4139594d784c5a727663326c762b644b486972554f4239306c316e536e75484a6f4a7a546b47754c58476e726c4261324771744f6e6e54633770786b305543735a496b4f656764395647732f4b476757526551787633565776564765574d2b56755a3578755350446270664c6a4c6e576462484745536e31505342396b73532b78756267316a41504d77577a446d36767676394532726948562f6b707a4e5a2f6f4839484345457857305a7854794f59536b647254744749496872624f5766364b777a59574c654d48314571502b51497561352f71397354594353326a664d4544536c795444412b2b4d5074483267434f364b5466655a5a374e437a42384677745a566878722b754d51505659664f506356397a6e65432b7a54456a5577783462756b535050482f7534443451627557614a773159774d6d545a425638646d3952565836486b4859453132596c594b512f3075795a6d794b4852563356496332536530582b737573454c46786a6c6d2b4e485173644244744a772b6779686177757056484973793254664e5345396e7436623668326c33396e57432f72756a30786b47482b5a4e684b3159366d6f3972366a4371476352587a39506674693151792b522b58324c7470457366616e6e3877566f776e304d35396a657257416c366d6342436e4133496d674e68644d576c3753574a425848767a584e38774d42624e5a66675769716e5051437443314c4b5252445a646862484567737564624b4c76466250304b4b42454f612f6956364749504b436858566f374e4f32346f344a56727347302f5730594a476d6d673531376358383137346e5a67503770747748414b6171557371475a5a6941314656384a2b77642b394d453565683871732b6530583059346841476869504c5935346d4d6d41357a676a373745724d793555434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16885', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f7061666f4a7954366e44496b587830475a4330687a4b6542666144525962514a6b344e5358464858684e454f754a63526d345074666a364d52682b596f56796437334d616a6f784c6d7a7075454e376c3265564e314e4c51617753597374484d7a47563262565456354e78524b6d676175366a47457a4a465038395844617265787639733667476949584634303773793737306932336b724e6b64526a63657a46425539537a4d3869313961746f7431372f444f654c48792b437159396e79386362743133784b73496a44477a734365354c6d4674716338463346486e74453961484132434d39396c423130414e6b566242727258734155486a5a767346384530596751437741344b5a5377714e47794d6b464f6d5973375a5a784e652f64564a3966596c787459455144646936304f5364502f6c6348577752554578424d694462795933364a505637324365314437535648745a396b44595249514146596f5553704764582f7457532f613033644169475676616238413033776136517a4a5a30576d7356792f4964744d77564d46704b572b6e30486865544a613654543433562f6a5879797778485543752f593961426f735a5630424a5071737365674f7952746c387149524175454647572b666757583354794d55547941744b6b4932563447486870486d33647a766d453476327337354a4967313648357a33724b55396d526157306749746f4f653232527a546f70774c6b714138654250736d564d504e742f484b416e46665862415172307366333776655a324c6d6563664b325544304177525a64593669794e58576733335450496f5376506d3132687736737a416f706a7943444d4e793659614a44364c4155434c556b676a61636a424f614a44675552594c553143412b48696e466f50625355525242536a7663456a703975304475566f7238716c38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16886', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a572f3378503742373646537a644c6e6f486477695863322f32306f55795565386e33683761626d49572b324b333372714d4f474e2f78444a536e4e6e31544c346d5748645850677a67666279344961446f654e716f396e35645534364d4168664845766b472f452f6c4c325a59426d47747a537258416e4a2b4b7839684b684e4451692b706b56744e587041746c717a58724d756d5656357a2b33586935584a596f57446b546554477a4265776a706542534a4e747352446e356d7741625a33726d626c76697176547662617859343463746232766d39785658355a6d6b575847376968375a74467153793151545953754650486457796f3779484e6c4a617438755366433755705151442b34394e38432f614f6c72642f7738343031684e44706668574d6b5239437871694a3432776a4a4c396a4e4f686a6668796d435769517a614a2b39574f38677177787878556f652b4c59334a41393668616e56626d6e33314156694a4f595733555746765163544544546139585a5149636333346a69313750594a6c3932466f736435686c4c43704c502f5a304c6a5642762b6168376c4c6d6e3751427771703059637861497335465468734953653277434739484a7850507131653958776f413341303047734557334b5a4d53494848704c4b4b54496641486d532b4a4d3956784f55456a397a50646e77396368646c5750576f34505372656838796c475076714c6e765a6c474163684950304e306a3248587846363074664a566a69335a2b51365347507a585a4d59525679326166495743676d304855716a7a5843633757656a4a512f356e392b494f4e4750316350466b542f5038556b466d426434376977796f34765341394a303075577a644b69493574667a39707172593754374258776f3841725a6b62614e7255452b436a536e6b5955396f424a3356614b55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16887', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416744514f3933576a6968424838587a4c515338364755654d47566b4a663966536c5a4b337147532b70675a546841795966586931657058396a63594d75736d5a2f79384364635263654d6a665a6e694330326a4d41505a545837644741336c426f584b314a67466b56692f434c42705930734173506c2b577730587650696e357539454177665973774934446633644f5138554f6359394475582f733458305772713974616f62422f5265754c6d38312b684a32666a3250506a5958627372444832792f63386d4431414d7839733233707a6a63655272767244534c616b774570424f73787a4972437671564e6a736d6577334a583944344a78536f4c4864556b457358484b4930762b6863775430546173613950634b43794443534d5338662f6f684a564e59554f39465859567461432b6e594463464f2f50682f4c4a475162744778703870526c423663457147362b657039487a6f74337553724156744c466c634749474d79636448442f4754587568664f57546f30337a7430686b35384859765778357656715543746f7a566842594737306d4f465379455137324158465a4c674e304e634564626f2f6a4a6e63534e784f442b584a68356f5357736a5874484f337342675968616349566576362f7463747561654f56374b72484b794938756a2b3867772f4779735041376e567654775963625977635a5265374c384a4c327636764263742f51366e614d454779386c53645662774b5154337265596a77787a764370505279464348475655547278566f34453649696135504e644d48567653693144397169716b36536a31524b566f6b546c677a694e766a615a6e65306a5339514e6e464c332b5a78366432454c76455063655133614d53644233457251375755645530675342623642452f6e43536b4258754a556179476f4e307152716a4c7942472f484d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16888', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541742b356f62377037535967594637642f42324a3651474c325a37316f71623347416c4178704d6836466a63476d53386572546e7332644c4770446870716d746e42656b6d35316945675359423963774d634c55452b353258774571432f6935334563583343513145326e744f7070685a2f514d302f5a77522f7a39586837506c706f5852417a7733673756554c72376c4b6d786e6666455136592f61435565696e6b75714e72693554494b66573942526d68447730596d5a44797777686a61396f7330705731534f6962424330366a694d55377357527561344677566d676d646c505a61744348383535796c6a50497a62556a502f626345312b3474506f41457953343062524f474e6e742b3463396f527a596c58727565753350772f45527146344c44555258532f5849504e506c4e4433563730437845364e7065706830642b644763525a73327a5967514a54323830696b4b527376565161374e513277366f4b643432455a734966735174536e384651375577496742706c31424a77674a2b6244316c624578566c6f5a45754a6141554754435766484e6c576678556153564d6f4e63324b434d6a4a574a6f765244684c633459625a53507a7361765279316736304c37716b536447527155433978435259674262757a4843695730476144654a3533756c5177594d763442764374585457656e4b78694d515a657350746c7957724f6842334c366e6c6f592b32524377434e437a4344576c756d78455765426e336976763768443835596462796a694172784e524f47775571325a6a4337757662563850712b74574742754a2b31382f6452676452442f522b32304d39695855347a2b316676734a4858573544486d44535162584d4162424c5976394c417a346b7659516e56446e4c39336743676a5648672b675755337949364a7675423652382b435a747a4330434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('16889', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b42424f45666e426a32514a51672f4c4e52694a70434c6654647177477375376c494f56593536636637566a6245507a47624b664f6b544e496e356e4c4f6a2b73386e3075554f35566847342b6d524f305238502f6b76764b4a4e7657725842694a39666a464e48715355616170486c6a3454724d576530686459394671435044656758444a56513541525a5073384e2f4a57554e597172673874797434744c506c37784f6558716d6e565276623645414c6156574a304c76324877396931764342746e42586757486477504a2b6864635468614a373034434f73446f7533597a4241367655694749346b2f71684a6a4a5559424957354c334c41793967363761704a4c3061545953654c304564777a6d4a6e7339346b6f2f43536d2b6b352f306178347354626932316978436b776c30654877617039432f4175744775436c675634305268534d43452b4a793830326a6237466254756675663273554e4c367a3037753255364f7439495569555652316f4842455262396c6841644145776f6165494e6f54434544313668317847685a49366969554857695a41334e455130614b4350476e304e556c56744b585037484d476a6d4d2f782f6e4b46744e62414979306c46624a58687844736c414e537973462f43567467465652635373616e6b4752716f713239503334674664726245315573334a2f517463394b58593034616e563358546e39626e554e45696c59422f477159673767616a764b6c542b37426d765374776d6e68646479354c656e647a6a49562f3246566d6a376573786c3952493933734b4c377570796e676b6f62595231744b502f586664324a444145493173782b7242633666364b564471425633634f3878354233776e48465357446b51364e6e5941326676755757576b63704e2f6f4f41794856333162786c4d4f3968306e6c356451364163434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17589', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417a4a4f4c7543716b6e64717445644c57486e6a2b38645a353132503078754f657a745164707936666a5348717863593075354d7a4357476347787a4432574a51584a634d6c535251414b4d6e3078724e5937786f7332425a6e58656f735a614365616852642b564c30662b57436d493466764849616368524d7378432f556c6f4b70664c7574337055537232724d4e697a523167352f4d2f6f476748595a73595243646375394542513539643753495765556a6e466d4431636f597965332f6c4f5a4a65326f79455a442b7454446d4b55363846514f53742b584b30507942466844647430346e3458496338714c4d737a654533366b2f495665426b3336326d4b32303277784f4e465a316a6e57564d686a497a68584d6f76787474693230426e79576b51676147314b796941367533737131354b38627832384870326869762b79582b6f694372486132337a7957434e674f6545395561394430707361336f4836476d52384745393078575465366262514555773747426969545646312f757475622b4a4a627a3050776e7362514a315551395673497a574a712f59484d62534b6866396d344a7a30524e4c4d4e47672f46436b476b5678686251494f754833777878794654685a6f4d45784e677a5a5776644d5042664b4f457046626a50504b647630475544334d4c2b704a583642727334372f317a2f4f6f664573794c535351715364655a573944656d687a516c46543168443739696167437974334d6654432b7142684b3575327546787176426f443354636c7856516e346138484b526c794b54435a38354a30424c6638636d513531626378706f7078564237533862764146467156657641706559486e4c543376333263393544313052377034554d444e6a73646c7a577a4e33657a744d5a775838664c6c6e6961375a36536a7a48466b75346d6172383738434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17590', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f4e6263686e3868597066764831654439556546676149765a6539762b4a56384a495a4c4d61337232614b78397a4a626b3865674c5a64753270396a48726f42795745664d5972367842522b57556b6b5450755433394c743166444d596c67514a78533247794e3363624f50767562706732784532544559734a65776e6d436439375a6e36754466557361495377636c6c435a56414433444436725577653063776c2b4b715777517a776f755067655a6276675a42644c6a3238704456772b485637477843485776484e71454f494c434e4b4377644b703865307171542b69422f6351745a45422b656f68347043674139526b6764362f334858366852744e4e4330636d724b34442f5567344c6b546d30675a4e5657352f4962436a6862377555345548536d3454586d767563794a734d5745627a4442727a65386d43615159373545635266625663494f45427632436e57435a514172363652447044696f746e4b3270386d6a696c4b2f546237324f5475416b6c56374b4b39464f6f714e6e4b4a597059564f5869444f62457a6b5130554965346475536a656b30316c62476e4e7842743679656b71714d7a34777a306e6575356e3046596f762f49596875374f35376839646761672b79396d4357467a344f684b4a724f37574c617a6e644d33776b644164763034352b757535354c7a45637849553766527247624a4b4d2b71654f4f424d496d4a6175774c35494e6a366a725a432f3439585468307163572b365936456338553957576278797965616437737639727755764b4164326555485255757a53796144756a366d484b4d503078715a7a467541475349373834316e7a417a68694935384d6539356433364646714f73345a2b69447277716b766d454e61427750635368754d68356845645359716d4131344e2b5662592f32396c6444434b54324551394d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17591', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a6d53576d77424f4f78414757787564444d4b49524b6465714b6338664a684f2b61385a2f694e32794d4d50594b446b7574737436564b34707336796f2b68395363376257764f6c635a6d4d456e774a723268463863444e2b526464366f504173582f7649584533546476372b6d31462b42775867705943425a6d4374512b5935726c51796267316669643036572f626947314a416a4a6855694b5a6f456877543037465431435467596946417a3362556865427a374f2f684c50704535547463434d4a7661324f7a326c624249384d4748387950557771522b7872397a597147334f52324a53332f62576c654b57775a6b516852366c694e46695a516276786c4b496f6f63356172444d4b2f42652f4b6f47756a6f65367a3543466f754f5856656d7a6e3248305045764e484f3353503668466b6f6b4c5871376a44436d494c4356412b6a6e4e3230726a7a424a747a30487075504f374839476d4842756e474377755176414d317955716846496a4864497a41375266656d523767396a586d325655316f5a6f51515a44646646766252622b744c4857626373484e373568454b416d52537a5641377844736b4d784e2b622b306478684563486b4379577439776b53356f4d4872426877656c444459526468437473777957336735376d47376d794c6763766844584769796976354d7874396339726c346e6f6264387765574963335a68584b367367627a6554617065564467635435344b76624b73744b4e6a6238635732665a6a506c794d7a6f7a33505061516f6c6a703132465a4c443675496f67775a726f3753386b4a6658466e41384d5872704f4b67785a704f4e4e5671516e49533078554352365170664475646363765145395074513553313169543432683578364735686738654d73716c45457342453250464a576f3848314c6d496f4341433867676b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17592', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454169703557534b5054555856736a75465052326570374d477a504b412b7571586b534d596a71774c356d6b5341757863646e766c336349424e616e4e74732b6f6f6c6c6a387455674865617a4e344744664f2b7530515641554d6f2b5551344867646c3541527a595968375a3037672f6637564d5071776e69575145582b6a3875712b3347544d572b6f70784364426b356b4564706942524b70786645655731645446655064426b665a6d77325278327155583266597067656c416943534f7137345a6c2b6568486657664671484e363879507274356436316e6c796a6579386b69346278647a3069382b364173464c68697652626839677a754b307565425954363252522f6d542b746666744d79557a6245384d5953706a6175546359326c436759574850417368706e4463327645676d496134314853553341792b577071326c73764549534839365365704c595442565579746667316b6c706e6b59543677744669704b48356a6b4256664d626b4930732b3637675a775544596e4c43626b695362465856666a6d5a6b744c466c595464795141634250317765776c36684b4d6b7776776438624c574e482f3168354b384f696d5859735a7748747546397177337136442f534656736c5055756666783139455566356e4c5a674a6b43595a304c527a6c6f58306d626e7a4f762f2b35796c557178686a4b4536334467666d4c45494a75332b426667432f5a4e4457716c4d59774542754d3278787a58585766457349336e665a33524c2f6e37636e566d792f4170564f70573464624c496746796445524c72444350427357306247797a7764667541733973537a6f5844454a314b464e38374b725938694f6954334e4f6b55526b776e46566a6a55697a42744f4b6b2f43646e33584e66794e5132322f5547486a6975476a5375746e596e6b637a59655a4c6d54686b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17593', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541763538304e464958502b756f69334c557a534f70387646662f6a5379356c6f3239584a62354445326e642b696b634d4f37484759444430426670456e7230574a536b6459335853344f4b6271634f35376a6d37547962666f397457652f6765694b345948506c41426d495476682f496748506357445646415273386e4c6a4d634c702b334475554b366c6d7647676e4767646b49324158764b4266484c6c58726e4174644457616751565936516c56766557774c6c643733714746674c6f6a6d5849757747356d58704d7575776f6a493577334741312b4367364a7975445859387377786c3533503039306e4f38447849416f4a67484f2b6e76376761337756466d7a47787438674b51394f3273765037366477302b4a6a324e34324751654b4d59516177454c2f6650704b555446414c334a6867393656464d3077444d2f686a6f6862756d51524f6c49323035545045536d4355484c4a696867336a66562f4a33534f3235485749754b4143717a7650736158576d35457161377467416954636a494d54534930546b787546316b2f504d6232497a39543530314d674f2b624967444c36307a657144747253753775723738496c6979434e72675a37314553776c57532f4f794e4c68392f364b2b775549394b4678484b33714a4b435446304f6d42546a544f42583245365650496330514b7a385a49576c674a783351785a59792f54336a444c62626c4d774f7032454969376c36366d2f4432494b6f707a346c55597748354258616b71786a50576b666837487450716449315679583363584432735a3047427363426d563556496a4c69732f654351634e43514d6643666438667a4b65626f50665645634d50526d4f68732b3431506e554a556e30346a41646e336c504f705a492b393962576b6d566747556b4d70393072512f65424a756866435a736177624138434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17594', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541734f49353552724d573731544f44734f30774c61786947774f6d665257586471684b30566f6a49554b4f5648384537384d2b5776465562315733795a3752792f784b414b5a66344a374b483474547767336d494857504d656c553554307243354333687459493336744d7859504e7645327678594d726f7444577a7778564f4e314f6b764a31595155633370444a7a4266587946656a522f35777a44714e7842573838356f59494178754c3437667a5759567663462f4135707266446e627167324f41507568497742696d5735517a52386643547149476e66556b4a7563617275683766363734485551364654484f53794438584a52784c366a78462b5035504a573359654b42574e306a39586971782b327033386366484d7445756a3862695574574562572f623336302b677a497363705a344456744d666e4c58754377744f797a3154476b43656f472f5437344b6257744966516d323575536c78684b423069646647683275646830484d634e4246576a777168627932345974517a6672316278776c422b59676a67475a66615768495570716d7a6478723862502b696c6e6f7158633934734d6e36385874365537754e734744524934573976684c436f4f77546f4946746d377262517665464f41764c544a41556b6e46326970476e384842346977526d487869684d7959362b2f754c3436696b356a73546e727141534c416253732f7868472f4b75302b663862742f775366384c5464427a4d37786763674f5a516c71634d5a436e517176666c7738302f4d64474f67572f474d777544792f6e7a4e4773652b632b613247475a75615261636268456475346a61506e5163394f4d5137384955544d643348476c4b47306c50734734365665316462546d37517258776f4f72396e33617771304a384f3232763542794d55747269782b6a6778434f435458357a30434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17595', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454171564c2f3436513468566176733534325233394f4c424357757175413071664635743747566748327a4b394e496b714834367157647257486372317452474943726b7a4a593166476e383175666c487672743171315242462f65792b4b52333952714163467954394e594c372b78793564476839512b704b6c466d5961344e716d3341623568767958624f587662354d6f73374b512b53635a6675314d7a534e4d416143486c56302b6132334d6242466e3458415a34563976663474585665647150746f5844717a7230786455452b346f5658306571444f38592b43586c675259653478706b754935357050412f643643394f55732f59463465516c5675775253316137417a64636c574e6372746365647051574f61754370772f43685162644e4f39636c494e2f736e78596675433057466279466b336b6e737975462b5745546e33395161454375766e3353715731494a50714f4179386f2b456c776d5a3466332b59706b74786c6f443137395248656b5a49757577777769626d64704f776e6830424b30376233504366483475534130566544337a444a4678526530663248446233717675415848395749496743583859512b35376b6d66727a6d4d617557797967726c515462776f622b5665385163632b71314f485578554563584941696a426c35347a4c4869736e647a7739482b4c56494875447074775737674d4f395a58305a5a2b47497a487170307a626361342b7335396b66646a4b6a4c662b68586745597852494a6c4e2f3044634a7958523162424a7474386b54696c6c68655a716b674a6a506946674a796e636a78543377363265564c777733334d4b6f6d2b6944794a6f4569483858326f575a326766367751516679513638457261782f63726e57685936454b6d78306337694e2f32493279732f2f447056304f7639395342326f6b695359446b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17596', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541684c2f366830657a66436249637a782b374b716c4b3768637275477a6558674e545138643864587849716b45474f5859745745716d624c6e316e393944392b4b3073352b544c55584f5059304e425556376d714c44786d54786b374762362f712f79614a6d7966755971787a744f69756f6b4169566b6d5a32506b4361386362574b493438735a687145386d78386554744536696d75786939664f356d4d51544e63586d674b586d554f6b6770663168685734654c52626b36536d79385971474e5731786a485a4249455147714a4544584f61384b494a626e5a62465956416e44334d643359656f7939384157366e4d314552414d41464e4e56414843755a536d524a30677548677a7a6e783071425970434b616a6f7958533352456a49587633725770684d6b30585749316b4f6439546d4e324b6478395165444a42797345394b414f42505a73315265344e48326b44627435517050524b326761374549697864714b6e475436344a6143766e673443754e4c69366b506152614a3570576e326e5634396a3972796341554c6c7048683661353348314c6d6e443575695678586171696239546a7345784b703068565a4268646c32386f67656d6a34526f734e6d76675a3234736432543742306568736263534658572f684f6d63624731464c6431717058336e4c3175757977547477476c31312b514a7251613479434e70615141716172454147524c374f35315479635a5471486b36757459475051634c7576502b654c4f6b446c545162557833564339656e6174737370395a4e396d325948586f6c6d4a7a504e465a474d446535742b42784e30696547637275782f664e5374353533466e4650743237716d614364324b48756c3075342b664a59794c6b5a344e673378566354474c6a744e77456e646731746d476c3347696a3754637246446f672b59456e436b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17597', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541786d6a51736936616a354a505939394e4a58584d447268637366656c326530454c4b6139655a6f7337735347516b70496e774146455943745a6e7a302b34526862704b422f62324a7234694e7961386c796f74656945424847414e7062526d72556c6939664d3642363841356264693974466a6d5274775a4745446552372f2f4c386278494b556768614a56697532577a48683452572b5a4d7779634632384b434d6a456e4c34752b4a55674675357070625662583071364e524d42617248692f664b4367567a4649586354484d5266494771494f6476724872452b6f616b7a53526459613279326e6544744c71437365727451592f456c354c5138505931414775436765446c5a455769384b70547a69752f7a66325743445068306b387579745a37724e515936555456497a76765279563848394e76306c4e5154556b35424242324f325a2b7268465030792f655841764f3857364f70592b6f72394250466f42784868735439455762554d5644506c2b525867536f6e7a676d5843655a4872484752754d4f66326173647235614c373770634d6338593530504749414b36536a2f77694b506d57644b6969436d4d4a7a486f3158432f4165586c466d7a526434454b61567a59742b5870633876724973346359507a567567776b72554e6a677a384e327939492f4c712f306b68575a424277784d6f4745334b464550554832674b75742f4e324369684766564e5534654836634a5532334d4f722f7a4b4851457535314f4346596e54776d4a4e425a6256494e346f366470635558414d6d366d73383652743038546b724f514a31782f6d4c6676594a317a4635444b37756e2f41324139346c7550552f33744255792f497553594e6f574b5531426d766c4b6464336a52682b6f373762396c5a5659494d31434866395a354d383977454c4a394f4a484a5371384c6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17598', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d5152636a5a386a4a39434f72304f637a5a715a483137662f534e4e6f2b354b7744673263747846594c64796647424b38414b566d36333444345a5546624b2f46624e74724353635036774853716e712b65683668526e324857613468685746775141417362382b5a69714b4d42484d4659382f5943557a30705143325a6b492b4b61716f456b7175635a6e3830324e4476393068776c5173514f4251424b4b763970326d6a676d64324f56487252345a772b66794b687043614a4561383941365576755638387a6f5a4973483842465366356e6b584a48756c68484344496d4d4b596e7455777a377338665a36384453476849597a70684b357670593861514b335047567447716c4b62706d42697556483769762f56324248662b47624c52573153746b71755247305636526834444f4d486456576f4943414b44666f4f46506f714a2b4c38325156795730416e6f4137636b6d704f424445564938416a6974327366474e79514f3772774c326e2b364f556c68316a6e58357356343670756a37574e535175462b76704e78666565594a34644741576c6d7147506d732b7a6962504361337275696d522f39704e46716258786d6759734e4a532b4d64726c51395a62755a652b444c3433307157364c75353476476864453332475a51624961377a4b764b763876396f504449794364616454332b32776b2b3048372f5452734d57564d4a675269327a53753770714736776c766a6971347943782b2f3637512f52346437474168774f686e4d6d627739507361346769576861766a4d6a67366c4a4d4a42435566495373336c6166715341567373663445724f733953736c77362f4954724c415751763555673058532f61544f6c38382f783570706732764a4a46343846762b744274483059364a6a5a66374833577054503951506e7a57686e415232715374693073434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17599', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c313756476f4a4b617531787734784c354b3376647a5a42542f78793744503549463662774a72336e625632414565795a61654a6c466b2f4a434c4f4d384f6a514d5854394e326f74756164772f376457566b77766f7a4d324468354e31623241686b6b6d466c477278686549652b37302f79797332636d4a467679684c6a39762b31767479434a33474a4846654a446a476d6f7161357179776a522b396243453672643034643453476c646b5269714949304171696c6c615973787268656f51416d6b366741497877586f66332f66766e734d61544f45664a53316f42705a7755775042544f6f3766746b4374535857792b6443635a3542556a3154463049686d706c49304e34792f702b4c69594e2f35537759547742324243355850504d31496233477334762b3064535771717131564333464346326b3241386275394d6c58613150426f63514e66357563566d4e4c6c74314d56583835745a6b47427a574b45626f782b74396e2b656c614778375a58424f69686b3141374557664c752b545132594d6c516734486a59614e3936336f734151544733365a4c366d5a7733672b5945735a307a43525232502b5a597759656b584146664953396d472f5570546f2b487750444345367261334f505334372b534738353054743964697a7579616465696b38414d4d51734a2b67747259526f64494762745074486161717a414d676a68677078397668743871674c32485941394b376a43514a343353383535436c593836544845647755336f492b4b63416e6a33624d6c6e57756b66696f3741703954392f745332684254574e567763734167465a6f355841773549574b426b6e35465755524a7947724271492b5364644f4348644c624d595a34795343505736615971564d374d7338713254382b795072556a456a78477a4a386e712b785062486e634531466f73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17600', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541794f4c593450786c5150415438674c55554146414274513756304f785544306f492f4a4262484c4c707256357a31547151614c3777786a7a79494b39332b30682b496a78666f5a6c734542524c6556636342504d35754a6c6a346f61565a50423736526a42745670303156772b32584648486e4d516c47717963666e4e31754243774f4a36656d3362535630467361716241764464384231556a6d306a74522f687851357966505042543572567462494b6931626f6a362f69316a3655524677367a783935447938693868776846787a31392b384f4c422b694f4d6147556a744a315146446d69476b447a784244534e31492f5046466d767957724d754e65376e526a70363863524e63354d4562373473787243777172465a57354c7a336a4e6e6b6b556c6d4559437a32384b695471644a4767513561703539467a7330623646675276504467665672746d6f7836456f445a4f6a627257314c57726d33304f45384a39762b42666545536e7977486a63614e685a517962626647356f4b5462434656706b496866657073786133653937634b4f6e6e4f722b3141527578365961774c65516134702f43757736753543544837337935724d7762566c4f35487a35302b377677674664494b4755532b554e664f5a755a326d6a47566e674679546571574a776357704a6552394f46794e4f716b2b6f77587370792f557679794c37577758547930344d6b375742424a3569796e614a4c592f4a7461777568596a72334e7a6d4378304336345076316b506d44347a726d6954567837344439764456686e6e4b6f6e56686767496d73386a4c57634869547064754a545a436866756c373672583443446e4661493032577750692f7745566a744c366c6878557468756b385643474d48756934415a644a4866383963746d333944515357466d7642634261504f4d5262595663434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17601', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a72724d72453556707861396e4e4573384e554f624c637a6a4131644e746969555035324f693878566634356c444859666a5141477344546b70764850466f6f4d334e332f30735746536a3048376f427956334a64655434723264346b2b6c384f626850594f48734639565476546b5230694171413854476a775579466776752b686153356a514b4668502b3932733154614b48527831386d494971394b497371714d6f51316f78326a7a37783155326b396577505149693250617a2b745351333077356e6e5742725a7a576233546e74316c4a59326f475674456d4435756830435971304d594c64542b334256327a64736d7a34303279495834486f453169326d586e7472354174385370745979476c6c6a6f44506f68634832506350382b7846466845584648765a5346314152454d50746241435543617741426c6251594b436b666949764d4d30644a7a526b6a5451795762564e5657622f65503466626d7057394b752f324775494d47687135576476514a677161302f773368466f61666c3531664445564747736f63506e374577756c4f6e523877567a773232586b70373673774a78372f3549646572513832624d587634744332314c3335445449527538703354416f535a67694d4e30726d356b4e504c376f655268342f573048595a4153446758526f79793763656e613241305a3739574c4b6c37334f444e67394f653656414a6c722b7978692b5a3662384657464937686931796e51504a64655379554a346c413955733830626d6d4a6e6b776a496e2f78747538375075704f477371704b4c763837452b4964703244495a746e54357178336747696e77786550587954754d55415a626f4a4a6661597041394a682f3547537a6f5a3956333750334f33586b38677470786a504e624e396969647868787067496136636a794a58534e4976734a434e38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17602', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541704974586635716f6f6e57564171645264436b6b7769706137334142515478496832385279484e57524d4e64657039564f35717853636644696765626861384d444f6464376b776f63644f43385938377a66716a42755837765068626b67324a7a4f546b4e6a654730765846476b486847394e3544434966504e4c4473524d486662534a43453475636b4d754e354d7131654e6e79374b67536e752b78624b4e6d2b7a432b674f5148785a5834714a744d5976384e636c716843303263422b62692f465031334e725963415532436348336f36504752686152687644626b4252412f4a34333744335845766a6a7045466a456b6f755246756a494268634a7758475a5074475273685070444d67502f377a3864616f5348634f654a7442794744576b4d7a53376a53526a444c6752707a5a636c4d72645051376c7754624579336658646838394d746f686672776f4175527545464b4b2f7069736738354d4e48555a433553386d7a44517669753879727a4b34416e49595750704843707072393470566d6b674a32616c5754583955534a625532354b6f717859656e467735597164457646674f5244376f78366c3773346539426638794877563343524d39577a44337a48354a6369545847307773473173582b3945757144552f6d5657336a4f582f2b6c55747064524a354c5352467253574c6c39304e6b6c507559375939744c387633486554703555784c58515471374f635965506c4c574f49675745367867626e302f34486b7979486f5a683062444b4b2f46394b4f644f36637276777357452b704d6b586a466e74466668764f4c3975564772544c4e335a7454314533642f53624755454966627a572f4c583062543361326868544e7662655476494c6d4271504e3362466b6b35416b2b303438304f425369574b45594c6233536a523334336a2b35476c4d73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17603', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a78756361426948654d7055344e2f6f7a4238696b77646455344d526d662f6d5276385a5a632b317a42466244796b5862786b4968616336593576616a4569614e796436645873432f386f446d75795957356b6375574169414633416d7863566f547445797059636457506a376542546d727148764c48782b6f752f415770623768436d7979684134417632654b6c4f38586353503445766e4c7274384a7a2b7a6c6b6c6c6c6b576b796a51426e70516830304f6c41764159776c4358653163366e32396a47306a5157575972533555584b71464a55686a32347234302f6f62794830376f714b626f4934587341477533443054536c34415464616468325853417a4f507057443374382b486d77395a5544427472365a47444779736e68477758522f4c3861596c746168716333634d6b4b6e6d6e6b5144793939597a4a2b46363369774653744962486f77617362694c694e30635853304c46663530563669456b7079576433414f664d724d446a64376b444566462b2f374633496c376263596b7045694d596b4e3330797a7136577547647953384f66734d384c6f73376e6e5041524a31546939364b46366831425078636a554f7662335965526f39644f6f626c4c67504450494d6e7278463841594f7468616b386249553469563356573163777869514a597a6f727042456e483236514441517239656e6f6d6853685131374663712b393157486972536757374c422f6b6642546e3466704d316541435138496d6b44766834303075424e7678597a2f586b36584263614a44566a77767931594e5a573161654450434c2f6b524e4934646b2b45554436617a75616342756d4f614955354d716344734f2b445a582f7169575230434e6c39672f744d685768656f6c7a57664350544838743374683251586671676867513848474b5331694f626857533238517038434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17604', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541754c6c4e3735307671544e4739642f52456f49332b346263354b6a516c7563356c50644158464365326d327351517855775a4642795a527a4477394368707155446f723961776569426578523053635665784f6f7a456a67784248473131656b76522f79546f4d6938392b6835736151476753344334696b617863664d644e52462f7a762f2f6e543338713871706e78414a2b7344594e585463412f5865703069716c4a34594e33426245433152336663586a715a487a74515078384d7539666362456452655238786e6d686246343174737275736e44347459414e5072784271674a66394a7a6a315545455873566e746b54314a6a5158486d5478744b4464517753467a4a764535394b694e73543071546c7a517370656a5535507233756150762b493364654b6172775a3970484b586247497a6c584262365239345251767471776641624333696a2f4d51763850326a6a4a4c6a41734c7257772f6e3538326d6a566e35684e46706278687066715851624e7854354863427765774f48626e795656475a38763537553343747733512f75334d6967504b4e66576a637938536f697031347863505630782b2f6e4e2b6f615163374453676b6f4376514b334e44644e503074543764376e316a30535a4c5372654b65726e695057586d4c5968517a724b684647625445626931707966764d72536f6c6e72454f5a6a4757586f617259774f6c797462505a6a795144726577786e63377a4c51334d4a5530587854486732454f55614c527757533548446a694645424b716a674153716454793532364f69624675564c52426f644945776165415461765653306b4b39417975524f384670345750456662784f46586874436c7472372b62496c74535347654f49627976336330705761436b5a493641306964307658617772714f584774396673493066756a4156337355434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17605', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d626733795179784a6866763576646246507976734b46317a76794f715935384f372b55344933304d4c384b4753707945355658695257694b4e4a596c7651734545676f42786f4446717434766f422b524d4c4d4e376e6f6366776a626d6c5352334d346b5974763932544138384d62325637523545424b4d38566c694866674a3072316e62576336456b5a6a794a664f526532756463625a5667467378394943755353724e374b617a4b42515a54726f55493568756f34764868756577474955305a577876316f31735848763462366f4e6d67617a775634654c71416e52644454726a53544c69356b596d664d4d313646733061487a774e31492f42426455775441684e6976316355643449433974727a6b646c384a4169723939334c4636614831726831346a4c4c617a515357675038674858344a4b626e55534167444e515730347678692f6153527877596d5279423266644944666332416a5941336e4f64667555496c504d6b6b4d5255663676454a754c704136596d70566a52334875666a365472696959774a435966323751455951364c353749577a4b7151692b32333159303865304f6372546c6d726d7764744173667659714d42456e3733574959724337586449512b394f41536d4551534958666e76493438317244302f6e556c525a43736d33566867702f59487043797051524165535a3173773578714e4f4c35594c6d754d4d4d63466a4d33576532686a5a797a636332622f356435627461614b433457326257546a6355625950615438496f66767249343531652b59306731394a66726e4d4839662b684976334a4a6b3932772f654f4154367a6f554b77644d47747475644c577668525235374b3572534950504b36526a7245334a344f63484837786c716f5331324d6476654d4f7055677444395a4f57793479494542644f5736776e614a73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17606', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d4d66323877413562496d44577a3865796e5a386b765955304945744e6d3435625248494b317553444c4e6c766534726b3541447676484f6e4353576948662f6534476449386f4d564759533473674944437554726b5a6e684571485152574b4e4e67595143326b664f6c4662374d4c4b37436749417947674469732f56697070344e492f4755386952366d7333704f626b59576d3879576743622b4776557469646471533155576e4252326d6c4549763145773674676555753946743137776b6c772f6f7934666a665639335846424f6e784b736c42314d7338735367666a796e755968496e494c3354644a744e5277756d526a6e496f6966782b734735527442634934654246337734306738464d6e374c617664362f643852483755354e63764b4d734e5863366c2f64597741734665304a37424356744c516a354e796c4a6c614b7542714e645a4b554d42564834497756324f7a50795a6a597438303744482b4e3872774c772b526a59506f4b38445551396942582f55595952786b412b6479536a4b2b442f34445665766263494f2b345a765775476470496a52384e7536354f6544386d4877554a4d364178374259654a556b695358346b415639676c6f47504b5958685562546b4e534f7533416f756563354658654867796c634b38354a4442766a44723870793361634c75474b74546858555549497a6b3378544f46586a6d696462337a3862474734394f59634b766e4a75414e6970306159674b7935675a68513651744575694b5468304f7452643875466d36662b66364f56706b354e4e5772625248637558616562786f6d74764a7934754755526c584365772b722b323372722b593247545634746f78327a3630762f3061497765707470417a6762315471674249564d6339694c626463706d687a35414c6a5038686e42345863594379374f785438434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17607', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541754f2b707455567946706a6e66327975664a3541724b61667355585669377537742f75565054465469775163562b5952514663565137626a50692f304e57776d2f674c566b78746b4f722b65695753357342773471577362656f42556e317a624543703863636c41486f61334257625869736d4449774d725357394e776e385333566b4434593733534b4d4c35727771443042314e37516758486d44354b474a534251357454566e6b303951497162752b356531463062754a5465783376685a6a723276486651767273766f32305978382b7175754f4930743259566a30457a7363334b5a4a5046736655556a5045517a6b5763662f3672557557552f6258556643385764756d6e314e474334787178516e2f34367458694d6c43385a674d6243476b71646536627655743832715a3439742f79516346356e664445385467395437344f57574b4e634d427574764a376a6f346d49445568392b614539495959614b78787834765575575a4a4c52566a734565792f61684d464b6e6c7443505434647754504a494f7579486c44626a7955585930467657726d547275763975582b306b575041352b316e337951766f6b325432304b364a46322f473771487355443235547a6e58394b6a6c7a5571416851324e567a336d636175795a62596b63364b352b5671486a78746b447930535659335a30354f6f396b77797669492f6156386d41616d73472f677343326f4a372f66726e673379686d4f7162576b744f34616f424b316c732b37794444715a7a56572f374e7066762b6a37734d5470563832464b626647545a693171614564785a323346316330696344416e3547473768366c335a5959464d2b724a3271676e517a773375694357422b694a48462f70636b7a446a4153674b5436512b526a6c505449656e593154466c3650465951553248494c55634e75594238434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17616', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454169526d535342442f34554c58356179776c7a4b4450663679635a322b432b4d44784e3153784b453251502f464e5a624733455643545a746d336b65346f52525870435a6c747464573365516b6f6f563241574b56786c74386659486d443875364a70636c514e70574370305866753467396b35432b4e74354578344c6d57354c7a375470537a55503467644d5473516b4630315a363175616d2f6b694264437055696e5273436a54446d6971636e35422b5a756a505657362f5632642f5855744a666d3073474d7056753966767257702f47675348325547524f4972474f51384b67753030536c66783053584f763743643431387932307471724c4d4d6d4b685a31746a43776d747538344157635031723472716644327357664a4a6656304e77344b2f334b436970567568446f507274484d2f6b437853587a6348334b7861486231694b50306361765736436a2b33756b714d654b41504e5a5335796b4436346a47734d553570706d4c5531776d313533386874626c62416c48346354504e59694d50754d2b414d4747504f6c744e72324e7a69626a52486c7a5038596b43542f3759633447506d5175794a5138434c5839525267385131722f7548734846682f5552592f3945766b53483661507546747957545a723270466265336276506d575239796642336f4c724254726c49707741613248316c7a626579376f5647304e73485837304c363446325866364c457a5a6e4e5a6150595435444d704e30574d317234464276367a546a67733247756672446c5849414d4c6534647338444664746331646d687354314b4c68474c4b73333169774b7a4d532b63384637592b4652686c784364544452326442423569425a7132657544786b322b6d4a5452385a30504833365155566c73452b75646576613846445631374e6a317953567173766e4e66682b59593138434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17617', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454174616b626145344b734e713053716c484a5165765373566169786635674e6544435268423878374e6659342f417346564946695576344178564665325a6a4354353256346c315a38686b465073667866486e6237414f6b6c6c57554d4656374c78617539666f324e6d4659554963614f616b426d424434633038596959392f5971456a435441693244347070656b4c2b715a374168744334776e714a6c74632b55574d7065676b46632f746e427446476e616243426b4f61357a7770424d2f4e583830554c742f5167635039434c6b5247753041716d31357976476d2f35796d345546467451664971462b5646726268774738396453476d704d58713861665a484752524b72456e7164585839325159664c38565074626e78352b4163743664584e4a73355032786f64455a77364d5745467a435a2b38364448455446384d547166432b3269316665772f59346d50542b756e70782f615a58334f2b61517657596c3845632b6350734d49756d4837494f563339656c6870326c4c746e41646b4f4d452b323342726a2b746f734e6f6f496a55436568672b50636d76684f386463363872447039435634614e3053754e63334657516668365678766c545730354168564579536d30397839684b67414a7962416b624e4c5135455036594d78736177384555587943664c41594f45486464444b6b7931453764655471316c3942494f756264426b584d6d33774d78324b634b2f3463414c49545254786d32784651584c4341784f45436c3468395a5543653170316e6e7477626e6f4e61354c755670784852746f38786348527257475038564e2f47375866536849373272484a32553443327a5759517a5431554a6b446f3275554e5954557a7338384d697a377176796530765859454544346a4f594a4636593851576875367a2b57613845515039416533634b2f654a6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17618', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a5630326933773759314f766254344f4c544331756854425a2b324f39716c59474e34336456675731486c3865494566716d57446e4e644b63774635456e6a647a7074612f646861472f3572333242786b474c4d70652f6e61416a4e6662343750395a5037554743626e3265564a5a434e374b46747a44376a643259766d4e45657a4a4643524d58666f4c75336641486c54526a642b463548784a7964624545324a79306641314c6c7971676d6d3662386b63766867337776786a4a4969614f767a47615a3778316b4e575871645031513236796e737741765865714b574d47714a6c6d496a545957653242686e376a74656d745148707a47514b4865596464526c73326353446459434d3342596e4543556b5076305a706451534a723149344d345179614a4f7958724b4a544870486a43466e324a4c64615a50706d597866422f414f30654545467644572b54534f4b474b4b337a514658424336786d684a63754951392b5636473148567433366e4e594b70303977683763644e47374b39486e583349346166364e66326c344643617a782f43466d772f6e576b69484f6945683465624d4373396971694b79384e784f343432787330745747575232685a717537426c676c3868334f2b33476f374942632f4b4631306b50593954672f586c4e2f777364652f64377757462f54324b41746a6879615338495466684d71694a664a304d6861685168333157394e33325a4f514c79706661415876786a4348543666544633532f6268674a696d65792b343870716e464e7932566d7579525375514f3738425a554b6e69384552354666304564353167576f772b554b7067535738674266793870384e446c5a75583349786d534b71646f554c736736675a546f6478636878364b3166726b4553334430597847305a695556495175474373367555547a316874332f5163434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17619', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541326767553369474b2b2b47776c37353847446f6a44377a4378412f484f73776b6f646e6932744e71694f78614f566171337a392b73414d73593153524737534a756c61526b587151706d557866516e752b37455643503675516f2f694b32693671387842396e3752556b6761616e3865506d5a4a6a56386930616b6b7845432f6f44393755636553716f4d626a6c6f763565674970334c33585a4a6e454f526c326d677331336b43495a4d59645949546c4c4271367a49544955654a6c6d53374c454766467a4b70396d45366b526d73587a50586f4361316d44304a5058427a682b4b6c33642f3134664f76636c556759397674755a454c4b38747658485844356272306b6352322f5577684c38473050305430515830384d6c3778454e30775a43506a39416346497a6331593057676f7057623458444e50715630486a4546447339307371696147546b446c416a76734d4d524273565247422f6977463257517a622b6136643045583867477841796c38626c5048364c4d4b62376f784b747a30334646766a5a72453739476374397775454479717470784f75706545504356456f41534d5258474e795562344d5367304a633863327148387a39724f6b784b764a5a677a70582f5147364258356c69777456794b3446564a4b705234612f776a587334356e34614f4d4353306e564b66415532364963704e4664486e637a6f6c625479683070396c6f516967586e646c5841446750514c2f3259747a32326e545469365051374546794c466d325931703856645a4749683773766d596347765734386f636267345857573068766e4479613446465754534d61756e724d3562494d3841587a50596e6e39744d4c314e512f31505067434d646a35334b354365526f63672b446a324d696a6b6949304350327356524770492f756d2f3461344566304e785561446f6e63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17620', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454172644b77307739536c56364574617979655a483763706f5750535474417078427135616e4c77464a4c393569646266647042796e7239704f774f376e66583669646543306c566a717778524130377266436f416e304b46796a74703353484d4c477841756f526d4a46546c6f4c43525938376f7759686b2f62597231796742746961544f566b727a584b48706e49335530326755484c4d533441474c64343950424f6951504e47684e59774b2f4678767866455568762f4f764e5a59474e504950575158555a2f61572f376e6d66725a6553695848365339676f616d354d622f4b57496278536b7933757a6341734f4b3534466738797479303658595a6a7072764d505159727751417079766a2f544e3334437833476f6f5570416476776e73466e52312f66507a746d5437657165534b456e63506c536f37773967522f73765163385a474d5748736e6438777665556772346967463061546b54674e71746e42386a3244544d736e524d2b32356a6f7761666a33465739615444674c4a6e376b7235636561526f74494a314e7a686942756a53474849683166714d574648627a3069466533704f614b59644b7466354d5977536351484c714c343949584439753154647868545a32474755667858665058436857697a534e356247564c325649583038746a59747a47336632514f763931544e462f5a51314a5154532f3147573758417275526b71526f32704d4b6a6f4c6f566951726c76456842694b4d37636234634e72642b4c4264587732536953423834646c4c33626d6a6467625634444c72385043312b2f66312b444b7543584e45775a6365504344682b41375470546670574a6f2b634e2b506578645977336274544f437a5168745434433144516a6c4d497a384f4867566d5a6e7a4a4961413150374455344c453349786e303355516f3965514236447538434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17621', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b64695a3350554a414b3846414773336f726c2b4746365643634f373550565646737856614f6f706f78623135766a6974693470617939334677414e593361414f326e7649784350646b7873634531503147396c505447636b68686a6d4f633237752b6e4a6767474d412f794a6e6d3248644c6b365336464a4a6b72536c3831514767485132422b53336d434a663756533078356d2f507a55506f6e347358503574756968386642314f4146706c394b30754f463859364b47366633777045627864313477736347536a4c6b51542f3134366f557856422f644750596d343949506f2f4638746261656f41486e3754394255367533767147754135417343516c6f6856307058512f494e4474474857566859344c71354e67306d6556747446494f78796c5572513875584d536b786271675a2b5a7078542b486456646a4733386d447244354f4d4c696f397275376e55344c5a376e574a4d3258495261446b4f55506c384c74536a48687539766b7637786a71416651793748416b2f53566539306d72676d31724a724c45552b78456f51347972652f544d4168342f484738426a31514b6a647174384961796f32523762516745304e4c3657432b33536d6b4a37425a622f382f4b4a54514f485730397035544237396e6b2f49614641367a5a6d624c616768556957764d524f4842556f722b31612f64586f304474575a4a754e7a2f457231627a466f35506d342b6a347345454b42674b445939413866616e4b466e746971683476637862557a764b43793941445178676465664a42443265446d714f747a475a4758697864326565374664505941696834627347303348597a4f656c466344553656724c546f4d75736f38446d6444772b586a4c55786b55684c5a464c5275467552374a36563338394839326755416a443052504e4541635236502b42767736494330434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17622', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e6d33446b4d39414b67554263724f7432726a505332682b51754674492b4a63745358556b6f2f70785a32776a745239414d6236456547584b586b52665452536867654d326f51634848553945466979596b7357586f656f39354478596c66593644324d2f47595a6a5464366876315963456868364e676b464572555254755a6e304c6973555171516d3931576c4e6349415049466d54675346544144684c51576579757833754c346c34563341466a6b3155387773465357544b6a69384e536c51393461316973465141716c6476573547427a7078612f434c6238624954645a58673247413966416779643265595042345473666c5932525773414b68665a656a47326743476971673052456f434963312f36784e2b456e64686972327862713156386d4853533635704d734430484c614866533239525276453776667037792b3769786f61414c76364a7a7977556752774b7544316f43484a6d313935683233516c6e704b734558707767395a38356f33385943724a52304b7455654977306d52543136364b5a692f565458636c323873482f53506847477a504a52626b434b67332b506e426c625365346a6e377a63615563344c654f684c4c51644267424c475a6d755330555a4870764153304f6d4e4f5a715141316663366c4e4f4365417773466f55345571434b79655a4d38484a53743964474a31474149786f7a66516356485361687872324154506a617642415a2f48566532302b7a32554f376439416e462f4465454d6a63704b78795549536d7065666e48704c5132714e5a4c5651386d4461686157753944734a75596e473646675a5a69525333347557347859334a413851705358676d766855796a73584e69535363675751622f6e7550563463396a53685350665666546a6b59756145464f35517545557a357667786645544b5070517739363163434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17623', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541763530434a45634f6c6b756658784e6f383053753371534250516c483068435546445775757a6e4b61645262625568577a4765563442424651433777442b5a4b50776e43637936304c6847642f74614479786f546c7a56477a37394876677048636b30466679426c4f53515563786f5067514d6b4b2f765974447062554c5a433532376949633456366f6e322f6e5150614a6139497756574d59616b6f6f46793433707a6a443570316a434a536f31656b6f4c6f32704352383855714f3179656b793550477158684b43514e694c57454634666554766a63536a466b6375325952666f6a4f765178654c794f74773869754f6549347a4a445355426a352f713036326564735970797636714d6a55744e526a434d6b685a4f445653324a7868544e577a65624a4a4b344b6457544d49414c742f464d4e63382f43514565456c4c4859664345506761495272535254684b44345a6f4c44703232566e7a53722f53544e6a583145534d555954484e774a576d6559733342556b55373449553572703479544954773742345377684552453074422f5a6a3637767a53654f6a33534e6c7138657463454469572f486a573272736344492f6e48415737744a414e4a356e753556373047574b532f712b6f50664a365a35714832454f7447704d34755334565937484d75757a32512f2f2f42496862434774666662706e373249334b71763368515067537277634b67576575646b7770754e68655749393566502b39665a504b586b525a69384d527277744249374f6b592f6e7833312b44554c4d6a4f50742f5631734d2f48564232566763444357316f492b754e7a71587a333442437550356541315a582f30304f4d734a4949554f754f506c746c3859634d64704d75704b44594775384471683367464975564355585644426d62595652744843585a656d7065714f39322f73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17624', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416876447163567456386737776f4550786e63354d59464343413775376b397a72735451365566394a695434655353547a766b396f4b7178654376507a495a695a4773325152735a57442b49536f576331712f39326a6e38446276516f552f593549576d30687a712b35755346574735614762556d5175615a3430756c56656967694f616966303446376b4d4b6e4276666e526a7a323472676d4e4945624d6372732b774a6e3235634f71424a763574333248627876506f4a4459513866306c55523146397972734e586c367458566b2f6b56395971306a4c4e743449376b43664d6672742f4d703849676254316279626751574a5066744a504b2f30566b4a3241716d2f545268586a6157705a5777377169703541523275594a716a354a525643535a6572742b455533333071765778446e326c42714357733641552b744b58696359314b545845586a6b30415565326541697763397353654f553343692b6c5058667a32546f4c586d564f65475268572b65676a376a453568637736535261366c4f757745357533555a6e764767736c4e674d78484c35364352487643766b584d703050616f54375739695a767267556472687034373738454a386f2f72526635317067396c78657254702b5476645a475369367562424e39766679732f45754950786656346a486330494954434542353265737639316e4234717777767869576e614d754347484f36744349785071466f366a7438794e486f3662304157622b653344486c52494a3137704f6a367662342b466376477851735059624d4f5853786a56557a422f307a692b6359546a56674654616a615669776d38563742795a73376358394c545874676a7a353958694e333634356a476a3464397a48354d3952776d34394a6438515245393936317a58584947337972303278514b6c457577314755446e694a4b55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17625', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454172594663336e4d504c674b736b45374434303130714a30325171702b594b5744584474396c65655a48743178764f2b5a63374c725878364263474f6d765449682b675742412b364566416c4439667133624d51622f4d2b4f4772656a536c326c6e6c39565678372b4e385a50435464367053467a7a58674b79736151485376643074562b5378366972377143796e323944454155526e544358686c504c6a322f61514b3367507465583836426d4b6c6f722b65445339656a455558455030662f74624346793063696b6c666c544531464f52683231364e6a79746e554f3553486e305274574136417970526d754b75563453444f3064704454684976416f6a64534351724b516d463476724d4a71616637353255616c613944425a7858623076356b635442354e743772505742476a6a596f72577430334d7a43796963654a63744769627741614f536f6748736b4b7642316b46512b2f636d66564172442b627573685543663474585a416f6b674c6c42446a416f72714b4372544a6d2b4e544a717466417a3639445a386b4e54594b3252564c43544c6d7962524c786e577a486c712f305365305170544734386559654c6c507556426f4232645250707a552b55715a7475755638757a716a7858514e54574f695634565a335271332b6b383269416a556c4a6871746951524d6553397143795878324550394a7139727938344e7975324c6934796f444450384774626461456641777771664f36723454526156453735456a533455796c2b44763138496149784f596a6b646d6a523638344576394374715778786c30674d7735575359636748526937564b534d385639444e70474b4f4957694a426e7878445136415079304569425247517752577777724532324638786734776232342b45592f5062574d4c456e667a634b536577785247334f30624b7974626345434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17626', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f3674336445316c7269536b456f716e33684f4972666237726b6c38615a426c2b395a3146746c705935456b4c696c7735342f6d5673757667657a55482b7a34784331594a6d70712b4a5346797771616c6c414c56384c42713753504d385a6e7955734c44467042575a697272375568524e71536c3365694e68534e2b46352b783271363967726750656634516b39456f6d4c6f6c306f2f4d62746c2f53663863444f6c563847686d4a5a4f754f714752765169706b646457335057784874786b6738514e4c336f4e54526e6f432b384a653970326f31792b76363750474e7a4238524e4e68337a522b57566a513239592b396d414d322b3237545062324b6d697064504974347a3568444d444239445332646c39634f304c4343383773394357436a5342366d59452f3551584a4f65526857346a487a6457466756554750664e484d4c54345947482f72684250384b4d59736967552b32707a49364b38522b6d6d6437734e5553424e4f6c5a4a6938544864354c767136372b79515a68455957765471676231307870446c74706e4f53734534397637456964677939422b6d784d59577352436b6c306272763554684d4e3248715a64596f69352f69373136426c395659455530646132555076454f4862704d6d614e70526d6b756e706b65792f376d53486b6d35474e6c56485a535769797935303045744d44517853686a6a794b685664656651476c527458466970365144676a7a462f64454c6748333543654561584731346e702f5931526b7a4c7a36426b744730535a514643454d786d2b4a2f6e4f61684451414179504330526f3737686274624f6d2f794f7359334e31386c5977465277796d4c4e7a4a48534968344b69504a5a344662676e686839455a746d527863376a516d3246725545384a5945496353796151492f4252466d63686b5866712f746263434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17627', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c772f77354d736839363967625442584a556c39664c437052456971757079684d634c623066733677444b5a53326a31514c335051766d787a534b676a6838394e6a6d6971754c54382b387535344b55342f395a33654c5939396f5173463338457667686a642b446c656776715434645a786b483433513066644e696c65686959466135576f714a2f614268685450724c43333147304d595750434c766d5a57486f2b67414f326f634b4a4578496a5869543561387134536e334e57774a796b6f5436573668756d6e376b423467796d6a70616673737250786767695472484134324338574253765172732b5378745a70773673474966384f3045774e624a646246624230386575773467515a567930505577696c562b3267797a556f58354359536e4b42454b476c544f4f772f386f6c7346592f5761373333747162314832524a624d6e514b4335744d514b39324671324e746e634459455443305647554f745931326c2f576857336c6d31786c2f2f47704664476a68584c7864664f352f37736d2f45397242566974656f2b46796d30766d794a506a324f63493766642b36424363304636723166743534465848634449324d303044355765787a31314d784d5354732f355659314646652b586f554136385658354931355a55307648644f7a4a46454e656344353949742f5969424e6278496e516f674335366554356f59586e397331313672596775646a4c546e576e35565530724b734a6b302b645744614c58615344562b4b2f2b42387949587359544a366e4930364f4b4d41304857784a3064786a733642745651524f7542792b57646d49746a71597a65342b43426a426e523758454167446b4d35777039626545437175466530464b705454463772386a2f7655644e5049304e4955787a5972704d6d3334512b69726b4e426678764e6867795649644a30434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17628', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454171695475734b6b6b7932763675487a724e457175305155433164325a63682f444c7855504244367273633133474a626970463874656f4d38686d2b50716154744a3973676c415949695561706b372f766268506772376434786f30694674544c37746d54566c7553596a637372466c464b72453276417270675a2f676f3268705562576c55627a39504252774b4c46524b73466256703254506a59476a4b554a67583377386530784e4d6e555545676c66436c78686f55716267744e7a39747551727755615977576d305a624559666c4b4d7254336a4c376d664154415277535072705a425756394d33674e2f694339756959477777522f6871434e343739514948694b6b616a424b4a745446396e79555462795864444a4833476538537456666333556f7949763677506654745037657a71704d5464755076484b317a69416f7655544e545164332f50496f78665647496b5979416f4a727a3035592b4558595a675638774a56614d73645075744575694b7353596445622f4d6f347251434837336372447737372b3553417a6f6671464d2f7978424e4251682b37654a504f536561675364714f666d7745744d7a427a4d4968415a393038673077555638575543344d544942627a39696d755251546375456f543257775857574149616d785152614a2f725a68373972697a727330575145553931324e5839674759706357455246616e4a4761695038762f5a636b4f694c324b47764a4d344f636d6d75344b3953516538776d6f50306b4a676d742b485235434268534b2f6a494646313472584d454b70654b61714c3459536d45726e2f4e2b4d73316b3032797469412f555456344e474c492b4c653952382b623154467847616234634c616b71384d6733616a41314c5a395a4c466c6b6e5669536b6f48467034772b6766346e4f3252414862305647572b2f45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17629', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f33307677456f6936726f6f2f546d4f4442616152426d633234476d4848444e524e745567775372475343517a4f6d524d5652744d5142714e4a746f43326e6e366e436a66777a744c4c4864753358653477593854507a79514878586d67556a4b5a36575a3366414374495633646b6667574e77574a666e545332523158457358346e36734f6c3737694d6457573951637a5a6557336b664f7774576d525578732b45506e566c693775616264503149495878747752464c3662376c4f6c46764479787666395730796a6f567375684b555a6870304633734a586d734850677958754b43553431726d4f6d3872774d56567350456c506e68497471635953535a3352306341337165697641444f6e6c3969724259584335356f516549462f55384d3634554a56536f386556794935795a2f4f36796c3049434c374a586b6a5154567a437a385250634671746e676668597352646b4a7444565845785a5a6e55536c47714d345a4d31596f4b7a4b312b524f373276746137474f76585077673364346b6c3463373348426a45676a396b61392b67582f5830584b572f73502b7545453659506b743169454b7a6453353241782b67446c5a713552655144506d526d36616a6c657578486d394963467132453245532f46637a2f6a586938387062726a323844662b33505359386f55564d76436b5450763859687a546d537479723971736773635063787157423251437068634d5a412b485a62696676774f524139502f6279674a775337743042347a312b444a726374486746467261534f53794d496f4a37374f54536d412f2f754c4b4968397736755a61666f76457470565a4d43624550417a7141554a424a49334f30566c79764c4f764e775446697a783737395537686f3739416a396c68787473722f6d4563446c6779486771586d66573856627237774b2f5374744d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17630', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b73335456593069757971704635636349762f4c45317971745a4e504f46724451563630496262435675636271306c7a45535a787a3978454a392f694835576b32463346466c7a523346346369725757345354463264446f625235346f56383753473974756d746f43577a417977726e6333384a36514d686353794741664f34786e6a4a786d4a4e55495430736c5a4c6a4837334343367a64555363374e2f55384a776c5a4f4e317869707843335a46753775454174705a4c7a645933364578554f66554c6a58336170316b5142627333335746385477756e496a535937764b48562f3778346c6258716958415431795255633257586273444b2f674a49654d63366152416f306c7145587277437165546c7151514f6e4e47576a4538567279643445587544676e5a505262497257304b72334a773563797237414b735550625a39526e5172386759474f754b2f614e73504c655a744f354c752f3834547a55646c4165385857756e495a6b6b4a3566523237483151796d3475674b56596f6d73305a6b724679734769777437365673795139484c4431644e7a4d74495165566c44476c73714c44796757545374562f4a576f774f61793645416f6c30364e467a6a52792f4248334e6e424b644e704374326b3077436a52566332324851505365714c7a66784f664254623162476e5551534d57564e4459665067375675306e6259312f4357353465577475526c454877534f4531516141652f56696d7373516a39554e6f756261764773564d33356865474b4455316c79695971704235674372776b57726978766232313830726b583833666b56314952572b784f51784b4f5352546f385a374e53566e69646a55432b61386853365959462f4278776f6c4d3259595130386143736768524c2b397879376e58584f383853462b3633434d4148786f6672726b6861644d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17631', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417a757657512b4c6a7572777234516a7662366f4a454e4e673470356361686d544663485a79666a45334954447a666e44647175324e524b5847625a57657058326148456a736f4163476f57306f70516456566e366a6162652b7846437466647076684965654f5455523873394859596c76774b76373953376d387034736e2f3142494c7958786a325a7838353561554954673967376437586235446750755459453247352b486c526d343674643974503755517058754d4765446736354777775632694e2f6b375a4a375a7a6d4c44446b2f4749364e3262712f43372b413774464839396e2b6d377277514f46345473787350514462304c39634a5a6859384a524b587a493043445151472f66536b475836416f38754430726b712f6348356c4d6d58774d7068646f4c486a586c4471584371545165306234775733786b4b6966334d31356f46326c4d6b4672476e707259627a49375a583458465a66384a357233526e68675848447468514e416c67735a5a7938364541424c6b472f76612b4e5a76477277387a6d516c6952574841366d7a79336b73484269684c4b52445a76386930325444527a455968427934706c4266584d754d2f7454666e4373306a5a74636d347944316e72586b7772364e325952304c304f6768356e6a656631424d2b77632b64703454356830394f5451453075514b50526a36435174464a2b4f5864533354563848714a50796636546354376343454a7431625676756767717279752f684d684f2f434c6f437649584c346473674b6464696b7731644f69396662504c774e456c447a6c4f62362b35594b46444e78327a616a6e545a4e646762416f646d3478674d5872346664345153573352416a344d5a6646536b664d504430624c45317679717557514474734c7a48796c356a5a744f3563774f335a783753386d4b78517165645045434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17632', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e69314c536577586e695061632b4d39625156776c4573773432455a62416742494f375358733433485471537578763475764672726570366c44417747376e685a4346686a7a634947763678527a7a57506675584c436e4b4731454e61782f595056384743482b56304f6751463745667a79425463796d5461574c652f506f7566506d4130777462614a427a696c32594e416c617661674b7469764f414c2f766f48566f6b35747562696f363258636255565a4863537a4f6b6f36375633366d5a47335073527455513851786a32674a3077494f46672f79417a426a695543773457416b50704a3076506342684f734a7247327373765a645349314a68327a69506c557a77777748734e6e715a71434974476a503663777262434c444c53766e6b7a425a6461783335674d5265515a764c7639374a43552f777371562f7544617344334c70515141626631523137486378416d794b36305470736c544d35434e444c5456644565645332324f59557a56465433462f3579726e4376794a346d577a3959462b746d44585459625739343552304a3970647943594d70584e457439306a515143595247314343594735537469682f4332484e4f2b647a4332766f4136656655464a6d4d78416559476454547277726144697a54776c69374b6c50576271314234674a494c72767943324b565a7357693156647656763269694c536e49776f2f623853587154307a706c57746f763363436d2f3246662b6975794c724b6b376d7675533256517952374772534c764532436f4a69436c6173616d3477705a744f5a7945666b797a534a6230686466744e4565666f4f772f4e67686353615a3742335a7864365a6461665657554a7541544c2f65563259477454556e55753136305149384c376f7558704d6e6572696d71354e4934712f506b2f4362694a5470344f6d677a763038434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17633', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454170384a6772724d5356302b7046326c31305177474f476e37584c666f544477714e754c613478312f596f5167716b30636538786a473551415277793653736c38774a42694c4f4335384e6c5168322b6743517a67724a5672514275676845763252726a6b4733574f75735148635569774f713447324a4d33694f636345555333736a415648304c676a7666332f334741487443585669574c484769437a2b4a6c35414c6c6359337377622f6c3162774a5a754f5444526f5436334c4168746d5436757276757354583848626637783570593271526b5a415133487876477067513644776f35586f4f5172506a366b6b323453576d596b454854586e584d34314532646854795a535966747733482b68724c6e3343726e5030667651687a544d4f514d42776e324a78364c4178734c636865325770624d6438476f6c5a4f6758475a4c75766e30546a4d4331416f5162716c695642444e43496153376d4f3267716244574f76715678714c306e48633433624a2f4a71356f2b545847433943744c6966516558786c7446375068394e5a513152684f76417630537362426f5a384259357176776765387861743055574d7835746c696537335235593737353432484950697235386c363549644a6a716d6f695551314d62555a746f6d4c7945653366783662724a5a4e712b3755374b515036374a535a4c46384a707531683358376c673153556a546a6d4c4330566b384c4861534d375a5874415042447a3934663176485851555065414c724f41564f41433055617a51465734777946575572595266797058616f432f6b435567412b59722b4a466166734d7a6f786e47336f4e436530364c432f556364527a4777756948746b3573346254715544665446354f552f4852476e474a4c412b37377756707a374d51706c4942435a6d2f494c5a796c357559704b504c644673434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17634', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454134627162617745444c46474a4147364e52496c614c674968753266303830365455545942652f633330544f315948617350324e30515a796b2b495875724f797032565a7932514e616256304b6f6f6c496951616d45346b4a4c335948704c423862576a712b2f4f366148366367696d465335774153444c46643365336a5a654b3469744531633031704b2b7a56706e363762597649494e726e595a434d346f2b594430384f4c3271546271474a666a3978736b44374f786159347676423750594f7a59694765796b354e682f466959636676717750506f5858486a6f6f6f34626230757a4b466849775654467735444e4f3233785a3938645547415638714b302f496f496e644b334b676a47464458766f71713863667232627761535a3232614f396c4c784c51412f796272326553326f332f4a735a51696c4a2f2b712b4a6e6363346869766d766f6a674f536a5236482f76687a346973632f44583966697a4f5053376573436773754b7a496e47484f2f344356435572544e754a484533526844327739466471696a525050516437356c3256344e314e54364b35663268354579516c34584a776179683044647876512f59357a2b424e44706a3955564d503744517156415034527a666b5a736b71513969376b7741384b3753643273787367363634614c7841775272654d4d4f306f4e3750637171555769792f42487159387050786c6c4c4743622f6f73676762304b39366b2b416c54524e4d67357a4276462f6c61386d4a6e70676f2b7168684e6172654c337477786a6a5976515a634b4f42574374686d4a5635303466375946425779576172774f49734461335234526b76506f4a734269456b6451366e55682f38792f55723572564f4c6c6955502f4c394533444b65437a336a614531336e4b775348725166345163382b4b71474f655a62534d3070613145434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17635', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541395450776c6a31667a774558504871696641375633337a6269414577304272716876446f2f62454c6b6634595a6e55467456577836516962625059305272767944766170633841654b45466154494a522f38784659494e4573555146504334526c593942446868426e4147304c3153436564304c76586278313464784b55764b646c48306772664839782b5635557455763142345630696547587a7453422f7645476842696d32464551522b38546e4e4937565132414e2f7473556f57666b746e444674457343645a636d644b55466d4856466d7a36482f4472783130387762784c374a344437587974744d4c6b764c70685a386f36634c7141383653334259394b73374b51624474567079667256666c366955335870494449494775544368554f4541727155752f4b58416e353956766e3447765038635a5a3661445a7466714e4c4f7635524c4a57436f345763487861612b58655969695054715a685050644848325831434d4f507958395a5a4264446457754e776d6b4b42724a764e3946346274326c6937396634587a5152552b61377756587447536f754364352f4a6178514139434f4968355a323933586d327035746d2b44745a317652654654374f363257624f5a5545524f4569502b657068582b6f622b426568337461337577732b486453585362683741477a57674466487a4461747273497466386466622f70415430484f2b71597731437050664463476e41535650414c37446762735a4a666e73575275624b39465a4d443043552f36384a657a694f46384936486a5843334c7a506230332b414f4c4d6d5176454c424d327167577369464750647a42615a6442755131336861734954464345384868776c6973536a577677662b3546346152484e7149757a64505462457a4249367944473949337055635a684c464a4f55546d69306165644a4c45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17637', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b476d64592f37326e644d6e345972752b684c765079696131544138784e6461692f59396a75724169367862566a4c6d3430776f41567745614a55545869465a525051567170494d4d4747574d68622b4a545363695373474b786562507a63324e7735357339617954336c756f68514363593832522b5a5335364b734538526976474f7378596a463531595330626473646d354d495a3261506d48716b514c684b726d515859436d5270566d5534675151354c4c6e624956363254395a46787a4b484c324e374d63585576654c6268417166313445745a624d4952524b744f713137616e796772394f395378444c744939754d4262564d547464713335797650585a36794c64496d3665712f4942774d4d7930374c763974666c454653394e655255662f50556d7a326150456e564e6a77524479305869715866665255584a6e52316a5947506b704e344a4f3436342f746c52695147486b41374f6938626a2f69646e7351656c4e555452446e7931542f4c76743144373844527a554f542b70323376564532307435476848392f49496a556c764f357378426e49583437586a5243526e594c67716f4d4c747a45423276366e64486b6f4f6f7479706979316a5349716645535632757364446b496c5868317957486a396e52724d703574347a7168456472514f486e7249687435764b724f614e64386266634a52396e6f366e4776612b642b3431713342416d6f67796a36667447464473595648624979585037356752394b55472f64374a416e445a4d777741736869576a455a4548654165765868312f7256634249566e4b72356a4f7131647a43673635553943706a2f64673166523538632f454c6862304c4143637a4471436976564a4568665363624673326a45744e356358556261786f6d62626568614d557063534c2b765262626c796d463569304a546c656b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17638', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454167346141634d426f57424348306c6556795835363863326249595879352f6462696657384b3147586c6979427842696a656b544a556133695a78695a302b7a67307075752f46727744434f456c6b426a6d5930324c51656c59366c797178687a4264566c54506b4737423473586c6479756f646c326b2b39624763702f687747344745764d35466846336c785064392f6379443566435a5a482b3043734c56486d754166777272336656556c5352542f6379386f6573352f59476964567a59557a7241676c316762395848706d6a4f4a42644a6f767049614a3351304477706f3142596c346f673578686a4e4964634e4463654b326c6c4a337a614d754f4c7a4456306c397756386f6f434a694367637038633456736746632f366c6f354145454e656d44566e6e48515243624e725231713837334179684a4f7065564254305a494d6d6e66416c6a497a694b6b704b3962366f2f4b52566f3147726443584f6555517a48773972414b4c625357356961567837746274746d6d68376e6f6d6b6157692f6a37395059482b55375553717a79567742447578782f55534f6334474b454277426554333473326e716c563830376f50437577455857337a4b59724d6654534d3569313431587a624731583445672b59593836387a72746d4445726a757a35584f435a424a4747565772566b3835504b6d616c3377735577456253774d482f656d782b494e36745a36365a655942754a486c494876682b4563364556716f48335932385a414d6c6d376d4f727738734f41594730437038336a4338342f4970734641736e6d724f752f72352f3035356165354332393165487745452f585665724a37714a38664a3966714e6676364f7844314265342f5a42542f473452692f716f324945492f6f5341764e496c306250676c742b494c4e5843794846726f48416577364d68644d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17639', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454172334e653775766947397539316a374d725576596949462f5a43654d614a6e634d31704d453433567653367a6d7150576d724b5431767068324a5a666e3758544345587745626b4357556f3744543543467967475046324a486b6e46304968744b675a416944384a64654f62572f536f6c2f4162556a664543447a644a724e3359585977517446394876516d63464e4876715a484266726e2b70734c6557326761485858626e4a6b4c6f5154513374706a4c304b6667684e4f754143374b577a53516b476e64426a4b4a326d6a627356466d77755571654754667362774f30646d48465a6a7863472f4954545a48472f4f766a3478726a732b57746e5a645a54486a31596554305630474b36586e4b7468715a31367a634562467859742b35434f6d646741572b32756f314b38614d4d394a6c5537734e7652653852556933786249475155397338736962687872666c382b64342b7233544b4b624356324c48316f59667467774d464537427966562f2f564a784c5036693570377641594b594d3472304e445a73597878354742784a6b324653582b504e7947715630583753795a54393742682b7136684750437858484d6743505849426c72494d4f754b436458524132496256442f4c6c57626f797968796f627a4276744d726a35554f68584767425949503966343866562f32596b2b3953776d504d4c62433479597541445a68652f455a64506d582b6e38306e4b4d57335033706f5178576232744541546e656a51563364637675785756656563374e6361726b674c5a4f4f567369626b737174626970316a51465950546b3867654e6b6a7362747a31557262484a494166725632502f6e52515341654c58524e675965324c38762b666d7278316945424e5642442f41304e7242486f352b646a4d6e77616e4c6271466c43624261545532374265724868613038434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17640', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541693654522b4471445731433068586638386f6c3530774c79434277555a6f4773427331653374597a3769646c72354667487a53537941577a7953373941445669663470627872427a644542346c53616a3269517a575a32336957344278416756534f773547644f34773370415976663265414f616b582b793835576d4f674b4f4b43564f4a755476336d677336515747552b3833783674436f57334d6658514e72476f6c2b73343041333273393748506b636c657377576d567a56694b79625579346276624e3167765734694a616c6a637a6973715341506f74304c4670504543704c6e476449355a3343784174724e56307743394b4f786a76336478797450656c707133682f48504549505361546d4e6b5566516b5a67496a706e782b667275497a364c356a4b362b66705956666230426a4a536e6f2f766e6f70465036787a564e6667527251644977566c73516c7331627649424b376f524841624a6e4643466d4843457673317432464735645765732b47344d4d69795270512b616b4a6f443935724c5079364e42676c5642746e4d4e387a36334e36625457412f4c74446d453451666c434774795656517467376831485837733050364555346b5a6d3643794646353257647a554c4333314d314b356147345a6a586748326359714a3264675a6b7254425a30487a6863556d41396d656b4851445a3144694b6b4a5a5855677952704e64664b50486955474159456f775536556e522f706e6955316c5079386953534d4a496b2b425469313563704d337456494c2b6d476a70672b47466a382b474274552f394d6b302b4f584636493150454d723365687061595a6c336b353234524e3567544a31467134547538314477447847434e70774c4549354352756b6174776968596c636d7536712b30666f47484a4e46784b7371514b5971554630567538654f6345434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17641', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b6f676b596d2b5775493155694a746f6e326e582b467849522b2f344f52786c492b6a56476c446f4a31674b784665326d2f64706c7174376331516d564b6a456f7a63757233695a69502f4343492f4a317644635a7163734b7435666d3467784c6f77595357504c644879436a52694846766e56717737686244546e773162634d6e39697a4e426c4448366771333355757376716d71654839305849735468785a6773636b6c7877626d512f6c63414c494275794863466949474f756c48397751754575336a5764414d6f646f6633764e4d4d67774463374e6954484239695a487278523769634a652b725668344738544f4f494d614d41644d693662653252423378496963396f6138715135466e66564342482b5349705550675755665232574d6137534b6e5035316432416371547a7a346849722f7349417064594874557241427334434752706f756b78567a5a5538454e43706b394e597a30767243525a6d584e32535958494c49414570706c416c50495164616e667567534a6d52764e536969664363654e6c5a2b4756585465326d62513264477350693354517239536c682f4e514b5678734f78393941675a5250474a4d484e5834546d6e554d6e456f5a544c6267744d61313068586337477575386343754a73344e677852764f55446442503264667130344b6a5137613577775450474930383241663763745267516c7a4631756c2f6e375230514a54677a3276616e6a6f4452515269416d4a4641364c6b446b4c6c5a475449353142663244786e58646933416246334a414179517054374b39533068304c32517755615149355663384b37584e63647973524857414348425866654d53776245383777516e5942467057306946646b56477936354b305968442f304549394f31676e493866366973715864514251706e7771414359394d66527a424f63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17642', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d6d69544870534b633074426334636b7164717a687659386479517a524546474344506650443957545a43364c6342583958306645684d77596e78324d5169665471666357546362656279356a5a756971525344344e2b564a69356a4e5233567850676a304869595a3537424c34517032336379686c684e665056675176617136504e534d4b784149754e7255697176646c4e4d7a4d794e615663316c674946664658515a6a3557374172353837584f533963456b39635441516733455a6b38376c32575742757678334e4f585251456d2b526c7a496d57656d61632b306365464d792f3258466f667a3555463430536e634c33394a4968346d58744232643441324a3734656964684a547679574e6969614f59704730444653306250426e6b4569662b6743314d6e464a664f4a2f744d2b592f4330535558516c6b4a4a43705732506d456e3831436a55487949644f4a5758774279695932344e4b66386c4b63794a5a3847736c6d47736854727738567176363932483165425a59617234486f4b4b30757077363757313834773951706e44394c387a72427431504d2f6b53587451735450686a58545a70643941367067587878647954484c517034363379416673796e33493930307769753561767562796778324c59436e364d7546444a49384768316f62764346436a7058747179412b543653504556576850394c6b4135426d486c4a386b5a736c63584b67576552384736673935452b635958496d4d676f504135746b627268454f703472567270667848433835317a4b794d6e523833434337616b2f6c646a79766352566b2f4b586757754e2f436a757034573573726e6f597758616d583971524e315a72626d72487861444b624144465561695338397554683777574148426c4c483752534e687030484d68506a696a50616b502f5a4f6b43755176756355434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17643', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e6b7954767a2f5847422f3949672b475239752f7a462b445977692b624a673054676a446c4b664271756c4f553754704a72392b6861613479707252307249735a752f4c34616d79734a41676150774d526f7932556e4f4f66594279694235653749383748535659785730796964444830397354506e7338365446583043694e79755066645377556f4d4e6973586a4576676e76595467367875307a65386c70734d487a2f65525346724c5a7044516a51795331777651614e6d3359712f35794f49634c4265584452472b6d612b4577495441662b574f78453050534d5a4d745252544e3770595364707063794559745869753531484577464979773062416d4279523165712b7970484b4230305a3232494e65706e65352f6f68627650696273323836485633346b55665a5459797730512b526d7843345257326659696630467245376d3374355452744e38305031335a4973766563536d354c624745316b434f52456244454b42707a44495953476b4b4771316e57573262314169544374756d6467445249553950615555664d757355497850717675494d704a434b54716656744e303072663259514d507668714d70674b4958586c6f78444a437661666e5338675a4c5464555557345963665270676d55557655686f48644d784d2b6c57325750756d396c3938544d794a756e49544645514f733039454b75784e2b487872554d6e57506b662b504d4c68636e546e7933396d4d58726e3864623338692b4543474c4c4c53387773544d6930303655447a7a324e416c736553795739396a326d2b5a6762726e2f4d48467864387454597971784a355937644676666c4d646f78466934464243654472614a6b68504c7647634c57394938383264792b6c3175475970356131755076736b2f686630574869305257317564336f78426a43534e35754153652f4f6673434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17644', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454169394f686238644e7a6d72343739336b383343546d756a6c5470696452795461435a762f765941534e2b553542664d2f475042776949367839576b566870653973516d3642494c3679586c706330374b79344268776771684a656a3471304764412f54515270797246644f4f2b677859626c7562494175704a62575a312f2b5a71742b3657314f5637374d6236566266684b2f475149533035736d4b6d3435795473305538565957496f59566b59737277474548476e4f307569302b447534537373657568364152496b5232704863706e5434596b6b39507a5a4a57754c2f6f78613058514873675477506e78776b64424a41794a784153784a58614c356a4d59616d2f7871453676424534486e55587435653964462b554b636f784835695a394d4c704c7268512f58783436504c4133676a2f37745333336747553633645077656a6d6f63445a522f457072324553454746634c532b6f3730594b7567485452697136316a593557625a67695730684c4d657a4e7977785359763343724a2f68314a426c784e766a584b39455344514b684b7a706f7146336448573642784a31366b53384255316b6d79434576726b7342462b657644575365385275557535687746324744644f7276664f5273695263377a74507451765567632f3262364b42626b65754563503467736c4e4e2f53377468514730432b3032735365624c355476655057704c674b65327a34636768346a3046712f2b47615352442b4a733930706f303739596b6f394245454a386f473959712b3968786577715251536d2b2b4f496e5546664666496f695a567034366978734d45557a3563576956685957787356576f65724559774773777775747971494441634e3578373944364a4f5074634a7078692f307872526b7a773975352f713743514355666d4874586d31766e36787565556662377538434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17645', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541687a75645043794843345678396964376e754b3532387047377872467070664a6a364737306f665068595a6c6c487045716c464c4c422b395a53636b3647554f34316a4239536670444732434a6f305a69484742304e4d736856456f75636a6f6f5941645479384d654d5a33634f545468566c646732787a545579472f316d746e47756358764c7063373952516c756146366c364c49426f5263644a74414b6c4742572b6b554c3335744556536e72436a366972786367354653616d634f354f6a6e39557a636467756a797264676768444b4166496e715645676a6f4938777645613236427069653869556774726759736a6b79426f615a6d6e514c4b3962332f5149575955546c7661696568736f35624a3035454e346347505a645834364c4c3555635a364d5634417447447657392f316d71624535496c772b76507a5a6b72314169353971373879614c3158675046456d78372b46324967387076636435302f54312b523730654c7845336836616f6c7a47466c4868354a34714c50765a7050756d427a6c36554e6a4e4939715779794f5a395158434a542b74356e4b704d462b6d7161363674767065462b5253356f4157545164684b4a4e7562747946502b4131744b7866584b66426b44535565434d3769722b624d644f376b41535555666b75455a336d6974567668414b4841546f3153366a6c385249345973397a475a4a50495a6f532f506474366949776836556b566d372b524e35516771745369304e584577597a566d7a595578757a67794b3473472f3030574f3165704f62732f49476f55586b516a35537548317154597343784f444b664d3753754f516766334a3869682f774846647471633465426b547462486c6c616f76434e51396d56776c77664867697853316735635632346e6c725a43323546757171364b5a6a6543514b69576a45365938434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17646', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454169794f69736672344f53686a76654e643467574633795062544b476879492f3334534932383430354e746c6a64474d7a414d51326541346a2b6578555a3064733271574f4334344b516a32455458437468756c36743357672b3855745574395a332f345371625736456e4e6a50526a32336374706a33306c457a45343635694c76664f3033742f2b5135737a486d4867743976527171354c7932785133327969716b69624e413152794c4871714a5949473961754533616f63434e335943736e4f4c527568626a345a4b6b5773306e36314758434876467244682b41794b5a7955444c5742637153374b7a4a4d4b536c4f726c6f446b4e3073386357424b4e7278355871697553625066327164513655763075653238324c7361344b69435869525362354f65736458334571514b30744a434c4c3571573754682f5857766353653359357774717465594b433547624757444f2b6f6442554f68694e69325967474569625448504254463553666f6d376e533877336e696c5651336a2b34427061665845552f686a6859636f7277674d566534344a5650554d47424843312b71693662753772454a757962514f374e7a617962504a6b594d51796d7a4f4d4d6e6b6d796230766b65344e46557239393478682f56315a72674945397530467236764d477135766a796d4a325953303563464748476d434c38747046455a576c4d614f51314f4e372f2b6f3755626b7a792b67674a6f476d3557536a44377155696f6e6846755a566b2b65544367444562345361565079705a2f77387874586958674d59764e66613463715041696c6542627a6d43703852426d462b454c646371577745356879574a742b72664f634c6c38594b6750424d442b724a6632654652627955776a435a62776c4768446c6a79573875346c4d7357307348783475596546707546415548736f4e63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17649', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454171565435324749757830656f4a453437326f794a59685750506f756e4d4d337a34375232726c5338385a557130736b434c61757079484b3431566243327163456a5347716e32644f4830504d4e66494c6d45447a4b364f45576f4b6a736e6d34414f6669685141457351476a6a63376a6a587474705165594f364e79757179316f3078475a436143765479625471565a76436b726641565a6b43306f53516a766f716b735533757939574e585755446d797050584a4b4f576e774e3938372f78445845346472784a4f7349324d43673473344d4a4d356c5a50435047415546565152633636495948656479536f747853363269464a373230492b4762354d5541796677417955547062556846776b4b79764150425a4e704a55766b474775724468747a543950584c5a5a456e6e66664e417834796d506c493777784a4a54327a6b674d656458496956564e68394f6d6b68734578442f695275363235394c71583479737a503670496650666a3366394c62465a6a3645787a6d75716f306f725574325035423935793458574d334c7a634d2f3458676e3166324c382b776f4a766a666839783671337638554277754361334234743944334a4f3948496b75364f3673337a34534d694448496a68643342514b2f486939704d78707639456b497a466c7a563776754e68636a522b66655077527974584454327a31512f643154506d52416778624758437256773133427a5632367432666653767a416844774a5645396b2f4c6b4479415848474a444949586f7a7544517768385374577a5543304247716979475353477070735a365a2f664c384e77394c3032422f4334502f6d4b43474c785471367846437845534a4174395650486742666d712f726d3277505959776a415a6943614944617854736a374c543652795972763662713970397542746b6e75434b766d5073434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17650', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c68664f524f4678722f3652743757384d78582b306f685a764872672b52474b33452b73684f2b55797a4b656b2b326342384954593445462b77345a776e3576376a5a53447a6e5a74704d627a6763393239386d6f2f30374f70777272316f545932476144556d593554744c4139534c3675654670463876633466324d73644f33316f3944722b754238456c46474b7662742b6541324865643073354a386f51634c7a506f2b57636f477a496a2b2f4474683973666653457734645763445230415077534f4c7933507966773943442f4e626f7954375a6466445848712b714b506a61612f775342642b5a484e49574d4f7349487461436c4e42544c52432b6e31386932534d486f38637764774e43617376626865534963662f716243676b436b7677726868616b4e763331542b37654d4c6364456f495a57716d3650556533596c73354d4c614136723052495473562f63694664534e786f695a7274627338327548666f554e32413847313376455141646559586c374d7554447137684a73496d59422b67776e67565a6c366b2f76353647563536706c54465a655044553746774a5939314a44465a6c36647478664770745664545833656f63747732324974786646685a6758536d6162783475533134557031736443556e356a6b774d6d36724564713630485336686f5648515a66667257313332634852685a507176306a51675541312f4643793551495164687734787464796b313637526d4a54757a6b654d5a552b415151576f4e333648696f2b367641587a4c515139544f7931774e466a4474376d353939757a346137334d44394e766b41575145746f504e6c4a626b5734586165764e6e576d4f6b35766b786148374f54306732386578564b69684b33416f6b486a77654979696e774d394e6b50514f764f324641376c67563779736d7464306a3033586b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17651', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a56664e666754394268576a3853692f707250694f736562757534726f2b2b533469634732616659776e6c304a534541784a37596576496c6f414d483467514264764e4b524669444e393937687655394d314a6e412f593332463765614453486c3959527a625571534d45424132594a73375a763430544873497932477a61766c794a58515a596d647070624448744e4f3965706f4d37417767397a6a55664f2b377358453555423537385a2f4374347270423836415771692b7354594b3232357844717a672b52484e707672394f56664b6c3771775831666c4c704c6a474a626b594b584f7733674b533179357451525546566766536c4b4d496e2f38642f46366c31443938614c796570505979472b42624165703558714961475a4c3656507257486d544258422f7a617934526d494236497568676d4f3677384d5258352f6a715668415232756357742b6370793973496f454a4b5769336e4c413875385a6767743944383052367a572b30774776502f4a4a4a4276546e687a395941585336666f696b6b7a48747035637a3072427070507271516c4663536f78774b477a37706e57334e4e655158696164493478417a352f665a5935374e696d5a4e7379412b7249744c51545354786e674c2b776f644a72413268315a316937634e6f434f4c66706a574e4b5245697547307a54487145337363464f434c325373704e74676a4c523766614264326f4d38305169594e7135614c5578784e466c644237657745575a56535855427247414e5161387556506e374f516e393038355941633678636a4a7545664b555a436b375851397759707a4f4a473943526c6530346d474b30354557636a664d44557a374a66714a396c433344592b664f427041796e556644346352547456716c7671444c7a57516462567957424e445066496f34796e6f54716d6e74507a4945434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17652', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c67345643453665534a445a415259733341576c3551492b4e2b4278763878472b65313663666e2f457033623851656c68417651375641795a6d4d7270353332382f6e7867696565533842725a6b2f562b5932505635394b6b78644969584c7a433979743349324638733153525779747a6879726658682b305a644f3377786236636870667a66662f774a3158447179502f76676c4f4878664154765a764b67732f6e634254456e6959666c41727676787768594c6d434f695861514c2f534b30456862564b715237347a3150306737734c485a685072496f50353061394a546a6f37473776435657637a32654e7534416f65556d4239444548414834693535494735656f72426e6b33356b446356526f7a673234394c6b504c77783165314d7950517254526f544b744a515646702f76566c474a7749426e2f6c626855396e54494258476a7938496b3441496b33695274624433347144307a394d6c6c735064517a6c76756e7973497932336574613948424d7864544246737134427671685045563541625137376a4a4a43646d487945364f6c4c706139745930525a6d374b58526165535171762f5a446e4c75333967522f345838464663354f5a68574777414a6c3445416c4e72742b5747506a474876707651515864506c4e646c364933752f764e5867435a3359336e4b68726a4948544a73466f376e59374447436835556b333557454357596f486438576573306b33527263704a50396d4d6b726477565058626955656b50616d4f4e5774333148446d4278714a4e3746555046664c63774666343031525541366a57394a6e366e6f72547a534563376c302b2f46595a4470497862556577554262504144614d384244786742687a36557a4174687277774b784d4f5878344a584c6c68414d314f7a784d55306e564f426c7a6e6169545a6a53746447595355434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17653', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541307433726a4e4974646150743059636f7654444b6d784f766a71324e746f6c4b3942544c484f717068482b535170745a6e736b6e6178754f797561704678495173476e375667505066687a616f48496644715477707773564d68545561766b593254467a33414568334e37552f3353564632376a335a3347623944576a66754a41314d6365545144784b644b426934776e4b47764c704d45756b324177787133794c565268546736516d53436b7059422b536e2b5333683936656374466b566f56476a6c576d6f5a76352f437038427a487853734f3570357139774f334d544162637635754f645450535a714f6e392f2b666739745867626b524d7663505446524970676e384948375a73706b41472f6e4b7662503345532f774756495850564b45754c45313165644d2f48773141314c796a6a31534a524e4d395374545950794a77796e4833387a4e6a50716b6b314d4c50645a77434946617545557757534e4f466f5944754a4b66514537464f564d644d596e30654a4d7367443857423246513155586869442b37685a73797645326f6f69684b7064464933725365662f7252675a754b4f642f31543454532f576b62454b484933664f336d4a62694a5678473932564466784751566146776941706c6736786d7a623341444164387a48776d5a55466b7652775a774675724c3233484c75386366526d69372f4b795551735371374b4f3266646b527874365173735261616a47513246524d7236794964486a6b6d3378756135347a484a4f6a7867733449586d58755279375670783572426b6969496161444c6a315169626145475244483370506b587a6274615a55316b4e524250324d71717776715a4447316a68674477686f794363776a4f6d737639784577574e6632712b63554d5971576973754d544f7565756c34565155383269376e696e363156414438434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17654', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d783430645865366b43703158725666755045304e746f5a6254655765616f2b6e3969657733505274474c514e55334a4d793366797148506563785361456e4d41472f64362f7a694c4c764b614e334a616c38636d724668556a717266314e6c723473662f7976535161586e5138703163434c6535704f516d50613065665674595759595a676f2b777a6f667369455a4366393141434f31736563424d71656f344e2b6967524e2f5059526f764448342f684538675149704d574433695536725769342f53636741315a7670436f6e347a4a522b515343677a31376c496457795a4f666f306976583359796c742b5a363674375056724d486a5a2b396f6d455369624165475452784d72354f50654b35426c66445048624e7a31666a55487178316c724e6d644f4246416d346d48354445706d364b5771426c712f69644c5831346d337252782b7a617669765345623343583070646e36746e53554a32314d5876366b63542f7579746c35716547422f6e2f6c75656463322f61706d585a42486e617a42392b70466c4c69424e443873794b2b50776545745a2b7237345a4b434f6b592b3773467069644f6757305163777179432f4b72623072466a7650336274754e59524b724e5a726e784e694b6a48747a3554764971565563612f2f734a36675a302f4167716b6b6a757550474d4d6b43664c634b3075594569776965706d34787564444d79436c674b594f525531386646374d4a4d57643057764533715471622b796343614670496d7039716d2b2b4351704737462b6a69305547444a4e3056456a53392b594e4c4d33586b7a43314f5a3851736b61537254447a36314769776e7a53425330677a664469364d36775168593939686d34704b6b46434b356c756b663931657832725536583072486d68676e38592f705a77486a35546c71583230664e6857372b63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17655', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541715854756b586167793159672f6f6979383570457a535658314a6e4d486f487076734b6d5748374a374b2b717a7354634a63675a632f37337a67654b3758767953414d6d693345415655566a30524277346d4c7a7363544e306d7961684c4e4d31636e31396667707a7367564c767956316d67764d596e41776774614e333371567246575439646f577843677a386a2f4c4f594f68546b3535416857704c7049634162334d4c4c527268575a42424e46373859334f7845425355743645556b556332744834363136686d556875613668396f7a63357656454436534548724f6f4958553074332b57716e6237477a323977562f7558446a494f7663586c394950524e6b6a543857485257364a39767736436c43695872497958685a31715a734f776547362b5364514f3561577973774964786f38567854787a697a7058685574666a594265304f4862396756797266764866534f6e5974674f57744176545a744266563471327531514e315562784d7a485931306c43452b692b32776a36616d78727948587371463655794f4e3836466a72532b31672f48724248486f78657a32746b5830496d68756d4a682b4a655147715a515871565532334e6b6258513067534e75423946364544675633486f6536566437775175696c6c4d46394c524731556d4c363573614f4c744d69723075777a513235782f7565736b5052746a6b496e344f4e514b7a764b5145436d794c6c3157794e7a746a48556d4632376d4f35796e6e49636b425079636873326a542f476f6d502f5a52394d6276567944497675503171706c4c34584e70506965414654353274726d536d75505836624b424c4153427a386563554d5753347a41545a3742786356702f4b705168782b553468557032374c4d7850422f70574f39504f465a4f35446c7a442b5343366a672b4d50735879616c562f2f55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17656', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454168694c7232556151396d6e6c624c38327173372f4563796b6a56585469473752786e502f4e6c7952655778325266376144506c71635a4f704a4547504450645879432b63304c33537071696a4f4e394f44576751784b39673031482f2f6c55476d336f5237374931377a485a6a4a3255654c726d484a34507a3856646a6d526b356d7156377a703944306e4745447a674d6354444b726d4f376252644a4a583272595473786c654e6b3938334e6f327a43356a647870726d6737706354787334485973616b4a7a6f4e7542356c324b583177617a547147615345576736523653713449655a6232357967625573345871566f39344c45426d6176626d677130337836717a47694f46363075686374766964383767725a41344f394b5034664173456558663741374e2f61564b2b4a68356665632b76382f684d7752727164394d55634350496f714f314f3357756c4954594b516a31424d755148326358686d5368794976614e756c4e374672495743413330686b4f466d38576466432b543034744e4e504c66714d7a71574f45717972664b304568375157306430762f584e4f6637345977666e6f3745444b586c54706744706b78786b544e34692f427a7374694a2b636d334e592f7363544e4751724f7a776841584c326461323967626655574c367569743279464937647967586847712b466348513542524f496c2b554d62574579446a394b744b5a4b434d5765314a693243316548776b2f346655614370696644794e796872723632747169755261754f486461377931474e52304c675542625146387956593579547a3578313632414f717272527354764c79336e757261524865426c5359673645563736627661554f6e7878755a322b456b35463133576943544a2f41374153584b32666f4e55614d5a396b486e6663726d5162327341782b5841784f574863434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17657', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417775776a67563533716565424a353277576173514a52724a6d694c434d33416e6c4c616271394c374e6d4e422b4446676a7977454d5434442f6d416e74336a4139594f7a7878552b53416b4d4f3971305a4863734f534947775177424e7564433536704a424455666256346639345963434e74304e7846455753755333304a34627a434d46536d6c6a4643585a6e6747595842594b4f616e37336f476d43753659524f596c34797967382f486476374a554e5670713441517561377a627442476a486176636e71374c75724a64492f70397364495a7a336a4c35666b6930506454733475765a3058557531727a633632447749466749446c6278654d394a36736e477036514a706d466d6d31384f477242537a347a4a4d6e6177697477754e57506b364347762f504b4a5165792f6763774c4e4b67547a6d42385a4b3878684177754a32744d4374446969416b7a357066306176704652396162446c775842426257413176634c77506441797574314b372f5a6c36427763384c4e70597659676c554e4936592b634a6d68333056457659694c42672f47426e6a466f486e55642b7a5831614c57394d5a6d42546930594e4c46784b477361536c38463465624f516e6b7777506c333665454130494e697a656952346365526a456467497879686d467859466d57417353515846512b6554337372504337356b5771526672793148334e57524c577633496f504e797a4764386f70495a573150774b36476a554e373357684e3836725738514335374469446c2f764c76544b3043446b334352726f557635794459704b61524e6a2b625552355965323270416b42694245476c6c6f324534662b3654636d766e785238306c4d3052755179464566337a502b5a6a306e534c5344503359497a74595070734a766337385948464a53703342306b6249626c59565a5a44672f45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17658', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a7258357163795454382b33735475746c636748457875594630666b426b526c5634694367394f58556b5932543659376a784764436651636b4d2f35744e4c37664276446f5139494575513077744156484650327a54345874764630656637455170384235534546636f664e5032346d62736b537463685533326c6b6542627565367947497951397343397a4855414d58593849734f4c6f3248306c357437456f31497671686f5837585753776d50796e7037755a6e4b554279655270636b31467455792b30526f3554473439432f312b69627279372b67694d74514e4a5a4774534f524a39536a3970535667302b4e61716c5a662b735165555334383730627a36424850356956516d5161797a5339656b7045645439496879546f657733596879426c59757871723155684f78795433353577415a72696a6f6a6c5a2f7a7350584548314b59564664757139325a707467784a374c7662323769686e68546e72617374596a7978706850514a66625135536446794676524b636d6d4b77784e31544c6d6751456b6246323574664362506f616333474c6c566576526e557630776b5162726b672b3643535034542b714f5673444f30725854552b735977466a704351506a53634259364f716a6d796f73326c50432b4367594c3864756d374759646a4e636d726644555a736c4b4f37623448337943396e6e624e437256366d377174454f4b4a636a6857566c38456845736d4a54714a577747624b4b72615953776f4f32694d316d43452f4c71766d2b7a3036785468743243432b31537250594a6f4c5a5432774f4d6957754d54326e724770626250766b725a615653734d4f4c55577a447358414955502b384735772b6846684a726a4150746f5476372f324c662b766e517931704a6b6f393970784e476e32792f5575386d73536c4674343168764a4d4475467363434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17659', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454179736b75616c45696c2f4a517064496c414f444c46706846394f613466344c76456b64784b795564707a5165306462344c697664676b3476784978384b72334b7066636554366c5450655a4e2f574d347053516e4177414d58686143685356537174447a646a3537557064747a4a476f72426b46384f58394e6a2b3844694d674a6267545968333956564e694762394371354733375a5542626b634274415632613664765832663255623176466a47387a3864696d4b427a6841636c614a70354c75504e52374179446454786c45523353636f6d4670454a6d766d4d464e704e412f2b56537861526d75504d63577978796e436147466d396f5263637148546b51573463322b546f337150794e762b70334473634c5947796f4d412f39714d62495a35663541675a4a747579524f3647696b484850427868454a6f41766433315a794175356c7553624b5936504256516571592b516a32723734794c4865324a396a6c425a3338333643334133594d5246646e6438662b45452f327a6b59716639722f666b712f6b6876345848495448574341354f724e4157582f7345796650597a76526f694f6c78384459685447736e4b3665522b4c6e743679324773626b5279613779716954756934566b583051434363383739396370796969764e4c77322b357246686b564b366f656a4378734b344d47444464667636534f2b3638717a747072446f62596d6a4f575567345534516a664f712f2f576b5750514437384a756a37663141764a514b4a362b4f46716d705a3842314a6a754762525358684c544461445955534f6733562b41475643375a384757777735644a39733079457561556f665265413358434f52696958424f5178306572707a494e78534d5a764e4237544552307a76737239437a792b7a346e392b45727341565278477832786141615031643078763445434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17660', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541726d6a714467744c6534796f693077304d624f6244443157574b4b665250436b735a7974766b2b515964743633562b2b2f387a4376663149697462497074467673626c4541573159336b76343834526171774a78484765756e50713733534f4a77576879616743546b4f58526b686271724254647334426b53394f4743466748446e6f4d4c484f617a63465046534d384e3559757550455a70545154362b5831594c346b63696c574c6f316973545a4871393845557170447a6e75314d416953736f49706b68584b4653762f4d64735550474e6e634e77567864347064776e54534b3946696b6c5432305976374b7a45486a58426a30786758342f4f5666464d34353366744a67415767776863683552566f6f52716b4a6e4779342b6d764a4e6b76535a455777334269764f4d704955654179706871644c487241435a4843357833444d33657263477767775765527a51374a634473425241544974796f46743939445633376f397354732b70612b776564694965324a2b6166593273424c6f2b74792b6e4f6e4250784f62483668675467744331707a302f73716e42326c5a386547515933634b546c432f696266776b6d7a48317a54523171334a714a4c52787349536a3676352b486d535854516b494f68564d53484863665062512f2f673438456971526b644c4e336b4e543246496438394f533070554543307a7279573859386239784733545379687654722b7241656a58654c3657657265462f5956625464374a6648664d717a766e6e51374858466c4c427137614948503458593646776e706b516a4f3053626c53476444306f35436c4e535353486e2b7a6566506952474a4366465972337a69646a344c726c763343316d514e4a5243626b73457569536b795a6a366a36304579616b7536755046306b6a4e33466363353768344866634d4d78417a4f7945434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17661', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541694b7a6e6c335471364e4a443144785234426533617856774e61364f6445506771696a616b6f42786c6b737a6355554c71764336474154474c7346636470344d434a5865573678674a7a334f77334851576d2f7a477634775236736f696c5a7664384c642f4d7730386b392b5862474c497858394b3861696a61434136415836356e5165782b776b496242436b696331766b6a43755168347061375939637558563470547131564b34704a6454542f2b4c313158514a6b34716c7a7663306f6e707941642f5751746b662f4550414c494e6b424277583353704141387635717731453433457030744d6379426d2f575773653443376a306e564255374f44424743336c51344269596a35373555443450434a4f51443733796974462b453278727a3247775a6b64782f4a45716663397177447067465064514339394c4931376574752f5471686d6746613574534d6f412f31613366466f4f4d6a72776341375247736c7939507a614a4378436c522b41425a70474d517a58687a315563347978314e325a745267747a516f7745673664456d744f4d675a796b79443957413670397174395359786744496e6c694a41506c626c45376e676f3343436844467043546270513054654a305738505374394145505a4f3632594178414a3742625668346a4365486633324450716741504555434f5938566a5978584b70424d666d347951475361575963667175536962664e4e6a3347786a46374a4a62436666466e5361697052796148424e393366446955612b756a515967496655466b336b545566695978305255316a7163514b3743775153315a653971665651385561776f65687230794d4b305537514f4b46397847534d5a4b66482b626649596a35396f4d67476f52776e3463425564592f7273535a43576b6d30374647523657787845685830494136655053327138434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17662', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d55387952544257424933304a35776c4f573244324c7856666e386e38686a7a64384d495430704565654d7470386b576841654963512f344c53784a466167375374617678766758643755543044666e6b63693554725267615532524a6c61446f515653653847676762556a41514336615a78743358774a56417a7752724345552f4a3858504565774a51615a776774446e327070676f5972717348704543426b343078455a667a62446b764946344f2b4c3656594c7244642b64777432587639364a486f327a68666c78316d74744f307436323968647741764e616e437751375a774c6c4f33434a3436654c4933787a474c6d4f744a444530724c316e706d4b3334666f353449586168446e656979755871354e6d58766e4c4e52374e6c7431693844586a32572b4c655150754c41777245676d54397935775a7933326d66657531566b385774754657416c46752b44756c3954424f783645577a3942476e38674b5062304a4d3332346f51695646352f365568352f5a4663497a725663496735673378734f746b394253754e6954595867714635506e742b69592f514d695864414c4c6f523043446b4e3738674d39394c68476444594e366956594c5147475853506d4b56543072736355515a36513767644e58545751746f4f4d6e39494d662b3371343979545674786c55596b51514d6e6e616868653638394847577a4d2b6256527935724f61346141662f6644627836502b3359494e52595a616745535566734f566e3041414f4f554c6f4a2f666b523761552b314d6e6f6975433664366256314854434944673165786743354e415450617873322b4a4e6d48475038623751554179357954374e4a75626d656f567259717134776e384657417a32612f43764c5742383943745238766f6d776e7566536c4571507148733237724a6258746f364f3344734f4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17663', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c4c6865714b653751317550372f32784f47662f71637a6745306c5561704a36766467654f4434363766522f2b6a446f615a6e352f57324a65775655305a536e47736c4f41622b54586b334b75714a59734e566f54644758464e4b754f6d744933354247334b38424f707541467339454a6f657978485730796e32326461397579695747566946432b65644e6a32706830485478533669504e6e6a4e666b432b726b39646942476875624d3577746e596e476e6d776b674a5152354c4377435834716350635645444f614862347a4c4a49467366416a50494e7577423179444a4165337673505a556e587742766c796f58564d557865686a2f6e52766363656b4a3171753956454e636e73786d696371327a39514736796d754577574a59456635526272734c706879464a7a645830776e744c37526a2b5a3236676e57483834737273346b376a53642b327a79694956424a48316956316653514c6361365372346775564c55627173434b525465507874754a304b794649434555563337764e5a45567765383234676846693468744e50753167414d6d663572587648304632384831495a4f567363355162337376366978544e4a4f706a45484b336f4a696665674448666b786b3946622b446b425270483254776e4e6d355a784c7567614c7239774568537a73485069456b554b316b48376a4c6747772b565556484454465a52584169513534414a4b56494b345a393948384255433753794d7842587556344c4e6d47534e6450714c6e6d62464e335836446f323063444736647a78334c6b3077654c4a43585a57426c5456784f4134517933724255706d5533427569637371374530595a66647947634a41792b32433271313676635353336d446f796d65506a6a6553416b4f4344745062712b654252376b6e566a6e5474567451487349665a35326442704c4c55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17664', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454173337050766b5a4e6d51486678754353345a453970764b55454c55723930525973684f544d434a5451585739676e48453656754f4d3249645434624b68423456696d5171504c454855494d5a6b30734a374e4b48735432686d72432b6d316a2f56414d586d6e477741663076597770353345586e546d5134796e5257784d4d632b3767386163307a706f5334584a362f61764972595a442b4f46324f4a565665413147797972466553386142725059576970534a4c36676b57464e7679307a51484974366f653932467a2b6976307a75446e593142317468706a593476366f4156656f4e6b376e422f6748447361704254754e553751376e37666a4743656c6a324639745032424d62397572766432417930696f77434d34506d3074336469584553764b54765642385152653247436a6346662b506e6d4d37474c314f627843304950615839733848667852453675537a4c6b71356c304863434b66354a7058495a7473644472622b2f4737594e3776743930424b48315171556d6d6b4d3864664c62322b57555a64392f2f592f79534a45673233567841384e4b67576f515a53714e486c61324870336a324f513763736e7773737a425a4c7745674a3459376f64526d586b685455454b6c77785a566e396d5a68393447686544416f374c4e666633417937354c4b4b3870696152696d72414a4f4f6e796d7a72664d7835366c56577338344e627269784c48326356544b49696d5432734a685254744b6537756f354f68773445736472615457484d3351792f4d3265492f686f5a4b5a6c662b495a5a4147507630724c706f4567546c6b474646664833675059444d4c6d474b6651696c7454354562354e50354b354d7670466b4e3166774656566a6949625342576c6b6c2f314661356677545a2b664172556d32497745524869743932347a75764333397568655a45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17665', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416869303078356352644b673649526c644c4948306541747377616e554d50676e3250544143386d7544466d76596852415a474d733938626c364274325461306b715a502f6f6a61364d6e5768586d4a726267567a634b3739355139613553694b3536682f5364427870745173654e5636576b4a4a78542b6f6635467248786138754736374d713755457966317230696179782f58537375466477744d7545316549554d50634c5538666f55374365496834315862743469744f35646949514f385a2f624270666c53452f6178564d6e7149784f2b4b5170444c42333668787669545837643039536939634e366e75556375674d736e4d743876343276704171566f666650724e37596b7874306837614d5a387053544d6c505867694f56777146633930723767384f7739502b7169697050635943446f3345572b4544465a4677534658566e366e6d414d753971715a424d6d536d3254434e50467231647a693177656a326d7158712b41497366797253335a6e2b394d46386c50567731443177683152777a7352304332586f464d782b70474a677779566f4469486970336135676c4c3148456a5874686930666746375934615a36336f713549344773585269786e53534b6e62625565756534344a4a31764f395242507632592f426154525437487a777552655a6256374c63574a5041644779457044786c4d615747377841487a696c326a2b30394a4c784578652b6d72672b46763045426f684558304474585068595658704941344b54556635342f2f434a6a4f4c767a6a314568764979726e5833485555396b3254306f676153516e4b307947573457636b41575268794430793279394e5036484854613877516b70725a70684c6d506773644956547035524439513748336748654437536a33634d49656a496232494930397a65792f697251723566334e314e38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17666', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541306872362b45534a51765879474a504a74696a794855666d53737335534372756873304b6c446238306b6152545a517952395353516e673933647647522b5a443663567476536b54794c51733974673864414831416d687653644f447a702f68474c61784c797a646d7a676641396b585274652f2b4f61456349452b78304b736967356f7a4767345a74334c57646b315244557a4f375239396d51686474585548464c3745774267736d724c3044646637574c37577454356b6a434730466f6e5861497533724159675130434d4b7852532b355358385265544549634869756d45646b4f5a4e65356c5141444b6a6754634c67323433693651333266764c633569796a597345422f50516c453575626a643438664561316442367777577a7141374e7230772f72766c3467744d5259464c746b4e30466e66415371626e637169315879332b7761545665434c58706835342b366e33706879426a3679424242783945726e716a74335a4537325137595775444341474e597758485a4d394146677346313974515461314f73396173746579394c636c4b33417431566e583263626d5354726d546d726c58392f6f70306e366848484e35486a33646a52572b5275324348636575477166744547364b77643631767932305a7a3168786351327439533673596f4c454e696f4d326a71775178436349674e4158336d5344656c562b4861343053434931374c49416c6863486852494b786d64637378534f4b45534d584257515868702f31564e7162346f6e4733316150757566767a756447326c6e4d516e79746b484e2f2f5764372f303562416f5149442b6c375979524e435848496647337666773441623079554b365a376f686578533771624e6648534e596f6375632b6436366e45445a39794169346d733636694b4c6459384d686e376f584857796938463439596838434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17667', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454168384f4d32394b4b377a3863784931424b4d6c57434e784c2f746c4575356a376e6c59386e687854747a6c41334e426149346b6c5077614361644730304677356833706b7262394644457072615375394773494650474b396e3542554142536932734a5832586135726e6461546c33676b7163676a4f414436646759676f796e6b6878615a6c6a686661376e65795542584b56344c375435656b6474684a4a6e464167714353454242664752356e3948586a636373507a454d2b6f38496574457556746a633475772b6e6b3277474256335875485a645342412b3736715542527a72794c2b385847572b2f68786b7a5475396b486e56687737574a3063307a4a626758395878382b2b674366565a72646b79396d722b5766504351716a58734e3865314f6c6b747333664e686569596f3168753535573965337967387965574a706d54494833653257764d326f366145556b524e4571313478374e4b5676424a323348387277524d677254545931574a4a71417669733357634756613455727357686630357936432f65353577797a5170486e4d30307766584f4134585059784773485432792f635369324f44314144356939316250387063486541306c76684a4f694c6a71534b6944657a46356667583072495143347a58573930504b537a394e63372b713870594c69586c692b67514d305661716d654831517549647343662b4c42744d7554334b794d4861544b7447766e6462796a54424c734f686f2b7a2b6c6977713139304b6c5a4a42676d707766382f75635972593236743755656e46376f6e4a62375832426442693148492b616863516657427657415374335a674b474235626569316e416b506343516e2b74354445427743563856455a4b4f3877776e6a617645775741794951777072575555474f65454f74784f477971364b6742765a38634a4b366b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17668', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541706f615234566b364941596457517056557937452b476d65754142556f51684b2f564467622b445a4c36524158566d4b376c485478446b306366706c3978794633417852767a707068442b424a764b3858757865564435706752725338386b31506469644f2f7266756872717161617663696c69524f41335843756364706d33794935506c5732346b4b663132792b505854515435687071476d58536378584b776245624e753036344c4c614970363362506c4d41694270564e506f336859476f2b514e66534372596c5730746530322b633532336c68483050304c36536436463676427676734c68504368397265494930774343737350597451484650637246584f53564d704b4a4f5854487368553254313544625a527467562f336d6a417758555548426e3648623146686d7a3752424e67667275657456425031442f5854666b47432b6b6c4e5a71436f7868687363704b466f525a5070394f6b6250356c6e595949565041756c705a306e3038664848467630634f636772353751433446786b715a7751753444683848376c523675746d775132443959564b62525634786e69444162725947794c44766c714f6e5561376a384e62696b4c79674d4f664e6344766e5a53412f7a4a4f626734775178554c732f6255447a5a782f6370777a2f577650506b6d58324b555474324e44486858592b49494644354d376e61615063784436736156316c67666b775351587352317638684c2b6832464c327a73717a2b38676b4d796661317a5a706171756b49587638556632716e576d4f686b6a7471652b75334d34357464584a594a564c69523337384d7a4653545a7141573252317932714b4158743576647437644254522f437a307477686630534e52755272302f327a566c76694c2f6b7171656b30386672614d76624f4e3772444c51346d43566a5470307a7573434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17669', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454178394c71634578622f4c336c34396a47684f4c3335383637344d4b334d75725064524b6f7059667874482b494374764d574e2b4b76784444556467365039317a2b3473517877526e4f306c592f323461616730716a694c4a62796c34315a59317158476d41344b6d623072536c54553262506f6c3172654d797750724866742b334e302b346c455851433565707a584d774a434a6f336d414b4d6c457459366e2f364a2f515a33456767517a33484434517554454a7967426342426d4f6d79522f7a31383730706a50363435327a51683864577956577277516233595a6f536764635a6d6e4a7277586c5a425263534655652b66327149684e4435474f494b4b6b694f55596f305043434556374b686c4c69737572426c4e63504c5368556f5130654343792f5930744c45676f5666306876472b4e30674539485930506d2f67506132312f454951564244494e594164697943494b676e786f465a67443959726a7366324b34684d613656725252476573735456306b7074416745667a7434542b78304c48795a464a4a484831596c45396d714975656e4d425a4c736b66364c4c72522f4446582f63594f334f384f553847776c6c393035472b2b3349686b566477494b7a2b76444d58395137536a3664586a70612f34372b50335772736a6575467952616b5758787a5167505935304631734d745350686a5471774354632b3450535632745379664f5073336738564a39742b6f6d73783237784661594b614f4e70787553446d5a4a62374e38467238346e30723564332f36317931644f774e577279786d2b7835467954643343524545472f2b6f2b742f6e78732f4b6e4a4b4a39715779416b67786a3334434264726152784e6c705a6c514877303677554e4e304a57723037694e53345431744b584e767a6d4f783341475a6479713968304a6957343230442f6c4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17670', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417761767643575979557262746b3777753778484d7838417950772b47795a4f30654d4f6668796b6158734f786b585a64734b646a323479435a733371414958322b4d7137356652324e38566b4445497945634e707432547a44314767364467774e586d2b4f4b324d7a686b7a41696845474f36542b6a552f3558446f53384c6d2b736b304634343577637750667a6154387063756d355752374478354e6f4854474755737a78396a4f30776a46665859306d4234583941636b4e78313849654576584b7466796f7351394e654c7a52437644426c3766314c4f503564372f674a3473576f784e4d752f4d37443034576950504a3477696d784e72707669376a4e6354743672434a746b39453456614a42524e776e7a41776636466c7a63306a7a49465342586d5143774d503158647a4b444c774267364a654c2b3248564942456d446d41323246324c464e6977576667724e7431694450425152396f457a4a51503655445177384a69395042426c625238507457684d534d546b75586e424c62566d5156502f5166396b6d7578684a4248654458714a6c65514f61304b4c48696c467764794d34742b4f76524867654776396c72556166427541594e4a684462747a623558326e55414b5649626d4347565748704730506f77582b38537a3873364f79774843737336707a2f6747784f6f584d39537a5a6a537a647855634f345446472f625532306f41516d364a71516b7632487667576c6a70386c4838434e5766492b496f394e4c615a3550684e2f693538516d666b384e4b4c62704a4b4c5459754f47574f643347446e7265366a717a614f697378697249796558424149696841735a4158793167663854784a49714531484c6a4e532f5150556e4c53375530377664494b782b5435687157463377506235787a55434d6a67312f3036614b6e484e42703369303545434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17671', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541717665644c73756a6f61466e303771336657662f644a4649544372353256635878463668324c4b636a366b46353774642f72534b69586c4b3749345a46647a314e51516f4e6f774d424f65776b54746e75335278475047785854427a696441586777663972496d3551433965757a573352526f636844596641785437365070316b34373172623241636179743153776156746b4e674459546b6e555136455364745a7761586f59554f796e4f574a7654474b6373674e4461392b6255425a545563724d4d694a75435338615931756c6f46794d65576568726e6f63304670485042757163543449472b3857346a767366773956783248456a34416c4c475a4259584668436230766e6743685757757a74725765742b647a394e7a4a3735784168347374586f62496262365065696b782b50417273374a5950705a6f66624e437847714e4b5946443476337a62443379734e7232452f754351485668526d476b537574732b4766474e5046576d5a566a493843455a5145387937647a61784c7542726862485573533966465a734e735a3878442b33774d36535777636874444b74416b4968616d48444454786a506832427963716a55386b70504f4e51543733795439487138345477734b324d4b74735237417a6777707275356a622f68346a3358436459385855566c622b43553842395463384b5135445765346963774a412f59664e3057322f3143305459733758306c426b6150397837712f3477766b686a336c3964415a533151432b2b7935453177716e4343696d416864396a73717a576d53324e506955773750557a377279752b66785a4d7853306372337764723035385637757a7063666a766c576558724d5a4a4f67576b666a7964463270424f4953354c65366457372f6e352f74686b4b534352736a5465415654666f71476e777a6434764d4e6b4c583745434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17672', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e62454745374b6658646b516c5a6654552b6a662b644d5870414d4a507836704c4a526b37323374636a522b302b486c7a455868413548686a615833393130486234506b6831567267744b53677830306e386c4f305454376550682b737a546a2b4e344c33695530737644636566476358585a44616234484a49587470796c6b327a464a48525a654668584261734834365352644d503853653148642b4b5a767a5134636b476f3449562f4c336a3876726e676b4e337155364d6c506957644f412f4f5a45766f55544b734364614370514b303645344742765773642f4c6a336c775861696c6a2f562f70445857435257544c7a3659666e454a5a313664306a53333554782f525a4b645763436a73455737392f665a7547616f64564f4c2f715136524a484661526741386342417a367777412f374b71482b4a346c617a3546326f47676564373168594d585952704b324e754f3854342f594e6e5873455430383244714646777057774b666b77656d57535373704f3068727462734664314f2b73642b4a555476784f4b6d6d33434e315678537a4751692b782b61564938526f36565865434659324e592f4d37794f6570437339476a4a7258414f727576343355714a55304d65375556523778343265314464424756766450326a61375170383158455a4f394e64326a777349363747584f482b614e574a7a61584c5a4739575770416f5345326a2b2f554774523252373052396d3042357a7a3559707761705474384b50547a2f483956732f74374733514f68627a5356665063397866554b54383451483837495a7239556f317a655a7079513451655942774835336948427833377a5971796c326c307353567557623837383837526262786e4c4a397850332b744b37667956614a2b79504c77643871436f48616d51784c523243335a2b594c4d5a616238335755434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17673', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541696c392b52587142616d7863554d4131664c6171612f796f6474733341354451383576507068436634646852324d704d5053484d506941384c7145796e72384f336d35376b4e5041734b535369654674387a54455a585957446f46542b7549396934675472614c505072384b745a37493650717176546e387a50736646467a717a4f2b4b45345a2b62587865633536735358332b6173624e5044416263344a64756b4273583557595274674375714d64756f365646505953466875513471325a797852363139344d4954595064744278744c566c784e48356136315a377645587663384a55506a7538466e4e4c2b6c564b48306b336c57356e314c64596547596d536a4d6d534b443842394c70696a766e727034655a434f5267517368707537736d4773597745425a2f4171364848692f593962574935496c6a734b2f6e6a6f43764c616363397a4e50325673306b486f5443775068454c6532392f655069482f636a704b7841436e6233664d79314e685937314a4f666c79617a72616e6e37795037494572546b484c6d6f337179334e77446b3732487a43584f7a73687063622f744b764b6231684e55647544384264586c462b5176614631617a37665a7a51335963434e6f35624353304767526f344c5669324f6e76664f64725370674939755a6338336d4b632b6173482f642f716173645a4972775753746b6d66747a4c6643356c774c422b7a77706e6e6b3475564b745058786a645a467654384d6d672b7449726136417758657a6a32596f544e517759636f4779543139507a57596d546673324f486c506145412f5a6c776e4756445a58364d4a5161524861743977332f644544486e765676703563746d70546d5232784a566a6c6a6a5a7a30676a7873636c364b68315a56357753575537716445722b2b674a494e7366365244453249624258784e6a3955434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17674', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f452b6864316848636d637138787a663379686846456136546b465357384e596856346f35624136486b6c7735416e483378434570356f78393059566951343973564b6c6a4f59656b784d33694249344c625a6630616959537939385241524959304d484f3079784a425766442f6c3634463771656c59342f643555323479546f452f4369747843317330703633782b765043764b646a365869776c34666f47486348714b53667a73336841356b3864773238634e616e4f62346b394141484671434b565472676f554f45504d6a4f567249512f67502b696e4d55365364354f6d68387063737131597561636d307572536e536b44576f7648646669524b324e4577336a757a315941636a766f3965516e2b6b4f41706163595057544e7365395767486d653257355458517a6149316d4356587142347a2b46665a346d3374716c44745333473733325261516c662b2b7a3845332b5166386156386f47306251506e78667737427470614e795236556d5152325333722f39505355383577537554444b51534563473637766e766675715a53574265696439323878646e58757074566475415250463642797a78504c684c54794c2b63664b33616b4337787a57304f5a5944485672354d305a73645344326f3447653044505a464c6f57753257706c306651312f4a44417676776f6867794261684b4b304853526f35322f62536d752b536c7a46534d2b6d6a583345434b45652f2f64367464504c5336664d474a4677325a4d6f684745702f583473674f6b4874774848477a783975726b6f3365374c4b375463397148506535744b546b69747a394a4838435355364c6242306f6c6c6d6f73346361533433514f364c4137333744433446516d62625a6d6b526537536a634c644e7346475575637953483051346847796e337774573470686e42454f762f447a51687838434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17675', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b434d7a34306c55374964485765517a53356a4a5158656457614b61762b3872705873776467453737547376365251632f392b38425a452f444d4e7969463963577271492f4a70664d67306532483037746a7a754745456751443134437a4b6c64445a64454451514c62486f47505971415972396b6f4158524d66434634676e6f77526f564b53464b64785879615430726f6b4b4a644e50384f2f7645475054384871702b554c716f736f667a68595950353135784b4c79636e4d6f364465733439336850662b44322f4e596e53383072705a7a4d444962363652652f6a6674466a574775476836532b37535454314668394b306c5478357534344a36686f346d4469465457695754332f7579626472727348556e2f585241364c5678486b62396d457355576e566b35664e6d665a6849484c497672397473464759356b4a32514648722b33575855714e3067647261632f785277756575382b386c4a7937476a6e35474743327530474e34376250744861384c30512f776f2b756e5356746e7874664e612b444969684c5464536a54774b6554625a3163506b6e556c6c634645786d597a5171366d435245586a5865757761633843416f6544664c554c71557762584e386433302b392b6e4853537876612b4d42506848382f4b55316b366d72444d56363546374b363872534d763954687842493339324a7266423975314b562f6b33635848704c6c423476424d616d3634576f454a4f61744f41687034777a5a7a53444774686576536251557272644f50656e735559474539766a514732474662512f527277754830526c3351547a7870326a457965427047636437457851797851342b34784374442f73756553752f33736e6d2f4673354e57327262354a3549726735486e2b69364e585962524853305545364961586876586c6b743544344e687542744b635a73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17676', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541356f44636e4d77654f59645a64555271777a424333466d7478315230396d362b7a3255747352673561304666786c4e346e4753534741526f69636c4f664535755a62746e504d57415354497141726f30304676775a4d4b6c71723278633157424177516b68676c7669757068324a37797853364f6a5947726b74744e35394c4c626c5a327a5a556e4d783331594b734273676370693552684a72654c6467592f50625a4a666e714747316666496a6b76737a3770513738644f7962594679664b385666705047565876374b6a485731385859596f7852436c69334f664a6b5a742f2b775a6e76465949486c35594a6d6c4d756f7762505447784a65514b474a694c3852417555665757376669764a4b4e66354e4c3674386a6a596f73455852554d3172776838566478666b354a7961442f4a726566366959527133706a44332b7a71494f536b6849595176424d574c573436414548537545504d564a7a7769643635556671306d56414661507653444f475631574263646f41304956414c6163636a64526d67726774443646507a597a2f793641663550677972436d67503544756e7976736777352f564f74516472487262787257384a664c37797777764a7453677a5977453268666d586c74556a6e4934555a47713044656b302f4647724c4e596c6f7931777831377164684d776f4d7970544e38344c5631394542697838524b2f6e552b6b424279356e6a2b585a5a4133686178542b76764e5a6d66472b613330554c46395933764b784b36496a54654e4f6659614b79346753364473734733673461343458416e66594a662b566c4e726759515948364e533746685837314459646445514d6e727865494f365a6d487758647a5743525464584f3650375145666b4e4c5a42474e32302b534a74572b4930794f556a5344474a636849413266366d3433712f616e38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17677', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541792f3044595978326953774d6d74544b5658776231374b7957365a36422f50532b6f6d666d5145327a6d565567454f47696a75385662662b6b59352b75346141635062685156656d574c50505a5861596243584568385476764f4c543537675764476241574f4c6265785a32502f306b317541307246682b477138733167664758536b78414b75347139504366623163564e4953317666464e5a4c704a45696a76514473564163724a613148784a476d616746632b7978386c71736d536669674f3137486738627662794f51497162476c764565364649364f3869436855616e714752463035496e4a37774754444c4c797063395361334a33762f39416f346d52537235792f79314c45624f436d476774565550355278414f30773868664c63494942464867696f366b776a38752b624e7a5671526a3063316c71703167752f6a546f4175777a73336949794f6a476b373859367837763757463461677147416d3465596c4858476356637739446b7a50394532622f616a7167546d71422b536e3444346f572f633746736761613969423054634371493768564162794679726a385733764a706979586e44716f2b4562694f65652b4c447533547956796f4e31666c5952454c49634f7a744f52534a78617a2f4979746a4a782b4d66514c6950786a5577436a7143524e52436a736f326b447867595549734d57466355336c45726366662b555448754c444b544d42796b596c3937334b6959715a617a5634555572634e32316156706a51306b4a59316c59314c6f6c38557163325945484641316c2b5575754a7656494d6d53514a3150446f4944582b4a656c3232446a454d6934314e646b797a79315169424f30344b774936696656715165717545336b3444564f4932574d48555057624a5570386b6b746442426c4a734d7154634933664c744466436b75794745434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17678', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417848444a534b7131626e584873644b656d67542f77434f69373666366f586f7148676e6e4567724f4635657369762b6f57617255684878754a336958554166383358706553687274783250746b2b725a535a7133564153626d696e4937355a386e4f4c2b494157794f57514946757a546e672b776174416e634c31544b4a5262646244716c63656939586a69666d6f304930646f4471554456526d784e513549435734306461772f444c6e5a6b457a3543304357426b6a5970544155545848434d6f4163575448764955512b782b4837414c387554654554766642534373396d4451426f4e755549792f746d35475153462b62754e36685771467454636e646f6a4453765479347430344234566b61464178435773543758676d663964464c624d31486a6c38377561374333727834356230596933644b6f443739553035722f5a3274504f776d4a2b594b5044567646354c4b3732675532363566664c54545671354b2b697965746c493162776f434a62767550496845495a37306167425662667049546e79593043312b6866665567794b346b44565044303338414679466f7265566d77353749674b486169354d726a7a7351317051685377704a306d67747a424953674a6a556b5145654678626f38797545373279587a2b665a744544333941676c4373594c41476a62344f6f2b4a70454434372f336a526c506979554e55693848364d4a5932474a4f4e6e506e4b6f4767724e575266574b4135763565394159486a4b6a35484b466d53726861312b4c4341372b45706c4c39586374372f75784d48385033465755486f504647756f4355353859584d5246444856716b2f685a736e6552616e557a7a2b6e684573417757584f416e6c5633614a56774a537046576f5776566457384369514e3341446f4e7331724b76392b636b69737a784f45524d4e41696d4230434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17679', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454138662b374f34455338472f5965456b564b5a5a756646674f4f6d764654482b6f6e51686b6175304b493842704371584a7737305957516e626775697944334f714b655456564d3764306d42767443356e6d46317a4c64545a36663775416a43642f31736d743869484b55664a64362f64382b4e53795749334950686b6636424748643454484234396672412b494657302b7776733377444f7845644533356f5a5976593248766b6944346254734853577350312f4867344c515759374a7068523467647a5658494c4e4361594e3974537143714545736e7551306533356f7a77373347446878685539313741322b784c5a67367a4d784e746b73567945784465506b65367033776e5369363342475a5a727339566b754152536e4a736c4c2f4f79734567664b666841542b506351776b43685035794756613645757973454c32726554706476537646332b4b5470306c6958386a64702b2b342b7330627a74645a427072555536344d426a4d334b57314747735a4645345573637774514578797942694d5448774873356255464f514e2f4473316957435172667237456c426d7950713030564855577a6653367755795a76466b65763047344f586f5252557a6c6b44464437484b6a64414e5868776951354932634b4943656a67775a574a793169595266643547554c416b2b764d46775937414a436266516f4253394e6e6452704839544242414a373045794361553863394f4b554d49564970796a536e6b614e31336f4857784e5075445755344e6f6a54302f697635344a39483971364d3279754872642b2f6353482b2f787244486348484634714d2b7634325a454550564b5239713841484f74366e536c4e6330642b326844564d514c2f36384b4732414b4435356275505a416a57584555643476646c65374579367542532b5a6c5a7244713878317331786245434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17680', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541683062476134672b6b524f316c375057796e484b55776439772f43724b454c366d4370386b54706e636e6969564678446a3870506e696757417875356d64312f68756f314d4f364f473573746269513563344177684861413970547161677269596c537a686147783476776e4b36673771454a596b764d76375a4c7562472f78434c3654595a4433426c3356706d7932696c7a72546b466c4c39665a2f384b50594a4c5376746349636839614d73373638714d72454a2f31794b3552727572543450686367574237497a76514b395568704a7636584c4b2f353577696a7669646a6d67445a4942626553412b62546a6d575071797037325a5051376b4e346c396a52767a4d456173626548345947772b4c486d764e713437556e4277516e30454446473641744a4f4f45384f57624e6e48616f7661665436647867487a797a6c386e4b375859393146664e65436754714363674669554b6273344e59575150796372442b2b576e536353312f7870464b733359354848613571686d71716b56644a327470434a794d58733737654f2b396439775435386c42426a6f727362484a436847663350786c33423263534d633269756c6c3136652b7a64304744714d37334346774130566e4d714232494243636547744e4d2b4473383258524c63506c39314d52464671397077484b2b4e556574434e6f4459364858777677726447552b4c7779644f3463724b653234445741734f316659376b4e656846436951416f4c52706a6255666d565972432f5549626a796766596355534f4637743373656156512f3949386f78686e2f797a51354e3757474b7235334f6356615a386e5151345a4b6555624735464e4c364d564a4a4c57354d526e6638654b444179456749584f7076513446676f624e31357039496f6967577941754f466339537267326b746536704773684667636b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17681', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e4971523739724761557337476e6e5a497a502f4c50703070744c363844675761755141594437646e6a617a5956327041346f3850694b7330496852434b634f5353796d377a75687138532f72367534596143684d305577794b71356d7977657955312b57375937624c555149724e62375a2b78724d4d56544f76707063536c4a477536465847436e62673063636866797a445679747a31727a53776577444d436a6f6632656556444c74466a3255434f4e6247576f52782f56432f433364483961487266485230775a61496543677479715a555869454d5063622b725371583764417a377573666d714c33674d4d62717561507873436a394a62556a43737776462b6f2f3145446651465045396441334d4f566669653245756478487077383270784d43614732357a30796f454931754f614536313435594f4f4d574666334e6537624d6a6d7a7a3779766a2b483569724b65317965314746716b51782f5a675a4e64524c4d384b4354346f696e666d54497854577264795a556e78524d366665395a5639486947656663426f503544676c44755467517968654c7046502f4957632b454f30425567576f696d3345516f50617a6e54584537497a69504a4948737137694a3835755732727046726a6d6e677133544e74354c586e78336c324972666d65493673493047412b6965537678554c642b6a756757506c3870694b593277367a4574786a335455536639752b5473394e6a30584274764a64595239374c754a613833333232596e3272424b6941734650504678536369396d49762b414b5438733146514a63633469754c457372694b63464d5768554c706669644c375763325a5178344b4b364543654669355a486f6368346868304551506b38545a57774b384c7779516a39314c71454866766e74592b6779546c5736534c414b31304d414d6967796c5455434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17682', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541704c37306370446f513549534a446b614436794e622f57342f796357387458356e4b314f4a442f613475705930486e49475658576d69693155324a4d663734754c4a52396b7631414966456f6e47512f434e5971484a36585857556a556d664f7265447a744b6544525634506c4c33562f66626576794b333541393251486d65344c466d315a6951562f564261414e6c694f526d6a44653234327948685a4a776e4375372f6269583658364c3568764842345563443964626d34754a3652755637584a37614543317a70545679306950633572495a494d3467416338376d4a703546697a4437316c59594c4644754655594f5552702b5a7a66366c536135442f6d35716e6f4b6c7264465332637a354d3871346c634a48736131626c46565074715267504b776a536f4f6d5634717741383139412f71714f3969337775314d5a3451486a3476564a725875546131356a456330757254435a694b4f58314265796f4f4d6b5144537563656e736a685942595a535553786335695243715557484e68414d703236686e476a733477794f36512b4d766c77596c2b4d6d39626f64356b45566f316a7a4c566346415742746d587275646b4a79677a734235534445394633532f4e6e2b6f6a36543667734b45514e65685a47554174785163617a566b6b4f554672342f693636685864706e6250394d7941306875516641744c4b4a4f30527577733630776b54484d4f662f4b3167436552574843615a553772417965696a6b544d484a57414e7175774a7a69367758543339674c72546f756e61692f30456346383663776f516133624d584135616e643070565a6756704d72344143433846514b62554a6863794475393156446a663133494d767238576675356a55645049534a417638696a733243677a6e4a3550393131337157756c544d534243455a516672534f50633930434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17683', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417379594c5a4a485a6e7a3175706a4f4255706f703751316c444d6365326c63634f346532745a334230625246655a6237384f6d7a706b6f3869794d74582b766a75384e644d364a4c475975526174723938796f2b2f4273354570504f346572784c4f7742513945344a526f53436e46774b4d5674366d637461644b37504c586c4f6338464f6a337a3378657735594d41514f687a353644614f6e653343672f6847486f4d6f417764784f59424f6c42704a4a6870514e30393375426a577647627a5478664b4e71684f6f755a643067774f43304d71654b6e38412f6b733978634f34467769334339472b6b6a4b6a6d7a7a5932534a743341504c506a2f3978395756372b796a4a4138624834764c3469416c45474571702f4b4c647a314c3042484d6a75494154724c3977663955634a2b6163526971526b2f566c56784850426671444159772f55486b6d7831584e5879734431512f79684a46334f6776656f4e4f36324249725830304e6345776b50654462777842496a7a6f656e663541736c536b412f4f456f78486e734e686a54622b626b4130514f39716c3435577776334378682f676c4a69504474556f485a7a6841614f554b614d624a6a674a50657339712f486e4b2f5855635852492f616575323055445852484366657a7347694e5679416156384b6449756655534f424e4d61666843366e59534c5364396657666a306a424f525155596e2f314d2f2f516844624867724b5670466d78594d546d44373852656d717376356a644a49765237775775586f63766c77546248415439365744794a44515045352f31394852415a68736e6d6c344372546a674e4a51356941497a434f5571575a4c44616252317a2f486c2b6e4745664e65495865695831495730532f3535444755723275356638383544556e314d5947764f33437a4a59664b6a6b6b6a776545434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17684', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541736537654c2b6d4c7a32396d6a2b384a51507757396d772b70776c5a7163697a6e37655630794461493246535135666e493944475441316f7172634850314e53484e43487734554f55724265474b5164637936573938523533474a71576d714547764570796f44306755614d674e612f43502b7a6d464d433466625a5a6f6536672b77744f434b4c674139304f716f6e48344e794e44794c764d6e6663704a4e2b4445386735434b4949485937345439586c6e31447655633450652b5531722b41437462645954464f346d4e69614e6f41684c5a6747374a686a3672784a62695331387a7a597a516d504d6e663970466e6231675a6f596a73494a4f6f4a58544e5a3034587542784239567750367738566a646f492b5755526c5467705a493673313150717a3979614e372b6971306578576d30704e4148637775444b6c4c786d6678726e785a784e6d5548355252737939686f757866443567654f2b446632764c454c6161376b5a4e5030706e357a46703268712b3646764b584659616b53494166566b366770462f44614c70304e706d42477872796477476c7a70314b74635564647a6c762f6c32476966635850774462424f4558313477522f5263763051706e73632b2b4c7a355477317a6f39327043686f796e554657504762375834307a47655232764341484c5a6743684f535173655757566142553964614a4e30546a62786c304876504969354135727665374655576443396c546334573761426852784f324b6c794c697a654e584c4d3144697334636238427465416d7a4f37495453334938502f6e6452755048736f79714436383870614f337048456c786f4e416e716168383250584c5870526f62794d507a645871366a74385a44515a45533172394d6b6876562f4855754937683079414c6d5765432f56694b724331413571635553376544443263434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17685', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a64432b68464e3076527a2f6f716a47616233482f526361414c6c596e416b70374f6e4f4e614b7a45536f755a65745a6c48537377485778784a346535526e57416e4643506f786a72414d2f4f7773797a464b4c4243493631656c386f764c2b497059695a3463342f71704135663652366b71576555564b43744166384a436446564e3038714e644534322f6d30636f7a6c39414d43506c414c2b524b4276516732507643504d3578355a316832347278414f2f4145374e4c71425139444d4b52664c452b5361766c576845747469684772735a4170636e376b59766d577342384c45775a72696762426d376369484f4e412f4b5679797a3972415973433557306c467555614933736a6e763141386e38525a615954316e525a524c58636f57595a614331583471543572376355766863392f343473636c7938796f446269512f53724148575178424572656531485773446f787a4c7a54683048413566386453324c4b657a597a7941563931723464696b356551473057566c43446b7a354741504c7766324a65366d57726b6b43575261686a4d636130536d316a64356f3566434f78344e7a4436342b386a4a2f476951325734597235425532636d67674f6a2b3133724a3632334f7678727757707841504d454d4d3569397a65705730414e316d2f427254515a533177713458426f32736d57355875344731426d39745638724a6a367a6d73387a77506449384e34693471445a422f36394e645133456642325936335549653352504252566d32715274696d626a4659424c506a463436376246306f6a67492b7433453251482b637a754b6c773170504734734b387236705a5a38574c71597155424e6d4f4f67422f6631644d764848453147706b326c704e7742614c38636d5135317432784d68666b307a4272466837777861306e734b3858797a643663507373434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17686', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a595035647052322f794a65567655544c587157417162646137706b7051426846393546524e596454356e73687a66334c4e39663468424d483841746e6d2b42377a4973525a343675755376496878384a547842346e6b44476a3554446165627856432b4946794559546d53774f444b424e5330644159597730444c346f4c704f42527a484b7a67396e4f746c51696179413451555658342f68574633692f666f653749426b6e6e41354d795955573534376e774954427466376f7241674c77785152517975305644614e443238366d4a67784b3248516a6d3459475672314b76524d416948654442464662305a39452b5165526b33394c2b416a7053386e596671784459644e594668735a43337a675031746a386e487669446474664237534d4775557356436e485952724f5a5049484978646f74372b71566b6a73304b397371625774497a38564a533534503237667555763734697674747277584a654730417a6d535758423668306c784b2f4e5569382f5265716e3949554d6e674b6e304f56684f4b4b442f69715745756c71764c62435344633653757137676a596171484d796f717358592b53716d5174556c56553170656b544d7467363737735a7a7132536a7179675434557a31716e5a2b7231327a374e46444e66793731552f49524b566b41754e586130484a4f32412f4d344f785065586c50306c69647a597669673967494c535758564474425565713746444a6f306273564c305537454b70785a484c477248536865546d75306f68326d56582b795836534638307264673146506e506750435a7a37555338794b417765726d6136414c5052555549614c58342b48376f33756858366539425877474173476530347747374237686f646367493356636a5864706d6d483665536468785275766c3347356968646933657a5643636b5a485759646355434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17687', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454170376e74456a432b6c30717366526c685165786f6f50543745706a35784d73696474343767656364676f4562446d65557a64565a6e354e7844326d36742f514261767232356332354b486a36624c2f62343859436e34705248654b595855667869323945705374717732674347512b6c643872326f4663766871686135343839316a643432754e3646536a7242504f6c303450586755554249595a467a6753563343624d5373393279364b6f71384e4b4156434765584d6a4c78355134366d5265617a476948654a36556435423875455675646d4d693978414b58664633747a384e426d317558626f4d42446b4b754d6649357a476361385371542b463272325643537a514258687933526b677a6568455a45524e624a556c6e336a71452f6f7469756536793779484a586c71585273442b3261304f54525a75467a4562536d454955645153746c452f6f7a43424c626c3871664b7354706a366c51527272746552594a5a6e6264652f4c56524b724275674c68556750694f5452626d472b616d6444366878374b3551724c3732395478555a74464a436e734b386f7245446a4c773333384e2f3867485549565a35486a394f755a4e6a374c515175744b3862674c654156434158474b73722b39504730725742676e672b7546345a533161656f74446b4c327a612f69684d336c4b4f734b4b4566397572584e576b6d4e30546c364f56722b424d69783241686b6355502f4a674f4d36496f3245656e41383644676d6b6d594f6262574a427a6a447462554f47525a317255354d64783176623362726b2f3346565873445a5776724f6b484e323046396753587145575749777635685861616b2b55746838476136557a303576786d7852752f4464785152505666782b373766665146353670544a7532726973533774333642457033494569766b3132626e62777a5555434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17688', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541746f49774a506448707035382b75305777307948576430576a7758742f44427a69456e435238644933305279737268567367596354637438434e543135316530612f7862654a476d397758554868764b35735a575142683577566e58733873696a335a32794e6b3478363446626a5763524b5a4e6e667343434a4534327a747a7070504b5a684f4e4646487538744c644c6f474d546f7954795179786c576777594a636b4438436d724a674551794b7744646472366f456252626f6f51465478642b33416a364461656774456952725a66687a31594857696877526e73694f39414d4c63565036436c6c3576514b46516b67434f502f6e4462563370446f384e6f516f625452354a676c626373675143556a682b6b63466b6f6b446a6b796a37325658634e6d54436b6f6671586165307138425063534f623155487832542f516278444e6a715577784e7a76546b544c7965484b3957636c70416c526435584763734a416b6f6f6273597931444759722f55656350372b6e4279325878327948433662775048664f4b36386836307035336e42495355654f582f78554d5772507731697a746c3879687064646353434e536a30784261505344544258762f314a73657647736a47756b366c79556862467941394733732b344351684d77674f586a7267464b6d55685149315a3957557539744265636b514f4e673955737476742b5455616b396e6368784943677134554c695463356f42707958652f4d32565330785a352f6762333158482b736b4852544b524d754558454e2f6b454b4476597739586d7461395343694c56626b312f53344d4368656130492f674b575a4e574962316f3172662b3054316b475871344f584330516e326a694e3543656d6a48562f4553387846436750575a7833494549732f426b323476547a30316834444d4877304971664650506a30434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17689', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417262344c5652586e48617650744e31374c6364724d62564468387a50595778585964582b4f34785578362b7838464158644f367552647779546b595671315359667a422f7545694d36386e57464639653578505a627678584b4578624b4f6e3372614359684951542b4e4f675a45744a3641726a462f735a38714e4349556f6742766e3835664e61756a736d4b53323147382b4468313331564b50487a7168334e503377483942626a384b74507930565150736b726b784e31417075434e3161676878576748793375706663726d564b757a5939556177574f32416b3678312f4c35333072426c386e674938564c786e49697164787149574f7337783679494e305647587451434e524f496c6e632b7750524c37376f79577032314b5a4779795072617a37525471376c7631634a7650346b566e78572f475430507745664d6f476154356c73627943476d6831526363325a4c4473525a6276734350722f6f4d6558776e4b6b5642763046524b426e703934483652323866736d52624b6d6b49544c6672616b77434c3356456f56754e5031714541753347777977465530484a644938516e47574e574d4a47672f4f717948624a384738387777644f72454e6a6f46535266646b4152334a53364b784f46704e6968302f4677376c442b2b52586841626573577a79587a386a556974713572634265387658775054454438445a6d5462325a5050397371776b466433762f6e6f3273354b7849716c50546c6a3930702b445352346a37314547495049557952712b7733544e4d6f494a526e65616a666d5046756373436f4e64624c4a2b737542303038666a676170334a424d593742654c787467586a6767624e6f67546f334778714a6966662b4b6a3032713637464e724d4e53396d707a427856564563496b6861716a5a7447566b79646b785872566259333376374f38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17690', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454174424d47712b2f3471354d6862723048786169593931462b566c38683530684f464946307365457a4a4f5a576e44736c4c4e46616c4a4a465552615763366d4e79424730563056467a6d534267515a4b624b725049306b334c475664665567355a4a2f672f714c7a6d325468445453705a7478564f386e732b6558664f7a776577454a58772f70486a6d6c647644546644664656573154626267555872426a5839643457773953444854504364644541555145326f5a2b6b6148676976764f55496477736d6478596e7135452f6b554775796369664a684b484277496441586d414b696b54476933492b55775668332f674464416b76706d79627a6f7477586e636f4b3848723669656961687162764556454d76676b544e532b48776871762b62346c5a4e68304330736649617257456e704e684a6d306446747676556d796c584331587a546a654a395a733958626d5234684531682b4d6e316c554e585541504b52316b707452572f64636a35492b334c533430484a5933594865656b7058496e4a50782b474e423046395834454f744a7a6f464d4c492f537a65673743477a4c4644615275397a733572566851394d456b495355373878477239624e316f38435a786e7049584c4b7746754d49544372334e30516a717265674c6141443274754857716155394c374a4d41345232566870535a6a515a466563626d53693937556d6177754c3954394841414a7a744644396e5a54755868424e79556a676e397a4e47573162536e49346d6a79706156364a6a696a34524a74726656646b7950417a5237616533386c72557a6d4c686c4832616a61716978325352644f356b6a33797656554d4f6e68445056414e6e31396e41512f5530517864723836417371355767336f4147644d346e6843476436646b627674617747676331542b3854363575744e504e7639306b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17691', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541715833395a69653538336d6d4878574364556d34796b6f3179363167705353336350375a765930545a2f564a7535534a78313375367353792f6b394742523447615544726a5a2f44724b4b6a6e4b4a63554c3631542b4878314f4433714c5548474e6c686650317064657550595a6238434d446954614d5771417943672f6765376f465470412f463533706673333457773852484b4c33496441326a787a2f707442366d5a732f4e784d596676524a69527637736e473072764e676c43637266684131796e376247456d31313071736d634e392b48765777665175776e52576e4256737548444c51623168375844614f545444415655525a422b4c5845635634554269782f396d723178302b63504139316d61793759776e586f30634451503272376b4e78676e3168482f735649494d61524b6b3365574e3050757765635150704542504552767762774f6a726153446e54393948502b4b35694b6a772f2f5433774655316c676d49593032474d314a2f474c774a505a3977346f38724349433254306159577453634762455773714a6a386d7a713074746c4a69535a5939634d2f4b427768454a6c437a4f55505531793033524b446b494e4a505a5a653849614e53534545344d41686e75496652442b6d5166346d62655271753864533471644769616f70426835344f74482b6c75684b303878775434687577747a304577556962474b475333617075696843686d6b58374a5a6a5473464672305538474d63334b30425a737662417965704448313973584e68676a346637527263526774616e624c37556d50414778644a546d77432f423263344737696d4978496d6852764d7042706a68434b53324953594777487666686968656a64516359697a436744443263645569777935496f54724777353574483439775a534c2b59526557432f344d4231534e57323745434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17692', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454134726977726c6541515735556636496746425549576e4347527434763449414d386e46636264757a6676374b4a6a674330546152662f5a76486a6851725742556447754274786c4555746f416f635a6a4957353746324c2b4b6f714c30596e417348524e65387a50374c48475373764f31316a626a5672746f76723067595961394737764c4c5452535836645164654f304c494b4d314f654256516a4a6268666f4a73655030423733563947466575386b3544453846623733696b793350574e4a6459356d71326e68347856415a4a5554764d3663745070514e58464f6c45427a2f535751563055667879625870456961624f6a74485364664d49412f492f354e4f755475654249336649744c6158306f613045764259445554397a677933553153456736333531683330444932536e3434775354453347662f646f344d6e3366526564484861337a4a4277534a63444b582b54594b37333136546d51456f7846716e4161646a635a3143416c706e3453357a5450647a4f595932484171444b3271583852764136552f355538646966504949536a626278686f4473416e2b716d704f5079386e396472684f55346877354965516932675542496f51554638714b4a684c38726c57314a58714b4453644f30385966537244445359634754307331534f6872512b30476946784a5733625861717949634c3741524b2b6b474b344e5061414c38783638644f587447716e78476b4a4f71775446566330547278566b65334e79794834312f6d614f644a32695a34694470536b66484173505445475a38454a33443678766a67584f6c7a4647466a6d70322f3467694462365466396344432f715257705a675971544c635a303767304b5759615a5177617735703533784c794f477a497a326f3361704b6773483679696a69653733573654532b7467622f31467a376675614d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17693', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541385063552f536f4a386d6b435456572f5564595978634b556b42556c6c557a2f78587933687445643634376744686c547461662b4c43793169535a6d33304741525a616e4f6956684e417a69736f734f79626b484f5479366947544a6c4f516f356a74462f48547165595237527339705972356167347675323153575242614359554d746473536852416575436e2b724963327237364376505a4d7376677171637058573257722f326339486b2b4d68636754322b464e764c78584c524c32796832516f36707759536466304770366c33626d7a4a4c714153717a542b5355526e734c70374b4e4168694f2f654878375661385555364e7055744d5968304f386c786e63476a6561504c49614f725a3739446b6862534354727037417166395665516251453661725159707a746b535a392f365163496849454d52504d734f30593245374c515775344565662b434c6a4e4447426d58473656713368716c78655961794a59506b344a494a59417551684e556a77433935527a7a5a77774269442f6e6255563935635631623778544a4373364a334c67365a6a6e656579576545693277355a4162355178547834495369665569747777707350736d676c796e686a544c415966466379587455386e543574342f79376c4f70306e6a41382f6e784c6a637a4b577344356b5a664958743975533076576d44776f702b6750346446697534675970304a4a70334e58307a3862394e4d423237334e5a4a455549596253714c46526d315958674846534d34555a50665231786b4855624f6c7479766f70505434426c6b502f417a514c74356e5150754144394b3743756567765371662b4f74525534367735424173676774647a6f5a5a5a35616f38755166316e66686c43546575786f57455a35306853566673422b76383354487a48486c2f70304a427a4c6830784546344255434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17694', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a624f546d696666726174556f734b55426d7a7363412b46646e6f612b324c535267307250755831366a6f723871466451524b6967462b6e67494774706a476c384b42696975536f4c4b63324672685859536777416e61325a5467574c55424f373055455945795a39676c444d31792b5a78704c6445715159475776545a4e6d6c71396354306c38522f4d327655677050486339366350643578785961597a53666e75557968515949574e346d4b6a6a38616653774b6d4d4a714d42713132674838566842386e49425a6768526d2b6b2f78553668704f375545344e5a326468726e62464152694677617a346362735835632b33766c764468537968543845634a79737938443964706231697478334b336c67502b6d2f794b417a5571466434344756783665586439786c6833616b7352453356656c4a69372f696b67507744317a6d3132794d3962424a5643676d7765764348534842314b3043464f326e4c483931434e3069375644713274767a73647a3161586e654d76464b52703151504b495946306534785330764c75774c635a6f6b4d3842344c6a2f6542446869637052456743706b612f54436b735a5164704245326b66746b3564684371744b726d414f563678763672304155586a4a335367493759786c726264324c587363326777363845567a64536f712b4966383730784337793571346c4b394c34766d6869324d4c7142786e636d63304a73612b644a435663397543636757554930647377412f4c76475350546d4e794c7839414f42386d30357151717076716f50355950565670734a42684a6a644d2b544d34503874336159594e326d726948794f75774e67645252586f2f68623136354638497772376250547a537232584e6c3657796d676c7931486544726458365a4162665076546d496954336270742f7231484f6e674b78436352595a55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17695', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b484e4a2b70376c704d5a6e496b2b46767a4c6257784365654c69754e723864686f32525036304856495372457a386851434370574b352f5377696a47476c774e4b6b4c42366676515a6841796a4959692f666f564e7533646d49746b4b454449634a4c745744385853636469347745704153517a456b346d622f4176596e414d64435343652b78525749426c715437702b75627969707757454149536c39686e44666a4876774559726b5a4666547a4a6a3533356b42744957337268496b35527746437578656459446943374f6d6d546f364e564d6b75444b456a4a63516e2b7775456a4773674775562f4578675531547038666147664d774f6f696962456461594a433572557952412f7965587a6258756159713471463473794d33494b47444d73494168385449686a5175496277474450506163635854663679627039395461393558463862754230454756773656685238734744495336497841464b4e7a4c76594c6a4d51427a2b2f4834433877315a66625a2f5534656159484e457742394a72422f34474f6948462b614b794e644663444774596868586f2f5475644f447066647a724634773665433468726f4d385837682b4c4d7948545a4f5672766456764a78527a506333326f7450414359755965412f54635773457a384276654b745547754442396149476251305a665a5a4d4c437451464d4330396b6843354979386a774a792b3335624b375438657137325a4e6d444539754d4c37494f53454767783744374f35435950544c3075696550755843375a6d6f78766e5667664c473875574d476b352f374d507755337247326636347a594f354177715a5556755a69622f4e304268673051466470416a2f4a6f38435a61336133304464717a48744e44724146314f74527130586677633630467663536d6b474444382b6244573154594638785338434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17697', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454178532b334e70793473585039702f536a74433546614f52755631416a545039644739466c727646524a516e3231744b75527832386a446a557144545a6c6566446d614d703166423930554e63505937516b38414d5a486a5877517a306e5342704b6850525a7a47324a596f79334c71586777346a4444657569773459434b7150506f4242526d6c58396362365a324d7338454c624a715a4848726e727147496a6f396e75643862427653556567504b70613474564b34773948386d2f457165546d684576344a4e686c35504e67617a3446726e4255712b5663594e3243504c6f4d72745059426570757633734a7341526d4e7167614356394c65446370675536383470334b6d4355476a585a4645424e31624f546b6b7051445061546a537970337470447163324f5554506547567047644c5064515933414a6859342f4b664d663059556a6e646b437244386d6d63662b4e7a4636384730414e6a4a64757a51674b6638314734657333455a7732704a697932684873784731364b685a73334f4a4d5665767438494c3177446e696f3655717a70376c4e51574d4151593339537935737345432b7944705245646149664c375950444e644344376f654a627067547338645142616b33386754584768786e6c6667364478777233634f317157525471574755627a6769553471457172536e456a6735495170596d66795a485446507248737165573258774d425457755361574b2f352b56655367693441524451374868437a76416f6848432b34322f3243414945482f567a50516275724141564c723862474a4e627a4f366c5839707a3157456a30716f474f656f55515962743166562f65345a674e75655959357a544f644f3377693833696e55566f377044524c4774446735564b506c514a6d6d656e4151797344374762315874453759634c4c5455306a5655464c6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17698', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454169716f595163667a7a684b62624c69704b45465752705839782f4167305158564e4e46794e6f774f502f7457786734653573534f5a38636b2b76374c6d4947306e622b53475631515a664759774e74656e4c4567715359684c782f6f6d4b67364c76774148734f313562386a38712f77585647483256464337382b526c35794e4a576261357468594f7447642b56792b6b7a44514b5838307479412f47467072635962494369354d6d32445035346f4e6e43476237423150586933414445556d7a7651676637316a7866736c68766837533330772f6b78795a473574556638743068544a3842342b6e524b76685167554a6b4b5a3139387638705763347a565039684669624e794e545358676c654c69642f646448486d4938494a76327241476c556342736b4c686a4b6f5873632b7966775131506a69474c3753503878627164354e4566354d49324247636d6931724c50476579556154536c794b576e4f6a33644b58616e584253706e57535668703141564c65794963686835566f71697758746d3457556144736d546c57416758414831616a6d673266677950523461636a653753526f5a4250384939615372476c6c4f6d4f386c34564955416735437550446f67704b35703379463961354f457775654e70656253622b694468706365647454524f49754831376e774b355357586e77455853317a6d656f66585976776546535a2f6e6c54657a4449713776474b394e32647673745a71436474486f7573576455544c4f4d353859356c41386c37425a6b324d7267716e307a6d475742423366644c4a65657839586859686c566d452b2f6b486c5877535a5656364e2f71684d4b72503433587935704a4c5544334b54534c7047363252794f77445a335746684c2b3737363536475064535968525551416269543853486a584f4e6a6675434a6551466b4a6d4f63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17699', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541774d6f594a496c626945654b755950483079516d4e3472613571364748725a45704a752f755035475553554e47704c46633572636f5a5278314231492b2b5a48424d612b38705432314f7a6d306d5275484d443262445839754b446c43635270766b546133577a787a59326e42632b6a654c52557a5267625374774b79432f784c564b554d4f38303336676834345479693263475662784e34567737773131495938447876544269483735697473494d64734851724b4d7958366a2f76694e774f2f7054316135613039387361394451744a30614571796c6a2b366e7a6c6d656f74572b684261397261346e41686757695532467742325a767a38645067384438576a55326a34614a2b3753437562413675546559694a4d6f34486969694f757a7a7274475152694869306f596456773936767248624e5862545659306c4f6e756b5566627a744632534658473667705756417a386831385933583142504758492f5971432b766b6a7774454238734234413551526d7765544d486d66785a37316152756e38314a727a706637494958724c3759783068694e3368726c4f5244344c4356736b675373453635464c6f3367644357594d55357461352f62762b682b37514e5a59384b416337547750526331384a56327456637a505743366561766b477568635451554c774571716e6d6d536d516b7261636d7a5a4f51715153674d42646148415045556a63336e796b7178646c635a714373564d62695263512b3630566c7445707856774e426c7a4732664753655072756732733469753937444b4c74426f6a433267363567724f6c477054325631767039315a674d74744d41315043676c3048787951796b4d39654a65533965567a73574f554b6547713052386a45664c61707a6b3573476a734c6c4c52366b4864773842626167776c706e3775794a7145704b762f55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17700', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541386a44332f732f65654e4f4647396a676b79666f684e425a6c526445753768465542515269756a6d3077757763415335784458574b4f545753316c3554492f6346715557723353666f56316162765074335a6c44482f793857356d45622f6f62336561446c766a71767950574246766b4a4b4b52575456537341317955784b5074453261734f65665449735351384a46715654704b6a6b64325a4a50616d7332365a5a745850554b7a46544f665652797176473767307a7739446c525238574f44734f326d557737314c7a45317350314864326a386b476c4b762f304d58374a55763258453944737a7a33535a6c307164777a58364463734177792b4a4553394a574f36715342425854742f6a4b6b2b79334366452b7364513043726969626f72676859727a4c50394735436378726253683542634d69767254362b70773856367639333733726557664f6373374571414a7a79453570744a6c6b4265672b59624879436f75354d763754563045786d517349317153797a4c71566c42413875673870796249684531446f572b4a554d364552732f4e425138554d7545364b6647346533424566393742425a43776870654c6d6b4d7a513638515252306d6b30616d7135726533457a62444936456759373559506f64647752657659386276416e73766456354c645939774b64686b4d594a4c745269415846456b39686633373647797243416a4f7a5a717832474c67345762596b7454413874544e5856397a394e71334b386151616a62494e345150675650796e62783963552b39736c2b347448617a2f64526e30596e66567a4e4241426f70565644427731516a4c44615836456f54326a2b4b356d74696d724d666c7141494431393263557a58584a2b4d575134392b2f3333624a365270334838364378526853735a6f64777939524445475a647a4e76327a722b55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17701', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a43686648386c4d564e2f684c6f73674447795a494748314a57726664623532712b6463547a36702b705a736c4f42464231354b32783461317042455166364339774364484e5768446457476d444157544148654c41576445747753626c483678754849483457485732715738425541304f35786f5733426b7836476a4a306f457a576e47374a4679326579395a49554467522b76304e502f39726a37504e305458677937544767382f62545a50744d56666175776b4c41462f4f6162456358636b4d6a5159476a7a4e6e7a4668694e2b6b33394671326e346b4f7137553757576544596c56316e2b52586536356d312f33734f50636f75385751692b652b5343566464666b7349536d497830796c43425753346975312f70784e4f3974734a78384642642f2b784153456f6e754c4b4349314d50746e3255675176552b574d55524277754d4f63586e414c7146733261597a674d62462b53712b4b2f4b63376351463266656b53747347326b336939794c446a6d32644253673962524a73725534324c314e544d473351503570514247333268717473336e63736d49535a72624a5551505635386a4f334f564b71524753496941314979306172716f7438714634654753643875543875386d4a484f6651687248414f456e59564b567a46336e3367644b766d4f50505077334c48574c44356a4e3662453643315748682f4a5a5a5532574a625862446f5050336e4733334952557a3154614b6e3745596b3750486859704b4b4d4d515947694a79642f3552664d6468647a6f6c6c36747842562b2b32593338454e45684963626c47556f41496d3250552f68592f386d2b59652f4c52504d3871754649375437427546724f48303159496650597277644d4745653379355944386248396c515636684b645853416f4a6c323768724c61626370502f3163514d35345a4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17702', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417a534b44583372727363756c68414430447a37684e73455a70316c3636336f4f516579633764367757537a72316534786e2b4f432f73316f64594161354c6f424e353469784977656e474771653471623251445a7154513373763065644756586f2b32344565536a354366795845795954642b677a54416f4a316c52483842627058334f77556a5a6a6c4279382b4b333235384d31765a7036576a444159707054592f4c7245574f3251514f4b785a42646c64522b516f2f45796e36335a474d646a5376576d75456732796e356d6c646f6a3448466b414f6177426a366b30496a4274397448734b66464c68726f73614a673276633946357561526951725537564574516b353567414b5358375a687131352f766f4e566a3570642b76377a48547048426548304c665147505572657035344d49773735654f6a6c686e57476f666b6d2f7162634c3877694b5466313359367a33726339314279684b4d6c68656b66466e6b33684d6433456468695a6562495175654c4e59766249744534673955516464663373702b6a353153383366656835777939795657576e5072797a39574a3348376b58677071324267644751497a64315236637754477470697062753642434f61674f54567969305067334e3243414a5276496f436d72786a304c4c566936646c61704658342b4c42704f4b797832486f684d3776317436394d526368336c72546230616b6c64687379506e5a79662f4531434d6b4f305935326e4d75356c72424179647178786e367a684e2b31434a61492f7a6d44484e616b66654c546d7733436f6e494c7745424e497a6b4833424f7842355a5841574e7934336e394c56347645596c495542344c735a2b494c38686e32626b424e7a67526d5a363542664f70507730752b71613967784672554f325a376f4c6837513662567637543644304a6441775155434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17703', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e4951746a544a565a61594a45374c586a4d364c615a352b666d775852556c765245714f77693943562f706f4d6e434841717170454a49434b546e3235374c446449777a6d6e633136746c64373365726a56734a4e6761735637536a47726154506e7964634c2f32514b52627035526d663845636e556f2b69506e4859594434746f7251375a71674949737236336149306759546f37564352636b61446f33585438616352357274342f4f41623446524e49357149647557714363324a54676b6478746a346d4a4f35416244537a6e38483736582b624c74797258786e48772b717335414443367775334b4533584f4e626f385064513932676d674348765072446446744a32784867507436344852322b7a433130796965544f394332675268497a6330346d5a354130634b422b742b7341612f79523434456c6a794e53774d6a53384b5531764f6667422f68344a5772457a306b2f515557506474316844736c30572b7079314451506e4e364749464f7049647139325276685a3843736952657965784543644c74305343583076446b516366416d586a3637617064664245522b795a53396e6c7975545a3176744c38715a6862525057684c335246394a2f4b685262696d76546d4c61397a36466f76525168306f4e5364635935416230525875726255675130634369674c743742326b726b737a4d4c666d6331653669784a6f46352b444d6c414a5841355773773632376b63397345496d333764613866656f337569556961364e6f79454c6c7470385a4b6f5151625230687530774349327573462b5230514e7646464f7a3932705035325371365a4c4162795065492f73546171317343324a766758705672632f51504d78304a4b394c6d4a414c59344a4c7956504c4462346567776e473275365355624a366a432b4639516665326947764a4730776548483673434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17704', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f724e6242393844365577783666784d65704d355770484d4d6b6c486978494c5433694e543937716b4f3771435950346b4579547559526a4737557a76676e2b656f6b61324f696b304874596a4b4f4e3962776269794d6f4653634e61387239314a564a70684966396c726e492b4d4f684b435a67586d424f614e47674556644e4e6769546c3369477545724e48396a326956745a777151644875436d456a4e316f7436343478436d46364a66545179676849372b7650556e4d767470323330355a636e776d793079646234424c5a4a4f727333674a305351666b5447316475716b542f415a324e7a614d666d4f6a5369446d38685964444433785947536d4c6b72544c55384a442b336c524b644e504e32484e72464838787a642b2b38424e6c4f69647a456373307163687951546f39344357496c453075354e6c34675165557639364b514d5864325757364d333331324b756f46436372554f304671476b31756632384833332b7a4c6a5267784b5a324f5273556979414f726262506d623055386d32736c4153365444587841462f4343434a6c634c6141326c7a724743792b50516e647a7a70326547415237506c5838587849707872416a45504b3973446a6f30786d766d52304a7873567859732f4246753747477759795030703272753673465357396878556776546d694d6e566661567a344f484f34563854716474766a34645655572f4268444d38766a443838636c522b6776546d775461544866763247343032456d665836536d7975446a376477572f4f3661484c6b696737574b375976344735553462597a70376b4e6958597477704a50474f655276636f536b426f6349464b55656b5030586f6a43614575782f726f6a39616d6746494c316a48717747754d6a6e724e515261344b592b532f5835436a5a6457663269726e2b315647475144797138434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17705', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745412b354a374d424c697a354f2b37616e56516c4664776332314736514466744c4c766a5065433578797546556e454c4335644b534257772b694b5a4c3237395439416a546b456878552b5049346543663368343242657348576130696d634669445375623857717247546f5743473962416a5474625252482f34346e387a6c336d4a357974664b6930676d67696a376a436f51426366626f583241715a6964337a736166704f677366582b504b44316f33435a634d3879304c6a7a6e326e4c652f5273395766786f71394375556965555659314133342b72674c6773495044382f7a69777355466b306b305734537a65787743475a4e56567944685564475a4e3745726b586d396941624972666d485755794c5467423578475a7859424c726f734768466e425159416d304c61324f475a4c494b32734d3247644a3034646a392f51777967506b736a367434344b496c6d6a315577497564777755596d762f2b386d30415444782f766c4e71506e62576d5959367655354c704b516553437466426f416636312b614c78792b5533536c4276596a6d72767a34742f55344f322b7a754875475a332b6d5071493037566d683858656a657357594e3774516e64676a71664d576e7467494479677330704b684157664456756c764f3870414c533064744845736b5249536b5136584142414b3665535679394c767a33494f6243423175634554574a53735a77527a774773447a62562b4e6f5a57577047595072716c3233307062336e644f43366667554c4c50506446374a48357266432b3556326f45385668422f38586279534b4a49657a714632456d6d4149535759675359567274595672427a584c65426d483272766144754a30634c516a6c44496b4145377678306f65446476367558386d7964382f3435734e4a4b657536494549575634726a346d5465325249775338434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17706', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541344c4c4845595877326e364a77625173623857656e696969574f73412f5a4334577a6866794c5255755552344e3663772b4c545349664b647170536a5177535067364d64514f645049734643487271555644547332396178504148544979637962394574336452726c70447250647739574a59526a71665034726a424c7970624b726d3132745131485665554b3278355a635575365442344935475548766f423069624563597341416d5374687671386a3676514a76746f652f6a7569765a354244774750757152423272476c46745477536f4d347671775279515a686731315452446e6a7552485836525a30334a6f6f734a6a357034436a4a5959396e4e724263666f713049577a584944684c56692f4d38484d5a70735461706f394e3152693837772f387a582f64654d414746584f2b4c2b41474c75695772366d42713377592b716a714d6a4c4b6b752b6f2b35434e71685952502f4655557054594649475850522b737433647250354e68316b392b36486a3150676b4b696e794e78487551584e646b364c376b36614e79456c666f52656871783373613234577145417a3652344446785361797572412b69685376312f4a73587049734b5a31583354517a2f66734666544b427154796c5139586a492b494b6f6d65533748366f45385a63472f4a637a614b733556354b2b4c4465506f6c2b4e6b72733347395a64376e513259785a7859314b49337054415549396d5a7372454b345a7769316256446f473036422f6f4867757868304e5069514b5770754663497353416641583875416c67426c4c6e5a526475585575436a564d656b6d4d4471704b726263416a4272706c52576132702f6d664971486d572f6a6f50774f4e7645684276614766377877436942714f735334716e35396533675935774a4e32585a584772533547594e7335747145617154454d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17707', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541673034705375636a3070726c73666e4569776b322f4b4b427532514a6864754546344e424c36784358527631454c38766e65485531514d4c6167704a68784333437646464b5a5671634558756c53556463433755717850704a6b6d565737787974706f32346d694c786f72706b417676646e57514a326d5434525068616e73426c653374577477567252697149556a524536432f463455753048324648476e4538336731492f644d4d475431655954677132396e666d38443954304f616f36676e776b516a3071634e62724c724b4348336771432b716c4963766b79724f38735a42316b645068336f796f543742777a6832523841524d527652704c34554b716475364167653941546d3873553579686c4a535336356e787266333378773164745338373754793572672b332f49464d6858396a4d7769645676767331424f7a46745474412f6f3044536e424f396562365931786944624a2b546e5a774a4759736d5039364c75743245656a346355684f64517a5378364333684f5749385a32526e6e303973426a4e584f6e797a6357726177394674476533395a5748757164344851504c4d6e786156496b32524a4e77475763593933747947746a5353514a61736d304e6273637661655374626b323971665a664f5148334b2f68527053627945734868486f666e63704e67487964457070624a7a34546f4a77524c51564e387939544d5130375132487653303543327161464732347864675655733753626e4b78474a414a532f67694c58394842695432593531597953532f4459394a6f4d554b52524632315959745a4878757a3547675a315154464d6645596f7673487a425449643046724264653652437434727a44566256713046645a6f53332b72447758615a796669555457303046465534455a6b574c7132627a4a3665383773636e6e2f7769344d795538434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17708', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541726351767342734250763461644f5775434c6b4d476667314d522f374f566d6b3369774567374b73457a696a663744315868543450495459724943596634794854696f452f622f596b2b73746d4a7575482f5146414a756c4f524b4b364f366a6d4854766875306d6d4556724c4163586c4433303956336f35797a764177313570393374687a75364c65395844744d34636d342b355342723573316841515959417a372b2b4c37382f3154634a756e6c787035763269753943432b74444d4e7a49377a793254795a4f7a66766a7537784a73343465777a617646543176315137387962364b52736f46492f695744724a2f43734f5947664a41733853504b72365058344d7573363769376742754750665530746a6230325a6a6956666463492b4b6c53366f734f623876774a4c66705a705231336f6257756e59306272382b557864523777394b734f7039524f69487a456b584641594d624e6f44414663685835555a6258746b4d336c6e4f51355a306d53356b4d577644704c31364f6c462f726c464c35727735364b7a79654f766d646c595953517733745538455371777534355637664d614136423164463645335668707a5932434a5155766e77576a6835496331413856635a556b527056526e4a535a36466153702b664b4942515a5a384543463476374d664b7a4a595169474439665a594a6d65325953675a4b75776d764c7134544865765064702f486666517930772b41584c6d646d5170714d3845366569315a434e5a417a2f594649477a746145473230774e32516d746b66667362566b46756c667574755a3632484d7967373953747661516759614b31416f687049484f5141447676755833665a493955656e664635467a6563574a525052724a50685259634165705658505637654e3845626965552f4c674d4648305356777737684353667451746b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17709', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541694a4269557858716566796b6a357a55714967416f344757725645364c66513852796a6f77383242413253505a65333566586a784d304f482b304f71484e572b525077782f3078434f756b4b774e4c63304c5575436f49636e756f6d57774a41774f77767a785a327778523855436c47387678596d62416f47366f47756d534868547a6848654e59522b3630557471312f57466743692b685433732b7874665732392b34384c4c304b714f45317356387050754876464778796d34386b4133696d7631574f343268326d744f416f48684c74637937346836766d6872624237516f62464d4d385250564d2b584351665869336471532b386844472b57437772522b597577334853424b43354a416753426972415a3242744c4f5837336f4c464e35534532412b4e347a69656e794a75716f5433586943414267432f746144462f7a4478556c436f6a63467936736d41534c6b5047464e55586b43494b706c4746756e32704962327867306f4a35636b7367335135427057496950717271696e4e7070626765344a3963554b707150396d597636485466477436326d38736e4d49315242624d6c31346968345a597459353933722f352b345374624d7752697a5a7279734b497255385348537a592f6c44655375574351496573515169337831554d3739784c54795a6f585a694a6f7145774671567a724c35322f4358746a6535583939376f6b774b35667142704e474b72474e446e646268772f754e5768717043767074586e52317a4b537545494a44704e7131716f435644765246374355695059325570346d514b6d414d534353597346352f505935464b385a32754a2b353150635567674c4348477a5648707056564e4c685445655a61585056325a34742f72312b4d536e793348365652584b674f446d6b6256302f30516641356339347a6a637643674a576a3973434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17710', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417434343039364d4f2f30757571797559655354487545507363495651696f6e36712f53364a663374416276595177512f6d506a326878346867306f38556f566e386f464d754e4449655272393737724e7a55497052726e2b71383435436d566953515174535679444e446374704a333742515230636554427a39314450657859364161554f666c625a64695653524b6d794f346a746a7268502f69564c7a73785138313238483849777a6d705970506f6e5837476e5268384b327061555a4d4f6465467a66386e36466e56443241373354454a754d6c7176685a62576d5a786e4d49736b544d7854444c6339436869475747685056696843787956362b5353486259736a505164356d303239496179536843343736376542523473426647366868726d55652f383152437874727669377243742f4741386d78327a5a4a705a4e6973363574635851774676494f715665353854436653454c7351726f78586e6e6e6d4a49445a41337748347373742f4e4931507779487970676d35536d3062725048515163424a65304f79467a7254336e70353762786930504254716d532b55546c6b436a776d69686f4a445679485a66376c573961756839775463764f344a566e447a62753844334351316144414f6f68517a414e734469576c5a7971453032497442785838676c627a3675797935594344626958446a59466e63716456544b5953694161517732354565617356474a522f48334b6b306c445553333233657541764d682b45375332304e6f4e524e366832375771376b6273314159306432356a52704e2b2b594b6f44386b6b645546634e5646794d49695a4e4f565456664a50373542544f4b394638496241706848303361665044506f41636c6e4d5054485853514931544f7549762f737551457248722f78737749384c637351624e3042637249336b68696e7055434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17711', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a5a30686c626c50694f7147394a343775493848445547494730435171533351556d3953784b7777426d4b5967386d38496653704466574c50536a4f5a37545742566c333975746d4970454e6e4a426b7a612b68372b526b69627a7a6d687853594b59627752525354703579716a6a4162643739716c4a737a534b327947506b655754487a696b66544d67724a766966476f536c65614b32496552712f6f48376f4c38497a3045756a434b50317a79394a63576e69325672644e6f61306753454241704f476633336436536b4d6b653752762f33425635484d35586238624a4c56614e355250387155666430424e50587a2b41385046796c727679543176575749656b52775a4b7961646253574d306966766f446162736277656862345977706c6f59527476334972714b31557067774141423175574354485a6e4e4349524e676733544b70576e4246306130544d525656585173724c68394e66627532765743397a52482f4c37443236315a6f4b76526a54314e2f75315756555a555a6a496d5732726e47584f416f654a39776f36384c744a544b5272577561386b4c6f773756377269495445614f6f62383330767168327833784271356543573630516634377a736a63566d716f42496947455976365839764448776f494f4663723339374970736b376f4152574f366272735a386765424e4f5a654f6f514f326541354545764d47615536737949794b79665350766e734934596d444941447a77757864377267534d3738516f7a687a6979442b464979555837724b5232413441626f36424e794a7146574f696b4c756745693255722f4e7353512f46436278326942462b4951496a4769354f4777567477364169594e6a617165334661334174307a625334534f3666623430524a4a7949304e7a4b31386c38506e3843613758382b5667554f375a6b36484273434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17712', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d757878466842556d6d62766f664f63367631617039754f47767170574766374252745a7a354178787458566c3645567666566b71637433724f53653878412f513870535a30772b36476867512b574d6579504c6939314741552b5042353074676637684b307253756b425662495349467458474555325834476b7932695647762f6d6f6151674f4b78632b716d514e647470354b5543764649664153515371716c4b2b544455584f59594355716c79587a6e6c6f3356713041326a71316f4a4f634c48434b4c54614646504666353855474a316d774a4739374c6a63314e4d49486e507162327346445845736a36463274627468646573784b3936427036446442306e6146385341775a466c556c456a30547636666e375564684f73335932637a314651724b655165494649515850533639666245494b6d6c4765423942516a645a48794a4c76356b362f574243736265634430517847563635314f4c74566b6741636c78662b436130692b6949524c6b6f566b33734f757045364c684f4e6c464353534c5a65376139485643596673544a624649634d6a59654c49346a634b505356764636786b373932507778644c4276394d7a4f765750336f73366242396c435357484c62713963596d64764d61522b39544e7734705a56546d4264765076586e622b5270572f50506d35504d3865547049515346585a466369746f2b795532456d745846354a477355707774565359434d36494e53365477516e587862697a5679694a6373306a59626d4d6b454e31444c672f4f2b72432b5a314f6d4e4f75546f34492b4178537252507743566d4673414764375779786147363949417554642b51374e6c61584c49756332794570664f732b736755624461673345712b4e4b734750644f4b51586755432b35784c496166424152626d6644574b684d47736d4c336a4335304d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17713', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745413368326b3878444c38426565636e4347616343464370352f77694e41755942313037325344487036304459364b4678734536725564734f435278417a42343277637750337645536332446b4c593356643458726f776b6e4364722f2f66727331756b774a33326a5949662f68315447636a4a7279457451696178744733702b6e633241614365537376386c39424f79735a65795479307658517533676170426c52346564544f30735145665336666b6867466e5273384e6b71734452344c68316f51706579566e634e4336726c3867346d71667a556259464e42687075625a63513562357a79727269375a4e4e7a496a4f4534752b66727031664131427952327951674e4a4b797a516d6655477578684c656153396759364446536930564f5535486c4a326e2b627a524a77526746776252486b47655433392f4f454b37737037514530625a506d61754970324f5a6e55345235482f6c365375302f337a6150724936376a65486364694c4f754a68315835466b675045594d724f774b367370423044697a354c477358343346736d4b52507a33337554675749353737592f6f787a71414d6e2b6872735a706579425439345247386c7a6f3143744164545976477031432b595274435459746c4b386151493566756b5174444873337979574d6978435a585056346b7263363657384456616333414f37685549536a626c31706e7571435a6637693667653032547769564f342f627230583469704e75447a766c455463507a5679416866626832533158574e7750712f624c6573683551695948366c48384d50654534684d764e426671443470643244446f694a4a346c5934574e766469726f394252564b306765395a706d7346746c4856656447614c7774306f504e49625645784635773169524e566459645564696d31577352373954737437733739427358724755434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17714', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454170564451644a536848343941736e472f542f727a377a785a347630643539323842715379342b7749595478367430506276486f4f554e534a36656f335a67657a776a3677643769573162636d6a6458386b62695a374f7a375836462b5a7a3145436d49784a4e6e36654d57666867553432495041574133723859644c585867702f306542723266584a552b6c667342746b3157526a565a705443336f352f7453533139594772436559467735573334757963304d337169733461487a6a6b73705a6e34636f6748697478737446434e7878484752792b4f67415a72304562322f345261504b6a52362b4266674e5533355645365a694231746343514165453841583255706452587956514a4f4c333265506c7442616f48513567716d774e464c33462b46473371754d4135543376595744326c2b762f344e6f706e34353348782f666e57367461674e7071736477393777667877504e44664f61416657344f6d615850343852655844625a46445a4344613862676769366452503764684e6d357457694769596c4a4632454d6d573853433250546662732b7331714172395954637955615933547647727146326b70726d33756677636334334d4367706b64706742502b4f426932465a6342704954535a48796b316b5a54633257425747503765584836684775784e6b6937786151344b71616f30387a42516133744c766e3954612b557758662f7a344b64785339674164657155576c4b6c52505778534c45314e4b5379624e5a33504539584c6432684c584657642b6c744f76544d45566f345169504c77414c654a396c6a785337727065304d307972485a6f39735479313472545539624b595a67694b6453424673744a316b31375059524c31426e727a437a6d636154543765663169667234794e332f693755337a574751415849716269494a734874526d663763434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17715', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541736f336b7058554a5066414e4c6b68435a417952525273494a5045586a364c4e44684a58396a4a6a374f67662f74724e61683953616b614d796977514570773532736536796e65343459487748713454462b51524b6d552f616d4369476973543050585766456b4852672b3433396e7773386870735541562f427a686735792b686e6b3459536371304b525650484a4457727037534f6a674948437432385043634643502f46447554694734447a532f59387832726f775734697178714e4c70715871687a5953332f496e366948756a39546f462f353567657041302f624976305570784b3432746b6e4a73396768623749494268467051776551394136376366457a7a726654755a3234385a667831743467393874744a4f57745a7666367a37763973326a4b64664b6c2b66556f44364276785073424a5768454d41544d767974366d575341735675415148454d4331522b583130356e2f6272733049656c48466355592b6d79654b3673504c684236384e352b64534845646c6f69766c614b462f6478392f435075566c4632624a5136496e672b44757568466f4448514353624d697a422b7359584a794d444363514d344a324c2b554a734e36494146356a36417444382b7455454670535475506a574e4631516466684a773561307359497765527175383839572b4b384a384573706c63786648416d44734f6c494251316d6e47494b4b4b563565523845417a6a744872654a30534b72782f58453479496e51516e613957486d496b45734135656a346e69374352437654336a2f6e64707057503437376c527658782b52762f615830354c6439333236704278517a36715a7a444946366576474665463963566644495a3276746a437335477242446b6a3758442b7852616b636a75306a68746f4a4f37525055464b53762f48796c66584c6a796978322b4d5573434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17716', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541754a413677697a466b686b434c332b372b72356e47534f374359762b2b714f333944324d51313063703844624f566856782b4e734d5673702f6a6a626a43564436576d4572714161767447374f76644f324173736a534a4d3079663350656e46336f726230385968316455794a62586d447465675a496c38452b2b47726172444f4c464a59474b5a79504a5156376b456f5441445975736d7a34325877384b74356865594870317a3668584572786b6a5a30462b466b306b6c543946714735686c386b4951336e7a765375353477776655494e654e476e616c6f2f4644764438644d485a4b4d73765659504764564741446d4b624b4f6f73797449354b69436a2f386f5432705855754977315545467973586263586e7a7146534f617546327243434a4b6f6a45756c4a546d76347a67526d4a526153543252595746494e42324756715154415739507552416d632b364654686a677038672b394c2f7a7a38704558544975425a3953666f3531344f2f756e4532467779722b6175316867787255442f476942593570466b4572326b69496c4730492b395345434f503468735a76704e494c426652514c6d784b7175422f2b5065504f787072556346516f6c4a6d4b4b4e62316a734553776c4e65596431536d5134692f742b486567554a684630466a6b4c4b70594a65774736394e667979652f4754484559517a4d5867665736696b57677a564b7538427276787055344f41764933622b645451647a655164566a46556654766f506c6e7338516f3564685a5678522f36335638316c4d6c63756937324631757477502b643452794e43717967395872464d48787056416d53616d79734d3876562b655364316e62326c344a366e477a6431616f397731743071622f6745696f546e61764236474d4359664453677773452b746970546a416b6a66644f4e576543666573434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17717', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454174465851734b4e62506642625134515434784e6835383966656d35644e6543354c78386752477a734a4d414141646e4c7a66314c4b49654330754d776d46434744396772715938494669774b4a44674f447976525149565a364b303742496d6b4c6b486771484b39543961584b74376b6462796248446c6b754f67686e6445637076394c48332b74367a5277666d4158587a4d6d6341774f53704e4b4476695a397741474571395a346a59496b4b3076547530327941616f305371673966472b5a6a655736657451356f517357536f3055574c77444f5532577339656633555036387a5363657a676572692b6b7631697752645271667370746f644762614b37504b6c34736b5179424154555138766f6a74575067446a66506a4e755062416848342f31374f4656533542334663737977576d54485743436279564e715457717055502b42324b2b6b6f75596630334a617447546b523762744e73734c4c514370326b4b6a68703238676e6f4d75497077495a70316b634d49522f394b696f5942544e5146583875754e467a395a5075706a4c4b584474462f3134643852654d556955576f704232594255626d3450737241305356325934766b6d346833315757706a612b437657797058774e6966366a43754f36786130424b715768374e6c6d3132485262735238745a4d6b714c3658682b6968467a4c30433744352f736e6178324973386e722b53456c77724b7141304257466946707576634272442b59366959674c695548426e713646386375547742715838712f73566572754556724276677867564648547851446932692f37597659506c4264763835367a576f6f595032637a366f416a4756504b414944506e486a3152466e6c486650517362796a6c50685734796b546775326e6d6d5a4e796c6a44616c736763386a39446c6c71474b356947527144646b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17718', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c452b6a4343416e557373443257785a596e4d6671786e62446d4b306d61627263346e47664a323376424246574d567132646a4f46756a323759726552306764687231654d374b6d4e4141594358587670586f63394f4e434d78455156746b422f4445565379637872692b5352464c77744a4d2f34554873724c6d39437144324f674c71382b4970564e54374b64564c373265776a5150414250794f4e35495a7a764956444f7759694375796658572f6c49303942636365796f6f546a447442415a4c6e766374576775395250556f7a61784a3572503336455338357968435a4e4f374f4f64575272394270776b50624c625679413433794548393275364c41797651676157674276336a3242546946676f467672506b7058305063357762466b72393458683039507539585134484f654842643375497855545a754234442b6b61696b49376c6c384b6944553775667363477173334756775661587a49583370745a6371633370712f76315642374b653368504e6a5a4e42545170513261614b50585777583759454b61694537537878637038392f6a365a634643344c447141747966416f6c4a62754a65417731744f6c5377356832366b44686d5571654b617a31626a2b4236574d4f6a67772b4d4364384677364c744e704a33346a39426b6c6b483964507850772b6b7063366b714258626e636f78794e526c6435596c2f78694447316d4b376741724363792f576358782b416f544a6f52434a574c6567617a756753686c2b67554e535537696a39697456514c564c44723444657a6c3148726b4b684271364d7878625564395741482b5a6c317564466f4c6d58685956485a512f633354472f6454366f4a4c574c432f506f78536258562f4a364a472f525a65796a5438316f6d6b436a4c36764a4b6a35715a38644d73705274663165305565716f4366735973434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17719', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541764f5835543544436271565277377a67697934534a415365736e7963495a5032544b43384b327755654e767367575069794a44365175394c74315269512b354567547a7267415457685374667a6a564e48737a554b682b6d65636b6f6c4557493956572b494e7835514846794d3274616c4f467275793565503141786b794f754e6b305a795243686e464870755945544c764e5472492f7372625551585037744959632b54624f7a6f7845474c62566d327051305a50556e5a784933503456644b4e43657a67335146644d614a316b4d673671476a46363031653331475a6f73434c6e6f6334714f695a786a70364b48632f37687862334c506f554439514134434f467668776c6168456e5852656936413671387959316c347151654a58366f4359546548334a5344324e587959732b584a697167675061466c51376a593870445443612b32583335744f4155785a58457a39694156592f7265364e556e4a584e5765526a374757457579745556493970596b4a4a41564759616155337a43436e6578474e6a317465754b74436458735a744e5447496132682f57456470776d4c76566b472b38563966532b484b2b4e424266597a4a63756665414352686161337176426a38316b52476f515a704747545338334a6e354351326146466c496979357446314a695057354f4f4d6343624369785a4853592f59334a75665952536b7237396a766a542f6d736670626e6a626a4f2f376174704e31316a555662734e306b6831437434506f3779414e493938376359335a7045534d5035736e4b5752305569556b347557346b716947634b4b73795777536d6b7550714e596931377636577362355a61394d584c6c4767396449356c61386d68654337584b337977612b304d617533442f2b516758554d5174616d367752783941484239426b43746f327367584d7047356f55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17720', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416937376b4c61445a72614a6e6579374261782b636b664b64384b68336a7072394a7261386d706c7a7a4a343275336c616872634b537a4946726e6655325a6b667147757a442b3373412f2b5151786f62636874534f33714c4a49784d566b5a384644693747747861354d6c656d5661526f4b4f70794c68746261794c616b30374c537567775174497153494d49784a74786c6577486476677433446f78795578434442682b426356324e5269496956526e357248362f5a4b486f6b33354a6b733643783377653437534f3279596b39717761394c63352b4e666d4436426e6f33727745565650515a49442f5254336d3375494168564d5949472b45306e4b3742586f30536d706f4f636b6e72387437465447636866772b6b56634849705677476b4745495136612b384d4f396e665148322b43636a4170784a44366a684b784d345874427a346a6e37436367484d6933726b685737424834774a3377682f6a417763324d31525645304c666b2f364a554b5a457233724d764673304b374379455673623632507444514c5a31533348582f5a6f5779454a4c38534a672b525a3334315842377850556a52716c514e6b75647638695a765564494763586e35534269615a30706e5973396a3150554665662f4244315531516b615874504b3269597734516f3453384d6e2b644b627870756c4e417a414c72774e624d4e33576178636e785234636c6464723146704c674b533875705a34794e30396c48576444675965387237594e6b7872614a4d50645a383452304a3743434830665a4e676e5444356f65766d764d37534132434b524b2f6e487a3472496b69693650454771576d72495445525453486258476c7041366a36454450566a473036614d71474238577a7137743034466e745a6e2b3346345a6a4374794c73673165555557784b3442686e4e4e394b6b555055434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17721', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454168673649436f7667536d43734a306c3352332f35544f786f7a4c48744d686556417839684669757677487249596a686a5236334f4a652f325262436e35725749484359367673766b69734b4c3357474a543170796456534b324838356a315874412f796839792f7a2f2b59616a2b45646633746a55786a706858526d535762426344626655494d492f705739555578425341495a4e62346d52723941396f57393478486a736d614232496d564d31786d48664646322f6e674d71665269716374536a777942507855553755426870446250463772444b4362726d6546673678596c42526c756748696f48684b74784b4f476d2f6a743434682f4e4c37467a7a3731434249472b6a69446e384f33615736634b6e51524a373859772b3155574774596c4a334169374a62357a5833714475786149313864322f6c6532794f4f715476486444534f44425051573135617a6c30695642684f7570464c39364d2f36336573707868346f5347332b4165516c3464304a363247784c625854546635667333426a59472b32633839746858796f427062534246415632494c5941326d6f354e6d7a476852485761686e7a6b48656f35446e7a6277733871585a6b4e4c4e424d6463456755616e6154636c6e742b624a6a6468304e756f666b4a577564753275424f68575869414e7a56675a6161636241743343492f59792b326b3862766a514e4379673367784e5137364c4f454a4a6f44796346645765594e6c6e59467169736976724a496e6f363947596434613979665745656d6155674f4d76687a377352684e516f2f456c69444764736e436e393943474c6f307354717968324c4961585a6344617370736c64744f30777544753646473847475778354c2b552f6d4f6b504a6a454e46584e6e466b6a32674d4a636f46747a6d5342416e53356a793338556c6d454e57364a38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17722', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541726a615663414c386b6f2f4f4d58482f5a2f37657644486e38456b6234487a72372f2f6d43722b444633614d6171585975696369524d637338746f75753462576b65777a2b4c5461476d3050476b367449634a6474416f33426358644d7a4763726f72674864766732566171386f63544b2f4b794d62526c61596772666f7041516c424e6a4f6e72326f6e66645163764f4f414b4f584f4169366843336a434e7453765a38505a575531436b324f73614e3567567a4d362f6937585448456758514a6d53704230654b567433747679783144557a75674d4e6e6a57307253546c427462462f7176355565446a6d754e2b51373333715a6b59684d59515847366d5266306e75557039666170307742727072346772485a4e68426b316532624843316d75706a76724f6571355a634b612f6a3235703971365147776f3773786e5a6e47315071376555522f6134756953464e58614c74644150556248734a4a77454273424e4f516d434a31334141664141454b2f523456657034457473666e36704e434432554f5749594558626e302f4d32707965725a563632384d77746843513744426a63773264776b657270515379796b72686a384e42445a54353847346f343834314a75686c305058543271327441436a767245646a77423175633977344e383142344569657843346165654a654565497566747a4236454d5544327962356d68556d75614e4d4e6536445672635037705a516a64595037555a52632b48484e464e4c52426d33526e44466f4d6838386132434f4655675a37576c2b376a43577174616677794d674e377a4e326a5458676e4d414e3058772b2b6e354b5833476f4543704e4f68513356337a30342b694977746869394f6b5a597451316f59624d49305474657a63516e655a774130727957435955356d6644564b774d6d484273506c76584c4a3473434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17723', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454172386b367232634633466f6c2b763242777548494b5657773955676e696145344b4d2f30487a326f53784e6870794243304e436d58346b797555613361794a6a306e794e736a337168305a4b6e65437170716e6d38356859696e2f62785a4963656e4d695956497861726e667954424b5a636b756d6454654f2b5152564e774f6334512f535578635541364979733557333245557043336966376354436979434c34756464614744564d67376d2f61465561357152614739776d6637547467434f4f5763377978554a55524b38774163754962487267466539704a3968486b62386d6a7744314c516658456e716f6548554846577865336c6a657a395865716d4a53716a54624a42706d492f7442552f38677731773252696c714a5865766c7a726c75504e30313742725a68654e5242346545614159766e752b627668416e48576f566e4e5468565976516c4d444b4a386d35614e63555879715a4250516a4a6c3347677174675a717a2f496c646174617254727a4c6e575130574d76666b35667162666a4e4f4644574677455154676f35762b57534a5745436c653156336b4c2b334a4455674d7044507668774a6e723770496e4a325a446e6559654c576830594972467958655268515645452b694838624b6d2f71336f364555745349385a7136646270484269636459397a7968556351586752686a5441636c4e486e6e4237696d79744f646d654741585473504f6655666d78626a687761556447513971384d737930414f5666674144736c316573363651704b305869665735422f6f2b693973534177696f642f76564174394c2b6c674549394f422b58774b4f465948734548386d566561522f67306e6e2f5335537033734c4162564178654261422f61722b417855544735547732366e55586f575a75775949663158446c414943526155626e787045364f6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17724', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454173597a446c70423753314735423933416e4d6f336c55626c7a315a30526c544657566a42786c55366c4b58364a427a2b78676b35594d5066572f416d725852634a496d47335a382b5861566966744772484a61434954387857476b5a303771667257414b6179342b38546831726354484b676c79572b4752794b425074496e356645453848704f79687a444f2f33414337716335306e59636f38654649373567436b647a764a43524d363046416568467946387772397a6664386f482f4d374d446f75687873356b4745365a2f675468486b7a6d385a452b6344366e7147444c625a786b6f6653316549525a4b6842776f6b6136427078714b4f6753736132374c775979784d4a2b6d50543976557a4561516b61545a6c5a79514244334b7a4732547176764d62694f42363179454f6c6738625275534750623651554d55776d31723561743641354e4f4f452f324d5342325357714c33422b43634e42524471466767374d4a523458334d62344c453171305a666e2b7662565a51787a476e32327273696a564758486765572f684b5648775278565a6d786f48526d6245784146774a59386e5747316258356348752f742f32466d6f77582b7930304b6d5361446d384c62736b71414f4a5333744d416e7071756d36652f747a42524d433145555541506a7032436e6456464d594f4e6c5a435a7a415332534d51774d44566c373171794f65644a2b516831494e346550326b5a38696176633336536a46544c4139787a4535514f48385068655a43515432647152417a5a6368724833383655536d4e444a6c6c6a5469694b504c2b444544614146696156325563767854356558484a6547786b6976394677345339546241677864587254587248434d4c42545046743957506c663977614677373576744d536a2b646b7975494772465a58727a4b6d4f52674b6e323938434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17725', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541724a5749684a4f55536575767479523253314e68693365364371445a4d502b676b6167627444316b304c4d4a416842534f79576d414c39436f467139724b3941754c4e71686b2f37496b6b44774d47435137706c326430307153466f4b6856445772734c5a3549556152535a3041642f354f6341687172686272646e416a4f354937496e79612b616358676439494538717535524f395948326d4f7a4871305647436767706a497571472b684a6a426746704e6171516f425a6f6442527a425a566e4d36456846644738614131416d614a4f637778757730652f733531455633397439437a475450506d594a4c6369514e625436636247693049694c6563734d32796d4344446852652b4a524c4753765361314e4f756b7878795a48784638664553622f2f6748386a4948752f46672b436a5a754a636f62676157443873414d4556463047506b44507773736d585a686c726a6a673557514d4b796947764b454c64654b31386e743852314a4a415a7a6f722b396d627075475753504d64554e52512f715458732f796364427862504b356d727a4851327566676337564576724f5471796b694455514f47787a33686577674f5a4365467572364b7839754d467838656e774830476849794467382b74555151724e6c586b6f577574786f46377065663370376e4b375a45496c574e796b7876624863673933494f39723265334f2f4b6b667841315664354b365833535379502f6b70376b304b7868763633347062504878545675645242746b7836514a5354487561454b564f36636359486b3661617231716761366d42396477376a3170507745756146625842347a4c522f514d632b503266445067306d47384a4646514b62353775337333753867646c5a6a7a4c683647787a744e4b705278503477523059464f53632f304d6f734d2f767875324977743870326e4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17726', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f566c4c456a6d6651594254516e2b477832343156534e472b634a665a6c56705931365a4e575549635a386a582b51366f5266444834583637634e4539567a64516855376b6345486879582f79796562424b7a31322f38417843617646683833495a58616d6578386c3347414e41782b323533676671672f346a66474676665643446e4b42327046414f31704a6f6c73552f337056774976424a453054374e3748414e3936732f7a6a567658454b674768554938587944466b63534c4b684a687449756563765778386476486839443252526d58567478615553476b513047644f53745248504c2f43306d79447a4b36744a556b687774712b425943794642306c6d4d694f586d5730766b4c516f726864793165767631506c714f4b74524375664253715062594a41334f75524643443158544335616671584751642f2b62462b384d50784e4d6e3034376d393874726a545478537269587573657972366a364c6e67532b3278725555705379594571323674384155644c716e575955435363756b774c597877695a4932564f5534325638436679584834426c68447a5a616c366d76443852717a56336e47424753572f6c4b47547273626162526e4359487946384f69766e38736d75526369786a312b323153334c6c4152666a4b6348333932562f72577a6675305a7075413742634d4279394d336e7a704f2f305247396e34437a67466f6f666b303656694b776d50317a4d5a526946764b554a364e4d784132784c5737524975684f35532f6e346d34576e7a456b2b36616375535a704e652f32666551685044353868433857512f55386f7a61564c566242556878416b79567a7764723043616e71437472536a6332562b756f46655930444173667074577357332f65522f733265704637436d693538766836346e3847447a79526a52574a5335627a697849546b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17727', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d4a746f316343757267427256682f2b684431796d4a5041576c434a6f6c4f41333561706966446d356b633755634d714845474472343037436d47787747456d3337744b34374f6b337134617248782b70684c776c596e426961414e364663596864566c5a79424f6a617a3032676c2b79765a41374339503454786f6e397342656d6f496e63675a6575306c314e6d6355647a426b7063655976567662413444384f5342346b31713364513563787035332f4c74506e45786134782b737866694146496d726c2f5a7058663330776276536c57327161347a325574366d617242537259304f666b6a476153423654562f51736a73525052636b736c4852646233555546446d785a4431506c644144324c723770466a55464d3374762f42585835506c4a77464b7570626269656c4a74356a6532445953794142424969746277724946734255373277774858394f74503757344c54393264325877457959776764355a4d6b7a6439364b694e78322b46797753742b45734a51555845794630694734743156597557675750713442574c4e344a766b372b542b3035383458326a594533766b6633646d45765748564d777546544a3335735063705471626a456d584159384b447364596942674746754f385a41394d38534d7a7a4f4a30496c442f4b56394b3858774e3261706976443558615171383468387a757a6958633271395a6b387952745241616a65512f7542383241746348452f6e614c637731314b36692f4f424e6d6d6e41776c2f636b55586b6a643270316d67542b6e4a394b37452f633679334a4258445042537a69786a446e4941466165646d4e58566a4c7a6b4a4673765942394364634d703937594c49326645736c726e4876566965583575307833507864484678456f494c3536365153773554665176614e74534748467349516b4f532f4f585a5763434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17728', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416964527856704749744748425758472b42396a59736a5556364167546a4d7647573944437147512f3451753045445663464647652b2b4f516b6973524d473362504e4763594179525a5234536a38774a37776333764f384d6a4f4e716b6f70624b5955425072362b7a44565575474a772f346442372b514d6f59485a494f77772f4a5a797a4a35663378414f56776a5876647133396451484935464e2b396552584a5752596b38384637544a37594871494c73777636674c77326a3754304f2f497255717641685a3068635057506b71376b34474855554a5a6e395773424c6275784e4a65325a762b455958673875785a6e48433046457a754667676e734e48596c65544d715a387749494956732f4a77707851383667394954526f4179486d474e4738316b704c334d4e5a65426a4853744a61324c4b62715349522f57342b4876586a746367466f4d732f716e484c3839342b6b5275466957337858414169637a37726e616972446362423331326234364a4f446d49344f7448765a52596545555370344f74413665304d6434794b334a464e726e715557634c36722f6d4a4f78644b71687a676d452f365335344d4557444f57302f7438673237587263557377514d61705a78616775545376475a596279387464306b784952534565385a7a512b34616d64476f3632666864737a744c61587854627636563252564e6c547753766e6c3771776131326b514770384a50797a4c5a30377a7775496249617248493737776e33767536366e2f6a3669796969526642462f534868514e6658516958736158557a516f494849636f4b3648682f79326c306f2f562f3479347a364d37633049385675496e6f42785a77537566725747344a5262636d4d7367726d6750754d38375462685365724a654567767666694a6c676d50454b3065536b796972596945793262655755434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17729', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417671545a625a663434425264524c374a714242347639694e6e6c73646b414270626e6e575854416149686264536437354161632f34374d2b522b624c64786c5a39796f4f79563157306e69514f4d392f505454565a4f3233465653546d74376b5374737452566b595059553973416e4b6e6c33694f4776676f54726b4965596635644e434f537350686546716970784472474a37684877315367576a37784c33594e30726a376270376a4e426c2b61677479756a794a3837764c4d48633275456f6271637251666568304b595138554a476e32416741434d42477735324c7755306f37324a41657255343368643755484f6d38316a4a74332b44575a456f68757233764933384f6e426e3775482b7a2f7972583378316f6e436d6b714a546447744471664f48584f6f55424571414343466a756b664c316d584e4e7a4b70415952437a5742496a54476879423438436831452f7874504b33626743467664366a32514f622b35694569526f476f3072566679555a6f65332b5341536d4d45645267514d36565244414b7873354b574878354e36337655563867637447415976317735546e346a657161556c4332683648484a305567684b585463756864724d73436f456942665678444e6832673330333052486c4f504e414134585a5037337a33744970357a742f463752554b646d4d302f4c364d7a354e443149477a665a46595969362b343947623849497a4f5364644931716b6b2f5373593849775a584f74634870493668756d71763868304d7075377571537971547639546b65375755694f43784a4b7a756159416e3371474539645536686b495357374367434c6449376a794532304f7950307070534f4b716a505633325a4b34794c5736796f4d5270616f6c384a5031467a7732764152754d4d6c4b39584754675172637a5a4732377449776b6f5375654b73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17730', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454134557365783568345a41703944465241454448373472384d506d54302f6e2b777a75714857302f38763358433445756f704c50594939597243304b45346a5674486d47344d467a6c546e63376d73594a6e7161746b454b47557262663941367645345864485731566e48694f583331555744514e69492f765077457865306d565a6c4450452b784d7875497730676f6f706557694e427032365175634a6f6f5469533064454c4f582b52496a3841566f7a38664a5561342b355365534636544774396d5949715a4642582b723065744a44556770334a2b44616e7357653262654271797a4d3465554348577a31415471644758744a576e5851384c72367262714a73445a355264666c737662684e5950716430617642305a70663346753542656f67767a4c6a4c4334483873747130685a66363048534b466e4b4b5577397553493679624c3645424d727936664531626a646c69316b726533724154644156586548707376397873667631704f546469414d59412b656a714d61722f49466652626d7447524b4e5367722f756b49513832637961557462564841564c2f35652b675755476b696b306c726736657463492b4e4a66693961362f6a544c494930764a32496b6e496a6d733264486962536a4f5076594b76615a6c48705a716b375a64306e467a52327a517a2b765959666454796a347a5341582f6a7276336b44584230572f4836717a6d6a35436e7a6f2f546f4448306b6f5a7059533738446c554f43754e587974392f706f6241684569476945347269586f6c3877736574495a634535384b4d5667413230512b432b6b71463939566a64472b38724f2f55374c434653444d2b494a7035446751746678513276444f515a63662f64485978674f6d416246464d4e4e78724247674d4c367852344c334c30726c564d6735583633347242355654376346714d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17731', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454173415969557537546f37564b3336736e684938434a4a6a79567a7a5a624643447a72797a434f326769536158466632417738552f506a6850382b4a39433547493153312f69354231786f4f6f714451724a4c55364d4c4c7233632b466941414d314f796f475170747a31556e6878484e30585a4273445a4b4f6f524d786c3764357744534872544d33726a534d6a6c4468774f695871543158445575636642564b6b735a4a75764e744b4b484e33417457796b6d584c374d5a46454a4f593336342b4568314569517539537038376a64313173524858347665302f714842376736424d6e59427677613067394d79754e5370732f63624139626f5273696b6b4763465170623243694d3879597637794e6e70655a45644c7148384357714e366d63557a72496b716e6e31564b47523274596b734554517632304637422b4679795577386b504a5736637447414f6e31396a6336484a42664a4555653932756e596f414e3142676f72665868636c675442794a6a3557565430546568505341636b337279664a535a3873396d746d4c47554863365574794d49684555434541392b48586c7a714e546b6963312b6d574c646e5645756852664c2f517758676470757754366b33505046396543655a2b4c55702f6d587a4165554236384552616a79727457355258565039475249786d4e307131782b62414441617233616933525752515365374e4566505a50357363584b3642594c4567536359466d4f36313436443553586233304b4d4755367a443434384f522f3533534f435a70334c2b64574d5538363274686e6264725342553365393042376c464a544b5048614d655a773849456e71386a356268592b654a6852412f56353846704730346f476b506d6949533741323265666e6533364e7757736b596b3147436f30724e4c6a4c6f4b796f574a5870703673476555434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17732', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454177766f4e736739713367637032566d587a4d4573686b6b3751374b6d636d4577573357514f4e514b2f6234574d554e6369615173757a3178434e5369665272776c4470716a37302f542f764d6e54634a774d46764a434831586163645245543767652f6e4b663066584a77784c32793644382f5a7276592f7a762b4f344b664951477a586c6b3857644b356f79516d6d54304b544d714f4c747168414974583231706f4c7a787252566d61504e6a6c64524374705742786271416b5154654973717537366e714838696d6a6b2f6753666f50704536385566514e4873367679717a68684944316b65446a5751356176445153565463474130524b78796f70737755794531477674543378364f523778416e4c715431374c5468553951474a6170493039416c552f734f4e6a47457a56327369345a5577452b384a324170366e4247536b78586e6b624e495a73634d575a4958762f6254386b6c44546b716145542b465677376d752f4378556d63486a2f47795854664f5351323275715063712b4377442b794336525a58396c58335a4836784b454d3536343038326c5679306946506e31637a656d6f74436547646a4d34417a7556396c765769414658344972662b6d4236434d683844797768684370734931445845665451346d326d7451397461534d634c75325a5236386a697a79696d6c4b38676d6854317037553831467538736c52304a523743684a5a5951367a3065724c7354617a3250514c466143396e77417a75657846774c5038556d4459416e3231534730374a322b7650314e434632376651344a32412f44784f385632336b4e62364e79693839624233346458566d344a4f41507a7752452b62705652397942774956423433464970506f6131326b3066666b4e6231784131423342357271444a6346703473614f386a736433746b53656d6b76744163434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17733', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541757941696c6f32515a665771382f493753536548377a7138505041354c614a4d56465a705871546d616148784c6f41696247655654345a4c44767337656372587934686a375235487073766b6f3158413748715355394a6b6c44434e566e4376734964585070754836794b59306d703835484b38396c37446a39686148497568616c7637372b414f487a4c4c5437534162706b7034364e465972346d79326b373875347230496630546448516a6b54496864376d3555422f6e527a67716c4d527675445a5557646e5942536c39597144304c6b6a766c39487179364b5837315835727479414b684f693558592f47507a3169674e4e783241376a47686f533237486a4f7a6f744e68786a4a62335937627a562b6e7a6770765872797263544a34592b70376639327a726d343931714154722f35664d2b7a5739615a482b612b74714b685672714243414f3964507359567061713844763468313749777663576b44514b4261552f527a6e6b3264377a524a525436564f4e6454374c4e503363717956692f4e6b53633245563564334b4b3857586e43766d70384a34436c43332f50374e565054527944474e744c3944465330664d62433336576b2b2b744b56572f43317550416e6f796c7834767435394d764130384835685831556b5462347031614c78536a565930596e56686d71624d415835473271516c55595233326939436a41636478746f7535596456376c7234663164366562582b5935376e416c2b756f3368593256385532776d686376694b7a3537514e72493378304947546d6b566e54546c306567576a316a7a5454664d4b2f366a7a6a6a734146786552627a7371624c7658366c696d5353646f495473634d46414d2f4e4d386d2f713168694a4d7144376579637a4f4c7a387547376235494b6a53666661376e59486b436b5a43542b4a6b7547364645434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17734', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454177617948415279573041736b6755474f5156723171426f4b66766e76306c784f564d776d7a42646c345764367371566e55704d6a5576315231444656326d544e4b35495079755847726635454b50515a3466514970516c787467575372465547476265454e78543057496b56647465347758445650307a346c784b6a4c57464a54625352735a69682b7541646b6e4c5158533169787261436c3645376d52424375596b336b2b7a497530716657552f4d7a716e6a732b677162595563706c366544526679455648687661592b586c41384b636e2b68395071766157724f456f3551652b595835376e6941786f374b354e45306570593453493563384f3854394b324f67346951597a495734584669326d3958566b7677576a64367534775532363470743366666d634f4d723945346c77714c6c5562705244675335446b2f6a61366b495a4961556e624f7375575476514762344b6d71573579496e4f5a394d364477375952644b6457516e755a576f316c47583342657761774b4a6254394d4c4e315266696d7243304f6473464a662b733156444231446556584f5959796e6b70646b3168636276583972553053396c57544264686171444447354e38636b54356a6d3439746e426e46336b4f4c336671324d44565234647637766d754e514a657977474f312b68583268546c4c67684567704f6b6537742f566b65374b2b6f66454148586b6e66612f7363596f41574e694168346c78794d67764a48587a696f5444546d6d35366464702b342b3171624a51662f352f504179534e5363342b50734e4265676a71696c74753772316e73795059496d41572f53476935492f672f3068594731754a616b4f395376524571316f6f50582b69517779464a3476555454666e6e32637348574f345062654c4d7766656d4a686877395944387863777943784c6e724670546545434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17735', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b5a594274346941562b754b4276524f79363576676c7a346a447639537437746e376f534e7a47587433666f517739664c786a59334a777354435064666571386e4c346543704c7a2f434d693173302b436a36656877652f454e7745755068307261716242492f7065665546514e513869574744686572786c594352494948366465596138763267364459304354426e4276527959717354627a61712b5332776a7233746577676e624175494a6e57574833316265325839757a7834767430494444484a68783038546a51356a723437436e34522f364755734c335471326f64553436486d55634e706b776175724e77724e485542553641776b62524e7a522f4e594c7a524c3378466732453666537477463363794c5365306876776b376b73336e316b4178693046487959745334513134486d734e734852506a4f4666546c6d365a5354486434746f482b7331747a6a6a4f7a6f37483468574b2f41656561676231344f70716e6949766677564942313274754b3369396a773276773055322f4a7771467234695841682b366d346d4a75786e4e427366574c664879533779344e674b6373723449573078497345795448377542504356665131446c793766644679696e6779666d684e5a44662b676a433259707846765a584b5048544a63644e4c6f4a465333532b4a4c74466567546e5931625644536d75764b37383535424a694d2f394636506351687737346f6a49625339377159444752712f33465a7441697a656c6f68486b6c2f326d3669514b596e643549577968686e3572697173424b4f4141766350586343547950657939762f616c4962504355635373464233376e5431363741433072377241707a4d445351504136344f346a6a734f34796330684c7177616b4b5168443337427371775934576931495138306e2f4848752f7248436b4d754d474163434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17736', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454167725571565557516e33373879774937784f7757754f666b48752b6f6d5861594a6d462f6552563157496565636753463664774f53424576444d324a5971466d656a4653314e2f6c44756e6a3559757a7069577456424232316f4a6c554136424a6f54434830537a485039497055765257766a794c576f437839627758687067686b71364d757858744e74704663496a75786c524c48575566646b6868613579634c4a373774783943734b5754615572562b3933747357366656706e55476439364f6b422f3167324a574a32617655355067707256664e2f57756649524a316965647759304673665a776c467a354535334438466e2b632f525770466b345a304165455968413044584b43514f7455636b7a39674973735337544e666c31383664643839354d736b2f6850535573526466444554333248644f4d775a59626e56532f5165514a784f7941346c44593577317650302f52376e35632f714f4866377242714d7436542f376f446550386c70506839794a745836664e706f6d66574d416a5a475368334868634f4657492b5947656a6d455857437a7867776946684b526d495046374d4f6e472f38506168446166653734723456477077793659377066385838354a6764655a384a36716e2f764f63422f68334149357371726b2f6f516f2f445a313135324251666b73544e6f6a6b6b57346c774d3333367a4954436737467177417037694f6730594336724d6c714c4b68393971705642437a6e754c77306c7766364f4e585666463076724d584854446443707249447636526f47795373664f32794b384b6a4153383162764d583466695a5a476e59795a33704548764f3751464f61394e45316a754c6878365135773163577944574b554f4674324b7734374f55482b586b43532b58575a7732744f464d4248736e6b355a5850344b6b4f372f714472556b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17737', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745413157716178474357682f7a6e66704d6737546d4934556a457869343650364454555731306b6d46464b6a6a7744576c77796d42632b62396c32526c322f6738454d444a745656505a32382b32554258566b586e326664436e686d6d69435671786d496f56666d4f4d6b584745567832483767786b4655432b4c6664652f4176483973434d626479776b67777151464e6e63302f345761515a69677765653330537a6639746c72667137386a634a5648746b4b536b7155526e614368564c547a576f356e58427265452b6e6c42324947374c4157526f51785958326c494b584d4a726762435a49474b39454f31762b5233786845303962584c6a79753174676a4553674e3871436b345864414742624d4537336f59462b4c5a663375327864675278376734514c47516c434b2f6f4f6e3743544268366a6a30617733634d55724f5566397843324c495a71616d6e50576e68396b775a69736d5857696757564149476762684f31385a39746f344756462f456c384c75514336742b6b66736b744d704132354469535a67644f50316b455262324a5041596a314f307972557569473359794867307a4c61574c6e395563434973634a4631386b577736544437364f68644e363330594d6b4f596b7a2b476e66476731746458784e7676786d387568376572546a494271314830746d674d716375753462666754703461327633754e4b65685978455a526561733156563959317539677765615570534638784e47584c6a566c694a7068653545366e79715853397a6477462b53777665356f75733741764f655a346c732f7370674b53724336756169684e366c47644f4a4d6b677341664b52594b7168663734797a4572586c4c6245336d67452f5746663867556f76566d5371574873566d5959626d61666e45496f584d472f384e61647a664c474655394c424a6e32764330434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17738', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541746b507a38476c774a45735a554f4258775a37542f4252505753686b31556869677971342f7668427a2b437437336e54644b4b4b383274584e613369494176546765324d6f74385946416a6d6673305378425842584a6b75636c7a3546313543712f78464337657378384665535149664b794c346632565674716c2b425543477434796449684c754c7073692b32714371555630596577414c6652447537586659484d312f6a44432b326f325832486658734e797a784f6e6744386c667a6c397a77787675393368656858466a4a6d5365474177566f5272342b5a564d3379514a3532374c5355486e6d79596f504f5937534f3852344e66617379346c697a464c586834434c30384d6b344a4333584755647a315676654f7073594f6667696d2f394e305139596f73786e4d616c4d61354b6d2b7a64452b6e485454724b394c394e347061526a4439345a4b565863584f4c3035524a767632684d5a782f415a724e645076355655567a2f774b42624668487969672f7546396447476c65316772667845303942464264516f6239784141716b65324858692b696630536e3143324172756432783274787574377a595379373139445778516d4554424b566b775973646f664a667556306173764579416b7154694871334137663031353756685157756a332b7a4f3132657a41666f6446582b373265704575734d7931755351787a462b6c6c424c322b47525066514a75494d49306548426d4c766559654757584d417838787478554548654741767446324249732b69754f4e2f2f4e6c4a6c456a78617476764273364767637a53552f4f4e6877795859644d493564583778366d63716867784b494a6d752f772b4f447433446d79415372677976714a4936657558676f58786c4c504f33394e384743746d6c585069374f4e6e496137667139394b6f53653333565a30434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17739', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417053745966682f724373627343372f704e4e7942655750304b736567334a72396a5641574c5362542b583133596c646938632b456d7032564349634e786c56355a69632f3233584f7a52307233467548514b78444341732b452f7a3841367156452f366e654b627a49714b37666b3868715a342f715a66302f4d4974584e4b72326971534d51554950577a30416a756e78764f49727643334e4248324172504539493656766b6476674d67537941443141546d676b41624544786b4443737a426f747a6e31344a6c5571324d356f5648562b395a326478657a4161714779767768536946347937326d6d4b6d6e532f6b7a5648472f5436795439577137557452796836796853366159794a2f6c68554c4762475041324a727648536d695075316274454375594a776f396175355149307a46726e6e47775a316f6f347766763367654857504f536f7a71725a394353666e4251586552722f507145306c4174717138694331794d663652347172614352546a6b3430464543487978516a356d42313155336c706931616271575751625a425458714830414e4e35496e4978494f776b6b536d664e372f343059355654534d3039584a76695073443358794750514e2f3656744a48454a693175633757545031764a6b4f47464b3675484f546d515a4a786435686c3353785368343973716f786b4561534535724762727044664d7a5846662f366749576a3972533643724864524271303559556c633067584f5a327432364d653430695a6c6c7a48504f2b6b72743234534a4b73785a6534393832754137654e4974696d6875654c6b384e65684b676b374b70533563626c646851744c4d743832306a6e734431626b7952795569324262732f77464d6c4269782b5045454274374472712f51396932464d75434439546b413146676c3846326552763970786a4b43733463434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17740', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417750624f4252343855576a567463692b41505154437a3533514e69305950653151745149686670747038553861653459745966765176487a4a76647365586832325870385a725635786262645a652f53775a7346384b68676b39347a446c6b43302f6f6a36386e4267627274344f45644d42426b64416a71366f667768702f316967446563634666434b4e41625032672b417247395142474a3975364e6c793639523257575a5a4b6156344248373642505654392f52447a432f504a5963395567664343434d634f592f34695844762b2f6c63377a3250486e5368475075484c43724e7131614759734972336e72635133304e7a61764438326a7256574a626f4f556a656b7a4651536e7a4f642b514d2b676e667379773472364968425962464531386570507a726a754347372b617730527379364774625339775a336d7042425a7a586c3579774a6c79396c7242753676466f5a545561317252736b6a687369794956545154516d32744c486830632b6b662b456b6b47556d614a2b4233314f375558476f36576e5877564751426b4174717833486b6b666a656e41366d466865447745624d563451576f4d61445866712b6c463866416f723144565a59344f615a674679614a364c794b6d626956537a6f6e316e5a7a6d4853682f43656d6c32314a766e666a705a2f512b5837545a7044744a3964544331744e655a6e65454a3239677457774a766d333675785a33724e39794f59557378744a77346d492f6f717651655155516c496879567a2f516c31596376504a63724952584b62346569764e6152314d65666835564243434c6835566a52696674316b3532685a72356b496d3470372b6873755248385038424a37536d42433476456a322b5832386557627738662f5a367562355a455557566550396f38427079664a646d7a64704c393835664e7471657a73434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17741', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541684c486a6162544c75347143464751416b3367504a4a5141723255416f476f79484f636d6649616a59557873676f716b56754e4c45386e326c42732f73346b6e394e48616e6c4a416642446d3243436f374f44425a457845373843696d4945756a61354b5044735546453236794a6e3572657867767233384b65744d5372454149667543523768556b46696a576762483648613175516b6935353164456975504d4349644e664a6e6465574854454b633270457846597965505644665349652b416d6d364f476644666b584d346f76386b6f652f665a78356957336c463979717548384d4b514b7a676c366d494152567479476b2f734d4e45476e704631522b4e6b68656e435a71422f622f3571534c513455357749564a78627652326b487551444e463234476e6e52596e524c684a356e34615970785350444c515a795672345674614e70435464367833704e2b62774c76453059592b4c686b7a516764355963674d592b67306a73557255736f736455624c715279374a52427161392b455071794c6f676c7478744f4c6d58526451363274307578546f574841396a2f4a55474551524457477159594e4a5554395a6635623851593149736f456f6772446f504c365974366f6c49586d536b4937446d69614256576768545a7a7131485862337663555365444947376d71496a4150716b3248686b7470465279652b326469463669796a614b436b33427a4666466b642b636b51643975642b717733632f416c51364334495155316368476e692f2b3266784136497568684c3736594975685065697458642b6b6879504a5a56565056374267724e384f6c72754b49467a415a4e675470336962416865334c4c466574777146344b432f4f4e5a774145486149514d397145617441373074346a55585a6357733734537a514f5a6b2b43366a4d674e34593774486b38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17742', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454171636f6a72413264325862477675547277713248694d3458454374526e5259784c70616e2f5a4e646f45694c383371356c2b6645775339707778797577594c6132346c30675967364432634a782f4a62674b5a6e374467453275355a462b555543726442342b324347472f4f6d5549503643335a744241306a684658483668634667622b6d6f526c65504363763135574d497471704d3461784f542f6b44384d4a7575705772385950622b354536646838452b727a6d71426341634a78537479693178396b464857416d44526a6c574d37417048554f567a53434f49794f4a724d5439507679463070616e415a3150437234326176734b542f5648385064467a4a5475626c664b41574d333952616a4c4342706e386556717279444d5935544f506439366b776f52373637475a7a38527470515259574c692f2f306338493142514c793368686a6a7949655854614b46664e31485466614a3753786c794a5455494d6f5357376c652b73504d6935774a47654a7259425246766170634c65464770714432525538763747693264736c79704845773955596e776578707144587231774a37467749353971495367375061513762696837526f71676e46434d7a4c51316b4e705a41656b5347475736742f48432f652f6836374146465158466c4c6770767a6a426e4d426b4555717255464653736659496d39527a36387934486f4345656465486a75395537576e4c667044775a41387343437130537444762b79656a50714d2b54494c506e47454e5873543839512b6c4974415654455936416a42656d38564d70596c50572f374d6a74434f65557a3047682b726862574d596c615834595761563665467530563174574b4e4e412b706a6c2b50475a723669533255314964756a444737716f6d59545038776659415342396f6d556b326c2f33754436423075794f63446b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17743', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417578752b6a4f76426a697a486c59334c4250393446476c4872412b527a57585437374a442b636a5a516264384136706472784b65614d5655306e49373751336234366f426c532f487334795144737a3536426d59555865646756574f337a6c6a513364657159746a6c345a73624550452b57664870752b384f6155782f416e696b524b524f757543676878626f7a6e4c4c5862654c733934494d77655659785336714c6f346f7131636e74425168773431427667675949445364386844575153507a494e5a2b707051613664564c4e324850464e367046326a6267652b59414557374c77556434555737466d787848724b546c343754716f593472504742362b64313848553072662f64482f413171594c3249424c34687564332f6c6a702b4d3466315a3759333134696d78527164453532354761326255582f596e376475696f6f565557416f4d4d46654764792f5a706e6a44685a41505379746d616f635958316878546f484a6e64736830576c67414a4872786b6b69594839476f5178357a43743731544c527a58536d7973424f6d314f382f634f335a52556a696c474568665378466873656d4830614f763630525a6f744c76544169323168756972473362455a4b454d574c6f345676316b547479583055656d6e436c546f6a466165794844614b36396e57396632566769593838506f696c76347458375a326642346f4752334b685162454f674b6c667368473267787a786a724d67654c42314f547467792f794444416a63417035656e48342b644a2f5a44594270564c774465744e6d50324d56415546573237584a474f4b4d4d39625370422f6e434a333574556134553978444c4b48563132636b73726368476d477673556546456864334f704d655262393073345530774d4b532b4b65564133755a67306b7345677a51417971746b5548336c71794f6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17744', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541674663744363627547724c4a50706251357961717673527162524d45486734546f465573525455624970664f2f52684f4153534f5730592b6b3266326e32326556315373735145704158776d4e386c39544d7a364376666c394c3269453055716f61706a564270496c7332746b4f397072456c6c344a68653046742f4138477158786d50716b3930325378526a664c435541524373487050775172334b777675625977573164324532733771434f3071625778516f6a6c416c7033527453555578654235576e4b724843464655744c74372f62566e664d616176773873337736534271704c64766d312f3779636a6467374e53615a635a7133364657426a4b3242705435396654336d643467493953474665376f624f692f7176426b61436b78344a6e326a58444b7856436647326247485a4438626a692b6c676b7a553256344157344b536d72376471713241717a566f5542674c49386a32372b534e675365434c485343626c654d61553369484b55525658475179474d424d7733707765685730784e5a336b6e31677570314c526a7a484b39505235375a464a71443856476438527052724a344b543854506e346f57454a67657979556c3555453451537452686565443250686b4a5846305a704b756a77647874304e4853776d467a5455304d6249336d785a6766476d614833443346454f6950427042754b415448715a57773338626867436b655074696f41715248754b4c56506e36434d75476f2b457669356c574357312f394a77415a327a61372f594530362b69385a3877546558343234423737634b69704e65557769682b523969592b4f36466d31364b4f4a5a6c2b376b4d6b4b642b713735683270533562506f6253332b64784c426e4e30456d78414e374d652b504c75426b55634d52724c384d57686653454e78305470357337495736585032513855434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17745', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541787a575944752b74702b696f562b6d6163343465346378482f6538705a796655567875533645582f774232666d54356859692f58704f4759583872443443455535694771504a6e736c5679587631463876353535363544736d473865454f555449734839426e746773734e7233386552416564616d6b4e64382b4e6536396a2f6a5134484e414368765061303375794c4d34636c7358594a436873794554453270566d6c6d4c5369572f545155644958793369497a474f726a37552f4e6f37416273595935596c5656496e304c45334a6a52414368556b782b6e534e4b703679744471414c5a38784c5a324738684e52656768514b6c786277506252524f446f51356b426342735557466e6f37586952714c394f782f654e4466367765634d5a53546f7152697075377a4874562b356f4a6e6147677973454f4b636b4e774f615257384752384e6d516649346572723558624c3245493279696d5541735079445868757261726b396a5a6742683574495a59594a434f6671664c77717045367a37642f595a3375446f39356230497567697a56685642653545336874674b516352714a4e6478394a4337443241456c4d6149346c2f6d68476b564b2b314f2f77414a74334f42363554446435615670707247436148356c4f7a5545536a5a7074535370754533665951757048796a53534e70703762656f433869485739785869592f44537163473635765051666c367341437970377744614f373571574f526c645442426a65305769736b472b49375341343477646677376b79686a3054636e526a304532332f424e6c4e436558427973552b44313839556369543350706a3472616136714f595649614c703275777073766a49312b6c4e6957784f324a6845676a587559795343396973566264672f34546a77554d4f417956742f57596d487357383661314c53315573434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17746', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d6861796a334d685059486c4b76685757634659324c797a514c64442b2f765065624571704c45554f6271784c4d3734626d566e3973493350754f5038375276583849592f4f2b484c4e39425a33393343535533704e3572335548314b61775a2f67596952316d706949366554426e56354b724f4c756b4d3658374955376a6c373376356451526b3843397955457274624b686c532f647461494e433341517657656f6443745146314135324c54736b6c5136623163364b3458536a70517243564e4234746c50324d4a6e58566b683032633850652b59376c43394949374c6b6a68642f736151564e7477417175575959305a6837387233416d683035543662736f573371736a6f6f4f68525a742f42363669324f663546334d7258564476306169713162486b4a4b54623871537a6838636946624d4f74523968714565637654365375716b5a45506370375346756d584559765a4734766d764546647a65483159526b6c74322b2b6650462f50626258386e576679636a38616e554f5251644f6663543877346b554c544d5a3267723744462f61715a30626f6676487342486d7a69514d683364365671364a67726d446c44786f6d4e50345a424b4944615568755144714a666a74654d38656e67333349482f33492f576f532b724b345a5546626464353836656c66546439434f684c6d796d516f4a39653538674c576b3663564d7756585364484b416544686435676a3569705664324e5450574f614a6c73616665445052483564635638716b4f3935347348476e2f7474496a4e49686478724d71502f554179514e4475484a7869524c734a2b6965616d746c4a4c684854457065527241783272467162516f717842696970346c793157306e394a506a436c6b6d48757867473963653050364d316f31696b367665597a63797a45507450436a51534b4c774e5355434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17747', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417468536c2f684b632f4c38754c35466c387574624e4168314c76796b7a7a454d42327142594f47613051705878564b4671784a36622b7953383369785a65504d4a7033372f655867722b384c477349764959385161467a45546e74466948703662614d585839334c3069655248726e336f785a4b68756537565474634c6f665849676e7272534f713337415746694147654f736551514f7261563850763479337035304d4d76497065466b6568504d3137444d48534e5a614c2b41534a4868377357664a565852714c6f32364d445755573068484b6b494562554b70626d304c506d582f5630614131613032345a765a7262716f4c7375504e6b34434f6a753354704d6a634375464c596f6179415558776f5a3135706d4872442b47584d3656304f52486e7a454c67674d4c4b554871764b676e6a564f4a51726969302f4c7a68546c75676c716d50563644526855796a2f576f46545a6b6f2f366a2b464456774f502b47366c5136594f524f46354a5832726637387a564861743869423468386c5232514432506f67416939505079305357373066576b68306e34503567456856716771394733436f53724f64564a75562f724f32787a513048427863667670784a79764e38696548385658573166706b37645a52386b413045554e7539526e596f303661392f74382b6966687a734755517a65326642626649327439434b7a4e2f374b6e6172585a684b432b775433717757306a5850384e7343727034363653636d5a6e6d486d4b79716a3963307062644c58524c434779504e4874573079683563755078454c6834653650792f6b794a5a4e79526b505038504a6f2b685072334c3662445a384978363467454f6d45373148765739386a7a3168374e6d3962654f7346457232704a525a656f6c5238426d3968547331716d2b54444772785a7361634153494b5045434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17748', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454169636537454b6650414b4858614a78426a4163676246304e7664573970703749394749357958544d53396c567378614c786f7251574d64382f3164744d686158762f623636444e79375368304a486551597a52566c3869395a4765413266422b42357179576b4b314f50506454423361782b3766494c7350632f4c6e50506c503270364175343538474c74426579524b5a37674345376d735231426f2f30454c614c51782f4a50535772456c6c614d3071376556776c67514b4d792f3475395564486c394b667554545849506657434b584161486e744a374f7144757331526c53525832754c69564a466358596c676c6e4d456d7130576b7a364230486a4154446636664d6757775751786b36654e2f665679537a6c5842754c4256345a46344c634a332f4a78674d396d57736230696c7a35524b6e754e3048716437655676434330464f527632593947314877695339317456385a434563677062495a4d506969677778563552665575363236615150396a58543451563076593665526c495a6c52716c43594f74656a2b596a466e3661574a4c4e453238396d64326f7641786b7a5032756e71455a31373539506c75393650776f584868624e6d4c6d72714e624f394536664759714e5a383930334c35526b33796c795a616f41665a4164336b45533473624936706969426a69716a6c2f4e4d68774f4937434e746f65677133722f4d6d37674855773335324b435965726973685836555453706a44727a7159613341396a2f5358574f5142325a314574383374614b4262515470544e6e76727a2f4b44736f7a4e446c5a426667466a7458384d71377655414c6f79495262484d727a48517939666f3876314f62636377565066397938466844594251686d62576f596f634c663159553865422f342f56773262556e2b584e353432725347667466454777356a3255434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17749', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541373964366478464d47586b306b50526d56544f526f304173592b36367832344c6a574a51376d534262765a6255743030547055594978634635424f4f7736304432534b48564e533462724b4a5662616e36554c2b6b634a495a4e4e4d78626c307578454742673478666e724c6342755368526257762b66774d363832316d596f435a44344b5379514774662f72587a2b413944446678754b54616c4b54337857452f7a3965306c50624a424a4b4767587175452f2f6471586238704447327733505150364c454653645851716779377538702b734a30724b554b6f614168332b624e33376165397a3134626642683466374b7867364d63315569356a504779684f624d776c4f3562794f32514778514877567a752b4639696a582b51594f53592f6a35334b66797642727362384a4257577a736c504f414d634d34643238646f745a3644513852347856352b2b334b38627a7668465a334c394e56324369574276426a79557052713363763354516e416b5479735171633531595147756b77596f594a4d6f725953496c61676e58677334696e74425277754d7178625230466f4232496575725045497533424c6f7265466a5a7949344a786d6c6436746c48544873585573694f6f487a647941436456586350692f59445348726b4b4b5373456b5948324265537a4650556a486f4635627a444f47514148636134475a47593245345a366a6a633673674c6a57333841773377545958692f64486c6e4566477655464c704a48745a41593147386c4e2f334b534b33387068532b7a2b4b49584448744a336a53415030747770576d38686261746c4649534b704d7549655334657a5330555646435672505a516768643653636f4e657455593771497433433867787272555852666c76707956675a4274365641346b7a796f59797132763952355736326175695249686730434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17750', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a7575557558466a4c622b5533786f374137414679524b377738374937524a574a637347347849736a36514b4c464567312f4f776661353862552f676b2b6235676c6c347059436b4c38493077506f397a6473347545653764324376337378713245474e38744d66344a364e483648676647556e775273716b37334c4e79745a6351716b5437782b7437563054726c344857586879316765342b487852444732564f73592b45616467635a427466375a7532467a4231694a7468574465535036774b6d454b6262586336662f5837676c59797268653131336f4d526147365162622f596c4634466974624d6b4957744130456c6e52456763672f4b75586d767a66785763714247304f6b384b6b507445586630376c466c6249696f55374f444a6f2b3149516f5264637737446530657765686c43757a41504c6c43752b37372b79787a594a365776644d56433541707a6a62346e7a6555725154494934763975612f34785a4f6375676c6a72344f525a4a3261666e6f4147336e6b63626c726273596a543369385744334677706137704376674e31347653534d414468656d73387671746b592f61473875573737504544374d5675426e354b394b427779627331554749767563564f7662315768714c6f526c6653777632314533304d7a6b387a363854505765556238437371646a714a7274352f2f5a6d4e6d487974695a2b757a4758666343696b3671452f326d63304c7a433566574e6c7a777846734a47582f714a4f656a41476567425967494d4546767270565644474d564848686b675464506b48547a687754484762677a5575496b7768655a765057445576762b48545167686d3753364c796833772b527632724e4552617239677a6c3061514a78593063386c4e356c7037365037695148572b626f413770504763456d576f43464a4d3638706a67432b446b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17751', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b367a66537665645055732f55654f64366f487046567a51356b695377742f384c70586772344a546d624c2f55703578647366337348326b7166304c34656f6b784f4343585477396d374935524c757a705a4337712b536d58636c46664e712f2f6133564276616c4c562b4b644b7470714c67706e465071617a5961614b5873555878626d6c4434516b3159335a49556e3337485a656371393743777574432f37775669644178427344527a7331637a76786547584e6930714b726b7958756e775165726f2b414d45736b6b6250636f6f6679316e6a6f754c46337144667a572f674848774c65767149474671424b506631316c4e533832736d3170424370476748767a413158726679496464364b6e4b44456f563455434f5554482f317834564d614b5766376c4a4d524e4b563363495375324f6f49675a716d6f453556776c396272726d5861326b51765472685a4f572f396c6a7058462f77696d744a735a526a4d7a41706e36634733495a326c7746314c49666d454348586b2f4c4f7854584b316e326439587a3230612b65455566356c7356454170542b39436c4946646a74624172414a654641716647324844326439684557594c444851556763387538443667512f42366e426e3466666a434d516b70503368466f426d477a3851457736503868424c694758516f6774797567572b5470556c4755514670366643666a733134726d35436b70384542313370653476454436306c775653485a4b71574b564d4f572b306779327174646564767364482f396e4673533344386f51693648627749624547344151795a51355154592f4455306c7278453830477868735776307a52676c394e4c554b6a3966664448474b61394d516346452b67326e434c4633447968304b4c664e665052566c657844425a614767554e643572393939702b2b62647a63336b6a63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17752', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541697231474d76794c6e6a64626a4971676c387843575479716d7851577a41766250622b644562394c44612f56646451522b507a727348466f376d714b2b59465674687168676f474c4c6c423555655a773249514a414b327178657742377162566b7963565453335070684b693077785a7a754c7234776b48744c4d3166444b64615674746f6146356f312f2f4b384e42632b6a434f42745a4f6d423051364b39472f32616d345158634d664d6350624c6652746e6d763072444b567935544b494b43564a354b743644376b51446c6d34504f76546270484b41352f4e3934303052762b776655706a464b7242523851544b71764f76706a3248434d624278446c5077352b795036344c776873522b5a794e696c356f5264736a4a6d704b49583675534a71324956465865504f2f446a387533567a45556d47326564594a4e5867716a6865723641366a31427074474c4a516762456c5467696543577733684f6e33414e6c746a512f42532f477151595751726b30724b705474476e4344764374557238623959456e5a553557364e6267694b367846475538514562486770433462767470784569615641504a6d306b5579746a367a4f3339484f5356594c7275305259446d51436c775731465333342f68473532683736474831554f6c5a6a497234366f524355432b457455544130394a473367586e7a30494b5437414d44344f4e387a506f6d7a5831676874614148566a6572685168385550784b5262634141794c5948664a54464a5a717961462f527151755777724e4f626161496d43714857474e476b7534703571323754515a516a7832716a2b6c4e4d7655586962424e52765a51734f7149505857787334436150776333486d552b47783663385279386f6d4b6447654d49544e505446574b454f424b432f773536305154514d31785765526356724257566b6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17753', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417434316c733762334c694e414d4d762b6759352b6873793859676774726279544d65324461714555324e73727067484b2f6c72546d6b4f634f516b49343035444f326e6879787a7553457054476b657a526653645a4e4636347270445635694f7a6d57526164686954396c66656630577553785770305930486e707356724e67664971715152627359656448306142532f4438732f5835312b5269686a2f7667436c4450304e584777456b745a46732f5a2b6b3578304279772f58546d7649372b39336758686d32397144367a69644d32327151394f394857654c764e43334961487767524237716c72657a71747037614a6a75646d334b52564772363450314f64713855716f556868577631494e417332655750574b763974346a485656304e75432f5a6f446867796b64626574424c6533566a55357136702f304444796e50463632615064385731682f39467a326169592b316a527837626c75527a7676554c3036444c474e6f4c6b6562734e305533374b736a70767471475175637342384568666b66675a456c4a4665535759747345687763566f694b77797873516f797562304750315075316e70564b326a6e4a5a6b705466644f62525974694a5242726751305a3876784d646c7646653464692f74667477455551437956757a4c416649736176474f314a492f792b6d61494d5253542f3446762b48425871775a4a66485148614c626a6c4a336e36383552696b30726837302b5956476c79334d696b667a7047564a38595343415164745355344b36364f6f43784e36344b62707a2f716d7278534671374441623463485a62506951502f636e3967464f52345a4b58674c74417a386b7555657057334e46326671342b61736259496d574342705a715554435763585877796b446b4b46375766714a39767a535252454662776e7353413844387573715055434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17754', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454178646b43774243744c4276662f63424968434e656e4c34686765376c486444755930536e334d745344544547446e43354255434534714c6b6656734357506c58766e6e344d5173552b4c62732f6748316f4a6562466736782b5a58584b51584d39386c5043476b596250307a374239716f6666455354485954394e317a4e6f584555716a7373425536484a4335764d4a4f582b74425538773967332f30366945656d6c36595733325445505645384d56317241695a73464c674644355547576e66664d5338446d5a356b6866746e346d39596359644d4336506b5754476774626f6b6634412b715a385639614f516a646d4248304c4d506c554c7648574648675a4970645a70796f617071692b342b354c7548764d2b4b5579376d6c77596677326e4b3848594631776457534346474c44454b5279614c5a414b6546332f796d5063306a5144566377616c2f48544c396f64617a366d56447342744c6631565430475643443748324636522b363632363542727145776c446a6d33576f58375270724b70307565537378636b73455549717453374b446b3576724179756247784f4144546d41343351594a582f70635951512f635a37595364534c685833524470425252657837664e4275592b34426f702f3062356778543477537846597574354a545841643766413869575669432f68654c6944494b4f694a6f6a303730513357384955456c38754b706e5748665972366a56713250795a4f3170756a424e7a33506c572b655563614c4a6550333379427a4a624842306c42577961753079385a514631587847464e7a7a6f4d6a646f4469713063556a687032455633566650416b6d6b4a4b673636314c587669726553752f5666626d6d506b775756315470656c485359795a364337394747427756637341726a7a547741475962564b5a39543661786651374f434d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17755', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745413246444e2b7551595655392b467a4f593473673638744c674d6c5a564a76356b5172346e46426c37314c5268756b7856675147743764304a593878453430514f6a79306d3632324953775130464d4e506b574f336d4e38366e544f7a506d5677423844384f306751336f5832452b523270573449392b31766c68686d615a65397367775048396741415a4d4b49574f714f6a445a446b7732515954703666466c54496c4a6a7770314f7a59524d3977444c734a754671567266392f4a6f7173487a7167576f782f6d644c6864686648454775643058624a4c6e4e542b6b51694a4a542b6e304971704f4431524245764a505a6867506a4773636d3772486254536e516e58566b3749456f4a6d5764384b594b7479744966307032343661736a457458684c3869383056673555625962354939365241485373566a797754535732446a6c4b4c59482b357861497859304b68646e5772786f4a4854374f765a526a7a4745695344614f4a3275506556436b775268744d3932636f33616963477471496f775242734b476e703064667032716a67567243704c7366343376647350614370576a3468744a327a44416c616d34674f494d307a725535732f31367a6250483757704645427737557061704e4b796f6770344e637557787333375968473241564e33306c42757a4752384b304d2f596d794658394a70656f6158556a54787352654c446972634d6d66565949643654325975686950754a36375a6f63566f2b674a467353497a514a69636a584c55323979484931667974414c695a6f577a356c46434b365858634c663166786130745951524b704850696b64533551666e664c71326e5a376e614a48645364526178656d503068754b695253683974312f71456361577a6d6d50583744556a76785054713236485554434d6c70647278725038506476546e794f4438434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17756', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e555149617743366f5759794351453630386d6939434c396c536470535659657945425538364f5345536a342f767156665045574455554e6d49426b4c436e7977467432462f4163705533664c58543477536c544b6a723953685a414f2b63776f6b577871627539774e76307a68583867782b792b5477556e78494f2b314b30567335506a6e4a7735414a6d78645444374745304f4c636a4c53616362494c4a51726f397a4148424a796e714f455347585479662f7769397167714f436e6c61724b33644b3070446348616a425355792b6f544d6e2b5131325448467941505276486d632f4b5965386e2f3177676c595667346236726b71766f332f6a70456b6c6a3153542b48474938357863306c706f3970423552617779596f48596e47325249597a70526f696e44626b4a684a6d634b4e5152592f4d6c4133335a436a416b434537652b536e534b736e2b3272596f2f6b415a766a774239646c744b61774a427a63376c2b646b323070585567506c6163466b7968577074386a35373844636749734d7475615638382f622b416c343235334d7345794753524d2f43306f343971797a4338774f594f6633615a317462686b527753624e632b4954514b58586f6466736b51666e58674f71454b50495736397670427047764e58636861352b5752395842334a47584b637a366e35587a7a6e50384d59797145512f54772b68344b474b34387445466e4a494f584e2b514a395864576a7a36446c424d4175616c476f7341637853617043752b5738483238526247724230686a6d387443366b537772366d6477764d30396f69615831696f6942305737745473546563364f6d38762f346e4b44635547683442595143485a322b37397a4279676f43764d61367a6d6f535a516d4d6b466e7a38416f637655494157674645414c486459566e59787a49544d74336f7273434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17757', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541685032424d4264734f7544616e362b5637426255627046614641575969526e6f72334b434a4575557a495151456a2b6b476132646e384d435263516f4e7445533841723472524b74474930533732416e4d6975632b6a654e4c66706c576270362f6f4e784c6d67486a4d644a7948726b4454337335322b674d6147306c7558734e6f4a5855634f7568784679364b377a37776b74524559773545364b536e6a3378375643616d4448773239485571664d497171653856494d67364a6a626930586f2f465465382f6876743236446434366a4c4c464a72315551564f466967586d7174543059363633677841432f6f66464667643941714d4e794c6d347834306b6a4579776e334762686c795045596b543978554c444367482f4b59726873773458367063597a2b45615733595147354e65785647577167776d326e7a536c375a2f675a4d5678782f6c39574e765a48423978375275786b773063506c2b2f794e79634d4d54364255683642583136486764725052547134394b695a54773336425669454b2b4a30364b486b53552b6b476c577938756b325a517175416f67684e3272687867745873564e5072707869325378696b76632f50775576324a7058752b55536b354d466769364e4a417666554e4f756a776951733845754c356238642b384941476e6352664a6e32634571354663336a6b6e506b3861415579577062636d563836784b364347327a6933685779692b5549744652482f44336e44664563725845622b674274394d3659644131775949352b396c584f3166562f474d6d525567564a6f722f625a654e5279383233716169326430475649442f536652736b64557839476e3154354137515156373562445659557a354a786a356675304d75537132484f63314b4b73704e4e7935462b61434277506f6a7249373633416a43354c756c2f5642646230434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17758', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f537566722b4c524276696d4f633435724f4337613154734935626955552b71416c666938747850634c7a702b3534506677754f4b455164557650575951746f3568424f6a346c4a5346496a3957374d5451342b3432626f32525074746b4f6e2f50647073442f395964356d66306b7a6c546137586e6548536f33426668344e4f7151567030497863497342384d4957345473672b686a424b666a516d546376314a5554786f64536b53777779336c7859352b33682b49427864422f7077424b635941476541627878585473726d324e3633756859654b70576969613158766862684d504167517747756a58766c542b664c70445739524233776558786778534a6d4f555033347531784943414535785837476a624c744767654370306253674f6d4531435764686b5345304443713977344972616c66566a343672313663466c354f374e425236543478506e686b4b7757414a7756696c5948714c4c61524d386c7a3143426d6c6f6a4c455a654a516e514b34424a68436e61563061512f7958585274574f694b4e5547764d774e753642776a776871646b5458547a306f6f34376f4735514a58443851624632683656636a4f572b5166384d6b5a6237652f632f77527533706e4c6a6f64642b3132434d59727a7a396d59653141766274746e637a5671476a6a583331496245396565496f3846594d362b4731666d4834356a3349746775644e525a655248692f736461657755524a7454666a684a56434152556b3657423276414c667335713043444c684a73687a43574f6b687a5550705a566f7050315031483956656a30656b4c4e576e41705444636a6f38675435586a70515a69313647384b544a55344648726256442b42574c676d307152786c46344b41726b65466a4a2f3434716751626d47494a4d65704f3837754b6c395438474243646e4644616e726b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17760', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416836453846654b717353475a4d74525a58314f31416e324f506766652f6d6f456d39764d47632f76415639487465515947696a4a55756445666d30484d5573584e6c643653706834652f5a545a6e69364737376e432b525530563355743536682f54745131445736587a706c44334346766c52384b6a78566c333646456a314f3368466768505165492f596c754e5846654f665372796561474749672b624e43564d4c45752b673573595637757461664b563761484766554d4e5142483464346f6a4c7264642f324f796232593359677a6a4f4d55564f6b794737524e53484b4d4742683951534a4778446434324e5a38596e78654851776236455249433679544c4a697944384a374f7637316665542f706c43584a37516e36436d417157376664746c37736f507551746f5a365545503230706d486f68365936474438596f2f3876572f726e6d2b516c4e41366c38713864686b6a78416b67373651424d534d2f766a6f696f5944633457634c36756b676d4f35714c777a69314f6d384d433057707033534a4146306d58766f30314779616f6159767844784c78716f4854777a4c78657478477454395539746642654567676d2f4b336b5069454a434e5a4c6f5244736f585177556a594c6f3964484d51563158566d6d69313943322f2f3761496d743464736d774f46476879783630654f4c6d443438525676315874644475536a64547150306c5a61365a61736144594d6174675a456d7135322f4c37316e48412b5634662f6a4670697a637173354c6b66645876334a5456303344754a4d6e64414a487675344644487a4e4a632f647577444b4447455879625974474937586a4677556550584262664d7075307a4c4264636964646c454c3533376b4e71364f316a41384f3959776678725343646f4f34594a38734c666b4a613649446c4562754251746e5863434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17761', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f4b74515050694458704f744142426442695761452b6c4e6f7a3753424c452f38624a4c5273757545575030774961746c446a4168304f466d6d326d6466494b6b44495a41596c5a7a3849483836576f4d7134544a717450354e626f444f43626d3046742b75507853616a3362314f497a2b49334946704d48556c65647149514f614e2f71647443504f35712f4c77725650736f716a6d634a7748612f3752476639646465445970734978587372445775575345686a5773456e712b2f7937654e562f68646847507831684c477737344e50564152554b576766374f664f31314d4262576a75557a6f696c2f30594c70624b476667674f59575a5479693250353279656f62634f2b74767a454a33656f2f76507644656b4d767432766a7a7036666f4778634a395375376f4764544d34514850334e4149662b457235684a552f4c736a653452647977382f554c5a706548644a356b365950466c7848736d476c6a41686368312f762f454d3678362b4230766c4649534d566a375049564856694245434d48694f6555423879565130726f3452326b4a5979466d6a6c766b336650746e4e39353253784845565432767a6b586a786a57474b7a7058566b643847773749346e6d2b324232724a613475456950512b324a456a54564d4b4538433159653237496e5548494b6c6c6177524259446c622f4671736f4761426f314a4d496865464847704c6750677256786e495746374f6b7a6e6b6c6d7644504a7141716a4868364971637a53365272386e4f6e356f3269452b4978396f33624277307967454d35505569476a643562743175354f353333537441764c75313450666e4c75495165487439726c76386436625779433477696e326f493338733736313248426876355735684d702f4131476d5a5137447670626d6e4c53566f417230754279396b62674232344555434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17762', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f352b6a3271552b646242436d7a5962594d514f4637583348766b547643564e647562533864656c544a34304a6d7936706853664c2b4e54544d79382f555a38755847453352666f7769724c352f553052366677337664704237614c52666f326c587270363932656274366131537958313268785657354558336c64584c327a6f656c50715743425179313671586858544b4f42434a59746c48787176356c7577356971723238784c4e6e78316a68466578736b4353654c344466477058316d5355354e6362336e316a4933726259536b4f6a6f614a63693075622f486658537532515a4d39775863664a636268587855656b446d55374976396f6c3161726539693959447074593969305155316a784b514a6b43326944427568712f737473526e61783138636d527376656b5a7870576f684e585a6c2b7258683334323536537053726a4b6455434f425869713773584c496443586b6d62676c44707066772f314a57784936454952334b73304e35414f41676461374c70714138782b657a37796a78484b7a30644f5a753356414a5477336c4f493469517a70695872564b59747a483037315733694a6c72763848514848347772592f3831706e384c452f51316644704437586e532b767a51676a422b64426f7635496a4e784c61443530524f3452344a39317359386472663352763967645476364a5241456a4879523769434a427043374157655469756b3939614d5a3133772b7a4e3334634a4537655751726c626a5433597948536e576d7a32445867617979674e626b316230697158536c6a5a51684458346b4752644e3944497435727757593171664c44692f36736c786d483257536f315431746f3656524731436b623048686150705431374b5a6b36434e78637a4164525472305866766b6a5a4278526e2b54783936306664782f38704154713376354d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17763', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541304e7561394e68744e5672627175617054554a4d6d4164396d2b675263576774686a616462657a41596a515143534c532b65503935736a2b4c3662692b7658456d684b692b612b7a37587643726467534e6b355574416e676e4b6f7869796e6465367953746b3637466a4a792b3046414765656f6d2b784444427a5365412f414f61326767495a4d503049733954436652327a62734f36527639526a353438542f726c54654a504537476151516c4a7a50696f704f57716f4e304c594c4536384a544770496e537747347a56734f3074346745456a54754a324c576d67374c2f62583033695467385a324f4434452b5a7238796a784e6a6c76726c6e5264734e675876797241565a467263306656615247796e6e51616b5567656a6e345032416c4f4f6b46537558564b4e554a4747325773385a4f353341453445647a6b306a5164596272663863556f416c785538756f394f632f3356584d4e7a39482b4f632b6b5677494339302f5a4d716b6537566149566d73566a556c4b3549485656457a564e7a657a354f39414f6f5a31677241356a47396246737968656353472b784e69324561566b4b643064774c654670313971734135796a43686a7054597763536c4f454854434e735772436e6e384d5833666663366137497161475036323474492f385368627851746a6571706c684633663946543474642f594a396735664e586d746a465177664864585a6a556130333464337a7576346879726c374d57615a69616d58695a4c51724735702f664d2b4256496a7832346c3145416c5146534855757179476e4235623641515932714c4a716166565867484b7475767831784a5242575a5a766c6a6b6a6662357a4575694d576232304f6f31304a4265554758674a3232513854426773705a6554676630467452794d3654675167566a6f386d44345867576d44316b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17764', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e48724b7133326c3030323664614143664371747035586d3357464f764f676b4c78386b78644f317534324a44306877425436633277393253773168722b2f47665a464f616a534b6d735774665362582b776d4533536e336546644d52534a457058766e745344634b6e4d4744554c5573494d5472484f4132665765686c546b7854742f664e635078776c5570786d6745744c6e49366b4a70376e53797944516d746734625034766b707352585836592b42396739674d626a664a715941346c644b676c614b437a776c6354446771324e706e2b2f6f72616c425a42584161643349686745595255343964517a36453234436f7049657a78626f6c38445271564e356953357457586c71386d672b326479503245697069373446694b71795266336b346d65614847396d4e51616257347479715551486d4d616d3961745741334441556d4d4d4956773352363245727177613754356d645465546c566c495733464f65774636456f4244796b4938687a52573370436c6443717a68736f4574356167664d644a4d4751366a764975706c78332b4d6b786e6b534258696d32414e756c6c4b65304256645764577561674c39474c4d6b33413162356937746d6e75453836597530642b76682f32637176313468686c364f6b7a443842366e4b32516d52424a4148573175565a41687561534857336d346e45653872626937767a496a312b686177696d7074524377754d652f6b6d324a4c64526d4a454a4d48412f424a594b686962324f6158634e723163734a6b5857372b7246506f35504d55713674775a33687152515737594854463959544d4b6a4b616331342b536f556e4a6b306f4764763454726272684377566e64675043777846394a37394d6d4261364e5571716956746f32734a624d7541746b2f5a4c44324f3355632b7a77587a414d7a6c5938457054435938434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17765', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e456a553159384863387a30416b4d4b6749683149315a6c58504b425a32546e6a436e67544f4a48354865566f4a57423752794a4b46787134766a6a584e385167534e79797979323849537461356e4e35506e307878386a4c364e506d38596e546f6f3267466d76755a6337645734394737422f6932426170434e494d64432b59437251416e68513769326941386571315764394f4f6a41587562505635674e5443304b71366f327455732f4f67326a632f4346304d48766c4a5362424d6e4330544c44754e755a4a6a78304a4b4553764547585175664b587a5a4165716d33564b775849346f424f6e50374c754e4835774939786148655474582b726a77327168743153434449556e4d7658763357467a72375976357030676f546c4139736e6b7a7257763343623143447a6c496f31737750714d367137795435485834364447424c306c382b58516a5576616e64484752474f422f727159655a6a5641366564505931526f5250662b3167696254557678716c4a5132464f704752732b6951397773586131706977413568364a6e65765a683978442b322b784b334a30485757394c7771724974315262667a6e446d794148427a73626236574e336a746966336f3034706551324b356b4d4461794535672b664f4e556d584730756a374672714a55712f665679515550543733516a3765773653773744497179484e344a454953427771436c726649314869744a73342b6353795478425757417763424c6c3834356f5168356a716e657a4d6a65526b313653536753476c39516d757862494a474e6654495749754f6f337369652b4c55744b43724b527644396c794e42396b2f592f6a62747147773751376534313471446f337a77372b4553547554656a64304e595758774e4b6b652f4652785975594751346461647a2b6d5a4e69584571393566336d656b6830434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17766', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541336c416a39354c46666e34477545754e7051364f6435664465642f674b4b76516f3463304e495654622b304776462f737a49657670364d6e6744554579766b2b5874434839685161383075567663774730675175584537716f706c6c39756e6d466266676b657553324657425038523470782b32585661706951417a5a383771634847466a4f396c4164376a4137785353414a647969586e5a4b654d4157376c634154356c5a344b664548466b666466746444465735763247682b716b447a34474a4c4e664f714b4e616356375a304268522b7358362f6b6f5831444a684b62783254373652366f7859714c4f4f3563752f6c794d65382f4164475755595339334c754f796b7467336c477055496e5647666557563644304d6b452f714762625236534d33735438712f7745304367304e4c4776526e77336e4a565a6336583538664d4c6f7558636644467833556334566e344a454b3671526437322f6d5065694552364d617644766c6f4f4747524465476c57742f66776e6c6f326d4b76616771784c47387464536f2b344b6f624272593953633645534132345a6b57754f46624b6e30332f645a4934794c4d6e7a4258733033354a334f6d3879436c54377a7948416336727073584c2b6d5939647232667a53796c697130556b785a7557615259324e437832555346743333466c454d5a6f38497552564d6b636d33333278784f6d4438666848487473736b6a48765a324d2f61564b424f47687176547833354b554f584969665163665974575a6471314a556a2b7350637a6176724c59556e334c614e434b505352764e6a56634243576a57566f695a776b5772686469664e426d686e412b6349522f456430316e4a776656624d725973315a63624a6c41705874434a507452476969534f36544a367475673231502f5168775459747732726563316c484d375a55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17767', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541765834414838537568776d667444366939624e6f3744454c75515265433271672b5553764b563741764855485635526953425470426a324d637a5a683964744468616f39547353634a6b542f415438734656706854615644774559467259676d6f5077785a652f39546932493636443879697535553564574a4a5530336e6f6b4c597249504b4f4e45616c354a7261516977643658563731455a73576d76376e66336b45334f2f2b76754a71476143636b425354686f4173516f617233376e50416e5835363331654e7370684b684c76366d714d752f4d6f496f69436e42467872346943665170562b5a74654a446b5a54676e414778324d37706866427248586f30307645684f36716f6c4d6472786a53646f6574466945796e485230565a6d4163346377426a6d3550373751647455544976434a32767249686a396b577437413030366c3249537271632f4a39366e3447666a2b4e354a48486a4671647452386d464154566173637879436545547156303974505974744a333248496f64367871562b547a33645254737863724570566b32756b4c58486b6349727041732f6f324d716b55416a4d56767039532b33706952313941537863794d615650746b7365635265663956353776477265667374756b35684870684676464a38465074666b464f30494c796537492b6c446c6371775148472f77736b6c776d4d44424d7959614f6551744d4877594e66304a4b4c7264444a615a4849655a4e332f584b7273516e794c47643052686d4c44626638457743556d58332b2f7861484249474e58776542567431464c45432f4b562b7042516f73706a6e596b6a5731382f724259394e44506b67584d795733772f546d62704a6e417354476e4e685873546c3353395466743532764243335a393246787a524852756b6a4e59415a37382b51723566597676777a306638434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17768', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416964704659634a6c61635865393065556c6d317a73785a416e6d3653316b572f4d3255514466484562316842677543496e2b786248396b4e4965573249644d373749664247315052536f546d585655554730644d6258394469353771482f2f4b62726761726854425653554868735a65547434796464446d38536830585231384c364c7373475471505636754253514c387a446f68753775446542676d412f716a55425267724968342f44712b317038345a6c614e55496e506e5a692b2b76686b554c695451764a4c6f622f614b6c36794948787351367244465052576e50343557666a3634444474706a555445333031484c4b66304d326b42496f6d503150427835516f464e726d6e4d334d77686a7a587662345566463145387a47584e3178434d6771307633587a314a4b316a33702b6f6e76796d336b6b756f4575664b6648414f5a463230465138664c754d36794e57636c59482b4c58666f426268326656794767755a49436972337930726b7963546b5630536f662b374952466335384975706d35504d46426a426a6f54466b5030704954546c6c64316541565353386b746b475273364d336d7437567a50787830664a334d5778744d2b6d64616a66762b6467417277463631665639435171743653774234776b793558475059347030744d7057664e4c66674e4e4149337139386f576565645a657856464b595a61616c4631726f776349724f393559506556495679377a76722f4b6d386e50767836777947555a4d454b74532f6b4e557a384748346b654e6750715832525a6f776e584e34716c4476694f2f48426539533942316341462f65306363536b624e3277534f7373544843744675596445456e675264546e34524d646e355a7868767a4e664a4d3635376466707a664a6d4750715733784b73574e704157734263734252726872726d50535073434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17769', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454130554162382f6e7a58656a3430387275326c3254393549497849612f364b73494f36704a555158724d6d7846732b2b6c7377656b707438636c356f3141444375443275316e3530504445464e74733164545055416c31354f31746f76454635733162637870637644636846733242525669793143306f784e476a32347277315541754842534b31427534462f4369423850444e457434736e65417a486149484e59654f475249724d5545534c464e6b7772575a4454656e457a6d5836646858652f6b6732387675426a624c6e45696673795843733171516d30362f503477757a5175516574703764364645644c68306d4559735344716576576973754744526544504b64596a34444e75734e38554b46364b6b4155556d7936553077415066546e754c7a58583158714f724a306f42316e504d437937706157484855522b632b71334e77364978666c734374312f38755755434b35626c515a63705439327345393241304a73384b4b45474e67515676576264554443554c43465762676639435752414561316564624d5333373477572f4151326a684768686e544f35705577364b30444a3056457056585546306c5556344f4d447a485276757a74737549307335304138696879622b57444e482f38736769576d775643547a3068536131735042797a667748517266717457525866466c58694236364b334b4f39355348434d6d65336156677a6f4f463364696e79776c35485668334a413765753734696574486d2f3541795942663738695a39534975465a4e6a4644677a714d4a3034553141314f4a356438453951566258425678304b5346504b5a2b594c664131386a566158527445336747434b77393054556f6635486a55486b2f676564764455764a45624f70523930654c496e5935322b322b736778517944376f43313959335463333568554e7375615545434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17770', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541716f7230556c3642695342394579752f38716a4350572b534746714970583837364e6f6c734b79764d4f326c4f4264582b30656a2b513869755642704c2b366638473554362b556d776a674b7a4e44574369575a4634326b2b6c485259455738677267713834537a6f6433636e306b7a2b48794664787665496b695a493136746c55616a6b3765456b674f5061477850326158634b74673754525a466f676e7667325932662f2b5a654b69446e6e2f75504f6973334d616262684f6b31642b624f4567346c4961547768444c333139413139486e682b534c5a614452796a666f7941367345396954785a584a35324f6f4b56375a6e5a447454534c30335a32794e437576794d467a6441527775323256624846555432574d59425355653136524b76687038303935785653694f6f6c4a2b70536d4b364162356f61434366724831777642322b356976315978794965423841574149345741366e574563595658556e6c7a59734461667442494c353868544c797a37444d4679636d386767635436416f556d484b5a79535a38436665526157376c36384d55713267796a5a504c2f4a2b7a3176335543454e353179526f6344334e6436473132715675526461644749476e4c656543344848634c6550596f6f6142656d4b304a4f392b425145446b7561386c79396c424e6159476565386e6531725a4c427938595176586d55554279633746346e6b2f39524f7736736f55774b6c37672f512f624e726950692f655a3669364d6c57695a786a7058386679772f64656c565357497a4b2f485932324568746c6b454c6d3269705863597169696274474f507975496136764b4e666a615252353371677658326d4536364d49434373646d7a57615677315758684a6869484d30352f4442735377325176495a67314256657471593466376e4741694c69546e746b3575794745434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17771', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416867525a684a5a51384d79565a6c6e5437725731703172654930483244312b5a6f696a437137683435784362355930384142627978394d7766684c316a653135712b7a3962512f5557764a5a57624f6e72557a4c4f2f753353332f55704a4a636a327a7365712b61546232794368676b7a6542306859713475427647426343346e47586b484a4531374e746b676f7a5362474d5567516831566a695567344368777972397963557a3231743441727977434875786b432f344f32414b4a564b782b7955496468653368314d6d3434486a53344451304567566f5270784a33597562724f706b4f654b3638384f6653666e687261796f716e6e4d686b6e2b794766782b5372692b546a41443831644b385230505a6235763447496254532f6467656c69726657667a59514737787232746231612b7770306a364f7478536a4868347733452b765271386c736650417a6b6f4457333443323339616c506964496d794e61326d57686d7949497a365658695939493841632f774e636662643850794a76484a5646636a526461423056773547476c446a706d35794b755759706a6c6739354342527071346475354b7a6a6377736464486232315234377973646d3655306b4b4e42344b694c4e556f4c34524d36456370655a49504d4344764b4641775a527a63496d62434c6c536e6f385379434f44393262325872315a427a4d374739624654493777785872327778797137786a69434243704c316c64442f754231364c6e373533436643684f4a61763631643748465a704134793867377a7370323044562f636d756a597033784d526e35436543337738364738774b5a6938574d79484a65774744316539764c6a376d675739797877706167334f384c4153397166452f626c486b38526b4361393879516739674a77584f316334334a346c38366c526667754a7330784e38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17772', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541695259693467616c74306863637639446a3351493665662b584a6c446c665a6d646d374e4330662f2b314475736e3372382b37584a45434e453270516f61335a39342f364a54594c6c58416d362f4f373134786341436258304644314d58743875397a61497068634131666b56654d304c7a704e53445855663456524c704a7a743169526d36436f386f456372714a34537243477856707177737252484b586a376176456345644831624f73345272675354514363436336566a394d2f6a50506854587038396447337a6b574631436b747974576e6766454338714542443545776d3956704f744f5343703570454277486e2b49326f6a376b773267546842467236436b7a59546e7a3879597a516a4b506c4a7a472b434b79493857456f616454307134322b677a4c38394335633669684247654b73656d62782f497a614e4e67654a564c763731306153466c2f666a77396b335a5259476168573755797750723334554845416b334c7568635061514f5a7842735143536b7153306947396d2f51366b364d6665517568785947785753473267797a757a4b474b6a3178776833586e374345463875494b4f68396e4e6243692f4b30584e506533585a797732473778593749307a70387054563249554454555274394a39666a33717139716a647031652f6f33712f564176786262314b2b5256736e715167586a4a647a667a4e36707130655a754c3471566263617675735357494b6f477a38532b595a483653797a5471724879594852706b6d447344372b525032372f6c4154565555696f3032594b505a32776264316d7a6c3568307a326161337a685052576b366943477a6e396171743878596a422f42763355654a614b44417a48554469424f3768326e376a5039584c42387a754e336c452b2f3632363435646b715646794d2b795966473063474168524e434d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17773', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541676d4c72596c59514477655573484f4b35546b69305033474e614a71386247597730724e7758744f786652387156414b4c54325a4d6b6c396f54634f446931554d4d4f32475a636362514453715a65566d6b6f67736f2f2f685170526541625647774537545833566c42454e495766616f79716368596731466b386945416438474362646c35467242794d62337230516d437a623373616b41714a58773236742b6253506d38624d79454444446a4531376f6547377067513747777446644b68743242534151314c716e533077306b4a61447233346d4765375245394c5a3874645442483847596251712f2f513730462b506678434a304b6a62697055397445786a4266324e514f514236433563374f377742736c5a2f6763635339784a47717254795a315574584c5a516d5450743653396f546153736477334669577863506b61734d3535483639715574427658485242727a547845374d373845324353714b75592b596a4e66586f45316a64775459744f773950396f6c6f3234434b687a3149547a58414d7663374c55794648774c644d4e4e48317054472b4b70536e7733785672622f48536c6362587051784135656971436d3669652f355454617564435856534566496c4f55412f39466a47754f326c487255532f704d6e5a67635942376332336f65434f7877756139544f35714370337037775a77796f6e367649786e636d39514149716a5075533239476f5851346c61774f4d704559764e315a7970374f43494d756e735078594b717476424c3745542b5876747a7332757842506b42706b5331424d6f3335414f4c6a524e70386d6d4d5563665a51324c6a495a634c2b346a2f3756576b72305743364167325a364a756950466370545858684d4f686556644833476c7166704f69386b334534307870507771544836324159616e6931765042634a5545434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17774', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d53676c2f4349303049377857546d7a5749305a6a78753633316d3679656b50724a504c2f786a664e4575766f727567446c634d35505370456439654c454f7a6f4e63696f37633954525356685665663736456455486730564f4f5175613751737057592f57564244666637516f725a33774939635279535553306458396376446373425852515849696669787679684f7a62636c6432753477436a357874785834792b765574576e687246436d43506f6a326849527879376e77544256324b6f616752343453593650463652656f30336a356f6f6c52353469785131354231464b3165736a6e73373772353474476a4b435342756c4a38682f7452774b79687859767143326562484d346834365232392f36764e5861474c75567a614d494f6d3248654f58664a646a38443370616d345173625a505371542f2b524d5667645a425232727a6f374447726a567a62396243504256793633306e306b506a576e74686b75336e464a5450325a5439595656464b59636f4143647862464d6e303352704973524130687a5737576b494f525146485257576d66585a3944354468376d74506d7465314a70775749434f314d6f5647484c78633562716b78594f48424f3271566d312f51767471353065676b526c4d686e6d386c55577343373866776841483756576e424f6f66356838784c35335a544d704253714868457a547346326d6570322b71767a327478444173626b654369694c3144474f384f78734f47475a5735366e3758444f7175476a712f5759534d2f6457613157597457777138566348594859756a2f30437847703377483845514a674d487535702f5a7069784a76622f32656343783644422b546a53694836492b5078554d4e746c4c4b3977524f6d763845693466617672507841783567364455464e5850466c50664e624535526c574431792f39386b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17775', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d33747935674b4434723449454354306d4e3758556a55634c557a704a4271335a31707a4f3363674972665a724c6834427a7656515563456c5134387a7559354573665a4e7765373435597449346f44314250486f30326b724e662f4f516d75383633722b79633241517742786e5a4e5565546c46727844306c66514a626e32445a4639306346326532315945624269725a7254317736674a7a63496275337a4745473873484d4b30424543634d6b3762323577756b516d69705663777a694e6630633442687939465657486336757a353965427871354436727a67307264494964626c437a6950324562695376323842445a676a582f795a326464355539464f725963475670664d59747631446c4f5466646137574265626a325370312b6b6b374756456c47384c37756839524b38374b3979725879363639644a6164586c78384d6935344e5258413930756958316377386a59417a56712f636a4634673552446431326e5a4c734d654f77426e3149566476756a4231384e6f6648337a3643682f534d7169486579716335503644393152776f343379346351324e6c6267444c306c42696478785a5a6931447372466a7632337653744c43496a2b4f6879695853324337464b50784c412b465244416d5852465157526f4b32307776664d72526130776836354944466b716e64354a6e32756a7a505a39536f2f316c2f51752f4b68496d5368396a78634f564a345777716a525877686759572b71676b484a464874746454374e584b624b6853324b4c6b35727172762f4c6b6a654f463837684c424542584775373765714368764a4d2f4f42617a6f693153704475712f783067634d475752616b44563432567752413539496273426f566c68774d6e344a4c4f5057783642542f374d66564f3136706b71313636314f585a4e343668446655334f4973784f6f6238434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17776', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417a59394d6635625775455874756f33756f4d2f7a52576b69563931416b5870703453633779525063314177562b344f30466c796f304c6a6a72767977786b7776335567656e75514e4762316e44544b51343674364530532b79396e6a5a62365061795565654853716f52685a57436a56484b67525131674e5079634435694156566a4a43304846376a7a2b6c335a53695845633839524a4278316a764138754a31592b36524d64526d47304d3078546c4c474b3733436376536b52543374666356763133355975733866766c7246686147464336595a78515371674e52465a56694830415437673352764830386f6b356b6f6b694c583678313838486f756d6c7062674573636c79323864656933716b4b33766d55796866564b2b535037486352506e424d5069467377435178765730713556496646734367717a37724f623075793634674866463539794f516263706d75523437466e364d515456744266796252776e776536502b3074593863655a646d326f7a52644f504f396e4337497368386377422b564d796835634232515944625a51776537796c4b4e61514457776c456d7631354e48774d552b5458414330575a5a717a6f41434e4c6173645649383745617048746a662b71455848394a5461653653706e34314c5a3555426c7367323775412f594a45536248336337526c5163634d6c3648785539306452694a742f6f436f2b7735447359686544356f2b417631316971534256722f6278372b453451705649665431437830785738357662785a446f767544556f3463686b6d72596a344c486e6f47426d6b6c6b37675a6248736c7070675478754176466c784c3031336265725439417532576f4476324f4c44385057552f6767396c6658685164627673586274566f4c6673484f435350554f6a514d52664d386a62725a314a5866554d486e7435544d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17777', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e384e7a6d7563644570364546795a632b47426b77432f646248706a7278453061356c4c4e536d7a6e5734536b6873766859325453755a3561596651735432576f524f7069376c446f6765322f496f724d457962426d586558377a4f646166747964436e2f506736385252477458622f2b2b382f745079356241767767584d6f4471506f6139337655344949412f357447572b71423746317a456673745852644450675771566e6b49674e663645483258364b49354557746e72774e675962774b64615a39452b312f2f39654275634b423462695233644664636653784c6755416c6751317543756947745a364a6441466a796c6c414573424d6f4f364f384568666f345239692b5046556b722f5a63332f466b3243576f437168584c376a7155672b4c6648536a4b4a54392b764e2f695a716d4e46456e5959386c5a485765576153626a6b6172544c4544354c596f43786a65373157724f4c654778704a635259357655744f7a38553965316f53454b61365577464748524f493870573365506135577170474c58766a654a4731736f717176314c774e6a507933694874494370527667756e59504e595243356c762f78684b5472372f375a737841794330416f5973397142705941597373656f65792f6f68664365396f7a734349644d3934612b482b4a7a78336d6f525159675037754879796a4e323547444e4d69324b4c2f39704d474d326c6e734e55445a31326659766e506c30774a54307250683870364363316c317a6561712b4a746b7677766e79497a7943687951455276616b31693550386154547945424769784d4d45564841626f4f774a71693368624f6b627a464b7551734f61544f5336475733562b454353712b514e72484b67447165324d6c77486d5047704739313434426b64416e4d684c716d71665449635241715431675077545467706163434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17778', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541344170304763505a6e4b55624c754a4f61786b5535614b6e424630623136337145662b58634e444367443664564333644764334a624b795a344e4f33624845694752344f774f3441513131676234453546634d686c3869574b7633476654754e6d6e697350424754746a50414c6f4e752b384e794e3049792b5a7035587335644945674d6a364f376a494a4a73772b53427a717a727a69556143386a65464353596958594965394b4378556f54597262594e2f777535623352556c4c52356a47674669572b32594863575731697545654a323569576b4441676d5176646e6f344c482b64366877664f4764474d654434555152744d48372b4e6e452f4a534d71756748564f5539776c6270433172784c2b687748516d707277752b516d454a3472686f46534f784c4a4931442b2b6b5451325a554a6c45573546357937494a484a39524e522f377a5348306f3833764436356f4f634643626e4c46623048626a61334e496f7170582f756c446c4532515a34437773585a416e48372f74343546676768494c41635a3933654839534b79333465674f756f6b3454777147324f632b317a624b4e766f494b427a3753566948564e396b4d5945637a527738414b30754c51776b556a316978506e316b6f3639516a45746d2b6c4b2f5550654b576778636849344d6972592b665844753256506e537946524663795556616c59466168543267324c4b75354b7664683376765746727434674e6b54694c75694a575a3063792f4955696d6e73734547697a364a56704f6274715853784c66764a4d2b54566742566d593732314234622b323679624753647653494859592b634b336c7a4650716e50706c4c4a3244416e61494e31536b494c73782f714533326c7967497935306645536e7559714238336a3353734b6154685750593964314f754e30703662696e5351382b4230434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17779', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541754b4a7a422b594c4e7746344d686a7159504d756e58756e596b4e7334514451766f416c68594b6d586c2f45373630676c625364646171424d427a4b624e4c5336696545562b2b7770314c4e336f324a70443645497651545a45676438796b31364f66434e714b4c4274486c584b78515a41712f696257506f586c507a7452716e7049654d2f5531625368646a56574659423177576f63355a66354557474850696e4e7a315673556874474d7339464238682b42344b304a436f53544d4e73654348795666737173717967354b6433706b69372f734674786a5a71304e65397461594b4d65794b306e43514f434933536a556d41505075766c55726b4174724a6b654957485136483251667a634e484b376263774f78674f774b314d64622f376f47327676424369414c4a50426c434d38616e7a796771436c717731774d3532774b365745703856656a7947644f394d396f3676322f6949746773756751564f766e42776173676446434d7a544c4d7057704c58627474564476445a65786338777066733772692f574c6c4a304277716870573765672f3673796a57477038797769485a6d375a35414574574539574a636d43704c5555645430426c6e50644a566d682b644e3342506a5879525536597874757378374f65316645627a303656745364533468392f667753466e6a454759566c6c4134725439636f3854597737743037654c455563586d562f784a69457170756b437330476c423953467838696b57446870646d4b35714c4f713372584b372f716b694f5566647a37644a4e6c43795375696149307a5546374c3752323979464b36354a334d36334d6c67492b7670644a4630594f797158726a7a7973444f45573543676b4e357a6b526b70307031377a32683344756c3469793049437a676d474d356271713237334a617a5a31695a783969794e752b55434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17780', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a2b67415a6a4b6c4b7150684a46313045396d53732f5531416453646e585867346d624568544a647855316930644973775638565167356f4d77475a67666a4d4c736a79657a76336679647756757153417a42747257683259755a304a4c35515a3563486b392f69505670746e4442676845354f4a33517a446c2b667555586b59716835556567684d6a4b44414b524a635047694a6e32585832665a4b7362334276472f6b78354c72565352694149656a6f35726c45563433556c4d334f35345549316349726865397054756141756f557661666e6f31556c50786f59556a5651506b396b69456a3744755870525335657747495a314e3231714377783336344346716b427774794877754e6a307751664b784a6871657771774452452f2b51306e692f5a4866516c7556585578552b3455744979777979616f5277424333454b6d374b6a32436c77686f66577063505764452b3445734a557869786c73556e546e6a4241377756705357422b774f5165343762704465773354416a53536168507565626e6b72592b73336e6c6443345265573657343068584e7330526d2f77342b4f684955546d6a71574a70514e5268524d6830744b493944476c44667a306648737746686a346838456454564e4d38667431644e79474a45517a37512b43764147467874764836544c736a6b4f6a3648386578616b7476797a797444626d516c4137622f512b696f46766f56633164693444383255784b49486f397562673533576e56657565365154456736704b70416f6f4e78394443517450596f5a5033386d787056613678565069313678457035335351332b596b666b64665456494f67656d576c707048454a5847664c434e4773564459627a504a796f3231565a5135334631674f6b646a5844556f50586c683350564c485155754f412f73514c72557a46434d4f6d754a6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17781', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d746f77354771464330727376337065416e4253763249304f78496a474437467471796f74577a7765546b6c4f667256335a506550533166705274654a6a325474425931556c477037582f5572587a4e4e3048665746664f48773337546c734a6343763657754474766a3961654e386e437637534e54714b6d30467a6c5a4339544877635a2b774a645175434e573256436f6e727347394864437334492f656d763369657270784c3537686f4147795a61336b447870673674473675385246657779424366716f6a4b36757a4e6235412b466a53374c537a6a4c44546a5445537961496445425238776e53473845415864642f72597433324c57774d6f2b6b457872745171386866583759434e386a6a7a765a4b4d2f5a6a6734672f4c6e7135314b576b44366f6d6341316b757452764b2f4968766a43496d32617241434670656f37534959624651504442346c424871753066326f72484f4c456856687a63706f70706d76744b647041646357674d64427330524c4845384149785367785349653945363437587063477a6b57344d58464937654a534d7954437330497a6246454377394564456e6b634e5a4c5461755a58373150657377694b356257752b57786a42352b716e6459454a56366a2f496279753747656447743847306465455776557378777668355a6959524f73637231774f49494b617144364836666e32755532516b5663786b687073585558552b796d6c3253486a504c6478742f6b6a4a56306b714b34424a2b473033524c6e74484974536147716c793558574477385536392b6e4b41584446726e456e374435497833546b753975343144416e515970726f624e5172464e6d30724a706a6a304b497043436447612f486a4f58423878676355663254576a763771365a4a3370756b68766b5252706c6a2b6c585a726a79344751384c37514563434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17782', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d744f2f5367726b2f77525445497941513746626e337a2f2b4870797043654a73506f37455047737943634a344949645a736f48327673377963486b58694b6975656172304b2f48454a6b70423734724f5841642f4f6370316474323443466f6874616268796672446451616e77334636414c6954464b7445587671742f4e50624d524d776f6a544535793235636a446146416e666150524451434c66425241323174447479686a55356f626e4746774b514547513558676d59644a52477a334379534563415a316437555244466670587a6973474d6d68726f50554836416c4f41304c794f7a42316a4a622f4a5663524d564e524a335a477347764b786b507175436c4e7357386165333330575a554d6f6a6a5556393668475531534235547162662f524c64376d38777a736e736650696454612f686f66642b78486436552b304449553752594274744c34754758666f3349775069307334392b2b612f2f704264482b476f4a636d6a61635332676c4244666d535930544a5635796c766a4e334e5767516242573063454f374f737253706e4a50677353663253546538476f41622b394a6f77594b674a5942614967344749655978516a37784f4c7a684c7245644b373470415055586350682b6d6b3158534b4366795a665147506c7a725632756f4f4a71676435414f646f6a4e337a6339466f6779655330575a6b535a49554867614e63627158776d56724935374e796e496f7a614c4961497a55557530582f744839796854624f6c6f4a36792f7848626b7038686e753538484f4e4b467544593874744e493168577a7947716b5a514c5a562f336262393361323838616f4b41543461505534335655506e6d6650444d6d776959566d476c376569443558767a7766506b726e54366338616f424e4d77686149624d6e4f44587679504d652b563653743657316b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17783', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d73366e66566b374d704c716837477178496e53632f534e336a382b37313430674f5431566372736f41714d4f6d62645051366a4f6e306a445273347a554b515548476e7a4f36424f65676d626f754e4d504b43524336657865616a6a6d344c374d716c5874355768787a664e4566503138656f6b4865582f524c3363333646785161504134616472704f44512f70784f566a364e54417651766271504d66546b2f4e58454f413362594e2b634c676439644f63726a5965453331716b567551695a746b3937776c2f464c534c79706c7a634f526f6b5a2b397635696b6c52724e716637324d484950524d3732776a39766c4b51584746356d67793668307656477574444673652b776e49464631387456385679795751574b61493333436d41644661457736594d66364979377764684c3277643050646832794b2b55335a55584b41777a32564d78736d49592b75316541596d717731646e6f37566a544b6f63394934526f5a2f3943503330772f71636b4b37377a48367077656b65526e4e5330455770445469484f4d4b5243706d73456a7562777635693043373647314c32426c3430357544526a6d69522b6f54766263466565373462575769536b666354366556526d747656425662732f4d63594b697a69483976564571582f534a365533623778774c30312f446f4b483868324d77476c4b49794431486837416e42645245546154684375496c2b4e3347324669627a555459495366337746574d747a4a577358754474613241633841554838344241356f3937416738714f373768536f4a47326333566e46587a44643533463363696b61336234364c5053486f59643337425730685830595331627036304f582b787a4768742f4542764f6d723933514f3834714e6b31715670524945327a316c50394e4d6a356f4f6636714379386c2b4942706a6a66536b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17784', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454178757473497a7149485530476b64724d57565a4f4d484c67516456724a3345732b624f69546148432b5a51586d3937306933725a636c734e323531566559774d2b63424e5561304858436c2f63734535596e517770714a6638495658595570544e623854774e707a6a3852676f476c6b392b58306a5a56634c41454f774861624e4d4d624b7056374b62394a7467784c4f77434353695465635645686f344a6c316b3752475577434c6c6d507432482b7154665673496668615a576d786531634d39715146474c4c702b504d64514a42662b5a4b6a416e62644e4b684e586f56777a67417053686d6e6255693349703430375a5a5a455334383152324a3176627a53536f696c474e424652566b57546378456d4a5330314c74577973364b38455978476e473744592f58777738546a5478644f50696745426e685a66736f47612f556e57336c6631676f4c6a6f5671372b6362746e6d5661324a765854386f7065554641532b642f345847697466774334665038544e3764494e367937655375432f6946722f496a6a32765061347a6341674d6a797835334f6251733575394349645672647a6a6f74557a6378474f6336534265477232594a5945634546516c64596e2f71376d47674d67426b77766d2f686b6361536249582b574c52306f79534a775843766a6b336d335a354a757a2f7775745a54714e4e686673316d5230353359433947306d6942414c4b532f35562f4c576951517a64313131536a525a6571576d4d2f4d657252375469546e3269357237617875756d3678477a794257784b784a6e64336277532b6668514d6c593231674b7a4f3834752b793272393452676f7645332b54524450366a547859324a7a596d3752643563662f2f59312f6a4330336f454947507951706156496e4d62672b41506247636a7a7a332f5972666762644e4a4865414b63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17785', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416851636f495832476d3830786d4563673574716276546e644d7a6f414f327a6d42672f47534a376458476b354e664d6542627a4661484737333744546e57645a6b54676a4b73417472504a6f7675675852637632724555466f7748444f624858794c776b704769503062447a49537850532f46684f36352f337a304b34445674687673514e316c5571696e3679656c52656a6d5a3751305a7a43787961733044515834672f6f48512b6a4b643050664b6257555845614f52574e776278574863557773365165336a643430744a70666e6a623258703947587a4561417244645a6765425a676153652b465257306e4a33766e614e4a6e42794d33526867623033395972737a6a7949786c393861767a41423565316b4c496e475a463146675575764d375277595a674c71787a7554715854645949346762775433555775746762384f62743567754f48375a4b48684457434c685665476358315a4f683038574a4163756262486d317942767a6f4a693965624e55782b366d6e39426d353332676a303255474b55444f575476365563496e32566b3839476a786d756a6c3961446848364c36437135316d44726756525536536575725a756c2f79646d7164494138333537614a6a452b5949446167342b78384f575339756f4e43306e6f346c694e424441755679562b56495175526e696e747a61576d756447316447366e487075357a795769336c6632525a36435048693273317a714e51685433456c7456623047712f4438514a423770524234374f7931574153764d72705a6b3137795845706f666547644334464c74376c696b53484b70456166322b387071586667504773554c71726b2f613437767a506556495278536d5a357a766e6c474f4b697975334852734c4338376d756e4e552f58517269314c49676176554a477048486c4f45442f796c2b774268436b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17786', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454131356f724e2f5965496e30522f5a6c4574504d4f2b4c735a796343636b4c75786c523757435044533145635662356469696868535a3963633447634c397a443759625930556977564b564e6e596c6d6744316d65584f796c525764396b4f695166415a55336e767434713570713441765a7a334c6b6b6a766e7465517a752f644268733561544b4b7a30352b4d746e6d3969416977483059466345594c72564768783571467377517272766b49627974686a514f532f6f65736766736c7536354b4338516a46744f636e4749622b556e4b7a344d4567525051514366724456337464386b6c65474666535578374738396867734541636f592f2f506530654f4f6739564f782b666e714c48716143786277673362545a562f3253437874637a563569316f6c736b3566314c41767370565a54394634595555536e4733686f374a31533278584835696142766764646e464357414a744e47466e4b306a4f385544537841675165697945744c56764955476c4a3856717135425a67313246796f656f526d64703557695434714747427a51493563704d41555567454e6b7458427365645662645a536d392b6e4f5964565868626953686c5a58534e304d6f4a706d6b37334a366b464a59616255676a5a4f695578456e504d64594938735376476d414a7979643666666b57726e656a685372536f6747456c694f684834343863723763417557592b62427571653237753279763343456c71364d366363474258413156794476656f6765584f5543427a6e6e66542f7046734a7a4c695348396569334d6c49504269366c664b565552614f537963756843797a5a38576761352b74624367553361476d32703165765671686866546f7133596172584f6b7641376b724f7536372b41444957615a7138575745566c6d6b644e597257556d6c367a76456c796e6876424a735930434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17787', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541736836504654587730614c3958583645342b5852662f2f352f752b372b6f71564a5132436d44302f6a694e575039442f45764f7637374d36464653774c686e377470596c376e7059753864462f4976514f34672f6a77354d342f6b4a6a4e47724532424b57693830633538446a566149505a64526f6364734e6f4a6b565830694e335032474d464b4a794e2b6d45477350556938336f364971764f786b67344e38414c69382f6f427535367769362f58585a59722b64395072384f70625149666856434770594e33477448354f492b635179356f594d74396a762f354f56656a576e5752356262356949714944382f5037426e334942463530444b47306147654c386244526f477064545251707650486b6c425248636943356557626579672b6e516a394e685470516973426831437752427a4d6471514f476e58584435674353397a4f4463412b365852317944553771664951364472546b5a594c6b725554346e7236556a51642b376d4f5957544b482b5a362f372b4c7930662f5674594a36446552474d736b49367339673762525347506b62393038756c77635947787561316744366f544a73386d366f61526b363873667058392b7a326679374d5636577a5832796345636c734d775979396c5366756d706d5a632f4f365868346832342f58527530476a4e5063777466507135384957465933334f4b4956744d68564d2b524c75703741422b302f78684d397672326755644a77436c32557a745856355779476d39373770714378396e714a6b74334b496142762b77794d376154615546694167463170655546654e364a564f4938306f49444f5161734349314c6c692f56504f586f75473950375778423649466333676a58646d6348674546556e4a6e6d43516f547044694a54432f583263676869722f4551775662654b55654f435450377a6877756b3973434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17788', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b3173657a626367466a2b67757266354d33537646724575545a57543636634942617752395135516635544b4f4b6777464a42735562775461526f6a5950363952746d52505464735863787653436e624b6a5530725335416d574a4b48455537392b7045734e7a547a2f3767534b52345a6c7174547a5948526a344e7a4b44646e634461547579467563624a526c745466544e78426d527533516b433862646539697352594364454b58703472484236386a6f70354275496a517678654b617869596737416661694b4f44324673673562534347345a6b6d62704e783241483444706543375a4575764b623833512f68535355386d4d6d676158766945535033684b4c747159516c637549366e49746e5073766158616c514548425934334347336a4f44395655654e677158566a52497674716971734b615642384c4c73734d75754a77534863356576493057686653694153323571326a47646a6835592f2b37446f7530766f6d516d4a4a693877346c4e6d6a7032693136644274644c5565495932492f306c634e586373506644325266344a73413671503777513763574a43376a537a70574a33595357694e627653566c75634d4c535457306a4c456a592f372f32664670736566706f594d42674d78747a6f46515a785748374249636f2f494336447042695a664e564e4b732f583544346274625976582f794e4650363254756135375165594d4f2f43427431495a4d6f4974726871367762683130616c394c333062596e34434f33766c38495435566255484c494143316e63496b4232562b4941316978337773474661444a59434f4f344b333438635a6461555259552b70414a39743172474e4c504a47634367363957392b4c684c527a53695a77516c76466d42495a5a4d6a58794a344a31314d4138497a486f4d566c5944496f683877736e74544c525755434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17789', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454167363158617434333965652b546d4e447762594456747a376b66523973436e7a666b4556414d69394b594e4a33484b63675142793541746959504830667274373946347276686d617835667831746a3655787a736477456b6f6e354952354e42536b4b50396770344545514a76795148586858686970486d35375a516f6c516436462b6d67394f754661576955384d6457616c547746777266316b6f383854416468417264646f69345437384b3034726631474b707a4b636831504e52565a6a62675338577234356d59646b645558464a4a422f5a5a7164704f2f624c53744a55645a5057702f3739646477557a684d3732697a51534b3767685442556d4273554d6f302b30752f795a34323177536c4c514d73506a4570734473552b47552f4f543279376e76506b69334849477145355771593973445378626178502f41624d746a41486f546462754572584755677630416b434c3863487064667035715a6d4f6a75742b41783768454c4b4d726f3469345a2f6f47436a54764e695168715a6d2f79725237536e38464d2f326a464276572b7654417933353276675962584f7161562b4946426b53564d3564526e4d6c30594f6f414b5279676a4b32377745485342675a57566a6a71775235312b573579325641764d454d4b6a2b51655645695a35646342324c554a554263396b4a476345315243565a674c427a6b47393172564a4c6a4f74457239524837507a566f327078524b59685931566e5337614f384d51426251487838767a614a572b6f55483059495434735a556b524b6b6b69512f51703749514a3256633465446c625973366e7a6566517868652f545a6961314a42452b342b646347317852692f5a39496e7a4930572f72484e4777436f466d4c41457553436f42514532655a2f6e37494a6b37564e51387965414a35305563735935784258616838434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17790', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417a3038614a39353244416b6c68375679647174524639376e436b396b76416378596768543555437a463232554e394f5237565654424f78686c7947505456446777485233514c36584d374f39492b3270706e36434a514e57436e736a575669345a742b4e4d622b64614242686a456269516b6c3545335534724b336d542f7176716e756366643348726f5a635a77746f426c667a6253567a4735456f6a772b4673424469456a3032487a6e4c666c5a51594a2f583735452b77572f65566673757644577a334f6f52573931746c5665627a72326a646d54416f6d55444a474b484a4b463039463038356437534237704c3672305a6d6966374954394c7a72372f63565a432f6d745a2f6453755a69786148647a38474c6b30474644726c42637741356e6e31523153793672385550507868676c6c6259694c32506a2b5a506f412b7471304b3946722f476f516863756354396f37416d4748555347772b796c634d505a6c35573159694f35504675662b42694670727a6134623756783579444d746d71494f55626a723134717451794d372f315434784d583231375449454b2b362b58776d554a4a77494f702f4142753268486c506c434152592f58514e6a327656476a2f67396d694c37646d4370774b787a6e4f4d6d7655455539584e3842552f665870356436464733354f594e54733350656465314d44675247696d627359376273497a66624d5a3536574f4a2b6c3264475867665554444d7a57497466654a74624d65535638306b6b57686b2f424b433557546a475a6c724f52396e62684b686b697a45486978437032444e49414d664a6576444a79534a536630413141743244354533424641376f7a71496e736c4a44703463714c336b797763386e464f3178445461553874557463646d47304c577457693549476c39482b70723263504d36544a5457505545434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17791', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f74617356576b4164425836664d346b467537796d45374a6d5173675378654635614361344b357a526b63542b6c3731484e4978724a6f34325759436574586f734555486d37635774634d33524966515245544b794877696b6d67622f5952666872386e4747327a6f4a652f74724754546b382b4671436c35674f667537497876687541505a502b6f425745674a4969563455327a464445486e393346515232787a73344d30784f58633473514c39635a6c7a34727a423269533737684532314452744f397939794a4c7131534c3347745632456c567161657675655576716c387953394d70487055646656696e6e4d746d77704761586251734b6254544f6d364934397548544f6a43575259344d4430446542725a6d724a6b5963747a56452f49487638554c416358572b4e41525a45556c73746f666a72776b5775517867726c50435a4636302f586b316664543130776a6b32376d6a5363734f4636526561534d69654438334846565a6738546e654139315842703734795366614e72694351653035776f2f2b7367443351585438686768397931415345357466507673585437706e6272424d4d50454c6f2b307a3037676145705168634e7350624276735045544e76324d7274454c48617233415451756c6a65727a4f42654a657a774161624f5a4f6c67704e685a324e74567663357831513356724e7767663973394f726d726b574d4d4e57576839436f6d7161394e7968414276446e78556d66665962714d2f38517a71416a44737634363834415136503837726a6f6f572b3177684c355a445a4b6f74454452417976507042777933392f3375747131753357523647457571352f304f52533461526742727a546e536b66794169627544702f46337065586e3335443930754f31497a3957724e584e36464b786c793145554957476e57754d545134693230434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17792', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454172482f4236647a306c4c4f54356f396d686471346a657933612f5634456e507472434b49317673724d3642542b5270363368505732644e737137714450624237712f6259634b686f316a7679656c4c58416a66674a3477662b5936354676475459684c54446d7543347a6a556b6579556c313557744b6e542f4b44624d4873326b794a73305962674346774d33564e4c38374f796a52544d6f506f506f734a354c55674135624b4e6d4453614b48575662326c676944686330464d42694f7070564834727a55786a6336686a77455854616e56345048765749415961665235324f5a506f4f6769584e564c684f744f375346393033476d31356e663341554f4170567476574c504b6231704a6346536753397848526d664b5452384a74622b4e35612b7a776d65646458646a57644a3953464d4639735a52702f4e485431724b796d746e69437141414f6939423362767a38324338616b705156326b4845616b68644353543037663034534d4577517345306b7a73314a78727a474f643959304879526f616631644753496e30686b7536394669777a697869593566484a725754434e4146467a442b7352476d35314b63515233495a4861785162474b56365a744e2b43706d525033516838564d796c755a51694c6f544c6a6d383741357a5353786a2f6b73496c7738697669774e4a34412b41304a385049304e43623554687346506d4356544f717a6d646e706e477a723043676e33334454474745413374336e384f74724152434c706b417a5a48525743312f3572685469737637395864546878652f4873773564636d6378505571694e596c3765677035546e534a524c5741505475544d5a6e484c784b697766417a3937586a785a75647878364136674e663167574d54494746544f48433963504349795a4234686c63352f396c4b3862646b485459534337786b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17793', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c41797a79495341742f4c75336a765a6c504b6e7465457742553843416c33684a4b3630616f5678424c6d643973746d382f5869672b653059513458637a466831794a444c64346d6d2f6369727032626966686d6f6534344c6d2b647038633537795232446c6571414174757844653679756a49564f6a32685131444a694a6a70486751586b4e495242654d57366a4859735778706c5a6e7a543678625471776d2f4c65475937576645555368514e7a4f444f733458414d34436f7876523953667077696938397072476e4f44502f425a2f492b4e7331395a33685636657773647477703653364f3056594b3059526f6d4b6e426a546e41395a59654c36423754675870706378507048346b6e47784c597477322b5751686949776e3939316638356149335a727053733344716e667664386f427a5253694a695354324775756c66773345436a6e74655a7a4768494870746e397073622b387534503563576c70455049495174567a724c6a7255574b73416f526933367a79496f44445265754652764536506b6b6b614e45663441763349416839772b486c4e615645324b6e4b68687a42774c6f4f6a484a6a61776b486e763352577161543159684b4932306c6d335153636e6b527468446c485233682b6b36475a4e334e4b4a416b6a75525835673378516968535372416b6e574f3447346c686b54303959446a6b59744c4c56506d645364524d4655427830514844762b69787869445873375674673766316c5370337a6f6445426f35706f6d61362b312f62664969484c73582b316f45787a72712b59446b4c5839596e744237394c7338614e504d544d634e612b624b2f4652344b4638365264685142626d65644654345171664d6e3457502f66674751686c5a314e4a5a66336f563247466d47676247693944366e78502f63565a335835334c32686242546373434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17794', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f323457742b786254344c4b556c6d385658766c73345a624f6d725a313378307a4d565577722b596b52336b35564b3463703055625a764246666f7630665753747a4b4479685438554b4542756e77303648343350702b664f783334432f67314b787445682f78477364557447744b4458772b4530476b366530724c457a4459635a566f726947674a2b61426346685562437278793432746e626971466450584c76527173657a564467744531306f6d5931354f38454a444e7845322f5363436c58544357475a63386b574244704c517134364e7436486b666a6f476d5971426748657a6a792f4d745a2f31737a7362432b6b2f37725235664e7954333530735870656a5a797851545865314565434e4179324c36667565566f6d452f5558316943734c586354343237702b38563246377734713869453978477a596d33626362556d46464671476d665258593838664f433550694d6e386246566d79504a4374702b324c36556a2b334b3531567578674978654c434d7a432b6b49495472446b54776f4a6c58524e54554a62635a6757504d544b4d34685478396f6d556c6d73766c5273454a4461755a624c774f4c54504a5652666a38307652566e772f3749476d2f6e724c522b4659314261635468794f586d2b5a5568382f4b39304b6c76386e486b746b626c56637146675842684c6e306b6675435350584f336c532b7638553479696868306f7a6d52754472326b322f3836635950304d53474c4e504f376c4a2f74476d54324f365052694e412b6f4a564a4b704b535730516b784366473436314148766a34686135624a2f552b38766d32724d38753239325a4e6b3939634c31694768564a744c7663574a31545a79553039574c7355766c502b4949776856303071686479765a31554e7a4b446265636d6f777561617a642b4f4f432b694c4d6c4575336e45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17795', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d72467957346a4d614c45554c524d386872655638307a38386457647055547350484178516868433444704f4450654c53524f7a7631426a326d4e54744f4c676874502f4f4252497855326c586c62637961682f4d70533338335055614d3668685461385a32474e754569626a4e7a31503769395a782f6d34345a66644d45336e2f765a6d415a6446496d614873494372414c646d784b726b757232794269684976376c6d793435764b57346e48424d52524f6e55674e5353546279772f5136566f6b4e4b30705a765247346a736b4650733643472b6d4d595a46336e526e6956384e6a587a4c55325358576f3965335643526a4f4b7a4c2b33534d4b4575705a4e704c78324a62746542715a3542386756744153674a42304c39795042484c394c2b4f4331676d782b4a547769556a4c325a536c386b346252432f684c434844575350594b4b4b7062376176476b346664553471616a4d316f4a45647734416f39484b6a76466671507a704c634c794f6f6276454e464b727046622b357a355a6f3353624951597a365455455254326171374e3655712f454f4251527965394a3131704d4f4e46414d4538545752324654496e3769737353385862396a485841305470454d4d69522b7262525543754b486a6264524d4d387a5a32563074704a49594a63496f696f3643754c792b5562555355456e5831576259543956724c63694b302b586f38357970683471317272663534366f6d625532662f6375314930486c2f326670482b687271436952646a7650627938547434415035762b6f5358726d6b505244715a485373546e7158725a4b39306a716634374733316a4948545953386f416a71656364324e776357547a454c59417374785a735074316730706850626947474d534d6a6a42344f3168796d696d656a326b444b7846305376617a516b33573777476c63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17796', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416955514b7136746e5237646236555957557a326d646b5647556e78653362704e72505070517547376143726655637839304e4357496d4e6b6a74506e5378622b774764322b4c35774e53716e59546c4b4e32676f65644d6b7753384e4d4f554238784834445a704c4e74472b704233524d343668653947526263386557442f666d6b4e3242737254736346443446757871656663344334487a4b456a386d794c4576317a395732394e50676d7a37734a42426e4753466850596f2f64447478466d55494e454c397379446551534c784d385757734338617a6b55515756636f4d72445743455a54456f67744d2f7a55346c4f5a5544314b7a733578627454384572506352566738696148616c5372556f5071696d6130756f6a6d5a4d7278696958775377784d6f5430325530422f634f7069483048673634394f45384d4252535532384f443636326f727a486d3963793448474c4c78685967736a7179633174635339564c6f416751676f37514364646e6d447838484a5a574b425241616d6833734a676e736e536e576c65655437452f51326b416d5862705866587332686b726f32755969744e466378436b542f5466632f325853594e674e47636a457a5748416d65524b7a31396a6147316a634c4479434761775845347065503476674f39484a316f49332f4530696f64356d3850776259757255474e6c2f314652563148446f61574639534657574e3871736f30624f43584e6d7634772b45566e44664c636576594e447946432b30503863436672384e4c6a2b4261333168595478667375483865386f48552f65446a692f322b5651563168516370564955616347535873397a394f2f4e4c74634f4579364c4c58444b3047306c4444643155304979434d7349466946625475794476536f6258314346464978306d3631426e2b3741467a6e49344f51576c3045434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17797', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c7055632f716e2b784f2f3853614356586e4f5a622b37574d646e6e745957795a2b66317159337979497172425a4b4368417137356962664c7576416576616e4c566b4c5a354a756c30427a6151312f305a766257316b66476951787a732f777648655842746c507762453664306a4b524e316c61377138677578363262447132533571454f66773843476432574950513378794b545571476e564b5a6c486346792b636a6e36334b74565a386c6d7743326c4d6155366b3934556c34426a68706f6f7a4956756f6e72743738343469784c794c63306b33314b7161722b476b7549723276657a484b2b566e392f6e6d5066686674456a4d51335143616f324670683762632b3536722f4c454b78367077473952582b4972514d6e675a75374f3050424258727372773530586b796a6c534b676f556b2b515a48335365616d4249454f4b39706e4a716f587a6f4b33554551304b30427731734d7933654f6e6b754f6e5063527a7269414f5174782b306163617933796133434159354951504739566e65456d7646433245754138327755622b526f447750577764497652794f7232346d456f6f504676673877596b37774653566a3946616b46722b4d7778694f5177626a495862564b4a633448715846592b52334b4566596c4248786330725a5177393547774462704d7269582b5a484a424c344c63474e31634e347967483861596d35744951795a525a586f6b5a73754970316a33693751464c45514b6b3657662b306a546f4267756451774a744a576c6b2b6e384a63726a36392b6f6f69793139764b65514c6830627834466673753433756e6a73306772754d513350374470743563784247547073625a696f46474c454c436c4c5a67596947334672764b6b6b70684c5a4d427a5a6e34505177345771667863462f44644a7945643533674c4c37567134754155434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17798', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454168726b2b6176444e2b4d546361632f77507058636268474c46476c57384647737074516d547a7062542f73532f6857696d2b4e62446d6f57496d4267336549736a4c434e50583758645749436965727a594942357962373435336578304e4d6e6e59664c617956494a68666c374d3657682f4568684c494a48394e4a46524c624345656a2b7a616d557036593738667858314341706a543241493745682f2f43344c414a714d51503779734770524c6c724230355452544b484d543057737155654d6e664b6433782b3071695a783343337a4e765a7061586a5378317a727476737232334a305357356479624773395a437670745351336330416f5847385278467151635a6d714437334d346f3474522f434946322f4f61346b6a46496256306d692f5951465044784935434c73706a49623454564f78682f6944552f553832793264794c7a444f34337465475131712f61554c5469506f352b63335734514f3945594c667543596664344f4231784d4176544b7a4d6b62565764706859784b5477323741376c4332326a626f624a6b7130394966746b4d424871766d554131643033694e482f525754473970304431726e39642f46534a6b4d397343686e55554f6b427a6c4942554277355764686c576f7631314a564c63715768707a4e544a6146487136436f7245793073304e4a6639537838435935753777505571426c66336956495638427644362b417435785771624b67744d4e61484b5a586641382b713654316335556a546b55336e3768776f68576f677048395269507a584a497435644b595a584139434f31475a336566655379376645456434584a336a6167396f4e696a306b714e4c783462755456752b6e5837585277477031563154724662615035664d63724c547857362b524f666a2f584e787259556a4c696b655950467269366b544256377555434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17799', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d4f31394539504f56354e5556705a5249534e656c7962556a41737a6f4e2b6c7963566331726f383149446f593335423249554566657848632b6d75452f7a3650666d7755775444624d6645443836526e414a4a48516557494c30656e375830642b676658744c6b73496a4a58456b79326663477769737868477263317a51505264655954576f737836526b59617a702b7632652b496b49557a536d4c444e593856697437754473484c3777463863424b714a573932386759764f4c7578644e4b43494d41315871414b5457707a7578654f344f72627743434d6139303079646a6436554d55357833444b4d516a427457686c675741546458384b317747634b745867615a426b79624b4578777776465235323448364c2b34377234706a2f562b5962463169745a4b494b523975764473593665616f712f4f31736361466f4e5a78676a6c7232655939794e5a43336d7130626b3371422f4d64707061783263357a5a533457556f7a38625162334c344a71436e4e49725777433247447770414c574f7141397931647575374c4d596738704e4b393542446145664b61416f30715641615138314153374b4b2f7a6b384138532b707132364f42306c772b304d4e5939457a2f4a4f37584345514f67486f702b5043694c3478366948336a5a4c4e5367735a346f5a78354f385855542b2f4e746548717937674938334169375056634752452f73383250333536542f546457796878514f34547974346c444b6951666373376957623279375745484548564c786e564473546a41716c493974476a5755753943615a777a646f493874706a764a4f6e5a5a5055744935574e36702f7337496854766a3144536a58422b4d542b5a525047464a476f41785363797a64464b67766b634a696f2b74755945324e64614363742b576a334c48466743785661436535643457686f38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17800', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454176684e733130547a624a2b564c532b6e5a656779304243673731586a5436474b6e4267465453386b71646a664b6a6462724f586a4535582b456b64646457594946715a4b3437737a6747353846525949775458615a5377795455706763387658674b7a6c6d6a6635505165475363636970464349612b6659586559643974762b3453687a4942474f774e71596a744e4b444242793979693535497064496979364a33777855496868586c4b447371724c4d7779422b614530673372484a584b566a6a396972776155456c765055554b7772306a4d516636312b666f5a4a51656b336f6465393256786b6e504966636f7a3235313343705855322f7a78517a2b3475613563524c4d5959632f69623874384d4e304652465a354143326a56426655326e745932783767384b68736b726267387a314d51644870784769492f3750522f3053684a444d32655844617258465842716c77544937567a76752b444d79353639426f4d7576697a58575a4d3375326676625941694b625a6d6d735469665269546833446462546f6769476162754d75596e4935453769396b515032543663386f4b6b62474258684f73327a3967596b43345a6f3477387844633472524531515651454a61357a6346506432716a6730796f62584739624e5365456d557a7632706231367862417a4964463454496577787861457135447a6e766f77555a4a4d416457767038682f7479456e4659556f336f6258634d74644c2f7164474431737272526f4a6d5a4834714c4438346271746b6252555174373247444954626733597a6b2b755a7661544f6b42494245534f5778324c5364313175433846377a77536169717772674250377a58646d3755695a52536b45645757564959504a56344d375259596b614279643930716a75736777616e524b445a6d6e322f7172684c64616936696b5950754d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17801', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a566d58424231737a7648616b34506450774c4c654a7265447375314d57306f677954384e624d3634654f5552456e3242526d764c3339783954694e4b57444872496a487a79303551752b714f4656326d4c4a2b75497665667369395a43466e752f4d6f65735a74582f68526171697849667875624c4e54544f43444849513541704750724336744e4c7a37335244314e54307364583045634571656245762f70552f5638756d38546375715a2b6373325273573854634e4169454534414d3673686c454b5856326653463156506974562f6a2f78704e49627159536f3975453374576f5a42547336306b5774597374724974645a69544a6472505a6552436a334d45354932314f5734634a307a39634b2f6a524236334c303042312b6a50455736797662504b4a38415644416e424f72345977365157616c42656932796b3362734833333949526348576162534b776430556e5a5073376e5a45356e6336636a39613439696a6b33725a61635174756c416a7542436c41753753527553417654354a2f3152537832306a78554c49374c666b6e68334d79646d686237564d44557941735437736d5a506d506250436132526f536b465a67645167397473374f512b6552586e735455333064426a6b2f6d77484a507971386a302f322f38504f6e394639747075466752585872683977585241547058456354726134316d7a545267324c6f2b552b56447646574a78325830566d6f45794b456b664251425069564b754e37495a32626b76794c616879454a77744b512b43657841433935702f303261704b52303775397135455a7744494b3368696f75717464504c59315231554956684d525754424c795866734a2f65614679575a73435a36576b496a46347753395377426968327537633135506d38494472514d564f725a70776544472b5045696e5035336a636930434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17802', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f49756c79615a36336b384a68626f70797a4c57486576762b6b74326e33317077646d626f33715365456b6672394e2f774a72642f6f453449446539682b4832707869336c7364612f326961496d5534647a46482b4b59542f73475457773258747051395a555253377533574a31487a4e41504533494e42732b5879786558566366777267424a713033556c6d46563779456b764c42613661617641522f4a6d72497a336a4d6647536a36376b555859344b2b2b362f4249454f7a49446c79364b61325279674267372f2b6b49554561455070597a654c4d546e587348463642593762717749367a57702b69336f50346c63464e72614a566672444e695751725258734854795976552f674146754531706e752f636c66462b715a6478455a717874725730776f4946765478763645684e5039704a4f386233686b616a686d3058366f3058664b39534635665432713830636f3230706b775554746a42505a716357364b374e71423354636c4c4b396173706b653277497037634c554b4176474439416e6c4869326b71466b4d355478736b697a44627a6b5876493342664e316778464664623361577a646e66706d332f646637394333684e393534392f5237476d4a6472734b766644713861796951775136324e67382b796e6c6d4d6939533041722b354f3469326f495a456e337748485675674c6d516d706a6e61415536685a52694c6f6f6e6f3749395a4d45494b553958566c4670586d63735435657553616c577237762f6f75474c6a31794e305837655836745346502b5046674834535976314d54794361375374377277506f4d616f2f576a715a3677767a6c5267794a562b73654a34707a414e4951466849382b596d3237353036633965525741597236666343476978327a665741763139614a43614d385833654b476d63313566512b316873714d594263434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17803', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d5a32577674796b62304f69416530427a376f325a6452656d754838393878486e543062526b356a7773705475714e747255545172773539566e396a31347153586548315577347a346b676370374668756652454d572f65724669654964746b687a376139455176734f726f6d65703056425064436775493667617544726e487a37776e58545a635067314d48545371555571396d7253674f324a5437466a547837466b6169614d4857526b502b33425078374675484f443451596778746c55553075735931514b74353078426551316d56677958577755314c323454754839564a424d4c69537235465832346478557037644b53304375456949677a62524e77775a744b535054707151504c4f66536d5136736a5833715975672f57674e424e38334c4f387579594f4e426d654b35625a706b44555363312b66785238536c7641526470534f39774231526c4e35387a566c676649756d4f48495151705039656373754c704e6e32685131612b4f4b644e6a4838664d3564366c4d517551656236324a755852792b77615a3841776a635a4859355832647874394a723762705136736671794e58674f57754a4f3530304c463948774b376f496d6b46626a39354d79786a62476538376f6c4f36354e4d53753033664c4d706e702f61662b7147324930496d307065697644344f4c623668554678354142446f5444414944587a34343350716c6a2b6a50443344467a47304c746d47425945794e573547476555312f39476d6e5841765039754e794c466f645754334b6c4c4f684a7a677269774d3666715367745a472f78745866594257614d516b6a35314c6b6967596356612f4a55425631546861454538376262536347424b5648383042526b6e5a6b5144395146635771462f5a4b5144744f706746644378736a57497867396f4743462b657367366468465a6f38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17804', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e6553704f7165655a4c327a754f43464b507a7939465a7034755777755a44776d783170454b6e2b4e6679493339656c44454552394444483236435546314e644c676b6648435162376c4778434c76414e6e3241536c6d4a425a5739733132617368764934306c7634684d64634d56575548526f6f526a68314b367a473171413656634b597337706b5162394b504d56335945662f717053694854745a59594b44546136457a75393937734555574d42542b48527a6f5a6944346e4c463859322b554c477135706555704b686c42654b73506d48336e5a76777064736d7252736d443937374b696874714b504c554a7437474156584f2b4e3747612b32745571453278586f63634451526d725258494f74627462744b6a313932394774793361794f4351784f5048665673486b6a594f54516e32343930506135352b664f3178715274476f4442372f7362304952532f64425a374c506c52656f464d3337474b553253717359574977316a756e2b485a57787832536a36334671765a775442424f316d5757304152514a57524336716c324a5a6548376b53766e554f6f586f7a57623730647a4f4e754445304f4c564e6669572f4e54725465715a2b79366454685838556147456a764961397533626633496c467736774d3672687a677833756b41716164696d794f54634d444347653767362f6374644f6c34796646767a3957496846424a41503474634768646d316b6d6244433932464b6358507331727a344f7635496b466d6a30447058455478526866526e57544844475178387934576e6277754e684a443831656933356979502b6e683875344132463448587969537a6f574b567747617745465145686e364e6849413077712f6f6b4979374e796e5a39436a72357a336e6769734b44414b554b4c475370694e347537566e2f475346756539534f4b78484838434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17805', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a6b5a2f696c416b624539344e5a2f4e4162665471436f3355346c3061484f6345766a5552774d4d4c314e326a7548476f6648424171504455706c6c4c3051415148443451716e5936434f67686c57656c51365558624a704c2f4949332f476852642b74367a63786943714a4948394f6449595245597430746943356674685a51425865443136424262514f72465432454b5163344173316c2f4633564e38322b553732517944494c5551675443437162374e5462316479476a5343504e645a39736b386148746e312f49537a316f5a70575250593354644e6b486a32727075335152713262557866733176376a34686e42687336362f3574457a6454643663335867322b347a4658714f463345744c314f69686b6c3656646f39644f3039623557705a56786b2b4c594a4443377458654170344c4144396a5931366d6c437638494e304b4254576b4d4f594d6d78614b32687270356f2b36615777585447326d664b4d7459436f6d334d486d3962424a552f707a316a3742413963784f453944435a544e506f753059316d5664335a3036684e7168724658375147316c67677a51684c554a6a664e6d546d4e4766786b70536a5a4779384d2b4d7a394e653731637346305a39453942706d695a65792f446b5276475476567953347030387a41373437726c47734c7163477648354c736468524e622b4374794b45752b314563666e32456f4d5079496f5745534c6c716658353833355437352b37794155305334534948746a4251354d546253337666422b3462566c5847786c483042696747516a6b6f4a744245574530586179356e5552786a33746e4d7a69686d785a6e474e4b614535474e436a576262395a344f6e6c71706f5a495865556644534f5566512b663736412b36574b44474b64466743444e436871534c725431646353577a706f5857735859565345434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17806', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541694566774b43365141484c6854615168736b3552365a6e75786a425656574673636b396a33476d4242536a334c2f447a5352452f6e356f41307861545837365977496d6742442b756f6f434965454477312b6275624776436f6b706d64773542756a4d6d4a7034335a30587056687931665a755a666c41436a654d416b46636631314c6f4939385544547863655344596c375a4b434e6a47515537712f6b714253672b59324e6358574a47466c2f30505337384b70776b414f702b6253334759453269627269366e61424835335879785377565364634a4b78766a6462413547734d59537956517171762f6c314d576b67742f73612b69676a784f414468514c68516c2f63655259695134525a53336a314857386468574d6532694b7574357650494757647869757742694962395053625931715a4d4c3063542f4976416f63716e67324e4a3647396430592f2f577935634c556e5a4c347875554e6f4b6a776d722f785331722f733379424a4173474e4a566a65484555547033783469683063376137585038325630752b5338466249436d4f2b336a6770445261386571552b33545359524733467668575a73677a31674854783366693851434d654743352b742f685a584147366c4a6b5572417752466b4473624742454d735733774d6f78382f344e752f67386c6533376d593846695239704d61476b517938616648394934424f63434d374552707a62504c57654f4e4a334236484e4b4a6c73725254696351705855576c5a6a72433668514c66474c66442b763334615967357a527a6a43736b4a7256662f575a585239324663326e416d385458457767673348417579536867396b49373568324b42486873314d73645763774638412b39784873434f4f7552505870483677515a622f4b465165634731567562324268456a75366b7538614b6b48482b587a45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17807', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b4a563169692f33654451556d35462b7530314c386b5549336c706b314a515539756a752f74763864703652494245384f642b597277742f43554569586341645666376771696b364364416d2b484b4c41664363636b556a7659657777742b4e70375654595a316e6b44466850692b44476a65435777584f45742b2b564a366e394c6538354c39533139367343394a35314b6545434853567371727363304f46424b563036667662377076447271414246664a4d31524576727961424a6f64466c50495a4353557a4b795a354d4c48586e634d58725150474a3541547641546755572f67324f3035454a75734e4e41774e6472565346652b654b4a4c30325272394531647a684d4f34526239332f6c6566354b33416e7a7879446b444b735a586c564e6b6339754c76632f66534f7064654c594739327a767349434b4d414c5837384941755231396d784e49397a46385552576a61582f767243364b41454a4f5039587755624c6234394d774b2b384d4f4c7a726b476469514269434d5948722f317a65434d7956336b4c6e4a69365a49427567634f684459506759614c45572b686a516433546b37646d71783137334674796b69665a6a5a454c5a586454686b7854664c543747514147535655414b36546c38456a5a39575a59492b32557257717051754776336c414570393347517a416b356775726f5858597243697a473361556d4d46636e734438715a304f4e457172694a4467367a564c4c796e4e424259776d6f567a4454365951346855366f4f5a6a48616a345270784c7742685163535662684b2f49596c4a374b6f6d457a4a3346546d664478464c316838387062694a674a7171764b3744722b49413654416a33396a6c363359567639326b595a2b367551715a716a7854596757342b66764442335441416d653539547564502f7778394774753530536b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17808', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541672f767a44412b35457132544c497964436a69754770366d482b366e314f576d476533474f4b4547772b7555384e334a4e71722b354a4a796e6349344f6c37772b633548694c384d4b61473571434d6c554e6774696d6c6b59496469415039676d68794c725a4968615631466f2f50504a454744384e6d77323048365a4b3257617856454a792f587467514c70756d72584c357037744864784e392f6f4b385a444f504b67664b755732347873546c326343436161455a5a6151775459725a366d44536c4555307a37396171676833424a39687130786c646f4f59574c6b2b555766486468357165334e71375a4857332f6c58743144514b7241426e56506c48327839687378382f595055546d5a784931666f5274586c717376616c7053577850505a49664c76594c577666554e4f782b4a36575a634a7833547464675932764d3930514a7669416f2b52474a724c473144753259504a6f763233316d6c4355444970546841544e392b44413672645841535352634e686553764e35562b58654e6f784f302b582b56386b7a6979564e6f4278686b39543935582b6a574b5959483845794e6c553275626b2b34722f6d346d38464c30456c6a456973674962726d6836413246723546504e5935416d415954736364465370593455676f5854557a43656d745141317368704865314430615579636b62716f74333557476c5a6f7a32475139396263614d62327078665976494b6f4a633055346f5131626644646351787652636553334e5647726a3853374567536441574d376750736e6c39545530367851333071485a327034647145714b6c514f4a50366c4f3778306f61715250702b42774b51596771646836354e455646444d35497550706648772f5a53764948646b452b2b53787469566d2f46584f4d376978727234787046454a64776672716b65396f44585945434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17809', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454170512b363857385938594e426b655342474349636c7130386634756532684a483662673168424d676e6f5661364e4a557267556b685631465567425a75594e523676356873436539716269623976794942376d5561362b42392f306d4d72704a4f7463514458556431396b504b2f72685a54624f6f5a49335344464e6f69796d74664c6a535264394e554a54355469657730447a507942566531454152633156516c4663586d506875767a57675757373957583254487431733850614b78664c7146446c3064723547597536472b65527a4144437372456f4e6e6b497a4f6c57336f4145524b63696c616d7459644e3674374b6848416d48614b7644487756336656584b496a55414335684d6230464646586552776e47376b5430574a534e794e48354f714e484453486b5047626c364746304138437357366d39645374334a4575563454757a5836645a4c4c32315441346d654f45726f6f57395852424b7642474548705255455a306d6e3461767a2b785548316546417248544e4f337656484b634f736833703354717158333132566562766632756f386377324c75455365307435426a6866586c7a6d6c642b535677776f304d526a646b49676442326735754c4a485649744543527579312f34484464682b4c75397031486637497755784179557741437075666b78707a7875775278554c3376614845336b43725145636163737972467955646846614756344953595568466a616e79704c727a555a757a5679512f586c6a7767363343366a35553072356d69336f4a6e4d79426358704b6d633639645a707a6b6658494d35316b42424258655135325255436f4676396a51336f72617a33716d6b64366a4a67345456354e5034795a53555a74797879347a46456d61674375454a4c396949305156467a79795444724a31733230724168576e385067312f3155434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17810', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745413165465643306e4f473845334c795736536e5647374d4b32394f7063733378597a792b724e7447744939516b6557304745747756626e302b793948786c704d3531725373415868476b70542b6e46687659685a6f43623745752b674c4c70592f4a3673706531476d582b68766e426378554d454a564354334441576f37366f6971726973777a76706550637636456d64474c2f374632767545674c783459596e4457745a48482f41546835506e676b76614157424873347276586936702f6b4332433838694168764b636f493037377076622f636a636166334747556a38366a7049506d6a2b4b3170426247616f4e3877714a41525448424b695273746a7962502f67366b744262534b6c4b774d4338326375564f515963373774637a4b4d624b74305866517034393843456a6b5a514676345a5763715532684a50345a38566b6f77614f5755506578787635716e46653246653646417071397154554b6b66616776547a46695a67354464524a46625939584a642f346575417542397037586c355659544246757a423679706142326447304854673258494d62367a32326855747a2f4674554a304530534c76723366624c56456c7679714d6d4c4d7630474a48414e574a5674737532797a74766e2b37436e4d383647424b41324352484b41736c493765675a596f64544f3345744d6b5271375a336968445455622b2f4465574b54503842665947384d5844764270744e673043714c4a526957704646755a71412f486e72327636726b4c5a4e594f5951586d72754b744d2b372f71707a624b4d4f78386e686a6d5236592f61493166772f307457773849656a724d3352614241506a73417376396f38394374674c667a4e2f3363505350417956365a73707465733457393336767848675a71734c6a694552482b30334339454a48634839616e7975344163414638434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17811', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541722b5a7a386f6573474e312f49704564356d586f41612b4934337739467937747874383874647749426d636e76503045587a736f612f3843466a57624b7279344746516e2f31714e35486365506b566d6b6e50536a5357692f46307035504e3979424c5672695a4a6c53506e34326f4c30414f6b57665038484a45474c34414567426e694c702f3031627869786a43644c34705651705a61753256564c646e4d72793873674d6b72672f714f78625a7370673436676d7a4c46596d614e312f36476839774d32456a4e454669326f314f466b72772b346c6b7473585371787a7477456b68314d68736954507a763246534665707a496c314a2f666556525a6e637443594a745952623172326c4a637173637441756e6a71304e78575247752b566a7a553672556e663570303676352b6b6f614166674f66536d4d5559517543685548362b6b7767593978616a55584b616e46356d4a514a56457a71476570415a547231702b64357973534b3333717338515841644c754e2b7a617139453343323434357735555a4c36574562724a6d734359443368463939705a5a70433372486667445768783668354a643347726679614170314465715662672b2b33774c5933515478474d3264354b33734931684e65324236666275786b53417472676e6469416834586a4868734448643071684d7836776432785175516b544c6d4656566373714e4d30384143764d6a445a77475a4a3147314d6a2b314435416d4a7465684d69524877635641302f58644b56773849546d46566471725a6355674b4d304b4c76434f68493467664d39567254384c6c763365446349534b726b65525745383543396d396e43627354664534555659326736436c59582f656f45746d4e6971702b56586c35466867544c74646e5942614c566c3346367739395a743279436e6659416a487137327673434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17812', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416a74746e58657a397836467a776148422b6141386f696e4e3979444d7a6e6b364f6d7a6a5a79626133496c77335978556442556631655a38574c427779586a4b765833592b62564d35362b2b54764230544f554261656836754c42784e3175597a39454a5649555176664b6a7a6a583634744b507039696563585a34626e475a4632656350706b58753763624c4f45494376624764764651525071656751474c4e72496f3245387148446950766a52532b2b3852326b2b2f346a6b6b38335257676e2f4b554c43476f554138753556426432767a454348575a496f62455671795876564e31327544625a386f43532b756f6e7148753745554a73356e6a6a774c4c4d797646703434712f78456f5465395a5a59772b7849636138484135546e31785a756d554a7a426365625931566b6e46554e37674c32373745564d416649536b586a766d454d2f557379383379415a6a725464794c5051436c434e7765474c616838306552522f746b395159503070504b556b446a6b6b6d453648555a7469566c646e6d7455315945544732456f50786d6c52383446654a504849434932706b326f4f344337333271794e72414c754d4d523133344d316b492f5356714e2b79674a376e7351504159704c6a7965694d5078714553565373644863744654334736556762587a4247476453613331686936632b54633278644163794839497a3467734d65354f42766d6730667959505a56704a676174556e4d792f6247596650475a59784c69746347587059536852582b58587a436d726f655a5733625269314b784f75566c436d5674464a506164465732686647504c7a57695172693275653159524c6e4a326f34536c2f54517961736b697255486e646b4672536637653170645572777533464754705562615578597a7365377847765a6d744230676d3837777975584c504a6a38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17813', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e42686463524f6b754857746f373139426f4533334e383333365868416731526f61373479533532704e2f797a547455304b6452545832613146796c3839782b564b78646c48312b483259693936724d4b4d6b5a6561783953643568665877314d4954695273437a5a6939523147372f3233553257472f67724d51656b394c4e414d485344576d337643687168614e777969556a6e477a4d2f37586a704d6f31523732724f6e504a7a634d315349417a39324573644674494461544d5033435a4f6f5670536461464f704c32663541416a4a685350367669666261416667443670464a684d492f74714958497969724c6a69467332376e4e45746a534b655a394e4e41574a332f435452464c35363436643362794347684f7a2b662f694e536768756a72706e4f766e376d4868596d674547447838375a54556a437475336e426a42672b2b5058315a79695a6f78702f7064507262766c42744b527179426f55755a575976626551696837796464576c517369445234584b4a4938617a6b3866684e43506e694b472f48363570523031386e6e6c735670374232753364494654786b442f67477039732b39497a704a304a52476342447277634851666d5a65634f4d526b74327374714f7a4572624d564868622f68737a68537a47794d4b703741647466423747647867624f7544696b5167686863783361474e6979414e48764a373054586d782f2f4168416f7761714f2f316679556655717838655554676e706c744c427341334744516c454f5272493269534a556f64415a644652545763704e74335a74587954534e314a704b484951454e2b6c2f68476d33664c7356477952686d532f3166704c6e6c2b4166644c4474634670786a47466a62425a512b46356a65443062705055586f4a653955536567454e4c476b4875544d5456374a564332324e655773536463434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17814', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541684349386b6f493475645471625a666a766d3834416f4d68784d70325a796d356a62726c314175376d4a7a53723254304d67584b4c41594a5271456b4256417769475a5358314a79663445314f75314249744b70655779466377444f37307348504c67616c52306d664153675433364c5677636b66314968594b635363517a63656874633631574878702b63566f7966417553334461347a666d77396149644173572b4d562b59672b436d2b4d78372f342b30396d384b3664377533622f79646273447330504e68715266766d53764c3933756a6631726f4156756353427a7076516a2f2b7035462b684475786a4947526866783730546a52585559446258445a7244757571722f4c70433847736d795a70577a415a705053446c33495344703471694469643461567a4167773454563631554a5a42372b4754417a795869345435376c324e6e502f3239416148764a30474650344466444950696f6264547039306e39333133726f32385034613563516a4b47505a3237626e713148422f68456b3361767853522b30796c2f61356b684d4a4b73746232576538545a66386652547136355a65714e4f4165742b6f4c57547962574747776f4c62413267504851313964506264593975674e72634b4d7231306349785937467a31515953646d4e514b516d6736426a5858674f4f397a53474241485371732f4554704b52704b476547784b374e6d5267726d7a676f6e696a31624875627261334434687a683964755a545169713538664c5a69314f794e456a6470743035567a4b31647439324a6b434f326e59674832685767594444314233453762453464556776356f767741567761756b5a744f526a7863545a346862766b6a724a4431483965732b48424441334a4c54644e767a374b4e39684c666d58477876544579544a656e53756e3468546b4a5377476e426b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17815', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e32564e61326f2f3457467157794a536973714b6a4b57423561754f41596a46565978517444542f657173674d47314543314d47356269314246443067345a6d615a63504437332b4f5937464e375a524634755153414243612b41586632763361704f4b57762f4749764d37334650496e4f2b755446774f35584a6b49665a6a6f416b4650782b2b78542b736468464a65397833426f414154697631544a352b77336c4478372b6239574546567847763251357341456d4f4946444b503867574b556f5a4d36666562326b554a682b72346a536838494e4841484156726c68486c50476165534443576659356e544872484f2f752f536d4655735143573065396c512b754353395a7948322f5365434359547a4d6f6e7569585962466c4169556d59366c6e70624b306b38514a6b574f46484c71776e704b4a37496256546e62624468477a3643393973696f69567a6f38327a3571784551646969322b584b39696b477a616357737153505a7a794a7a4f6a30544341464c6234424134354c37425350725133764d654a7636544541574756556d704f334c386e5945564b775933744473414c3137324c526a377a616b4b73673070384b4b6747456a31524f306e4847574930666b3441592b363778356a65307351764861534d574c6f35396443434a494835316a4878486e45373561534d7837544544757635324b77364c73706c6d37545850337038375978666e636e673551754d4f4f6972547546323548526137645a51335a51663273574265626538635a4345786656514445543070685439374e515a546f424a69394e547a692b6c50486a326a325a336e4c6e5143614b6f7162665a4e4e576a597576707665416b306d527578773376395a57314e6f74423374346b526a532f6c624f37544d2f536b71687468326b7530657a4c6366392b455a3664703067346b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17816', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c59735275562f73633646507473734b7962613868597a41455770426b5461672b61476377706655496e41383174774255303877706d663959757771396a532b674b58443376724d686352656448676a454c32496568754b6f713759344267636377596976643868635444725765625871523378724a6f3447756c443562446b7143776b55546842365070726b72623331595957424b33704c4b4c417831684567477557316448723268346a713457754431672f6b30766f6c67367a6c766a33704431313341387739543747335178434a353346432f74776f55566d4e673131414f4b7777687558744a5176494a3458356f6d5a5250454f4433706b7959396a7a4c3343516b4d75454264422b7a477a686376447365632f774b66654547344430686f454751427646573661383149417a5443763336617061755439306e6d6e527a5a2f6759594e5641657455465832777641544a745377395962746149586f2b33513759685043676f30346534466a4a4b3334676575564a532f52316c77736544772f66464b362b484e364d386958774179362f6a543673644e4a52774546466b7856596f4b5941763444373242356341755647556b654d6648796750696e5339356b4775617a7a7849456b6778643048342b7748334a544e73533471323145376a476e506e76584a374f677141476577507266474a68454e6837475579527a2f69687a313367587771577535335a7361326778364f3359454f7a6770507658564b6f6a694b4a67744c4566395643774a3039705a757a35453270645a504c6755684b517a4267622b427144417455474d6c5646426b492b4d516f6e34394967417347707a35714132796e4d54784736556f323356763065536f4947694d5644576d362b365a6d477735335774783666724e6c61585359306f314c69744145455749723839352f394663434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17817', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541735961432f6e544459744970792f4b33366f2b4258786d72677a5531374a786275433344326568714a383631786263506137463046544e6c646847366667376d4441736c49785776312b77592b4f79647661326750394f2b4c574b306e56365350755743744a4754382f3477484a477a2b6941624b3766576e75612f76384f4b304431674a716d684655562f646a5367574b69624f4b6666374e494d6a3833522f704f7944636179666d545163307353595750334963414942484c49756b6563435654634f7661306d532f4b44466159577a4733336755356a4c7930775a7456644358676c4f2b3079356c5656344b4f4f4c4130625a596f53364778665831414778434c4863347a543662624e2f6a32396b484e5652766663307939453836547238363239376d71554e683763437a317376626a342b58756443695258527154686e4c59514d4e53343641344479674c65334e54753930316b6f4148493130453531765a4472634255634672723641712f4b6e6e7746663252796c3446565847774752353968524f50487347715761314f76414442456141336f3836637a765232757557345a2b5836723642314742507a4c774667373753756f4a50586b65754e5a762b7770537579622f71432f567343586a7930596e766f4d754d47466141572f374f7469352f515139575378566d544e6e2b3154445762744b4a466e6e6a466e4642515a5967626e717438376379743770435870744336495a76776245384d516332656b76506673535171716a6d4132594a6a736b4552666e7946776353377846477068736474344b37335136314668314e705a4c7077486145417163516f6e6635373875414947374454594c306d524636646f4b326a457247464f4c536f78766535772f7a6c465564342b4e512b69654f30544463636c536558614a595555556333744f65336763434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17818', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f37652f4b654a61314e5863363561774a3951584c424673596f594772787838674f5a697141566c5a622f53436746524d6c4676704742614e464d584b5457366f7a436d617274574c3237742f4b4f62614d3966356462566261424a504f77643566706e4f75675a6c7a586a78735358554f4a4644724c2b7958613556352f77324d53504f4967425736664b5a64746c3747646b77396250594577446c2b3242346648486f6d5463464d59544b4230394b726441672f54593547645a556a663635732b7846734672506c6233414a4873622f622f6b6c474f58716f424d656f72693456484b4573545a6237674c4268553831734437426761586134314350416968713064555771393553357451694577784f553539546a384347647a6c6d4e476b6249584d5549466d7235375458496f485947396343572f2f374a314333544959395946594a7350666e57474e2f42726831394952676d6e6836716956704b784c4841784c787a52734256354356437146762b415743704f6562427265666f2f497936553867566e6b3543646a3664666559673944464c613646614c445071443630477a4251556e3243526e487434454d7366657055493370386132734f52454d542b783733436b436272776447717854536a5873466b385435484369575643515276397a5953686d4f2b42316b3131686142534738545a4e337846644e6e6c6465596e467452664b4e7643577a67375868454c39462f78694a6f314a41304637646d4c4a41534b54754531474b6c4852575a70576c6f467070434b782f787a56494d55484b4677304b58586f656363355235794e30527a744373735662386e5832317070346c57534e466f5a496a415277696c6763314e5a73506f5354344e2f457934744d357a743970516d5a2f3169564a747349373262625a74543675556b2f7952664c4d4c355755434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17819', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f754b5a516265476663582b30583177582b59396d6e48644d32386868426b364a7674413176506f4d65764e72516e476c382f4d6367632f656e666148695a525033454c4a37726752456a6d546453656b75653051473856356a2f5673443849372b66303853796636346d687458595930453474387361795a794d3435736f445877764c6c7a435942354c686d49396341414a6152377047415a664a64554471375342354d6a4853724f6c4f33623839462f556b4f575866536245457061377462365a3650446466324e396b36572b6a46383834514d5344493747356f6e596f394c4b52546f2b494a78544267393171497741626e7671537570634945494647636a436e355a7566354b526467522f54484b7132574f77765a314e666d3957704356582b32366d57422b597a584a49657a6a4a676b39534f6e336c33332b556e75644d6a307076744459433651305354784a7a67514c667a5a67445a612b526749763670453739356c6634734f6a597847334f377558644734624e42744a38584633585453694b7844713957596c4639444a5a424d446e65686c4c504b6d3655314a76425a67465859326337656b5671506b72307a774c6e6f4f77506d70487073436a4f7a3176304649517866713249315a503055736869345079567a54637a356d6a3078794e2f397530323152514d37487a2b6438784b756c6439366f4d574f3747516844433247344b6c30716e65577642394c3148782b6249534438717178704c4a4a314d6949736e48434172754f536772664a75456975734d674b59735669437866385569756a54703230623063466231766755366d667a4636454c6c5539317a7a4b556d6170785873657143314337596b61754b33364a514f524742514a464772326c3944684f614d316a497738722b437058504d4e494e767035534b71614e444c7062506673434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17820', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e3476483534354355387443377052617464704d74692f634e61584a7250452f43654a7135397272336474375a41794b427554694f38744d5a38534d4d7a7474556477736f64722b4b696e74566d6564556b565368517871506b59627072704a4c6a37674d706131566c49394c4855744f3630312b2b35364a673978645a71566b75725232472f615357506e4769465678334975625364505148564f427561613151784171665231416a467161356e65475953717772517773542b59654841624f47445570662f5a366c4575705742314d463442547531506e585242766143484f32774f475131415749586c622b33496e52344f597055325a464136526258776e4d667769704d6e622b6e574e5238427631595247456375586b6f5335492f315779504e696d7172316c4a533532544d5a327062325a3276335163663573682b485437564b756e3872744e71615176756670315935616955385763427a7668456e4868416b4379683531616374646937622b31592f474166656f2f796774504a343658536f4f5a6868303371363178704778596f5a6336314c6f305567736f4a4e7a4b424b36486446796f63774b6a653637436f7a545430574858364534655362585062772b3257483442376f7748486245706950556545704965355a4b57545959425949414e43564a77346b4c4d4554514e3764746e625873736e43782f7975455a51727a324542475930796b784756654f2b3755397035626e315834483136704569694c4a345857362f65316c447058414455316c447772675970552b6d46744333476942427a2f2b46442b6d3431394f377a6a35726449313136527970364f6168797a3355664f5146706756702b65305756304b5379484262784f30366f72434b5644504e764d61424c765563757a313932346b324963484266693677332b6f634574627437616b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17821', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541385246694d75494a423278544938706564322b4a55502f66436968686f396e37536d556a43504762707447696c67435a51516344796a476a304a53565937794d482f7562562f6a76642b324b46335243594144475370654878382f324f764a6970306169434473342f632b7a3052776c35624f4c686751736e733159396e6c434a312b38776b5a6d437138796a7a57376c395941536548734c4f3674344a74306e52316b37624f7551647475695766794e78547870723551614747357752575743764551726735466b4a7578585169453061694748546239324f74454c564878445048383355356b6d306f64666c5a6269494d775245546455346c596f4c425762315a49484b64667a6c762f4c4a4276665870546b776c7a7055727a7359464d4d476a39364e5468474a32526a6245636630676b3554382b55716f656b5052456959656f6a77516b54346530687232556f6f6a546e424a5a746f6942572b6d42556a2b68765a42474d6235436734544362596544487a414b714167562f456f3373434d47476d78634c48567173332b634542466a616458646d446a64756a434d2b3050424a3836366b32387a51346d5a4f485241766d2b48494a3033576e5349785741704c574b62434a462f2f5a596b4761414d2b746979495462557048786a73506e706e377a6c69547743694d75716c6c6861496f637866554142744e72663330616e6474643676736d6d6e3452546158384d5a575a48787a305066555274773966744b426f7239764863662b49347662636573717245327a58394a6a647a4558497a516f326134752f7439507833646c39495a6a704d494f596455504e68473372704b644f3974746c33452b6e3050622b75516671764b7152384944676c7848727469572b465030416b5372506b496f71636648537443794f56505252586e4846543461747267584d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17822', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454171504a5371516a484b70674c374b63743270582f466875634a2b45482b7470573247573143623569614f6146722f39586a4667645645412b51304147354d7a676a2b4c52513863724a4d5048426443596c48564f6149636e4479384c4339756a446a4f46504e732f533379644b7850315a6d4e4b6b342b6d4b68763673784e7746304a5a2b517241656e48386d716b4f336749746b4236746a63324e6e5752484c622b763466687a4436474c616a4e533471776e6778636572454f5a524a31366a7a5273363049782b434e764767436f6f516469446b55533364716b726c4c37544138697a64417055627632486364677659772b386e2f58304a6d636971756348616879566139366865586c7076395a696c514338345a484b6a77577357517673732f457a647a586943574d2f6559324a475053442f71633859544b595345414c6f69733242484e6a6636493261696872644d657772784643376a7a387158356258675433547a516a333954416a5164565464486f354a507a464d617037517569537164472f4d4e4633714151704a584a364e394b57623433506e382f334b77766d6f5362716647527a4d6965495544722b49784d64653078367a754b62714873376d63723078397a5131635075384b7654625275783556644f4b5a7a49734657772f636368537354462f6364394c396c2b6f4343766857444236656a4f59694b4459746c4c58526c69356145704433757471506455524432416a55394f41464f557542396447644b485768756f3644436c72516a4134646c6b5670776a745374344c365430796d4a62796443364c514f4658483643466d775a4c654e78664f624c55456b626d744c5476676f6f6663754439572b51316952505054546f4e6c4e44477a6679376c495a7358756f423567357458745738636276536747326d324238314568325a31686b6b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17823', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f4e73657243456776717837554e704b734977342b794a5443725a3444384f726e50565273506335523947524332384a7562584938316c784e3759483151456e6a653454587365426a4c612f5a2f427a6c692b70373744345a7644787137766932766c744d554343616a7a584855753056635978464479424f6e367855614e347a4a657857784f37784a5258534b45797a696b4c573839643768714845797663486d332f392b53396b52412f38566d47564a7176304a4b6f334e52546c5964346b61544a516c66615836634278465274563658445072696b514b3243747157594f774539384868415a354f5465443467734658645859496f72714b47466d5143774661744874564871545779634f5a72344f496f6c456a445949495a4833647a58614e6e52354c50724e6e50712f557138653745516c7376362f63786c7857652b646b6173625334636963677838355a4535724c4d3632774a6b7136667970706e594552714c32513764435956533474416c2f6955344964706a724c7735364e55357071666d2b686d4f446a4b485a6d45462f6f7567354d4e45504734696657303977396f3769684a2f553156636e4b684b3633427653306e59313573436b6c6b2f5045546c397a364b7350486d77784a536c7a34574b5a39656a43585a47464e6e4773357355766f2b30503433506c2f696a6b76786647726b4967333353416732792b4738363374736b54344a37446937634b645a726a47383368626a6f314b6b674c5138454a656b356c2f31546c6752474a56677951442f6a38614e484b33452b57374d68395763423077766f704d3270494f41456777753150377a5a494f747247555772416a48417a4e746f696e72777a3237342f4a443436394f4e354a74704236776d564b6b787244506e72436837465053456455334d2f4c50727539714346507562642f2b63434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17824', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454172514c6e343945796e697850776844747463416a3468324f696466465a336a416e7947685963744e62706f5358644f43376e78316679364f726a644b2f4d4b686177586f6c332b3351354c756c7638445352626c7945762f6352694e335a6c5755576162444c703451567872585551392b66536b764e664a722b744e79777169464b4635304d515364316a71466e526e504d526e666a547037644753314d54486d757731322f776855736952423375714a4f57316a4f46424857736e32682f53652b6b31374e63624147742f6573744e7655553942386c716d376c62453975696963616d796264786262766866744c2b5a746d5278416551656732414e367a65542f6f564675623358565a7443396d6a6e4648676f646636336a56435a6937504e714c657a44795158766a39476b70484b54666c4153444f49346269614c6c6645384f446d3761716c33756d332f68736e6e354f2f4b353065554278656e44705279436e4e2b72592b4132777334326b6a2f37373847692b6c786b68363070307370364e547551544d42427a6b776f66424d377264477a6265393268486773722f654f6f462f736a784f313867337a5a386d59666774747055314a4b6a594247716267726155302b323243424e536d69345a4e66746879467a4d5475636c46454e545334684e6b786f476a4b6135695677654876764848314b5048623444615a3273326c7577506c4c78594f51794a5152367a59335433552b74543259374e2b427752596568466c5651467772763775325851676d56345574482f6a355448794c396d38506534644a74716849324b574a77454c6d2f316c2f48316633685656335a39376b49366463736f4f674241426b55667453316d375532436e587a4d416d634e4b434e7862486d6e6a314d3231637a6a4830763936574b727a5a6c3432486f535546764d57734745434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17825', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c5767345a2f4e326f4350556f326f6578582b6830513151597a4475674c5a776965515a537879686b6e6138754a535279335444723461614552304843584c66772f487a35654244775830345a516b64766333797034353236786545574e38314b71526d483332364e764d536c54426d77562b48745064736e497650664977553872432b796177366643754636342f54536d796e71315a69726e2f3969725279597869644e68614237556a39394b45593139623155374c514a676f6e486e2f344d75713861596c3768414c77695751412f68674b626362715139734732702f4d62775259634a423749466f64555665696e4332524e79596f704b394b475946426d435244616549687a614f59487066776f7a466162454e697961652f62706239614a38437a34775548576d64686a36354a364c33506d4345496b556b47566a715935354353596f4b77794f2f2b6d74556749582b31735048703141654975394775707464594f4462626a6e6d5a46777156337a7972395971735a4b6a73613976346e77544a52426d704a6a50516e6659513369305a437a465279566b7967635331317a4b63352b5a3378586251724c656b514f714c4267464f706156784d35645459346970427552304e575664326f383945516a796e36554b546a79686c6c383458634d6a526c7931384f2b35736f366d443468646f51767339355176467a485259597a776a326a4f497245326a797455444e345651544b6d7632506449477557694256365a707577656f564b777436597a3132554f4a30644b46324333754248713136476a3450392b44733970535a44496f4d6a3667724e48564555414c774b3931444948726f50675a4650313033425639335842636c567877784d544c65622f7a415a38425964504944586b3944446432417746553548546437614b31566d306c435a74504a752b38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17826', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454175397842696c576b6570377644343231574a44597157704a4b324432754571544d7a4a42697a7063617a6c6a614e31474450644d31452b3963353969792f333576486c4e6f70635a4235492f6d305753767846302b522b572b4b4951434466506e314458596645524968675646614b70363644724831494a4a51746f36536d664c756c4169377874472f673159626239753139384a5835717a62674c6e5164306c4459524d7a77505a537a344f59336b694e6d6a4c4f324d716834514b525a5357434d4d754e646e35345536386b7330793648582b32464e6c76535249543562745957674a5949713059625634694572422b38594b49456f355531706f4c4974625a784437724571686b6165343355756a6631514853546d64586857506e4656477043506c637350314c49534c3838336b71304b504a41414a37664e4846646644496e2b484175586c76696444546137346c2f6f4f30717675593538574830366d61516976614e6370486d70713267367876327a58414773475179664371556b4a43596c723949396d794962506e5351735769674e73676b354239784d576c63345a316864374b62625276456c303375544a472f75757a794a4f2f566f2f4e4c52696c45496f4f6c5532544744757761726f735531446b6963306d5941623678597870346f4553786b6476716f48494a33546635526d52743842343851714b7a466a4934766567566d656837324a544f4a7a77396e4b797642376171714b43444f62682f6e676b706f482b6c4e39366379746d766d35584173774b4c5a6b67674568756d5364384d7270562f79596e42674532545079774835515475366477724965613872425144506c506a6b67463973437471786f466249614d77614d4e41416b72614668387673393070473242557655304c4e69764b574561324751667349776e4576614d776d6c38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17827', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541676468393565734653516d4c4a6c45724936534f6d464d2b726a6b505a364958774a2b67634432496341717563786a647966734a51464c414c796b4665335a627142746478625545575634324f4d4c6f74385253644a674b356139474b75746759304d50703333663350307234683633427a74706530396b336639477550774a2b55413738545856677543706e6c444d3239372b484a645654536e366d4d2f57315253752f462f316a4166663469517a34484f3876582f724232355a5278344e567a36746946734454534f6b554c5a76727978454d4b37784176416c46343341647435736f396d33774747706969746e4f465353764d6155796c7879795366432b54616b372f7779414b41757570315650683745454663393579334854735373796e4b5176687a5539535a455530733751657a6a74763851784b4b69374c2b525451303838312b2f4c72654b493247434f4547576e4c627a423552775255434a57734c5872596d48434a6c6d53547147534372574b7a556e743554566d58433378442f79574666514e4d73367459746741764d3554365536562b4843654452553464344b46676d57476d43747775456c555a7436446c307259325432396c5564673073394e4e553130614f634c4d384a39343441334349744d366c5072486f4c504b7074354b7442304f664b4634314d67676f493439655841477475792f64554b7a365345324b56346544706a6477386d7966796e6557466f5a466c534272796735434b7953425a306c663351436d51656e49642b3258736d46467a4f31697a57745253514e5744722f44366b574e36574c394d457a7a75314e7662357037683161616c4154416738684749557848444c434f646143627054363635707a596254386777365258312b6e37622f4379464b457a546c7962444544765570674d737a4f2f67504a5744756b45434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17829', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d753230793838425a4838643467684638316d67726e424867366c454d79723677307953326c574567514e33497458745a4f5662353643454c424a397336635856666b7531472f6d7164314d68556739766e326f6c6c5a64685061764247696a6b576935796d336c71757a454930686575454d6c6751644e6a7a2b3863587877504f766a5544624178476166353167544879413241494a37747667623849526e393145457942575934354630792f334269756353784778516152396f624c44635058792b7175593578584c6b4f676f746e68547461732b746c53732f787a617a3657674f684f6c45723937332b5969546c6d6c5a342f344b51624f56475066426c4d754c56512f34704832574a4f386f7a58455a6a44487670655875676f2b674b6a496d50674655596b7a6a57674e306c74594c6374774478585a47397145426a562b36366a2f412b4c4737724e47494374616f465656505337427969335038337853684d6b2b59526d7a68784a46486b767348436b6d44464c7558485978726f7730465a5059696b6746625062396a7552456a544d453145322f4263567177395472346b622f6f724241506879314b364769365044306c6e4947506375786f6f4151784a52546c6152642b552b6b46315a6378496d3969746b67564c725a4d44542b2b506e4e526272766d4d58326e773968774279614475594a6977624443376c34354e74466451303545734831466e6c613061732b65665a484c636a704f78426d4854794a57476b3152356e386e2f2f6a5244732f4d6a5a5a6c58446a763749502f39356b376b7771424c636a32586c59594a7a646d2f38532b5744777a7946596161773833786b6e5a4d716a5a366c574e356f34594a453577425256612f366f46455845325558522b54563167743549695a686a316b64492f4f6946706e61794a4249516c49726b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17830', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e41412f75594a31364d592b6453583964316456746d5a43566d684d51525477646d35744631394a595352574c45492f7230396d69394e324948375730665a663454435169476f7369494f4666714d353470614b6c5936386a6f722b6b68734c714f727264517133416368332b57414a58724765356c425367314338543865526d3747726a6d67776978746c363455765a63704c59396a41636a32346c37624d6e344f7a3963597a37556f4d7a646f6a54494f7a3348516c7833436435536979446262553643356b58786f4c6d4870666c53663758754646416772796e436335677a6141645a4b735261517335344647453256714c4953326e48737056726154774950706e5355664148324733734a487464436d335243504730734b4f50666e6b363654724b47754152384a373561666246626a7a5267364c5932684a54384f2f496b6d6c374c5137614a5150567a2b4b3959637355735a342b7a71774e51776778394a70433565567a31727177745a694d3363694a33524b736175626273503347446f742f36534637752f493165674f446c463453386c48774b3439497057615231775377507930327772713436586770455a696e32434e364c5a75345a4d4f7a6a7967724a745871326e413872454b385058684a5a51564e556754413068786946466a666441302b4472414d7965722b346770414b46346e544f4741796543594e4533552f6d33324b54794b5a594e32337868315873476b61787957654767446e6561674c54652f315a6b7365434f794f70664d76726537446a34552b586b4c366e516163424e36387655364e7466766a516a4644774574636e5a54326d4f6f697747477a4e344341344e56306866793955793231364136653163714f39743236692f2b5542574e79416e627130492b374a44434658335352436665436d6f754a7930384347794f4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17831', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f756e3341596c324e455a6a517855706a59786c333643376e64625a6e47614c636365532f32676e5232514f7a444169534866734e2f622b5341437555746e495431597774544d2b5139335964577a307279517669594d494a704a6e6c443437452f78734666576e587a42633677494d61745a6e5442496d7069655a61474563442f7a5a6f4f4947676369454951356c6f6e6b576d4b6c62456c7076473477596b2f4f3838515a336b4333554756647a32703436744f49345236792f434a457376527344394f30416a4335444c7a2f666830707a566959376f4566596a6d6969524a37514f686e7255714662384d646b2f42576c787178316f335a2f676f4b6d3652774d766f4e6b78474571495358644b784b76734e4f385a534e546d37784c68715a4f735544546778536f706d52525a4b4f64354e4470436c69517148556a3237576d303668344141654c4771684131367942516c57572b514f6e7965376236615151442f5750676d756c76744e586f6e344f456a424c4f6d797545627a563135304a64683870316b766a7236516d76667249556b35696476564b557937365878566154554568547a615344415548326b56362b50545834323534705a45663032344d787a4e71725775614c6c574e502f62554859656a7575536d444b7934705a427279737050353543664959395256463376434a7973777277756f557a4c676c3133346479614c5855636e354a58795a596c626d4d6d6d6155433058382b574d505946487079443665766369445a4272562f4e3673317649754635614165514c3546417753474c5056504b6b594d6d5a61522f4d71674c70316b632b6368344468374f656f6c4d4e746f357677514e504632785a61773136415344647832497a762f3542724554586c396d47303630623943505847545976516a626e36673545564d306c6358786e38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17832', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417237696a676c68775172473655425a422b746d31706e4e324d6641684d56564464636a53476461424d6e3451654455676d57736a334742707a5234324468773769556770794945522f666b79775875753457766e4e4573594d64657571374e644c636e6e354e6a7245337564314c6f354952794e46656e37704f536470342b2b666570344476745a4a77306179486747527064745948705669336733784c7a4a434c3964324f5a46726f4966774539543263387965747a363170656b53746a377555384b534d792f30636b3032306d526c6c4f7352475151364d546b7a4c53736c76357450434c6a30556c75726d57316b614f4256317563415061626b704f2f725632654c724466336c546d6e587563764c797a35646a32452f63586758587144774b6b6c51334551534c78464e457867674444642b53347a4168735a4355523063786c58544b3158554d6a55766a4757617a523136433176343762474e4f596a5633757a38365367594f525149777730516644516e346a7652776770417a6c70634779644274414f6e7845716555696653673550596d4f34765a377145314854336f6b51737268726d4433666e59444d316e5a716e4c386c674e776d756d594f4d733561665271323936485233316a3663632f4c4b63376c517653544b4b37307867376d553332366d346854663275326171322f444a3147793962456c3779312b6443797861426571747167444461764358356b63393369714859777667454d744d696c3230695776446c456834723665456a4452736879517641587a36736a5535756273564e2f6a2b4d36684941723335676a526a6943496773396c6f44532b736d50352f3333394d5a37382b6158684778566c706c633635634d7157466e4755705956762b3674624431424d4c4275396749464b4a716451726b704c317a4c485356746d66647738434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17833', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454171344a616b7a6f4c524238326579626e4a54654c326544684f6a44474b6e56594d6c6b432f6f386f44502f344151744848303439684364764c6a736458533967465759332f686a7858447a56634a45705545536a586c4c7749482f4d412b387231613865704465684137324c324f573869314c2b46455679587055656a4d4b6f445349705a776e7a48336c6e344f32357653487549593052345978744e5156563130514a352f724d584d36353369435074542b796c5a6549694c6a4b6c7857374436736433383569345044647376716f43645679413459744d377144724f65542b6e465951462b7464426c574b49534f51727761754b67693743524c376e454c745a586c4e63764d556430533731776b686c38744d6365354e4f583578795458532b34765a693044595044665a572b5630732b7673775338594d744c58642b77426d55426465797153797630622b4b5132566551737a2f34616b7879316f7662564e6857664c7576664c7867454f4b344e65706b505649743232545057576256636e785161474d574e6e375848634c76586b446b53674a6d313856475832544b584f6d30656e43546f4c6e6e6863794177336a76676b713043776973554370513746464771656d656f2f7451582f4b6a452f387259486c2f7342424f6a64434d5a367a6a5553466637387531312f78712f664f6c4553784c573655446733665356544470646d2f66636c493574547930624b6c536e61364f354d6256306f455161373234774138434a7054566761703056422b6a4e4e6d456e6b4e73666367417777396755564355684e6c7775715754495539456f6b516a3957523941546a2b777a317a4b6845635470387a427041694a5a66564b674c55433774414f425a4870755a38786d49566e4855795a6539534f2b6b724a4e4f784a6e5972384b564f412f3765332f41414a3145434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17834', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416c557a506f354e78456834384b69655844744f38755574653738453575484b68494977595a6264335267353249544a4a71446f46464166394436507a655a2b5a6b776155516d476d4e4f4279526e4c722f75364e2f58557a635843515173506b66644231726773737746533275314e636a4b4b625a4a2f647563783237384b45537a4e7449507a35646c65666d5a376a595a7a496867424869543776466b63356251426572684873363344694351374142646659636d462b664c2f683163614f77626b67376b596f7863564b437769777a3537427951416f424f4a793035796d30666b3773666846496e6664634b63526768646e53554d62785a3379764a6330564571766c6e635451586d49674f4353634e4d364e2b54424257704678566b48385841686a5558356639503438337a70766c456761714562463378643439326658537157717247646f684a414a5a6665474e53326a51482f744b757852346e2f584e5353486d4a6c324462486f6e6462314d46694d533439315675376e7354656c6a6f7945596d554432422f73457162425437324874483562366f7153505a486c4a654551484e4d466374457853516d7936627a545564362f3156426376533739336b6733386372616c76657077724a4e6f6d6f523374624e56696138664b5277475832657655494a70514743344a6c6653377032744b416941544a4b396979533247507477634f717938696e786339663642555462516f59746d556a3766557434514d644367447133467769456c73514b79764c4d776d6f652f782f314772564b542b70547654356c70743951576153306e61776c42376e386267456235495632724c536c4639752f4a4d7631526f7a4e385a634266596250456b41482f3458486f47786a3665724d464f4e51457934694e493265647158706f35566250576d4135613575732b756473434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17835', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416b4d78354451385974536b39493641676c6b4772623643574d5347714171697a684d55367a67442f642b5368533454736e367745355932476749323345496b576a4e557342416e4465312b7369794e597964315061506d5374695548464a4164624f44444148416b4a68643678554a4a504f31617956513579617454424a4270543577416848647449673970576a514668587a386431694d384c3557715874626b31593536495074676c56735543594c42514a556f6e6f4533556773585a6f6d6934566870557658516f576730704c4630714d33587255507a6c5634646d426a6d6a6e47355955344d706972655a5768445637624b33306d326a3670334835342b37632f2f2b577537562b744d713666755844525a416647506945504f3578447170512f2b3569367a49684a5673515a6756536a46556b65327675344d416c704b30733659416e5672307968484e2b59554849545072523362394f62385172397a453435462f4c494e7350613233616d59667030553066416d4a534f584e365141356253514b655672686c45645748492b43726f5258336d7a5a556d7269334e4e33586e4a5768745877386e53635a6878614d614d54705a612f314762455157794b4750364c6f647a6e5a376f32676b612f37674d4e79574c35666e716d65756f57593166596b4b6946795a3348346b3675723041324f7a55475847634936327469626f38627654525759414d4775665a4f534d62316c43675a667263697348327a525a2f3163386e4e58357852774476364a71342f636d5a634a4f7a6b6d694b6f6f6e386963516a526156486f744e534237715471746e772f536b77493456762f333933456c45327049303647746551734358354b7343495473543749483658525a4837755974463741394e63674836375a7367655a383856484b595338464a4f2b6f41676e34412f4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17836', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417134666d4a3933644e43442b544672595a74455a2f544a4962336b6b45642b6d6754417555306c416b75462b6d746e307872764f50356f6d7163316b49486275362f59355576352f514953693636726956302f78656352544a776f597037452b7771567078377449684c317053517a526f74504b70584d466267493239665673364772727346774b6157645562373959537a344c3346327864462f35596f34324130343442384a653832434a4c66512b773330376d67335253352b7952423761355457334a364f6a527a67477247766b4a47376b3071346e4761476558516f684d7076306c3936364b2b7273564f75785669693548483272482f7a6445674f2b5439444c4c763231564761363665473363377074673975757456735a6c6e7534395978484a74626130515646564f745751507731426854505a4f5346667533662b7745643952366231627a30442b2f45546e7863316e49734a6368636e456f72474b615759766848486132644a4957542f344e716a45675a535257546d67626a6e656b655a3150616171644f416269466673735a305a7664467672714249374f77537255425a4848794a6a4e446946466e786332754b684468596e3862686f533046795566445336433345666853663253656f6b596e4f74574b4c37397567535555596f72376e6b51656636334c4a6e7074744d446e38647866764a70462b59394b49752f56586c447a6d6f4d7a5552663635306b78536e7a6e47573667354d536363787952425132766f636845304a4161527739304e66317a534b5976704c6e4330526c36375a5975676e6c394e624333304a6d5a7066456b304874394a332f6a7532356876536e50725164495956565164482f736c744f44686777796951354e7266436e5a425a4d507034784d4d59456e4642553678742b346f55775a556b2f7976784f6a754e3955434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17837', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541692b4f3030727a6e4b6c5a2f4749753438464f363169625048326446635353435270454871705833306f4c626b586c564168562b614376336c4243325044792f4c54624d325575734e35506f4447677769696463542f476e555868353130446556626154376755524e6d6d416d384e6c374c58657966484c3264457662765044676b656943314e434f77644646676c6c39527145782b645850373062674e6a79564c63724c6634595a434e4a753655534539704354675a2b4a69455a6177467a4a477443584434793571757559466c737a42395765764e3241425361765a632b686b5634314f77714f2f55623451354b4a47596b43376a512b733879445a3866327562786f3546304f4c70463247616c33596f4c6747657a346f515659516e374959577a4d7955474d512f71366845467861507a7076554e6d3762676c4e6944782f42557a634946506c4a70766e6f61646b526e444c754c763178766c776b4e38626970394e304153714132477044374b3269783552315430515a4e61646f654d572f2f696e6c31506872467974395a39494a562b4f4442704e6e55556777464c36646969486c625536506f4a5061743347426b4232686f665532414a746f364f3342654143697a634430484f44653544557a6d4e343848716a36693239764349646450755851326e314831735833754b4a4e3373424e335371346f6263452f57496d7152344769536e59706e32434951544e387674754a30786732356c474439464d4a726f76413657484e51475631564379464e5a354b726466675063693775494370447361727345614b3764486f4e76724d3338724a7051684269594937684b5a526b724c6552613457656f73716d2b6f736b47335534496556574779384c653270704659652f43323167436d472f307a75565155617945655870324a3535784778656a50666e5a4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17838', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745417641747453776a504a6d43654b5a7449706755485543646f565365706455583878514244616f6e383869465535335239395875674e63645573474b454868714a2f312f4257396f797871314f657061764b6e392b685a7774373651774c38362b566e6e5772533465734f79524e784e70675978714b6d70783748487548664a626845416e61546754684d70364f7337445171397a74462f57772f547a333650554d6c4b324f30757835617348566f5569586b305772382b5257627a4776584d33447a42534335424f4b61436b736b542b75515a4e6f615435594a2f41775150306c3853496c6f4d38497242746c3747546b505a52644a64746d6853623970452f413648424a7a6230696a436f3650694e56707577356a2f6d6c30634430473676483151346873614367494b7859596171544e4877554465567a69616e61522b414f3458425946346e4965494d4b6b796a436e777932676e55777a79763775634d6c6f4a356753355977546f7462592f4c564e2b4b4630426763742f50724364774d4b2f5a75512f5a7a6f5352484e2b38794c777439457965734979444f7a2f5731677672756c326141567655493337365a2b775a3475515236686661476b6474312b4f6870707771355030534c6d31662f3574556d776f33375167586e5142464f4d446f737a725a6b6165595054647a31466d4c3269444676786973466c7170325143304748303959576a354d4e69776f757151785a55317372766535436255732f37414f5655372b7437716655364b354d315a366a477954704d6f4b5142587532564e6c6d6d4d672f79416361386f476a6e59475154734562424c2f5835732b4b533646676e74396473667771742f7a436e7631474f4576564b317378304e64705036587235707232396e767971415774444e5a4a6f53533665534c7255714639455964615032653738434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17839', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f52715379544847356b7135533347573238545258305175444a6c4857654f7658424a74666b41453951343749466c6d2f53392f5a35583830634b6d7857366d3072743754365039456d504d387a3338706638645959616b48796945482b776d564d4150424e43644f74486c685a7675757a7438384d35436c7274334961395555452f7976694d6f7634454a6c317951307352474c59636f62767371703659346e58594a564d6475796e637a3857524456676952342f4d395459704270377a70506a764c7a56305936334637414b584d7835454f37516e3431783254594f4b5a392b4845462b53754e582b4d456f3968355270576e655335584a674b4459476841577847434254376f36387a4d6a774c4b51436b394f6c57777a65396e4b6d3856343855706a5a6177686a2b7576426a6d5146374f676a396475736b2b4451455853505a6c6453466252426a3042544c416d4f344f6656385431574664494d65356e314155756f76444d3755775733484936696630724b4f41383043396a38743149536b78335035494e783143732f4f71344c753234586274764d505954706f686d48762f54675a43316f4d4d6f49735264753230647a7a4b736b477a634b3378636a614a7a4c63304537586c634f3955625076354a33537679526f2f516b4a4f6b305735595271384654436b506c4c45637a4875744330326a32443950596f413375555a3750556a593437354d4672336a596c7757446a612b633975626a52586c6835736149304a4d7676744c675a6e3154694e2f6f35373556314f47336938724b743453317566416c2b4e767063334e76384f3874334a766c594a3530334964446951345a50413672724e62333849553230454e7a357542375376524f476a3961505a5152726d786535754238644b4a2b4f5a536957636752486f725a766f5a4d424b646671326838434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17840', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e6176484a725146594b4f5171704578547232597766466d61304f336f4e5a56504a677a65465841386f31332f5a5045586c4c2f65713461505a463332634d4a4d6d4e56465146325861396b6864776d4f5242447962734d4f754974456d4e646572675376705474546c5a2f6c6e437748356d70764c535736683066434d324e65537154783331437a54416d69516b3039302f6b6e56776e774d57666242496f44385a513349754757566e3956564c46734b78784956424a73417a516d59583677346648583446334275442f775978745a7065303445546d4e46387a68424355537274596d507a51666632622b64657764465064334a55316a616c61785658705864324b534d626c547569667a615a6976502f6c55704e5934527965664c53755032514b667a36645039336b4c617a6d336a4869705130312f5263516859677856557942316b6a34746d6c427037567352626a3069514474614d525369645945333973335553484e7854663355725a684e3947786a46794f636474576555547a65567a526c79413145744a2f7156334342714f79384847556e4d6f387a717a504d384e387052624c4552766a53373077302f6d6d59536d34342b3031487466654b4c576a6b415130722b54455234754b79396c456f3468674556494b623139486d375867657349322f6f777a486963556b3139677262684c41784453446d6c6f774153614a634336526c5754565a4e4475794d56315454426b5979655033354d4c76416b68366c384e4e6c3046685534724967774e4d4e756e4251305a722f486a6578524837314c7a5a387473536d745a74714969474d7146414c71704e316e4d6c534d453472736973636b363654624b70544e7057383553436b75643341544d54434e306c4b64392b2f4c58694d704a364f2f5377614c556a3233516a316143494c43357170636f306b434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17841', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416e6b54372b5574514a484d6653686337564a46334e75797a3972416d6d594576654e57415a4f6d354f5847684f6338334b664a4e52396f4c6a304631656d4c366e5344414a4a766d32416c5546684a58514b7a2f55446d43522f346a4668462b7069722b4d636c6f392b384d6146444339703473537444387846587074574a4b554578573830435a7873374a526c774b57696b6b7134625847732b5a36654431776241304c64764c57467547733062722b437239632f5a7951626e6b556d4545515a4d357a4833663271594c69626d6f4f47655354464e6b2f4d53416e72365830744c536a544b30304f7178634d384d3773304c31746e303166534c335641784a674d5073443951746a59354b74656c3931722b3551557465514639364974515a6f794e347a4e417942714849434c62353249387668373277583071454755556b7165506a4f66575154334f35666f524463753978715a514978446a2f5057526b6b566b33636d6c414d712f6d325a596451314448557750374c5174367149524a4a62736e692f5936674872303968567534684a414339343757324b756943506e794639727575444171514f58637a503753457632386c595a684e394b396767674d3275326c6838506f2f32687873316a46506f3231584238644c71724e4236744338634d645064764d4b412f39596536354b49386442314b68472f77693045706579514556336e2b797233364a3332716c5a786c6930732f6d4c3278466c5843704370414a326d795a6d5963616b7271552f2b34796d646b74436f4859796c4f5468527862535176617142625a4e6f59704d30795a3441376d496f6f763031703138516933647359707677587035315a395353335967697278684d433748435a7353676278433556416f7164535151396d4d62445a614c316f614c67414d35765832336d303762356230434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17842', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d36385a6569597247496f466e61455038544a4b317773464f47766d39557530714f6e48576a67417a6e4b6974486f75356553467858584f58504143636b7934755964324a61324e556550476b534679396749444330316e42326564477364595944384171474174426c6c437a416554374c324d36663843613858484c69333438635278364d363861716231524171712f79416963303434583937686479766f565975632f7a2f4d65337763443232734f5476676b31523842786774564b4c64576242444c724757735455716e474d4b6d6e31714c703532576b7378385739697a306130556971595476657542307453576b344e595655375a67324e33563031584b342f456738384766356f746b54636436757937394a61735a6867764a3830695979374e36714535565533723865364a3742524b6479386f5935686649766d326c5048714b2b495579774e43524a336567755242725470514d4847586c32784c33676b5750476832796b6c39505344644e7474766f696e394179506f684770366b53446d36434a55426c39664c55636f672b7155384834673763797930396b5a33336d4f2f516a75433339737a2b303734704637656a794875474d54564d637576375861366675504f5a6748575576686e615a4d3436556134704d374d6f6f5a4968666b7851634a59354d636e77304e2f6b2f7362712b44484b4c335562584e2f7a51643037706d79456d45396b74494a72677a41754f4a374935496e354a564d64394e694636673774703671795448696c50662b7a6e5675613573534d6745503935684872434b745037636870556e71336a52466c4445534e2b7a576864664d6e67736b746b75712f38425867557a68423166477348366c7242634d38626a4c303843554458504953326c35764a53724e70576f316132776d6e6d5556474d3076574631624a485a38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17843', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416d5a71736a43445a36364444424c4c465672344742474f7441637656456c74506b3362716d7876725a79585751656935666e55386264414a6f66776c65524d6664497076537345544d3062526d6136414c4e5364356a4358677438776339506e7733515063673951756646466f333432774763585845537031574c4e45304559384c7a393378554a3866767945674c6c6e7138576c6d44656d704c78677064552f436a55737967555446524638654237474c516f4c436a2f793868487a6e7a4350676d78384e2b7a4f36426e376f382b4251544559337370324c6a4d6239386572436c6970334b6d347675322b7579524153566f544a5a7264724d464154526e494f53324a694f47664a76443970516b5a6f77367452646a486931524b46494d4557736459772b6a52373650643143744a48322b77476a436c4551494141694b476577506a585a467a7977726253327869526b6d2f337435514c5a764e324758724e726b4a7670672b42686759497a474954474261646c6a5051595a527375737841766c6b4a767956374669642f4a486b33734556744476545744596235316a4262546d58374b58455241486b62617266704750326f516c4c6c3543436e4a2b48587750312f69717845676e53312f5662484569785176694b5436646544667978635a76354c4953724547784432396e4a2b386a54374b774d47546f4a36446448755a50466a31647259493330384c6d4654305651707a58334e65686a6e7732647375416a6d654b39694c4d744c52502f4d39365736667076396a534667437638372f336b36535030773473744a4d30737339423433343553554a453371634a676b32517870646833306b6a2f53542b656c566b704a7a33484b354243377744343352375a35384844397266424d74704d7265793277576469566e666349666639764c49486c762b616263434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17844', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541784d4c6879434f6c4958672b7a557551645344516b2f6345367646543061426c34504c4b464d39487874476d6b373869334a4e756c5142415a71667a4e49344f72394876386b5867366a4e71534e3352644f796e526f4d5a4673565a433961445255417a742f32527546334a513130304f554455766e31466f776c49546c4f726238757a6e586d696f495177366a4c7a7868534b3937736b30694c426856653256474f455a7078333555377341626c6d4c4b7245305376326675666b6e32515171436e784e544b4e5641726d4a37317a3350336436442f54654279592f353755424c666b69366f6876696a422f6f4f572f6e4f76444e6f4a37747a545945452f504b6578435867396f6578536b436170696c704c303242717a6b49452b322b712b4b6f5351634344344376375146782b346f7671502b455476554d76796a687968394f55334250364c387737472f4a3356445438746765637a6437435635486238466f3537574763344b673163506179505a2b444c707374346f635545506a6a524c796a4b682b68423652714c44382b6676546759447253736e5251504c7666684974772b4f6141527143375034564c702b4e2f773578694b4d66786d476f634d6e7637694931727754625361633632734f434a6e3472644776555a4c62304242654f712f44472f5037397a544536354c4b6a4a472b65552b2f695146675339493444555a2b575669567a344e524a3750386d415a79596163634e383746304d2b567a547037722b3777474e504858452b556159757174594e303358465033313372634f32567738517849394c664a7a374d57714b307675766733513157566248496a6c5a6244704b4d6855454a74376b6e32614849744d564f7a77624f444672424362674243474d4d41316a62446f6d646d706a70413830503241456c555a6d61674d61767a766d5445434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17845', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416745774e4a58414b414e4a4e4d666d423532784b6b7063696c4b467131782b567861446a66314d62563349364a615962357662586243396c45615a74443065733968587a72346b7255416b7672714962496b544c794c434a55346f7a7438416e6c56306b36665a317572484e4355644d436e674267366d533531454c497a6967476248475679724a2b64325576786c42376e494749704c4451384e4845655566344d683446673466576734496c6b674779453756525946492b6f444c364b306653336350494c636b494e4d5838327754554469734b4d547a7256502f4a5352722f4c54465a34374250767059454d4a495930416d3569394b79782f46495556674c49463756515257486339613272574279375359303148382b6d306f32336259636d313858584f62526a6e634847546f3756455a44726e5371757535657737332b497438365a2f525467376a3630564e6956616270466e4a44322b4833477330326f2b4a4634306b416d49367a61674c53693854713379762f35315959796d4f394b54305378366879546948762b446a6b48525644326e4f5532564f456b5a5367347150336a476e616a4d616d7a35736e7247715952563138352f58315430376c644d32337577326b6c6e52396c7048675448424a6c354f43442f747a49495a7774644f485136794a2b654364614d414c544235712b784d7658464b754b534272754a472b4645454674557a6745504675423761374b724a5349766b4e5a642f6968465533363762625541336570746969466d4374644f4345557676366d356d5a4b5469556f4251377a6353746c7a4261426f74506f4d784b73465875393365574163694170486779346a756a5157704632713750742f386b7051565a566e774448463861456d476e70616b46765664476269466f696c484736446c624642796d454c7842387868442f38434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17846', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b4341674541794444557341715a345767764d2b65654974504f525159544d446544494d4b6b39367a456777357464676c456b436e395a517574597645762f564a4e447651476970334c6f457838396664564f35553441436f4a764e4775534f79537271745374696446754c754571444846782b304f66647958494a722f584d684952624d41362b4938433371555a7a43776e615a414b397074556a4532754b713955475a73326f776e665278645773305872344653724251694450536f55787769786a38563935427863417961732f47656374686f6d7237487377596b326c6878456b7a4f4c4d657836384d5a78674b646966546a4a4d462f6b314d48476b444c4b356f61433969596e72554872416234706b4f31484f567a754657664541345a394a31434142396b50384179724f436d646d34766f664847316d397854324d446e32437a5072797455547a354c356b31654e6f703876787554664e445a49534759457544306c376c476d385957534a2f4961734e333773542b5a2f654835566d6d434357434f6f6c466679676a31706b52396f4730335233787977484758485049634948576a6a59583866486454456c7270595247363055706365446d6464474f6a66396433314177772f79776a4861714b6e457271547974617051624c6f6f4d4d786a434442412f556e6f327a48395141594e763363544b696478354635417670785664664e706c777771746c3949634b47506d6a3754536e494c6d585748726e392b6d394f476543754c494b414c37446c613067363575655a6a73457845326e742f416936392b43306246526f6745783465396c56324a5a7a4b4868565639436d424f4d5451524f506769766d665746306166425136524c4c375072456c546c45533552385a5a686874393541794a4a6e6b796e76764d4b75536b792f355131312b6e4a4c414f584c50456e4d434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17847', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b43416745416f384e4f6b58443931564f312b31416e7575492b542b59395a6b4e66454f79365a5535654e49506d2f5867656c617a695733746f573573527030524d744f69304b4136564542366e4d6f4e2f6956344b2b46777448636d597549536b497845306e6855626e30733175484e71505a6373784e504d5a666852456a386d4f766b567762325163584536487137694d3055712f436e6e7751514e6239364e686356724f6c6a72344c50446576497672317471593878376b636c2f726b674f676c3635454f7472446a6d594c795a55527054394a5979355a475553366671576559493557675444334d782f3563537570307058665541474273646d78586553784251364f324c537853636b4e48476a41394e50795a6861465876316938774a6b67326b496972384a49556179656a64645a304d4b454d513731446947776137574c6662482f4b647a58356e78504d4b533768462b706e557335627355632b6c362f354c787033724e32322f52322b725858334d63643152537641356355522f44482b3345666c307a39462b64723679726c45396b677876565a38712b34654747586445417043534153312b49325354533069424a626d4845457263546f6c6b643464715976714c72667475466748725a363136506744565430497773555072774e6336374a4547467865767175314c6f69344864713369365741494b6f53726f533764542f6b786745644f49446c7633372b434d64384352365a304a464546667055414f4b6f596335686465687674536f562f4a416e2f2f302f59794a62476c55424f6d757555792b4462724e46316c427a776f6e5556555a436f4e66337a57746e3539617072576f50617166626833574173747830466f5134586443746470446b4e4f52744b4b64705954726c585445486e423742496e2f347066524f356c6738796e77727464434864563155434177454141513d3d');
SELECT pg_catalog.lo_close(0);

SELECT pg_catalog.lo_open('17848', 131072);
SELECT pg_catalog.lowrite(0, '\x4d494943496a414e42676b71686b6947397730424151454641414f43416738414d49494343674b434167454174536e4d625474374e685a71675036356c696f487279617176474a774b434e35687458684d334c586f59354a62344b66624761724a385277316f64424e4249335351613479634e465a6a394945346a527153786739574d6f376c4b56674f45393039667959792f4c316262756334553638764151392b55674638546b6e536933682f766c6e54423673484e306e78327a366b6d424a76457a624e6663776e7053505164574775624a677874486b65472b4f366b617a326b76764563707266784f6f4c4835586b415644786c58797046506e4c49455243544d66694d6334316f4b62614d70785959426b593944463350735374503757336f6e6647475269552b7032616b5868496e685a4d4c6c427332594b5745334245532f7671564d57563274734f73785463783261365a57366575337a52624c674a49714f5975664a4a507064703530316d7035543734785879724c716e546b644e3845766b7649796a59546a4a6e526e2f4e484b6c5077656d7974544c7553714c582b3950534b3252745a70754177354b66554f746a4130462f4c4c6d35414266432f34364163577a44347358486d4f5038387747623047354f506a4e62724562694e3131615368344341456365756f4e7a425a744238614743397332565547676e384d515a4c75766c6a3979624b4654423264504443343541387744314c764678447a4d7746497148357353797857325149504e6e595443436d4431565158417732522f6b5669304c6153556a7767416d52436c72636e344c556b47354c7745316643556633422b4d325131687975632f316572666631534550794c51336c44655a64446a2b6c6162354d6765576e325a7773596932445673377a4569435157624d69634a4941336a74776d30752b6366784e42734737334f77786662566a417139544553756d544a6977475a31746a7556734255434177454141513d3d');
SELECT pg_catalog.lo_close(0);

COMMIT;

--
-- Name: data data_pkey; Type: CONSTRAINT; Schema: public; Owner: praktikum
--

ALTER TABLE ONLY public.data
    ADD CONSTRAINT data_pkey PRIMARY KEY (id);


--
-- Name: tenants tenants_pkey; Type: CONSTRAINT; Schema: public; Owner: praktikum
--

ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT tenants_pkey PRIMARY KEY (id);


--
-- Name: tenants fk_systemid; Type: FK CONSTRAINT; Schema: public; Owner: praktikum
--

ALTER TABLE ONLY public.tenants
    ADD CONSTRAINT fk_systemid FOREIGN KEY (systemid) REFERENCES public.data(id);


--
-- PostgreSQL database dump complete
--

