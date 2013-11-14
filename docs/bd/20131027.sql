--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.3
-- Dumped by pg_dump version 9.1.0
-- Started on 2013-10-27 13:22:02 BRT

SET statement_timeout = 0;
SET client_encoding = 'SQL_ASCII';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- TOC entry 204 (class 3079 OID 11907)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2387 (class 0 OID 0)
-- Dependencies: 204
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
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 165
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 2389 (class 0 OID 0)
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
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 163
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 2391 (class 0 OID 0)
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
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 161
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 161
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_permission_id_seq', 87, true);


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
-- Dependencies: 168 5
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
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 167
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 2395 (class 0 OID 0)
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
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 171
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 2397 (class 0 OID 0)
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
-- Dependencies: 170 5
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
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 169
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 169
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- TOC entry 199 (class 1259 OID 4110835)
-- Dependencies: 5
-- Name: automacao_etiquetaremessa; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_etiquetaremessa (
    id integer NOT NULL,
    numero_etiqueta_remessa character varying(100) NOT NULL,
    peso numeric(8,2) NOT NULL,
    tipo_etiqueta character varying(100) NOT NULL,
    previsao numeric(8,2),
    data_inicio date NOT NULL,
    ordem_fabricacao_id integer NOT NULL,
    peso_1g numeric(8,2) NOT NULL,
    produto_id integer NOT NULL
);


ALTER TABLE public.automacao_etiquetaremessa OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 4110833)
-- Dependencies: 199 5
-- Name: automacao_etiquetaremessa_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_etiquetaremessa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_etiquetaremessa_id_seq OWNER TO postgres;

--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 198
-- Name: automacao_etiquetaremessa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_etiquetaremessa_id_seq OWNED BY automacao_etiquetaremessa.id;


--
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 198
-- Name: automacao_etiquetaremessa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_etiquetaremessa_id_seq', 2, true);


--
-- TOC entry 201 (class 1259 OID 4110843)
-- Dependencies: 5
-- Name: automacao_etiquetaretorno; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_etiquetaretorno (
    id integer NOT NULL,
    etiqueta_remessa_id integer NOT NULL
);


ALTER TABLE public.automacao_etiquetaretorno OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 4110841)
-- Dependencies: 201 5
-- Name: automacao_etiquetaretorno_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE automacao_etiquetaretorno_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.automacao_etiquetaretorno_id_seq OWNER TO postgres;

--
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 200
-- Name: automacao_etiquetaretorno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_etiquetaretorno_id_seq OWNED BY automacao_etiquetaretorno.id;


--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 200
-- Name: automacao_etiquetaretorno_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_etiquetaretorno_id_seq', 1, false);


--
-- TOC entry 203 (class 1259 OID 4110854)
-- Dependencies: 5
-- Name: automacao_etiquetaretornoniple; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_etiquetaretornoniple (
    etiquetaretorno_ptr_id integer NOT NULL,
    peso_rosqueado numeric(8,2) NOT NULL,
    peso_1g numeric(8,2) NOT NULL,
    data_peso_rosqueado date NOT NULL,
    quantidade_peso_rosqueado character varying(100) NOT NULL,
    peso_niquelado numeric(8,2) NOT NULL,
    peso_embalado numeric(8,2) NOT NULL,
    data_peso_niquelado date NOT NULL,
    quantidade_peso_niquelado character varying(100) NOT NULL,
    responsavel character varying(100) NOT NULL
);


ALTER TABLE public.automacao_etiquetaretornoniple OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 4110849)
-- Dependencies: 5
-- Name: automacao_etiquetaretornoraio; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_etiquetaretornoraio (
    etiquetaretorno_ptr_id integer NOT NULL,
    peso_desengraxado numeric(8,2) NOT NULL,
    peso_1g numeric(8,2) NOT NULL,
    peso_polido numeric(8,2) NOT NULL,
    quantidade character varying(100) NOT NULL,
    data date NOT NULL,
    responsavel character varying(100) NOT NULL
);


ALTER TABLE public.automacao_etiquetaretornoraio OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 4110818)
-- Dependencies: 2238 5
-- Name: automacao_materialnotafiscal; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_materialnotafiscal (
    id integer NOT NULL,
    nota_fiscal_id integer NOT NULL,
    material_id integer,
    volume smallint NOT NULL,
    data_entrada date NOT NULL,
    peso numeric(8,2) NOT NULL,
    valor numeric(8,2) NOT NULL,
    status character varying(100),
    CONSTRAINT automacao_materialnotafiscal_volume_check CHECK ((volume >= 0))
);


ALTER TABLE public.automacao_materialnotafiscal OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 4110816)
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
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 194
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_materialnotafiscal_id_seq OWNED BY automacao_materialnotafiscal.id;


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 194
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_materialnotafiscal_id_seq', 4, true);


--
-- TOC entry 193 (class 1259 OID 4110808)
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
-- TOC entry 192 (class 1259 OID 4110806)
-- Dependencies: 193 5
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
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 192
-- Name: automacao_notafiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_notafiscal_id_seq OWNED BY automacao_notafiscal.id;


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 192
-- Name: automacao_notafiscal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_notafiscal_id_seq', 1, true);


--
-- TOC entry 197 (class 1259 OID 4110827)
-- Dependencies: 5
-- Name: automacao_ordemfabricacao; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE automacao_ordemfabricacao (
    id integer NOT NULL,
    numero_of character varying(100) NOT NULL,
    nota_fiscal_id integer NOT NULL,
    material_id integer NOT NULL,
    produto_id integer,
    operador_id integer,
    data_inicial date,
    data_final date,
    peso_bruto numeric(8,2),
    peso_liquido numeric(8,2),
    previsao numeric(8,2),
    perda numeric(8,2)
);


ALTER TABLE public.automacao_ordemfabricacao OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 4110825)
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
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 196
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_ordemfabricacao_id_seq OWNED BY automacao_ordemfabricacao.id;


--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 196
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_ordemfabricacao_id_seq', 10103, true);


--
-- TOC entry 177 (class 1259 OID 4107302)
-- Dependencies: 2228 5
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
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 176
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 176
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 164, true);


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
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_content_type_id_seq', 29, true);


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
-- TOC entry 189 (class 1259 OID 4110759)
-- Dependencies: 5
-- Name: geral_grupoproduto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geral_grupoproduto (
    id integer NOT NULL,
    codigo character varying(100) NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.geral_grupoproduto OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 4110757)
-- Dependencies: 5 189
-- Name: geral_grupoproduto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE geral_grupoproduto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geral_grupoproduto_id_seq OWNER TO postgres;

--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 188
-- Name: geral_grupoproduto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_grupoproduto_id_seq OWNED BY geral_grupoproduto.id;


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 188
-- Name: geral_grupoproduto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_grupoproduto_id_seq', 1, true);


--
-- TOC entry 183 (class 1259 OID 4110735)
-- Dependencies: 5
-- Name: geral_material; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geral_material (
    id integer NOT NULL,
    tipo_material_id integer NOT NULL,
    codigo character varying(50) NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.geral_material OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 4110733)
-- Dependencies: 183 5
-- Name: geral_material_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE geral_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geral_material_id_seq OWNER TO postgres;

--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 182
-- Name: geral_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_material_id_seq OWNED BY geral_material.id;


--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 182
-- Name: geral_material_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_material_id_seq', 5, true);


--
-- TOC entry 187 (class 1259 OID 4110751)
-- Dependencies: 5
-- Name: geral_operador; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geral_operador (
    id integer NOT NULL,
    setor_id integer NOT NULL,
    nome character varying(100) NOT NULL
);


ALTER TABLE public.geral_operador OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 4110749)
-- Dependencies: 5 187
-- Name: geral_operador_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE geral_operador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geral_operador_id_seq OWNER TO postgres;

--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 186
-- Name: geral_operador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_operador_id_seq OWNED BY geral_operador.id;


--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 186
-- Name: geral_operador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_operador_id_seq', 1, true);


--
-- TOC entry 191 (class 1259 OID 4110769)
-- Dependencies: 5
-- Name: geral_produto; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geral_produto (
    id integer NOT NULL,
    grupo_produto_id integer NOT NULL,
    codigo character varying(100) NOT NULL,
    descricao text NOT NULL
);


ALTER TABLE public.geral_produto OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 4110767)
-- Dependencies: 5 191
-- Name: geral_produto_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE geral_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geral_produto_id_seq OWNER TO postgres;

--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 190
-- Name: geral_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_produto_id_seq OWNED BY geral_produto.id;


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 190
-- Name: geral_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_produto_id_seq', 6, true);


--
-- TOC entry 185 (class 1259 OID 4110743)
-- Dependencies: 5
-- Name: geral_setor; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geral_setor (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.geral_setor OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 4110741)
-- Dependencies: 185 5
-- Name: geral_setor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE geral_setor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geral_setor_id_seq OWNER TO postgres;

--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 184
-- Name: geral_setor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_setor_id_seq OWNED BY geral_setor.id;


--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 184
-- Name: geral_setor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_setor_id_seq', 1, true);


--
-- TOC entry 181 (class 1259 OID 4110727)
-- Dependencies: 5
-- Name: geral_tipomaterial; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE geral_tipomaterial (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);


ALTER TABLE public.geral_tipomaterial OWNER TO postgres;

--
-- TOC entry 180 (class 1259 OID 4110725)
-- Dependencies: 181 5
-- Name: geral_tipomaterial_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE geral_tipomaterial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.geral_tipomaterial_id_seq OWNER TO postgres;

--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 180
-- Name: geral_tipomaterial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_tipomaterial_id_seq OWNED BY geral_tipomaterial.id;


--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 180
-- Name: geral_tipomaterial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_tipomaterial_id_seq', 2, true);


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
-- Dependencies: 179 5
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
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 178
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 178
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 39, true);


--
-- TOC entry 2222 (class 2604 OID 4107217)
-- Dependencies: 166 165 166
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- TOC entry 2221 (class 2604 OID 4107202)
-- Dependencies: 163 164 164
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- TOC entry 2220 (class 2604 OID 4107192)
-- Dependencies: 162 161 162
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2225 (class 2604 OID 4107262)
-- Dependencies: 172 171 172
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2223 (class 2604 OID 4107232)
-- Dependencies: 167 168 168
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- TOC entry 2224 (class 2604 OID 4107247)
-- Dependencies: 169 170 170
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- TOC entry 2240 (class 2604 OID 4110838)
-- Dependencies: 198 199 199
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_etiquetaremessa ALTER COLUMN id SET DEFAULT nextval('automacao_etiquetaremessa_id_seq'::regclass);


--
-- TOC entry 2241 (class 2604 OID 4110846)
-- Dependencies: 201 200 201
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_etiquetaretorno ALTER COLUMN id SET DEFAULT nextval('automacao_etiquetaretorno_id_seq'::regclass);


--
-- TOC entry 2237 (class 2604 OID 4110821)
-- Dependencies: 194 195 195
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_materialnotafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_materialnotafiscal_id_seq'::regclass);


--
-- TOC entry 2236 (class 2604 OID 4110811)
-- Dependencies: 192 193 193
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_notafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_notafiscal_id_seq'::regclass);


--
-- TOC entry 2239 (class 2604 OID 4110830)
-- Dependencies: 196 197 197
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_ordemfabricacao ALTER COLUMN id SET DEFAULT nextval('automacao_ordemfabricacao_id_seq'::regclass);


--
-- TOC entry 2227 (class 2604 OID 4107305)
-- Dependencies: 176 177 177
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- TOC entry 2226 (class 2604 OID 4107282)
-- Dependencies: 174 173 174
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2234 (class 2604 OID 4110762)
-- Dependencies: 188 189 189
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_grupoproduto ALTER COLUMN id SET DEFAULT nextval('geral_grupoproduto_id_seq'::regclass);


--
-- TOC entry 2231 (class 2604 OID 4110738)
-- Dependencies: 183 182 183
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_material ALTER COLUMN id SET DEFAULT nextval('geral_material_id_seq'::regclass);


--
-- TOC entry 2233 (class 2604 OID 4110754)
-- Dependencies: 187 186 187
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_operador ALTER COLUMN id SET DEFAULT nextval('geral_operador_id_seq'::regclass);


--
-- TOC entry 2235 (class 2604 OID 4110772)
-- Dependencies: 190 191 191
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_produto ALTER COLUMN id SET DEFAULT nextval('geral_produto_id_seq'::regclass);


--
-- TOC entry 2232 (class 2604 OID 4110746)
-- Dependencies: 185 184 185
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_setor ALTER COLUMN id SET DEFAULT nextval('geral_setor_id_seq'::regclass);


--
-- TOC entry 2230 (class 2604 OID 4110730)
-- Dependencies: 181 180 181
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_tipomaterial ALTER COLUMN id SET DEFAULT nextval('geral_tipomaterial_id_seq'::regclass);


--
-- TOC entry 2229 (class 2604 OID 4107875)
-- Dependencies: 179 178 179
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- TOC entry 2361 (class 0 OID 4107214)
-- Dependencies: 166
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
1	usuario
\.


--
-- TOC entry 2360 (class 0 OID 4107199)
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
\.


--
-- TOC entry 2359 (class 0 OID 4107189)
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
58	Can add Tipo de Material	20	add_tipomaterial
59	Can change Tipo de Material	20	change_tipomaterial
60	Can delete Tipo de Material	20	delete_tipomaterial
61	Can add Material	21	add_material
62	Can change Material	21	change_material
63	Can delete Material	21	delete_material
64	Can add Setor	22	add_setor
65	Can change Setor	22	change_setor
66	Can delete Setor	22	delete_setor
67	Can add Operador	23	add_operador
68	Can change Operador	23	change_operador
69	Can delete Operador	23	delete_operador
70	Can add Grupo de Produto	24	add_grupoproduto
71	Can change Grupo de Produto	24	change_grupoproduto
72	Can delete Grupo de Produto	24	delete_grupoproduto
73	Can add Produto	25	add_produto
74	Can change Produto	25	change_produto
75	Can delete Produto	25	delete_produto
76	Can add Etiqueta	26	add_etiquetaremessa
77	Can change Etiqueta	26	change_etiquetaremessa
78	Can delete Etiqueta	26	delete_etiquetaremessa
79	Can add etiqueta retorno	27	add_etiquetaretorno
80	Can change etiqueta retorno	27	change_etiquetaretorno
81	Can delete etiqueta retorno	27	delete_etiquetaretorno
82	Can add etiqueta retorno raio	28	add_etiquetaretornoraio
83	Can change etiqueta retorno raio	28	change_etiquetaretornoraio
84	Can delete etiqueta retorno raio	28	delete_etiquetaretornoraio
85	Can add etiqueta retorno niple	29	add_etiquetaretornoniple
86	Can change etiqueta retorno niple	29	change_etiquetaretornoniple
87	Can delete etiqueta retorno niple	29	delete_etiquetaretornoniple
\.


--
-- TOC entry 2364 (class 0 OID 4107259)
-- Dependencies: 172
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$10000$RIAVFafp0yAE$9lsIi3xnxO5d8+KptoiRtMghNTzwPRoNdlPrs8L0O5U=	2013-08-23 17:51:54.640555-03	f	tiago				t	t	2013-08-23 17:50:09-03
3	pbkdf2_sha256$10000$UbHZipoUJAaJ$yHzH2o5yc+MZX8vRWQHbSbj+U89QtHJrMvrEmqAAIto=	2013-09-03 14:43:30.644529-03	f	usuario1				f	t	2013-09-03 14:43:30.644625-03
1	pbkdf2_sha256$10000$2AoQEh4eOStZ$ra3diDFyiO2Ii1lOuzV7AwYnRLJPIM2yJ1h8FoTU4zU=	2013-10-25 01:11:25.620582-03	t	admin			tiagowd@gmail.com	t	t	2013-08-23 17:33:11.619931-03
\.


--
-- TOC entry 2362 (class 0 OID 4107229)
-- Dependencies: 168
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
2	2	1
\.


--
-- TOC entry 2363 (class 0 OID 4107244)
-- Dependencies: 170
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2378 (class 0 OID 4110835)
-- Dependencies: 199
-- Data for Name: automacao_etiquetaremessa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaremessa (id, numero_etiqueta_remessa, peso, tipo_etiqueta, previsao, data_inicio, ordem_fabricacao_id, peso_1g, produto_id) FROM stdin;
1	12341.312B	123.00	0	123.00	2013-10-26	103	123.00	6
2	12341.49999B	1123.00	0	\N	2013-10-26	10103	4123.00	4
\.


--
-- TOC entry 2379 (class 0 OID 4110843)
-- Dependencies: 201
-- Data for Name: automacao_etiquetaretorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaretorno (id, etiqueta_remessa_id) FROM stdin;
\.


--
-- TOC entry 2381 (class 0 OID 4110854)
-- Dependencies: 203
-- Data for Name: automacao_etiquetaretornoniple; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaretornoniple (etiquetaretorno_ptr_id, peso_rosqueado, peso_1g, data_peso_rosqueado, quantidade_peso_rosqueado, peso_niquelado, peso_embalado, data_peso_niquelado, quantidade_peso_niquelado, responsavel) FROM stdin;
\.


--
-- TOC entry 2380 (class 0 OID 4110849)
-- Dependencies: 202
-- Data for Name: automacao_etiquetaretornoraio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaretornoraio (etiquetaretorno_ptr_id, peso_desengraxado, peso_1g, peso_polido, quantidade, data, responsavel) FROM stdin;
\.


--
-- TOC entry 2376 (class 0 OID 4110818)
-- Dependencies: 195
-- Data for Name: automacao_materialnotafiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_materialnotafiscal (id, nota_fiscal_id, material_id, volume, data_entrada, peso, valor, status) FROM stdin;
1	1	1	0	2013-10-25	310.20	5100.20	0
2	1	2	0	2013-10-01	204.01	201.00	0
3	1	3	0	2013-10-25	510.00	722.55	0
4	1	4	0	2013-10-26	512.02	411.22	0
\.


--
-- TOC entry 2375 (class 0 OID 4110808)
-- Dependencies: 193
-- Data for Name: automacao_notafiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_notafiscal (id, numero, valor_total) FROM stdin;
1	1234	6434.97
\.


