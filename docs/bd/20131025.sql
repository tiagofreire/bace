--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.3
-- Dumped by pg_dump version 9.1.0
-- Started on 2013-10-26 01:38:43 BRT

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
-- TOC entry 2389 (class 0 OID 0)
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
-- Dependencies: 5 166
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
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 165
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- TOC entry 2391 (class 0 OID 0)
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
-- Dependencies: 5 164
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
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 163
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- TOC entry 2393 (class 0 OID 0)
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
-- Dependencies: 5 162
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
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 161
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- TOC entry 2395 (class 0 OID 0)
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
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 167
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- TOC entry 2397 (class 0 OID 0)
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
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 171
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- TOC entry 2399 (class 0 OID 0)
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
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 169
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- TOC entry 2401 (class 0 OID 0)
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
-- Dependencies: 5 199
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
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 198
-- Name: automacao_etiquetaremessa_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_etiquetaremessa_id_seq OWNED BY automacao_etiquetaremessa.id;


--
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 198
-- Name: automacao_etiquetaremessa_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_etiquetaremessa_id_seq', 1, false);


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
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 200
-- Name: automacao_etiquetaretorno_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_etiquetaretorno_id_seq OWNED BY automacao_etiquetaretorno.id;


--
-- TOC entry 2405 (class 0 OID 0)
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
-- Dependencies: 195 5
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
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 194
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_materialnotafiscal_id_seq OWNED BY automacao_materialnotafiscal.id;


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 194
-- Name: automacao_materialnotafiscal_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_materialnotafiscal_id_seq', 3, true);


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
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 192
-- Name: automacao_notafiscal_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_notafiscal_id_seq OWNED BY automacao_notafiscal.id;


--
-- TOC entry 2409 (class 0 OID 0)
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
    tipo_material_id integer,
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
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 196
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE automacao_ordemfabricacao_id_seq OWNED BY automacao_ordemfabricacao.id;


--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 196
-- Name: automacao_ordemfabricacao_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('automacao_ordemfabricacao_id_seq', 90, true);


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
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 176
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 176
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 153, true);


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
-- Dependencies: 174 5
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
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 173
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- TOC entry 2415 (class 0 OID 0)
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
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 188
-- Name: geral_grupoproduto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_grupoproduto_id_seq OWNED BY geral_grupoproduto.id;


--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 188
-- Name: geral_grupoproduto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_grupoproduto_id_seq', 1, false);


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
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 182
-- Name: geral_material_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_material_id_seq OWNED BY geral_material.id;


--
-- TOC entry 2419 (class 0 OID 0)
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
-- Dependencies: 187 5
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
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 186
-- Name: geral_operador_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_operador_id_seq OWNED BY geral_operador.id;


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 186
-- Name: geral_operador_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_operador_id_seq', 1, false);


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
-- Dependencies: 191 5
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
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 190
-- Name: geral_produto_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_produto_id_seq OWNED BY geral_produto.id;


--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 190
-- Name: geral_produto_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_produto_id_seq', 1, false);


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
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 184
-- Name: geral_setor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_setor_id_seq OWNED BY geral_setor.id;


--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 184
-- Name: geral_setor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('geral_setor_id_seq', 1, false);


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
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 180
-- Name: geral_tipomaterial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE geral_tipomaterial_id_seq OWNED BY geral_tipomaterial.id;


--
-- TOC entry 2427 (class 0 OID 0)
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
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 178
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 178
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 37, true);


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
-- Dependencies: 161 162 162
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- TOC entry 2225 (class 2604 OID 4107262)
-- Dependencies: 171 172 172
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- TOC entry 2223 (class 2604 OID 4107232)
-- Dependencies: 168 167 168
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
-- Dependencies: 199 198 199
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
-- Dependencies: 195 194 195
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_materialnotafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_materialnotafiscal_id_seq'::regclass);


--
-- TOC entry 2236 (class 2604 OID 4110811)
-- Dependencies: 193 192 193
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE automacao_notafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_notafiscal_id_seq'::regclass);


--
-- TOC entry 2239 (class 2604 OID 4110830)
-- Dependencies: 197 196 197
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
-- Dependencies: 173 174 174
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- TOC entry 2234 (class 2604 OID 4110762)
-- Dependencies: 189 188 189
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_grupoproduto ALTER COLUMN id SET DEFAULT nextval('geral_grupoproduto_id_seq'::regclass);


--
-- TOC entry 2231 (class 2604 OID 4110738)
-- Dependencies: 182 183 183
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_material ALTER COLUMN id SET DEFAULT nextval('geral_material_id_seq'::regclass);


--
-- TOC entry 2233 (class 2604 OID 4110754)
-- Dependencies: 186 187 187
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE geral_operador ALTER COLUMN id SET DEFAULT nextval('geral_operador_id_seq'::regclass);


