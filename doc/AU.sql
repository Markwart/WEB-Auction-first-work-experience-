--
-- PostgreSQL database dump
--

-- Dumped from database version 10.5
-- Dumped by pg_dump version 10.5

-- Started on 2019-01-25 17:10:27

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
-- TOC entry 1 (class 3079 OID 12924)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 225 (class 1259 OID 62201)
-- Name: admin_communication; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.admin_communication (
    id integer NOT NULL,
    theme character varying NOT NULL,
    user_from_id integer NOT NULL,
    text text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.admin_communication OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 62199)
-- Name: admin_communication_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.admin_communication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_communication_id_seq OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 224
-- Name: admin_communication_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.admin_communication_id_seq OWNED BY public.admin_communication.id;


--
-- TOC entry 214 (class 1259 OID 62140)
-- Name: auction_duration; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auction_duration (
    id integer NOT NULL,
    day integer NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.auction_duration OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 62138)
-- Name: auction_duration_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auction_duration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auction_duration_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 213
-- Name: auction_duration_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auction_duration_id_seq OWNED BY public.auction_duration.id;


--
-- TOC entry 223 (class 1259 OID 62188)
-- Name: auction_rule; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auction_rule (
    id integer NOT NULL,
    index character varying NOT NULL,
    theme character varying NOT NULL,
    text text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.auction_rule OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 62186)
-- Name: auction_rule_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auction_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auction_rule_id_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 222
-- Name: auction_rule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auction_rule_id_seq OWNED BY public.auction_rule.id;


--
-- TOC entry 216 (class 1259 OID 62150)
-- Name: bid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bid (
    id integer NOT NULL,
    item_id integer NOT NULL,
    price_bid numeric NOT NULL,
    user_bid_id integer NOT NULL,
    status_bid character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.bid OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 62148)
-- Name: bid_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bid_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 215
-- Name: bid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bid_id_seq OWNED BY public.bid.id;


--
-- TOC entry 204 (class 1259 OID 62077)
-- Name: category; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.category OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 62075)
-- Name: category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.category_id_seq OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 203
-- Name: category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;


--
-- TOC entry 206 (class 1259 OID 62090)
-- Name: composition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.composition (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.composition OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 62088)
-- Name: composition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.composition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.composition_id_seq OWNER TO postgres;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 205
-- Name: composition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.composition_id_seq OWNED BY public.composition.id;


--
-- TOC entry 202 (class 1259 OID 62064)
-- Name: condition; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.condition (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.condition OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 62062)
-- Name: condition_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.condition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.condition_id_seq OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 201
-- Name: condition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.condition_id_seq OWNED BY public.condition.id;


--
-- TOC entry 221 (class 1259 OID 62175)
-- Name: country_origin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.country_origin (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.country_origin OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 62173)
-- Name: country_origin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.country_origin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.country_origin_id_seq OWNER TO postgres;

--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 220
-- Name: country_origin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.country_origin_id_seq OWNED BY public.country_origin.id;


--
-- TOC entry 227 (class 1259 OID 62212)
-- Name: deferred_bid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.deferred_bid (
    id integer NOT NULL,
    item_id integer NOT NULL,
    price_bid numeric NOT NULL,
    user_bid_id integer NOT NULL,
    status_bid character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.deferred_bid OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 62210)
-- Name: deferred_bid_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.deferred_bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.deferred_bid_id_seq OWNER TO postgres;

--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 226
-- Name: deferred_bid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.deferred_bid_id_seq OWNED BY public.deferred_bid.id;


--
-- TOC entry 212 (class 1259 OID 62129)
-- Name: feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback (
    id integer NOT NULL,
    item_id integer NOT NULL,
    user_from_id integer NOT NULL,
    user_whom_id integer NOT NULL,
    communication integer NOT NULL,
    shipping_time integer NOT NULL,
    shipping_charges integer NOT NULL,
    item_description integer NOT NULL,
    comment text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.feedback OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 62127)
-- Name: feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.feedback_id_seq OWNER TO postgres;

--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 211
-- Name: feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;


--
-- TOC entry 199 (class 1259 OID 62045)
-- Name: item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item (
    id integer NOT NULL,
    name character varying NOT NULL,
    auction_end timestamp without time zone NOT NULL,
    duration_id integer NOT NULL,
    starting_price numeric NOT NULL,
    category_id integer NOT NULL,
    year integer NOT NULL,
    country_origin_id integer NOT NULL,
    condition_id integer NOT NULL,
    composition_id integer NOT NULL,
    image character varying NOT NULL,
    text text NOT NULL,
    seller_id integer NOT NULL,
    status_auction character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.item OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 62656)