--
-- TOC entry 2377 (class 0 OID 4110827)
-- Dependencies: 197
-- Data for Name: automacao_ordemfabricacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_ordemfabricacao (id, numero_of, nota_fiscal_id, material_id, produto_id, operador_id, data_inicial, data_final, peso_bruto, peso_liquido, previsao, perda) FROM stdin;
31	12341.10	1	1	\N	\N	\N	\N	\N	\N	\N	\N
32	12341.11	1	1	\N	\N	\N	\N	\N	\N	\N	\N
33	12341.12	1	1	\N	\N	\N	\N	\N	\N	\N	\N
34	12341.13	1	1	\N	\N	\N	\N	\N	\N	\N	\N
35	12341.14	1	1	\N	\N	\N	\N	\N	\N	\N	\N
36	12341.15	1	1	\N	\N	\N	\N	\N	\N	\N	\N
37	12341.16	1	1	\N	\N	\N	\N	\N	\N	\N	\N
38	12341.17	1	1	\N	\N	\N	\N	\N	\N	\N	\N
39	12341.18	1	1	\N	\N	\N	\N	\N	\N	\N	\N
40	12341.19	1	1	\N	\N	\N	\N	\N	\N	\N	\N
41	12341.110	1	1	\N	\N	\N	\N	\N	\N	\N	\N
42	12341.111	1	1	\N	\N	\N	\N	\N	\N	\N	\N
43	12341.112	1	1	\N	\N	\N	\N	\N	\N	\N	\N
44	12341.113	1	1	\N	\N	\N	\N	\N	\N	\N	\N
45	12341.114	1	1	\N	\N	\N	\N	\N	\N	\N	\N
46	12341.115	1	1	\N	\N	\N	\N	\N	\N	\N	\N
47	12341.116	1	1	\N	\N	\N	\N	\N	\N	\N	\N
48	12341.117	1	1	\N	\N	\N	\N	\N	\N	\N	\N
49	12341.118	1	1	\N	\N	\N	\N	\N	\N	\N	\N
50	12341.119	1	1	\N	\N	\N	\N	\N	\N	\N	\N
51	12341.120	1	1	\N	\N	\N	\N	\N	\N	\N	\N
52	12341.121	1	1	\N	\N	\N	\N	\N	\N	\N	\N
53	12341.122	1	1	\N	\N	\N	\N	\N	\N	\N	\N
54	12341.123	1	1	\N	\N	\N	\N	\N	\N	\N	\N
55	12341.124	1	1	\N	\N	\N	\N	\N	\N	\N	\N
56	12341.125	1	1	\N	\N	\N	\N	\N	\N	\N	\N
57	12341.126	1	1	\N	\N	\N	\N	\N	\N	\N	\N
58	12341.127	1	1	\N	\N	\N	\N	\N	\N	\N	\N
59	12341.128	1	1	\N	\N	\N	\N	\N	\N	\N	\N
60	12341.129	1	1	\N	\N	\N	\N	\N	\N	\N	\N
61	12341.130	1	1	\N	\N	\N	\N	\N	\N	\N	\N
62	12341.131	1	1	\N	\N	\N	\N	\N	\N	\N	\N
63	12341.132	1	1	\N	\N	\N	\N	\N	\N	\N	\N
64	12341.133	1	1	\N	\N	\N	\N	\N	\N	\N	\N
65	12341.134	1	1	\N	\N	\N	\N	\N	\N	\N	\N
66	12341.135	1	1	\N	\N	\N	\N	\N	\N	\N	\N
67	12341.136	1	1	\N	\N	\N	\N	\N	\N	\N	\N
68	12341.137	1	1	\N	\N	\N	\N	\N	\N	\N	\N
69	12341.138	1	1	\N	\N	\N	\N	\N	\N	\N	\N
70	12341.139	1	1	\N	\N	\N	\N	\N	\N	\N	\N
71	12341.140	1	1	\N	\N	\N	\N	\N	\N	\N	\N
72	12341.141	1	1	\N	\N	\N	\N	\N	\N	\N	\N
73	12341.142	1	1	\N	\N	\N	\N	\N	\N	\N	\N
74	12341.143	1	1	\N	\N	\N	\N	\N	\N	\N	\N
75	12341.144	1	1	\N	\N	\N	\N	\N	\N	\N	\N
76	12341.145	1	1	\N	\N	\N	\N	\N	\N	\N	\N
77	12341.146	1	1	\N	\N	\N	\N	\N	\N	\N	\N
78	12341.147	1	1	\N	\N	\N	\N	\N	\N	\N	\N
79	12341.148	1	1	\N	\N	\N	\N	\N	\N	\N	\N
80	12341.149	1	1	\N	\N	\N	\N	\N	\N	\N	\N
81	12341.20	1	2	\N	\N	\N	\N	\N	\N	\N	\N
82	12341.21	1	2	\N	\N	\N	\N	\N	\N	\N	\N
83	12341.22	1	2	\N	\N	\N	\N	\N	\N	\N	\N
84	12341.23	1	2	\N	\N	\N	\N	\N	\N	\N	\N
85	12341.24	1	2	\N	\N	\N	\N	\N	\N	\N	\N
86	12341.25	1	2	\N	\N	\N	\N	\N	\N	\N	\N
87	12341.26	1	2	\N	\N	\N	\N	\N	\N	\N	\N
88	12341.27	1	2	\N	\N	\N	\N	\N	\N	\N	\N
89	12341.28	1	2	\N	\N	\N	\N	\N	\N	\N	\N
90	12341.29	1	2	\N	\N	\N	\N	\N	\N	\N	\N
91	12341.30	1	3	\N	\N	\N	\N	\N	\N	\N	\N
92	12341.31	1	3	\N	\N	\N	\N	\N	\N	\N	\N
93	12341.32	1	3	\N	\N	\N	\N	\N	\N	\N	\N
94	12341.33	1	3	\N	\N	\N	\N	\N	\N	\N	\N
95	12341.34	1	3	\N	\N	\N	\N	\N	\N	\N	\N
96	12341.35	1	3	\N	\N	\N	\N	\N	\N	\N	\N
97	12341.36	1	3	\N	\N	\N	\N	\N	\N	\N	\N
98	12341.37	1	3	\N	\N	\N	\N	\N	\N	\N	\N
99	12341.38	1	3	\N	\N	\N	\N	\N	\N	\N	\N
100	12341.39	1	3	\N	\N	\N	\N	\N	\N	\N	\N
101	12341.310	1	3	\N	\N	\N	\N	\N	\N	\N	\N
102	12341.311	1	3	\N	\N	\N	\N	\N	\N	\N	\N
103	12341.312	1	3	5	1	\N	\N	\N	\N	\N	\N
104	12341.40	1	4	\N	\N	\N	\N	\N	\N	\N	\N
105	12341.41	1	4	\N	\N	\N	\N	\N	\N	\N	\N
106	12341.42	1	4	\N	\N	\N	\N	\N	\N	\N	\N
107	12341.43	1	4	\N	\N	\N	\N	\N	\N	\N	\N
108	12341.44	1	4	\N	\N	\N	\N	\N	\N	\N	\N
109	12341.45	1	4	\N	\N	\N	\N	\N	\N	\N	\N
110	12341.46	1	4	\N	\N	\N	\N	\N	\N	\N	\N
111	12341.47	1	4	\N	\N	\N	\N	\N	\N	\N	\N
112	12341.48	1	4	\N	\N	\N	\N	\N	\N	\N	\N
113	12341.49	1	4	\N	\N	\N	\N	\N	\N	\N	\N
114	12341.410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
115	12341.411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
116	12341.412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
117	12341.413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
118	12341.414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
119	12341.415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
120	12341.416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
121	12341.417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
122	12341.418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
123	12341.419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
124	12341.420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
125	12341.421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
126	12341.422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
127	12341.423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
128	12341.424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
129	12341.425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
130	12341.426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
131	12341.427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
132	12341.428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
133	12341.429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
134	12341.430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
135	12341.431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
136	12341.432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
137	12341.433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
138	12341.434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
139	12341.435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
140	12341.436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
141	12341.437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
142	12341.438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
143	12341.439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
144	12341.440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
145	12341.441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
146	12341.442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
147	12341.443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
148	12341.444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
149	12341.445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
150	12341.446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
151	12341.447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
152	12341.448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
153	12341.449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
154	12341.450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
155	12341.451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
156	12341.452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
157	12341.453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
158	12341.454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
159	12341.455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
160	12341.456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
161	12341.457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
162	12341.458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
163	12341.459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
164	12341.460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
165	12341.461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
166	12341.462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
167	12341.463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
168	12341.464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
169	12341.465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
170	12341.466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
171	12341.467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
172	12341.468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
173	12341.469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
174	12341.470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
175	12341.471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
176	12341.472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
177	12341.473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
178	12341.474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
179	12341.475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
180	12341.476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
181	12341.477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
182	12341.478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
183	12341.479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
184	12341.480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
185	12341.481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
186	12341.482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
187	12341.483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
188	12341.484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
189	12341.485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
190	12341.486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
191	12341.487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
192	12341.488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
193	12341.489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
194	12341.490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
195	12341.491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
196	12341.492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
197	12341.493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
198	12341.494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
199	12341.495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
200	12341.496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
201	12341.497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
202	12341.498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
203	12341.499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
204	12341.4100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
205	12341.4101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
206	12341.4102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
207	12341.4103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
208	12341.4104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
209	12341.4105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
210	12341.4106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
211	12341.4107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
212	12341.4108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
213	12341.4109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
214	12341.4110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
215	12341.4111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
216	12341.4112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
217	12341.4113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
218	12341.4114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
219	12341.4115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
220	12341.4116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
221	12341.4117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
222	12341.4118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
223	12341.4119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
224	12341.4120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
225	12341.4121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
226	12341.4122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
227	12341.4123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
228	12341.4124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
229	12341.4125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
230	12341.4126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
231	12341.4127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
232	12341.4128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
233	12341.4129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
234	12341.4130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
235	12341.4131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
236	12341.4132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
237	12341.4133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
238	12341.4134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
239	12341.4135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
240	12341.4136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
241	12341.4137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
242	12341.4138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
243	12341.4139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
244	12341.4140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
245	12341.4141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
246	12341.4142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
247	12341.4143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
248	12341.4144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
249	12341.4145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
250	12341.4146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
251	12341.4147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
252	12341.4148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
253	12341.4149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
254	12341.4150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
255	12341.4151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
256	12341.4152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
257	12341.4153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
258	12341.4154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
259	12341.4155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
260	12341.4156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
261	12341.4157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
262	12341.4158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
263	12341.4159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
264	12341.4160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
265	12341.4161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
266	12341.4162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
267	12341.4163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
268	12341.4164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
269	12341.4165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
270	12341.4166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
271	12341.4167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
272	12341.4168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
273	12341.4169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
274	12341.4170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
275	12341.4171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
276	12341.4172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
277	12341.4173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
278	12341.4174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
279	12341.4175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
280	12341.4176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
281	12341.4177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
282	12341.4178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
283	12341.4179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
284	12341.4180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
285	12341.4181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
286	12341.4182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
287	12341.4183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
288	12341.4184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
289	12341.4185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
290	12341.4186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
291	12341.4187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
292	12341.4188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
293	12341.4189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
294	12341.4190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
295	12341.4191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
296	12341.4192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
297	12341.4193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
298	12341.4194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
299	12341.4195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
300	12341.4196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
301	12341.4197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
302	12341.4198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
303	12341.4199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
304	12341.4200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
305	12341.4201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
306	12341.4202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
307	12341.4203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
308	12341.4204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
309	12341.4205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
310	12341.4206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
311	12341.4207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
312	12341.4208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
313	12341.4209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
314	12341.4210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
315	12341.4211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
316	12341.4212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
317	12341.4213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
318	12341.4214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
319	12341.4215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
320	12341.4216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
321	12341.4217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
322	12341.4218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
323	12341.4219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
324	12341.4220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
325	12341.4221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
326	12341.4222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
327	12341.4223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
328	12341.4224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
329	12341.4225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
330	12341.4226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
331	12341.4227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
332	12341.4228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
333	12341.4229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
334	12341.4230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
335	12341.4231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
336	12341.4232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
337	12341.4233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
338	12341.4234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
339	12341.4235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
340	12341.4236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
341	12341.4237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
342	12341.4238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
343	12341.4239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
344	12341.4240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
345	12341.4241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
346	12341.4242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
347	12341.4243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
348	12341.4244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
349	12341.4245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
350	12341.4246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
351	12341.4247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
352	12341.4248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
353	12341.4249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
354	12341.4250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
355	12341.4251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
356	12341.4252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
357	12341.4253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
358	12341.4254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
359	12341.4255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
360	12341.4256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
361	12341.4257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
362	12341.4258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
363	12341.4259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
364	12341.4260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
365	12341.4261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
366	12341.4262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
367	12341.4263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
368	12341.4264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
369	12341.4265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
370	12341.4266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
371	12341.4267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
372	12341.4268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
373	12341.4269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
374	12341.4270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
375	12341.4271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
376	12341.4272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
377	12341.4273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
378	12341.4274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
379	12341.4275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
380	12341.4276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
381	12341.4277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
382	12341.4278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
383	12341.4279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
384	12341.4280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
385	12341.4281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
386	12341.4282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
387	12341.4283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
388	12341.4284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
389	12341.4285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
390	12341.4286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
391	12341.4287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
392	12341.4288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
393	12341.4289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
394	12341.4290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
395	12341.4291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
396	12341.4292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
397	12341.4293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
398	12341.4294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
399	12341.4295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
400	12341.4296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
401	12341.4297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
402	12341.4298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
403	12341.4299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
404	12341.4300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
405	12341.4301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
406	12341.4302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
407	12341.4303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
408	12341.4304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
409	12341.4305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
410	12341.4306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
411	12341.4307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
412	12341.4308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
413	12341.4309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
414	12341.4310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
415	12341.4311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
416	12341.4312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
417	12341.4313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
418	12341.4314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
419	12341.4315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
420	12341.4316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
421	12341.4317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
422	12341.4318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
423	12341.4319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
424	12341.4320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
425	12341.4321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
426	12341.4322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
427	12341.4323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
428	12341.4324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
429	12341.4325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
430	12341.4326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
431	12341.4327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
432	12341.4328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
433	12341.4329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
434	12341.4330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
435	12341.4331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
436	12341.4332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
437	12341.4333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
438	12341.4334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
439	12341.4335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
440	12341.4336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
441	12341.4337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
442	12341.4338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
443	12341.4339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
444	12341.4340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
445	12341.4341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
446	12341.4342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
447	12341.4343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
448	12341.4344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
449	12341.4345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
450	12341.4346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
451	12341.4347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
452	12341.4348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
453	12341.4349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
454	12341.4350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
455	12341.4351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
456	12341.4352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
457	12341.4353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
458	12341.4354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
459	12341.4355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
460	12341.4356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
461	12341.4357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
462	12341.4358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
463	12341.4359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
464	12341.4360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
465	12341.4361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
466	12341.4362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
467	12341.4363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
468	12341.4364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
469	12341.4365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
470	12341.4366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
471	12341.4367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
472	12341.4368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
473	12341.4369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
474	12341.4370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
475	12341.4371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
476	12341.4372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
477	12341.4373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
478	12341.4374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
479	12341.4375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
480	12341.4376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
481	12341.4377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
482	12341.4378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
483	12341.4379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
484	12341.4380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
485	12341.4381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
486	12341.4382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
487	12341.4383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
488	12341.4384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
489	12341.4385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
490	12341.4386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
491	12341.4387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
492	12341.4388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
493	12341.4389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
494	12341.4390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
495	12341.4391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
496	12341.4392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
497	12341.4393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
498	12341.4394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
499	12341.4395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
500	12341.4396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
501	12341.4397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
502	12341.4398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
503	12341.4399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
504	12341.4400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
505	12341.4401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
506	12341.4402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
507	12341.4403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
508	12341.4404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
509	12341.4405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
510	12341.4406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
511	12341.4407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
512	12341.4408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
513	12341.4409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
514	12341.4410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
515	12341.4411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
516	12341.4412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
517	12341.4413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
518	12341.4414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
519	12341.4415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
520	12341.4416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
521	12341.4417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
522	12341.4418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
523	12341.4419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
524	12341.4420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
525	12341.4421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
526	12341.4422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
527	12341.4423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
528	12341.4424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
529	12341.4425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
530	12341.4426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
531	12341.4427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
532	12341.4428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
533	12341.4429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
534	12341.4430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
535	12341.4431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
536	12341.4432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
537	12341.4433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
538	12341.4434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
539	12341.4435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
540	12341.4436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
541	12341.4437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
542	12341.4438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
543	12341.4439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
544	12341.4440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
545	12341.4441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
546	12341.4442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
547	12341.4443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
548	12341.4444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
549	12341.4445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
550	12341.4446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
551	12341.4447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
552	12341.4448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
553	12341.4449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
554	12341.4450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
555	12341.4451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
556	12341.4452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
557	12341.4453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
558	12341.4454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
559	12341.4455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
560	12341.4456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
561	12341.4457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
562	12341.4458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
563	12341.4459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
564	12341.4460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
565	12341.4461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
566	12341.4462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
567	12341.4463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
568	12341.4464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
569	12341.4465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
570	12341.4466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
571	12341.4467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
572	12341.4468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
573	12341.4469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
574	12341.4470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
575	12341.4471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
576	12341.4472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
577	12341.4473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
578	12341.4474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
579	12341.4475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
580	12341.4476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
581	12341.4477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
582	12341.4478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
583	12341.4479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
584	12341.4480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
585	12341.4481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
586	12341.4482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
587	12341.4483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
588	12341.4484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
589	12341.4485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
590	12341.4486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
591	12341.4487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
592	12341.4488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
593	12341.4489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
594	12341.4490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
595	12341.4491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
596	12341.4492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
597	12341.4493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
598	12341.4494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
599	12341.4495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
600	12341.4496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
601	12341.4497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
602	12341.4498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
603	12341.4499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
604	12341.4500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
605	12341.4501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
606	12341.4502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
607	12341.4503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
608	12341.4504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
609	12341.4505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
610	12341.4506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
611	12341.4507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
612	12341.4508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
613	12341.4509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
614	12341.4510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
615	12341.4511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
616	12341.4512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
617	12341.4513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
618	12341.4514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
619	12341.4515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
620	12341.4516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
621	12341.4517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
622	12341.4518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
623	12341.4519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
624	12341.4520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
625	12341.4521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
626	12341.4522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
627	12341.4523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
628	12341.4524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
629	12341.4525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
630	12341.4526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
631	12341.4527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
632	12341.4528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
633	12341.4529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
634	12341.4530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
635	12341.4531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
636	12341.4532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
637	12341.4533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
638	12341.4534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
639	12341.4535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
640	12341.4536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
641	12341.4537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
642	12341.4538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
643	12341.4539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
644	12341.4540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
645	12341.4541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
646	12341.4542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
647	12341.4543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
648	12341.4544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
649	12341.4545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
650	12341.4546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
651	12341.4547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
652	12341.4548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
653	12341.4549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
654	12341.4550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
655	12341.4551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
656	12341.4552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
657	12341.4553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
658	12341.4554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
659	12341.4555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
660	12341.4556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
661	12341.4557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
662	12341.4558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
663	12341.4559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
664	12341.4560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
665	12341.4561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
666	12341.4562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
667	12341.4563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
668	12341.4564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
669	12341.4565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
670	12341.4566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
671	12341.4567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
672	12341.4568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
673	12341.4569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
674	12341.4570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
675	12341.4571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
676	12341.4572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
677	12341.4573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
678	12341.4574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
679	12341.4575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
680	12341.4576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
681	12341.4577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
682	12341.4578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
683	12341.4579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
684	12341.4580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
685	12341.4581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
686	12341.4582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
687	12341.4583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
688	12341.4584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
689	12341.4585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
690	12341.4586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
691	12341.4587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
692	12341.4588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
693	12341.4589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
694	12341.4590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
695	12341.4591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
696	12341.4592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
697	12341.4593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
698	12341.4594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
699	12341.4595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
700	12341.4596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
701	12341.4597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
702	12341.4598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
703	12341.4599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
704	12341.4600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
705	12341.4601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
706	12341.4602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
707	12341.4603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
708	12341.4604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
709	12341.4605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
710	12341.4606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
711	12341.4607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
712	12341.4608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
713	12341.4609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
714	12341.4610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
715	12341.4611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
716	12341.4612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
717	12341.4613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
718	12341.4614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
719	12341.4615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
720	12341.4616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
721	12341.4617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
722	12341.4618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
723	12341.4619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
724	12341.4620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
725	12341.4621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
726	12341.4622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
727	12341.4623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
728	12341.4624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
729	12341.4625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
730	12341.4626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
731	12341.4627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
732	12341.4628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
733	12341.4629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
734	12341.4630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
735	12341.4631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
736	12341.4632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
737	12341.4633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
738	12341.4634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
739	12341.4635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
740	12341.4636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
741	12341.4637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
742	12341.4638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
743	12341.4639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
744	12341.4640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
745	12341.4641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
746	12341.4642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
747	12341.4643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
748	12341.4644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
749	12341.4645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
750	12341.4646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
751	12341.4647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
752	12341.4648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
753	12341.4649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
754	12341.4650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
755	12341.4651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
756	12341.4652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
757	12341.4653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
758	12341.4654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
759	12341.4655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
760	12341.4656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
761	12341.4657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
762	12341.4658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
763	12341.4659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
764	12341.4660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
765	12341.4661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
766	12341.4662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
767	12341.4663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
768	12341.4664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
769	12341.4665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
770	12341.4666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
771	12341.4667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
772	12341.4668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
773	12341.4669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
774	12341.4670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
775	12341.4671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
776	12341.4672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
777	12341.4673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
778	12341.4674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
779	12341.4675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
780	12341.4676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
781	12341.4677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
782	12341.4678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
783	12341.4679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
784	12341.4680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
785	12341.4681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
786	12341.4682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
787	12341.4683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
788	12341.4684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
789	12341.4685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
790	12341.4686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
791	12341.4687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
792	12341.4688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
793	12341.4689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
794	12341.4690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
795	12341.4691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
796	12341.4692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
797	12341.4693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
798	12341.4694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
799	12341.4695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
800	12341.4696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
801	12341.4697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
802	12341.4698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
803	12341.4699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
804	12341.4700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
805	12341.4701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
806	12341.4702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
807	12341.4703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
808	12341.4704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
809	12341.4705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
810	12341.4706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
811	12341.4707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
812	12341.4708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
813	12341.4709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
814	12341.4710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
815	12341.4711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
816	12341.4712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
817	12341.4713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
818	12341.4714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
819	12341.4715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
820	12341.4716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
821	12341.4717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
822	12341.4718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
823	12341.4719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
824	12341.4720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
825	12341.4721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
826	12341.4722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
827	12341.4723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
828	12341.4724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
829	12341.4725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
830	12341.4726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
831	12341.4727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
832	12341.4728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
833	12341.4729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
834	12341.4730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
835	12341.4731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
836	12341.4732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
837	12341.4733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
838	12341.4734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
839	12341.4735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
840	12341.4736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
841	12341.4737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
842	12341.4738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
843	12341.4739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
844	12341.4740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
845	12341.4741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
846	12341.4742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
847	12341.4743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
848	12341.4744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
849	12341.4745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
850	12341.4746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
851	12341.4747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
852	12341.4748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
853	12341.4749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
854	12341.4750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
855	12341.4751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
856	12341.4752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
857	12341.4753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
858	12341.4754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
859	12341.4755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
860	12341.4756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
861	12341.4757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
862	12341.4758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
863	12341.4759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
864	12341.4760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
865	12341.4761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
866	12341.4762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
867	12341.4763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
868	12341.4764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
869	12341.4765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
870	12341.4766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
871	12341.4767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
872	12341.4768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
873	12341.4769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
874	12341.4770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
875	12341.4771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
876	12341.4772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
877	12341.4773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
878	12341.4774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
879	12341.4775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
880	12341.4776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
881	12341.4777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
882	12341.4778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
883	12341.4779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
884	12341.4780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
885	12341.4781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
886	12341.4782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
887	12341.4783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
888	12341.4784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
889	12341.4785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
890	12341.4786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
891	12341.4787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
892	12341.4788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
893	12341.4789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
894	12341.4790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
895	12341.4791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
896	12341.4792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
897	12341.4793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
898	12341.4794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
899	12341.4795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
900	12341.4796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
901	12341.4797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
902	12341.4798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
903	12341.4799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
904	12341.4800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
905	12341.4801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
906	12341.4802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
907	12341.4803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
908	12341.4804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
909	12341.4805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
910	12341.4806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
911	12341.4807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
912	12341.4808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
913	12341.4809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
914	12341.4810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
915	12341.4811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
916	12341.4812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
917	12341.4813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
918	12341.4814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
919	12341.4815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
920	12341.4816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
921	12341.4817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
922	12341.4818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
923	12341.4819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
924	12341.4820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
925	12341.4821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
926	12341.4822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
927	12341.4823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
928	12341.4824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
929	12341.4825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
930	12341.4826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
931	12341.4827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
932	12341.4828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
933	12341.4829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
934	12341.4830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
935	12341.4831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
936	12341.4832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
937	12341.4833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
938	12341.4834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
939	12341.4835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
940	12341.4836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
941	12341.4837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
942	12341.4838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
943	12341.4839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
944	12341.4840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
945	12341.4841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
946	12341.4842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
947	12341.4843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
948	12341.4844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
949	12341.4845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
950	12341.4846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
951	12341.4847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
952	12341.4848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
953	12341.4849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
954	12341.4850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
955	12341.4851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
956	12341.4852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
957	12341.4853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
958	12341.4854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
959	12341.4855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
960	12341.4856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
961	12341.4857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
962	12341.4858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
963	12341.4859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
964	12341.4860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
965	12341.4861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
966	12341.4862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
967	12341.4863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
968	12341.4864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
969	12341.4865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
970	12341.4866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
971	12341.4867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
972	12341.4868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
973	12341.4869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
974	12341.4870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
975	12341.4871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
976	12341.4872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
977	12341.4873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
978	12341.4874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
979	12341.4875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
980	12341.4876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
981	12341.4877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
982	12341.4878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
983	12341.4879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
984	12341.4880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
985	12341.4881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
986	12341.4882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
987	12341.4883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
988	12341.4884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
989	12341.4885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
990	12341.4886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
991	12341.4887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
992	12341.4888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
993	12341.4889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
994	12341.4890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
995	12341.4891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
996	12341.4892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
997	12341.4893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
998	12341.4894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
999	12341.4895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1000	12341.4896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1001	12341.4897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1002	12341.4898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1003	12341.4899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1004	12341.4900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1005	12341.4901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1006	12341.4902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1007	12341.4903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1008	12341.4904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1009	12341.4905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1010	12341.4906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1011	12341.4907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1012	12341.4908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1013	12341.4909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1014	12341.4910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1015	12341.4911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1016	12341.4912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1017	12341.4913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1018	12341.4914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1019	12341.4915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1020	12341.4916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1021	12341.4917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1022	12341.4918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1023	12341.4919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1024	12341.4920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1025	12341.4921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1026	12341.4922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1027	12341.4923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1028	12341.4924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1029	12341.4925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1030	12341.4926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1031	12341.4927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1032	12341.4928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1033	12341.4929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1034	12341.4930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1035	12341.4931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1036	12341.4932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1037	12341.4933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1038	12341.4934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1039	12341.4935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1040	12341.4936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1041	12341.4937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1042	12341.4938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1043	12341.4939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1044	12341.4940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1045	12341.4941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1046	12341.4942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1047	12341.4943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1048	12341.4944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1049	12341.4945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1050	12341.4946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1051	12341.4947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1052	12341.4948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1053	12341.4949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1054	12341.4950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1055	12341.4951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1056	12341.4952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1057	12341.4953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1058	12341.4954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1059	12341.4955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1060	12341.4956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1061	12341.4957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1062	12341.4958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1063	12341.4959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1064	12341.4960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1065	12341.4961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1066	12341.4962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1067	12341.4963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1068	12341.4964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1069	12341.4965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1070	12341.4966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1071	12341.4967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1072	12341.4968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1073	12341.4969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1074	12341.4970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1075	12341.4971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1076	12341.4972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1077	12341.4973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1078	12341.4974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1079	12341.4975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1080	12341.4976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1081	12341.4977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1082	12341.4978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1083	12341.4979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1084	12341.4980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1085	12341.4981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1086	12341.4982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1087	12341.4983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1088	12341.4984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1089	12341.4985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1090	12341.4986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1091	12341.4987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1092	12341.4988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1093	12341.4989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1094	12341.4990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1095	12341.4991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1096	12341.4992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1097	12341.4993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1098	12341.4994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1099	12341.4995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1100	12341.4996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1101	12341.4997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1102	12341.4998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1103	12341.4999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1104	12341.41000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1105	12341.41001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1106	12341.41002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1107	12341.41003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1108	12341.41004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1109	12341.41005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1110	12341.41006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1111	12341.41007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1112	12341.41008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1113	12341.41009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1114	12341.41010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1115	12341.41011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1116	12341.41012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1117	12341.41013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1118	12341.41014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1119	12341.41015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1120	12341.41016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1121	12341.41017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1122	12341.41018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1123	12341.41019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1124	12341.41020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1125	12341.41021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1126	12341.41022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1127	12341.41023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1128	12341.41024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1129	12341.41025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1130	12341.41026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1131	12341.41027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1132	12341.41028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1133	12341.41029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1134	12341.41030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1135	12341.41031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1136	12341.41032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1137	12341.41033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1138	12341.41034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1139	12341.41035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1140	12341.41036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1141	12341.41037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1142	12341.41038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1143	12341.41039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1144	12341.41040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1145	12341.41041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1146	12341.41042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1147	12341.41043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1148	12341.41044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1149	12341.41045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1150	12341.41046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1151	12341.41047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1152	12341.41048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1153	12341.41049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1154	12341.41050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1155	12341.41051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1156	12341.41052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1157	12341.41053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1158	12341.41054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1159	12341.41055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1160	12341.41056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1161	12341.41057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1162	12341.41058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1163	12341.41059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1164	12341.41060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1165	12341.41061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1166	12341.41062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1167	12341.41063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1168	12341.41064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1169	12341.41065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1170	12341.41066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1171	12341.41067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1172	12341.41068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1173	12341.41069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1174	12341.41070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1175	12341.41071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1176	12341.41072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1177	12341.41073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1178	12341.41074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1179	12341.41075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1180	12341.41076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1181	12341.41077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1182	12341.41078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1183	12341.41079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1184	12341.41080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1185	12341.41081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1186	12341.41082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1187	12341.41083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1188	12341.41084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1189	12341.41085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1190	12341.41086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1191	12341.41087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1192	12341.41088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1193	12341.41089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1194	12341.41090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1195	12341.41091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1196	12341.41092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1197	12341.41093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1198	12341.41094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1199	12341.41095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1200	12341.41096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1201	12341.41097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1202	12341.41098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1203	12341.41099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1204	12341.41100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1205	12341.41101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1206	12341.41102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1207	12341.41103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1208	12341.41104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1209	12341.41105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1210	12341.41106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1211	12341.41107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1212	12341.41108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1213	12341.41109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1214	12341.41110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1215	12341.41111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1216	12341.41112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1217	12341.41113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1218	12341.41114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1219	12341.41115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1220	12341.41116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1221	12341.41117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1222	12341.41118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1223	12341.41119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1224	12341.41120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1225	12341.41121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1226	12341.41122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1227	12341.41123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1228	12341.41124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1229	12341.41125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1230	12341.41126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1231	12341.41127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1232	12341.41128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1233	12341.41129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1234	12341.41130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1235	12341.41131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1236	12341.41132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1237	12341.41133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1238	12341.41134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1239	12341.41135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1240	12341.41136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1241	12341.41137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1242	12341.41138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1243	12341.41139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1244	12341.41140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1245	12341.41141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1246	12341.41142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1247	12341.41143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1248	12341.41144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1249	12341.41145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1250	12341.41146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1251	12341.41147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1252	12341.41148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1253	12341.41149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1254	12341.41150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1255	12341.41151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1256	12341.41152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1257	12341.41153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1258	12341.41154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1259	12341.41155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1260	12341.41156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1261	12341.41157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1262	12341.41158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1263	12341.41159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1264	12341.41160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1265	12341.41161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1266	12341.41162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1267	12341.41163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1268	12341.41164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1269	12341.41165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1270	12341.41166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1271	12341.41167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1272	12341.41168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1273	12341.41169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1274	12341.41170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1275	12341.41171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1276	12341.41172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1277	12341.41173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1278	12341.41174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1279	12341.41175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1280	12341.41176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1281	12341.41177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1282	12341.41178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1283	12341.41179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1284	12341.41180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1285	12341.41181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1286	12341.41182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1287	12341.41183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1288	12341.41184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1289	12341.41185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1290	12341.41186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1291	12341.41187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1292	12341.41188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1293	12341.41189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1294	12341.41190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1295	12341.41191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1296	12341.41192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1297	12341.41193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1298	12341.41194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1299	12341.41195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1300	12341.41196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1301	12341.41197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1302	12341.41198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1303	12341.41199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1304	12341.41200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1305	12341.41201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1306	12341.41202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1307	12341.41203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1308	12341.41204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1309	12341.41205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1310	12341.41206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1311	12341.41207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1312	12341.41208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1313	12341.41209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1314	12341.41210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1315	12341.41211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1316	12341.41212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1317	12341.41213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1318	12341.41214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1319	12341.41215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1320	12341.41216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1321	12341.41217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1322	12341.41218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1323	12341.41219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1324	12341.41220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1325	12341.41221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1326	12341.41222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1327	12341.41223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1328	12341.41224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1329	12341.41225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1330	12341.41226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1331	12341.41227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1332	12341.41228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1333	12341.41229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1334	12341.41230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1335	12341.41231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1336	12341.41232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1337	12341.41233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1338	12341.41234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1339	12341.41235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1340	12341.41236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1341	12341.41237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1342	12341.41238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1343	12341.41239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1344	12341.41240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1345	12341.41241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1346	12341.41242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1347	12341.41243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1348	12341.41244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1349	12341.41245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1350	12341.41246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1351	12341.41247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1352	12341.41248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1353	12341.41249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1354	12341.41250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1355	12341.41251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1356	12341.41252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1357	12341.41253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1358	12341.41254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1359	12341.41255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1360	12341.41256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1361	12341.41257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1362	12341.41258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1363	12341.41259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1364	12341.41260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1365	12341.41261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1366	12341.41262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1367	12341.41263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1368	12341.41264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1369	12341.41265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1370	12341.41266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1371	12341.41267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1372	12341.41268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1373	12341.41269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1374	12341.41270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1375	12341.41271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1376	12341.41272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1377	12341.41273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1378	12341.41274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1379	12341.41275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1380	12341.41276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1381	12341.41277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1382	12341.41278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1383	12341.41279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1384	12341.41280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1385	12341.41281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1386	12341.41282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1387	12341.41283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1388	12341.41284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1389	12341.41285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1390	12341.41286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1391	12341.41287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1392	12341.41288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1393	12341.41289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1394	12341.41290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1395	12341.41291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1396	12341.41292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1397	12341.41293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1398	12341.41294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1399	12341.41295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1400	12341.41296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1401	12341.41297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1402	12341.41298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1403	12341.41299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1404	12341.41300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1405	12341.41301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1406	12341.41302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1407	12341.41303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1408	12341.41304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1409	12341.41305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1410	12341.41306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1411	12341.41307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1412	12341.41308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1413	12341.41309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1414	12341.41310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1415	12341.41311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1416	12341.41312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1417	12341.41313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1418	12341.41314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1419	12341.41315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1420	12341.41316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1421	12341.41317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1422	12341.41318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1423	12341.41319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1424	12341.41320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1425	12341.41321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1426	12341.41322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1427	12341.41323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1428	12341.41324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1429	12341.41325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1430	12341.41326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1431	12341.41327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1432	12341.41328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1433	12341.41329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1434	12341.41330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1435	12341.41331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1436	12341.41332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1437	12341.41333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1438	12341.41334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1439	12341.41335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1440	12341.41336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1441	12341.41337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1442	12341.41338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1443	12341.41339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1444	12341.41340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1445	12341.41341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1446	12341.41342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1447	12341.41343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1448	12341.41344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1449	12341.41345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1450	12341.41346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1451	12341.41347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1452	12341.41348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1453	12341.41349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1454	12341.41350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1455	12341.41351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1456	12341.41352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1457	12341.41353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1458	12341.41354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1459	12341.41355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1460	12341.41356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1461	12341.41357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1462	12341.41358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1463	12341.41359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1464	12341.41360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1465	12341.41361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1466	12341.41362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1467	12341.41363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1468	12341.41364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1469	12341.41365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1470	12341.41366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1471	12341.41367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1472	12341.41368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1473	12341.41369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1474	12341.41370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1475	12341.41371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1476	12341.41372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1477	12341.41373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1478	12341.41374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1479	12341.41375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1480	12341.41376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1481	12341.41377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1482	12341.41378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1483	12341.41379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1484	12341.41380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1485	12341.41381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1486	12341.41382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1487	12341.41383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1488	12341.41384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1489	12341.41385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1490	12341.41386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1491	12341.41387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1492	12341.41388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1493	12341.41389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1494	12341.41390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1495	12341.41391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1496	12341.41392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1497	12341.41393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1498	12341.41394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1499	12341.41395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1500	12341.41396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1501	12341.41397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1502	12341.41398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1503	12341.41399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1504	12341.41400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1505	12341.41401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1506	12341.41402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1507	12341.41403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1508	12341.41404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1509	12341.41405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1510	12341.41406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1511	12341.41407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1512	12341.41408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1513	12341.41409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1514	12341.41410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1515	12341.41411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1516	12341.41412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1517	12341.41413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1518	12341.41414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1519	12341.41415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1520	12341.41416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1521	12341.41417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1522	12341.41418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1523	12341.41419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1524	12341.41420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1525	12341.41421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1526	12341.41422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1527	12341.41423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1528	12341.41424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1529	12341.41425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1530	12341.41426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1531	12341.41427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1532	12341.41428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1533	12341.41429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1534	12341.41430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1535	12341.41431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1536	12341.41432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1537	12341.41433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1538	12341.41434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1539	12341.41435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1540	12341.41436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1541	12341.41437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1542	12341.41438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1543	12341.41439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1544	12341.41440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1545	12341.41441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1546	12341.41442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1547	12341.41443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1548	12341.41444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1549	12341.41445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1550	12341.41446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1551	12341.41447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1552	12341.41448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1553	12341.41449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1554	12341.41450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1555	12341.41451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1556	12341.41452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1557	12341.41453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1558	12341.41454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1559	12341.41455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1560	12341.41456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1561	12341.41457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1562	12341.41458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1563	12341.41459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1564	12341.41460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1565	12341.41461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1566	12341.41462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1567	12341.41463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1568	12341.41464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1569	12341.41465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1570	12341.41466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1571	12341.41467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1572	12341.41468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1573	12341.41469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1574	12341.41470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1575	12341.41471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1576	12341.41472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1577	12341.41473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1578	12341.41474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1579	12341.41475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1580	12341.41476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1581	12341.41477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1582	12341.41478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1583	12341.41479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1584	12341.41480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1585	12341.41481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1586	12341.41482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1587	12341.41483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1588	12341.41484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1589	12341.41485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1590	12341.41486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1591	12341.41487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1592	12341.41488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1593	12341.41489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1594	12341.41490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1595	12341.41491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1596	12341.41492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1597	12341.41493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1598	12341.41494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1599	12341.41495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1600	12341.41496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1601	12341.41497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1602	12341.41498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1603	12341.41499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1604	12341.41500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1605	12341.41501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1606	12341.41502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1607	12341.41503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1608	12341.41504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1609	12341.41505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1610	12341.41506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1611	12341.41507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1612	12341.41508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1613	12341.41509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1614	12341.41510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1615	12341.41511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1616	12341.41512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1617	12341.41513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1618	12341.41514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1619	12341.41515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1620	12341.41516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1621	12341.41517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1622	12341.41518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1623	12341.41519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1624	12341.41520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1625	12341.41521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1626	12341.41522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1627	12341.41523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1628	12341.41524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1629	12341.41525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1630	12341.41526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1631	12341.41527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1632	12341.41528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1633	12341.41529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1634	12341.41530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1635	12341.41531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1636	12341.41532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1637	12341.41533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1638	12341.41534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1639	12341.41535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1640	12341.41536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1641	12341.41537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1642	12341.41538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1643	12341.41539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1644	12341.41540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1645	12341.41541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1646	12341.41542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1647	12341.41543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1648	12341.41544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1649	12341.41545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1650	12341.41546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1651	12341.41547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1652	12341.41548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1653	12341.41549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1654	12341.41550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1655	12341.41551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1656	12341.41552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1657	12341.41553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1658	12341.41554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1659	12341.41555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1660	12341.41556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1661	12341.41557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1662	12341.41558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1663	12341.41559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1664	12341.41560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1665	12341.41561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1666	12341.41562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1667	12341.41563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1668	12341.41564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1669	12341.41565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1670	12341.41566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1671	12341.41567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1672	12341.41568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1673	12341.41569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1674	12341.41570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1675	12341.41571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1676	12341.41572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1677	12341.41573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1678	12341.41574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1679	12341.41575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1680	12341.41576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1681	12341.41577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1682	12341.41578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1683	12341.41579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1684	12341.41580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1685	12341.41581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1686	12341.41582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1687	12341.41583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1688	12341.41584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1689	12341.41585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1690	12341.41586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1691	12341.41587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1692	12341.41588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1693	12341.41589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1694	12341.41590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1695	12341.41591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1696	12341.41592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1697	12341.41593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1698	12341.41594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1699	12341.41595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1700	12341.41596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1701	12341.41597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1702	12341.41598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1703	12341.41599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1704	12341.41600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1705	12341.41601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1706	12341.41602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1707	12341.41603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1708	12341.41604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1709	12341.41605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1710	12341.41606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1711	12341.41607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1712	12341.41608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1713	12341.41609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1714	12341.41610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1715	12341.41611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1716	12341.41612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1717	12341.41613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1718	12341.41614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1719	12341.41615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1720	12341.41616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1721	12341.41617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1722	12341.41618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1723	12341.41619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1724	12341.41620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1725	12341.41621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1726	12341.41622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1727	12341.41623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1728	12341.41624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1729	12341.41625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1730	12341.41626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1731	12341.41627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1732	12341.41628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1733	12341.41629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1734	12341.41630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1735	12341.41631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1736	12341.41632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1737	12341.41633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1738	12341.41634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1739	12341.41635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1740	12341.41636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1741	12341.41637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1742	12341.41638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1743	12341.41639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1744	12341.41640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1745	12341.41641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1746	12341.41642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1747	12341.41643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1748	12341.41644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1749	12341.41645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1750	12341.41646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1751	12341.41647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1752	12341.41648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1753	12341.41649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1754	12341.41650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1755	12341.41651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1756	12341.41652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1757	12341.41653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1758	12341.41654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1759	12341.41655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1760	12341.41656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1761	12341.41657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1762	12341.41658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1763	12341.41659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1764	12341.41660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1765	12341.41661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1766	12341.41662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1767	12341.41663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1768	12341.41664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1769	12341.41665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1770	12341.41666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1771	12341.41667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1772	12341.41668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1773	12341.41669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1774	12341.41670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1775	12341.41671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1776	12341.41672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1777	12341.41673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1778	12341.41674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1779	12341.41675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1780	12341.41676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1781	12341.41677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1782	12341.41678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1783	12341.41679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1784	12341.41680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1785	12341.41681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1786	12341.41682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1787	12341.41683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1788	12341.41684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1789	12341.41685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1790	12341.41686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1791	12341.41687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1792	12341.41688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1793	12341.41689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1794	12341.41690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1795	12341.41691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1796	12341.41692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1797	12341.41693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1798	12341.41694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1799	12341.41695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1800	12341.41696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1801	12341.41697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1802	12341.41698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1803	12341.41699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1804	12341.41700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1805	12341.41701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1806	12341.41702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1807	12341.41703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1808	12341.41704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1809	12341.41705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1810	12341.41706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1811	12341.41707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1812	12341.41708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1813	12341.41709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1814	12341.41710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1815	12341.41711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1816	12341.41712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1817	12341.41713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1818	12341.41714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1819	12341.41715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1820	12341.41716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1821	12341.41717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1822	12341.41718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1823	12341.41719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1824	12341.41720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1825	12341.41721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1826	12341.41722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1827	12341.41723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1828	12341.41724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1829	12341.41725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1830	12341.41726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1831	12341.41727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1832	12341.41728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1833	12341.41729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1834	12341.41730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1835	12341.41731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1836	12341.41732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1837	12341.41733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1838	12341.41734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1839	12341.41735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1840	12341.41736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1841	12341.41737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1842	12341.41738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1843	12341.41739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1844	12341.41740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1845	12341.41741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1846	12341.41742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1847	12341.41743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1848	12341.41744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1849	12341.41745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1850	12341.41746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1851	12341.41747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1852	12341.41748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1853	12341.41749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1854	12341.41750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1855	12341.41751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1856	12341.41752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1857	12341.41753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1858	12341.41754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1859	12341.41755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1860	12341.41756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1861	12341.41757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1862	12341.41758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1863	12341.41759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1864	12341.41760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1865	12341.41761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1866	12341.41762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1867	12341.41763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1868	12341.41764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1869	12341.41765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1870	12341.41766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1871	12341.41767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1872	12341.41768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1873	12341.41769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1874	12341.41770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1875	12341.41771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1876	12341.41772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1877	12341.41773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1878	12341.41774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1879	12341.41775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1880	12341.41776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1881	12341.41777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1882	12341.41778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1883	12341.41779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1884	12341.41780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1885	12341.41781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1886	12341.41782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1887	12341.41783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1888	12341.41784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1889	12341.41785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1890	12341.41786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1891	12341.41787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1892	12341.41788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1893	12341.41789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1894	12341.41790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1895	12341.41791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1896	12341.41792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1897	12341.41793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1898	12341.41794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1899	12341.41795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1900	12341.41796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1901	12341.41797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1902	12341.41798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1903	12341.41799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1904	12341.41800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1905	12341.41801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1906	12341.41802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1907	12341.41803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1908	12341.41804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1909	12341.41805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1910	12341.41806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1911	12341.41807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1912	12341.41808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1913	12341.41809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1914	12341.41810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1915	12341.41811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1916	12341.41812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1917	12341.41813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1918	12341.41814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1919	12341.41815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1920	12341.41816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1921	12341.41817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1922	12341.41818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1923	12341.41819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1924	12341.41820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1925	12341.41821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1926	12341.41822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1927	12341.41823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1928	12341.41824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1929	12341.41825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1930	12341.41826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1931	12341.41827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1932	12341.41828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1933	12341.41829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1934	12341.41830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1935	12341.41831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1936	12341.41832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1937	12341.41833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1938	12341.41834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1939	12341.41835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1940	12341.41836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1941	12341.41837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1942	12341.41838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1943	12341.41839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1944	12341.41840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1945	12341.41841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1946	12341.41842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1947	12341.41843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1948	12341.41844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1949	12341.41845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1950	12341.41846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1951	12341.41847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1952	12341.41848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1953	12341.41849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1954	12341.41850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1955	12341.41851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1956	12341.41852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1957	12341.41853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1958	12341.41854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1959	12341.41855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1960	12341.41856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1961	12341.41857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1962	12341.41858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1963	12341.41859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1964	12341.41860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1965	12341.41861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1966	12341.41862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1967	12341.41863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1968	12341.41864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1969	12341.41865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1970	12341.41866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1971	12341.41867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1972	12341.41868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1973	12341.41869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1974	12341.41870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1975	12341.41871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1976	12341.41872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1977	12341.41873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1978	12341.41874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1979	12341.41875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1980	12341.41876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1981	12341.41877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1982	12341.41878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1983	12341.41879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1984	12341.41880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1985	12341.41881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1986	12341.41882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1987	12341.41883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1988	12341.41884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1989	12341.41885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1990	12341.41886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1991	12341.41887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1992	12341.41888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1993	12341.41889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1994	12341.41890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1995	12341.41891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1996	12341.41892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1997	12341.41893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1998	12341.41894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
1999	12341.41895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2000	12341.41896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2001	12341.41897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2002	12341.41898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2003	12341.41899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2004	12341.41900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2005	12341.41901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2006	12341.41902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2007	12341.41903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2008	12341.41904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2009	12341.41905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2010	12341.41906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2011	12341.41907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2012	12341.41908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2013	12341.41909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2014	12341.41910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2015	12341.41911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2016	12341.41912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2017	12341.41913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2018	12341.41914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2019	12341.41915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2020	12341.41916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2021	12341.41917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2022	12341.41918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2023	12341.41919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2024	12341.41920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2025	12341.41921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2026	12341.41922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2027	12341.41923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2028	12341.41924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2029	12341.41925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2030	12341.41926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2031	12341.41927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2032	12341.41928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2033	12341.41929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2034	12341.41930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2035	12341.41931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2036	12341.41932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2037	12341.41933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2038	12341.41934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2039	12341.41935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2040	12341.41936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2041	12341.41937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2042	12341.41938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2043	12341.41939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2044	12341.41940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2045	12341.41941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2046	12341.41942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2047	12341.41943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2048	12341.41944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2049	12341.41945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2050	12341.41946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2051	12341.41947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2052	12341.41948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2053	12341.41949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2054	12341.41950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2055	12341.41951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2056	12341.41952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2057	12341.41953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2058	12341.41954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2059	12341.41955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2060	12341.41956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2061	12341.41957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2062	12341.41958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2063	12341.41959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2064	12341.41960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2065	12341.41961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2066	12341.41962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2067	12341.41963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2068	12341.41964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2069	12341.41965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2070	12341.41966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2071	12341.41967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2072	12341.41968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2073	12341.41969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2074	12341.41970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2075	12341.41971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2076	12341.41972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2077	12341.41973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2078	12341.41974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2079	12341.41975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2080	12341.41976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2081	12341.41977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2082	12341.41978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2083	12341.41979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2084	12341.41980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2085	12341.41981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2086	12341.41982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2087	12341.41983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2088	12341.41984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2089	12341.41985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2090	12341.41986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2091	12341.41987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2092	12341.41988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2093	12341.41989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2094	12341.41990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2095	12341.41991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2096	12341.41992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2097	12341.41993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2098	12341.41994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2099	12341.41995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2100	12341.41996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2101	12341.41997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2102	12341.41998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2103	12341.41999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2104	12341.42000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2105	12341.42001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2106	12341.42002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2107	12341.42003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2108	12341.42004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2109	12341.42005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2110	12341.42006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2111	12341.42007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2112	12341.42008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2113	12341.42009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2114	12341.42010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2115	12341.42011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2116	12341.42012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2117	12341.42013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2118	12341.42014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2119	12341.42015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2120	12341.42016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2121	12341.42017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2122	12341.42018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2123	12341.42019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2124	12341.42020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2125	12341.42021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2126	12341.42022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2127	12341.42023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2128	12341.42024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2129	12341.42025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2130	12341.42026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2131	12341.42027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2132	12341.42028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2133	12341.42029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2134	12341.42030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2135	12341.42031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2136	12341.42032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2137	12341.42033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2138	12341.42034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2139	12341.42035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2140	12341.42036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2141	12341.42037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2142	12341.42038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2143	12341.42039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2144	12341.42040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2145	12341.42041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2146	12341.42042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2147	12341.42043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2148	12341.42044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2149	12341.42045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2150	12341.42046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2151	12341.42047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2152	12341.42048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2153	12341.42049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2154	12341.42050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2155	12341.42051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2156	12341.42052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2157	12341.42053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2158	12341.42054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2159	12341.42055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2160	12341.42056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2161	12341.42057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2162	12341.42058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2163	12341.42059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2164	12341.42060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2165	12341.42061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2166	12341.42062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2167	12341.42063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2168	12341.42064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2169	12341.42065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2170	12341.42066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2171	12341.42067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2172	12341.42068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2173	12341.42069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2174	12341.42070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2175	12341.42071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2176	12341.42072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2177	12341.42073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2178	12341.42074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2179	12341.42075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2180	12341.42076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2181	12341.42077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2182	12341.42078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2183	12341.42079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2184	12341.42080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2185	12341.42081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2186	12341.42082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2187	12341.42083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2188	12341.42084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2189	12341.42085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2190	12341.42086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2191	12341.42087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2192	12341.42088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2193	12341.42089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2194	12341.42090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2195	12341.42091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2196	12341.42092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2197	12341.42093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2198	12341.42094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2199	12341.42095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2200	12341.42096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2201	12341.42097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2202	12341.42098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2203	12341.42099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2204	12341.42100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2205	12341.42101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2206	12341.42102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2207	12341.42103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2208	12341.42104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2209	12341.42105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2210	12341.42106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2211	12341.42107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2212	12341.42108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2213	12341.42109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2214	12341.42110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2215	12341.42111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2216	12341.42112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2217	12341.42113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2218	12341.42114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2219	12341.42115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2220	12341.42116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2221	12341.42117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2222	12341.42118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2223	12341.42119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2224	12341.42120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2225	12341.42121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2226	12341.42122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2227	12341.42123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2228	12341.42124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2229	12341.42125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2230	12341.42126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2231	12341.42127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2232	12341.42128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2233	12341.42129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2234	12341.42130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2235	12341.42131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2236	12341.42132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2237	12341.42133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2238	12341.42134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2239	12341.42135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2240	12341.42136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2241	12341.42137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2242	12341.42138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2243	12341.42139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2244	12341.42140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2245	12341.42141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2246	12341.42142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2247	12341.42143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2248	12341.42144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2249	12341.42145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2250	12341.42146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2251	12341.42147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2252	12341.42148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2253	12341.42149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2254	12341.42150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2255	12341.42151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2256	12341.42152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2257	12341.42153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2258	12341.42154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2259	12341.42155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2260	12341.42156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2261	12341.42157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2262	12341.42158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2263	12341.42159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2264	12341.42160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2265	12341.42161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2266	12341.42162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2267	12341.42163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2268	12341.42164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2269	12341.42165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2270	12341.42166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2271	12341.42167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2272	12341.42168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2273	12341.42169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2274	12341.42170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2275	12341.42171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2276	12341.42172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2277	12341.42173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2278	12341.42174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2279	12341.42175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2280	12341.42176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2281	12341.42177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2282	12341.42178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2283	12341.42179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2284	12341.42180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2285	12341.42181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2286	12341.42182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2287	12341.42183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2288	12341.42184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2289	12341.42185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2290	12341.42186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2291	12341.42187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2292	12341.42188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2293	12341.42189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2294	12341.42190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2295	12341.42191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2296	12341.42192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2297	12341.42193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2298	12341.42194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2299	12341.42195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2300	12341.42196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2301	12341.42197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2302	12341.42198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2303	12341.42199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2304	12341.42200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2305	12341.42201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2306	12341.42202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2307	12341.42203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2308	12341.42204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2309	12341.42205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2310	12341.42206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2311	12341.42207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2312	12341.42208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2313	12341.42209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2314	12341.42210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2315	12341.42211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2316	12341.42212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2317	12341.42213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2318	12341.42214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2319	12341.42215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2320	12341.42216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2321	12341.42217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2322	12341.42218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2323	12341.42219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2324	12341.42220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2325	12341.42221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2326	12341.42222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2327	12341.42223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2328	12341.42224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2329	12341.42225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2330	12341.42226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2331	12341.42227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2332	12341.42228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2333	12341.42229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2334	12341.42230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2335	12341.42231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2336	12341.42232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2337	12341.42233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2338	12341.42234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2339	12341.42235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2340	12341.42236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2341	12341.42237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2342	12341.42238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2343	12341.42239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2344	12341.42240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2345	12341.42241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2346	12341.42242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2347	12341.42243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2348	12341.42244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2349	12341.42245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2350	12341.42246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2351	12341.42247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2352	12341.42248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2353	12341.42249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2354	12341.42250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2355	12341.42251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2356	12341.42252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2357	12341.42253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2358	12341.42254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2359	12341.42255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2360	12341.42256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2361	12341.42257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2362	12341.42258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2363	12341.42259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2364	12341.42260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2365	12341.42261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2366	12341.42262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2367	12341.42263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2368	12341.42264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2369	12341.42265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2370	12341.42266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2371	12341.42267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2372	12341.42268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2373	12341.42269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2374	12341.42270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2375	12341.42271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2376	12341.42272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2377	12341.42273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2378	12341.42274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2379	12341.42275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2380	12341.42276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2381	12341.42277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2382	12341.42278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2383	12341.42279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2384	12341.42280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2385	12341.42281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2386	12341.42282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2387	12341.42283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2388	12341.42284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2389	12341.42285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2390	12341.42286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2391	12341.42287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2392	12341.42288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2393	12341.42289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2394	12341.42290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2395	12341.42291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2396	12341.42292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2397	12341.42293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2398	12341.42294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2399	12341.42295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2400	12341.42296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2401	12341.42297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2402	12341.42298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2403	12341.42299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2404	12341.42300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2405	12341.42301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2406	12341.42302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2407	12341.42303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2408	12341.42304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2409	12341.42305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2410	12341.42306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2411	12341.42307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2412	12341.42308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2413	12341.42309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2414	12341.42310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2415	12341.42311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2416	12341.42312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2417	12341.42313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2418	12341.42314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2419	12341.42315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2420	12341.42316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2421	12341.42317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2422	12341.42318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2423	12341.42319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2424	12341.42320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2425	12341.42321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2426	12341.42322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2427	12341.42323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2428	12341.42324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2429	12341.42325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2430	12341.42326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2431	12341.42327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2432	12341.42328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2433	12341.42329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2434	12341.42330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2435	12341.42331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2436	12341.42332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2437	12341.42333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2438	12341.42334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2439	12341.42335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2440	12341.42336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2441	12341.42337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2442	12341.42338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2443	12341.42339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2444	12341.42340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2445	12341.42341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2446	12341.42342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2447	12341.42343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2448	12341.42344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2449	12341.42345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2450	12341.42346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2451	12341.42347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2452	12341.42348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2453	12341.42349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2454	12341.42350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2455	12341.42351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2456	12341.42352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2457	12341.42353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2458	12341.42354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2459	12341.42355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2460	12341.42356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2461	12341.42357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2462	12341.42358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2463	12341.42359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2464	12341.42360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2465	12341.42361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2466	12341.42362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2467	12341.42363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2468	12341.42364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2469	12341.42365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2470	12341.42366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2471	12341.42367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2472	12341.42368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2473	12341.42369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2474	12341.42370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2475	12341.42371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2476	12341.42372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2477	12341.42373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2478	12341.42374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2479	12341.42375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2480	12341.42376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2481	12341.42377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2482	12341.42378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2483	12341.42379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2484	12341.42380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2485	12341.42381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2486	12341.42382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2487	12341.42383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2488	12341.42384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2489	12341.42385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2490	12341.42386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2491	12341.42387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2492	12341.42388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2493	12341.42389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2494	12341.42390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2495	12341.42391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2496	12341.42392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2497	12341.42393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2498	12341.42394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2499	12341.42395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2500	12341.42396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2501	12341.42397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2502	12341.42398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2503	12341.42399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2504	12341.42400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2505	12341.42401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2506	12341.42402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2507	12341.42403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2508	12341.42404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2509	12341.42405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2510	12341.42406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2511	12341.42407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2512	12341.42408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2513	12341.42409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2514	12341.42410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2515	12341.42411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2516	12341.42412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2517	12341.42413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2518	12341.42414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2519	12341.42415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2520	12341.42416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2521	12341.42417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2522	12341.42418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2523	12341.42419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2524	12341.42420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2525	12341.42421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2526	12341.42422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2527	12341.42423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2528	12341.42424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2529	12341.42425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2530	12341.42426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2531	12341.42427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2532	12341.42428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2533	12341.42429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2534	12341.42430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2535	12341.42431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2536	12341.42432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2537	12341.42433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2538	12341.42434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2539	12341.42435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2540	12341.42436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2541	12341.42437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2542	12341.42438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2543	12341.42439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2544	12341.42440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2545	12341.42441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2546	12341.42442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2547	12341.42443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2548	12341.42444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2549	12341.42445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2550	12341.42446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2551	12341.42447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2552	12341.42448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2553	12341.42449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2554	12341.42450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2555	12341.42451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2556	12341.42452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2557	12341.42453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2558	12341.42454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2559	12341.42455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2560	12341.42456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2561	12341.42457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2562	12341.42458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2563	12341.42459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2564	12341.42460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2565	12341.42461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2566	12341.42462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2567	12341.42463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2568	12341.42464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2569	12341.42465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2570	12341.42466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2571	12341.42467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2572	12341.42468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2573	12341.42469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2574	12341.42470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2575	12341.42471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2576	12341.42472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2577	12341.42473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2578	12341.42474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2579	12341.42475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2580	12341.42476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2581	12341.42477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2582	12341.42478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2583	12341.42479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2584	12341.42480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2585	12341.42481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2586	12341.42482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2587	12341.42483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2588	12341.42484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2589	12341.42485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2590	12341.42486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2591	12341.42487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2592	12341.42488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2593	12341.42489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2594	12341.42490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2595	12341.42491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2596	12341.42492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2597	12341.42493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2598	12341.42494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2599	12341.42495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2600	12341.42496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2601	12341.42497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2602	12341.42498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2603	12341.42499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2604	12341.42500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2605	12341.42501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2606	12341.42502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2607	12341.42503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2608	12341.42504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2609	12341.42505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2610	12341.42506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2611	12341.42507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2612	12341.42508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2613	12341.42509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2614	12341.42510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2615	12341.42511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2616	12341.42512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2617	12341.42513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2618	12341.42514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2619	12341.42515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2620	12341.42516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2621	12341.42517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2622	12341.42518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2623	12341.42519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2624	12341.42520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2625	12341.42521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2626	12341.42522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2627	12341.42523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2628	12341.42524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2629	12341.42525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2630	12341.42526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2631	12341.42527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2632	12341.42528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2633	12341.42529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2634	12341.42530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2635	12341.42531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2636	12341.42532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2637	12341.42533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2638	12341.42534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2639	12341.42535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2640	12341.42536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2641	12341.42537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2642	12341.42538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2643	12341.42539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2644	12341.42540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2645	12341.42541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2646	12341.42542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2647	12341.42543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2648	12341.42544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2649	12341.42545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2650	12341.42546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2651	12341.42547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2652	12341.42548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2653	12341.42549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2654	12341.42550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2655	12341.42551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2656	12341.42552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2657	12341.42553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2658	12341.42554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2659	12341.42555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2660	12341.42556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2661	12341.42557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2662	12341.42558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2663	12341.42559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2664	12341.42560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2665	12341.42561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2666	12341.42562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2667	12341.42563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2668	12341.42564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2669	12341.42565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2670	12341.42566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2671	12341.42567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2672	12341.42568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2673	12341.42569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2674	12341.42570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2675	12341.42571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2676	12341.42572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2677	12341.42573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2678	12341.42574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2679	12341.42575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2680	12341.42576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2681	12341.42577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2682	12341.42578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2683	12341.42579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2684	12341.42580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2685	12341.42581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2686	12341.42582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2687	12341.42583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2688	12341.42584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2689	12341.42585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2690	12341.42586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2691	12341.42587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2692	12341.42588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2693	12341.42589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2694	12341.42590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2695	12341.42591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2696	12341.42592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2697	12341.42593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2698	12341.42594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2699	12341.42595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2700	12341.42596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2701	12341.42597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2702	12341.42598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2703	12341.42599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2704	12341.42600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2705	12341.42601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2706	12341.42602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2707	12341.42603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2708	12341.42604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2709	12341.42605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2710	12341.42606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2711	12341.42607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2712	12341.42608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2713	12341.42609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2714	12341.42610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2715	12341.42611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2716	12341.42612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2717	12341.42613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2718	12341.42614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2719	12341.42615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2720	12341.42616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2721	12341.42617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2722	12341.42618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2723	12341.42619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2724	12341.42620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2725	12341.42621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2726	12341.42622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2727	12341.42623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2728	12341.42624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2729	12341.42625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2730	12341.42626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2731	12341.42627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2732	12341.42628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2733	12341.42629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2734	12341.42630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2735	12341.42631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2736	12341.42632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2737	12341.42633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2738	12341.42634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2739	12341.42635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2740	12341.42636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2741	12341.42637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2742	12341.42638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2743	12341.42639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2744	12341.42640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2745	12341.42641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2746	12341.42642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2747	12341.42643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2748	12341.42644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2749	12341.42645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2750	12341.42646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2751	12341.42647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2752	12341.42648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2753	12341.42649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2754	12341.42650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2755	12341.42651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2756	12341.42652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2757	12341.42653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2758	12341.42654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2759	12341.42655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2760	12341.42656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2761	12341.42657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2762	12341.42658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2763	12341.42659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2764	12341.42660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2765	12341.42661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2766	12341.42662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2767	12341.42663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2768	12341.42664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2769	12341.42665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2770	12341.42666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2771	12341.42667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2772	12341.42668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2773	12341.42669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2774	12341.42670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2775	12341.42671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2776	12341.42672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2777	12341.42673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2778	12341.42674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2779	12341.42675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2780	12341.42676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2781	12341.42677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2782	12341.42678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2783	12341.42679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2784	12341.42680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2785	12341.42681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2786	12341.42682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2787	12341.42683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2788	12341.42684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2789	12341.42685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2790	12341.42686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2791	12341.42687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2792	12341.42688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2793	12341.42689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2794	12341.42690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2795	12341.42691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2796	12341.42692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2797	12341.42693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2798	12341.42694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2799	12341.42695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2800	12341.42696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2801	12341.42697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2802	12341.42698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2803	12341.42699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2804	12341.42700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2805	12341.42701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2806	12341.42702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2807	12341.42703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2808	12341.42704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2809	12341.42705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2810	12341.42706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2811	12341.42707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2812	12341.42708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2813	12341.42709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2814	12341.42710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2815	12341.42711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2816	12341.42712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2817	12341.42713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2818	12341.42714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2819	12341.42715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2820	12341.42716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2821	12341.42717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2822	12341.42718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2823	12341.42719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2824	12341.42720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2825	12341.42721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2826	12341.42722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2827	12341.42723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2828	12341.42724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2829	12341.42725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2830	12341.42726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2831	12341.42727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2832	12341.42728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2833	12341.42729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2834	12341.42730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2835	12341.42731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2836	12341.42732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2837	12341.42733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2838	12341.42734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2839	12341.42735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2840	12341.42736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2841	12341.42737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2842	12341.42738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2843	12341.42739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2844	12341.42740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2845	12341.42741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2846	12341.42742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2847	12341.42743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2848	12341.42744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2849	12341.42745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2850	12341.42746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2851	12341.42747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2852	12341.42748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2853	12341.42749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2854	12341.42750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2855	12341.42751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2856	12341.42752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2857	12341.42753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2858	12341.42754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2859	12341.42755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2860	12341.42756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2861	12341.42757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2862	12341.42758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2863	12341.42759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2864	12341.42760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2865	12341.42761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2866	12341.42762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2867	12341.42763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2868	12341.42764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2869	12341.42765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2870	12341.42766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2871	12341.42767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2872	12341.42768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2873	12341.42769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2874	12341.42770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2875	12341.42771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2876	12341.42772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2877	12341.42773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2878	12341.42774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2879	12341.42775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2880	12341.42776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2881	12341.42777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2882	12341.42778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2883	12341.42779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2884	12341.42780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2885	12341.42781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2886	12341.42782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2887	12341.42783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2888	12341.42784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2889	12341.42785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2890	12341.42786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2891	12341.42787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2892	12341.42788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2893	12341.42789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2894	12341.42790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2895	12341.42791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2896	12341.42792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2897	12341.42793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2898	12341.42794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2899	12341.42795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2900	12341.42796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2901	12341.42797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2902	12341.42798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2903	12341.42799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2904	12341.42800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2905	12341.42801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2906	12341.42802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2907	12341.42803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2908	12341.42804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2909	12341.42805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2910	12341.42806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2911	12341.42807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2912	12341.42808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2913	12341.42809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2914	12341.42810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2915	12341.42811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2916	12341.42812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2917	12341.42813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2918	12341.42814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2919	12341.42815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2920	12341.42816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2921	12341.42817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2922	12341.42818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2923	12341.42819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2924	12341.42820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2925	12341.42821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2926	12341.42822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2927	12341.42823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2928	12341.42824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2929	12341.42825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2930	12341.42826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2931	12341.42827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2932	12341.42828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2933	12341.42829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2934	12341.42830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2935	12341.42831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2936	12341.42832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2937	12341.42833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2938	12341.42834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2939	12341.42835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2940	12341.42836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2941	12341.42837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2942	12341.42838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2943	12341.42839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2944	12341.42840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2945	12341.42841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2946	12341.42842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2947	12341.42843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2948	12341.42844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2949	12341.42845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2950	12341.42846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2951	12341.42847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2952	12341.42848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2953	12341.42849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2954	12341.42850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2955	12341.42851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2956	12341.42852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2957	12341.42853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2958	12341.42854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2959	12341.42855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2960	12341.42856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2961	12341.42857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2962	12341.42858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2963	12341.42859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2964	12341.42860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2965	12341.42861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2966	12341.42862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2967	12341.42863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2968	12341.42864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2969	12341.42865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2970	12341.42866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2971	12341.42867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2972	12341.42868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2973	12341.42869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2974	12341.42870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2975	12341.42871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2976	12341.42872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2977	12341.42873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2978	12341.42874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2979	12341.42875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2980	12341.42876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2981	12341.42877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2982	12341.42878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2983	12341.42879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2984	12341.42880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2985	12341.42881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2986	12341.42882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2987	12341.42883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2988	12341.42884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2989	12341.42885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2990	12341.42886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2991	12341.42887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2992	12341.42888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2993	12341.42889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2994	12341.42890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2995	12341.42891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2996	12341.42892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2997	12341.42893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2998	12341.42894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
2999	12341.42895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3000	12341.42896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3001	12341.42897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3002	12341.42898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3003	12341.42899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3004	12341.42900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3005	12341.42901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3006	12341.42902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3007	12341.42903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3008	12341.42904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3009	12341.42905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3010	12341.42906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3011	12341.42907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3012	12341.42908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3013	12341.42909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3014	12341.42910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3015	12341.42911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3016	12341.42912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3017	12341.42913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3018	12341.42914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3019	12341.42915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3020	12341.42916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3021	12341.42917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3022	12341.42918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3023	12341.42919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3024	12341.42920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3025	12341.42921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3026	12341.42922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3027	12341.42923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3028	12341.42924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3029	12341.42925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3030	12341.42926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3031	12341.42927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3032	12341.42928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3033	12341.42929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3034	12341.42930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3035	12341.42931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3036	12341.42932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3037	12341.42933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3038	12341.42934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3039	12341.42935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3040	12341.42936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3041	12341.42937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3042	12341.42938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3043	12341.42939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3044	12341.42940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3045	12341.42941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3046	12341.42942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3047	12341.42943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3048	12341.42944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3049	12341.42945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3050	12341.42946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3051	12341.42947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3052	12341.42948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3053	12341.42949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3054	12341.42950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3055	12341.42951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3056	12341.42952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3057	12341.42953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3058	12341.42954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3059	12341.42955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3060	12341.42956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3061	12341.42957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3062	12341.42958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3063	12341.42959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3064	12341.42960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3065	12341.42961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3066	12341.42962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3067	12341.42963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3068	12341.42964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3069	12341.42965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3070	12341.42966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3071	12341.42967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3072	12341.42968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3073	12341.42969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3074	12341.42970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3075	12341.42971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3076	12341.42972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3077	12341.42973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3078	12341.42974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3079	12341.42975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3080	12341.42976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3081	12341.42977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3082	12341.42978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3083	12341.42979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3084	12341.42980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3085	12341.42981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3086	12341.42982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3087	12341.42983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3088	12341.42984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3089	12341.42985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3090	12341.42986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3091	12341.42987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3092	12341.42988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3093	12341.42989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3094	12341.42990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3095	12341.42991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3096	12341.42992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3097	12341.42993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3098	12341.42994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3099	12341.42995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3100	12341.42996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3101	12341.42997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3102	12341.42998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3103	12341.42999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3104	12341.43000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3105	12341.43001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3106	12341.43002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3107	12341.43003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3108	12341.43004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3109	12341.43005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3110	12341.43006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3111	12341.43007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3112	12341.43008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3113	12341.43009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3114	12341.43010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3115	12341.43011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3116	12341.43012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3117	12341.43013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3118	12341.43014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3119	12341.43015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3120	12341.43016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3121	12341.43017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3122	12341.43018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3123	12341.43019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3124	12341.43020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3125	12341.43021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3126	12341.43022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3127	12341.43023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3128	12341.43024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3129	12341.43025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3130	12341.43026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3131	12341.43027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3132	12341.43028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3133	12341.43029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3134	12341.43030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3135	12341.43031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3136	12341.43032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3137	12341.43033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3138	12341.43034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3139	12341.43035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3140	12341.43036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3141	12341.43037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3142	12341.43038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3143	12341.43039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3144	12341.43040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3145	12341.43041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3146	12341.43042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3147	12341.43043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3148	12341.43044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3149	12341.43045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3150	12341.43046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3151	12341.43047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3152	12341.43048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3153	12341.43049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3154	12341.43050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3155	12341.43051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3156	12341.43052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3157	12341.43053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3158	12341.43054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3159	12341.43055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3160	12341.43056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3161	12341.43057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3162	12341.43058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3163	12341.43059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3164	12341.43060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3165	12341.43061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3166	12341.43062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3167	12341.43063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3168	12341.43064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3169	12341.43065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3170	12341.43066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3171	12341.43067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3172	12341.43068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3173	12341.43069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3174	12341.43070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3175	12341.43071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3176	12341.43072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3177	12341.43073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3178	12341.43074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3179	12341.43075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3180	12341.43076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3181	12341.43077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3182	12341.43078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3183	12341.43079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3184	12341.43080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3185	12341.43081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3186	12341.43082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3187	12341.43083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3188	12341.43084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3189	12341.43085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3190	12341.43086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3191	12341.43087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3192	12341.43088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3193	12341.43089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3194	12341.43090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3195	12341.43091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3196	12341.43092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3197	12341.43093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3198	12341.43094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3199	12341.43095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3200	12341.43096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3201	12341.43097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3202	12341.43098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3203	12341.43099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3204	12341.43100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3205	12341.43101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3206	12341.43102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3207	12341.43103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3208	12341.43104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3209	12341.43105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3210	12341.43106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3211	12341.43107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3212	12341.43108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3213	12341.43109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3214	12341.43110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3215	12341.43111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3216	12341.43112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3217	12341.43113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3218	12341.43114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3219	12341.43115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3220	12341.43116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3221	12341.43117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3222	12341.43118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3223	12341.43119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3224	12341.43120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3225	12341.43121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3226	12341.43122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3227	12341.43123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3228	12341.43124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3229	12341.43125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3230	12341.43126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3231	12341.43127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3232	12341.43128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3233	12341.43129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3234	12341.43130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3235	12341.43131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3236	12341.43132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3237	12341.43133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3238	12341.43134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3239	12341.43135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3240	12341.43136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3241	12341.43137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3242	12341.43138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3243	12341.43139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3244	12341.43140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3245	12341.43141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3246	12341.43142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3247	12341.43143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3248	12341.43144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3249	12341.43145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3250	12341.43146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3251	12341.43147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3252	12341.43148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3253	12341.43149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3254	12341.43150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3255	12341.43151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3256	12341.43152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3257	12341.43153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3258	12341.43154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3259	12341.43155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3260	12341.43156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3261	12341.43157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3262	12341.43158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3263	12341.43159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3264	12341.43160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3265	12341.43161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3266	12341.43162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3267	12341.43163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3268	12341.43164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3269	12341.43165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3270	12341.43166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3271	12341.43167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3272	12341.43168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3273	12341.43169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3274	12341.43170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3275	12341.43171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3276	12341.43172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3277	12341.43173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3278	12341.43174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3279	12341.43175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3280	12341.43176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3281	12341.43177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3282	12341.43178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3283	12341.43179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3284	12341.43180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3285	12341.43181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3286	12341.43182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3287	12341.43183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3288	12341.43184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3289	12341.43185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3290	12341.43186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3291	12341.43187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3292	12341.43188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3293	12341.43189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3294	12341.43190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3295	12341.43191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3296	12341.43192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3297	12341.43193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3298	12341.43194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3299	12341.43195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3300	12341.43196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3301	12341.43197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3302	12341.43198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3303	12341.43199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3304	12341.43200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3305	12341.43201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3306	12341.43202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3307	12341.43203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3308	12341.43204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3309	12341.43205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3310	12341.43206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3311	12341.43207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3312	12341.43208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3313	12341.43209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3314	12341.43210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3315	12341.43211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3316	12341.43212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3317	12341.43213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3318	12341.43214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3319	12341.43215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3320	12341.43216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3321	12341.43217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3322	12341.43218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3323	12341.43219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3324	12341.43220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3325	12341.43221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3326	12341.43222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3327	12341.43223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3328	12341.43224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3329	12341.43225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3330	12341.43226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3331	12341.43227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3332	12341.43228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3333	12341.43229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3334	12341.43230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3335	12341.43231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3336	12341.43232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3337	12341.43233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3338	12341.43234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3339	12341.43235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3340	12341.43236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3341	12341.43237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3342	12341.43238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3343	12341.43239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3344	12341.43240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3345	12341.43241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3346	12341.43242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3347	12341.43243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3348	12341.43244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3349	12341.43245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3350	12341.43246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3351	12341.43247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3352	12341.43248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3353	12341.43249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3354	12341.43250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3355	12341.43251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3356	12341.43252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3357	12341.43253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3358	12341.43254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3359	12341.43255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3360	12341.43256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3361	12341.43257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3362	12341.43258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3363	12341.43259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3364	12341.43260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3365	12341.43261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3366	12341.43262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3367	12341.43263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3368	12341.43264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3369	12341.43265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3370	12341.43266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3371	12341.43267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3372	12341.43268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3373	12341.43269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3374	12341.43270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3375	12341.43271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3376	12341.43272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3377	12341.43273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3378	12341.43274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3379	12341.43275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3380	12341.43276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3381	12341.43277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3382	12341.43278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3383	12341.43279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3384	12341.43280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3385	12341.43281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3386	12341.43282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3387	12341.43283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3388	12341.43284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3389	12341.43285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3390	12341.43286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3391	12341.43287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3392	12341.43288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3393	12341.43289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3394	12341.43290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3395	12341.43291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3396	12341.43292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3397	12341.43293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3398	12341.43294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3399	12341.43295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3400	12341.43296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3401	12341.43297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3402	12341.43298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3403	12341.43299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3404	12341.43300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3405	12341.43301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3406	12341.43302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3407	12341.43303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3408	12341.43304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3409	12341.43305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3410	12341.43306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3411	12341.43307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3412	12341.43308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3413	12341.43309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3414	12341.43310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3415	12341.43311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3416	12341.43312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3417	12341.43313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3418	12341.43314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3419	12341.43315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3420	12341.43316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3421	12341.43317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3422	12341.43318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3423	12341.43319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3424	12341.43320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3425	12341.43321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3426	12341.43322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3427	12341.43323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3428	12341.43324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3429	12341.43325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3430	12341.43326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3431	12341.43327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3432	12341.43328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3433	12341.43329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3434	12341.43330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3435	12341.43331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3436	12341.43332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3437	12341.43333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3438	12341.43334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3439	12341.43335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3440	12341.43336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3441	12341.43337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3442	12341.43338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3443	12341.43339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3444	12341.43340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3445	12341.43341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3446	12341.43342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3447	12341.43343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3448	12341.43344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3449	12341.43345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3450	12341.43346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3451	12341.43347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3452	12341.43348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3453	12341.43349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3454	12341.43350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3455	12341.43351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3456	12341.43352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3457	12341.43353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3458	12341.43354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3459	12341.43355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3460	12341.43356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3461	12341.43357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3462	12341.43358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3463	12341.43359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3464	12341.43360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3465	12341.43361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3466	12341.43362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3467	12341.43363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3468	12341.43364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3469	12341.43365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3470	12341.43366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3471	12341.43367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3472	12341.43368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3473	12341.43369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3474	12341.43370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3475	12341.43371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3476	12341.43372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3477	12341.43373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3478	12341.43374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3479	12341.43375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3480	12341.43376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3481	12341.43377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3482	12341.43378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3483	12341.43379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3484	12341.43380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3485	12341.43381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3486	12341.43382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3487	12341.43383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3488	12341.43384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3489	12341.43385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3490	12341.43386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3491	12341.43387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3492	12341.43388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3493	12341.43389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3494	12341.43390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3495	12341.43391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3496	12341.43392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3497	12341.43393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3498	12341.43394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3499	12341.43395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3500	12341.43396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3501	12341.43397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3502	12341.43398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3503	12341.43399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3504	12341.43400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3505	12341.43401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3506	12341.43402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3507	12341.43403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3508	12341.43404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3509	12341.43405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3510	12341.43406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3511	12341.43407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3512	12341.43408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3513	12341.43409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3514	12341.43410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3515	12341.43411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3516	12341.43412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3517	12341.43413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3518	12341.43414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3519	12341.43415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3520	12341.43416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3521	12341.43417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3522	12341.43418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3523	12341.43419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3524	12341.43420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3525	12341.43421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3526	12341.43422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3527	12341.43423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3528	12341.43424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3529	12341.43425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3530	12341.43426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3531	12341.43427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3532	12341.43428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3533	12341.43429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3534	12341.43430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3535	12341.43431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3536	12341.43432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3537	12341.43433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3538	12341.43434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3539	12341.43435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3540	12341.43436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3541	12341.43437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3542	12341.43438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3543	12341.43439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3544	12341.43440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3545	12341.43441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3546	12341.43442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3547	12341.43443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3548	12341.43444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3549	12341.43445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3550	12341.43446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3551	12341.43447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3552	12341.43448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3553	12341.43449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3554	12341.43450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3555	12341.43451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3556	12341.43452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3557	12341.43453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3558	12341.43454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3559	12341.43455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3560	12341.43456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3561	12341.43457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3562	12341.43458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3563	12341.43459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3564	12341.43460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3565	12341.43461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3566	12341.43462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3567	12341.43463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3568	12341.43464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3569	12341.43465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3570	12341.43466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3571	12341.43467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3572	12341.43468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3573	12341.43469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3574	12341.43470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3575	12341.43471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3576	12341.43472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3577	12341.43473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3578	12341.43474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3579	12341.43475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3580	12341.43476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3581	12341.43477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3582	12341.43478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3583	12341.43479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3584	12341.43480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3585	12341.43481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3586	12341.43482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3587	12341.43483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3588	12341.43484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3589	12341.43485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3590	12341.43486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3591	12341.43487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3592	12341.43488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3593	12341.43489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3594	12341.43490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3595	12341.43491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3596	12341.43492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3597	12341.43493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3598	12341.43494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3599	12341.43495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3600	12341.43496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3601	12341.43497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3602	12341.43498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3603	12341.43499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3604	12341.43500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3605	12341.43501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3606	12341.43502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3607	12341.43503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3608	12341.43504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3609	12341.43505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3610	12341.43506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3611	12341.43507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3612	12341.43508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3613	12341.43509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3614	12341.43510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3615	12341.43511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3616	12341.43512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3617	12341.43513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3618	12341.43514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3619	12341.43515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3620	12341.43516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3621	12341.43517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3622	12341.43518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3623	12341.43519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3624	12341.43520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3625	12341.43521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3626	12341.43522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3627	12341.43523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3628	12341.43524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3629	12341.43525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3630	12341.43526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3631	12341.43527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3632	12341.43528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3633	12341.43529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3634	12341.43530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3635	12341.43531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3636	12341.43532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3637	12341.43533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3638	12341.43534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3639	12341.43535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3640	12341.43536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3641	12341.43537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3642	12341.43538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3643	12341.43539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3644	12341.43540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3645	12341.43541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3646	12341.43542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3647	12341.43543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3648	12341.43544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3649	12341.43545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3650	12341.43546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3651	12341.43547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3652	12341.43548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3653	12341.43549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3654	12341.43550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3655	12341.43551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3656	12341.43552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3657	12341.43553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3658	12341.43554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3659	12341.43555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3660	12341.43556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3661	12341.43557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3662	12341.43558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3663	12341.43559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3664	12341.43560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3665	12341.43561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3666	12341.43562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3667	12341.43563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3668	12341.43564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3669	12341.43565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3670	12341.43566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3671	12341.43567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3672	12341.43568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3673	12341.43569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3674	12341.43570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3675	12341.43571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3676	12341.43572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3677	12341.43573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3678	12341.43574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3679	12341.43575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3680	12341.43576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3681	12341.43577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3682	12341.43578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3683	12341.43579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3684	12341.43580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3685	12341.43581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3686	12341.43582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3687	12341.43583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3688	12341.43584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3689	12341.43585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3690	12341.43586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3691	12341.43587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3692	12341.43588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3693	12341.43589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3694	12341.43590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3695	12341.43591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3696	12341.43592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3697	12341.43593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3698	12341.43594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3699	12341.43595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3700	12341.43596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3701	12341.43597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3702	12341.43598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3703	12341.43599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3704	12341.43600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3705	12341.43601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3706	12341.43602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3707	12341.43603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3708	12341.43604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3709	12341.43605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3710	12341.43606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3711	12341.43607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3712	12341.43608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3713	12341.43609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3714	12341.43610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3715	12341.43611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3716	12341.43612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3717	12341.43613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3718	12341.43614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3719	12341.43615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3720	12341.43616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3721	12341.43617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3722	12341.43618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3723	12341.43619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3724	12341.43620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3725	12341.43621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3726	12341.43622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3727	12341.43623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3728	12341.43624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3729	12341.43625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3730	12341.43626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3731	12341.43627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3732	12341.43628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3733	12341.43629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3734	12341.43630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3735	12341.43631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3736	12341.43632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3737	12341.43633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3738	12341.43634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3739	12341.43635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3740	12341.43636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3741	12341.43637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3742	12341.43638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3743	12341.43639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3744	12341.43640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3745	12341.43641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3746	12341.43642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3747	12341.43643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3748	12341.43644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3749	12341.43645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3750	12341.43646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3751	12341.43647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3752	12341.43648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3753	12341.43649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3754	12341.43650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3755	12341.43651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3756	12341.43652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3757	12341.43653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3758	12341.43654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3759	12341.43655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3760	12341.43656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3761	12341.43657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3762	12341.43658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3763	12341.43659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3764	12341.43660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3765	12341.43661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3766	12341.43662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3767	12341.43663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3768	12341.43664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3769	12341.43665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3770	12341.43666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3771	12341.43667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3772	12341.43668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3773	12341.43669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3774	12341.43670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3775	12341.43671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3776	12341.43672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3777	12341.43673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3778	12341.43674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3779	12341.43675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3780	12341.43676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3781	12341.43677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3782	12341.43678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3783	12341.43679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3784	12341.43680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3785	12341.43681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3786	12341.43682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3787	12341.43683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3788	12341.43684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3789	12341.43685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3790	12341.43686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3791	12341.43687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3792	12341.43688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3793	12341.43689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3794	12341.43690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3795	12341.43691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3796	12341.43692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3797	12341.43693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3798	12341.43694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3799	12341.43695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3800	12341.43696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3801	12341.43697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3802	12341.43698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3803	12341.43699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3804	12341.43700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3805	12341.43701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3806	12341.43702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3807	12341.43703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3808	12341.43704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3809	12341.43705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3810	12341.43706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3811	12341.43707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3812	12341.43708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3813	12341.43709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3814	12341.43710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3815	12341.43711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3816	12341.43712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3817	12341.43713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3818	12341.43714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3819	12341.43715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3820	12341.43716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3821	12341.43717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3822	12341.43718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3823	12341.43719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3824	12341.43720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3825	12341.43721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3826	12341.43722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3827	12341.43723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3828	12341.43724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3829	12341.43725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3830	12341.43726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3831	12341.43727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3832	12341.43728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3833	12341.43729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3834	12341.43730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3835	12341.43731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3836	12341.43732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3837	12341.43733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3838	12341.43734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3839	12341.43735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3840	12341.43736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3841	12341.43737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3842	12341.43738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3843	12341.43739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3844	12341.43740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3845	12341.43741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3846	12341.43742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3847	12341.43743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3848	12341.43744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3849	12341.43745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3850	12341.43746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3851	12341.43747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3852	12341.43748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3853	12341.43749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3854	12341.43750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3855	12341.43751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3856	12341.43752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3857	12341.43753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3858	12341.43754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3859	12341.43755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3860	12341.43756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3861	12341.43757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3862	12341.43758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3863	12341.43759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3864	12341.43760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3865	12341.43761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3866	12341.43762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3867	12341.43763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3868	12341.43764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3869	12341.43765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3870	12341.43766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3871	12341.43767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3872	12341.43768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3873	12341.43769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3874	12341.43770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3875	12341.43771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3876	12341.43772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3877	12341.43773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3878	12341.43774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3879	12341.43775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3880	12341.43776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3881	12341.43777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3882	12341.43778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3883	12341.43779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3884	12341.43780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3885	12341.43781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3886	12341.43782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3887	12341.43783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3888	12341.43784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3889	12341.43785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3890	12341.43786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3891	12341.43787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3892	12341.43788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3893	12341.43789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3894	12341.43790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3895	12341.43791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3896	12341.43792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3897	12341.43793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3898	12341.43794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3899	12341.43795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3900	12341.43796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3901	12341.43797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3902	12341.43798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3903	12341.43799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3904	12341.43800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3905	12341.43801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3906	12341.43802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3907	12341.43803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3908	12341.43804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3909	12341.43805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3910	12341.43806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3911	12341.43807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3912	12341.43808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3913	12341.43809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3914	12341.43810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3915	12341.43811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3916	12341.43812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3917	12341.43813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3918	12341.43814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3919	12341.43815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3920	12341.43816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3921	12341.43817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3922	12341.43818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3923	12341.43819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3924	12341.43820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3925	12341.43821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3926	12341.43822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3927	12341.43823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3928	12341.43824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3929	12341.43825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3930	12341.43826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3931	12341.43827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3932	12341.43828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3933	12341.43829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3934	12341.43830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3935	12341.43831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3936	12341.43832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3937	12341.43833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3938	12341.43834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3939	12341.43835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3940	12341.43836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3941	12341.43837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3942	12341.43838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3943	12341.43839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3944	12341.43840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3945	12341.43841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3946	12341.43842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3947	12341.43843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3948	12341.43844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3949	12341.43845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3950	12341.43846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3951	12341.43847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3952	12341.43848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3953	12341.43849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3954	12341.43850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3955	12341.43851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3956	12341.43852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3957	12341.43853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3958	12341.43854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3959	12341.43855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3960	12341.43856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3961	12341.43857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3962	12341.43858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3963	12341.43859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3964	12341.43860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3965	12341.43861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3966	12341.43862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3967	12341.43863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3968	12341.43864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3969	12341.43865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3970	12341.43866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3971	12341.43867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3972	12341.43868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3973	12341.43869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3974	12341.43870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3975	12341.43871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3976	12341.43872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3977	12341.43873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3978	12341.43874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3979	12341.43875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3980	12341.43876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3981	12341.43877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3982	12341.43878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3983	12341.43879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3984	12341.43880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3985	12341.43881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3986	12341.43882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3987	12341.43883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3988	12341.43884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3989	12341.43885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3990	12341.43886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3991	12341.43887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3992	12341.43888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3993	12341.43889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3994	12341.43890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3995	12341.43891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3996	12341.43892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3997	12341.43893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3998	12341.43894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
3999	12341.43895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4000	12341.43896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4001	12341.43897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4002	12341.43898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4003	12341.43899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4004	12341.43900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4005	12341.43901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4006	12341.43902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4007	12341.43903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4008	12341.43904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4009	12341.43905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4010	12341.43906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4011	12341.43907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4012	12341.43908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4013	12341.43909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4014	12341.43910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4015	12341.43911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4016	12341.43912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4017	12341.43913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4018	12341.43914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4019	12341.43915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4020	12341.43916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4021	12341.43917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4022	12341.43918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4023	12341.43919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4024	12341.43920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4025	12341.43921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4026	12341.43922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4027	12341.43923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4028	12341.43924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4029	12341.43925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4030	12341.43926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4031	12341.43927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4032	12341.43928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4033	12341.43929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4034	12341.43930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4035	12341.43931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4036	12341.43932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4037	12341.43933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4038	12341.43934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4039	12341.43935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4040	12341.43936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4041	12341.43937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4042	12341.43938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4043	12341.43939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4044	12341.43940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4045	12341.43941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4046	12341.43942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4047	12341.43943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4048	12341.43944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4049	12341.43945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4050	12341.43946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4051	12341.43947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4052	12341.43948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4053	12341.43949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4054	12341.43950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4055	12341.43951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4056	12341.43952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4057	12341.43953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4058	12341.43954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4059	12341.43955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4060	12341.43956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4061	12341.43957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4062	12341.43958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4063	12341.43959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4064	12341.43960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4065	12341.43961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4066	12341.43962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4067	12341.43963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4068	12341.43964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4069	12341.43965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4070	12341.43966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4071	12341.43967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4072	12341.43968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4073	12341.43969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4074	12341.43970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4075	12341.43971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4076	12341.43972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4077	12341.43973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4078	12341.43974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4079	12341.43975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4080	12341.43976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4081	12341.43977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4082	12341.43978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4083	12341.43979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4084	12341.43980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4085	12341.43981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4086	12341.43982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4087	12341.43983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4088	12341.43984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4089	12341.43985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4090	12341.43986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4091	12341.43987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4092	12341.43988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4093	12341.43989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4094	12341.43990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4095	12341.43991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4096	12341.43992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4097	12341.43993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4098	12341.43994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4099	12341.43995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4100	12341.43996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4101	12341.43997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4102	12341.43998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4103	12341.43999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4104	12341.44000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4105	12341.44001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4106	12341.44002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4107	12341.44003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4108	12341.44004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4109	12341.44005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4110	12341.44006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4111	12341.44007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4112	12341.44008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4113	12341.44009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4114	12341.44010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4115	12341.44011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4116	12341.44012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4117	12341.44013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4118	12341.44014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4119	12341.44015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4120	12341.44016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4121	12341.44017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4122	12341.44018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4123	12341.44019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4124	12341.44020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4125	12341.44021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4126	12341.44022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4127	12341.44023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4128	12341.44024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4129	12341.44025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4130	12341.44026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4131	12341.44027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4132	12341.44028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4133	12341.44029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4134	12341.44030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4135	12341.44031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4136	12341.44032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4137	12341.44033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4138	12341.44034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4139	12341.44035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4140	12341.44036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4141	12341.44037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4142	12341.44038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4143	12341.44039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4144	12341.44040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4145	12341.44041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4146	12341.44042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4147	12341.44043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4148	12341.44044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4149	12341.44045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4150	12341.44046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4151	12341.44047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4152	12341.44048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4153	12341.44049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4154	12341.44050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4155	12341.44051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4156	12341.44052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4157	12341.44053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4158	12341.44054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4159	12341.44055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4160	12341.44056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4161	12341.44057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4162	12341.44058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4163	12341.44059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4164	12341.44060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4165	12341.44061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4166	12341.44062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4167	12341.44063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4168	12341.44064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4169	12341.44065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4170	12341.44066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4171	12341.44067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4172	12341.44068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4173	12341.44069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4174	12341.44070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4175	12341.44071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4176	12341.44072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4177	12341.44073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4178	12341.44074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4179	12341.44075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4180	12341.44076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4181	12341.44077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4182	12341.44078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4183	12341.44079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4184	12341.44080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4185	12341.44081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4186	12341.44082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4187	12341.44083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4188	12341.44084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4189	12341.44085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4190	12341.44086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4191	12341.44087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4192	12341.44088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4193	12341.44089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4194	12341.44090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4195	12341.44091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4196	12341.44092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4197	12341.44093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4198	12341.44094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4199	12341.44095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4200	12341.44096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4201	12341.44097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4202	12341.44098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4203	12341.44099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4204	12341.44100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4205	12341.44101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4206	12341.44102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4207	12341.44103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4208	12341.44104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4209	12341.44105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4210	12341.44106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4211	12341.44107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4212	12341.44108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4213	12341.44109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4214	12341.44110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4215	12341.44111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4216	12341.44112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4217	12341.44113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4218	12341.44114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4219	12341.44115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4220	12341.44116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4221	12341.44117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4222	12341.44118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4223	12341.44119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4224	12341.44120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4225	12341.44121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4226	12341.44122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4227	12341.44123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4228	12341.44124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4229	12341.44125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4230	12341.44126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4231	12341.44127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4232	12341.44128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4233	12341.44129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4234	12341.44130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4235	12341.44131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4236	12341.44132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4237	12341.44133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4238	12341.44134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4239	12341.44135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4240	12341.44136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4241	12341.44137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4242	12341.44138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4243	12341.44139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4244	12341.44140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4245	12341.44141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4246	12341.44142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4247	12341.44143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4248	12341.44144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4249	12341.44145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4250	12341.44146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4251	12341.44147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4252	12341.44148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4253	12341.44149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4254	12341.44150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4255	12341.44151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4256	12341.44152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4257	12341.44153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4258	12341.44154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4259	12341.44155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4260	12341.44156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4261	12341.44157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4262	12341.44158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4263	12341.44159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4264	12341.44160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4265	12341.44161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4266	12341.44162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4267	12341.44163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4268	12341.44164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4269	12341.44165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4270	12341.44166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4271	12341.44167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4272	12341.44168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4273	12341.44169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4274	12341.44170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4275	12341.44171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4276	12341.44172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4277	12341.44173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4278	12341.44174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4279	12341.44175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4280	12341.44176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4281	12341.44177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4282	12341.44178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4283	12341.44179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4284	12341.44180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4285	12341.44181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4286	12341.44182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4287	12341.44183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4288	12341.44184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4289	12341.44185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4290	12341.44186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4291	12341.44187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4292	12341.44188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4293	12341.44189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4294	12341.44190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4295	12341.44191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4296	12341.44192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4297	12341.44193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4298	12341.44194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4299	12341.44195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4300	12341.44196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4301	12341.44197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4302	12341.44198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4303	12341.44199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4304	12341.44200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4305	12341.44201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4306	12341.44202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4307	12341.44203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4308	12341.44204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4309	12341.44205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4310	12341.44206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4311	12341.44207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4312	12341.44208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4313	12341.44209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4314	12341.44210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4315	12341.44211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4316	12341.44212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4317	12341.44213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4318	12341.44214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4319	12341.44215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4320	12341.44216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4321	12341.44217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4322	12341.44218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4323	12341.44219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4324	12341.44220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4325	12341.44221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4326	12341.44222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4327	12341.44223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4328	12341.44224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4329	12341.44225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4330	12341.44226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4331	12341.44227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4332	12341.44228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4333	12341.44229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4334	12341.44230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4335	12341.44231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4336	12341.44232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4337	12341.44233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4338	12341.44234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4339	12341.44235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4340	12341.44236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4341	12341.44237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4342	12341.44238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4343	12341.44239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4344	12341.44240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4345	12341.44241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4346	12341.44242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4347	12341.44243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4348	12341.44244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4349	12341.44245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4350	12341.44246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4351	12341.44247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4352	12341.44248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4353	12341.44249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4354	12341.44250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4355	12341.44251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4356	12341.44252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4357	12341.44253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4358	12341.44254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4359	12341.44255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4360	12341.44256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4361	12341.44257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4362	12341.44258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4363	12341.44259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4364	12341.44260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4365	12341.44261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4366	12341.44262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4367	12341.44263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4368	12341.44264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4369	12341.44265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4370	12341.44266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4371	12341.44267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4372	12341.44268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4373	12341.44269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4374	12341.44270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4375	12341.44271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4376	12341.44272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4377	12341.44273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4378	12341.44274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4379	12341.44275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4380	12341.44276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4381	12341.44277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4382	12341.44278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4383	12341.44279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4384	12341.44280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4385	12341.44281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4386	12341.44282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4387	12341.44283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4388	12341.44284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4389	12341.44285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4390	12341.44286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4391	12341.44287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4392	12341.44288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4393	12341.44289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4394	12341.44290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4395	12341.44291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4396	12341.44292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4397	12341.44293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4398	12341.44294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4399	12341.44295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4400	12341.44296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4401	12341.44297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4402	12341.44298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4403	12341.44299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4404	12341.44300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4405	12341.44301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4406	12341.44302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4407	12341.44303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4408	12341.44304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4409	12341.44305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4410	12341.44306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4411	12341.44307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4412	12341.44308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4413	12341.44309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4414	12341.44310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4415	12341.44311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4416	12341.44312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4417	12341.44313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4418	12341.44314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4419	12341.44315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4420	12341.44316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4421	12341.44317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4422	12341.44318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4423	12341.44319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4424	12341.44320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4425	12341.44321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4426	12341.44322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4427	12341.44323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4428	12341.44324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4429	12341.44325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4430	12341.44326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4431	12341.44327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4432	12341.44328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4433	12341.44329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4434	12341.44330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4435	12341.44331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4436	12341.44332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4437	12341.44333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4438	12341.44334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4439	12341.44335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4440	12341.44336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4441	12341.44337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4442	12341.44338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4443	12341.44339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4444	12341.44340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4445	12341.44341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4446	12341.44342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4447	12341.44343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4448	12341.44344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4449	12341.44345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4450	12341.44346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4451	12341.44347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4452	12341.44348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4453	12341.44349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4454	12341.44350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4455	12341.44351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4456	12341.44352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4457	12341.44353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4458	12341.44354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4459	12341.44355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4460	12341.44356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4461	12341.44357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4462	12341.44358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4463	12341.44359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4464	12341.44360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4465	12341.44361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4466	12341.44362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4467	12341.44363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4468	12341.44364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4469	12341.44365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4470	12341.44366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4471	12341.44367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4472	12341.44368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4473	12341.44369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4474	12341.44370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4475	12341.44371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4476	12341.44372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4477	12341.44373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4478	12341.44374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4479	12341.44375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4480	12341.44376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4481	12341.44377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4482	12341.44378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4483	12341.44379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4484	12341.44380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4485	12341.44381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4486	12341.44382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4487	12341.44383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4488	12341.44384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4489	12341.44385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4490	12341.44386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4491	12341.44387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4492	12341.44388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4493	12341.44389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4494	12341.44390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4495	12341.44391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4496	12341.44392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4497	12341.44393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4498	12341.44394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4499	12341.44395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4500	12341.44396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4501	12341.44397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4502	12341.44398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4503	12341.44399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4504	12341.44400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4505	12341.44401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4506	12341.44402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4507	12341.44403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4508	12341.44404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4509	12341.44405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4510	12341.44406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4511	12341.44407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4512	12341.44408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4513	12341.44409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4514	12341.44410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4515	12341.44411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4516	12341.44412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4517	12341.44413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4518	12341.44414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4519	12341.44415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4520	12341.44416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4521	12341.44417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4522	12341.44418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4523	12341.44419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4524	12341.44420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4525	12341.44421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4526	12341.44422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4527	12341.44423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4528	12341.44424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4529	12341.44425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4530	12341.44426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4531	12341.44427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4532	12341.44428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4533	12341.44429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4534	12341.44430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4535	12341.44431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4536	12341.44432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4537	12341.44433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4538	12341.44434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4539	12341.44435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4540	12341.44436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4541	12341.44437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4542	12341.44438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4543	12341.44439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4544	12341.44440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4545	12341.44441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4546	12341.44442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4547	12341.44443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4548	12341.44444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4549	12341.44445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4550	12341.44446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4551	12341.44447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4552	12341.44448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4553	12341.44449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4554	12341.44450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4555	12341.44451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4556	12341.44452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4557	12341.44453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4558	12341.44454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4559	12341.44455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4560	12341.44456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4561	12341.44457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4562	12341.44458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4563	12341.44459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4564	12341.44460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4565	12341.44461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4566	12341.44462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4567	12341.44463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4568	12341.44464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4569	12341.44465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4570	12341.44466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4571	12341.44467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4572	12341.44468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4573	12341.44469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4574	12341.44470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4575	12341.44471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4576	12341.44472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4577	12341.44473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4578	12341.44474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4579	12341.44475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4580	12341.44476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4581	12341.44477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4582	12341.44478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4583	12341.44479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4584	12341.44480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4585	12341.44481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4586	12341.44482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4587	12341.44483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4588	12341.44484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4589	12341.44485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4590	12341.44486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4591	12341.44487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4592	12341.44488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4593	12341.44489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4594	12341.44490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4595	12341.44491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4596	12341.44492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4597	12341.44493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4598	12341.44494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4599	12341.44495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4600	12341.44496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4601	12341.44497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4602	12341.44498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4603	12341.44499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4604	12341.44500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4605	12341.44501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4606	12341.44502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4607	12341.44503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4608	12341.44504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4609	12341.44505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4610	12341.44506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4611	12341.44507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4612	12341.44508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4613	12341.44509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4614	12341.44510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4615	12341.44511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4616	12341.44512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4617	12341.44513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4618	12341.44514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4619	12341.44515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4620	12341.44516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4621	12341.44517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4622	12341.44518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4623	12341.44519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4624	12341.44520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4625	12341.44521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4626	12341.44522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4627	12341.44523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4628	12341.44524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4629	12341.44525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4630	12341.44526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4631	12341.44527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4632	12341.44528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4633	12341.44529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4634	12341.44530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4635	12341.44531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4636	12341.44532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4637	12341.44533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4638	12341.44534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4639	12341.44535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4640	12341.44536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4641	12341.44537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4642	12341.44538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4643	12341.44539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4644	12341.44540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4645	12341.44541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4646	12341.44542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4647	12341.44543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4648	12341.44544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4649	12341.44545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4650	12341.44546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4651	12341.44547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4652	12341.44548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4653	12341.44549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4654	12341.44550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4655	12341.44551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4656	12341.44552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4657	12341.44553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4658	12341.44554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4659	12341.44555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4660	12341.44556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4661	12341.44557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4662	12341.44558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4663	12341.44559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4664	12341.44560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4665	12341.44561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4666	12341.44562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4667	12341.44563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4668	12341.44564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4669	12341.44565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4670	12341.44566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4671	12341.44567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4672	12341.44568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4673	12341.44569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4674	12341.44570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4675	12341.44571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4676	12341.44572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4677	12341.44573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4678	12341.44574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4679	12341.44575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4680	12341.44576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4681	12341.44577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4682	12341.44578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4683	12341.44579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4684	12341.44580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4685	12341.44581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4686	12341.44582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4687	12341.44583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4688	12341.44584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4689	12341.44585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4690	12341.44586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4691	12341.44587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4692	12341.44588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4693	12341.44589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4694	12341.44590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4695	12341.44591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4696	12341.44592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4697	12341.44593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4698	12341.44594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4699	12341.44595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4700	12341.44596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4701	12341.44597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4702	12341.44598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4703	12341.44599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4704	12341.44600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4705	12341.44601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4706	12341.44602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4707	12341.44603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4708	12341.44604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4709	12341.44605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4710	12341.44606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4711	12341.44607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4712	12341.44608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4713	12341.44609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4714	12341.44610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4715	12341.44611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4716	12341.44612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4717	12341.44613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4718	12341.44614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4719	12341.44615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4720	12341.44616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4721	12341.44617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4722	12341.44618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4723	12341.44619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4724	12341.44620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4725	12341.44621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4726	12341.44622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4727	12341.44623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4728	12341.44624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4729	12341.44625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4730	12341.44626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4731	12341.44627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4732	12341.44628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4733	12341.44629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4734	12341.44630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4735	12341.44631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4736	12341.44632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4737	12341.44633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4738	12341.44634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4739	12341.44635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4740	12341.44636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4741	12341.44637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4742	12341.44638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4743	12341.44639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4744	12341.44640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4745	12341.44641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4746	12341.44642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4747	12341.44643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4748	12341.44644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4749	12341.44645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4750	12341.44646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4751	12341.44647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4752	12341.44648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4753	12341.44649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4754	12341.44650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4755	12341.44651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4756	12341.44652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4757	12341.44653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4758	12341.44654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4759	12341.44655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4760	12341.44656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4761	12341.44657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4762	12341.44658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4763	12341.44659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4764	12341.44660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4765	12341.44661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4766	12341.44662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4767	12341.44663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4768	12341.44664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4769	12341.44665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4770	12341.44666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4771	12341.44667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4772	12341.44668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4773	12341.44669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4774	12341.44670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4775	12341.44671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4776	12341.44672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4777	12341.44673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4778	12341.44674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4779	12341.44675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4780	12341.44676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4781	12341.44677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4782	12341.44678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4783	12341.44679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4784	12341.44680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4785	12341.44681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4786	12341.44682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4787	12341.44683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4788	12341.44684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4789	12341.44685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4790	12341.44686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4791	12341.44687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4792	12341.44688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4793	12341.44689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4794	12341.44690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4795	12341.44691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4796	12341.44692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4797	12341.44693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4798	12341.44694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4799	12341.44695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4800	12341.44696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4801	12341.44697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4802	12341.44698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4803	12341.44699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4804	12341.44700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4805	12341.44701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4806	12341.44702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4807	12341.44703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4808	12341.44704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4809	12341.44705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4810	12341.44706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4811	12341.44707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4812	12341.44708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4813	12341.44709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4814	12341.44710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4815	12341.44711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4816	12341.44712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4817	12341.44713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4818	12341.44714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4819	12341.44715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4820	12341.44716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4821	12341.44717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4822	12341.44718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4823	12341.44719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4824	12341.44720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4825	12341.44721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4826	12341.44722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4827	12341.44723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4828	12341.44724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4829	12341.44725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4830	12341.44726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4831	12341.44727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4832	12341.44728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4833	12341.44729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4834	12341.44730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4835	12341.44731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4836	12341.44732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4837	12341.44733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4838	12341.44734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4839	12341.44735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4840	12341.44736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4841	12341.44737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4842	12341.44738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4843	12341.44739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4844	12341.44740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4845	12341.44741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4846	12341.44742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4847	12341.44743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4848	12341.44744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4849	12341.44745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4850	12341.44746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4851	12341.44747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4852	12341.44748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4853	12341.44749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4854	12341.44750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4855	12341.44751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4856	12341.44752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4857	12341.44753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4858	12341.44754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4859	12341.44755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4860	12341.44756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4861	12341.44757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4862	12341.44758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4863	12341.44759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4864	12341.44760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4865	12341.44761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4866	12341.44762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4867	12341.44763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4868	12341.44764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4869	12341.44765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4870	12341.44766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4871	12341.44767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4872	12341.44768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4873	12341.44769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4874	12341.44770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4875	12341.44771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4876	12341.44772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4877	12341.44773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4878	12341.44774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4879	12341.44775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4880	12341.44776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4881	12341.44777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4882	12341.44778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4883	12341.44779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4884	12341.44780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4885	12341.44781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4886	12341.44782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4887	12341.44783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4888	12341.44784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4889	12341.44785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4890	12341.44786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4891	12341.44787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4892	12341.44788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4893	12341.44789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4894	12341.44790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4895	12341.44791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4896	12341.44792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4897	12341.44793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4898	12341.44794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4899	12341.44795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4900	12341.44796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4901	12341.44797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4902	12341.44798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4903	12341.44799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4904	12341.44800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4905	12341.44801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4906	12341.44802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4907	12341.44803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4908	12341.44804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4909	12341.44805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4910	12341.44806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4911	12341.44807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4912	12341.44808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4913	12341.44809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4914	12341.44810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4915	12341.44811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4916	12341.44812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4917	12341.44813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4918	12341.44814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4919	12341.44815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4920	12341.44816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4921	12341.44817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4922	12341.44818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4923	12341.44819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4924	12341.44820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4925	12341.44821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4926	12341.44822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4927	12341.44823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4928	12341.44824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4929	12341.44825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4930	12341.44826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4931	12341.44827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4932	12341.44828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4933	12341.44829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4934	12341.44830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4935	12341.44831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4936	12341.44832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4937	12341.44833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4938	12341.44834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4939	12341.44835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4940	12341.44836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4941	12341.44837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4942	12341.44838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4943	12341.44839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4944	12341.44840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4945	12341.44841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4946	12341.44842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4947	12341.44843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4948	12341.44844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4949	12341.44845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4950	12341.44846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4951	12341.44847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4952	12341.44848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4953	12341.44849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4954	12341.44850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4955	12341.44851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4956	12341.44852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4957	12341.44853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4958	12341.44854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4959	12341.44855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4960	12341.44856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4961	12341.44857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4962	12341.44858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4963	12341.44859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4964	12341.44860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4965	12341.44861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4966	12341.44862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4967	12341.44863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4968	12341.44864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4969	12341.44865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4970	12341.44866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4971	12341.44867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4972	12341.44868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4973	12341.44869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4974	12341.44870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4975	12341.44871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4976	12341.44872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4977	12341.44873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4978	12341.44874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4979	12341.44875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4980	12341.44876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4981	12341.44877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4982	12341.44878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4983	12341.44879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4984	12341.44880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4985	12341.44881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4986	12341.44882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4987	12341.44883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4988	12341.44884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4989	12341.44885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4990	12341.44886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4991	12341.44887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4992	12341.44888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4993	12341.44889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4994	12341.44890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4995	12341.44891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4996	12341.44892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4997	12341.44893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4998	12341.44894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
4999	12341.44895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5000	12341.44896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5001	12341.44897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5002	12341.44898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5003	12341.44899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5004	12341.44900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5005	12341.44901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5006	12341.44902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5007	12341.44903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5008	12341.44904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5009	12341.44905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5010	12341.44906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5011	12341.44907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5012	12341.44908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5013	12341.44909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5014	12341.44910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5015	12341.44911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5016	12341.44912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5017	12341.44913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5018	12341.44914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5019	12341.44915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5020	12341.44916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5021	12341.44917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5022	12341.44918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5023	12341.44919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5024	12341.44920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5025	12341.44921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5026	12341.44922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5027	12341.44923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5028	12341.44924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5029	12341.44925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5030	12341.44926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5031	12341.44927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5032	12341.44928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5033	12341.44929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5034	12341.44930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5035	12341.44931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5036	12341.44932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5037	12341.44933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5038	12341.44934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5039	12341.44935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5040	12341.44936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5041	12341.44937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5042	12341.44938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5043	12341.44939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5044	12341.44940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5045	12341.44941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5046	12341.44942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5047	12341.44943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5048	12341.44944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5049	12341.44945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5050	12341.44946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5051	12341.44947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5052	12341.44948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5053	12341.44949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5054	12341.44950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5055	12341.44951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5056	12341.44952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5057	12341.44953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5058	12341.44954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5059	12341.44955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5060	12341.44956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5061	12341.44957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5062	12341.44958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5063	12341.44959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5064	12341.44960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5065	12341.44961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5066	12341.44962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5067	12341.44963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5068	12341.44964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5069	12341.44965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5070	12341.44966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5071	12341.44967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5072	12341.44968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5073	12341.44969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5074	12341.44970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5075	12341.44971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5076	12341.44972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5077	12341.44973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5078	12341.44974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5079	12341.44975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5080	12341.44976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5081	12341.44977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5082	12341.44978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5083	12341.44979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5084	12341.44980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5085	12341.44981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5086	12341.44982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5087	12341.44983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5088	12341.44984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5089	12341.44985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5090	12341.44986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5091	12341.44987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5092	12341.44988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5093	12341.44989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5094	12341.44990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5095	12341.44991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5096	12341.44992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5097	12341.44993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5098	12341.44994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5099	12341.44995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5100	12341.44996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5101	12341.44997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5102	12341.44998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5103	12341.44999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5104	12341.45000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5105	12341.45001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5106	12341.45002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5107	12341.45003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5108	12341.45004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5109	12341.45005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5110	12341.45006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5111	12341.45007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5112	12341.45008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5113	12341.45009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5114	12341.45010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5115	12341.45011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5116	12341.45012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5117	12341.45013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5118	12341.45014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5119	12341.45015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5120	12341.45016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5121	12341.45017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5122	12341.45018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5123	12341.45019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5124	12341.45020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5125	12341.45021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5126	12341.45022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5127	12341.45023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5128	12341.45024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5129	12341.45025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5130	12341.45026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5131	12341.45027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5132	12341.45028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5133	12341.45029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5134	12341.45030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5135	12341.45031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5136	12341.45032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5137	12341.45033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5138	12341.45034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5139	12341.45035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5140	12341.45036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5141	12341.45037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5142	12341.45038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5143	12341.45039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5144	12341.45040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5145	12341.45041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5146	12341.45042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5147	12341.45043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5148	12341.45044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5149	12341.45045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5150	12341.45046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5151	12341.45047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5152	12341.45048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5153	12341.45049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5154	12341.45050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5155	12341.45051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5156	12341.45052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5157	12341.45053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5158	12341.45054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5159	12341.45055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5160	12341.45056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5161	12341.45057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5162	12341.45058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5163	12341.45059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5164	12341.45060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5165	12341.45061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5166	12341.45062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5167	12341.45063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5168	12341.45064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5169	12341.45065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5170	12341.45066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5171	12341.45067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5172	12341.45068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5173	12341.45069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5174	12341.45070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5175	12341.45071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5176	12341.45072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5177	12341.45073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5178	12341.45074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5179	12341.45075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5180	12341.45076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5181	12341.45077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5182	12341.45078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5183	12341.45079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5184	12341.45080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5185	12341.45081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5186	12341.45082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5187	12341.45083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5188	12341.45084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5189	12341.45085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5190	12341.45086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5191	12341.45087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5192	12341.45088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5193	12341.45089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5194	12341.45090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5195	12341.45091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5196	12341.45092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5197	12341.45093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5198	12341.45094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5199	12341.45095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5200	12341.45096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5201	12341.45097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5202	12341.45098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5203	12341.45099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5204	12341.45100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5205	12341.45101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5206	12341.45102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5207	12341.45103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5208	12341.45104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5209	12341.45105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5210	12341.45106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5211	12341.45107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5212	12341.45108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5213	12341.45109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5214	12341.45110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5215	12341.45111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5216	12341.45112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5217	12341.45113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5218	12341.45114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5219	12341.45115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5220	12341.45116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5221	12341.45117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5222	12341.45118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5223	12341.45119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5224	12341.45120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5225	12341.45121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5226	12341.45122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5227	12341.45123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5228	12341.45124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5229	12341.45125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5230	12341.45126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5231	12341.45127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5232	12341.45128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5233	12341.45129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5234	12341.45130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5235	12341.45131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5236	12341.45132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5237	12341.45133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5238	12341.45134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5239	12341.45135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5240	12341.45136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5241	12341.45137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5242	12341.45138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5243	12341.45139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5244	12341.45140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5245	12341.45141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5246	12341.45142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5247	12341.45143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5248	12341.45144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5249	12341.45145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5250	12341.45146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5251	12341.45147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5252	12341.45148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5253	12341.45149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5254	12341.45150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5255	12341.45151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5256	12341.45152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5257	12341.45153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5258	12341.45154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5259	12341.45155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5260	12341.45156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5261	12341.45157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5262	12341.45158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5263	12341.45159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5264	12341.45160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5265	12341.45161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5266	12341.45162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5267	12341.45163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5268	12341.45164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5269	12341.45165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5270	12341.45166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5271	12341.45167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5272	12341.45168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5273	12341.45169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5274	12341.45170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5275	12341.45171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5276	12341.45172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5277	12341.45173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5278	12341.45174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5279	12341.45175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5280	12341.45176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5281	12341.45177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5282	12341.45178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5283	12341.45179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5284	12341.45180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5285	12341.45181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5286	12341.45182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5287	12341.45183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5288	12341.45184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5289	12341.45185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5290	12341.45186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5291	12341.45187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5292	12341.45188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5293	12341.45189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5294	12341.45190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5295	12341.45191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5296	12341.45192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5297	12341.45193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5298	12341.45194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5299	12341.45195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5300	12341.45196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5301	12341.45197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5302	12341.45198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5303	12341.45199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5304	12341.45200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5305	12341.45201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5306	12341.45202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5307	12341.45203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5308	12341.45204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5309	12341.45205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5310	12341.45206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5311	12341.45207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5312	12341.45208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5313	12341.45209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5314	12341.45210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5315	12341.45211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5316	12341.45212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5317	12341.45213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5318	12341.45214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5319	12341.45215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5320	12341.45216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5321	12341.45217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5322	12341.45218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5323	12341.45219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5324	12341.45220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5325	12341.45221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5326	12341.45222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5327	12341.45223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5328	12341.45224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5329	12341.45225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5330	12341.45226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5331	12341.45227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5332	12341.45228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5333	12341.45229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5334	12341.45230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5335	12341.45231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5336	12341.45232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5337	12341.45233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5338	12341.45234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5339	12341.45235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5340	12341.45236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5341	12341.45237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5342	12341.45238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5343	12341.45239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5344	12341.45240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5345	12341.45241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5346	12341.45242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5347	12341.45243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5348	12341.45244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5349	12341.45245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5350	12341.45246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5351	12341.45247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5352	12341.45248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5353	12341.45249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5354	12341.45250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5355	12341.45251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5356	12341.45252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5357	12341.45253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5358	12341.45254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5359	12341.45255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5360	12341.45256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5361	12341.45257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5362	12341.45258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5363	12341.45259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5364	12341.45260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5365	12341.45261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5366	12341.45262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5367	12341.45263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5368	12341.45264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5369	12341.45265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5370	12341.45266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5371	12341.45267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5372	12341.45268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5373	12341.45269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5374	12341.45270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5375	12341.45271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5376	12341.45272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5377	12341.45273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5378	12341.45274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5379	12341.45275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5380	12341.45276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5381	12341.45277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5382	12341.45278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5383	12341.45279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5384	12341.45280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5385	12341.45281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5386	12341.45282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5387	12341.45283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5388	12341.45284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5389	12341.45285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5390	12341.45286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5391	12341.45287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5392	12341.45288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5393	12341.45289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5394	12341.45290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5395	12341.45291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5396	12341.45292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5397	12341.45293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5398	12341.45294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5399	12341.45295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5400	12341.45296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5401	12341.45297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5402	12341.45298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5403	12341.45299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5404	12341.45300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5405	12341.45301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5406	12341.45302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5407	12341.45303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5408	12341.45304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5409	12341.45305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5410	12341.45306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5411	12341.45307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5412	12341.45308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5413	12341.45309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5414	12341.45310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5415	12341.45311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5416	12341.45312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5417	12341.45313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5418	12341.45314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5419	12341.45315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5420	12341.45316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5421	12341.45317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5422	12341.45318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5423	12341.45319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5424	12341.45320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5425	12341.45321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5426	12341.45322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5427	12341.45323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5428	12341.45324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5429	12341.45325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5430	12341.45326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5431	12341.45327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5432	12341.45328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5433	12341.45329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5434	12341.45330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5435	12341.45331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5436	12341.45332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5437	12341.45333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5438	12341.45334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5439	12341.45335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5440	12341.45336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5441	12341.45337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5442	12341.45338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5443	12341.45339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5444	12341.45340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5445	12341.45341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5446	12341.45342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5447	12341.45343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5448	12341.45344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5449	12341.45345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5450	12341.45346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5451	12341.45347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5452	12341.45348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5453	12341.45349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5454	12341.45350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5455	12341.45351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5456	12341.45352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5457	12341.45353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5458	12341.45354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5459	12341.45355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5460	12341.45356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5461	12341.45357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5462	12341.45358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5463	12341.45359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5464	12341.45360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5465	12341.45361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5466	12341.45362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5467	12341.45363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5468	12341.45364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5469	12341.45365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5470	12341.45366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5471	12341.45367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5472	12341.45368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5473	12341.45369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5474	12341.45370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5475	12341.45371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5476	12341.45372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5477	12341.45373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5478	12341.45374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5479	12341.45375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5480	12341.45376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5481	12341.45377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5482	12341.45378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5483	12341.45379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5484	12341.45380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5485	12341.45381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5486	12341.45382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5487	12341.45383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5488	12341.45384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5489	12341.45385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5490	12341.45386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5491	12341.45387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5492	12341.45388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5493	12341.45389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5494	12341.45390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5495	12341.45391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5496	12341.45392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5497	12341.45393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5498	12341.45394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5499	12341.45395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5500	12341.45396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5501	12341.45397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5502	12341.45398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5503	12341.45399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5504	12341.45400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5505	12341.45401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5506	12341.45402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5507	12341.45403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5508	12341.45404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5509	12341.45405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5510	12341.45406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5511	12341.45407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5512	12341.45408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5513	12341.45409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5514	12341.45410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5515	12341.45411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5516	12341.45412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5517	12341.45413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5518	12341.45414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5519	12341.45415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5520	12341.45416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5521	12341.45417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5522	12341.45418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5523	12341.45419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5524	12341.45420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5525	12341.45421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5526	12341.45422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5527	12341.45423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5528	12341.45424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5529	12341.45425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5530	12341.45426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5531	12341.45427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5532	12341.45428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5533	12341.45429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5534	12341.45430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5535	12341.45431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5536	12341.45432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5537	12341.45433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5538	12341.45434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5539	12341.45435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5540	12341.45436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5541	12341.45437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5542	12341.45438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5543	12341.45439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5544	12341.45440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5545	12341.45441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5546	12341.45442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5547	12341.45443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5548	12341.45444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5549	12341.45445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5550	12341.45446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5551	12341.45447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5552	12341.45448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5553	12341.45449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5554	12341.45450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5555	12341.45451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5556	12341.45452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5557	12341.45453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5558	12341.45454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5559	12341.45455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5560	12341.45456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5561	12341.45457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5562	12341.45458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5563	12341.45459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5564	12341.45460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5565	12341.45461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5566	12341.45462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5567	12341.45463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5568	12341.45464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5569	12341.45465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5570	12341.45466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5571	12341.45467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5572	12341.45468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5573	12341.45469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5574	12341.45470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5575	12341.45471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5576	12341.45472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5577	12341.45473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5578	12341.45474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5579	12341.45475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5580	12341.45476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5581	12341.45477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5582	12341.45478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5583	12341.45479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5584	12341.45480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5585	12341.45481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5586	12341.45482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5587	12341.45483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5588	12341.45484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5589	12341.45485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5590	12341.45486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5591	12341.45487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5592	12341.45488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5593	12341.45489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5594	12341.45490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5595	12341.45491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5596	12341.45492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5597	12341.45493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5598	12341.45494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5599	12341.45495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5600	12341.45496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5601	12341.45497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5602	12341.45498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5603	12341.45499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5604	12341.45500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5605	12341.45501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5606	12341.45502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5607	12341.45503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5608	12341.45504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5609	12341.45505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5610	12341.45506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5611	12341.45507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5612	12341.45508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5613	12341.45509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5614	12341.45510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5615	12341.45511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5616	12341.45512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5617	12341.45513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5618	12341.45514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5619	12341.45515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5620	12341.45516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5621	12341.45517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5622	12341.45518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5623	12341.45519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5624	12341.45520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5625	12341.45521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5626	12341.45522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5627	12341.45523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5628	12341.45524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5629	12341.45525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5630	12341.45526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5631	12341.45527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5632	12341.45528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5633	12341.45529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5634	12341.45530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5635	12341.45531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5636	12341.45532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5637	12341.45533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5638	12341.45534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5639	12341.45535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5640	12341.45536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5641	12341.45537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5642	12341.45538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5643	12341.45539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5644	12341.45540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5645	12341.45541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5646	12341.45542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5647	12341.45543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5648	12341.45544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5649	12341.45545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5650	12341.45546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5651	12341.45547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5652	12341.45548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5653	12341.45549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5654	12341.45550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5655	12341.45551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5656	12341.45552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5657	12341.45553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5658	12341.45554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5659	12341.45555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5660	12341.45556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5661	12341.45557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5662	12341.45558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5663	12341.45559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5664	12341.45560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5665	12341.45561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5666	12341.45562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5667	12341.45563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5668	12341.45564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5669	12341.45565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5670	12341.45566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5671	12341.45567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5672	12341.45568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5673	12341.45569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5674	12341.45570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5675	12341.45571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5676	12341.45572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5677	12341.45573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5678	12341.45574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5679	12341.45575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5680	12341.45576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5681	12341.45577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5682	12341.45578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5683	12341.45579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5684	12341.45580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5685	12341.45581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5686	12341.45582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5687	12341.45583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5688	12341.45584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5689	12341.45585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5690	12341.45586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5691	12341.45587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5692	12341.45588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5693	12341.45589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5694	12341.45590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5695	12341.45591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5696	12341.45592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5697	12341.45593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5698	12341.45594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5699	12341.45595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5700	12341.45596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5701	12341.45597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5702	12341.45598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5703	12341.45599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5704	12341.45600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5705	12341.45601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5706	12341.45602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5707	12341.45603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5708	12341.45604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5709	12341.45605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5710	12341.45606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5711	12341.45607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5712	12341.45608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5713	12341.45609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5714	12341.45610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5715	12341.45611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5716	12341.45612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5717	12341.45613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5718	12341.45614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5719	12341.45615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5720	12341.45616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5721	12341.45617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5722	12341.45618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5723	12341.45619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5724	12341.45620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5725	12341.45621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5726	12341.45622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5727	12341.45623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5728	12341.45624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5729	12341.45625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5730	12341.45626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5731	12341.45627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5732	12341.45628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5733	12341.45629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5734	12341.45630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5735	12341.45631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5736	12341.45632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5737	12341.45633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5738	12341.45634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5739	12341.45635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5740	12341.45636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5741	12341.45637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5742	12341.45638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5743	12341.45639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5744	12341.45640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5745	12341.45641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5746	12341.45642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5747	12341.45643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5748	12341.45644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5749	12341.45645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5750	12341.45646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5751	12341.45647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5752	12341.45648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5753	12341.45649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5754	12341.45650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5755	12341.45651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5756	12341.45652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5757	12341.45653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5758	12341.45654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5759	12341.45655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5760	12341.45656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5761	12341.45657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5762	12341.45658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5763	12341.45659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5764	12341.45660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5765	12341.45661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5766	12341.45662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5767	12341.45663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5768	12341.45664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5769	12341.45665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5770	12341.45666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5771	12341.45667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5772	12341.45668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5773	12341.45669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5774	12341.45670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5775	12341.45671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5776	12341.45672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5777	12341.45673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5778	12341.45674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5779	12341.45675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5780	12341.45676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5781	12341.45677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5782	12341.45678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5783	12341.45679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5784	12341.45680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5785	12341.45681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5786	12341.45682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5787	12341.45683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5788	12341.45684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5789	12341.45685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5790	12341.45686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5791	12341.45687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5792	12341.45688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5793	12341.45689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5794	12341.45690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5795	12341.45691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5796	12341.45692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5797	12341.45693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5798	12341.45694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5799	12341.45695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5800	12341.45696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5801	12341.45697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5802	12341.45698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5803	12341.45699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5804	12341.45700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5805	12341.45701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5806	12341.45702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5807	12341.45703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5808	12341.45704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5809	12341.45705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5810	12341.45706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5811	12341.45707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5812	12341.45708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5813	12341.45709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5814	12341.45710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5815	12341.45711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5816	12341.45712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5817	12341.45713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5818	12341.45714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5819	12341.45715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5820	12341.45716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5821	12341.45717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5822	12341.45718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5823	12341.45719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5824	12341.45720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5825	12341.45721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5826	12341.45722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5827	12341.45723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5828	12341.45724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5829	12341.45725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5830	12341.45726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5831	12341.45727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5832	12341.45728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5833	12341.45729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5834	12341.45730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5835	12341.45731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5836	12341.45732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5837	12341.45733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5838	12341.45734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5839	12341.45735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5840	12341.45736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5841	12341.45737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5842	12341.45738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5843	12341.45739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5844	12341.45740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5845	12341.45741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5846	12341.45742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5847	12341.45743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5848	12341.45744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5849	12341.45745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5850	12341.45746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5851	12341.45747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5852	12341.45748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5853	12341.45749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5854	12341.45750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5855	12341.45751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5856	12341.45752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5857	12341.45753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5858	12341.45754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5859	12341.45755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5860	12341.45756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5861	12341.45757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5862	12341.45758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5863	12341.45759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5864	12341.45760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5865	12341.45761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5866	12341.45762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5867	12341.45763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5868	12341.45764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5869	12341.45765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5870	12341.45766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5871	12341.45767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5872	12341.45768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5873	12341.45769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5874	12341.45770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5875	12341.45771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5876	12341.45772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5877	12341.45773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5878	12341.45774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5879	12341.45775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5880	12341.45776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5881	12341.45777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5882	12341.45778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5883	12341.45779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5884	12341.45780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5885	12341.45781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5886	12341.45782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5887	12341.45783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5888	12341.45784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5889	12341.45785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5890	12341.45786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5891	12341.45787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5892	12341.45788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5893	12341.45789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5894	12341.45790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5895	12341.45791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5896	12341.45792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5897	12341.45793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5898	12341.45794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5899	12341.45795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5900	12341.45796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5901	12341.45797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5902	12341.45798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5903	12341.45799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5904	12341.45800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5905	12341.45801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5906	12341.45802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5907	12341.45803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5908	12341.45804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5909	12341.45805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5910	12341.45806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5911	12341.45807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5912	12341.45808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5913	12341.45809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5914	12341.45810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5915	12341.45811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5916	12341.45812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5917	12341.45813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5918	12341.45814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5919	12341.45815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5920	12341.45816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5921	12341.45817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5922	12341.45818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5923	12341.45819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5924	12341.45820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5925	12341.45821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5926	12341.45822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5927	12341.45823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5928	12341.45824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5929	12341.45825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5930	12341.45826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5931	12341.45827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5932	12341.45828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5933	12341.45829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5934	12341.45830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5935	12341.45831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5936	12341.45832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5937	12341.45833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5938	12341.45834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5939	12341.45835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5940	12341.45836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5941	12341.45837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5942	12341.45838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5943	12341.45839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5944	12341.45840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5945	12341.45841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5946	12341.45842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5947	12341.45843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5948	12341.45844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5949	12341.45845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5950	12341.45846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5951	12341.45847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5952	12341.45848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5953	12341.45849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5954	12341.45850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5955	12341.45851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5956	12341.45852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5957	12341.45853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5958	12341.45854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5959	12341.45855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5960	12341.45856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5961	12341.45857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5962	12341.45858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5963	12341.45859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5964	12341.45860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5965	12341.45861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5966	12341.45862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5967	12341.45863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5968	12341.45864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5969	12341.45865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5970	12341.45866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5971	12341.45867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5972	12341.45868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5973	12341.45869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5974	12341.45870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5975	12341.45871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5976	12341.45872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5977	12341.45873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5978	12341.45874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5979	12341.45875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5980	12341.45876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5981	12341.45877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5982	12341.45878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5983	12341.45879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5984	12341.45880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5985	12341.45881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5986	12341.45882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5987	12341.45883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5988	12341.45884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5989	12341.45885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5990	12341.45886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5991	12341.45887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5992	12341.45888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5993	12341.45889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5994	12341.45890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5995	12341.45891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5996	12341.45892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5997	12341.45893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5998	12341.45894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
5999	12341.45895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6000	12341.45896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6001	12341.45897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6002	12341.45898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6003	12341.45899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6004	12341.45900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6005	12341.45901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6006	12341.45902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6007	12341.45903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6008	12341.45904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6009	12341.45905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6010	12341.45906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6011	12341.45907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6012	12341.45908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6013	12341.45909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6014	12341.45910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6015	12341.45911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6016	12341.45912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6017	12341.45913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6018	12341.45914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6019	12341.45915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6020	12341.45916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6021	12341.45917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6022	12341.45918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6023	12341.45919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6024	12341.45920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6025	12341.45921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6026	12341.45922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6027	12341.45923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6028	12341.45924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6029	12341.45925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6030	12341.45926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6031	12341.45927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6032	12341.45928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6033	12341.45929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6034	12341.45930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6035	12341.45931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6036	12341.45932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6037	12341.45933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6038	12341.45934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6039	12341.45935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6040	12341.45936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6041	12341.45937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6042	12341.45938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6043	12341.45939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6044	12341.45940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6045	12341.45941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6046	12341.45942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6047	12341.45943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6048	12341.45944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6049	12341.45945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6050	12341.45946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6051	12341.45947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6052	12341.45948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6053	12341.45949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6054	12341.45950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6055	12341.45951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6056	12341.45952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6057	12341.45953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6058	12341.45954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6059	12341.45955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6060	12341.45956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6061	12341.45957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6062	12341.45958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6063	12341.45959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6064	12341.45960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6065	12341.45961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6066	12341.45962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6067	12341.45963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6068	12341.45964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6069	12341.45965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6070	12341.45966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6071	12341.45967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6072	12341.45968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6073	12341.45969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6074	12341.45970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6075	12341.45971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6076	12341.45972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6077	12341.45973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6078	12341.45974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6079	12341.45975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6080	12341.45976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6081	12341.45977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6082	12341.45978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6083	12341.45979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6084	12341.45980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6085	12341.45981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6086	12341.45982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6087	12341.45983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6088	12341.45984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6089	12341.45985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6090	12341.45986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6091	12341.45987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6092	12341.45988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6093	12341.45989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6094	12341.45990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6095	12341.45991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6096	12341.45992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6097	12341.45993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6098	12341.45994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6099	12341.45995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6100	12341.45996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6101	12341.45997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6102	12341.45998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6103	12341.45999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6104	12341.46000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6105	12341.46001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6106	12341.46002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6107	12341.46003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6108	12341.46004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6109	12341.46005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6110	12341.46006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6111	12341.46007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6112	12341.46008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6113	12341.46009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6114	12341.46010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6115	12341.46011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6116	12341.46012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6117	12341.46013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6118	12341.46014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6119	12341.46015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6120	12341.46016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6121	12341.46017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6122	12341.46018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6123	12341.46019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6124	12341.46020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6125	12341.46021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6126	12341.46022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6127	12341.46023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6128	12341.46024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6129	12341.46025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6130	12341.46026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6131	12341.46027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6132	12341.46028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6133	12341.46029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6134	12341.46030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6135	12341.46031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6136	12341.46032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6137	12341.46033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6138	12341.46034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6139	12341.46035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6140	12341.46036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6141	12341.46037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6142	12341.46038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6143	12341.46039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6144	12341.46040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6145	12341.46041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6146	12341.46042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6147	12341.46043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6148	12341.46044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6149	12341.46045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6150	12341.46046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6151	12341.46047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6152	12341.46048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6153	12341.46049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6154	12341.46050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6155	12341.46051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6156	12341.46052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6157	12341.46053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6158	12341.46054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6159	12341.46055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6160	12341.46056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6161	12341.46057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6162	12341.46058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6163	12341.46059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6164	12341.46060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6165	12341.46061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6166	12341.46062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6167	12341.46063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6168	12341.46064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6169	12341.46065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6170	12341.46066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6171	12341.46067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6172	12341.46068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6173	12341.46069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6174	12341.46070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6175	12341.46071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6176	12341.46072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6177	12341.46073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6178	12341.46074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6179	12341.46075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6180	12341.46076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6181	12341.46077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6182	12341.46078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6183	12341.46079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6184	12341.46080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6185	12341.46081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6186	12341.46082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6187	12341.46083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6188	12341.46084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6189	12341.46085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6190	12341.46086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6191	12341.46087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6192	12341.46088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6193	12341.46089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6194	12341.46090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6195	12341.46091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6196	12341.46092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6197	12341.46093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6198	12341.46094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6199	12341.46095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6200	12341.46096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6201	12341.46097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6202	12341.46098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6203	12341.46099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6204	12341.46100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6205	12341.46101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6206	12341.46102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6207	12341.46103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6208	12341.46104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6209	12341.46105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6210	12341.46106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6211	12341.46107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6212	12341.46108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6213	12341.46109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6214	12341.46110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6215	12341.46111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6216	12341.46112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6217	12341.46113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6218	12341.46114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6219	12341.46115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6220	12341.46116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6221	12341.46117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6222	12341.46118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6223	12341.46119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6224	12341.46120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6225	12341.46121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6226	12341.46122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6227	12341.46123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6228	12341.46124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6229	12341.46125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6230	12341.46126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6231	12341.46127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6232	12341.46128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6233	12341.46129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6234	12341.46130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6235	12341.46131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6236	12341.46132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6237	12341.46133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6238	12341.46134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6239	12341.46135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6240	12341.46136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6241	12341.46137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6242	12341.46138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6243	12341.46139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6244	12341.46140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6245	12341.46141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6246	12341.46142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6247	12341.46143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6248	12341.46144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6249	12341.46145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6250	12341.46146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6251	12341.46147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6252	12341.46148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6253	12341.46149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6254	12341.46150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6255	12341.46151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6256	12341.46152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6257	12341.46153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6258	12341.46154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6259	12341.46155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6260	12341.46156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6261	12341.46157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6262	12341.46158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6263	12341.46159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6264	12341.46160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6265	12341.46161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6266	12341.46162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6267	12341.46163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6268	12341.46164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6269	12341.46165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6270	12341.46166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6271	12341.46167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6272	12341.46168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6273	12341.46169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6274	12341.46170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6275	12341.46171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6276	12341.46172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6277	12341.46173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6278	12341.46174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6279	12341.46175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6280	12341.46176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6281	12341.46177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6282	12341.46178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6283	12341.46179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6284	12341.46180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6285	12341.46181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6286	12341.46182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6287	12341.46183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6288	12341.46184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6289	12341.46185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6290	12341.46186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6291	12341.46187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6292	12341.46188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6293	12341.46189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6294	12341.46190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6295	12341.46191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6296	12341.46192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6297	12341.46193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6298	12341.46194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6299	12341.46195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6300	12341.46196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6301	12341.46197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6302	12341.46198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6303	12341.46199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6304	12341.46200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6305	12341.46201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6306	12341.46202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6307	12341.46203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6308	12341.46204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6309	12341.46205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6310	12341.46206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6311	12341.46207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6312	12341.46208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6313	12341.46209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6314	12341.46210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6315	12341.46211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6316	12341.46212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6317	12341.46213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6318	12341.46214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6319	12341.46215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6320	12341.46216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6321	12341.46217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6322	12341.46218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6323	12341.46219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6324	12341.46220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6325	12341.46221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6326	12341.46222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6327	12341.46223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6328	12341.46224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6329	12341.46225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6330	12341.46226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6331	12341.46227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6332	12341.46228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6333	12341.46229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6334	12341.46230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6335	12341.46231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6336	12341.46232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6337	12341.46233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6338	12341.46234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6339	12341.46235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6340	12341.46236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6341	12341.46237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6342	12341.46238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6343	12341.46239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6344	12341.46240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6345	12341.46241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6346	12341.46242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6347	12341.46243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6348	12341.46244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6349	12341.46245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6350	12341.46246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6351	12341.46247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6352	12341.46248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6353	12341.46249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6354	12341.46250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6355	12341.46251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6356	12341.46252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6357	12341.46253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6358	12341.46254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6359	12341.46255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6360	12341.46256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6361	12341.46257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6362	12341.46258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6363	12341.46259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6364	12341.46260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6365	12341.46261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6366	12341.46262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6367	12341.46263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6368	12341.46264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6369	12341.46265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6370	12341.46266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6371	12341.46267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6372	12341.46268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6373	12341.46269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6374	12341.46270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6375	12341.46271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6376	12341.46272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6377	12341.46273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6378	12341.46274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6379	12341.46275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6380	12341.46276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6381	12341.46277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6382	12341.46278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6383	12341.46279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6384	12341.46280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6385	12341.46281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6386	12341.46282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6387	12341.46283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6388	12341.46284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6389	12341.46285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6390	12341.46286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6391	12341.46287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6392	12341.46288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6393	12341.46289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6394	12341.46290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6395	12341.46291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6396	12341.46292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6397	12341.46293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6398	12341.46294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6399	12341.46295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6400	12341.46296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6401	12341.46297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6402	12341.46298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6403	12341.46299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6404	12341.46300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6405	12341.46301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6406	12341.46302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6407	12341.46303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6408	12341.46304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6409	12341.46305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6410	12341.46306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6411	12341.46307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6412	12341.46308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6413	12341.46309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6414	12341.46310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6415	12341.46311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6416	12341.46312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6417	12341.46313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6418	12341.46314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6419	12341.46315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6420	12341.46316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6421	12341.46317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6422	12341.46318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6423	12341.46319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6424	12341.46320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6425	12341.46321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6426	12341.46322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6427	12341.46323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6428	12341.46324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6429	12341.46325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6430	12341.46326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6431	12341.46327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6432	12341.46328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6433	12341.46329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6434	12341.46330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6435	12341.46331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6436	12341.46332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6437	12341.46333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6438	12341.46334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6439	12341.46335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6440	12341.46336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6441	12341.46337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6442	12341.46338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6443	12341.46339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6444	12341.46340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6445	12341.46341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6446	12341.46342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6447	12341.46343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6448	12341.46344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6449	12341.46345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6450	12341.46346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6451	12341.46347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6452	12341.46348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6453	12341.46349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6454	12341.46350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6455	12341.46351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6456	12341.46352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6457	12341.46353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6458	12341.46354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6459	12341.46355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6460	12341.46356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6461	12341.46357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6462	12341.46358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6463	12341.46359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6464	12341.46360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6465	12341.46361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6466	12341.46362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6467	12341.46363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6468	12341.46364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6469	12341.46365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6470	12341.46366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6471	12341.46367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6472	12341.46368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6473	12341.46369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6474	12341.46370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6475	12341.46371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6476	12341.46372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6477	12341.46373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6478	12341.46374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6479	12341.46375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6480	12341.46376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6481	12341.46377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6482	12341.46378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6483	12341.46379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6484	12341.46380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6485	12341.46381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6486	12341.46382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6487	12341.46383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6488	12341.46384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6489	12341.46385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6490	12341.46386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6491	12341.46387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6492	12341.46388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6493	12341.46389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6494	12341.46390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6495	12341.46391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6496	12341.46392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6497	12341.46393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6498	12341.46394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6499	12341.46395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6500	12341.46396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6501	12341.46397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6502	12341.46398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6503	12341.46399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6504	12341.46400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6505	12341.46401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6506	12341.46402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6507	12341.46403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6508	12341.46404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6509	12341.46405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6510	12341.46406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6511	12341.46407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6512	12341.46408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6513	12341.46409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6514	12341.46410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6515	12341.46411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6516	12341.46412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6517	12341.46413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6518	12341.46414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6519	12341.46415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6520	12341.46416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6521	12341.46417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6522	12341.46418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6523	12341.46419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6524	12341.46420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6525	12341.46421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6526	12341.46422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6527	12341.46423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6528	12341.46424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6529	12341.46425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6530	12341.46426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6531	12341.46427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6532	12341.46428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6533	12341.46429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6534	12341.46430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6535	12341.46431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6536	12341.46432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6537	12341.46433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6538	12341.46434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6539	12341.46435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6540	12341.46436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6541	12341.46437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6542	12341.46438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6543	12341.46439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6544	12341.46440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6545	12341.46441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6546	12341.46442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6547	12341.46443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6548	12341.46444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6549	12341.46445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6550	12341.46446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6551	12341.46447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6552	12341.46448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6553	12341.46449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6554	12341.46450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6555	12341.46451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6556	12341.46452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6557	12341.46453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6558	12341.46454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6559	12341.46455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6560	12341.46456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6561	12341.46457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6562	12341.46458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6563	12341.46459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6564	12341.46460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6565	12341.46461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6566	12341.46462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6567	12341.46463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6568	12341.46464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6569	12341.46465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6570	12341.46466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6571	12341.46467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6572	12341.46468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6573	12341.46469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6574	12341.46470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6575	12341.46471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6576	12341.46472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6577	12341.46473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6578	12341.46474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6579	12341.46475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6580	12341.46476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6581	12341.46477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6582	12341.46478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6583	12341.46479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6584	12341.46480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6585	12341.46481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6586	12341.46482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6587	12341.46483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6588	12341.46484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6589	12341.46485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6590	12341.46486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6591	12341.46487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6592	12341.46488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6593	12341.46489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6594	12341.46490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6595	12341.46491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6596	12341.46492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6597	12341.46493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6598	12341.46494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6599	12341.46495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6600	12341.46496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6601	12341.46497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6602	12341.46498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6603	12341.46499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6604	12341.46500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6605	12341.46501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6606	12341.46502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6607	12341.46503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6608	12341.46504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6609	12341.46505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6610	12341.46506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6611	12341.46507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6612	12341.46508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6613	12341.46509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6614	12341.46510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6615	12341.46511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6616	12341.46512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6617	12341.46513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6618	12341.46514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6619	12341.46515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6620	12341.46516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6621	12341.46517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6622	12341.46518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6623	12341.46519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6624	12341.46520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6625	12341.46521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6626	12341.46522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6627	12341.46523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6628	12341.46524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6629	12341.46525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6630	12341.46526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6631	12341.46527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6632	12341.46528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6633	12341.46529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6634	12341.46530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6635	12341.46531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6636	12341.46532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6637	12341.46533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6638	12341.46534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6639	12341.46535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6640	12341.46536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6641	12341.46537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6642	12341.46538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6643	12341.46539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6644	12341.46540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6645	12341.46541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6646	12341.46542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6647	12341.46543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6648	12341.46544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6649	12341.46545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6650	12341.46546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6651	12341.46547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6652	12341.46548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6653	12341.46549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6654	12341.46550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6655	12341.46551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6656	12341.46552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6657	12341.46553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6658	12341.46554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6659	12341.46555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6660	12341.46556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6661	12341.46557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6662	12341.46558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6663	12341.46559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6664	12341.46560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6665	12341.46561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6666	12341.46562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6667	12341.46563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6668	12341.46564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6669	12341.46565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6670	12341.46566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6671	12341.46567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6672	12341.46568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6673	12341.46569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6674	12341.46570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6675	12341.46571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6676	12341.46572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6677	12341.46573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6678	12341.46574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6679	12341.46575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6680	12341.46576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6681	12341.46577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6682	12341.46578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6683	12341.46579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6684	12341.46580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6685	12341.46581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6686	12341.46582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6687	12341.46583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6688	12341.46584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6689	12341.46585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6690	12341.46586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6691	12341.46587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6692	12341.46588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6693	12341.46589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6694	12341.46590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6695	12341.46591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6696	12341.46592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6697	12341.46593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6698	12341.46594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6699	12341.46595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6700	12341.46596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6701	12341.46597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6702	12341.46598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6703	12341.46599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6704	12341.46600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6705	12341.46601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6706	12341.46602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6707	12341.46603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6708	12341.46604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6709	12341.46605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6710	12341.46606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6711	12341.46607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6712	12341.46608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6713	12341.46609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6714	12341.46610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6715	12341.46611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6716	12341.46612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6717	12341.46613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6718	12341.46614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6719	12341.46615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6720	12341.46616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6721	12341.46617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6722	12341.46618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6723	12341.46619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6724	12341.46620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6725	12341.46621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6726	12341.46622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6727	12341.46623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6728	12341.46624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6729	12341.46625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6730	12341.46626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6731	12341.46627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6732	12341.46628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6733	12341.46629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6734	12341.46630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6735	12341.46631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6736	12341.46632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6737	12341.46633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6738	12341.46634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6739	12341.46635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6740	12341.46636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6741	12341.46637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6742	12341.46638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6743	12341.46639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6744	12341.46640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6745	12341.46641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6746	12341.46642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6747	12341.46643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6748	12341.46644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6749	12341.46645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6750	12341.46646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6751	12341.46647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6752	12341.46648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6753	12341.46649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6754	12341.46650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6755	12341.46651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6756	12341.46652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6757	12341.46653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6758	12341.46654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6759	12341.46655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6760	12341.46656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6761	12341.46657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6762	12341.46658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6763	12341.46659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6764	12341.46660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6765	12341.46661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6766	12341.46662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6767	12341.46663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6768	12341.46664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6769	12341.46665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6770	12341.46666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6771	12341.46667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6772	12341.46668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6773	12341.46669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6774	12341.46670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6775	12341.46671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6776	12341.46672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6777	12341.46673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6778	12341.46674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6779	12341.46675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6780	12341.46676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6781	12341.46677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6782	12341.46678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6783	12341.46679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6784	12341.46680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6785	12341.46681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6786	12341.46682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6787	12341.46683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6788	12341.46684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6789	12341.46685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6790	12341.46686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6791	12341.46687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6792	12341.46688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6793	12341.46689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6794	12341.46690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6795	12341.46691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6796	12341.46692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6797	12341.46693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6798	12341.46694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6799	12341.46695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6800	12341.46696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6801	12341.46697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6802	12341.46698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6803	12341.46699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6804	12341.46700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6805	12341.46701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6806	12341.46702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6807	12341.46703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6808	12341.46704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6809	12341.46705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6810	12341.46706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6811	12341.46707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6812	12341.46708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6813	12341.46709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6814	12341.46710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6815	12341.46711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6816	12341.46712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6817	12341.46713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6818	12341.46714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6819	12341.46715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6820	12341.46716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6821	12341.46717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6822	12341.46718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6823	12341.46719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6824	12341.46720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6825	12341.46721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6826	12341.46722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6827	12341.46723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6828	12341.46724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6829	12341.46725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6830	12341.46726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6831	12341.46727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6832	12341.46728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6833	12341.46729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6834	12341.46730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6835	12341.46731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6836	12341.46732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6837	12341.46733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6838	12341.46734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6839	12341.46735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6840	12341.46736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6841	12341.46737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6842	12341.46738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6843	12341.46739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6844	12341.46740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6845	12341.46741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6846	12341.46742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6847	12341.46743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6848	12341.46744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6849	12341.46745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6850	12341.46746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6851	12341.46747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6852	12341.46748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6853	12341.46749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6854	12341.46750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6855	12341.46751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6856	12341.46752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6857	12341.46753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6858	12341.46754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6859	12341.46755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6860	12341.46756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6861	12341.46757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6862	12341.46758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6863	12341.46759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6864	12341.46760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6865	12341.46761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6866	12341.46762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6867	12341.46763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6868	12341.46764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6869	12341.46765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6870	12341.46766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6871	12341.46767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6872	12341.46768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6873	12341.46769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6874	12341.46770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6875	12341.46771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6876	12341.46772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6877	12341.46773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6878	12341.46774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6879	12341.46775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6880	12341.46776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6881	12341.46777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6882	12341.46778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6883	12341.46779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6884	12341.46780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6885	12341.46781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6886	12341.46782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6887	12341.46783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6888	12341.46784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6889	12341.46785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6890	12341.46786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6891	12341.46787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6892	12341.46788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6893	12341.46789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6894	12341.46790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6895	12341.46791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6896	12341.46792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6897	12341.46793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6898	12341.46794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6899	12341.46795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6900	12341.46796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6901	12341.46797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6902	12341.46798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6903	12341.46799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6904	12341.46800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6905	12341.46801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6906	12341.46802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6907	12341.46803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6908	12341.46804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6909	12341.46805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6910	12341.46806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6911	12341.46807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6912	12341.46808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6913	12341.46809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6914	12341.46810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6915	12341.46811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6916	12341.46812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6917	12341.46813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6918	12341.46814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6919	12341.46815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6920	12341.46816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6921	12341.46817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6922	12341.46818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6923	12341.46819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6924	12341.46820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6925	12341.46821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6926	12341.46822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6927	12341.46823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6928	12341.46824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6929	12341.46825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6930	12341.46826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6931	12341.46827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6932	12341.46828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6933	12341.46829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6934	12341.46830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6935	12341.46831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6936	12341.46832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6937	12341.46833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6938	12341.46834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6939	12341.46835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6940	12341.46836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6941	12341.46837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6942	12341.46838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6943	12341.46839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6944	12341.46840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6945	12341.46841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6946	12341.46842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6947	12341.46843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6948	12341.46844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6949	12341.46845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6950	12341.46846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6951	12341.46847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6952	12341.46848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6953	12341.46849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6954	12341.46850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6955	12341.46851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6956	12341.46852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6957	12341.46853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6958	12341.46854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6959	12341.46855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6960	12341.46856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6961	12341.46857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6962	12341.46858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6963	12341.46859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6964	12341.46860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6965	12341.46861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6966	12341.46862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6967	12341.46863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6968	12341.46864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6969	12341.46865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6970	12341.46866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6971	12341.46867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6972	12341.46868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6973	12341.46869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6974	12341.46870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6975	12341.46871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6976	12341.46872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6977	12341.46873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6978	12341.46874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6979	12341.46875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6980	12341.46876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6981	12341.46877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6982	12341.46878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6983	12341.46879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6984	12341.46880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6985	12341.46881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6986	12341.46882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6987	12341.46883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6988	12341.46884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6989	12341.46885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6990	12341.46886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6991	12341.46887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6992	12341.46888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6993	12341.46889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6994	12341.46890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6995	12341.46891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6996	12341.46892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6997	12341.46893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6998	12341.46894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
6999	12341.46895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7000	12341.46896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7001	12341.46897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7002	12341.46898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7003	12341.46899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7004	12341.46900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7005	12341.46901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7006	12341.46902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7007	12341.46903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7008	12341.46904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7009	12341.46905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7010	12341.46906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7011	12341.46907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7012	12341.46908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7013	12341.46909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7014	12341.46910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7015	12341.46911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7016	12341.46912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7017	12341.46913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7018	12341.46914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7019	12341.46915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7020	12341.46916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7021	12341.46917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7022	12341.46918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7023	12341.46919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7024	12341.46920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7025	12341.46921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7026	12341.46922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7027	12341.46923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7028	12341.46924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7029	12341.46925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7030	12341.46926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7031	12341.46927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7032	12341.46928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7033	12341.46929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7034	12341.46930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7035	12341.46931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7036	12341.46932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7037	12341.46933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7038	12341.46934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7039	12341.46935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7040	12341.46936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7041	12341.46937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7042	12341.46938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7043	12341.46939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7044	12341.46940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7045	12341.46941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7046	12341.46942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7047	12341.46943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7048	12341.46944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7049	12341.46945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7050	12341.46946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7051	12341.46947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7052	12341.46948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7053	12341.46949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7054	12341.46950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7055	12341.46951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7056	12341.46952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7057	12341.46953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7058	12341.46954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7059	12341.46955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7060	12341.46956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7061	12341.46957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7062	12341.46958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7063	12341.46959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7064	12341.46960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7065	12341.46961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7066	12341.46962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7067	12341.46963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7068	12341.46964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7069	12341.46965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7070	12341.46966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7071	12341.46967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7072	12341.46968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7073	12341.46969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7074	12341.46970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7075	12341.46971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7076	12341.46972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7077	12341.46973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7078	12341.46974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7079	12341.46975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7080	12341.46976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7081	12341.46977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7082	12341.46978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7083	12341.46979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7084	12341.46980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7085	12341.46981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7086	12341.46982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7087	12341.46983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7088	12341.46984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7089	12341.46985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7090	12341.46986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7091	12341.46987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7092	12341.46988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7093	12341.46989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7094	12341.46990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7095	12341.46991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7096	12341.46992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7097	12341.46993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7098	12341.46994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7099	12341.46995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7100	12341.46996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7101	12341.46997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7102	12341.46998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7103	12341.46999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7104	12341.47000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7105	12341.47001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7106	12341.47002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7107	12341.47003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7108	12341.47004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7109	12341.47005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7110	12341.47006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7111	12341.47007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7112	12341.47008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7113	12341.47009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7114	12341.47010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7115	12341.47011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7116	12341.47012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7117	12341.47013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7118	12341.47014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7119	12341.47015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7120	12341.47016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7121	12341.47017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7122	12341.47018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7123	12341.47019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7124	12341.47020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7125	12341.47021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7126	12341.47022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7127	12341.47023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7128	12341.47024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7129	12341.47025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7130	12341.47026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7131	12341.47027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7132	12341.47028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7133	12341.47029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7134	12341.47030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7135	12341.47031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7136	12341.47032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7137	12341.47033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7138	12341.47034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7139	12341.47035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7140	12341.47036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7141	12341.47037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7142	12341.47038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7143	12341.47039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7144	12341.47040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7145	12341.47041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7146	12341.47042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7147	12341.47043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7148	12341.47044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7149	12341.47045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7150	12341.47046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7151	12341.47047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7152	12341.47048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7153	12341.47049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7154	12341.47050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7155	12341.47051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7156	12341.47052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7157	12341.47053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7158	12341.47054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7159	12341.47055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7160	12341.47056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7161	12341.47057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7162	12341.47058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7163	12341.47059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7164	12341.47060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7165	12341.47061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7166	12341.47062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7167	12341.47063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7168	12341.47064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7169	12341.47065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7170	12341.47066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7171	12341.47067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7172	12341.47068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7173	12341.47069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7174	12341.47070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7175	12341.47071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7176	12341.47072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7177	12341.47073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7178	12341.47074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7179	12341.47075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7180	12341.47076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7181	12341.47077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7182	12341.47078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7183	12341.47079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7184	12341.47080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7185	12341.47081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7186	12341.47082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7187	12341.47083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7188	12341.47084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7189	12341.47085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7190	12341.47086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7191	12341.47087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7192	12341.47088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7193	12341.47089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7194	12341.47090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7195	12341.47091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7196	12341.47092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7197	12341.47093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7198	12341.47094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7199	12341.47095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7200	12341.47096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7201	12341.47097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7202	12341.47098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7203	12341.47099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7204	12341.47100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7205	12341.47101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7206	12341.47102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7207	12341.47103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7208	12341.47104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7209	12341.47105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7210	12341.47106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7211	12341.47107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7212	12341.47108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7213	12341.47109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7214	12341.47110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7215	12341.47111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7216	12341.47112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7217	12341.47113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7218	12341.47114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7219	12341.47115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7220	12341.47116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7221	12341.47117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7222	12341.47118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7223	12341.47119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7224	12341.47120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7225	12341.47121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7226	12341.47122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7227	12341.47123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7228	12341.47124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7229	12341.47125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7230	12341.47126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7231	12341.47127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7232	12341.47128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7233	12341.47129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7234	12341.47130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7235	12341.47131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7236	12341.47132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7237	12341.47133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7238	12341.47134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7239	12341.47135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7240	12341.47136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7241	12341.47137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7242	12341.47138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7243	12341.47139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7244	12341.47140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7245	12341.47141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7246	12341.47142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7247	12341.47143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7248	12341.47144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7249	12341.47145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7250	12341.47146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7251	12341.47147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7252	12341.47148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7253	12341.47149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7254	12341.47150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7255	12341.47151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7256	12341.47152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7257	12341.47153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7258	12341.47154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7259	12341.47155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7260	12341.47156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7261	12341.47157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7262	12341.47158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7263	12341.47159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7264	12341.47160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7265	12341.47161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7266	12341.47162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7267	12341.47163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7268	12341.47164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7269	12341.47165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7270	12341.47166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7271	12341.47167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7272	12341.47168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7273	12341.47169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7274	12341.47170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7275	12341.47171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7276	12341.47172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7277	12341.47173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7278	12341.47174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7279	12341.47175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7280	12341.47176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7281	12341.47177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7282	12341.47178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7283	12341.47179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7284	12341.47180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7285	12341.47181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7286	12341.47182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7287	12341.47183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7288	12341.47184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7289	12341.47185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7290	12341.47186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7291	12341.47187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7292	12341.47188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7293	12341.47189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7294	12341.47190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7295	12341.47191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7296	12341.47192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7297	12341.47193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7298	12341.47194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7299	12341.47195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7300	12341.47196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7301	12341.47197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7302	12341.47198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7303	12341.47199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7304	12341.47200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7305	12341.47201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7306	12341.47202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7307	12341.47203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7308	12341.47204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7309	12341.47205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7310	12341.47206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7311	12341.47207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7312	12341.47208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7313	12341.47209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7314	12341.47210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7315	12341.47211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7316	12341.47212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7317	12341.47213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7318	12341.47214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7319	12341.47215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7320	12341.47216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7321	12341.47217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7322	12341.47218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7323	12341.47219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7324	12341.47220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7325	12341.47221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7326	12341.47222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7327	12341.47223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7328	12341.47224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7329	12341.47225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7330	12341.47226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7331	12341.47227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7332	12341.47228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7333	12341.47229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7334	12341.47230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7335	12341.47231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7336	12341.47232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7337	12341.47233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7338	12341.47234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7339	12341.47235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7340	12341.47236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7341	12341.47237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7342	12341.47238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7343	12341.47239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7344	12341.47240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7345	12341.47241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7346	12341.47242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7347	12341.47243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7348	12341.47244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7349	12341.47245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7350	12341.47246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7351	12341.47247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7352	12341.47248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7353	12341.47249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7354	12341.47250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7355	12341.47251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7356	12341.47252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7357	12341.47253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7358	12341.47254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7359	12341.47255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7360	12341.47256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7361	12341.47257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7362	12341.47258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7363	12341.47259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7364	12341.47260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7365	12341.47261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7366	12341.47262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7367	12341.47263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7368	12341.47264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7369	12341.47265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7370	12341.47266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7371	12341.47267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7372	12341.47268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7373	12341.47269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7374	12341.47270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7375	12341.47271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7376	12341.47272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7377	12341.47273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7378	12341.47274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7379	12341.47275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7380	12341.47276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7381	12341.47277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7382	12341.47278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7383	12341.47279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7384	12341.47280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7385	12341.47281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7386	12341.47282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7387	12341.47283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7388	12341.47284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7389	12341.47285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7390	12341.47286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7391	12341.47287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7392	12341.47288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7393	12341.47289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7394	12341.47290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7395	12341.47291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7396	12341.47292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7397	12341.47293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7398	12341.47294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7399	12341.47295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7400	12341.47296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7401	12341.47297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7402	12341.47298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7403	12341.47299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7404	12341.47300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7405	12341.47301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7406	12341.47302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7407	12341.47303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7408	12341.47304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7409	12341.47305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7410	12341.47306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7411	12341.47307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7412	12341.47308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7413	12341.47309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7414	12341.47310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7415	12341.47311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7416	12341.47312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7417	12341.47313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7418	12341.47314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7419	12341.47315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7420	12341.47316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7421	12341.47317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7422	12341.47318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7423	12341.47319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7424	12341.47320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7425	12341.47321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7426	12341.47322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7427	12341.47323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7428	12341.47324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7429	12341.47325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7430	12341.47326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7431	12341.47327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7432	12341.47328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7433	12341.47329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7434	12341.47330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7435	12341.47331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7436	12341.47332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7437	12341.47333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7438	12341.47334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7439	12341.47335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7440	12341.47336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7441	12341.47337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7442	12341.47338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7443	12341.47339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7444	12341.47340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7445	12341.47341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7446	12341.47342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7447	12341.47343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7448	12341.47344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7449	12341.47345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7450	12341.47346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7451	12341.47347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7452	12341.47348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7453	12341.47349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7454	12341.47350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7455	12341.47351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7456	12341.47352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7457	12341.47353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7458	12341.47354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7459	12341.47355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7460	12341.47356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7461	12341.47357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7462	12341.47358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7463	12341.47359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7464	12341.47360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7465	12341.47361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7466	12341.47362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7467	12341.47363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7468	12341.47364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7469	12341.47365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7470	12341.47366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7471	12341.47367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7472	12341.47368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7473	12341.47369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7474	12341.47370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7475	12341.47371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7476	12341.47372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7477	12341.47373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7478	12341.47374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7479	12341.47375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7480	12341.47376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7481	12341.47377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7482	12341.47378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7483	12341.47379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7484	12341.47380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7485	12341.47381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7486	12341.47382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7487	12341.47383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7488	12341.47384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7489	12341.47385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7490	12341.47386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7491	12341.47387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7492	12341.47388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7493	12341.47389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7494	12341.47390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7495	12341.47391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7496	12341.47392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7497	12341.47393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7498	12341.47394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7499	12341.47395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7500	12341.47396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7501	12341.47397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7502	12341.47398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7503	12341.47399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7504	12341.47400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7505	12341.47401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7506	12341.47402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7507	12341.47403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7508	12341.47404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7509	12341.47405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7510	12341.47406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7511	12341.47407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7512	12341.47408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7513	12341.47409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7514	12341.47410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7515	12341.47411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7516	12341.47412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7517	12341.47413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7518	12341.47414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7519	12341.47415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7520	12341.47416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7521	12341.47417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7522	12341.47418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7523	12341.47419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7524	12341.47420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7525	12341.47421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7526	12341.47422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7527	12341.47423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7528	12341.47424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7529	12341.47425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7530	12341.47426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7531	12341.47427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7532	12341.47428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7533	12341.47429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7534	12341.47430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7535	12341.47431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7536	12341.47432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7537	12341.47433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7538	12341.47434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7539	12341.47435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7540	12341.47436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7541	12341.47437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7542	12341.47438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7543	12341.47439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7544	12341.47440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7545	12341.47441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7546	12341.47442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7547	12341.47443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7548	12341.47444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7549	12341.47445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7550	12341.47446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7551	12341.47447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7552	12341.47448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7553	12341.47449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7554	12341.47450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7555	12341.47451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7556	12341.47452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7557	12341.47453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7558	12341.47454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7559	12341.47455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7560	12341.47456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7561	12341.47457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7562	12341.47458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7563	12341.47459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7564	12341.47460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7565	12341.47461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7566	12341.47462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7567	12341.47463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7568	12341.47464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7569	12341.47465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7570	12341.47466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7571	12341.47467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7572	12341.47468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7573	12341.47469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7574	12341.47470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7575	12341.47471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7576	12341.47472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7577	12341.47473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7578	12341.47474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7579	12341.47475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7580	12341.47476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7581	12341.47477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7582	12341.47478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7583	12341.47479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7584	12341.47480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7585	12341.47481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7586	12341.47482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7587	12341.47483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7588	12341.47484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7589	12341.47485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7590	12341.47486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7591	12341.47487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7592	12341.47488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7593	12341.47489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7594	12341.47490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7595	12341.47491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7596	12341.47492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7597	12341.47493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7598	12341.47494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7599	12341.47495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7600	12341.47496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7601	12341.47497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7602	12341.47498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7603	12341.47499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7604	12341.47500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7605	12341.47501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7606	12341.47502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7607	12341.47503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7608	12341.47504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7609	12341.47505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7610	12341.47506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7611	12341.47507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7612	12341.47508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7613	12341.47509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7614	12341.47510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7615	12341.47511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7616	12341.47512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7617	12341.47513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7618	12341.47514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7619	12341.47515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7620	12341.47516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7621	12341.47517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7622	12341.47518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7623	12341.47519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7624	12341.47520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7625	12341.47521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7626	12341.47522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7627	12341.47523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7628	12341.47524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7629	12341.47525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7630	12341.47526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7631	12341.47527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7632	12341.47528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7633	12341.47529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7634	12341.47530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7635	12341.47531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7636	12341.47532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7637	12341.47533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7638	12341.47534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7639	12341.47535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7640	12341.47536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7641	12341.47537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7642	12341.47538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7643	12341.47539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7644	12341.47540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7645	12341.47541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7646	12341.47542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7647	12341.47543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7648	12341.47544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7649	12341.47545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7650	12341.47546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7651	12341.47547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7652	12341.47548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7653	12341.47549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7654	12341.47550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7655	12341.47551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7656	12341.47552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7657	12341.47553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7658	12341.47554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7659	12341.47555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7660	12341.47556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7661	12341.47557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7662	12341.47558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7663	12341.47559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7664	12341.47560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7665	12341.47561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7666	12341.47562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7667	12341.47563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7668	12341.47564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7669	12341.47565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7670	12341.47566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7671	12341.47567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7672	12341.47568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7673	12341.47569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7674	12341.47570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7675	12341.47571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7676	12341.47572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7677	12341.47573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7678	12341.47574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7679	12341.47575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7680	12341.47576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7681	12341.47577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7682	12341.47578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7683	12341.47579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7684	12341.47580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7685	12341.47581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7686	12341.47582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7687	12341.47583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7688	12341.47584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7689	12341.47585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7690	12341.47586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7691	12341.47587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7692	12341.47588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7693	12341.47589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7694	12341.47590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7695	12341.47591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7696	12341.47592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7697	12341.47593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7698	12341.47594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7699	12341.47595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7700	12341.47596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7701	12341.47597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7702	12341.47598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7703	12341.47599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7704	12341.47600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7705	12341.47601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7706	12341.47602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7707	12341.47603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7708	12341.47604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7709	12341.47605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7710	12341.47606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7711	12341.47607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7712	12341.47608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7713	12341.47609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7714	12341.47610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7715	12341.47611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7716	12341.47612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7717	12341.47613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7718	12341.47614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7719	12341.47615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7720	12341.47616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7721	12341.47617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7722	12341.47618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7723	12341.47619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7724	12341.47620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7725	12341.47621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7726	12341.47622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7727	12341.47623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7728	12341.47624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7729	12341.47625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7730	12341.47626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7731	12341.47627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7732	12341.47628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7733	12341.47629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7734	12341.47630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7735	12341.47631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7736	12341.47632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7737	12341.47633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7738	12341.47634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7739	12341.47635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7740	12341.47636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7741	12341.47637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7742	12341.47638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7743	12341.47639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7744	12341.47640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7745	12341.47641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7746	12341.47642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7747	12341.47643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7748	12341.47644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7749	12341.47645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7750	12341.47646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7751	12341.47647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7752	12341.47648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7753	12341.47649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7754	12341.47650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7755	12341.47651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7756	12341.47652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7757	12341.47653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7758	12341.47654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7759	12341.47655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7760	12341.47656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7761	12341.47657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7762	12341.47658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7763	12341.47659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7764	12341.47660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7765	12341.47661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7766	12341.47662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7767	12341.47663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7768	12341.47664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7769	12341.47665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7770	12341.47666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7771	12341.47667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7772	12341.47668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7773	12341.47669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7774	12341.47670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7775	12341.47671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7776	12341.47672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7777	12341.47673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7778	12341.47674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7779	12341.47675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7780	12341.47676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7781	12341.47677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7782	12341.47678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7783	12341.47679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7784	12341.47680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7785	12341.47681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7786	12341.47682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7787	12341.47683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7788	12341.47684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7789	12341.47685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7790	12341.47686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7791	12341.47687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7792	12341.47688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7793	12341.47689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7794	12341.47690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7795	12341.47691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7796	12341.47692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7797	12341.47693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7798	12341.47694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7799	12341.47695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7800	12341.47696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7801	12341.47697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7802	12341.47698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7803	12341.47699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7804	12341.47700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7805	12341.47701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7806	12341.47702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7807	12341.47703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7808	12341.47704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7809	12341.47705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7810	12341.47706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7811	12341.47707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7812	12341.47708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7813	12341.47709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7814	12341.47710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7815	12341.47711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7816	12341.47712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7817	12341.47713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7818	12341.47714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7819	12341.47715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7820	12341.47716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7821	12341.47717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7822	12341.47718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7823	12341.47719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7824	12341.47720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7825	12341.47721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7826	12341.47722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7827	12341.47723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7828	12341.47724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7829	12341.47725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7830	12341.47726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7831	12341.47727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7832	12341.47728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7833	12341.47729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7834	12341.47730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7835	12341.47731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7836	12341.47732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7837	12341.47733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7838	12341.47734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7839	12341.47735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7840	12341.47736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7841	12341.47737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7842	12341.47738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7843	12341.47739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7844	12341.47740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7845	12341.47741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7846	12341.47742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7847	12341.47743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7848	12341.47744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7849	12341.47745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7850	12341.47746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7851	12341.47747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7852	12341.47748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7853	12341.47749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7854	12341.47750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7855	12341.47751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7856	12341.47752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7857	12341.47753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7858	12341.47754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7859	12341.47755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7860	12341.47756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7861	12341.47757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7862	12341.47758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7863	12341.47759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7864	12341.47760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7865	12341.47761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7866	12341.47762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7867	12341.47763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7868	12341.47764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7869	12341.47765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7870	12341.47766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7871	12341.47767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7872	12341.47768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7873	12341.47769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7874	12341.47770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7875	12341.47771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7876	12341.47772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7877	12341.47773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7878	12341.47774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7879	12341.47775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7880	12341.47776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7881	12341.47777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7882	12341.47778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7883	12341.47779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7884	12341.47780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7885	12341.47781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7886	12341.47782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7887	12341.47783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7888	12341.47784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7889	12341.47785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7890	12341.47786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7891	12341.47787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7892	12341.47788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7893	12341.47789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7894	12341.47790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7895	12341.47791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7896	12341.47792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7897	12341.47793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7898	12341.47794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7899	12341.47795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7900	12341.47796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7901	12341.47797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7902	12341.47798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7903	12341.47799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7904	12341.47800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7905	12341.47801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7906	12341.47802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7907	12341.47803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7908	12341.47804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7909	12341.47805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7910	12341.47806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7911	12341.47807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7912	12341.47808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7913	12341.47809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7914	12341.47810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7915	12341.47811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7916	12341.47812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7917	12341.47813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7918	12341.47814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7919	12341.47815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7920	12341.47816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7921	12341.47817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7922	12341.47818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7923	12341.47819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7924	12341.47820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7925	12341.47821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7926	12341.47822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7927	12341.47823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7928	12341.47824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7929	12341.47825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7930	12341.47826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7931	12341.47827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7932	12341.47828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7933	12341.47829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7934	12341.47830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7935	12341.47831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7936	12341.47832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7937	12341.47833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7938	12341.47834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7939	12341.47835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7940	12341.47836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7941	12341.47837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7942	12341.47838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7943	12341.47839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7944	12341.47840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7945	12341.47841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7946	12341.47842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7947	12341.47843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7948	12341.47844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7949	12341.47845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7950	12341.47846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7951	12341.47847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7952	12341.47848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7953	12341.47849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7954	12341.47850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7955	12341.47851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7956	12341.47852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7957	12341.47853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7958	12341.47854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7959	12341.47855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7960	12341.47856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7961	12341.47857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7962	12341.47858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7963	12341.47859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7964	12341.47860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7965	12341.47861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7966	12341.47862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7967	12341.47863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7968	12341.47864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7969	12341.47865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7970	12341.47866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7971	12341.47867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7972	12341.47868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7973	12341.47869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7974	12341.47870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7975	12341.47871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7976	12341.47872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7977	12341.47873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7978	12341.47874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7979	12341.47875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7980	12341.47876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7981	12341.47877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7982	12341.47878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7983	12341.47879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7984	12341.47880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7985	12341.47881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7986	12341.47882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7987	12341.47883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7988	12341.47884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7989	12341.47885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7990	12341.47886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7991	12341.47887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7992	12341.47888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7993	12341.47889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7994	12341.47890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7995	12341.47891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7996	12341.47892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7997	12341.47893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7998	12341.47894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
7999	12341.47895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8000	12341.47896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8001	12341.47897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8002	12341.47898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8003	12341.47899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8004	12341.47900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8005	12341.47901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8006	12341.47902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8007	12341.47903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8008	12341.47904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8009	12341.47905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8010	12341.47906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8011	12341.47907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8012	12341.47908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8013	12341.47909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8014	12341.47910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8015	12341.47911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8016	12341.47912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8017	12341.47913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8018	12341.47914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8019	12341.47915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8020	12341.47916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8021	12341.47917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8022	12341.47918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8023	12341.47919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8024	12341.47920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8025	12341.47921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8026	12341.47922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8027	12341.47923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8028	12341.47924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8029	12341.47925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8030	12341.47926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8031	12341.47927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8032	12341.47928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8033	12341.47929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8034	12341.47930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8035	12341.47931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8036	12341.47932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8037	12341.47933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8038	12341.47934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8039	12341.47935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8040	12341.47936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8041	12341.47937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8042	12341.47938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8043	12341.47939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8044	12341.47940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8045	12341.47941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8046	12341.47942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8047	12341.47943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8048	12341.47944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8049	12341.47945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8050	12341.47946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8051	12341.47947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8052	12341.47948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8053	12341.47949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8054	12341.47950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8055	12341.47951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8056	12341.47952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8057	12341.47953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8058	12341.47954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8059	12341.47955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8060	12341.47956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8061	12341.47957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8062	12341.47958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8063	12341.47959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8064	12341.47960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8065	12341.47961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8066	12341.47962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8067	12341.47963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8068	12341.47964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8069	12341.47965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8070	12341.47966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8071	12341.47967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8072	12341.47968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8073	12341.47969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8074	12341.47970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8075	12341.47971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8076	12341.47972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8077	12341.47973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8078	12341.47974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8079	12341.47975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8080	12341.47976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8081	12341.47977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8082	12341.47978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8083	12341.47979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8084	12341.47980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8085	12341.47981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8086	12341.47982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8087	12341.47983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8088	12341.47984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8089	12341.47985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8090	12341.47986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8091	12341.47987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8092	12341.47988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8093	12341.47989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8094	12341.47990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8095	12341.47991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8096	12341.47992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8097	12341.47993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8098	12341.47994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8099	12341.47995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8100	12341.47996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8101	12341.47997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8102	12341.47998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8103	12341.47999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8104	12341.48000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8105	12341.48001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8106	12341.48002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8107	12341.48003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8108	12341.48004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8109	12341.48005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8110	12341.48006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8111	12341.48007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8112	12341.48008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8113	12341.48009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8114	12341.48010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8115	12341.48011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8116	12341.48012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8117	12341.48013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8118	12341.48014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8119	12341.48015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8120	12341.48016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8121	12341.48017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8122	12341.48018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8123	12341.48019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8124	12341.48020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8125	12341.48021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8126	12341.48022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8127	12341.48023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8128	12341.48024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8129	12341.48025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8130	12341.48026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8131	12341.48027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8132	12341.48028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8133	12341.48029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8134	12341.48030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8135	12341.48031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8136	12341.48032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8137	12341.48033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8138	12341.48034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8139	12341.48035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8140	12341.48036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8141	12341.48037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8142	12341.48038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8143	12341.48039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8144	12341.48040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8145	12341.48041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8146	12341.48042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8147	12341.48043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8148	12341.48044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8149	12341.48045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8150	12341.48046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8151	12341.48047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8152	12341.48048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8153	12341.48049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8154	12341.48050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8155	12341.48051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8156	12341.48052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8157	12341.48053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8158	12341.48054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8159	12341.48055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8160	12341.48056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8161	12341.48057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8162	12341.48058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8163	12341.48059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8164	12341.48060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8165	12341.48061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8166	12341.48062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8167	12341.48063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8168	12341.48064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8169	12341.48065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8170	12341.48066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8171	12341.48067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8172	12341.48068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8173	12341.48069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8174	12341.48070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8175	12341.48071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8176	12341.48072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8177	12341.48073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8178	12341.48074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8179	12341.48075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8180	12341.48076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8181	12341.48077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8182	12341.48078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8183	12341.48079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8184	12341.48080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8185	12341.48081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8186	12341.48082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8187	12341.48083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8188	12341.48084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8189	12341.48085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8190	12341.48086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8191	12341.48087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8192	12341.48088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8193	12341.48089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8194	12341.48090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8195	12341.48091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8196	12341.48092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8197	12341.48093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8198	12341.48094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8199	12341.48095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8200	12341.48096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8201	12341.48097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8202	12341.48098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8203	12341.48099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8204	12341.48100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8205	12341.48101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8206	12341.48102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8207	12341.48103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8208	12341.48104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8209	12341.48105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8210	12341.48106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8211	12341.48107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8212	12341.48108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8213	12341.48109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8214	12341.48110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8215	12341.48111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8216	12341.48112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8217	12341.48113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8218	12341.48114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8219	12341.48115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8220	12341.48116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8221	12341.48117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8222	12341.48118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8223	12341.48119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8224	12341.48120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8225	12341.48121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8226	12341.48122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8227	12341.48123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8228	12341.48124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8229	12341.48125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8230	12341.48126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8231	12341.48127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8232	12341.48128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8233	12341.48129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8234	12341.48130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8235	12341.48131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8236	12341.48132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8237	12341.48133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8238	12341.48134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8239	12341.48135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8240	12341.48136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8241	12341.48137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8242	12341.48138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8243	12341.48139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8244	12341.48140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8245	12341.48141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8246	12341.48142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8247	12341.48143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8248	12341.48144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8249	12341.48145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8250	12341.48146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8251	12341.48147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8252	12341.48148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8253	12341.48149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8254	12341.48150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8255	12341.48151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8256	12341.48152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8257	12341.48153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8258	12341.48154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8259	12341.48155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8260	12341.48156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8261	12341.48157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8262	12341.48158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8263	12341.48159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8264	12341.48160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8265	12341.48161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8266	12341.48162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8267	12341.48163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8268	12341.48164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8269	12341.48165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8270	12341.48166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8271	12341.48167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8272	12341.48168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8273	12341.48169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8274	12341.48170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8275	12341.48171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8276	12341.48172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8277	12341.48173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8278	12341.48174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8279	12341.48175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8280	12341.48176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8281	12341.48177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8282	12341.48178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8283	12341.48179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8284	12341.48180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8285	12341.48181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8286	12341.48182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8287	12341.48183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8288	12341.48184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8289	12341.48185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8290	12341.48186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8291	12341.48187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8292	12341.48188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8293	12341.48189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8294	12341.48190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8295	12341.48191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8296	12341.48192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8297	12341.48193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8298	12341.48194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8299	12341.48195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8300	12341.48196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8301	12341.48197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8302	12341.48198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8303	12341.48199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8304	12341.48200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8305	12341.48201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8306	12341.48202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8307	12341.48203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8308	12341.48204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8309	12341.48205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8310	12341.48206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8311	12341.48207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8312	12341.48208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8313	12341.48209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8314	12341.48210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8315	12341.48211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8316	12341.48212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8317	12341.48213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8318	12341.48214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8319	12341.48215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8320	12341.48216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8321	12341.48217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8322	12341.48218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8323	12341.48219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8324	12341.48220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8325	12341.48221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8326	12341.48222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8327	12341.48223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8328	12341.48224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8329	12341.48225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8330	12341.48226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8331	12341.48227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8332	12341.48228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8333	12341.48229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8334	12341.48230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8335	12341.48231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8336	12341.48232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8337	12341.48233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8338	12341.48234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8339	12341.48235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8340	12341.48236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8341	12341.48237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8342	12341.48238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8343	12341.48239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8344	12341.48240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8345	12341.48241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8346	12341.48242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8347	12341.48243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8348	12341.48244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8349	12341.48245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8350	12341.48246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8351	12341.48247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8352	12341.48248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8353	12341.48249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8354	12341.48250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8355	12341.48251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8356	12341.48252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8357	12341.48253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8358	12341.48254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8359	12341.48255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8360	12341.48256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8361	12341.48257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8362	12341.48258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8363	12341.48259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8364	12341.48260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8365	12341.48261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8366	12341.48262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8367	12341.48263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8368	12341.48264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8369	12341.48265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8370	12341.48266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8371	12341.48267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8372	12341.48268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8373	12341.48269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8374	12341.48270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8375	12341.48271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8376	12341.48272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8377	12341.48273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8378	12341.48274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8379	12341.48275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8380	12341.48276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8381	12341.48277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8382	12341.48278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8383	12341.48279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8384	12341.48280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8385	12341.48281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8386	12341.48282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8387	12341.48283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8388	12341.48284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8389	12341.48285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8390	12341.48286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8391	12341.48287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8392	12341.48288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8393	12341.48289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8394	12341.48290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8395	12341.48291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8396	12341.48292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8397	12341.48293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8398	12341.48294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8399	12341.48295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8400	12341.48296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8401	12341.48297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8402	12341.48298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8403	12341.48299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8404	12341.48300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8405	12341.48301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8406	12341.48302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8407	12341.48303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8408	12341.48304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8409	12341.48305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8410	12341.48306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8411	12341.48307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8412	12341.48308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8413	12341.48309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8414	12341.48310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8415	12341.48311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8416	12341.48312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8417	12341.48313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8418	12341.48314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8419	12341.48315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8420	12341.48316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8421	12341.48317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8422	12341.48318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8423	12341.48319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8424	12341.48320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8425	12341.48321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8426	12341.48322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8427	12341.48323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8428	12341.48324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8429	12341.48325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8430	12341.48326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8431	12341.48327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8432	12341.48328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8433	12341.48329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8434	12341.48330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8435	12341.48331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8436	12341.48332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8437	12341.48333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8438	12341.48334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8439	12341.48335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8440	12341.48336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8441	12341.48337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8442	12341.48338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8443	12341.48339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8444	12341.48340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8445	12341.48341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8446	12341.48342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8447	12341.48343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8448	12341.48344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8449	12341.48345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8450	12341.48346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8451	12341.48347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8452	12341.48348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8453	12341.48349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8454	12341.48350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8455	12341.48351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8456	12341.48352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8457	12341.48353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8458	12341.48354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8459	12341.48355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8460	12341.48356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8461	12341.48357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8462	12341.48358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8463	12341.48359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8464	12341.48360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8465	12341.48361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8466	12341.48362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8467	12341.48363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8468	12341.48364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8469	12341.48365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8470	12341.48366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8471	12341.48367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8472	12341.48368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8473	12341.48369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8474	12341.48370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8475	12341.48371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8476	12341.48372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8477	12341.48373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8478	12341.48374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8479	12341.48375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8480	12341.48376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8481	12341.48377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8482	12341.48378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8483	12341.48379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8484	12341.48380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8485	12341.48381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8486	12341.48382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8487	12341.48383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8488	12341.48384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8489	12341.48385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8490	12341.48386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8491	12341.48387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8492	12341.48388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8493	12341.48389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8494	12341.48390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8495	12341.48391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8496	12341.48392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8497	12341.48393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8498	12341.48394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8499	12341.48395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8500	12341.48396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8501	12341.48397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8502	12341.48398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8503	12341.48399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8504	12341.48400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8505	12341.48401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8506	12341.48402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8507	12341.48403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8508	12341.48404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8509	12341.48405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8510	12341.48406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8511	12341.48407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8512	12341.48408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8513	12341.48409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8514	12341.48410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8515	12341.48411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8516	12341.48412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8517	12341.48413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8518	12341.48414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8519	12341.48415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8520	12341.48416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8521	12341.48417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8522	12341.48418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8523	12341.48419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8524	12341.48420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8525	12341.48421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8526	12341.48422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8527	12341.48423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8528	12341.48424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8529	12341.48425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8530	12341.48426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8531	12341.48427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8532	12341.48428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8533	12341.48429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8534	12341.48430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8535	12341.48431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8536	12341.48432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8537	12341.48433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8538	12341.48434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8539	12341.48435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8540	12341.48436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8541	12341.48437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8542	12341.48438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8543	12341.48439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8544	12341.48440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8545	12341.48441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8546	12341.48442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8547	12341.48443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8548	12341.48444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8549	12341.48445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8550	12341.48446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8551	12341.48447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8552	12341.48448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8553	12341.48449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8554	12341.48450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8555	12341.48451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8556	12341.48452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8557	12341.48453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8558	12341.48454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8559	12341.48455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8560	12341.48456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8561	12341.48457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8562	12341.48458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8563	12341.48459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8564	12341.48460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8565	12341.48461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8566	12341.48462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8567	12341.48463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8568	12341.48464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8569	12341.48465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8570	12341.48466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8571	12341.48467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8572	12341.48468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8573	12341.48469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8574	12341.48470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8575	12341.48471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8576	12341.48472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8577	12341.48473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8578	12341.48474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8579	12341.48475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8580	12341.48476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8581	12341.48477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8582	12341.48478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8583	12341.48479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8584	12341.48480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8585	12341.48481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8586	12341.48482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8587	12341.48483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8588	12341.48484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8589	12341.48485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8590	12341.48486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8591	12341.48487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8592	12341.48488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8593	12341.48489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8594	12341.48490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8595	12341.48491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8596	12341.48492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8597	12341.48493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8598	12341.48494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8599	12341.48495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8600	12341.48496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8601	12341.48497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8602	12341.48498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8603	12341.48499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8604	12341.48500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8605	12341.48501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8606	12341.48502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8607	12341.48503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8608	12341.48504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8609	12341.48505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8610	12341.48506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8611	12341.48507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8612	12341.48508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8613	12341.48509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8614	12341.48510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8615	12341.48511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8616	12341.48512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8617	12341.48513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8618	12341.48514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8619	12341.48515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8620	12341.48516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8621	12341.48517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8622	12341.48518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8623	12341.48519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8624	12341.48520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8625	12341.48521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8626	12341.48522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8627	12341.48523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8628	12341.48524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8629	12341.48525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8630	12341.48526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8631	12341.48527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8632	12341.48528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8633	12341.48529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8634	12341.48530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8635	12341.48531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8636	12341.48532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8637	12341.48533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8638	12341.48534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8639	12341.48535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8640	12341.48536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8641	12341.48537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8642	12341.48538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8643	12341.48539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8644	12341.48540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8645	12341.48541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8646	12341.48542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8647	12341.48543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8648	12341.48544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8649	12341.48545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8650	12341.48546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8651	12341.48547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8652	12341.48548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8653	12341.48549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8654	12341.48550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8655	12341.48551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8656	12341.48552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8657	12341.48553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8658	12341.48554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8659	12341.48555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8660	12341.48556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8661	12341.48557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8662	12341.48558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8663	12341.48559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8664	12341.48560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8665	12341.48561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8666	12341.48562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8667	12341.48563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8668	12341.48564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8669	12341.48565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8670	12341.48566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8671	12341.48567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8672	12341.48568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8673	12341.48569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8674	12341.48570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8675	12341.48571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8676	12341.48572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8677	12341.48573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8678	12341.48574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8679	12341.48575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8680	12341.48576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8681	12341.48577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8682	12341.48578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8683	12341.48579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8684	12341.48580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8685	12341.48581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8686	12341.48582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8687	12341.48583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8688	12341.48584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8689	12341.48585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8690	12341.48586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8691	12341.48587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8692	12341.48588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8693	12341.48589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8694	12341.48590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8695	12341.48591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8696	12341.48592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8697	12341.48593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8698	12341.48594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8699	12341.48595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8700	12341.48596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8701	12341.48597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8702	12341.48598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8703	12341.48599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8704	12341.48600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8705	12341.48601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8706	12341.48602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8707	12341.48603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8708	12341.48604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8709	12341.48605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8710	12341.48606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8711	12341.48607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8712	12341.48608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8713	12341.48609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8714	12341.48610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8715	12341.48611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8716	12341.48612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8717	12341.48613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8718	12341.48614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8719	12341.48615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8720	12341.48616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8721	12341.48617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8722	12341.48618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8723	12341.48619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8724	12341.48620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8725	12341.48621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8726	12341.48622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8727	12341.48623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8728	12341.48624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8729	12341.48625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8730	12341.48626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8731	12341.48627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8732	12341.48628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8733	12341.48629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8734	12341.48630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8735	12341.48631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8736	12341.48632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8737	12341.48633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8738	12341.48634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8739	12341.48635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8740	12341.48636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8741	12341.48637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8742	12341.48638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8743	12341.48639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8744	12341.48640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8745	12341.48641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8746	12341.48642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8747	12341.48643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8748	12341.48644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8749	12341.48645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8750	12341.48646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8751	12341.48647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8752	12341.48648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8753	12341.48649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8754	12341.48650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8755	12341.48651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8756	12341.48652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8757	12341.48653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8758	12341.48654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8759	12341.48655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8760	12341.48656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8761	12341.48657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8762	12341.48658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8763	12341.48659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8764	12341.48660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8765	12341.48661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8766	12341.48662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8767	12341.48663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8768	12341.48664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8769	12341.48665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8770	12341.48666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8771	12341.48667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8772	12341.48668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8773	12341.48669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8774	12341.48670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8775	12341.48671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8776	12341.48672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8777	12341.48673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8778	12341.48674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8779	12341.48675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8780	12341.48676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8781	12341.48677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8782	12341.48678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8783	12341.48679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8784	12341.48680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8785	12341.48681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8786	12341.48682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8787	12341.48683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8788	12341.48684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8789	12341.48685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8790	12341.48686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8791	12341.48687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8792	12341.48688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8793	12341.48689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8794	12341.48690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8795	12341.48691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8796	12341.48692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8797	12341.48693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8798	12341.48694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8799	12341.48695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8800	12341.48696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8801	12341.48697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8802	12341.48698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8803	12341.48699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8804	12341.48700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8805	12341.48701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8806	12341.48702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8807	12341.48703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8808	12341.48704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8809	12341.48705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8810	12341.48706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8811	12341.48707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8812	12341.48708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8813	12341.48709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8814	12341.48710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8815	12341.48711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8816	12341.48712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8817	12341.48713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8818	12341.48714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8819	12341.48715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8820	12341.48716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8821	12341.48717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8822	12341.48718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8823	12341.48719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8824	12341.48720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8825	12341.48721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8826	12341.48722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8827	12341.48723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8828	12341.48724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8829	12341.48725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8830	12341.48726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8831	12341.48727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8832	12341.48728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8833	12341.48729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8834	12341.48730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8835	12341.48731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8836	12341.48732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8837	12341.48733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8838	12341.48734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8839	12341.48735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8840	12341.48736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8841	12341.48737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8842	12341.48738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8843	12341.48739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8844	12341.48740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8845	12341.48741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8846	12341.48742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8847	12341.48743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8848	12341.48744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8849	12341.48745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8850	12341.48746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8851	12341.48747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8852	12341.48748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8853	12341.48749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8854	12341.48750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8855	12341.48751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8856	12341.48752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8857	12341.48753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8858	12341.48754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8859	12341.48755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8860	12341.48756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8861	12341.48757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8862	12341.48758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8863	12341.48759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8864	12341.48760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8865	12341.48761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8866	12341.48762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8867	12341.48763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8868	12341.48764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8869	12341.48765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8870	12341.48766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8871	12341.48767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8872	12341.48768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8873	12341.48769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8874	12341.48770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8875	12341.48771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8876	12341.48772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8877	12341.48773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8878	12341.48774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8879	12341.48775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8880	12341.48776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8881	12341.48777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8882	12341.48778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8883	12341.48779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8884	12341.48780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8885	12341.48781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8886	12341.48782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8887	12341.48783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8888	12341.48784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8889	12341.48785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8890	12341.48786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8891	12341.48787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8892	12341.48788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8893	12341.48789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8894	12341.48790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8895	12341.48791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8896	12341.48792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8897	12341.48793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8898	12341.48794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8899	12341.48795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8900	12341.48796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8901	12341.48797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8902	12341.48798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8903	12341.48799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8904	12341.48800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8905	12341.48801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8906	12341.48802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8907	12341.48803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8908	12341.48804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8909	12341.48805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8910	12341.48806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8911	12341.48807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8912	12341.48808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8913	12341.48809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8914	12341.48810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8915	12341.48811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8916	12341.48812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8917	12341.48813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8918	12341.48814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8919	12341.48815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8920	12341.48816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8921	12341.48817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8922	12341.48818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8923	12341.48819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8924	12341.48820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8925	12341.48821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8926	12341.48822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8927	12341.48823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8928	12341.48824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8929	12341.48825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8930	12341.48826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8931	12341.48827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8932	12341.48828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8933	12341.48829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8934	12341.48830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8935	12341.48831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8936	12341.48832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8937	12341.48833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8938	12341.48834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8939	12341.48835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8940	12341.48836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8941	12341.48837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8942	12341.48838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8943	12341.48839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8944	12341.48840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8945	12341.48841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8946	12341.48842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8947	12341.48843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8948	12341.48844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8949	12341.48845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8950	12341.48846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8951	12341.48847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8952	12341.48848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8953	12341.48849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8954	12341.48850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8955	12341.48851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8956	12341.48852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8957	12341.48853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8958	12341.48854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8959	12341.48855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8960	12341.48856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8961	12341.48857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8962	12341.48858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8963	12341.48859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8964	12341.48860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8965	12341.48861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8966	12341.48862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8967	12341.48863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8968	12341.48864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8969	12341.48865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8970	12341.48866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8971	12341.48867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8972	12341.48868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8973	12341.48869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8974	12341.48870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8975	12341.48871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8976	12341.48872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8977	12341.48873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8978	12341.48874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8979	12341.48875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8980	12341.48876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8981	12341.48877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8982	12341.48878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8983	12341.48879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8984	12341.48880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8985	12341.48881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8986	12341.48882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8987	12341.48883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8988	12341.48884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8989	12341.48885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8990	12341.48886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8991	12341.48887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8992	12341.48888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8993	12341.48889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8994	12341.48890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8995	12341.48891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8996	12341.48892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8997	12341.48893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8998	12341.48894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
8999	12341.48895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9000	12341.48896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9001	12341.48897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9002	12341.48898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9003	12341.48899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9004	12341.48900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9005	12341.48901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9006	12341.48902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9007	12341.48903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9008	12341.48904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9009	12341.48905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9010	12341.48906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9011	12341.48907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9012	12341.48908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9013	12341.48909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9014	12341.48910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9015	12341.48911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9016	12341.48912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9017	12341.48913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9018	12341.48914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9019	12341.48915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9020	12341.48916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9021	12341.48917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9022	12341.48918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9023	12341.48919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9024	12341.48920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9025	12341.48921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9026	12341.48922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9027	12341.48923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9028	12341.48924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9029	12341.48925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9030	12341.48926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9031	12341.48927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9032	12341.48928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9033	12341.48929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9034	12341.48930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9035	12341.48931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9036	12341.48932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9037	12341.48933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9038	12341.48934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9039	12341.48935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9040	12341.48936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9041	12341.48937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9042	12341.48938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9043	12341.48939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9044	12341.48940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9045	12341.48941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9046	12341.48942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9047	12341.48943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9048	12341.48944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9049	12341.48945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9050	12341.48946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9051	12341.48947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9052	12341.48948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9053	12341.48949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9054	12341.48950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9055	12341.48951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9056	12341.48952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9057	12341.48953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9058	12341.48954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9059	12341.48955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9060	12341.48956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9061	12341.48957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9062	12341.48958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9063	12341.48959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9064	12341.48960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9065	12341.48961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9066	12341.48962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9067	12341.48963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9068	12341.48964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9069	12341.48965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9070	12341.48966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9071	12341.48967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9072	12341.48968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9073	12341.48969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9074	12341.48970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9075	12341.48971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9076	12341.48972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9077	12341.48973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9078	12341.48974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9079	12341.48975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9080	12341.48976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9081	12341.48977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9082	12341.48978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9083	12341.48979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9084	12341.48980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9085	12341.48981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9086	12341.48982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9087	12341.48983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9088	12341.48984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9089	12341.48985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9090	12341.48986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9091	12341.48987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9092	12341.48988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9093	12341.48989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9094	12341.48990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9095	12341.48991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9096	12341.48992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9097	12341.48993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9098	12341.48994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9099	12341.48995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9100	12341.48996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9101	12341.48997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9102	12341.48998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9103	12341.48999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9104	12341.49000	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9105	12341.49001	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9106	12341.49002	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9107	12341.49003	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9108	12341.49004	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9109	12341.49005	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9110	12341.49006	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9111	12341.49007	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9112	12341.49008	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9113	12341.49009	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9114	12341.49010	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9115	12341.49011	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9116	12341.49012	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9117	12341.49013	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9118	12341.49014	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9119	12341.49015	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9120	12341.49016	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9121	12341.49017	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9122	12341.49018	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9123	12341.49019	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9124	12341.49020	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9125	12341.49021	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9126	12341.49022	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9127	12341.49023	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9128	12341.49024	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9129	12341.49025	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9130	12341.49026	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9131	12341.49027	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9132	12341.49028	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9133	12341.49029	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9134	12341.49030	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9135	12341.49031	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9136	12341.49032	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9137	12341.49033	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9138	12341.49034	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9139	12341.49035	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9140	12341.49036	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9141	12341.49037	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9142	12341.49038	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9143	12341.49039	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9144	12341.49040	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9145	12341.49041	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9146	12341.49042	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9147	12341.49043	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9148	12341.49044	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9149	12341.49045	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9150	12341.49046	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9151	12341.49047	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9152	12341.49048	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9153	12341.49049	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9154	12341.49050	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9155	12341.49051	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9156	12341.49052	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9157	12341.49053	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9158	12341.49054	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9159	12341.49055	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9160	12341.49056	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9161	12341.49057	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9162	12341.49058	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9163	12341.49059	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9164	12341.49060	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9165	12341.49061	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9166	12341.49062	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9167	12341.49063	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9168	12341.49064	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9169	12341.49065	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9170	12341.49066	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9171	12341.49067	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9172	12341.49068	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9173	12341.49069	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9174	12341.49070	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9175	12341.49071	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9176	12341.49072	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9177	12341.49073	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9178	12341.49074	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9179	12341.49075	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9180	12341.49076	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9181	12341.49077	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9182	12341.49078	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9183	12341.49079	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9184	12341.49080	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9185	12341.49081	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9186	12341.49082	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9187	12341.49083	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9188	12341.49084	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9189	12341.49085	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9190	12341.49086	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9191	12341.49087	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9192	12341.49088	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9193	12341.49089	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9194	12341.49090	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9195	12341.49091	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9196	12341.49092	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9197	12341.49093	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9198	12341.49094	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9199	12341.49095	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9200	12341.49096	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9201	12341.49097	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9202	12341.49098	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9203	12341.49099	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9204	12341.49100	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9205	12341.49101	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9206	12341.49102	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9207	12341.49103	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9208	12341.49104	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9209	12341.49105	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9210	12341.49106	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9211	12341.49107	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9212	12341.49108	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9213	12341.49109	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9214	12341.49110	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9215	12341.49111	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9216	12341.49112	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9217	12341.49113	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9218	12341.49114	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9219	12341.49115	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9220	12341.49116	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9221	12341.49117	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9222	12341.49118	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9223	12341.49119	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9224	12341.49120	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9225	12341.49121	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9226	12341.49122	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9227	12341.49123	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9228	12341.49124	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9229	12341.49125	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9230	12341.49126	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9231	12341.49127	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9232	12341.49128	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9233	12341.49129	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9234	12341.49130	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9235	12341.49131	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9236	12341.49132	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9237	12341.49133	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9238	12341.49134	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9239	12341.49135	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9240	12341.49136	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9241	12341.49137	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9242	12341.49138	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9243	12341.49139	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9244	12341.49140	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9245	12341.49141	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9246	12341.49142	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9247	12341.49143	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9248	12341.49144	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9249	12341.49145	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9250	12341.49146	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9251	12341.49147	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9252	12341.49148	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9253	12341.49149	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9254	12341.49150	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9255	12341.49151	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9256	12341.49152	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9257	12341.49153	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9258	12341.49154	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9259	12341.49155	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9260	12341.49156	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9261	12341.49157	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9262	12341.49158	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9263	12341.49159	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9264	12341.49160	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9265	12341.49161	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9266	12341.49162	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9267	12341.49163	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9268	12341.49164	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9269	12341.49165	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9270	12341.49166	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9271	12341.49167	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9272	12341.49168	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9273	12341.49169	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9274	12341.49170	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9275	12341.49171	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9276	12341.49172	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9277	12341.49173	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9278	12341.49174	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9279	12341.49175	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9280	12341.49176	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9281	12341.49177	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9282	12341.49178	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9283	12341.49179	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9284	12341.49180	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9285	12341.49181	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9286	12341.49182	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9287	12341.49183	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9288	12341.49184	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9289	12341.49185	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9290	12341.49186	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9291	12341.49187	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9292	12341.49188	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9293	12341.49189	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9294	12341.49190	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9295	12341.49191	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9296	12341.49192	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9297	12341.49193	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9298	12341.49194	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9299	12341.49195	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9300	12341.49196	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9301	12341.49197	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9302	12341.49198	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9303	12341.49199	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9304	12341.49200	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9305	12341.49201	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9306	12341.49202	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9307	12341.49203	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9308	12341.49204	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9309	12341.49205	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9310	12341.49206	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9311	12341.49207	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9312	12341.49208	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9313	12341.49209	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9314	12341.49210	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9315	12341.49211	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9316	12341.49212	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9317	12341.49213	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9318	12341.49214	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9319	12341.49215	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9320	12341.49216	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9321	12341.49217	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9322	12341.49218	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9323	12341.49219	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9324	12341.49220	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9325	12341.49221	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9326	12341.49222	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9327	12341.49223	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9328	12341.49224	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9329	12341.49225	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9330	12341.49226	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9331	12341.49227	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9332	12341.49228	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9333	12341.49229	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9334	12341.49230	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9335	12341.49231	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9336	12341.49232	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9337	12341.49233	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9338	12341.49234	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9339	12341.49235	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9340	12341.49236	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9341	12341.49237	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9342	12341.49238	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9343	12341.49239	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9344	12341.49240	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9345	12341.49241	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9346	12341.49242	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9347	12341.49243	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9348	12341.49244	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9349	12341.49245	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9350	12341.49246	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9351	12341.49247	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9352	12341.49248	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9353	12341.49249	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9354	12341.49250	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9355	12341.49251	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9356	12341.49252	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9357	12341.49253	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9358	12341.49254	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9359	12341.49255	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9360	12341.49256	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9361	12341.49257	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9362	12341.49258	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9363	12341.49259	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9364	12341.49260	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9365	12341.49261	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9366	12341.49262	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9367	12341.49263	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9368	12341.49264	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9369	12341.49265	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9370	12341.49266	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9371	12341.49267	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9372	12341.49268	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9373	12341.49269	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9374	12341.49270	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9375	12341.49271	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9376	12341.49272	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9377	12341.49273	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9378	12341.49274	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9379	12341.49275	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9380	12341.49276	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9381	12341.49277	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9382	12341.49278	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9383	12341.49279	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9384	12341.49280	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9385	12341.49281	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9386	12341.49282	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9387	12341.49283	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9388	12341.49284	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9389	12341.49285	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9390	12341.49286	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9391	12341.49287	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9392	12341.49288	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9393	12341.49289	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9394	12341.49290	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9395	12341.49291	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9396	12341.49292	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9397	12341.49293	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9398	12341.49294	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9399	12341.49295	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9400	12341.49296	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9401	12341.49297	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9402	12341.49298	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9403	12341.49299	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9404	12341.49300	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9405	12341.49301	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9406	12341.49302	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9407	12341.49303	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9408	12341.49304	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9409	12341.49305	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9410	12341.49306	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9411	12341.49307	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9412	12341.49308	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9413	12341.49309	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9414	12341.49310	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9415	12341.49311	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9416	12341.49312	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9417	12341.49313	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9418	12341.49314	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9419	12341.49315	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9420	12341.49316	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9421	12341.49317	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9422	12341.49318	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9423	12341.49319	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9424	12341.49320	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9425	12341.49321	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9426	12341.49322	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9427	12341.49323	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9428	12341.49324	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9429	12341.49325	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9430	12341.49326	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9431	12341.49327	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9432	12341.49328	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9433	12341.49329	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9434	12341.49330	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9435	12341.49331	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9436	12341.49332	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9437	12341.49333	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9438	12341.49334	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9439	12341.49335	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9440	12341.49336	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9441	12341.49337	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9442	12341.49338	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9443	12341.49339	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9444	12341.49340	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9445	12341.49341	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9446	12341.49342	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9447	12341.49343	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9448	12341.49344	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9449	12341.49345	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9450	12341.49346	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9451	12341.49347	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9452	12341.49348	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9453	12341.49349	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9454	12341.49350	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9455	12341.49351	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9456	12341.49352	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9457	12341.49353	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9458	12341.49354	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9459	12341.49355	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9460	12341.49356	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9461	12341.49357	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9462	12341.49358	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9463	12341.49359	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9464	12341.49360	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9465	12341.49361	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9466	12341.49362	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9467	12341.49363	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9468	12341.49364	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9469	12341.49365	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9470	12341.49366	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9471	12341.49367	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9472	12341.49368	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9473	12341.49369	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9474	12341.49370	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9475	12341.49371	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9476	12341.49372	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9477	12341.49373	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9478	12341.49374	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9479	12341.49375	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9480	12341.49376	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9481	12341.49377	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9482	12341.49378	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9483	12341.49379	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9484	12341.49380	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9485	12341.49381	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9486	12341.49382	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9487	12341.49383	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9488	12341.49384	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9489	12341.49385	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9490	12341.49386	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9491	12341.49387	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9492	12341.49388	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9493	12341.49389	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9494	12341.49390	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9495	12341.49391	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9496	12341.49392	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9497	12341.49393	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9498	12341.49394	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9499	12341.49395	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9500	12341.49396	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9501	12341.49397	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9502	12341.49398	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9503	12341.49399	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9504	12341.49400	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9505	12341.49401	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9506	12341.49402	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9507	12341.49403	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9508	12341.49404	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9509	12341.49405	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9510	12341.49406	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9511	12341.49407	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9512	12341.49408	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9513	12341.49409	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9514	12341.49410	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9515	12341.49411	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9516	12341.49412	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9517	12341.49413	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9518	12341.49414	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9519	12341.49415	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9520	12341.49416	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9521	12341.49417	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9522	12341.49418	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9523	12341.49419	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9524	12341.49420	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9525	12341.49421	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9526	12341.49422	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9527	12341.49423	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9528	12341.49424	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9529	12341.49425	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9530	12341.49426	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9531	12341.49427	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9532	12341.49428	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9533	12341.49429	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9534	12341.49430	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9535	12341.49431	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9536	12341.49432	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9537	12341.49433	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9538	12341.49434	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9539	12341.49435	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9540	12341.49436	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9541	12341.49437	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9542	12341.49438	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9543	12341.49439	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9544	12341.49440	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9545	12341.49441	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9546	12341.49442	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9547	12341.49443	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9548	12341.49444	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9549	12341.49445	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9550	12341.49446	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9551	12341.49447	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9552	12341.49448	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9553	12341.49449	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9554	12341.49450	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9555	12341.49451	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9556	12341.49452	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9557	12341.49453	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9558	12341.49454	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9559	12341.49455	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9560	12341.49456	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9561	12341.49457	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9562	12341.49458	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9563	12341.49459	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9564	12341.49460	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9565	12341.49461	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9566	12341.49462	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9567	12341.49463	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9568	12341.49464	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9569	12341.49465	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9570	12341.49466	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9571	12341.49467	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9572	12341.49468	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9573	12341.49469	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9574	12341.49470	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9575	12341.49471	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9576	12341.49472	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9577	12341.49473	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9578	12341.49474	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9579	12341.49475	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9580	12341.49476	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9581	12341.49477	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9582	12341.49478	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9583	12341.49479	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9584	12341.49480	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9585	12341.49481	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9586	12341.49482	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9587	12341.49483	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9588	12341.49484	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9589	12341.49485	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9590	12341.49486	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9591	12341.49487	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9592	12341.49488	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9593	12341.49489	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9594	12341.49490	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9595	12341.49491	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9596	12341.49492	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9597	12341.49493	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9598	12341.49494	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9599	12341.49495	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9600	12341.49496	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9601	12341.49497	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9602	12341.49498	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9603	12341.49499	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9604	12341.49500	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9605	12341.49501	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9606	12341.49502	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9607	12341.49503	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9608	12341.49504	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9609	12341.49505	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9610	12341.49506	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9611	12341.49507	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9612	12341.49508	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9613	12341.49509	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9614	12341.49510	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9615	12341.49511	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9616	12341.49512	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9617	12341.49513	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9618	12341.49514	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9619	12341.49515	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9620	12341.49516	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9621	12341.49517	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9622	12341.49518	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9623	12341.49519	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9624	12341.49520	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9625	12341.49521	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9626	12341.49522	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9627	12341.49523	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9628	12341.49524	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9629	12341.49525	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9630	12341.49526	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9631	12341.49527	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9632	12341.49528	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9633	12341.49529	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9634	12341.49530	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9635	12341.49531	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9636	12341.49532	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9637	12341.49533	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9638	12341.49534	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9639	12341.49535	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9640	12341.49536	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9641	12341.49537	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9642	12341.49538	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9643	12341.49539	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9644	12341.49540	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9645	12341.49541	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9646	12341.49542	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9647	12341.49543	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9648	12341.49544	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9649	12341.49545	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9650	12341.49546	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9651	12341.49547	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9652	12341.49548	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9653	12341.49549	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9654	12341.49550	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9655	12341.49551	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9656	12341.49552	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9657	12341.49553	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9658	12341.49554	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9659	12341.49555	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9660	12341.49556	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9661	12341.49557	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9662	12341.49558	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9663	12341.49559	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9664	12341.49560	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9665	12341.49561	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9666	12341.49562	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9667	12341.49563	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9668	12341.49564	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9669	12341.49565	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9670	12341.49566	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9671	12341.49567	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9672	12341.49568	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9673	12341.49569	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9674	12341.49570	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9675	12341.49571	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9676	12341.49572	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9677	12341.49573	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9678	12341.49574	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9679	12341.49575	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9680	12341.49576	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9681	12341.49577	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9682	12341.49578	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9683	12341.49579	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9684	12341.49580	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9685	12341.49581	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9686	12341.49582	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9687	12341.49583	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9688	12341.49584	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9689	12341.49585	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9690	12341.49586	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9691	12341.49587	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9692	12341.49588	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9693	12341.49589	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9694	12341.49590	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9695	12341.49591	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9696	12341.49592	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9697	12341.49593	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9698	12341.49594	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9699	12341.49595	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9700	12341.49596	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9701	12341.49597	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9702	12341.49598	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9703	12341.49599	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9704	12341.49600	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9705	12341.49601	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9706	12341.49602	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9707	12341.49603	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9708	12341.49604	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9709	12341.49605	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9710	12341.49606	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9711	12341.49607	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9712	12341.49608	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9713	12341.49609	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9714	12341.49610	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9715	12341.49611	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9716	12341.49612	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9717	12341.49613	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9718	12341.49614	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9719	12341.49615	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9720	12341.49616	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9721	12341.49617	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9722	12341.49618	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9723	12341.49619	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9724	12341.49620	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9725	12341.49621	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9726	12341.49622	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9727	12341.49623	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9728	12341.49624	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9729	12341.49625	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9730	12341.49626	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9731	12341.49627	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9732	12341.49628	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9733	12341.49629	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9734	12341.49630	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9735	12341.49631	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9736	12341.49632	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9737	12341.49633	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9738	12341.49634	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9739	12341.49635	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9740	12341.49636	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9741	12341.49637	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9742	12341.49638	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9743	12341.49639	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9744	12341.49640	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9745	12341.49641	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9746	12341.49642	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9747	12341.49643	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9748	12341.49644	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9749	12341.49645	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9750	12341.49646	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9751	12341.49647	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9752	12341.49648	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9753	12341.49649	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9754	12341.49650	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9755	12341.49651	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9756	12341.49652	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9757	12341.49653	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9758	12341.49654	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9759	12341.49655	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9760	12341.49656	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9761	12341.49657	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9762	12341.49658	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9763	12341.49659	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9764	12341.49660	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9765	12341.49661	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9766	12341.49662	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9767	12341.49663	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9768	12341.49664	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9769	12341.49665	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9770	12341.49666	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9771	12341.49667	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9772	12341.49668	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9773	12341.49669	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9774	12341.49670	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9775	12341.49671	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9776	12341.49672	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9777	12341.49673	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9778	12341.49674	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9779	12341.49675	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9780	12341.49676	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9781	12341.49677	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9782	12341.49678	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9783	12341.49679	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9784	12341.49680	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9785	12341.49681	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9786	12341.49682	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9787	12341.49683	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9788	12341.49684	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9789	12341.49685	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9790	12341.49686	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9791	12341.49687	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9792	12341.49688	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9793	12341.49689	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9794	12341.49690	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9795	12341.49691	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9796	12341.49692	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9797	12341.49693	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9798	12341.49694	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9799	12341.49695	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9800	12341.49696	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9801	12341.49697	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9802	12341.49698	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9803	12341.49699	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9804	12341.49700	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9805	12341.49701	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9806	12341.49702	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9807	12341.49703	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9808	12341.49704	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9809	12341.49705	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9810	12341.49706	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9811	12341.49707	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9812	12341.49708	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9813	12341.49709	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9814	12341.49710	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9815	12341.49711	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9816	12341.49712	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9817	12341.49713	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9818	12341.49714	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9819	12341.49715	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9820	12341.49716	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9821	12341.49717	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9822	12341.49718	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9823	12341.49719	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9824	12341.49720	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9825	12341.49721	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9826	12341.49722	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9827	12341.49723	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9828	12341.49724	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9829	12341.49725	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9830	12341.49726	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9831	12341.49727	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9832	12341.49728	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9833	12341.49729	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9834	12341.49730	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9835	12341.49731	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9836	12341.49732	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9837	12341.49733	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9838	12341.49734	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9839	12341.49735	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9840	12341.49736	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9841	12341.49737	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9842	12341.49738	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9843	12341.49739	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9844	12341.49740	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9845	12341.49741	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9846	12341.49742	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9847	12341.49743	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9848	12341.49744	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9849	12341.49745	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9850	12341.49746	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9851	12341.49747	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9852	12341.49748	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9853	12341.49749	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9854	12341.49750	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9855	12341.49751	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9856	12341.49752	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9857	12341.49753	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9858	12341.49754	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9859	12341.49755	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9860	12341.49756	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9861	12341.49757	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9862	12341.49758	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9863	12341.49759	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9864	12341.49760	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9865	12341.49761	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9866	12341.49762	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9867	12341.49763	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9868	12341.49764	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9869	12341.49765	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9870	12341.49766	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9871	12341.49767	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9872	12341.49768	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9873	12341.49769	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9874	12341.49770	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9875	12341.49771	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9876	12341.49772	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9877	12341.49773	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9878	12341.49774	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9879	12341.49775	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9880	12341.49776	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9881	12341.49777	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9882	12341.49778	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9883	12341.49779	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9884	12341.49780	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9885	12341.49781	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9886	12341.49782	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9887	12341.49783	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9888	12341.49784	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9889	12341.49785	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9890	12341.49786	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9891	12341.49787	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9892	12341.49788	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9893	12341.49789	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9894	12341.49790	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9895	12341.49791	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9896	12341.49792	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9897	12341.49793	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9898	12341.49794	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9899	12341.49795	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9900	12341.49796	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9901	12341.49797	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9902	12341.49798	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9903	12341.49799	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9904	12341.49800	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9905	12341.49801	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9906	12341.49802	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9907	12341.49803	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9908	12341.49804	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9909	12341.49805	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9910	12341.49806	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9911	12341.49807	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9912	12341.49808	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9913	12341.49809	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9914	12341.49810	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9915	12341.49811	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9916	12341.49812	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9917	12341.49813	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9918	12341.49814	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9919	12341.49815	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9920	12341.49816	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9921	12341.49817	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9922	12341.49818	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9923	12341.49819	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9924	12341.49820	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9925	12341.49821	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9926	12341.49822	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9927	12341.49823	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9928	12341.49824	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9929	12341.49825	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9930	12341.49826	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9931	12341.49827	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9932	12341.49828	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9933	12341.49829	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9934	12341.49830	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9935	12341.49831	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9936	12341.49832	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9937	12341.49833	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9938	12341.49834	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9939	12341.49835	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9940	12341.49836	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9941	12341.49837	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9942	12341.49838	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9943	12341.49839	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9944	12341.49840	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9945	12341.49841	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9946	12341.49842	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9947	12341.49843	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9948	12341.49844	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9949	12341.49845	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9950	12341.49846	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9951	12341.49847	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9952	12341.49848	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9953	12341.49849	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9954	12341.49850	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9955	12341.49851	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9956	12341.49852	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9957	12341.49853	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9958	12341.49854	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9959	12341.49855	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9960	12341.49856	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9961	12341.49857	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9962	12341.49858	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9963	12341.49859	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9964	12341.49860	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9965	12341.49861	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9966	12341.49862	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9967	12341.49863	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9968	12341.49864	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9969	12341.49865	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9970	12341.49866	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9971	12341.49867	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9972	12341.49868	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9973	12341.49869	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9974	12341.49870	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9975	12341.49871	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9976	12341.49872	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9977	12341.49873	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9978	12341.49874	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9979	12341.49875	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9980	12341.49876	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9981	12341.49877	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9982	12341.49878	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9983	12341.49879	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9984	12341.49880	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9985	12341.49881	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9986	12341.49882	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9987	12341.49883	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9988	12341.49884	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9989	12341.49885	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9990	12341.49886	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9991	12341.49887	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9992	12341.49888	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9993	12341.49889	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9994	12341.49890	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9995	12341.49891	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9996	12341.49892	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9997	12341.49893	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9998	12341.49894	1	4	\N	\N	\N	\N	\N	\N	\N	\N
9999	12341.49895	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10000	12341.49896	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10001	12341.49897	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10002	12341.49898	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10003	12341.49899	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10004	12341.49900	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10005	12341.49901	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10006	12341.49902	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10007	12341.49903	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10008	12341.49904	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10009	12341.49905	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10010	12341.49906	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10011	12341.49907	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10012	12341.49908	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10013	12341.49909	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10014	12341.49910	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10015	12341.49911	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10016	12341.49912	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10017	12341.49913	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10018	12341.49914	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10019	12341.49915	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10020	12341.49916	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10021	12341.49917	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10022	12341.49918	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10023	12341.49919	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10024	12341.49920	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10025	12341.49921	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10026	12341.49922	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10027	12341.49923	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10028	12341.49924	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10029	12341.49925	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10030	12341.49926	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10031	12341.49927	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10032	12341.49928	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10033	12341.49929	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10034	12341.49930	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10035	12341.49931	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10036	12341.49932	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10037	12341.49933	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10038	12341.49934	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10039	12341.49935	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10040	12341.49936	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10041	12341.49937	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10042	12341.49938	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10043	12341.49939	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10044	12341.49940	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10045	12341.49941	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10046	12341.49942	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10047	12341.49943	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10048	12341.49944	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10049	12341.49945	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10050	12341.49946	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10051	12341.49947	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10052	12341.49948	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10053	12341.49949	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10054	12341.49950	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10055	12341.49951	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10056	12341.49952	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10057	12341.49953	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10058	12341.49954	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10059	12341.49955	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10060	12341.49956	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10061	12341.49957	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10062	12341.49958	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10063	12341.49959	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10064	12341.49960	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10065	12341.49961	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10066	12341.49962	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10067	12341.49963	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10068	12341.49964	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10069	12341.49965	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10070	12341.49966	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10071	12341.49967	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10072	12341.49968	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10073	12341.49969	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10074	12341.49970	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10075	12341.49971	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10076	12341.49972	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10077	12341.49973	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10078	12341.49974	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10079	12341.49975	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10080	12341.49976	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10081	12341.49977	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10082	12341.49978	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10083	12341.49979	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10084	12341.49980	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10085	12341.49981	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10086	12341.49982	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10087	12341.49983	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10088	12341.49984	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10089	12341.49985	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10090	12341.49986	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10091	12341.49987	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10092	12341.49988	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10093	12341.49989	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10094	12341.49990	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10095	12341.49991	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10096	12341.49992	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10097	12341.49993	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10098	12341.49994	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10099	12341.49995	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10100	12341.49996	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10101	12341.49997	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10102	12341.49998	1	4	\N	\N	\N	\N	\N	\N	\N	\N
10103	12341.49999	1	4	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 2367 (class 0 OID 4107302)
-- Dependencies: 177
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
3	2013-08-23 17:50:09.523975-03	1	3	2	tiago	1	
4	2013-08-23 17:50:51.345726-03	1	2	1	usuario	1	
5	2013-08-23 17:51:08.333118-03	1	3	2	tiago	2	Modificado password e groups.
6	2013-08-23 17:51:45.065249-03	1	3	2	tiago	2	Modificado password e is_staff.
7	2013-08-23 17:52:32.673406-03	2	2	1	usuario	2	Nenhum campo modificado.
29	2013-09-03 10:35:10.549307-03	1	16	1	123	1	
30	2013-09-03 10:35:13.461615-03	1	16	1	123	2	Nenhum campo modificado.
31	2013-09-03 10:39:09.222505-03	1	16	1	123	2	Nenhum campo modificado.
32	2013-09-03 10:40:12.589719-03	1	16	1	234	1	
33	2013-09-03 10:40:26.722947-03	1	16	1	234	2	Nenhum campo modificado.
36	2013-09-03 14:40:58.767104-03	1	16	2	32432	1	
37	2013-09-03 14:43:30.905659-03	1	3	3	usuario1	1	
38	2013-09-03 19:53:12.913967-03	1	16	3	123123123	1	
39	2013-09-03 20:11:34.011202-03	1	16	3	123123123	2	Modificado valor_total.
40	2013-09-03 20:29:54.090226-03	1	16	1	234	2	Nenhum campo modificado.
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
56	2013-09-05 20:24:37.712373-03	1	16	2	12	1	
57	2013-09-11 19:57:22.112026-03	1	16	10	312312312	1	
58	2013-09-11 19:58:21.978569-03	1	16	10	312312312	2	Nenhum campo modificado.
59	2013-09-11 19:58:34.694977-03	1	16	10	312312312	2	Nenhum campo modificado.
60	2013-09-11 19:59:05.197788-03	1	16	10	312312312	2	Nenhum campo modificado.
61	2013-09-11 20:01:13.947356-03	1	16	11	0000	1	
62	2013-09-11 20:02:38.812797-03	1	16	11	0000	2	Nenhum campo modificado.
63	2013-09-11 20:03:00.825772-03	1	16	12	0120	1	
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
105	2013-10-25 20:04:05.669364-03	1	20	1	Tipo Material 01	1	
106	2013-10-25 20:04:28.726801-03	1	21	1	Material 01	1	
107	2013-10-25 20:06:30.985798-03	1	21	2	Material 02	1	
108	2013-10-25 20:09:24.206583-03	1	21	2	Material 02	2	Nenhum campo modificado.
109	2013-10-25 20:09:34.616356-03	1	21	2	Material 02	2	Nenhum campo modificado.
110	2013-10-25 20:10:09.193535-03	1	21	3	Material 03	1	
111	2013-10-25 20:10:26.57578-03	1	21	3	Material 03	2	Nenhum campo modificado.
112	2013-10-25 20:10:34.12623-03	1	21	3	Material 03	2	Nenhum campo modificado.
113	2013-10-25 20:11:13.51807-03	1	21	2	Material 02	2	Nenhum campo modificado.
114	2013-10-25 20:14:57.312259-03	1	21	2	Material 02	2	Nenhum campo modificado.
115	2013-10-25 20:15:17.34505-03	1	21	3	Material 03	2	Nenhum campo modificado.
116	2013-10-25 20:15:35.781833-03	1	21	4	Material 04	1	
117	2013-10-25 20:16:15.090304-03	1	21	4	Material 04	2	Nenhum campo modificado.
118	2013-10-25 20:16:32.685521-03	1	21	1	Material 01	2	Nenhum campo modificado.
119	2013-10-25 20:16:49.7313-03	1	21	5	material 05	1	
120	2013-10-25 20:17:05.540214-03	1	20	2	Tipo Material 02	1	
121	2013-10-25 20:17:10.268149-03	1	21	5	material 05	2	Modificado tipo_material.
122	2013-10-25 20:17:23.486134-03	1	21	5	Material 05	2	Modificado descricao.
123	2013-10-25 20:20:25.06349-03	1	16	1	1234	1	
124	2013-10-25 20:31:26.32499-03	1	19	20	12341.1T	3	
125	2013-10-25 20:31:26.328056-03	1	19	19	12341.1T	3	
126	2013-10-25 20:31:26.329671-03	1	19	18	12341.1T	3	
127	2013-10-25 20:31:26.331121-03	1	19	17	12341.1T	3	
128	2013-10-25 20:31:26.332952-03	1	19	16	12341.1T	3	
129	2013-10-25 20:31:26.334569-03	1	19	15	12341.1T	3	
130	2013-10-25 20:31:26.336023-03	1	19	14	12341.1T	3	
131	2013-10-25 20:31:26.337982-03	1	19	13	12341.1T	3	
132	2013-10-25 20:31:26.339479-03	1	19	12	12341.1T	3	
133	2013-10-25 20:31:26.340962-03	1	19	11	12341.1T	3	
134	2013-10-25 20:31:26.342481-03	1	19	10	12341.1T	3	
135	2013-10-25 20:31:26.344444-03	1	19	9	12341.1T	3	
136	2013-10-25 20:31:26.34608-03	1	19	8	12341.1T	3	
137	2013-10-25 20:31:26.348485-03	1	19	7	12341.1T	3	
138	2013-10-25 20:31:26.350166-03	1	19	6	12341.1T	3	
139	2013-10-25 20:31:26.351696-03	1	19	5	12341.1T	3	
140	2013-10-25 20:31:26.353132-03	1	19	4	12341.1T	3	
141	2013-10-25 20:31:26.35454-03	1	19	3	12341.1T	3	
142	2013-10-25 20:31:26.355881-03	1	19	2	12341.1T	3	
143	2013-10-25 20:31:26.357935-03	1	19	1	12341.1T	3	
144	2013-10-25 20:32:37.756187-03	1	19	30	12341.1J	3	
145	2013-10-25 20:32:37.759291-03	1	19	29	12341.1J	3	
146	2013-10-25 20:32:37.760992-03	1	19	28	12341.1J	3	
147	2013-10-25 20:32:37.764753-03	1	19	27	12341.1J	3	
148	2013-10-25 20:32:37.766449-03	1	19	26	12341.1J	3	
149	2013-10-25 20:32:37.767968-03	1	19	25	12341.1J	3	
150	2013-10-25 20:32:37.769534-03	1	19	24	12341.1J	3	
151	2013-10-25 20:32:37.77105-03	1	19	23	12341.1J	3	
152	2013-10-25 20:32:37.772473-03	1	19	22	12341.1J	3	
153	2013-10-25 20:32:37.773878-03	1	19	21	12341.1J	3	
154	2013-10-26 02:16:53.410044-03	1	24	1	01	1	
157	2013-10-26 02:21:18.1295-03	1	25	4	Produto 01	1	
158	2013-10-26 02:21:39.719378-03	1	25	5	Produto 02	1	
159	2013-10-26 02:22:03.657125-03	1	22	1	Setor 01	1	
160	2013-10-26 02:22:08.0681-03	1	23	1	Operador 01	1	
161	2013-10-26 02:22:58.668442-03	1	25	6	Produto 03	1	
162	2013-10-26 02:23:04.943311-03	1	19	103	12341.312	2	Modificado produto e operador. Adicionado Etiqueta "EtiquetaRemessa object"
163	2013-10-26 11:51:15.612203-03	1	16	1	1234	2	Modificado valor_total. Adicionado Material "Material 04"
164	2013-10-26 13:48:47.92968-03	1	19	10103	12341.49999	2	Adicionado Etiqueta "12341.49999B"
\.


