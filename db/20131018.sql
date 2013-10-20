--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.3
-- Dumped by pg_dump version 9.1.0
-- Started on 2013-10-18 19:08:52 BRT

SET statement_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 200 (class 3079 OID 11907)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2364 (class 0 OID 0)
-- Dependencies: 200
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 166 (class 1259 OID 4107214)
-- Dependencies: 5
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- TOC entry 165 (class 1259 OID 4107212)
-- Dependencies: 166 5
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- TOC entry 2365 (class 0 OID 0)
-- Dependencies: 165
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 2366 (class 0 OID 0)
-- Dependencies: 165
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- TOC entry 164 (class 1259 OID 4107199)
-- Dependencies: 5
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- TOC entry 163 (class 1259 OID 4107197)
-- Dependencies: 164 5
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2367 (class 0 OID 0)
-- Dependencies: 163
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 2368 (class 0 OID 0)
-- Dependencies: 163
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 66, true);


--
-- TOC entry 162 (class 1259 OID 4107189)
-- Dependencies: 5
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- TOC entry 161 (class 1259 OID 4107187)
-- Dependencies: 162 5
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- TOC entry 2369 (class 0 OID 0)
-- Dependencies: 161
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 2370 (class 0 OID 0)
-- Dependencies: 161
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 57, true);


--
-- TOC entry 172 (class 1259 OID 4107259)
-- Dependencies: 5
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- TOC entry 168 (class 1259 OID 4107229)
-- Dependencies: 5
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- TOC entry 167 (class 1259 OID 4107227)
-- Dependencies: 5 168
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- TOC entry 2371 (class 0 OID 0)
-- Dependencies: 167
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 2372 (class 0 OID 0)
-- Dependencies: 167
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 2, true);


--
-- TOC entry 171 (class 1259 OID 4107257)
-- Dependencies: 172 5
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- TOC entry 2373 (class 0 OID 0)
-- Dependencies: 171
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 2374 (class 0 OID 0)
-- Dependencies: 171
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_id_seq', 3, true);


--
-- TOC entry 170 (class 1259 OID 4107244)
-- Dependencies: 5
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- TOC entry 169 (class 1259 OID 4107242)
-- Dependencies: 5 170
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- TOC entry 2375 (class 0 OID 0)
-- Dependencies: 169
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 2376 (class 0 OID 0)
-- Dependencies: 169
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 189 (class 1259 OID 4107942)
-- Dependencies: 5
-- Name: automacao_grupoproduto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_grupoproduto (
    id integer NOT NULL,
    codigo character varying(100) NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.automacao_grupoproduto OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 4107940)
-- Dependencies: 5 189
-- Name: automacao_grupoproduto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_grupoproduto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_grupoproduto_id_seq OWNER TO postgres;

--
-- TOC entry 2377 (class 0 OID 0)
-- Dependencies: 188
-- Name: automacao_grupoproduto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_grupoproduto_id_seq OWNED BY automacao_grupoproduto.id;


--
-- TOC entry 2378 (class 0 OID 0)
-- Dependencies: 188
-- Name: automacao_grupoproduto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_grupoproduto_id_seq', 1, true);


--
-- TOC entry 183 (class 1259 OID 4107918)
-- Dependencies: 5
-- Name: automacao_material; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_material (
    id integer NOT NULL,
    tipo_material_id integer NOT NULL,
    descricao character varying(100) NOT NULL,
    codigo character varying(50) NOT NULL
);


ALTER TABLE public.automacao_material OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 4107916)
-- Dependencies: 183 5
-- Name: automacao_material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_material_id_seq OWNER TO postgres;

--
-- TOC entry 2379 (class 0 OID 0)
-- Dependencies: 182
-- Name: automacao_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_material_id_seq OWNED BY automacao_material.id;


--
-- TOC entry 2380 (class 0 OID 0)
-- Dependencies: 182
-- Name: automacao_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_material_id_seq', 3, true);


--
-- TOC entry 195 (class 1259 OID 4107975)
-- Dependencies: 5
-- Name: automacao_materialnotafiscal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_materialnotafiscal (
    id integer NOT NULL,
    nota_fiscal_id integer NOT NULL,
    material_id integer NOT NULL,
    volume character varying(100) NOT NULL,
    data_entrada date NOT NULL,
    peso numeric(8,2) NOT NULL,
    valor numeric(8,2) NOT NULL,
    status character varying(100)
);


ALTER TABLE public.automacao_materialnotafiscal OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 4107973)
-- Dependencies: 5 195
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_materialnotafiscal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_materialnotafiscal_id_seq OWNER TO postgres;

--
-- TOC entry 2381 (class 0 OID 0)
-- Dependencies: 194
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_materialnotafiscal_id_seq OWNED BY automacao_materialnotafiscal.id;


--
-- TOC entry 2382 (class 0 OID 0)
-- Dependencies: 194
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_materialnotafiscal_id_seq', 13, true);


--
-- TOC entry 193 (class 1259 OID 4107965)
-- Dependencies: 5
-- Name: automacao_notafiscal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_notafiscal (
    id integer NOT NULL,
    numero character varying(100) NOT NULL,
    valor_total numeric(8,2) NOT NULL
);


ALTER TABLE public.automacao_notafiscal OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 4107963)
-- Dependencies: 5 193
-- Name: automacao_notafiscal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_notafiscal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_notafiscal_id_seq OWNER TO postgres;

--
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 192
-- Name: automacao_notafiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_notafiscal_id_seq OWNED BY automacao_notafiscal.id;


--
-- TOC entry 2384 (class 0 OID 0)
-- Dependencies: 192
-- Name: automacao_notafiscal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_notafiscal_id_seq', 13, true);


--
-- TOC entry 187 (class 1259 OID 4107934)
-- Dependencies: 5
-- Name: automacao_operador; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_operador (
    id integer NOT NULL,
    setor_id integer NOT NULL,
    nome character varying(100) NOT NULL
);