-- Name: item_2_payment_method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_2_payment_method (
    payment_method_id integer NOT NULL,
    item_id integer NOT NULL
);


ALTER TABLE public.item_2_payment_method OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 62643)
-- Name: item_2_shipping_method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.item_2_shipping_method (
    shipping_method_id integer NOT NULL,
    item_id integer NOT NULL
);


ALTER TABLE public.item_2_shipping_method OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 62043)
-- Name: item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.item_id_seq OWNER TO postgres;

--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 198
-- Name: item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;


--
-- TOC entry 219 (class 1259 OID 62164)
-- Name: message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.message (
    id integer NOT NULL,
    item_id integer NOT NULL,
    theme character varying NOT NULL,
    user_from_id integer NOT NULL,
    user_whom_id integer NOT NULL,
    text text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.message OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 62162)
-- Name: message_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.message_id_seq OWNER TO postgres;

--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 218
-- Name: message_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.message_id_seq OWNED BY public.message.id;


--
-- TOC entry 210 (class 1259 OID 62116)
-- Name: payment_method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_method (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.payment_method OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 62114)
-- Name: payment_method_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.payment_method_id_seq OWNER TO postgres;

--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 209
-- Name: payment_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_method_id_seq OWNED BY public.payment_method.id;


--
-- TOC entry 200 (class 1259 OID 62054)
-- Name: personal_data; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.personal_data (
    id integer NOT NULL,
    username character varying NOT NULL,
    first_name character varying NOT NULL,
    last_name character varying NOT NULL,
    adress character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL,
    city character varying,
    country character varying
);


ALTER TABLE public.personal_data OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 62103)
-- Name: shipping_method; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shipping_method (
    id integer NOT NULL,
    name character varying NOT NULL,
    delivery_time character varying NOT NULL,
    cost numeric NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.shipping_method OWNER TO postgres;

--
-- TOC entry 207 (class 1259 OID 62101)
-- Name: shipping_method_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shipping_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.shipping_method_id_seq OWNER TO postgres;

--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 207
-- Name: shipping_method_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shipping_method_id_seq OWNED BY public.shipping_method.id;


--
-- TOC entry 229 (class 1259 OID 62223)
-- Name: step_block; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.step_block (
    id integer NOT NULL,
    name character varying NOT NULL,
    step_1 integer NOT NULL,
    step_2 integer NOT NULL,
    step_3 integer NOT NULL,
    step_4 integer NOT NULL,
    step_5 integer NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.step_block OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 62221)
-- Name: step_block_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.step_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.step_block_id_seq OWNER TO postgres;

--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 228
-- Name: step_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.step_block_id_seq OWNED BY public.step_block.id;


--
-- TOC entry 217 (class 1259 OID 62159)
-- Name: user_2_item; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_2_item (
    item_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.user_2_item OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 62032)
-- Name: user_account; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_account (
    id integer NOT NULL,
    role character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);


ALTER TABLE public.user_account OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 62030)
-- Name: user_account_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_account_id_seq OWNER TO postgres;

--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 196
-- Name: user_account_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;


--
-- TOC entry 2805 (class 2604 OID 62204)
-- Name: admin_communication id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_communication ALTER COLUMN id SET DEFAULT nextval('public.admin_communication_id_seq'::regclass);


--
-- TOC entry 2800 (class 2604 OID 62143)
-- Name: auction_duration id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auction_duration ALTER COLUMN id SET DEFAULT nextval('public.auction_duration_id_seq'::regclass);


--
-- TOC entry 2804 (class 2604 OID 62191)
-- Name: auction_rule id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auction_rule ALTER COLUMN id SET DEFAULT nextval('public.auction_rule_id_seq'::regclass);


--
-- TOC entry 2801 (class 2604 OID 62153)
-- Name: bid id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid ALTER COLUMN id SET DEFAULT nextval('public.bid_id_seq'::regclass);


--
-- TOC entry 2795 (class 2604 OID 62080)
-- Name: category id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);


--
-- TOC entry 2796 (class 2604 OID 62093)
-- Name: composition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.composition ALTER COLUMN id SET DEFAULT nextval('public.composition_id_seq'::regclass);


--
-- TOC entry 2794 (class 2604 OID 62067)
-- Name: condition id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition ALTER COLUMN id SET DEFAULT nextval('public.condition_id_seq'::regclass);