--
-- TOC entry 2365 (class 0 OID 4107279)
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
16	Nota Fiscal	automacao	notafiscal
17	material nota fiscal	automacao	materialnotafiscal
18	migration history	south	migrationhistory
19	Ordem de Fabricação	automacao	ordemfabricacao
20	Tipo de Material	geral	tipomaterial
21	Material	geral	material
22	Setor	geral	setor
23	Operador	geral	operador
24	Grupo de Produto	geral	grupoproduto
25	Produto	geral	produto
26	Etiqueta	automacao	etiquetaremessa
27	etiqueta retorno	automacao	etiquetaretorno
28	etiqueta retorno raio	automacao	etiquetaretornoraio
29	etiqueta retorno niple	automacao	etiquetaretornoniple
\.


--
-- TOC entry 2366 (class 0 OID 4107292)
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
ls1kz48rame77u56xqce8elz45ev5m8i	NjNiNWY1ODExMjRjMjZhMGFhZDVmZDlkNzU4MzY0ZjM1NmI3OTE0YzqAAn1xAShVEl9hdXRoX3VzZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHEDVQ1fYXV0aF91c2VyX2lkcQRLAXUu	2013-11-08 01:11:25.695617-03
\.


--
-- TOC entry 2373 (class 0 OID 4110759)
-- Dependencies: 189
-- Data for Name: geral_grupoproduto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_grupoproduto (id, codigo, descricao) FROM stdin;
1	01	Grupo Produto 01
\.