--
-- TOC entry 2235 (class 2604 OID 4110772)
-- Dependencies: 191 190 191
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
-- TOC entry 2363 (class 0 OID 4107214)
-- Dependencies: 166
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_group (id, name) FROM stdin;
1	usuario
\.


--
-- TOC entry 2362 (class 0 OID 4107199)
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
-- TOC entry 2361 (class 0 OID 4107189)
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
-- TOC entry 2366 (class 0 OID 4107259)
-- Dependencies: 172
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
2	pbkdf2_sha256$10000$RIAVFafp0yAE$9lsIi3xnxO5d8+KptoiRtMghNTzwPRoNdlPrs8L0O5U=	2013-08-23 17:51:54.640555-03	f	tiago				t	t	2013-08-23 17:50:09-03
3	pbkdf2_sha256$10000$UbHZipoUJAaJ$yHzH2o5yc+MZX8vRWQHbSbj+U89QtHJrMvrEmqAAIto=	2013-09-03 14:43:30.644529-03	f	usuario1				f	t	2013-09-03 14:43:30.644625-03
1	pbkdf2_sha256$10000$2AoQEh4eOStZ$ra3diDFyiO2Ii1lOuzV7AwYnRLJPIM2yJ1h8FoTU4zU=	2013-10-25 01:11:25.620582-03	t	admin			tiagowd@gmail.com	t	t	2013-08-23 17:33:11.619931-03
\.


--
-- TOC entry 2364 (class 0 OID 4107229)
-- Dependencies: 168
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
2	2	1
\.


--
-- TOC entry 2365 (class 0 OID 4107244)
-- Dependencies: 170
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- TOC entry 2380 (class 0 OID 4110835)
-- Dependencies: 199
-- Data for Name: automacao_etiquetaremessa; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaremessa (id, numero_etiqueta_remessa, peso, tipo_etiqueta, previsao, data_inicio, ordem_fabricacao_id, peso_1g, produto_id) FROM stdin;
\.


--
-- TOC entry 2381 (class 0 OID 4110843)
-- Dependencies: 201
-- Data for Name: automacao_etiquetaretorno; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaretorno (id, etiqueta_remessa_id) FROM stdin;
\.


--
-- TOC entry 2383 (class 0 OID 4110854)
-- Dependencies: 203
-- Data for Name: automacao_etiquetaretornoniple; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaretornoniple (etiquetaretorno_ptr_id, peso_rosqueado, peso_1g, data_peso_rosqueado, quantidade_peso_rosqueado, peso_niquelado, peso_embalado, data_peso_niquelado, quantidade_peso_niquelado, responsavel) FROM stdin;
\.


--
-- TOC entry 2382 (class 0 OID 4110849)
-- Dependencies: 202
-- Data for Name: automacao_etiquetaretornoraio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_etiquetaretornoraio (etiquetaretorno_ptr_id, peso_desengraxado, peso_1g, peso_polido, quantidade, data, responsavel) FROM stdin;
\.


--
-- TOC entry 2378 (class 0 OID 4110818)
-- Dependencies: 195
-- Data for Name: automacao_materialnotafiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_materialnotafiscal (id, nota_fiscal_id, material_id, volume, data_entrada, peso, valor, status) FROM stdin;
3	1	3	13	2013-10-25	510.00	722.55	0
1	1	1	0	2013-10-25	310.20	5100.20	0
2	1	2	0	2013-10-01	204.01	201.00	0
\.


--
-- TOC entry 2377 (class 0 OID 4110808)
-- Dependencies: 193
-- Data for Name: automacao_notafiscal; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_notafiscal (id, numero, valor_total) FROM stdin;
1	1234	6023.75
\.


--
-- TOC entry 2379 (class 0 OID 4110827)
-- Dependencies: 197
-- Data for Name: automacao_ordemfabricacao; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY automacao_ordemfabricacao (id, numero_of, nota_fiscal_id, material_id, tipo_material_id, produto_id, operador_id, data_inicial, data_final, peso_bruto, peso_liquido, previsao, perda) FROM stdin;
31	12341.10	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
32	12341.11	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
33	12341.12	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
34	12341.13	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
35	12341.14	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
36	12341.15	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
37	12341.16	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
38	12341.17	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
39	12341.18	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
40	12341.19	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
41	12341.110	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
42	12341.111	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
43	12341.112	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
44	12341.113	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
45	12341.114	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
46	12341.115	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
47	12341.116	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
48	12341.117	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
49	12341.118	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
50	12341.119	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
51	12341.120	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
52	12341.121	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
53	12341.122	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
54	12341.123	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
55	12341.124	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
56	12341.125	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
57	12341.126	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
58	12341.127	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
59	12341.128	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
60	12341.129	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
61	12341.130	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
62	12341.131	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
63	12341.132	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
64	12341.133	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
65	12341.134	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
66	12341.135	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
67	12341.136	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
68	12341.137	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
69	12341.138	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
70	12341.139	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
71	12341.140	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
72	12341.141	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
73	12341.142	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
74	12341.143	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
75	12341.144	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
76	12341.145	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
77	12341.146	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
78	12341.147	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
79	12341.148	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
80	12341.149	1	1	\N	\N	\N	\N	\N	\N	\N	\N	\N
81	12341.20	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
82	12341.21	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
83	12341.22	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
84	12341.23	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
85	12341.24	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
86	12341.25	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
87	12341.26	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
88	12341.27	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
89	12341.28	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
90	12341.29	1	2	\N	\N	\N	\N	\N	\N	\N	\N	\N
\.


