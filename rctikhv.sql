--
-- PostgreSQL database dump
--

-- Dumped from database version 14.1
-- Dumped by pg_dump version 14.1

-- Started on 2022-07-03 15:30:06

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
-- TOC entry 216 (class 1259 OID 59370)
-- Name: auth_group; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO thedronit;

--
-- TOC entry 215 (class 1259 OID 59369)
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO thedronit;

--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- TOC entry 218 (class 1259 OID 59379)
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO thedronit;

--
-- TOC entry 217 (class 1259 OID 59378)
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO thedronit;

--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- TOC entry 214 (class 1259 OID 59363)
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO thedronit;

--
-- TOC entry 213 (class 1259 OID 59362)
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO thedronit;

--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- TOC entry 220 (class 1259 OID 59386)
-- Name: auth_user; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO thedronit;

--
-- TOC entry 222 (class 1259 OID 59395)
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO thedronit;

--
-- TOC entry 221 (class 1259 OID 59394)
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO thedronit;

--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- TOC entry 219 (class 1259 OID 59385)
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO thedronit;

--
-- TOC entry 3501 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- TOC entry 224 (class 1259 OID 59402)
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO thedronit;

--
-- TOC entry 223 (class 1259 OID 59401)
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO thedronit;

--
-- TOC entry 3502 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- TOC entry 226 (class 1259 OID 59461)
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO thedronit;

--
-- TOC entry 225 (class 1259 OID 59460)
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO thedronit;

--
-- TOC entry 3503 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- TOC entry 212 (class 1259 OID 59354)
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO thedronit;

--
-- TOC entry 211 (class 1259 OID 59353)
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO thedronit;

--
-- TOC entry 3504 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- TOC entry 210 (class 1259 OID 59345)
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO thedronit;

--
-- TOC entry 209 (class 1259 OID 59344)
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO thedronit;

--
-- TOC entry 3505 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- TOC entry 227 (class 1259 OID 59490)
-- Name: django_session; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO thedronit;

--
-- TOC entry 229 (class 1259 OID 59500)
-- Name: web_banner; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_banner (
    id bigint NOT NULL,
    "Image" character varying(100),
    "Link" character varying(50) NOT NULL
);


ALTER TABLE public.web_banner OWNER TO thedronit;

--
-- TOC entry 228 (class 1259 OID 59499)
-- Name: web_banner_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_banner_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_banner_id_seq OWNER TO thedronit;

--
-- TOC entry 3506 (class 0 OID 0)
-- Dependencies: 228
-- Name: web_banner_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_banner_id_seq OWNED BY public.web_banner.id;


--
-- TOC entry 235 (class 1259 OID 59527)
-- Name: web_certificate; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_certificate (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "File" character varying(100)
);


ALTER TABLE public.web_certificate OWNER TO thedronit;

--
-- TOC entry 234 (class 1259 OID 59526)
-- Name: web_certificate_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_certificate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_certificate_id_seq OWNER TO thedronit;

--
-- TOC entry 3507 (class 0 OID 0)
-- Dependencies: 234
-- Name: web_certificate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_certificate_id_seq OWNED BY public.web_certificate.id;


--
-- TOC entry 237 (class 1259 OID 59534)
-- Name: web_feedback; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_feedback (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Email" character varying(50) NOT NULL,
    "Phone" character varying(50) NOT NULL,
    "Text" text NOT NULL
);


ALTER TABLE public.web_feedback OWNER TO thedronit;

--
-- TOC entry 236 (class 1259 OID 59533)
-- Name: web_feedback_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_feedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_feedback_id_seq OWNER TO thedronit;

--
-- TOC entry 3508 (class 0 OID 0)
-- Dependencies: 236
-- Name: web_feedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_feedback_id_seq OWNED BY public.web_feedback.id;


--
-- TOC entry 233 (class 1259 OID 59517)
-- Name: web_news; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_news (
    id bigint NOT NULL,
    "Title" character varying(50) NOT NULL,
    "Image" character varying(100) NOT NULL,
    "About" text NOT NULL,
    "Text" text NOT NULL,
    "Date" date NOT NULL
);


ALTER TABLE public.web_news OWNER TO thedronit;

--
-- TOC entry 232 (class 1259 OID 59516)
-- Name: web_news_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_news_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_news_id_seq OWNER TO thedronit;

--
-- TOC entry 3509 (class 0 OID 0)
-- Dependencies: 232
-- Name: web_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_news_id_seq OWNED BY public.web_news.id;