--
-- TOC entry 2370 (class 0 OID 4110735)
-- Dependencies: 183
-- Data for Name: geral_material; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_material (id, tipo_material_id, codigo, descricao) FROM stdin;
2	1	1.2	Material 02
3	1	1.3	Material 03
4	1	1.4	Material 04
1	1	1.1	Material 01
5	2	2.5	Material 05
\.


--
-- TOC entry 2372 (class 0 OID 4110751)
-- Dependencies: 187
-- Data for Name: geral_operador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_operador (id, setor_id, nome) FROM stdin;
1	1	Operador 01
\.


--
-- TOC entry 2374 (class 0 OID 4110769)
-- Dependencies: 191
-- Data for Name: geral_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_produto (id, grupo_produto_id, codigo, descricao) FROM stdin;
4	1	1.1	Produto 01
5	1	1.2	Produto 02
6	1	1.3	Produto 03
\.


--
-- TOC entry 2371 (class 0 OID 4110743)
-- Dependencies: 185
-- Data for Name: geral_setor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_setor (id, descricao) FROM stdin;
1	Setor 01
\.


--
-- TOC entry 2369 (class 0 OID 4110727)
-- Dependencies: 181
-- Data for Name: geral_tipomaterial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_tipomaterial (id, descricao) FROM stdin;
1	Tipo Material 01
2	Tipo Material 02
\.