ALTER TABLE public.automacao_operador OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 4107932)
-- Dependencies: 187 5
-- Name: automacao_operador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_operador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_operador_id_seq OWNER TO postgres;

--
-- TOC entry 2385 (class 0 OID 0)
-- Dependencies: 186
-- Name: automacao_operador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_operador_id_seq OWNED BY automacao_operador.id;


--
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 186
-- Name: automacao_operador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_operador_id_seq', 1, true);


--
-- TOC entry 197 (class 1259 OID 4108048)
-- Dependencies: 5
-- Name: automacao_ordemfabricacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_ordemfabricacao (
    id integer NOT NULL,
    numero_of character varying(100) NOT NULL,
    nota_fiscal_id integer NOT NULL,
    tipo_material_id integer NOT NULL,
    produto_id integer NOT NULL,
    operador_id integer NOT NULL,
    data_inicial date NOT NULL,
    data_final date NOT NULL,
    peso_bruto numeric(8,2) NOT NULL,
    peso_liquido numeric(8,2) NOT NULL,
    previsao numeric(8,2) NOT NULL,
    perda numeric(8,2) NOT NULL
);


ALTER TABLE public.automacao_ordemfabricacao OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 4108046)
-- Dependencies: 5 197
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_ordemfabricacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_ordemfabricacao_id_seq OWNER TO postgres;

--
-- TOC entry 2387 (class 0 OID 0)
-- Dependencies: 196
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_ordemfabricacao_id_seq OWNED BY automacao_ordemfabricacao.id;


--
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 196
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_ordemfabricacao_id_seq', 2, true);


--
-- TOC entry 199 (class 1259 OID 4108110)
-- Dependencies: 5
-- Name: automacao_ordemfabricacao_materia_nota_fiscal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_ordemfabricacao_materia_nota_fiscal (
    id integer NOT NULL,
    ordemfabricacao_id integer NOT NULL,
    materialnotafiscal_id integer NOT NULL
);


ALTER TABLE public.automacao_ordemfabricacao_materia_nota_fiscal OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 4108108)
-- Dependencies: 5 199
-- Name: automacao_ordemfabricacao_materia_nota_fiscal_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_ordemfabricacao_materia_nota_fiscal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_ordemfabricacao_materia_nota_fiscal_id_seq OWNER TO postgres;

--
-- TOC entry 2389 (class 0 OID 0)
-- Dependencies: 198
-- Name: automacao_ordemfabricacao_materia_nota_fiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_ordemfabricacao_materia_nota_fiscal_id_seq OWNED BY automacao_ordemfabricacao_materia_nota_fiscal.id;


--
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 198
-- Name: automacao_ordemfabricacao_materia_nota_fiscal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_ordemfabricacao_materia_nota_fiscal_id_seq', 39, true);


--
-- TOC entry 191 (class 1259 OID 4107952)
-- Dependencies: 5
-- Name: automacao_produto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_produto (
    id integer NOT NULL,
    grupo_produto_id integer NOT NULL,
    codigo character varying(100) NOT NULL,
    descricao text NOT NULL
);


ALTER TABLE public.automacao_produto OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 4107950)
-- Dependencies: 191 5
-- Name: automacao_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_produto_id_seq OWNER TO postgres;

--
-- TOC entry 2391 (class 0 OID 0)
-- Dependencies: 190
-- Name: automacao_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_produto_id_seq OWNED BY automacao_produto.id;


--
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 190
-- Name: automacao_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_produto_id_seq', 1, true);


--
-- TOC entry 185 (class 1259 OID 4107926)
-- Dependencies: 5
-- Name: automacao_setor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_setor (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.automacao_setor OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 4107924)
-- Dependencies: 185 5
-- Name: automacao_setor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_setor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_setor_id_seq OWNER TO postgres;

--
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 184
-- Name: automacao_setor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_setor_id_seq OWNED BY automacao_setor.id;


--
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 184
-- Name: automacao_setor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_setor_id_seq', 1, true);


--
-- TOC entry 181 (class 1259 OID 4107910)
-- Dependencies: 5
-- Name: automacao_tipomaterial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_tipomaterial (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.automacao_tipomaterial OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 4107908)
-- Dependencies: 181 5
-- Name: automacao_tipomaterial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_tipomaterial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_tipomaterial_id_seq OWNER TO postgres;

--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 180
-- Name: automacao_tipomaterial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_tipomaterial_id_seq OWNED BY automacao_tipomaterial.id;


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 180
-- Name: automacao_tipomaterial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_tipomaterial_id_seq', 3, true);


--
-- TOC entry 177 (class 1259 OID 4107302)
-- Dependencies: 2217 5
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- TOC entry 176 (class 1259 OID 4107300)
-- Dependencies: 177 5
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 176
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 176
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 104, true);


--
-- TOC entry 174 (class 1259 OID 4107279)
-- Dependencies: 5
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- TOC entry 173 (class 1259 OID 4107277)
-- Dependencies: 5 174
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);


--
-- TOC entry 175 (class 1259 OID 4107292)
-- Dependencies: 5
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- TOC entry 179 (class 1259 OID 4107872)
-- Dependencies: 5
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.south_migrationhistory OWNER TO postgres;

--
-- TOC entry 178 (class 1259 OID 4107870)
-- Dependencies: 5 179
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.south_migrationhistory_id_seq OWNER TO postgres;

--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 178
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 178
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 7, true);


--
-- TOC entry 2211 (class 2604 OID 4107217)
-- Dependencies: 165 166 166
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2210 (class 2604 OID 4107202)
-- Dependencies: 163 164 164
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2209 (class 2604 OID 4107192)
-- Dependencies: 161 162 162
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2214 (class 2604 OID 4107262)
-- Dependencies: 171 172 172
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2212 (class 2604 OID 4107232)
-- Dependencies: 167 168 168
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2213 (class 2604 OID 4107247)
-- Dependencies: 169 170 170
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2223 (class 2604 OID 4107945)
-- Dependencies: 188 189 189
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_grupoproduto ALTER COLUMN id SET DEFAULT nextval('automacao_grupoproduto_id_seq'::regclass);