--
-- TOC entry 2803 (class 2604 OID 62178)
-- Name: country_origin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_origin ALTER COLUMN id SET DEFAULT nextval('public.country_origin_id_seq'::regclass);


--
-- TOC entry 2806 (class 2604 OID 62215)
-- Name: deferred_bid id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deferred_bid ALTER COLUMN id SET DEFAULT nextval('public.deferred_bid_id_seq'::regclass);


--
-- TOC entry 2799 (class 2604 OID 62132)
-- Name: feedback id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);


--
-- TOC entry 2793 (class 2604 OID 62048)
-- Name: item id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);


--
-- TOC entry 2802 (class 2604 OID 62167)
-- Name: message id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message ALTER COLUMN id SET DEFAULT nextval('public.message_id_seq'::regclass);


--
-- TOC entry 2798 (class 2604 OID 62119)
-- Name: payment_method id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method ALTER COLUMN id SET DEFAULT nextval('public.payment_method_id_seq'::regclass);


--
-- TOC entry 2797 (class 2604 OID 62106)
-- Name: shipping_method id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping_method ALTER COLUMN id SET DEFAULT nextval('public.shipping_method_id_seq'::regclass);


--
-- TOC entry 2807 (class 2604 OID 62226)
-- Name: step_block id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.step_block ALTER COLUMN id SET DEFAULT nextval('public.step_block_id_seq'::regclass);


--
-- TOC entry 2792 (class 2604 OID 62035)
-- Name: user_account id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);


--
-- TOC entry 3036 (class 0 OID 62201)
-- Dependencies: 225
-- Data for Name: admin_communication; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3025 (class 0 OID 62140)
-- Dependencies: 214
-- Data for Name: auction_duration; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auction_duration (id, day, created, updated) VALUES (1, 1, '2019-01-06 20:51:03.355', '2019-01-06 20:51:03.355');
INSERT INTO public.auction_duration (id, day, created, updated) VALUES (2, 15, '2019-01-06 20:51:07.532', '2019-01-06 20:51:07.532');
INSERT INTO public.auction_duration (id, day, created, updated) VALUES (3, 30, '2019-01-06 20:51:11.469', '2019-01-06 20:51:11.469');


--
-- TOC entry 3034 (class 0 OID 62188)
-- Dependencies: 223
-- Data for Name: auction_rule; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.auction_rule (id, index, theme, text, created, updated) VALUES (2, '1.0', 'Main rule', 'Don`t worry about your money.', '2019-01-09 13:08:00.589', '2019-01-09 13:08:00.589');


--
-- TOC entry 3027 (class 0 OID 62150)
-- Dependencies: 216
-- Data for Name: bid; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bid (id, item_id, price_bid, user_bid_id, status_bid, created, updated) VALUES (2, 20, 10.00, 2, 'made', '2019-01-23 16:45:40.485', '2019-01-23 16:45:40.485');
INSERT INTO public.bid (id, item_id, price_bid, user_bid_id, status_bid, created, updated) VALUES (3, 20, 15.00, 3, 'made', '2019-01-23 16:46:11.777', '2019-01-23 16:46:11.777');
INSERT INTO public.bid (id, item_id, price_bid, user_bid_id, status_bid, created, updated) VALUES (4, 20, 6, 2, 'made', '2019-01-25 16:10:22.243', '2019-01-25 16:10:22.243');
INSERT INTO public.bid (id, item_id, price_bid, user_bid_id, status_bid, created, updated) VALUES (5, 20, 7.00, 11, 'made', '2019-01-25 16:18:23.083', '2019-01-25 16:18:23.083');
INSERT INTO public.bid (id, item_id, price_bid, user_bid_id, status_bid, created, updated) VALUES (6, 20, 8, 3, 'made', '2019-01-25 16:31:16.123', '2019-01-25 16:31:16.123');


--
-- TOC entry 3015 (class 0 OID 62077)
-- Dependencies: 204
-- Data for Name: category; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.category (id, name, created, updated) VALUES (1, 'coin', '2019-01-06 20:50:18.396', '2019-01-06 20:50:18.396');


--
-- TOC entry 3017 (class 0 OID 62090)
-- Dependencies: 206
-- Data for Name: composition; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.composition (id, name, created, updated) VALUES (1, 'metal', '2019-01-06 20:50:26.568', '2019-01-06 20:50:46.876');


--
-- TOC entry 3013 (class 0 OID 62064)
-- Dependencies: 202
-- Data for Name: condition; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.condition (id, name, created, updated) VALUES (1, 'good', '2019-01-06 20:50:39.015', '2019-01-06 20:50:39.015');