--
-- TOC entry 2368 (class 0 OID 4107872)
-- Dependencies: 179
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
36	geral	0001_initial	2013-10-25 20:00:02.279147-03
37	automacao	0001_initial	2013-10-25 20:00:25.543613-03
38	automacao	0002_auto__del_field_ordemfabricacao_tipo_material	2013-10-26 02:04:42.32925-03
39	automacao	0003_initial	2013-10-26 13:45:37.373193-03
\.


--
-- TOC entry 2254 (class 2606 OID 4107221)
-- Dependencies: 166 166
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- TOC entry 2249 (class 2606 OID 4107206)
-- Dependencies: 164 164 164
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- TOC entry 2252 (class 2606 OID 4107204)
-- Dependencies: 164 164
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2257 (class 2606 OID 4107219)
-- Dependencies: 166 166
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- TOC entry 2244 (class 2606 OID 4107196)
-- Dependencies: 162 162 162
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- TOC entry 2246 (class 2606 OID 4107194)
-- Dependencies: 162 162
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- TOC entry 2260 (class 2606 OID 4107234)
-- Dependencies: 168 168
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- TOC entry 2263 (class 2606 OID 4107236)
-- Dependencies: 168 168 168
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- TOC entry 2271 (class 2606 OID 4107264)
-- Dependencies: 172 172
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- TOC entry 2266 (class 2606 OID 4107249)
-- Dependencies: 170 170
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2269 (class 2606 OID 4107251)
-- Dependencies: 170 170 170
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- TOC entry 2273 (class 2606 OID 4107266)
-- Dependencies: 172 172
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- TOC entry 2327 (class 2606 OID 4110840)
-- Dependencies: 199 199
-- Name: automacao_etiquetaremessa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaremessa
    ADD CONSTRAINT automacao_etiquetaremessa_pkey PRIMARY KEY (id);