--
-- TOC entry 2220 (class 2604 OID 4107921)
-- Dependencies: 183 182 183
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_material ALTER COLUMN id SET DEFAULT nextval('automacao_material_id_seq'::regclass);


--
-- TOC entry 2226 (class 2604 OID 4107978)
-- Dependencies: 194 195 195
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_materialnotafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_materialnotafiscal_id_seq'::regclass);


--
-- TOC entry 2225 (class 2604 OID 4107968)
-- Dependencies: 193 192 193
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_notafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_notafiscal_id_seq'::regclass);


--
-- TOC entry 2222 (class 2604 OID 4107937)
-- Dependencies: 186 187 187
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_operador ALTER COLUMN id SET DEFAULT nextval('automacao_operador_id_seq'::regclass);


--
-- TOC entry 2227 (class 2604 OID 4108051)
-- Dependencies: 197 196 197
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_ordemfabricacao ALTER COLUMN id SET DEFAULT nextval('automacao_ordemfabricacao_id_seq'::regclass);


--
-- TOC entry 2228 (class 2604 OID 4108113)
-- Dependencies: 199 198 199
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_ordemfabricacao_materia_nota_fiscal ALTER COLUMN id SET DEFAULT nextval('automacao_ordemfabricacao_materia_nota_fiscal_id_seq'::regclass);


--
-- TOC entry 2224 (class 2604 OID 4107955)
-- Dependencies: 191 190 191
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_produto ALTER COLUMN id SET DEFAULT nextval('automacao_produto_id_seq'::regclass);


--
-- TOC entry 2221 (class 2604 OID 4107929)
-- Dependencies: 185 184 185
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_setor ALTER COLUMN id SET DEFAULT nextval('automacao_setor_id_seq'::regclass);


--
-- TOC entry 2219 (class 2604 OID 4107913)
-- Dependencies: 181 180 181
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_tipomaterial ALTER COLUMN id SET DEFAULT nextval('automacao_tipomaterial_id_seq'::regclass);


--
-- TOC entry 2216 (class 2604 OID 4107305)
-- Dependencies: 176 177 177
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2215 (class 2604 OID 4107282)
-- Dependencies: 173 174 174
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2218 (class 2604 OID 4107875)
-- Dependencies: 178 179 179
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- TOC entry 2341 (class 0 OID 4107214)
-- Dependencies: 166
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
1	usuario
\.


--
-- TOC entry 2340 (class 0 OID 4107199)
-- Dependencies: 164
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
34	1	1
35	1	2
36	1	3
37	1	4
38	1	5
39	1	6
40	1	7
41	1	8
42	1	9
43	1	13
44	1	14
45	1	15
46	1	19
47	1	20
48	1	21
49	1	22
50	1	23
51	1	24
52	1	25
53	1	26
54	1	27
55	1	28
56	1	29
57	1	30
\.


--
-- TOC entry 2339 (class 0 OID 4107189)
-- Dependencies: 162
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add log entry	6	add_logentry
17	Can change log entry	6	change_logentry
18	Can delete log entry	6	delete_logentry
19	Can add Setor	7	add_setor
20	Can change Setor	7	change_setor
21	Can delete Setor	7	delete_setor
22	Can add Operador	8	add_operador
23	Can change Operador	8	change_operador
24	Can delete Operador	8	delete_operador
25	Can add Tipo de Material	9	add_tipomaterial
26	Can change Tipo de Material	9	change_tipomaterial
27	Can delete Tipo de Material	9	delete_tipomaterial
28	Can add Material	10	add_material
29	Can change Material	10	change_material
30	Can delete Material	10	delete_material
40	Can add Grupo de Produto	14	add_grupoproduto
41	Can change Grupo de Produto	14	change_grupoproduto
42	Can delete Grupo de Produto	14	delete_grupoproduto
43	Can add Produto	15	add_produto
44	Can change Produto	15	change_produto
45	Can delete Produto	15	delete_produto
46	Can add Nota Fiscal	16	add_notafiscal
47	Can change Nota Fiscal	16	change_notafiscal
48	Can delete Nota Fiscal	16	delete_notafiscal
49	Can add material nota fiscal	17	add_materialnotafiscal
50	Can change material nota fiscal	17	change_materialnotafiscal
51	Can delete material nota fiscal	17	delete_materialnotafiscal
52	Can add migration history	18	add_migrationhistory
53	Can change migration history	18	change_migrationhistory
54	Can delete migration history	18	delete_migrationhistory
55	Can add Ordem de Fabricação	19	add_ordemfabricacao
56	Can change Ordem de Fabricação	19	change_ordemfabricacao
57	Can delete Ordem de Fabricação	19	delete_ordemfabricacao
\.


--
-- TOC entry 2344 (class 0 OID 4107259)
-- Dependencies: 172
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$10000$RIAVFafp0yAE$9lsIi3xnxO5d8+KptoiRtMghNTzwPRoNdlPrs8L0O5U=	2013-08-23 17:51:54.640555-03	f	tiago				t	t	2013-08-23 17:50:09-03
3	pbkdf2_sha256$10000$UbHZipoUJAaJ$yHzH2o5yc+MZX8vRWQHbSbj+U89QtHJrMvrEmqAAIto=	2013-09-03 14:43:30.644529-03	f	usuario1				f	t	2013-09-03 14:43:30.644625-03
1	pbkdf2_sha256$10000$2AoQEh4eOStZ$ra3diDFyiO2Ii1lOuzV7AwYnRLJPIM2yJ1h8FoTU4zU=	2013-10-08 20:58:15.891834-03	t	admin			tiagowd@gmail.com	t	t	2013-08-23 17:33:11.619931-03
\.


--
-- TOC entry 2342 (class 0 OID 4107229)
-- Dependencies: 168
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
2	2	1
\.