--
-- TOC entry 239 (class 1259 OID 59543)
-- Name: web_requisites; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_requisites (
    id bigint NOT NULL,
    "File" character varying(100)
);


ALTER TABLE public.web_requisites OWNER TO thedronit;

--
-- TOC entry 238 (class 1259 OID 59542)
-- Name: web_requisites_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_requisites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_requisites_id_seq OWNER TO thedronit;

--
-- TOC entry 3510 (class 0 OID 0)
-- Dependencies: 238
-- Name: web_requisites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_requisites_id_seq OWNED BY public.web_requisites.id;


--
-- TOC entry 231 (class 1259 OID 59507)
-- Name: web_service; Type: TABLE; Schema: public; Owner: thedronit
--

CREATE TABLE public.web_service (
    id bigint NOT NULL,
    "Name" character varying(50) NOT NULL,
    "Image" character varying(100),
    "Description" text NOT NULL,
    "Show" character varying(50) NOT NULL
);


ALTER TABLE public.web_service OWNER TO thedronit;

--
-- TOC entry 230 (class 1259 OID 59506)
-- Name: web_service_id_seq; Type: SEQUENCE; Schema: public; Owner: thedronit
--

CREATE SEQUENCE public.web_service_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.web_service_id_seq OWNER TO thedronit;

--
-- TOC entry 3511 (class 0 OID 0)
-- Dependencies: 230
-- Name: web_service_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: thedronit
--

ALTER SEQUENCE public.web_service_id_seq OWNED BY public.web_service.id;


--
-- TOC entry 3241 (class 2604 OID 59373)
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- TOC entry 3242 (class 2604 OID 59382)
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 3240 (class 2604 OID 59366)
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- TOC entry 3243 (class 2604 OID 59389)
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- TOC entry 3244 (class 2604 OID 59398)
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- TOC entry 3245 (class 2604 OID 59405)
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 3246 (class 2604 OID 59464)
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- TOC entry 3239 (class 2604 OID 59357)
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- TOC entry 3238 (class 2604 OID 59348)
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- TOC entry 3248 (class 2604 OID 59503)
-- Name: web_banner id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_banner ALTER COLUMN id SET DEFAULT nextval('public.web_banner_id_seq'::regclass);


--
-- TOC entry 3251 (class 2604 OID 59530)
-- Name: web_certificate id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_certificate ALTER COLUMN id SET DEFAULT nextval('public.web_certificate_id_seq'::regclass);


--
-- TOC entry 3252 (class 2604 OID 59537)
-- Name: web_feedback id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_feedback ALTER COLUMN id SET DEFAULT nextval('public.web_feedback_id_seq'::regclass);


--
-- TOC entry 3250 (class 2604 OID 59520)
-- Name: web_news id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_news ALTER COLUMN id SET DEFAULT nextval('public.web_news_id_seq'::regclass);


--
-- TOC entry 3253 (class 2604 OID 59546)
-- Name: web_requisites id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_requisites ALTER COLUMN id SET DEFAULT nextval('public.web_requisites_id_seq'::regclass);


--
-- TOC entry 3249 (class 2604 OID 59510)
-- Name: web_service id; Type: DEFAULT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_service ALTER COLUMN id SET DEFAULT nextval('public.web_service_id_seq'::regclass);