--
-- TOC entry 2331 (class 2606 OID 4110848)
-- Dependencies: 201 201
-- Name: automacao_etiquetaretorno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaretorno
    ADD CONSTRAINT automacao_etiquetaretorno_pkey PRIMARY KEY (id);


--
-- TOC entry 2335 (class 2606 OID 4110858)
-- Dependencies: 203 203
-- Name: automacao_etiquetaretornoniple_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaretornoniple
    ADD CONSTRAINT automacao_etiquetaretornoniple_pkey PRIMARY KEY (etiquetaretorno_ptr_id);


--
-- TOC entry 2333 (class 2606 OID 4110853)
-- Dependencies: 202 202
-- Name: automacao_etiquetaretornoraio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaretornoraio
    ADD CONSTRAINT automacao_etiquetaretornoraio_pkey PRIMARY KEY (etiquetaretorno_ptr_id);


--
-- TOC entry 2318 (class 2606 OID 4110824)
-- Dependencies: 195 195
-- Name: automacao_materialnotafiscal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT automacao_materialnotafiscal_pkey PRIMARY KEY (id);


--
-- TOC entry 2311 (class 2606 OID 4110815)
-- Dependencies: 193 193
-- Name: automacao_notafiscal_numero_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_notafiscal
    ADD CONSTRAINT automacao_notafiscal_numero_key UNIQUE (numero);