--
-- TOC entry 2343 (class 0 OID 4107244)
-- Dependencies: 170
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2353 (class 0 OID 4107942)
-- Dependencies: 189
-- Data for Name: automacao_grupoproduto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_grupoproduto (id, codigo, descricao) FROM stdin;
1	01	Grupo Produto 01
\.


--
-- TOC entry 2350 (class 0 OID 4107918)
-- Dependencies: 183
-- Data for Name: automacao_material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_material (id, tipo_material_id, descricao, codigo) FROM stdin;
1	1	Material 01	0
2	1	material 02	0
3	1	Material taltal	123
\.


--
-- TOC entry 2356 (class 0 OID 4107975)
-- Dependencies: 195
-- Data for Name: automacao_materialnotafiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_materialnotafiscal (id, nota_fiscal_id, material_id, volume, data_entrada, peso, valor, status) FROM stdin;
5	1	1	12	2013-09-04	98.00	50.10	0
6	1	1	31	2013-09-04	3.21	1.23	0
7	2	1	100.0	2013-09-30	10.00	120.00	0
8	2	2	200.0	2013-09-05	100.00	120.25	0
9	10	1	123123	2013-09-11	3212.00	312232.00	Finalizado
10	11	2	3122	2013-09-11	321.23	3122.21	Em aberto
11	12	2	21	2013-09-11	31.22	62.34	0
13	13	1	20	2013-10-15	41.22	512.00	0
12	13	3	10	2013-10-15	1232.00	3120.12	0
\.


--
-- TOC entry 2355 (class 0 OID 4107965)
-- Dependencies: 193
-- Data for Name: automacao_notafiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_notafiscal (id, numero, valor_total) FROM stdin;
1	123321	51.33
2	12	240.25
10	312312312	312232.00
11	0000	3122.21
12	0120	62.34
13	010101	3632.12
\.


--
-- TOC entry 2352 (class 0 OID 4107934)
-- Dependencies: 187
-- Data for Name: automacao_operador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_operador (id, setor_id, nome) FROM stdin;
1	1	Operador 01
\.


--
-- TOC entry 2357 (class 0 OID 4108048)
-- Dependencies: 197
-- Data for Name: automacao_ordemfabricacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_ordemfabricacao (id, numero_of, nota_fiscal_id, tipo_material_id, produto_id, operador_id, data_inicial, data_final, peso_bruto, peso_liquido, previsao, perda) FROM stdin;
1	12312	2	1	1	1	2013-09-24	2013-09-24	1.00	1.00	1.00	1.00
2	333111	13	1	1	1	2013-10-15	2013-10-17	123412.00	13312.00	123123.00	3333.00
\.


--
-- TOC entry 2358 (class 0 OID 4108110)
-- Dependencies: 199
-- Data for Name: automacao_ordemfabricacao_materia_nota_fiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_ordemfabricacao_materia_nota_fiscal (id, ordemfabricacao_id, materialnotafiscal_id) FROM stdin;
18	1	8
38	2	12
39	2	13
\.


--
-- TOC entry 2354 (class 0 OID 4107952)
-- Dependencies: 191
-- Data for Name: automacao_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_produto (id, grupo_produto_id, codigo, descricao) FROM stdin;
1	1	01	produto 01
\.


--
-- TOC entry 2351 (class 0 OID 4107926)
-- Dependencies: 185
-- Data for Name: automacao_setor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_setor (id, descricao) FROM stdin;
1	Setor 01
\.


--
-- TOC entry 2349 (class 0 OID 4107910)
-- Dependencies: 181
-- Data for Name: automacao_tipomaterial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_tipomaterial (id, descricao) FROM stdin;
1	Tipo Material 01
2	Tipo Material 02
3	Tipo Material 03
\.