--
-- TOC entry 3468 (class 0 OID 59370)
-- Dependencies: 216
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3470 (class 0 OID 59379)
-- Dependencies: 218
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3466 (class 0 OID 59363)
-- Dependencies: 214
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (25, 'Can add Баннер', 7, 'add_banner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (26, 'Can change Баннер', 7, 'change_banner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (27, 'Can delete Баннер', 7, 'delete_banner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (28, 'Can view Баннер', 7, 'view_banner');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (29, 'Can add Услуги', 8, 'add_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (30, 'Can change Услуги', 8, 'change_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (31, 'Can delete Услуги', 8, 'delete_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (32, 'Can view Услуги', 8, 'view_service');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (33, 'Can add Новости', 9, 'add_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (34, 'Can change Новости', 9, 'change_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (35, 'Can delete Новости', 9, 'delete_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (36, 'Can view Новости', 9, 'view_news');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (37, 'Can add Сертификаты', 10, 'add_certificate');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (38, 'Can change Сертификаты', 10, 'change_certificate');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (39, 'Can delete Сертификаты', 10, 'delete_certificate');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (40, 'Can view Сертификаты', 10, 'view_certificate');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (41, 'Can add Обратная связь', 11, 'add_feedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (42, 'Can change Обратная связь', 11, 'change_feedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (43, 'Can delete Обратная связь', 11, 'delete_feedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (44, 'Can view Обратная связь', 11, 'view_feedback');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (45, 'Can add Реквизиты', 12, 'add_requisites');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (46, 'Can change Реквизиты', 12, 'change_requisites');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (47, 'Can delete Реквизиты', 12, 'delete_requisites');
INSERT INTO public.auth_permission (id, name, content_type_id, codename) VALUES (48, 'Can view Реквизиты', 12, 'view_requisites');


--
-- TOC entry 3472 (class 0 OID 59386)
-- Dependencies: 220
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) VALUES (1, 'pbkdf2_sha256$260000$vPBxXPnqhopgcqAY2uhJPe$dDgJDLSZrZdEACTVVIaRUZKOEOwMtW+hL1zHco57/Ko=', '2022-07-03 01:42:26.430299+10', true, 'admin', '', '', 'admin@admin.admin', true, true, '2022-06-29 21:46:36.72174+10');


--
-- TOC entry 3474 (class 0 OID 59395)
-- Dependencies: 222
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3476 (class 0 OID 59402)
-- Dependencies: 224
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: thedronit
--



--
-- TOC entry 3478 (class 0 OID 59461)
-- Dependencies: 226
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (1, '2022-06-29 23:03:22.981563+10', '1', '1', 1, '[{"added": {}}]', 7, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (2, '2022-06-29 23:21:42.558936+10', '1', 'Техническая инвентаризация', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (3, '2022-06-29 23:21:52.195518+10', '1', 'Техническая инвентаризация', 2, '[{"changed": {"fields": ["\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"]}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (4, '2022-06-30 16:49:20.32786+10', '1', 'Первая новость', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (5, '2022-06-30 16:57:15.696184+10', '1', 'Первая новость', 2, '[{"changed": {"fields": ["\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (6, '2022-06-30 16:58:24.091189+10', '1', 'Первая новость', 2, '[{"changed": {"fields": ["\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (7, '2022-06-30 16:59:17.188049+10', '1', 'Первая новость', 2, '[{"changed": {"fields": ["\u0418\u0437\u043e\u0431\u0440\u0430\u0436\u0435\u043d\u0438\u0435"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (8, '2022-06-30 17:03:03.181609+10', '1', 'Первая новость', 2, '[{"changed": {"fields": ["\u041e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"]}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (9, '2022-06-30 18:09:44.412923+10', '1', 'Ассоциация проектировщиков', 1, '[{"added": {}}]', 10, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (10, '2022-07-01 16:24:38.772258+10', '2', 'максим', 3, '', 11, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (11, '2022-07-01 16:27:47.053665+10', '2', 'КАДАСТРОВЫЕ РАБОТЫ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (12, '2022-07-01 16:27:53.109486+10', '3', 'КАДАСТРОВЫЕ РАБОТЫ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (13, '2022-07-01 16:27:54.04053+10', '4', 'КАДАСТРОВЫЕ РАБОТЫ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (14, '2022-07-01 16:27:55.844955+10', '5', 'КАДАСТРОВЫЕ РАБОТЫ', 1, '[{"added": {}}]', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (15, '2022-07-01 16:28:11.497607+10', '5', 'КАДАСТРОВЫЕ РАБОТЫ', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (16, '2022-07-01 16:28:11.500607+10', '4', 'КАДАСТРОВЫЕ РАБОТЫ', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (17, '2022-07-01 16:28:11.500607+10', '3', 'КАДАСТРОВЫЕ РАБОТЫ', 3, '', 8, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (18, '2022-07-01 16:31:19.865511+10', '2', '2', 1, '[{"added": {}}]', 9, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (19, '2022-07-01 16:40:28.756513+10', '1', '1', 1, '[{"added": {}}]', 12, 1);
INSERT INTO public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) VALUES (20, '2022-07-03 01:43:18.968007+10', '2', 'Реквизиты', 1, '[{"added": {}}]', 10, 1);


--
-- TOC entry 3464 (class 0 OID 59354)
-- Dependencies: 212
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_content_type (id, app_label, model) VALUES (1, 'admin', 'logentry');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (2, 'auth', 'permission');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (3, 'auth', 'group');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (4, 'auth', 'user');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (6, 'sessions', 'session');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (7, 'web', 'banner');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (8, 'web', 'service');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (9, 'web', 'news');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (10, 'web', 'certificate');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (11, 'web', 'feedback');
INSERT INTO public.django_content_type (id, app_label, model) VALUES (12, 'web', 'requisites');


--
-- TOC entry 3462 (class 0 OID 59345)
-- Dependencies: 210
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_migrations (id, app, name, applied) VALUES (1, 'contenttypes', '0001_initial', '2022-06-29 21:46:11.224494+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (2, 'auth', '0001_initial', '2022-06-29 21:46:12.555916+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (3, 'admin', '0001_initial', '2022-06-29 21:46:12.716956+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-06-29 21:46:12.724958+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-06-29 21:46:12.731959+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-06-29 21:46:12.833986+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-06-29 21:46:12.840988+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-06-29 21:46:12.849993+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-06-29 21:46:12.856992+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-06-29 21:46:12.866994+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-06-29 21:46:12.874996+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-06-29 21:46:12.884998+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-06-29 21:46:12.948058+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-06-29 21:46:12.960059+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (15, 'auth', '0010_alter_group_name_max_length', '2022-06-29 21:46:13.001069+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (16, 'auth', '0011_update_proxy_permissions', '2022-06-29 21:46:13.057081+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (17, 'auth', '0012_alter_user_first_name_max_length', '2022-06-29 21:46:13.066083+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (18, 'sessions', '0001_initial', '2022-06-29 21:46:13.167107+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (19, 'web', '0001_initial', '2022-06-29 22:54:47.639646+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (20, 'web', '0002_service_show', '2022-06-29 23:12:37.096255+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (21, 'web', '0003_auto_20220630_0141', '2022-06-30 01:41:19.114628+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (22, 'web', '0004_auto_20220630_1806', '2022-06-30 18:07:04.359563+10');
INSERT INTO public.django_migrations (id, app, name, applied) VALUES (23, 'web', '0005_feedback_requisites', '2022-07-01 12:13:39.047312+10');


--
-- TOC entry 3479 (class 0 OID 59490)
-- Dependencies: 227
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('nxbz5nhgct173s98cd0sbcgitb0o3mgn', '.eJxVjDsOwyAQBe9CHSGWj4GU6X0GtJglOImMZOwqyt2DJRdJOzPvvVnAfSthb7SGObErA3b5ZRGnJy2HSA9c7pVPddnWOfIj4adtfKyJXrez_Tso2EpfCzJaCicVWOesj8krY3Q2iQbZkUWArDGCUITaWyEidJml8Q6GiRL7fAGqxDbm:1o6XLK:bKcYm7hhwjzdVQUK0Sic3NCzOwjjRAEvWqnkLKRo2P8', '2022-07-13 23:02:54.584489+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('yerqy5dv60ujaq9gwhhvkbz4r0zxjxkw', '.eJxVjDsOwyAQBe9CHSGWj4GU6X0GtJglOImMZOwqyt2DJRdJOzPvvVnAfSthb7SGObErA3b5ZRGnJy2HSA9c7pVPddnWOfIj4adtfKyJXrez_Tso2EpfCzJaCicVWOesj8krY3Q2iQbZkUWArDGCUITaWyEidJml8Q6GiRL7fAGqxDbm:1o7A1h:g0iGkukMWWDimQ04FJ454FdJPXZj_q8Ava7TDcvfwDU', '2022-07-15 16:21:13.523035+10');
INSERT INTO public.django_session (session_key, session_data, expire_date) VALUES ('hwgz3v5h3k460q2jy8nto1t1xn7kga3t', '.eJxVjDsOwyAQBe9CHSGWj4GU6X0GtJglOImMZOwqyt2DJRdJOzPvvVnAfSthb7SGObErA3b5ZRGnJy2HSA9c7pVPddnWOfIj4adtfKyJXrez_Tso2EpfCzJaCicVWOesj8krY3Q2iQbZkUWArDGCUITaWyEidJml8Q6GiRL7fAGqxDbm:1o7fGM:fSQsmTwWnxprqYjp5gUbZNnoC5WwWE1ybpMTmnm3dJ0', '2022-07-17 01:42:26.608339+10');


--
-- TOC entry 3481 (class 0 OID 59500)
-- Dependencies: 229
-- Data for Name: web_banner; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_banner (id, "Image", "Link") VALUES (1, 'banner/tmp-banner.png', '');


--
-- TOC entry 3487 (class 0 OID 59527)
-- Dependencies: 235
-- Data for Name: web_certificate; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_certificate (id, "Name", "File") VALUES (1, 'Ассоциация проектировщиков', 'certificate/60c80e_68da0572fd374d0aa71f818894c61158.pdf');
INSERT INTO public.web_certificate (id, "Name", "File") VALUES (2, 'Реквизиты', 'certificate/РЕКВИЗИТЫ.docx');


--
-- TOC entry 3489 (class 0 OID 59534)
-- Dependencies: 237
-- Data for Name: web_feedback; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_feedback (id, "Name", "Email", "Phone", "Text") VALUES (1, 'Андрей', 'andreykae28@gmail.com', '89241187653', 'Тестовое сообщение');
INSERT INTO public.web_feedback (id, "Name", "Email", "Phone", "Text") VALUES (3, 'максим', 'maximm84rus@mail.ru', '', 'test');
INSERT INTO public.web_feedback (id, "Name", "Email", "Phone", "Text") VALUES (4, 'Андрей_test', 'testmail@mail.re', '123123123', 'Test word');
INSERT INTO public.web_feedback (id, "Name", "Email", "Phone", "Text") VALUES (5, 'aer', 'andreykae28@gmail.com', '89241187653', '123123123');


--
-- TOC entry 3485 (class 0 OID 59517)
-- Dependencies: 233
-- Data for Name: web_news; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_news (id, "Title", "Image", "About", "Text", "Date") VALUES (1, 'Первая новость', 'news/Trimble_R9s_application_general_01.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2022-06-30');
INSERT INTO public.web_news (id, "Title", "Image", "About", "Text", "Date") VALUES (2, '2', 'news/Jellyfish.jpg', '123654', '321456', '2022-07-01');


--
-- TOC entry 3491 (class 0 OID 59543)
-- Dependencies: 239
-- Data for Name: web_requisites; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_requisites (id, "File") VALUES (1, 'requisites/РЕКВИЗИТЫ.docx');


--
-- TOC entry 3483 (class 0 OID 59507)
-- Dependencies: 231
-- Data for Name: web_service; Type: TABLE DATA; Schema: public; Owner: thedronit
--

INSERT INTO public.web_service (id, "Name", "Image", "Description", "Show") VALUES (1, 'Техническая инвентаризация', 'service/tekhnicheskaya-inventarizaciya.jpg', 'test', 'Отображать');
INSERT INTO public.web_service (id, "Name", "Image", "Description", "Show") VALUES (2, 'КАДАСТРОВЫЕ РАБОТЫ', 'service/Penguins.jpg', 'Кадастровой деятельностью являются выполнение работ в отношении недвижимого имущества в соответствии с установленными федеральным законом требованиями, в результате которых обеспечивается подготовка документов, содержащих необходимые для осуществления государственного кадастрового учета недвижимого имущества (кадастровый учет) сведения о таком недвижимом имуществе и оказание услуг в установленных федеральным законом случаях.

​

Кадастровые работы:
- проведение геодезических работ;
- изготовление технических планов объектов недвижимости (зданий, помещений (жилых, нежилых), сооружений, объектов незавершенного строительства)
- консультирование по заполнению Декларации об объекте недвижимости
- изготовление акта обследования, подтверждающего прекращение существования объекта учета
- постановка на кадастровый учет объектов недвижимости и их изменений (сопровождение и представление интересов в Кадастровой палате)

Документы, изготавливаемые по результатам  кадастровых работ,  являются:
- межевой план земельного участка
-технический план здания, строения, сооружения, квартиры, жилого и нежилого помещения, объекта незавершенного строительства.;
-акт обследования.', 'Отображать');


--
-- TOC entry 3512 (class 0 OID 0)
-- Dependencies: 215
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- TOC entry 3513 (class 0 OID 0)
-- Dependencies: 217
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- TOC entry 3514 (class 0 OID 0)
-- Dependencies: 213
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 48, true);


--
-- TOC entry 3515 (class 0 OID 0)
-- Dependencies: 221
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- TOC entry 3516 (class 0 OID 0)
-- Dependencies: 219
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- TOC entry 3517 (class 0 OID 0)
-- Dependencies: 223
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 3518 (class 0 OID 0)
-- Dependencies: 225
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 20, true);


--
-- TOC entry 3519 (class 0 OID 0)
-- Dependencies: 211
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 12, true);


--
-- TOC entry 3520 (class 0 OID 0)
-- Dependencies: 209
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 23, true);


--
-- TOC entry 3521 (class 0 OID 0)
-- Dependencies: 228
-- Name: web_banner_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_banner_id_seq', 1, true);


--
-- TOC entry 3522 (class 0 OID 0)
-- Dependencies: 234
-- Name: web_certificate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_certificate_id_seq', 2, true);


--
-- TOC entry 3523 (class 0 OID 0)
-- Dependencies: 236
-- Name: web_feedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_feedback_id_seq', 5, true);


--
-- TOC entry 3524 (class 0 OID 0)
-- Dependencies: 232
-- Name: web_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_news_id_seq', 2, true);


--
-- TOC entry 3525 (class 0 OID 0)
-- Dependencies: 238
-- Name: web_requisites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_requisites_id_seq', 1, true);


--
-- TOC entry 3526 (class 0 OID 0)
-- Dependencies: 230
-- Name: web_service_id_seq; Type: SEQUENCE SET; Schema: public; Owner: thedronit
--

SELECT pg_catalog.setval('public.web_service_id_seq', 5, true);


--
-- TOC entry 3267 (class 2606 OID 59488)
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 3272 (class 2606 OID 59418)
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- TOC entry 3275 (class 2606 OID 59384)
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3269 (class 2606 OID 59375)
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 3262 (class 2606 OID 59409)
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- TOC entry 3264 (class 2606 OID 59368)
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 3283 (class 2606 OID 59400)
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 3286 (class 2606 OID 59433)
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- TOC entry 3277 (class 2606 OID 59391)
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 3289 (class 2606 OID 59407)
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3292 (class 2606 OID 59447)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- TOC entry 3280 (class 2606 OID 59483)
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 3295 (class 2606 OID 59469)
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 3257 (class 2606 OID 59361)
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- TOC entry 3259 (class 2606 OID 59359)
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 3255 (class 2606 OID 59352)
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3299 (class 2606 OID 59496)
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 3302 (class 2606 OID 59505)
-- Name: web_banner web_banner_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_banner
    ADD CONSTRAINT web_banner_pkey PRIMARY KEY (id);


--
-- TOC entry 3308 (class 2606 OID 59532)
-- Name: web_certificate web_certificate_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_certificate
    ADD CONSTRAINT web_certificate_pkey PRIMARY KEY (id);


--
-- TOC entry 3310 (class 2606 OID 59541)
-- Name: web_feedback web_feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_feedback
    ADD CONSTRAINT web_feedback_pkey PRIMARY KEY (id);


--
-- TOC entry 3306 (class 2606 OID 59524)
-- Name: web_news web_news_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_news
    ADD CONSTRAINT web_news_pkey PRIMARY KEY (id);


--
-- TOC entry 3312 (class 2606 OID 59548)
-- Name: web_requisites web_requisites_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_requisites
    ADD CONSTRAINT web_requisites_pkey PRIMARY KEY (id);


--
-- TOC entry 3304 (class 2606 OID 59514)
-- Name: web_service web_service_pkey; Type: CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.web_service
    ADD CONSTRAINT web_service_pkey PRIMARY KEY (id);


--
-- TOC entry 3265 (class 1259 OID 59489)
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 3270 (class 1259 OID 59429)
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- TOC entry 3273 (class 1259 OID 59430)
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- TOC entry 3260 (class 1259 OID 59415)
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- TOC entry 3281 (class 1259 OID 59445)
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- TOC entry 3284 (class 1259 OID 59444)
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- TOC entry 3287 (class 1259 OID 59459)
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 3290 (class 1259 OID 59458)
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 3278 (class 1259 OID 59484)
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 3293 (class 1259 OID 59480)
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- TOC entry 3296 (class 1259 OID 59481)
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- TOC entry 3297 (class 1259 OID 59498)
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- TOC entry 3300 (class 1259 OID 59497)
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: thedronit
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 3315 (class 2606 OID 59424)
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3314 (class 2606 OID 59419)
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3313 (class 2606 OID 59410)
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3317 (class 2606 OID 59439)
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3316 (class 2606 OID 59434)
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3319 (class 2606 OID 59453)
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3318 (class 2606 OID 59448)
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3320 (class 2606 OID 59470)
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 3321 (class 2606 OID 59475)
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: thedronit
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


-- Completed on 2022-07-03 15:30:10

--
-- PostgreSQL database dump complete
--