--
-- TOC entry 3032 (class 0 OID 62175)
-- Dependencies: 221
-- Data for Name: country_origin; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.country_origin (id, name, created, updated) VALUES (1, 'Belarus', '2019-01-06 20:50:55.405', '2019-01-06 20:50:55.405');


--
-- TOC entry 3038 (class 0 OID 62212)
-- Dependencies: 227
-- Data for Name: deferred_bid; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3023 (class 0 OID 62129)
-- Dependencies: 212
-- Data for Name: feedback; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.feedback (id, item_id, user_from_id, user_whom_id, communication, shipping_time, shipping_charges, item_description, comment, created, updated) VALUES (17, 16, 10, 2, 4, 3, 4, 3, '', '2019-01-20 20:51:08.649', '2019-01-20 20:51:08.649');
INSERT INTO public.feedback (id, item_id, user_from_id, user_whom_id, communication, shipping_time, shipping_charges, item_description, comment, created, updated) VALUES (18, 18, 2, 9, 3, 4, 3, 2, '', '2019-01-23 14:32:51.183', '2019-01-23 14:32:51.183');


--
-- TOC entry 3010 (class 0 OID 62045)
-- Dependencies: 199
-- Data for Name: item; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.item (id, name, auction_end, duration_id, starting_price, category_id, year, country_origin_id, condition_id, composition_id, image, text, seller_id, status_auction, created, updated) VALUES (16, 'Japan Tempo Tsuho 100 Mon Bronze Coin', '2019-02-19 13:07:45.068', 3, 19.50, 1, 1835, 1, 1, 1, '1d3d10ff-7939-43ce-9a22-3679ddfad7d0', 'Cast AT Edo (Tokyo) , Osaka and Some Provincial Mints. Large Center Hole. Varieties Exist.', 2, 'OPEN', '2019-01-20 13:07:45.068', '2019-01-20 23:51:35.905');
INSERT INTO public.item (id, name, auction_end, duration_id, starting_price, category_id, year, country_origin_id, condition_id, composition_id, image, text, seller_id, status_auction, created, updated) VALUES (19, 'CHINA CHEKIANG PROVINCE 1903 -06 10 CASH BRASS COIN E4 RARE', '2019-02-04 13:24:19.596', 2, 169.00, 1, 1903, 1, 1, 1, 'c03ee216-88b4-4b0e-a897-6bcc9f72b635', 'I acept return service .
If you have any questions , contact us please .
We will answer you as quickly as possible .', 3, 'OPEN', '2019-01-20 13:24:19.596', '2019-01-20 23:52:09.418');
INSERT INTO public.item (id, name, auction_end, duration_id, starting_price, category_id, year, country_origin_id, condition_id, composition_id, image, text, seller_id, status_auction, created, updated) VALUES (18, 'GERMAN COIN PRUSSIA 1874 A * DEUTSCHES REICH * WILHELM FAM3', '2019-02-19 13:21:35.675', 3, 29.75, 1, 1874, 1, 1, 1, 'aa391590-389b-401c-ac3a-9c6154febaf8', '
Certification:	Uncertified	
Modified Item: No
Year: 1874	
Country/Region of Manufacture: Germany
Composition:	Silver	
Circulated/Uncirculated:	Circulated', 3, 'OPEN', '2019-01-20 13:21:35.675', '2019-01-20 23:52:20.096');
INSERT INTO public.item (id, name, auction_end, duration_id, starting_price, category_id, year, country_origin_id, condition_id, composition_id, image, text, seller_id, status_auction, created, updated) VALUES (20, 'FRENCH COIN, 1849 A, PARIS MINT, 5 FRANCS SILVER, HERCULE, GRADE XF', '2019-02-19 14:01:12.868', 3, 5.00, 1, 1849, 1, 1, 1, 'c118e4b5-5d2f-4934-9e1e-74aa9c749749', 'FRENCH COIN, 1849 A, PARIS MINT, 5 FRANCS SILVER, HERCULE, GRADE XF, 900/1000 SILVER, DIAMETER 37 MM, WEIGHT 25 GR, COMBINE SHIPMENT : 2 $ EACH ADDITIONAL ITEM', 11, 'OPEN', '2019-01-20 14:01:12.868', '2019-01-20 23:53:03.679');
INSERT INTO public.item (id, name, auction_end, duration_id, starting_price, category_id, year, country_origin_id, condition_id, composition_id, image, text, seller_id, status_auction, created, updated) VALUES (17, 'JAPAN SILVER RYUKYU KINGDOM 1/2 SHU RYUKYU ISLANDS AD1863', '2019-02-04 13:19:05.751', 2, 186.36, 1, 1863, 1, 1, 1, '6f3dc202-22ef-49b6-8e08-3d9847c2a458', ' We are pleased to offer all of our customers a 14 day no quibble returns policy.
* Please notify us by email before returning,then we send the correct address.
* If for any reason you are not happy with your purchase, please return to us in the original condition and packaging for a refund or exchange.', 2, 'OPEN', '2019-01-20 13:19:05.751', '2019-01-20 23:51:09.297');


--
-- TOC entry 3042 (class 0 OID 62656)
-- Dependencies: 231
-- Data for Name: item_2_payment_method; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (2, 17);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (1, 17);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (2, 16);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (3, 16);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (2, 19);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (3, 19);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (2, 18);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (1, 20);
INSERT INTO public.item_2_payment_method (payment_method_id, item_id) VALUES (2, 20);


--
-- TOC entry 3041 (class 0 OID 62643)
-- Dependencies: 230
-- Data for Name: item_2_shipping_method; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (2, 17);
INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (1, 17);
INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (1, 16);
INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (3, 19);
INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (1, 19);
INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (2, 18);
INSERT INTO public.item_2_shipping_method (shipping_method_id, item_id) VALUES (1, 20);


--
-- TOC entry 3030 (class 0 OID 62164)
-- Dependencies: 219
-- Data for Name: message; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.message (id, item_id, theme, user_from_id, user_whom_id, text, created, updated) VALUES (4, 20, 'sdfdsf', 2, 11, 'sdfsdf', '2019-01-25 09:39:52.498', '2019-01-25 09:39:52.498');
INSERT INTO public.message (id, item_id, theme, user_from_id, user_whom_id, text, created, updated) VALUES (5, 20, 'question', 2, 11, 'Why?', '2019-01-25 10:17:30.162', '2019-01-25 10:17:30.162');
INSERT INTO public.message (id, item_id, theme, user_from_id, user_whom_id, text, created, updated) VALUES (6, 19, 'question', 2, 3, 'Cool!!!', '2019-01-25 11:50:51.273', '2019-01-25 11:50:51.273');
INSERT INTO public.message (id, item_id, theme, user_from_id, user_whom_id, text, created, updated) VALUES (7, 17, 'question', 3, 2, 'Wow!!!', '2019-01-25 11:52:11.775', '2019-01-25 11:52:11.775');
INSERT INTO public.message (id, item_id, theme, user_from_id, user_whom_id, text, created, updated) VALUES (8, 19, 'question', 10, 3, '???', '2019-01-25 11:55:14.9', '2019-01-25 11:55:14.9');
INSERT INTO public.message (id, item_id, theme, user_from_id, user_whom_id, text, created, updated) VALUES (9, 18, 'question', 2, 3, '!', '2019-01-25 11:56:19.667', '2019-01-25 11:56:19.667');


--
-- TOC entry 3021 (class 0 OID 62116)
-- Dependencies: 210
-- Data for Name: payment_method; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.payment_method (id, name, created, updated) VALUES (1, 'WebPay', '2019-01-20 22:30:08.198', '2019-01-20 22:30:08.198');
INSERT INTO public.payment_method (id, name, created, updated) VALUES (2, 'PayPal', '2019-01-20 22:30:13.941', '2019-01-20 22:30:13.941');
INSERT INTO public.payment_method (id, name, created, updated) VALUES (3, 'YandexMoney', '2019-01-20 22:30:43.389', '2019-01-20 22:30:43.389');
INSERT INTO public.payment_method (id, name, created, updated) VALUES (4, 'Cash', '2019-01-20 22:30:51.156', '2019-01-20 22:30:51.156');


--
-- TOC entry 3011 (class 0 OID 62054)
-- Dependencies: 200
-- Data for Name: personal_data; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (9, '', '', '', '', '2019-01-14 14:53:04.164', '2019-01-14 14:53:04.164', NULL, NULL);
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (10, '', '', '', '', '2019-01-14 14:53:20.499', '2019-01-14 14:53:20.499', NULL, NULL);
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (12, '', '', '', '', '2019-01-14 14:55:23.179', '2019-01-14 14:55:23.179', NULL, NULL);
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (13, '', '', '', '', '2019-01-14 14:57:49.945', '2019-01-14 14:57:49.945', NULL, NULL);
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (14, '', '', '', '', '2019-01-14 17:35:44.393', '2019-01-14 17:35:44.393', NULL, NULL);
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (2, '', 'Ruslan', '', '', '2019-01-06 20:51:36.528', '2019-01-06 20:51:36.528', 'Grodno', 'Belarus');
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (1, '', 'Mark', 'Matusevich', '', '2019-01-06 20:48:43.805', '2019-01-06 20:48:43.805', 'Warsaw', 'Poland');
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (3, '', 'George', '', '', '2019-01-06 20:51:51.486', '2019-01-15 23:12:32.582', 'Atlanta', 'USA');
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (11, '', 'Frederick', '', '', '2019-01-14 14:53:39.169', '2019-01-20 14:00:16.849', 'Toronto', 'Canada');
INSERT INTO public.personal_data (id, username, first_name, last_name, adress, created, updated, city, country) VALUES (15, '', '', '', '', '2019-01-25 14:29:08.805', '2019-01-25 14:29:08.805', '', '');


--
-- TOC entry 3019 (class 0 OID 62103)
-- Dependencies: 208
-- Data for Name: shipping_method; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.shipping_method (id, name, delivery_time, cost, created, updated) VALUES (2, 'EMS', '5-10 days', 10.00, '2019-01-20 22:34:18.014', '2019-01-20 22:34:18.014');
INSERT INTO public.shipping_method (id, name, delivery_time, cost, created, updated) VALUES (1, 'Mail', '7-14 days', 5.00, '2019-01-20 22:33:44.449', '2019-01-20 22:35:57.509');
INSERT INTO public.shipping_method (id, name, delivery_time, cost, created, updated) VALUES (3, 'SDEK', '7-12 days', 7.00, '2019-01-20 22:36:54.501', '2019-01-20 22:37:03.812');


--
-- TOC entry 3040 (class 0 OID 62223)
-- Dependencies: 229
-- Data for Name: step_block; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3028 (class 0 OID 62159)
-- Dependencies: 217
-- Data for Name: user_2_item; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3008 (class 0 OID 62032)
-- Dependencies: 197
-- Data for Name: user_account; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (1, 'admin', 'watashi_m@list.ru', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-06 20:48:43.805', '2019-01-06 20:48:43.805');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (2, 'user', 'ruslan@mail.ru', 'RehzDrYIh0FkOcpHbnGQm274pf30fjRLeZ7dmlX9CTs=', '2019-01-06 20:51:36.528', '2019-01-06 20:51:36.528');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (9, 'user', 'qwerty@list.ru', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-14 14:53:04.164', '2019-01-14 14:53:04.164');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (10, 'user', 'sas@gmail.com', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-14 14:53:20.499', '2019-01-14 14:53:20.499');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (12, 'user', 'frank@mail.ru', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-14 14:55:23.179', '2019-01-14 14:55:23.179');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (13, 'user', 'garry@gmail.com', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-14 14:57:49.945', '2019-01-14 14:57:49.945');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (14, 'user', 'tampler@gmail.com', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-14 17:35:44.393', '2019-01-14 17:35:44.393');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (3, 'user', 'hata@mail.ru', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-06 20:51:51.486', '2019-01-15 23:12:32.582');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (11, 'moderator', 'rem@mail.ru', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-14 14:53:39.169', '2019-01-20 14:00:16.849');
INSERT INTO public.user_account (id, role, email, password, created, updated) VALUES (15, 'user', 'gad@list.ru', 'wMIY/qLAB4B97AB/mD+LtCRxekwmp+xbSza99qYu3RM=', '2019-01-25 14:29:08.805', '2019-01-25 14:29:08.805');


--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 224
-- Name: admin_communication_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.admin_communication_id_seq', 1, false);


--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 213
-- Name: auction_duration_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auction_duration_id_seq', 3, true);


--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 222
-- Name: auction_rule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auction_rule_id_seq', 2, true);


--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 215
-- Name: bid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bid_id_seq', 6, true);


--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 203
-- Name: category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.category_id_seq', 1, true);


--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 205
-- Name: composition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.composition_id_seq', 1, true);


--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 201
-- Name: condition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.condition_id_seq', 1, true);


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 220
-- Name: country_origin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.country_origin_id_seq', 1, true);


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 226
-- Name: deferred_bid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.deferred_bid_id_seq', 1, false);


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 211
-- Name: feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.feedback_id_seq', 18, true);


--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 198
-- Name: item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.item_id_seq', 23, true);


--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 218
-- Name: message_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.message_id_seq', 9, true);


--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 209
-- Name: payment_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_method_id_seq', 4, true);


--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 207
-- Name: shipping_method_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.shipping_method_id_seq', 3, true);


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 228
-- Name: step_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.step_block_id_seq', 1, false);


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 196
-- Name: user_account_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.user_account_id_seq', 15, true);


--
-- TOC entry 2855 (class 2606 OID 62209)
-- Name: admin_communication admin_communication_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_communication
    ADD CONSTRAINT admin_communication_pk PRIMARY KEY (id);


--
-- TOC entry 2839 (class 2606 OID 62147)
-- Name: auction_duration auction_duration_day_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auction_duration
    ADD CONSTRAINT auction_duration_day_key UNIQUE (day);


--
-- TOC entry 2841 (class 2606 OID 62145)
-- Name: auction_duration auction_duration_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auction_duration
    ADD CONSTRAINT auction_duration_pk PRIMARY KEY (id);


--
-- TOC entry 2851 (class 2606 OID 62198)
-- Name: auction_rule auction_rule_index_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auction_rule
    ADD CONSTRAINT auction_rule_index_key UNIQUE (index);


--
-- TOC entry 2853 (class 2606 OID 62196)
-- Name: auction_rule auction_rule_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auction_rule
    ADD CONSTRAINT auction_rule_pk PRIMARY KEY (id);


--
-- TOC entry 2843 (class 2606 OID 62158)
-- Name: bid bid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pk PRIMARY KEY (id);


--
-- TOC entry 2821 (class 2606 OID 62087)
-- Name: category category_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);


--
-- TOC entry 2823 (class 2606 OID 62085)
-- Name: category category_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (id);


--
-- TOC entry 2825 (class 2606 OID 62100)
-- Name: composition composition_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.composition
    ADD CONSTRAINT composition_name_key UNIQUE (name);


--
-- TOC entry 2827 (class 2606 OID 62098)
-- Name: composition composition_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.composition
    ADD CONSTRAINT composition_pk PRIMARY KEY (id);


--
-- TOC entry 2817 (class 2606 OID 62074)
-- Name: condition condition_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition
    ADD CONSTRAINT condition_name_key UNIQUE (name);


--
-- TOC entry 2819 (class 2606 OID 62072)
-- Name: condition condition_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.condition
    ADD CONSTRAINT condition_pk PRIMARY KEY (id);


--
-- TOC entry 2847 (class 2606 OID 62185)
-- Name: country_origin country_origin_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_origin
    ADD CONSTRAINT country_origin_name_key UNIQUE (name);


--
-- TOC entry 2849 (class 2606 OID 62183)
-- Name: country_origin country_origin_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.country_origin
    ADD CONSTRAINT country_origin_pk PRIMARY KEY (id);


--
-- TOC entry 2857 (class 2606 OID 62220)
-- Name: deferred_bid deferred_bid_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deferred_bid
    ADD CONSTRAINT deferred_bid_pk PRIMARY KEY (id);


--
-- TOC entry 2837 (class 2606 OID 62137)
-- Name: feedback feedback_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pk PRIMARY KEY (id);


--
-- TOC entry 2813 (class 2606 OID 62053)
-- Name: item item_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pk PRIMARY KEY (id);


--
-- TOC entry 2845 (class 2606 OID 62172)
-- Name: message message_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pk PRIMARY KEY (id);


--
-- TOC entry 2833 (class 2606 OID 62126)
-- Name: payment_method payment_method_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_name_key UNIQUE (name);


--
-- TOC entry 2835 (class 2606 OID 62124)
-- Name: payment_method payment_method_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_pk PRIMARY KEY (id);


--
-- TOC entry 2815 (class 2606 OID 62061)
-- Name: personal_data personal_data_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_pk PRIMARY KEY (id);


--
-- TOC entry 2829 (class 2606 OID 62113)
-- Name: shipping_method shipping_method_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT shipping_method_name_key UNIQUE (name);


--
-- TOC entry 2831 (class 2606 OID 62111)
-- Name: shipping_method shipping_method_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT shipping_method_pk PRIMARY KEY (id);


--
-- TOC entry 2859 (class 2606 OID 62233)
-- Name: step_block step_block_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.step_block
    ADD CONSTRAINT step_block_name_key UNIQUE (name);


--
-- TOC entry 2861 (class 2606 OID 62231)
-- Name: step_block step_block_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.step_block
    ADD CONSTRAINT step_block_pk PRIMARY KEY (id);


--
-- TOC entry 2809 (class 2606 OID 62042)
-- Name: user_account user_account_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);


--
-- TOC entry 2811 (class 2606 OID 62040)
-- Name: user_account user_account_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pk PRIMARY KEY (id);


--
-- TOC entry 2879 (class 2606 OID 62319)
-- Name: admin_communication admin_communication_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.admin_communication
    ADD CONSTRAINT admin_communication_fk0 FOREIGN KEY (user_from_id) REFERENCES public.user_account(id);


--
-- TOC entry 2872 (class 2606 OID 62284)
-- Name: bid bid_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2873 (class 2606 OID 62289)
-- Name: bid bid_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_fk1 FOREIGN KEY (user_bid_id) REFERENCES public.user_account(id);


--
-- TOC entry 2880 (class 2606 OID 62324)
-- Name: deferred_bid deferred_bid_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deferred_bid
    ADD CONSTRAINT deferred_bid_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2881 (class 2606 OID 62329)
-- Name: deferred_bid deferred_bid_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.deferred_bid
    ADD CONSTRAINT deferred_bid_fk1 FOREIGN KEY (user_bid_id) REFERENCES public.user_account(id);


--
-- TOC entry 2869 (class 2606 OID 62269)
-- Name: feedback feedback_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2870 (class 2606 OID 62274)
-- Name: feedback feedback_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_fk1 FOREIGN KEY (user_from_id) REFERENCES public.user_account(id);


--
-- TOC entry 2871 (class 2606 OID 62279)
-- Name: feedback feedback_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_fk2 FOREIGN KEY (user_whom_id) REFERENCES public.user_account(id);


--
-- TOC entry 2884 (class 2606 OID 62659)
-- Name: item_2_payment_method item_2_payment_method_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_2_payment_method
    ADD CONSTRAINT item_2_payment_method_fk0 FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(id);


--
-- TOC entry 2885 (class 2606 OID 62664)
-- Name: item_2_payment_method item_2_payment_method_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_2_payment_method
    ADD CONSTRAINT item_2_payment_method_fk1 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2882 (class 2606 OID 62646)
-- Name: item_2_shipping_method item_2_shipping_method_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_2_shipping_method
    ADD CONSTRAINT item_2_shipping_method_fk0 FOREIGN KEY (shipping_method_id) REFERENCES public.shipping_method(id);


--
-- TOC entry 2883 (class 2606 OID 62651)
-- Name: item_2_shipping_method item_2_shipping_method_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item_2_shipping_method
    ADD CONSTRAINT item_2_shipping_method_fk1 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2862 (class 2606 OID 62234)
-- Name: item item_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk0 FOREIGN KEY (duration_id) REFERENCES public.auction_duration(id);


--
-- TOC entry 2863 (class 2606 OID 62239)
-- Name: item item_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk1 FOREIGN KEY (category_id) REFERENCES public.category(id);


--
-- TOC entry 2864 (class 2606 OID 62244)
-- Name: item item_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk2 FOREIGN KEY (country_origin_id) REFERENCES public.country_origin(id);


--
-- TOC entry 2865 (class 2606 OID 62249)
-- Name: item item_fk3; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk3 FOREIGN KEY (condition_id) REFERENCES public.condition(id);


--
-- TOC entry 2866 (class 2606 OID 62254)
-- Name: item item_fk4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk4 FOREIGN KEY (composition_id) REFERENCES public.composition(id);


--
-- TOC entry 2867 (class 2606 OID 62259)
-- Name: item item_fk5; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk5 FOREIGN KEY (seller_id) REFERENCES public.user_account(id);


--
-- TOC entry 2876 (class 2606 OID 62304)
-- Name: message message_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2877 (class 2606 OID 62309)
-- Name: message message_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_fk1 FOREIGN KEY (user_from_id) REFERENCES public.user_account(id);


--
-- TOC entry 2878 (class 2606 OID 62314)
-- Name: message message_fk2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_fk2 FOREIGN KEY (user_whom_id) REFERENCES public.user_account(id);


--
-- TOC entry 2868 (class 2606 OID 62264)
-- Name: personal_data personal_data_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_fk0 FOREIGN KEY (id) REFERENCES public.user_account(id);


--
-- TOC entry 2874 (class 2606 OID 62294)
-- Name: user_2_item user_2_item_fk0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_2_item
    ADD CONSTRAINT user_2_item_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);


--
-- TOC entry 2875 (class 2606 OID 62299)
-- Name: user_2_item user_2_item_fk1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_2_item
    ADD CONSTRAINT user_2_item_fk1 FOREIGN KEY (user_id) REFERENCES public.user_account(id);


-- Completed on 2019-01-25 17:10:27

--
-- PostgreSQL database dump complete
--