--
-- TOC entry 2314 (class 2606 OID 4110813)
-- Dependencies: 193 193
-- Name: automacao_notafiscal_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_notafiscal
    ADD CONSTRAINT automacao_notafiscal_pkey PRIMARY KEY (id);


--
-- TOC entry 2323 (class 2606 OID 4110832)
-- Dependencies: 197 197
-- Name: automacao_ordemfabricacao_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT automacao_ordemfabricacao_pkey PRIMARY KEY (id);


--
-- TOC entry 2285 (class 2606 OID 4107311)
-- Dependencies: 177 177
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- TOC entry 2276 (class 2606 OID 4107286)
-- Dependencies: 174 174 174
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- TOC entry 2278 (class 2606 OID 4107284)
-- Dependencies: 174 174
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- TOC entry 2281 (class 2606 OID 4107299)
-- Dependencies: 175 175
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- TOC entry 2300 (class 2606 OID 4110766)
-- Dependencies: 189 189
-- Name: geral_grupoproduto_codigo_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_grupoproduto
    ADD CONSTRAINT geral_grupoproduto_codigo_key UNIQUE (codigo);


--
-- TOC entry 2303 (class 2606 OID 4110764)
-- Dependencies: 189 189
-- Name: geral_grupoproduto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_grupoproduto
    ADD CONSTRAINT geral_grupoproduto_pkey PRIMARY KEY (id);