--
-- TOC entry 2347 (class 0 OID 4107302)
-- Dependencies: 177
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
1	2013-08-23 17:35:18.021247-03	1	10	1	Material object	1	
2	2013-08-23 17:35:30.536039-03	1	10	2	Material object	1	
3	2013-08-23 17:50:09.523975-03	1	3	2	tiago	1	
4	2013-08-23 17:50:51.345726-03	1	2	1	usuario	1	
5	2013-08-23 17:51:08.333118-03	1	3	2	tiago	2	Modificado password e groups.
6	2013-08-23 17:51:45.065249-03	1	3	2	tiago	2	Modificado password e is_staff.
7	2013-08-23 17:52:32.673406-03	2	2	1	usuario	2	Nenhum campo modificado.
8	2013-08-23 18:16:00.715733-03	1	10	3	Material object	1	
11	2013-08-23 18:18:53.409504-03	1	10	4	Material object	1	
16	2013-08-28 20:56:08.926526-03	1	9	1	Tipo Material 01	1	
17	2013-08-28 20:57:11.460916-03	1	9	1	Tipo Material 01	1	
18	2013-08-28 20:57:16.11312-03	1	10	1	Material 01	1	
19	2013-08-28 20:57:28.133329-03	1	7	1	Operador 01	1	
20	2013-08-28 20:57:38.142491-03	1	7	2	Setor 01	1	
21	2013-08-28 20:57:42.206271-03	1	8	1	Operador 01	1	
22	2013-08-28 20:57:56.767265-03	1	7	1	Operador 01	3	
23	2013-08-28 20:58:19.225366-03	1	14	1	123	1	
24	2013-08-28 20:58:25.452636-03	1	14	1	123	2	Nenhum campo modificado.
25	2013-08-28 20:58:30.609015-03	1	14	1	123	2	Nenhum campo modificado.
26	2013-08-30 14:57:05.805092-03	1	15	1	321	1	
27	2013-08-30 14:57:12.206536-03	1	15	1	321	2	Nenhum campo modificado.
28	2013-09-03 10:34:47.630771-03	1	10	1	material 03	1	
29	2013-09-03 10:35:10.549307-03	1	16	1	123	1	
30	2013-09-03 10:35:13.461615-03	1	16	1	123	2	Nenhum campo modificado.
31	2013-09-03 10:39:09.222505-03	1	16	1	123	2	Nenhum campo modificado.
32	2013-09-03 10:40:12.589719-03	1	16	1	234	1	
33	2013-09-03 10:40:26.722947-03	1	16	1	234	2	Nenhum campo modificado.
34	2013-09-03 14:40:14.19502-03	1	10	1	material 03	1	
35	2013-09-03 14:40:31.603013-03	1	10	2	Produto 01	1	
36	2013-09-03 14:40:58.767104-03	1	16	2	32432	1	
37	2013-09-03 14:43:30.905659-03	1	3	3	usuario1	1	
38	2013-09-03 19:53:12.913967-03	1	16	3	123123123	1	
39	2013-09-03 20:11:34.011202-03	1	16	3	123123123	2	Modificado valor_total.
40	2013-09-03 20:29:54.090226-03	1	16	1	234	2	Nenhum campo modificado.
41	2013-09-04 10:50:21.291483-03	1	9	1	Tipo Material 01	1	
42	2013-09-04 10:50:26.444911-03	1	10	1	Material 01	1	
43	2013-09-04 13:28:27.522901-03	1	16	1	123321	1	
44	2013-09-04 13:28:34.964875-03	1	16	1	123321	2	Nenhum campo modificado.
45	2013-09-04 13:31:01.53933-03	1	16	1	123321	2	Modificado valor_total. Modificado valor para Material "Material 01". Modificado valor para Material "Material 01".
46	2013-09-04 13:31:08.254953-03	1	16	1	123321	2	Modificado valor_total.
47	2013-09-04 13:31:19.337765-03	1	16	1	123321	2	Modificado valor_total. Modificado valor para Material "Material 01". Modificado valor para Material "Material 01".
48	2013-09-04 13:31:24.569885-03	1	16	1	123321	2	Modificado valor_total.
49	2013-09-04 13:31:27.987379-03	1	16	1	123321	2	Modificado valor_total.
50	2013-09-04 23:46:43.155577-03	1	16	1	123321	2	Modificado valor_total. Adicionado Material "Material 01"
51	2013-09-04 23:47:55.940358-03	1	16	1	123321	2	Deletado Material "Material 01".
52	2013-09-04 23:49:20.821508-03	1	16	1	123321	2	Modificado valor_total.
53	2013-09-04 23:49:28.421438-03	1	16	1	123321	2	Modificado peso para Material "Material 01".
54	2013-09-04 23:49:31.837346-03	1	16	1	123321	2	Nenhum campo modificado.
55	2013-09-05 20:23:25.311045-03	1	10	2	material 02	1	
56	2013-09-05 20:24:37.712373-03	1	16	2	12	1	
57	2013-09-11 19:57:22.112026-03	1	16	10	312312312	1	
58	2013-09-11 19:58:21.978569-03	1	16	10	312312312	2	Nenhum campo modificado.
59	2013-09-11 19:58:34.694977-03	1	16	10	312312312	2	Nenhum campo modificado.
60	2013-09-11 19:59:05.197788-03	1	16	10	312312312	2	Nenhum campo modificado.
61	2013-09-11 20:01:13.947356-03	1	16	11	0000	1	
62	2013-09-11 20:02:38.812797-03	1	16	11	0000	2	Nenhum campo modificado.
63	2013-09-11 20:03:00.825772-03	1	16	12	0120	1	
64	2013-09-11 20:23:54.185702-03	1	9	2	Tipo Material 02	1	
65	2013-09-11 20:24:00.94212-03	1	9	3	Tipo Material 03	1	
66	2013-09-24 01:05:08.534841-03	1	14	1	01	1	
67	2013-09-24 01:05:18.689521-03	1	15	1	01	1	
68	2013-09-24 01:05:38.75255-03	1	7	1	Setor 01	1	
69	2013-09-24 01:05:42.119878-03	1	8	1	Operador 01	1	
70	2013-09-24 02:30:46.081324-03	1	19	None	123123	1	
71	2013-09-24 02:32:56.862309-03	1	19	1	12312	1	
72	2013-09-24 18:18:06.126021-03	1	19	1	12312	2	Nenhum campo modificado.
73	2013-10-14 20:24:11.765595-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
74	2013-10-14 20:24:20.625394-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
75	2013-10-14 20:28:05.425881-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
76	2013-10-14 20:40:30.249839-03	1	19	1	12312	2	Modificado nota_fiscal.
77	2013-10-14 20:40:39.372977-03	1	19	1	12312	2	Modificado nota_fiscal.
78	2013-10-14 20:45:33.039549-03	1	19	1	12312	2	Modificado nota_fiscal.
79	2013-10-15 00:41:09.880945-03	1	19	1	12312	2	Modificado nota_fiscal.
80	2013-10-15 00:43:18.028418-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
81	2013-10-15 01:00:03.857921-03	1	19	1	12312	2	Nenhum campo modificado.
82	2013-10-15 01:21:43.430292-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
83	2013-10-15 01:21:48.481968-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
84	2013-10-15 01:22:17.064066-03	1	19	1	12312	2	Modificado materia_nota_fiscal.
85	2013-10-15 16:01:51.932846-03	1	10	3	Material taltal	1	
86	2013-10-15 16:02:47.922917-03	1	16	13	010101	1	
87	2013-10-15 16:04:50.53555-03	1	19	2	333111	1	
88	2013-10-16 18:46:17.87298-03	1	19	2	333111	2	Nenhum campo modificado.
89	2013-10-16 19:41:28.406358-03	1	19	2	333111	2	Nenhum campo modificado.
90	2013-10-16 19:46:56.499842-03	1	19	2	333111	2	Nenhum campo modificado.
91	2013-10-16 19:49:32.561737-03	1	19	2	333111	2	Nenhum campo modificado.
92	2013-10-16 20:18:01.040532-03	1	19	2	333111	2	Nenhum campo modificado.
93	2013-10-16 20:22:20.73895-03	1	19	2	333111	2	Nenhum campo modificado.
94	2013-10-16 20:26:05.725601-03	1	19	2	333111	2	Nenhum campo modificado.
95	2013-10-16 20:27:21.645181-03	1	19	2	333111	2	Nenhum campo modificado.
96	2013-10-16 20:27:35.666688-03	1	19	2	333111	2	Nenhum campo modificado.
97	2013-10-16 20:27:47.807791-03	1	19	2	333111	2	Nenhum campo modificado.
98	2013-10-16 20:28:35.790253-03	1	19	2	333111	2	Nenhum campo modificado.
99	2013-10-16 20:28:41.355085-03	1	19	2	333111	2	Nenhum campo modificado.
100	2013-10-16 23:04:06.060252-03	1	19	2	333111	2	Nenhum campo modificado.
101	2013-10-16 23:09:28.661493-03	1	19	2	333111	2	Nenhum campo modificado.
102	2013-10-16 23:13:54.883403-03	1	19	2	333111	2	Modificado materia_nota_fiscal.
103	2013-10-16 23:14:50.669507-03	1	19	2	333111	2	Nenhum campo modificado.
104	2013-10-16 23:15:45.392707-03	1	19	2	333111	2	Nenhum campo modificado.
\.