--
-- TOC entry 2369 (class 0 OID 4107302)
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
\.


--
-- TOC entry 2367 (class 0 OID 4107279)
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
-- TOC entry 2368 (class 0 OID 4107292)
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
-- TOC entry 2375 (class 0 OID 4110759)
-- Dependencies: 189
-- Data for Name: geral_grupoproduto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_grupoproduto (id, codigo, descricao) FROM stdin;
\.


--
-- TOC entry 2372 (class 0 OID 4110735)
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
-- TOC entry 2374 (class 0 OID 4110751)
-- Dependencies: 187
-- Data for Name: geral_operador; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_operador (id, setor_id, nome) FROM stdin;
\.


--
-- TOC entry 2376 (class 0 OID 4110769)
-- Dependencies: 191
-- Data for Name: geral_produto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_produto (id, grupo_produto_id, codigo, descricao) FROM stdin;
\.


--
-- TOC entry 2373 (class 0 OID 4110743)
-- Dependencies: 185
-- Data for Name: geral_setor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_setor (id, descricao) FROM stdin;
\.


--
-- TOC entry 2371 (class 0 OID 4110727)
-- Dependencies: 181
-- Data for Name: geral_tipomaterial; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY geral_tipomaterial (id, descricao) FROM stdin;
1	Tipo Material 01
2	Tipo Material 02
\.


--
-- TOC entry 2370 (class 0 OID 4107872)
-- Dependencies: 179
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
36	geral	0001_initial	2013-10-25 20:00:02.279147-03
37	automacao	0001_initial	2013-10-25 20:00:25.543613-03
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
-- TOC entry 2328 (class 2606 OID 4110840)
-- Dependencies: 199 199
-- Name: automacao_etiquetaremessa_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaremessa
    ADD CONSTRAINT automacao_etiquetaremessa_pkey PRIMARY KEY (id);


--
-- TOC entry 2332 (class 2606 OID 4110848)
-- Dependencies: 201 201
-- Name: automacao_etiquetaretorno_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaretorno
    ADD CONSTRAINT automacao_etiquetaretorno_pkey PRIMARY KEY (id);


--
-- TOC entry 2336 (class 2606 OID 4110858)
-- Dependencies: 203 203
-- Name: automacao_etiquetaretornoniple_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY automacao_etiquetaretornoniple
    ADD CONSTRAINT automacao_etiquetaretornoniple_pkey PRIMARY KEY (etiquetaretorno_ptr_id);


--
-- TOC entry 2334 (class 2606 OID 4110853)
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
-- TOC entry 2326 (class 1259 OID 4110907)
-- Dependencies: 199
-- Name: automacao_etiquetaremessa_ordem_fabricacao_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_etiquetaremessa_ordem_fabricacao_id ON automacao_etiquetaremessa USING btree (ordem_fabricacao_id);


--
-- TOC entry 2329 (class 1259 OID 4110913)
-- Dependencies: 199
-- Name: automacao_etiquetaremessa_produto_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_etiquetaremessa_produto_id ON automacao_etiquetaremessa USING btree (produto_id);


--
-- TOC entry 2330 (class 1259 OID 4110919)
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
-- TOC entry 2325 (class 1259 OID 4110889)
-- Dependencies: 197
-- Name: automacao_ordemfabricacao_tipo_material_id; Type: INDEX; Schema: public; Owner: postgres; Tablespace: 
--