--
-- TOC entry 2292 (class 2606 OID 4110740)
-- Dependencies: 183 183
-- Name: geral_material_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_material
    ADD CONSTRAINT geral_material_pkey PRIMARY KEY (id);


--
-- TOC entry 2297 (class 2606 OID 4110756)
-- Dependencies: 187 187
-- Name: geral_operador_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_operador
    ADD CONSTRAINT geral_operador_pkey PRIMARY KEY (id);


--
-- TOC entry 2305 (class 2606 OID 4110779)
-- Dependencies: 191 191
-- Name: geral_produto_descricao_key; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_produto
    ADD CONSTRAINT geral_produto_descricao_key UNIQUE (descricao);


--
-- TOC entry 2309 (class 2606 OID 4110777)
-- Dependencies: 191 191
-- Name: geral_produto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_produto
    ADD CONSTRAINT geral_produto_pkey PRIMARY KEY (id);


--
-- TOC entry 2295 (class 2606 OID 4110748)
-- Dependencies: 185 185
-- Name: geral_setor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_setor
    ADD CONSTRAINT geral_setor_pkey PRIMARY KEY (id);


--
-- TOC entry 2290 (class 2606 OID 4110732)
-- Dependencies: 181 181
-- Name: geral_tipomaterial_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY geral_tipomaterial
    ADD CONSTRAINT geral_tipomaterial_pkey PRIMARY KEY (id);


--
-- TOC entry 2288 (class 2606 OID 4107877)
-- Dependencies: 179 179
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- TOC entry 2255 (class 1259 OID 4107427)
-- Dependencies: 166
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- TOC entry 2247 (class 1259 OID 4107425)
-- Dependencies: 164
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- TOC entry 2250 (class 1259 OID 4107426)
-- Dependencies: 164
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- TOC entry 2242 (class 1259 OID 4107424)
-- Dependencies: 162
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- TOC entry 2258 (class 1259 OID 4107429)
-- Dependencies: 168
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- TOC entry 2261 (class 1259 OID 4107428)
-- Dependencies: 168
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- TOC entry 2264 (class 1259 OID 4107431)
-- Dependencies: 170
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- TOC entry 2267 (class 1259 OID 4107430)
-- Dependencies: 170
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- TOC entry 2274 (class 1259 OID 4107432)
-- Dependencies: 172
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- TOC entry 2325 (class 1259 OID 4110907)
-- Dependencies: 199
-- Name: automacao_etiquetaremessa_ordem_fabricacao_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_etiquetaremessa_ordem_fabricacao_id ON automacao_etiquetaremessa USING btree (ordem_fabricacao_id);


--
-- TOC entry 2328 (class 1259 OID 4110913)
-- Dependencies: 199
-- Name: automacao_etiquetaremessa_produto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_etiquetaremessa_produto_id ON automacao_etiquetaremessa USING btree (produto_id);


--
-- TOC entry 2329 (class 1259 OID 4110919)
-- Dependencies: 201
-- Name: automacao_etiquetaretorno_etiqueta_remessa_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_etiquetaretorno_etiqueta_remessa_id ON automacao_etiquetaretorno USING btree (etiqueta_remessa_id);


--
-- TOC entry 2315 (class 1259 OID 4110871)
-- Dependencies: 195
-- Name: automacao_materialnotafiscal_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_materialnotafiscal_material_id ON automacao_materialnotafiscal USING btree (material_id);


--
-- TOC entry 2316 (class 1259 OID 4110865)
-- Dependencies: 195
-- Name: automacao_materialnotafiscal_nota_fiscal_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_materialnotafiscal_nota_fiscal_id ON automacao_materialnotafiscal USING btree (nota_fiscal_id);


--
-- TOC entry 2312 (class 1259 OID 4110859)
-- Dependencies: 193
-- Name: automacao_notafiscal_numero_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_notafiscal_numero_like ON automacao_notafiscal USING btree (numero varchar_pattern_ops);


--
-- TOC entry 2319 (class 1259 OID 4110883)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_material_id ON automacao_ordemfabricacao USING btree (material_id);


--
-- TOC entry 2320 (class 1259 OID 4110877)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_nota_fiscal_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_nota_fiscal_id ON automacao_ordemfabricacao USING btree (nota_fiscal_id);


--
-- TOC entry 2321 (class 1259 OID 4110901)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_operador_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_operador_id ON automacao_ordemfabricacao USING btree (operador_id);


--
-- TOC entry 2324 (class 1259 OID 4110895)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_produto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_produto_id ON automacao_ordemfabricacao USING btree (produto_id);


--
-- TOC entry 2283 (class 1259 OID 4107436)
-- Dependencies: 177
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- TOC entry 2286 (class 1259 OID 4107435)
-- Dependencies: 177
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- TOC entry 2279 (class 1259 OID 4107434)
-- Dependencies: 175
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- TOC entry 2282 (class 1259 OID 4107433)
-- Dependencies: 175
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- TOC entry 2301 (class 1259 OID 4110792)
-- Dependencies: 189
-- Name: geral_grupoproduto_codigo_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geral_grupoproduto_codigo_like ON geral_grupoproduto USING btree (codigo varchar_pattern_ops);


--
-- TOC entry 2293 (class 1259 OID 4110785)
-- Dependencies: 183
-- Name: geral_material_tipo_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geral_material_tipo_material_id ON geral_material USING btree (tipo_material_id);


--
-- TOC entry 2298 (class 1259 OID 4110791)
-- Dependencies: 187
-- Name: geral_operador_setor_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geral_operador_setor_id ON geral_operador USING btree (setor_id);


--
-- TOC entry 2306 (class 1259 OID 4110799)
-- Dependencies: 191
-- Name: geral_produto_descricao_like; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geral_produto_descricao_like ON geral_produto USING btree (descricao text_pattern_ops);


--
-- TOC entry 2307 (class 1259 OID 4110798)
-- Dependencies: 191
-- Name: geral_produto_grupo_produto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX geral_produto_grupo_produto_id ON geral_produto USING btree (grupo_produto_id);


--
-- TOC entry 2337 (class 2606 OID 4107207)
-- Dependencies: 164 162 2245
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2339 (class 2606 OID 4107237)
-- Dependencies: 168 166 2256
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2341 (class 2606 OID 4107252)
-- Dependencies: 162 170 2245
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2336 (class 2606 OID 4107287)
-- Dependencies: 174 2277 162
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2344 (class 2606 OID 4107317)
-- Dependencies: 2277 177 174
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2343 (class 2606 OID 4107312)
-- Dependencies: 172 2270 177
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2356 (class 2606 OID 4110914)
-- Dependencies: 201 2326 199
-- Name: etiqueta_remessa_id_refs_id_e2e9a54b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaretorno
    ADD CONSTRAINT etiqueta_remessa_id_refs_id_e2e9a54b FOREIGN KEY (etiqueta_remessa_id) REFERENCES automacao_etiquetaremessa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2357 (class 2606 OID 4110920)
-- Dependencies: 201 2330 202
-- Name: etiquetaretorno_ptr_id_refs_id_16118ac4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaretornoraio
    ADD CONSTRAINT etiquetaretorno_ptr_id_refs_id_16118ac4 FOREIGN KEY (etiquetaretorno_ptr_id) REFERENCES automacao_etiquetaretorno(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2358 (class 2606 OID 4110925)
-- Dependencies: 203 201 2330
-- Name: etiquetaretorno_ptr_id_refs_id_ac083d2a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaretornoniple
    ADD CONSTRAINT etiquetaretorno_ptr_id_refs_id_ac083d2a FOREIGN KEY (etiquetaretorno_ptr_id) REFERENCES automacao_etiquetaretorno(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2338 (class 2606 OID 4107222)
-- Dependencies: 2256 164 166
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2347 (class 2606 OID 4110793)
-- Dependencies: 191 2302 189
-- Name: grupo_produto_id_refs_id_cfe8ecd6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geral_produto
    ADD CONSTRAINT grupo_produto_id_refs_id_cfe8ecd6 FOREIGN KEY (grupo_produto_id) REFERENCES geral_grupoproduto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2351 (class 2606 OID 4110878)
-- Dependencies: 2317 197 195
-- Name: material_id_refs_id_4f51e873; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT material_id_refs_id_4f51e873 FOREIGN KEY (material_id) REFERENCES automacao_materialnotafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2349 (class 2606 OID 4110866)
-- Dependencies: 2291 195 183
-- Name: material_id_refs_id_b1380352; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT material_id_refs_id_b1380352 FOREIGN KEY (material_id) REFERENCES geral_material(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2350 (class 2606 OID 4110872)
-- Dependencies: 197 193 2313
-- Name: nota_fiscal_id_refs_id_54e07755; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT nota_fiscal_id_refs_id_54e07755 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2348 (class 2606 OID 4110860)
-- Dependencies: 195 193 2313
-- Name: nota_fiscal_id_refs_id_9a95d5e1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT nota_fiscal_id_refs_id_9a95d5e1 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2353 (class 2606 OID 4110896)
-- Dependencies: 197 2296 187
-- Name: operador_id_refs_id_acb28964; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT operador_id_refs_id_acb28964 FOREIGN KEY (operador_id) REFERENCES geral_operador(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2354 (class 2606 OID 4110902)
-- Dependencies: 199 2322 197
-- Name: ordem_fabricacao_id_refs_id_0ae4952b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaremessa
    ADD CONSTRAINT ordem_fabricacao_id_refs_id_0ae4952b FOREIGN KEY (ordem_fabricacao_id) REFERENCES automacao_ordemfabricacao(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2352 (class 2606 OID 4110890)
-- Dependencies: 191 2308 197
-- Name: produto_id_refs_id_7cce6a4d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT produto_id_refs_id_7cce6a4d FOREIGN KEY (produto_id) REFERENCES geral_produto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2355 (class 2606 OID 4110908)
-- Dependencies: 2308 191 199
-- Name: produto_id_refs_id_b0cdebb0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaremessa
    ADD CONSTRAINT produto_id_refs_id_b0cdebb0 FOREIGN KEY (produto_id) REFERENCES geral_produto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2346 (class 2606 OID 4110786)
-- Dependencies: 2294 185 187
-- Name: setor_id_refs_id_1fa3b0f2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geral_operador
    ADD CONSTRAINT setor_id_refs_id_1fa3b0f2 FOREIGN KEY (setor_id) REFERENCES geral_setor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2345 (class 2606 OID 4110780)
-- Dependencies: 183 2289 181
-- Name: tipo_material_id_refs_id_4bf981d6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geral_material
    ADD CONSTRAINT tipo_material_id_refs_id_4bf981d6 FOREIGN KEY (tipo_material_id) REFERENCES geral_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2340 (class 2606 OID 4107267)
-- Dependencies: 168 172 2270
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2342 (class 2606 OID 4107272)
-- Dependencies: 172 170 2270
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-10-27 13:22:03 BRT

--
-- PostgreSQL database dump complete
--