--
-- TOC entry 2345 (class 0 OID 4107279)
-- Dependencies: 174
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	log entry	admin	logentry
7	Setor	automacao	setor
8	Operador	automacao	operador
9	Tipo de Material	automacao	tipomaterial
10	Material	automacao	material
14	Grupo de Produto	automacao	grupoproduto
15	Produto	automacao	produto
16	Nota Fiscal	automacao	notafiscal
17	material nota fiscal	automacao	materialnotafiscal
18	migration history	south	migrationhistory
19	Ordem de Fabricação	automacao	ordemfabricacao
\.


--
-- TOC entry 2346 (class 0 OID 4107292)
-- Dependencies: 175
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
1oxw932q7lv25nfyy3muluzdo6owls6b	NjNiNWY1ODExMjRjMjZhMGFhZDVmZDlkNzU4MzY0ZjM1NmI3OTE0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-06 17:53:20.074751-03
nrlqei239kw7jl0slj868nqqdnfztcms	NjNiNWY1ODExMjRjMjZhMGFhZDVmZDlkNzU4MzY0ZjM1NmI3OTE0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-06 19:50:34.98394-03
m5g6fuebhrvxr2dmamxjtu6js06cxfk5	MjljMjFhNjRkMDJjZTkxZGFkYWM4NjE0OTBmMmY4ZTRmY2NlMzlkZDqAAn1xAVgKAAAAdGVzdGNvb2tpZXECWAYAAAB3b3JrZWRxA3Mu	2013-09-17 20:55:07.500739-03
rzdp9hcraxcly5nwn82abcv1vhxxtvco	NjNiNWY1ODExMjRjMjZhMGFhZDVmZDlkNzU4MzY0ZjM1NmI3OTE0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-09-23 20:30:48.00781-03
lyhm067l0t4slx5p5j8adcs2rlhxbybz	NjNiNWY1ODExMjRjMjZhMGFhZDVmZDlkNzU4MzY0ZjM1NmI3OTE0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-10-08 00:48:00.582073-03
z0hsz4inauta0zke9xx10dc1xyi2wb2s	NjNiNWY1ODExMjRjMjZhMGFhZDVmZDlkNzU4MzY0ZjM1NmI3OTE0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-10-22 19:58:15.910115-03
\.


--
-- TOC entry 2348 (class 0 OID 4107872)
-- Dependencies: 179
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
1	automacao	0001_initial	2013-09-03 21:39:15.177783-03
2	automacao	0002_auto__del_unique_materialnotafiscal_data_entrada__del_unique_materialn	2013-09-03 21:39:15.281556-03
3	automacao	0002_auto__add_field_materialnotafiscal_status	2013-09-06 19:10:49.911439-03
4	automacao	0003_auto__add_ordemfabricacao__chg_field_materialnotafiscal_status	2013-09-11 00:53:34.112657-03
5	automacao	0004_auto__add_field_materialnotafiscal_ordem_fabricacao	2013-09-24 01:35:12.639134-03
6	automacao	0005_auto__add_field_material_codigo	2013-10-08 21:11:36.794872-03
7	automacao	0006_auto__del_field_materialnotafiscal_ordem_fabricacao	2013-10-14 20:12:54.580493-03
\.


--
-- TOC entry 2241 (class 2606 OID 4107221)
-- Dependencies: 166 166
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2236 (class 2606 OID 4107206)
-- Dependencies: 164 164 164
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2239 (class 2606 OID 4107204)
-- Dependencies: 164 164
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2244 (class 2606 OID 4107219)
-- Dependencies: 166 166
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2231 (class 2606 OID 4107196)
-- Dependencies: 162 162 162
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2233 (class 2606 OID 4107194)
-- Dependencies: 162 162
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2247 (class 2606 OID 4107234)
-- Dependencies: 168 168
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2250 (class 2606 OID 4107236)
-- Dependencies: 168 168 168
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2258 (class 2606 OID 4107264)
-- Dependencies: 172 172
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2253 (class 2606 OID 4107249)
-- Dependencies: 170 170
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2256 (class 2606 OID 4107251)
-- Dependencies: 170 170 170
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2260 (class 2606 OID 4107266)
-- Dependencies: 172 172
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2287 (class 2606 OID 4107949)
-- Dependencies: 189 189
-- Name: automacao_grupoproduto_codigo_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_grupoproduto
    ADD CONSTRAINT automacao_grupoproduto_codigo_key UNIQUE (codigo);


--
-- TOC entry 2290 (class 2606 OID 4107947)
-- Dependencies: 189 189
-- Name: automacao_grupoproduto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_grupoproduto
    ADD CONSTRAINT automacao_grupoproduto_pkey PRIMARY KEY (id);


--
-- TOC entry 2279 (class 2606 OID 4107923)
-- Dependencies: 183 183
-- Name: automacao_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_material
    ADD CONSTRAINT automacao_material_pkey PRIMARY KEY (id);