CREATE INDEX automacao_ordemfabricacao_tipo_material_id ON automacao_ordemfabricacao USING btree (tipo_material_id);


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
-- TOC entry 2338 (class 2606 OID 4107207)
-- Dependencies: 164 162 2245
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2340 (class 2606 OID 4107237)
-- Dependencies: 168 166 2256
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2342 (class 2606 OID 4107252)
-- Dependencies: 170 2245 162
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2337 (class 2606 OID 4107287)
-- Dependencies: 162 2277 174
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2345 (class 2606 OID 4107317)
-- Dependencies: 174 2277 177
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2344 (class 2606 OID 4107312)
-- Dependencies: 177 172 2270
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2358 (class 2606 OID 4110914)
-- Dependencies: 2327 199 201
-- Name: etiqueta_remessa_id_refs_id_e2e9a54b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaretorno
    ADD CONSTRAINT etiqueta_remessa_id_refs_id_e2e9a54b FOREIGN KEY (etiqueta_remessa_id) REFERENCES automacao_etiquetaremessa(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2359 (class 2606 OID 4110920)
-- Dependencies: 202 2331 201
-- Name: etiquetaretorno_ptr_id_refs_id_16118ac4; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaretornoraio
    ADD CONSTRAINT etiquetaretorno_ptr_id_refs_id_16118ac4 FOREIGN KEY (etiquetaretorno_ptr_id) REFERENCES automacao_etiquetaretorno(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2360 (class 2606 OID 4110925)
-- Dependencies: 203 2331 201
-- Name: etiquetaretorno_ptr_id_refs_id_ac083d2a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaretornoniple
    ADD CONSTRAINT etiquetaretorno_ptr_id_refs_id_ac083d2a FOREIGN KEY (etiquetaretorno_ptr_id) REFERENCES automacao_etiquetaretorno(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2339 (class 2606 OID 4107222)
-- Dependencies: 164 2256 166
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2348 (class 2606 OID 4110793)
-- Dependencies: 2302 191 189
-- Name: grupo_produto_id_refs_id_cfe8ecd6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geral_produto
    ADD CONSTRAINT grupo_produto_id_refs_id_cfe8ecd6 FOREIGN KEY (grupo_produto_id) REFERENCES geral_grupoproduto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2352 (class 2606 OID 4110878)
-- Dependencies: 197 2317 195
-- Name: material_id_refs_id_4f51e873; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT material_id_refs_id_4f51e873 FOREIGN KEY (material_id) REFERENCES automacao_materialnotafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2350 (class 2606 OID 4110866)
-- Dependencies: 183 2291 195
-- Name: material_id_refs_id_b1380352; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT material_id_refs_id_b1380352 FOREIGN KEY (material_id) REFERENCES geral_material(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2351 (class 2606 OID 4110872)
-- Dependencies: 2313 193 197
-- Name: nota_fiscal_id_refs_id_54e07755; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT nota_fiscal_id_refs_id_54e07755 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2349 (class 2606 OID 4110860)
-- Dependencies: 195 193 2313
-- Name: nota_fiscal_id_refs_id_9a95d5e1; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT nota_fiscal_id_refs_id_9a95d5e1 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2355 (class 2606 OID 4110896)
-- Dependencies: 187 2296 197
-- Name: operador_id_refs_id_acb28964; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT operador_id_refs_id_acb28964 FOREIGN KEY (operador_id) REFERENCES geral_operador(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2356 (class 2606 OID 4110902)
-- Dependencies: 2322 199 197
-- Name: ordem_fabricacao_id_refs_id_0ae4952b; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaremessa
    ADD CONSTRAINT ordem_fabricacao_id_refs_id_0ae4952b FOREIGN KEY (ordem_fabricacao_id) REFERENCES automacao_ordemfabricacao(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2354 (class 2606 OID 4110890)
-- Dependencies: 197 191 2308
-- Name: produto_id_refs_id_7cce6a4d; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT produto_id_refs_id_7cce6a4d FOREIGN KEY (produto_id) REFERENCES geral_produto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2357 (class 2606 OID 4110908)
-- Dependencies: 2308 199 191
-- Name: produto_id_refs_id_b0cdebb0; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_etiquetaremessa
    ADD CONSTRAINT produto_id_refs_id_b0cdebb0 FOREIGN KEY (produto_id) REFERENCES geral_produto(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2347 (class 2606 OID 4110786)
-- Dependencies: 185 2294 187
-- Name: setor_id_refs_id_1fa3b0f2; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geral_operador
    ADD CONSTRAINT setor_id_refs_id_1fa3b0f2 FOREIGN KEY (setor_id) REFERENCES geral_setor(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2346 (class 2606 OID 4110780)
-- Dependencies: 181 183 2289
-- Name: tipo_material_id_refs_id_4bf981d6; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY geral_material
    ADD CONSTRAINT tipo_material_id_refs_id_4bf981d6 FOREIGN KEY (tipo_material_id) REFERENCES geral_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2353 (class 2606 OID 4110884)
-- Dependencies: 197 2289 181
-- Name: tipo_material_id_refs_id_d58c877a; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT tipo_material_id_refs_id_d58c877a FOREIGN KEY (tipo_material_id) REFERENCES geral_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2341 (class 2606 OID 4107267)
-- Dependencies: 168 172 2270
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2343 (class 2606 OID 4107272)
-- Dependencies: 170 2270 172
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 5
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2013-10-26 01:38:43 BRT

--
-- PostgreSQL database dump complete
--