--
-- TOC entry 2305 (class 2606 OID 4107980)
-- Dependencies: 195 195
-- Name: automacao_materialnotafiscal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT automacao_materialnotafiscal_pkey PRIMARY KEY (id);


--
-- TOC entry 2298 (class 2606 OID 4107972)
-- Dependencies: 193 193
-- Name: automacao_notafiscal_numero_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_notafiscal
    ADD CONSTRAINT automacao_notafiscal_numero_key UNIQUE (numero);


--
-- TOC entry 2301 (class 2606 OID 4107970)
-- Dependencies: 193 193
-- Name: automacao_notafiscal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_notafiscal
    ADD CONSTRAINT automacao_notafiscal_pkey PRIMARY KEY (id);


--
-- TOC entry 2284 (class 2606 OID 4107939)
-- Dependencies: 187 187
-- Name: automacao_operador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_operador
    ADD CONSTRAINT automacao_operador_pkey PRIMARY KEY (id);


--
-- TOC entry 2314 (class 2606 OID 4108117)
-- Dependencies: 199 199 199
-- Name: automacao_ordemfabrica_ordemfabricacao_id_74d0cfabedb8cf5c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_ordemfabricacao_materia_nota_fiscal
    ADD CONSTRAINT automacao_ordemfabrica_ordemfabricacao_id_74d0cfabedb8cf5c_uniq UNIQUE (ordemfabricacao_id, materialnotafiscal_id);


--
-- TOC entry 2318 (class 2606 OID 4108115)
-- Dependencies: 199 199
-- Name: automacao_ordemfabricacao_materia_nota_fiscal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_ordemfabricacao_materia_nota_fiscal
    ADD CONSTRAINT automacao_ordemfabricacao_materia_nota_fiscal_pkey PRIMARY KEY (id);


--
-- TOC entry 2310 (class 2606 OID 4108053)
-- Dependencies: 197 197
-- Name: automacao_ordemfabricacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT automacao_ordemfabricacao_pkey PRIMARY KEY (id);


--
-- TOC entry 2292 (class 2606 OID 4107962)
-- Dependencies: 191 191
-- Name: automacao_produto_descricao_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_produto
    ADD CONSTRAINT automacao_produto_descricao_key UNIQUE (descricao);


--
-- TOC entry 2296 (class 2606 OID 4107960)
-- Dependencies: 191 191
-- Name: automacao_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_produto
    ADD CONSTRAINT automacao_produto_pkey PRIMARY KEY (id);


--
-- TOC entry 2282 (class 2606 OID 4107931)
-- Dependencies: 185 185
-- Name: automacao_setor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_setor
    ADD CONSTRAINT automacao_setor_pkey PRIMARY KEY (id);


--
-- TOC entry 2277 (class 2606 OID 4107915)
-- Dependencies: 181 181
-- Name: automacao_tipomaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_tipomaterial
    ADD CONSTRAINT automacao_tipomaterial_pkey PRIMARY KEY (id);


--
-- TOC entry 2272 (class 2606 OID 4107311)
-- Dependencies: 177 177
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2263 (class 2606 OID 4107286)
-- Dependencies: 174 174 174
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- TOC entry 2265 (class 2606 OID 4107284)
-- Dependencies: 174 174
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2268 (class 2606 OID 4107299)
-- Dependencies: 175 175
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2275 (class 2606 OID 4107877)
-- Dependencies: 179 179
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- TOC entry 2242 (class 1259 OID 4107427)
-- Dependencies: 166
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2234 (class 1259 OID 4107425)
-- Dependencies: 164
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2237 (class 1259 OID 4107426)
-- Dependencies: 164
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2229 (class 1259 OID 4107424)
-- Dependencies: 162
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2245 (class 1259 OID 4107429)
-- Dependencies: 168
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2248 (class 1259 OID 4107428)
-- Dependencies: 168
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2251 (class 1259 OID 4107431)
-- Dependencies: 170
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2254 (class 1259 OID 4107430)
-- Dependencies: 170
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2261 (class 1259 OID 4107432)
-- Dependencies: 172
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2288 (class 1259 OID 4108001)
-- Dependencies: 189
-- Name: automacao_grupoproduto_codigo_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_grupoproduto_codigo_like ON automacao_grupoproduto USING btree (codigo varchar_pattern_ops);


--
-- TOC entry 2280 (class 1259 OID 4107994)
-- Dependencies: 183
-- Name: automacao_material_tipo_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_material_tipo_material_id ON automacao_material USING btree (tipo_material_id);


--
-- TOC entry 2302 (class 1259 OID 4108021)
-- Dependencies: 195
-- Name: automacao_materialnotafiscal_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_materialnotafiscal_material_id ON automacao_materialnotafiscal USING btree (material_id);


--
-- TOC entry 2303 (class 1259 OID 4108015)
-- Dependencies: 195
-- Name: automacao_materialnotafiscal_nota_fiscal_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_materialnotafiscal_nota_fiscal_id ON automacao_materialnotafiscal USING btree (nota_fiscal_id);


--
-- TOC entry 2306 (class 1259 OID 4108022)
-- Dependencies: 195
-- Name: automacao_materialnotafiscal_volume_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_materialnotafiscal_volume_like ON automacao_materialnotafiscal USING btree (volume varchar_pattern_ops);


--
-- TOC entry 2299 (class 1259 OID 4108009)
-- Dependencies: 193
-- Name: automacao_notafiscal_numero_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_notafiscal_numero_like ON automacao_notafiscal USING btree (numero varchar_pattern_ops);


--
-- TOC entry 2285 (class 1259 OID 4108000)
-- Dependencies: 187
-- Name: automacao_operador_setor_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_operador_setor_id ON automacao_operador USING btree (setor_id);


--
-- TOC entry 2315 (class 1259 OID 4108129)
-- Dependencies: 199
-- Name: automacao_ordemfabricacao_materia_nota_fiscal_materialnotafa6b8; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_materia_nota_fiscal_materialnotafa6b8 ON automacao_ordemfabricacao_materia_nota_fiscal USING btree (materialnotafiscal_id);


--
-- TOC entry 2316 (class 1259 OID 4108123)
-- Dependencies: 199
-- Name: automacao_ordemfabricacao_materia_nota_fiscal_ordemfabricacc71b; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_materia_nota_fiscal_ordemfabricacc71b ON automacao_ordemfabricacao_materia_nota_fiscal USING btree (ordemfabricacao_id);


--
-- TOC entry 2307 (class 1259 OID 4108059)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_nota_fiscal_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_nota_fiscal_id ON automacao_ordemfabricacao USING btree (nota_fiscal_id);


--
-- TOC entry 2308 (class 1259 OID 4108077)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_operador_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_operador_id ON automacao_ordemfabricacao USING btree (operador_id);


--
-- TOC entry 2311 (class 1259 OID 4108071)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_produto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_produto_id ON automacao_ordemfabricacao USING btree (produto_id);


--
-- TOC entry 2312 (class 1259 OID 4108065)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_tipo_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_tipo_material_id ON automacao_ordemfabricacao USING btree (tipo_material_id);


--
-- TOC entry 2293 (class 1259 OID 4108008)
-- Dependencies: 191
-- Name: automacao_produto_descricao_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_produto_descricao_like ON automacao_produto USING btree (descricao text_pattern_ops);


--
-- TOC entry 2294 (class 1259 OID 4108007)
-- Dependencies: 191
-- Name: automacao_produto_grupo_produto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_produto_grupo_produto_id ON automacao_produto USING btree (grupo_produto_id);


--
-- TOC entry 2270 (class 1259 OID 4107436)
-- Dependencies: 177
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2273 (class 1259 OID 4107435)
-- Dependencies: 177
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- TOC entry 2266 (class 1259 OID 4107434)
-- Dependencies: 175
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- TOC entry 2269 (class 1259 OID 4107433)
-- Dependencies: 175
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2320 (class 2606 OID 4107207)
-- Dependencies: 162 164 2232
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2322 (class 2606 OID 4107237)
-- Dependencies: 2243 168 166
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2324 (class 2606 OID 4107252)
-- Dependencies: 170 2232 162
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2319 (class 2606 OID 4107287)
-- Dependencies: 174 162 2264
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2327 (class 2606 OID 4107317)
-- Dependencies: 2264 174 177
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2326 (class 2606 OID 4107312)
-- Dependencies: 177 172 2257
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2321 (class 2606 OID 4107222)
-- Dependencies: 164 2243 166
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2330 (class 2606 OID 4108002)
-- Dependencies: 191 2289 189
-- Name: grupo_produto_id_refs_id_d2bb55c0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_produto
    ADD CONSTRAINT grupo_produto_id_refs_id_d2bb55c0 FOREIGN KEY (grupo_produto_id) REFERENCES automacao_grupoproduto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2332 (class 2606 OID 4108016)
-- Dependencies: 195 183 2278
-- Name: material_id_refs_id_2bd07063; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT material_id_refs_id_2bd07063 FOREIGN KEY (material_id) REFERENCES automacao_material(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2338 (class 2606 OID 4108124)
-- Dependencies: 2304 195 199
-- Name: materialnotafiscal_id_refs_id_8cd187ce; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao_materia_nota_fiscal
    ADD CONSTRAINT materialnotafiscal_id_refs_id_8cd187ce FOREIGN KEY (materialnotafiscal_id) REFERENCES automacao_materialnotafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2333 (class 2606 OID 4108054)
-- Dependencies: 193 2300 197
-- Name: nota_fiscal_id_refs_id_54e07755; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT nota_fiscal_id_refs_id_54e07755 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2331 (class 2606 OID 4108010)
-- Dependencies: 193 2300 195
-- Name: nota_fiscal_id_refs_id_9a95d5e1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT nota_fiscal_id_refs_id_9a95d5e1 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2336 (class 2606 OID 4108072)
-- Dependencies: 2283 197 187
-- Name: operador_id_refs_id_5a2f47c2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT operador_id_refs_id_5a2f47c2 FOREIGN KEY (operador_id) REFERENCES automacao_operador(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2337 (class 2606 OID 4108118)
-- Dependencies: 197 199 2309
-- Name: ordemfabricacao_id_refs_id_77bc84cd; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao_materia_nota_fiscal
    ADD CONSTRAINT ordemfabricacao_id_refs_id_77bc84cd FOREIGN KEY (ordemfabricacao_id) REFERENCES automacao_ordemfabricacao(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2335 (class 2606 OID 4108066)
-- Dependencies: 191 2295 197
-- Name: produto_id_refs_id_64aedf7f; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT produto_id_refs_id_64aedf7f FOREIGN KEY (produto_id) REFERENCES automacao_produto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2329 (class 2606 OID 4107995)
-- Dependencies: 2281 185 187
-- Name: setor_id_refs_id_2f4ace3b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_operador
    ADD CONSTRAINT setor_id_refs_id_2f4ace3b FOREIGN KEY (setor_id) REFERENCES automacao_setor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2334 (class 2606 OID 4108060)
-- Dependencies: 2276 181 197
-- Name: tipo_material_id_refs_id_49d5f675; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT tipo_material_id_refs_id_49d5f675 FOREIGN KEY (tipo_material_id) REFERENCES automacao_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2328 (class 2606 OID 4107989)
-- Dependencies: 181 183 2276
-- Name: tipo_material_id_refs_id_6bd3f054; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_material
    ADD CONSTRAINT tipo_material_id_refs_id_6bd3f054 FOREIGN KEY (tipo_material_id) REFERENCES automacao_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2323 (class 2606 OID 4107267)
-- Dependencies: 168 2257 172
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2325 (class 2606 OID 4107272)
-- Dependencies: 2257 172 170
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2363 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-10-18 19:08:52 BRT

--
-- PostgreSQL database dump complete
--

