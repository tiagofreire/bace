PGDMP          ,                q            bace    9.1.3    9.1.0 �    (	           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false            )	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            *	           1262    4099935    bace    DATABASE     g   CREATE DATABASE bace WITH TEMPLATE = template0 ENCODING = 'SQL_ASCII' LC_COLLATE = 'C' LC_CTYPE = 'C';
    DROP DATABASE bace;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            +	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    5            ,	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    5            �            3079    11907    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            -	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    198            �            1259    4107214 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    5            �            1259    4107212    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    166    5            .	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    165            /	           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 1, true);
            public       postgres    false    165            �            1259    4107199    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    5            �            1259    4107197    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    5    164            0	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    163            1	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 66, true);
            public       postgres    false    163            �            1259    4107189    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    5            �            1259    4107187    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    162    5            2	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    161            3	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 57, true);
            public       postgres    false    161            �            1259    4107259 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
    DROP TABLE public.auth_user;
       public         postgres    false    5            �            1259    4107229    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    5            �            1259    4107227    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    5    168            4	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    167            5	           0    0    auth_user_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_user_groups_id_seq', 2, true);
            public       postgres    false    167            �            1259    4107257    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    5    172            6	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    171            7	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 3, true);
            public       postgres    false    171            �            1259    4107244    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    5            �            1259    4107242 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    5    170            8	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    169            9	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    169            �            1259    4107942    automacao_grupoproduto    TABLE     �   CREATE TABLE automacao_grupoproduto (
    id integer NOT NULL,
    codigo character varying(100) NOT NULL,
    descricao character varying(100) NOT NULL
);
 *   DROP TABLE public.automacao_grupoproduto;
       public         postgres    false    5            �            1259    4107940    automacao_grupoproduto_id_seq    SEQUENCE        CREATE SEQUENCE automacao_grupoproduto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.automacao_grupoproduto_id_seq;
       public       postgres    false    189    5            :	           0    0    automacao_grupoproduto_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE automacao_grupoproduto_id_seq OWNED BY automacao_grupoproduto.id;
            public       postgres    false    188            ;	           0    0    automacao_grupoproduto_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('automacao_grupoproduto_id_seq', 1, false);
            public       postgres    false    188            �            1259    4107918    automacao_material    TABLE     �   CREATE TABLE automacao_material (
    id integer NOT NULL,
    tipo_material_id integer NOT NULL,
    descricao character varying(100) NOT NULL
);
 &   DROP TABLE public.automacao_material;
       public         postgres    false    5            �            1259    4107916    automacao_material_id_seq    SEQUENCE     {   CREATE SEQUENCE automacao_material_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.automacao_material_id_seq;
       public       postgres    false    183    5            <	           0    0    automacao_material_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE automacao_material_id_seq OWNED BY automacao_material.id;
            public       postgres    false    182            =	           0    0    automacao_material_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('automacao_material_id_seq', 2, true);
            public       postgres    false    182            �            1259    4107975    automacao_materialnotafiscal    TABLE     >  CREATE TABLE automacao_materialnotafiscal (
    id integer NOT NULL,
    nota_fiscal_id integer NOT NULL,
    material_id integer NOT NULL,
    volume character varying(100) NOT NULL,
    data_entrada date NOT NULL,
    peso numeric(8,2) NOT NULL,
    valor numeric(8,2) NOT NULL,
    status character varying(100)
);
 0   DROP TABLE public.automacao_materialnotafiscal;
       public         postgres    false    5            �            1259    4107973 #   automacao_materialnotafiscal_id_seq    SEQUENCE     �   CREATE SEQUENCE automacao_materialnotafiscal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.automacao_materialnotafiscal_id_seq;
       public       postgres    false    195    5            >	           0    0 #   automacao_materialnotafiscal_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE automacao_materialnotafiscal_id_seq OWNED BY automacao_materialnotafiscal.id;
            public       postgres    false    194            ?	           0    0 #   automacao_materialnotafiscal_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('automacao_materialnotafiscal_id_seq', 8, true);
            public       postgres    false    194            �            1259    4107965    automacao_notafiscal    TABLE     �   CREATE TABLE automacao_notafiscal (
    id integer NOT NULL,
    numero character varying(100) NOT NULL,
    valor_total numeric(8,2) NOT NULL
);
 (   DROP TABLE public.automacao_notafiscal;
       public         postgres    false    5            �            1259    4107963    automacao_notafiscal_id_seq    SEQUENCE     }   CREATE SEQUENCE automacao_notafiscal_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.automacao_notafiscal_id_seq;
       public       postgres    false    5    193            @	           0    0    automacao_notafiscal_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE automacao_notafiscal_id_seq OWNED BY automacao_notafiscal.id;
            public       postgres    false    192            A	           0    0    automacao_notafiscal_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('automacao_notafiscal_id_seq', 8, true);
            public       postgres    false    192            �            1259    4107934    automacao_operador    TABLE     �   CREATE TABLE automacao_operador (
    id integer NOT NULL,
    setor_id integer NOT NULL,
    nome character varying(100) NOT NULL
);
 &   DROP TABLE public.automacao_operador;
       public         postgres    false    5            �            1259    4107932    automacao_operador_id_seq    SEQUENCE     {   CREATE SEQUENCE automacao_operador_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.automacao_operador_id_seq;
       public       postgres    false    5    187            B	           0    0    automacao_operador_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE automacao_operador_id_seq OWNED BY automacao_operador.id;
            public       postgres    false    186            C	           0    0    automacao_operador_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('automacao_operador_id_seq', 1, false);
            public       postgres    false    186            �            1259    4108048    automacao_ordemfabricacao    TABLE     �  CREATE TABLE automacao_ordemfabricacao (
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
 -   DROP TABLE public.automacao_ordemfabricacao;
       public         postgres    false    5            �            1259    4108046     automacao_ordemfabricacao_id_seq    SEQUENCE     �   CREATE SEQUENCE automacao_ordemfabricacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.automacao_ordemfabricacao_id_seq;
       public       postgres    false    197    5            D	           0    0     automacao_ordemfabricacao_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE automacao_ordemfabricacao_id_seq OWNED BY automacao_ordemfabricacao.id;
            public       postgres    false    196            E	           0    0     automacao_ordemfabricacao_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('automacao_ordemfabricacao_id_seq', 1, false);
            public       postgres    false    196            �            1259    4107952    automacao_produto    TABLE     �   CREATE TABLE automacao_produto (
    id integer NOT NULL,
    grupo_produto_id integer NOT NULL,
    codigo character varying(100) NOT NULL,
    descricao text NOT NULL
);
 %   DROP TABLE public.automacao_produto;
       public         postgres    false    5            �            1259    4107950    automacao_produto_id_seq    SEQUENCE     z   CREATE SEQUENCE automacao_produto_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.automacao_produto_id_seq;
       public       postgres    false    191    5            F	           0    0    automacao_produto_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE automacao_produto_id_seq OWNED BY automacao_produto.id;
            public       postgres    false    190            G	           0    0    automacao_produto_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('automacao_produto_id_seq', 1, false);
            public       postgres    false    190            �            1259    4107926    automacao_setor    TABLE     i   CREATE TABLE automacao_setor (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);
 #   DROP TABLE public.automacao_setor;
       public         postgres    false    5            �            1259    4107924    automacao_setor_id_seq    SEQUENCE     x   CREATE SEQUENCE automacao_setor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.automacao_setor_id_seq;
       public       postgres    false    185    5            H	           0    0    automacao_setor_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE automacao_setor_id_seq OWNED BY automacao_setor.id;
            public       postgres    false    184            I	           0    0    automacao_setor_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('automacao_setor_id_seq', 1, false);
            public       postgres    false    184            �            1259    4107910    automacao_tipomaterial    TABLE     p   CREATE TABLE automacao_tipomaterial (
    id integer NOT NULL,
    descricao character varying(100) NOT NULL
);
 *   DROP TABLE public.automacao_tipomaterial;
       public         postgres    false    5            �            1259    4107908    automacao_tipomaterial_id_seq    SEQUENCE        CREATE SEQUENCE automacao_tipomaterial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.automacao_tipomaterial_id_seq;
       public       postgres    false    181    5            J	           0    0    automacao_tipomaterial_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE automacao_tipomaterial_id_seq OWNED BY automacao_tipomaterial.id;
            public       postgres    false    180            K	           0    0    automacao_tipomaterial_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('automacao_tipomaterial_id_seq', 1, true);
            public       postgres    false    180            �            1259    4107302    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         postgres    false    2212    5            �            1259    4107300    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    5    177            L	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    176            M	           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 56, true);
            public       postgres    false    176            �            1259    4107279    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    5            �            1259    4107277    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    174    5            N	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    173            O	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 19, true);
            public       postgres    false    173            �            1259    4107292    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    5            �            1259    4107872    south_migrationhistory    TABLE     �   CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 *   DROP TABLE public.south_migrationhistory;
       public         postgres    false    5            �            1259    4107870    south_migrationhistory_id_seq    SEQUENCE        CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.south_migrationhistory_id_seq;
       public       postgres    false    179    5            P	           0    0    south_migrationhistory_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;
            public       postgres    false    178            Q	           0    0    south_migrationhistory_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('south_migrationhistory_id_seq', 4, true);
            public       postgres    false    178            �           2604    4107217    id    DEFAULT     [   ALTER TABLE auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    165    166    166            �           2604    4107202    id    DEFAULT     s   ALTER TABLE auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    164    163    164            �           2604    4107192    id    DEFAULT     e   ALTER TABLE auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    162    161    162            �           2604    4107262    id    DEFAULT     Y   ALTER TABLE auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    171    172    172            �           2604    4107232    id    DEFAULT     g   ALTER TABLE auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    167    168    168            �           2604    4107247    id    DEFAULT     {   ALTER TABLE auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    170    169    170            �           2604    4107945    id    DEFAULT     s   ALTER TABLE automacao_grupoproduto ALTER COLUMN id SET DEFAULT nextval('automacao_grupoproduto_id_seq'::regclass);
 H   ALTER TABLE public.automacao_grupoproduto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    189    189            �           2604    4107921    id    DEFAULT     k   ALTER TABLE automacao_material ALTER COLUMN id SET DEFAULT nextval('automacao_material_id_seq'::regclass);
 D   ALTER TABLE public.automacao_material ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    183    182    183            �           2604    4107978    id    DEFAULT        ALTER TABLE automacao_materialnotafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_materialnotafiscal_id_seq'::regclass);
 N   ALTER TABLE public.automacao_materialnotafiscal ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    194    195            �           2604    4107968    id    DEFAULT     o   ALTER TABLE automacao_notafiscal ALTER COLUMN id SET DEFAULT nextval('automacao_notafiscal_id_seq'::regclass);
 F   ALTER TABLE public.automacao_notafiscal ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    193    193            �           2604    4107937    id    DEFAULT     k   ALTER TABLE automacao_operador ALTER COLUMN id SET DEFAULT nextval('automacao_operador_id_seq'::regclass);
 D   ALTER TABLE public.automacao_operador ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    187    187            �           2604    4108051    id    DEFAULT     y   ALTER TABLE automacao_ordemfabricacao ALTER COLUMN id SET DEFAULT nextval('automacao_ordemfabricacao_id_seq'::regclass);
 K   ALTER TABLE public.automacao_ordemfabricacao ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �           2604    4107955    id    DEFAULT     i   ALTER TABLE automacao_produto ALTER COLUMN id SET DEFAULT nextval('automacao_produto_id_seq'::regclass);
 C   ALTER TABLE public.automacao_produto ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    190    191            �           2604    4107929    id    DEFAULT     e   ALTER TABLE automacao_setor ALTER COLUMN id SET DEFAULT nextval('automacao_setor_id_seq'::regclass);
 A   ALTER TABLE public.automacao_setor ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    184    185            �           2604    4107913    id    DEFAULT     s   ALTER TABLE automacao_tipomaterial ALTER COLUMN id SET DEFAULT nextval('automacao_tipomaterial_id_seq'::regclass);
 H   ALTER TABLE public.automacao_tipomaterial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    181    180    181            �           2604    4107305    id    DEFAULT     g   ALTER TABLE django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    177    176    177            �           2604    4107282    id    DEFAULT     m   ALTER TABLE django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    174    173    174            �           2604    4107875    id    DEFAULT     s   ALTER TABLE south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);
 H   ALTER TABLE public.south_migrationhistory ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    178    179    179            	          0    4107214 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    166   ��       	          0    4107199    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    164   �       	          0    4107189    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    162   ��       	          0    4107259 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    172   ��       	          0    4107229    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    168   <�       	          0    4107244    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    170   _�       #	          0    4107942    automacao_grupoproduto 
   TABLE DATA               @   COPY automacao_grupoproduto (id, codigo, descricao) FROM stdin;
    public       postgres    false    189   |�        	          0    4107918    automacao_material 
   TABLE DATA               F   COPY automacao_material (id, tipo_material_id, descricao) FROM stdin;
    public       postgres    false    183   ��       &	          0    4107975    automacao_materialnotafiscal 
   TABLE DATA               {   COPY automacao_materialnotafiscal (id, nota_fiscal_id, material_id, volume, data_entrada, peso, valor, status) FROM stdin;
    public       postgres    false    195   ��       %	          0    4107965    automacao_notafiscal 
   TABLE DATA               @   COPY automacao_notafiscal (id, numero, valor_total) FROM stdin;
    public       postgres    false    193   4�       "	          0    4107934    automacao_operador 
   TABLE DATA               9   COPY automacao_operador (id, setor_id, nome) FROM stdin;
    public       postgres    false    187   j�       '	          0    4108048    automacao_ordemfabricacao 
   TABLE DATA               �   COPY automacao_ordemfabricacao (id, numero_of, nota_fiscal_id, tipo_material_id, produto_id, operador_id, data_inicial, data_final, peso_bruto, peso_liquido, previsao, perda) FROM stdin;
    public       postgres    false    197   ��       $	          0    4107952    automacao_produto 
   TABLE DATA               M   COPY automacao_produto (id, grupo_produto_id, codigo, descricao) FROM stdin;
    public       postgres    false    191   ��       !	          0    4107926    automacao_setor 
   TABLE DATA               1   COPY automacao_setor (id, descricao) FROM stdin;
    public       postgres    false    185   ��       	          0    4107910    automacao_tipomaterial 
   TABLE DATA               8   COPY automacao_tipomaterial (id, descricao) FROM stdin;
    public       postgres    false    181   ��       	          0    4107302    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
    public       postgres    false    177   �       	          0    4107279    django_content_type 
   TABLE DATA               B   COPY django_content_type (id, name, app_label, model) FROM stdin;
    public       postgres    false    174   ��       	          0    4107292    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    175   ��       	          0    4107872    south_migrationhistory 
   TABLE DATA               K   COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
    public       postgres    false    179   k�       �           2606    4107221    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    166    166            �           2606    4107206 1   auth_group_permissions_group_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);
 r   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_key;
       public         postgres    false    164    164    164            �           2606    4107204    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    164    164            �           2606    4107219    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    166    166            �           2606    4107196 ,   auth_permission_content_type_id_codename_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);
 f   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_key;
       public         postgres    false    162    162    162            �           2606    4107194    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    162    162            �           2606    4107234    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    168    168            �           2606    4107236 %   auth_user_groups_user_id_group_id_key 
   CONSTRAINT     w   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);
 `   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_key;
       public         postgres    false    168    168    168            �           2606    4107264    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    172    172            �           2606    4107249    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    170    170            �           2606    4107251 4   auth_user_user_permissions_user_id_permission_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);
 y   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_key;
       public         postgres    false    170    170    170            �           2606    4107266    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    172    172            �           2606    4107949 !   automacao_grupoproduto_codigo_key 
   CONSTRAINT     n   ALTER TABLE ONLY automacao_grupoproduto
    ADD CONSTRAINT automacao_grupoproduto_codigo_key UNIQUE (codigo);
 b   ALTER TABLE ONLY public.automacao_grupoproduto DROP CONSTRAINT automacao_grupoproduto_codigo_key;
       public         postgres    false    189    189            �           2606    4107947    automacao_grupoproduto_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY automacao_grupoproduto
    ADD CONSTRAINT automacao_grupoproduto_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.automacao_grupoproduto DROP CONSTRAINT automacao_grupoproduto_pkey;
       public         postgres    false    189    189            �           2606    4107923    automacao_material_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY automacao_material
    ADD CONSTRAINT automacao_material_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.automacao_material DROP CONSTRAINT automacao_material_pkey;
       public         postgres    false    183    183            �           2606    4107980 !   automacao_materialnotafiscal_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT automacao_materialnotafiscal_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.automacao_materialnotafiscal DROP CONSTRAINT automacao_materialnotafiscal_pkey;
       public         postgres    false    195    195            �           2606    4107972    automacao_notafiscal_numero_key 
   CONSTRAINT     j   ALTER TABLE ONLY automacao_notafiscal
    ADD CONSTRAINT automacao_notafiscal_numero_key UNIQUE (numero);
 ^   ALTER TABLE ONLY public.automacao_notafiscal DROP CONSTRAINT automacao_notafiscal_numero_key;
       public         postgres    false    193    193            �           2606    4107970    automacao_notafiscal_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY automacao_notafiscal
    ADD CONSTRAINT automacao_notafiscal_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.automacao_notafiscal DROP CONSTRAINT automacao_notafiscal_pkey;
       public         postgres    false    193    193            �           2606    4107939    automacao_operador_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY automacao_operador
    ADD CONSTRAINT automacao_operador_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.automacao_operador DROP CONSTRAINT automacao_operador_pkey;
       public         postgres    false    187    187             	           2606    4108053    automacao_ordemfabricacao_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT automacao_ordemfabricacao_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.automacao_ordemfabricacao DROP CONSTRAINT automacao_ordemfabricacao_pkey;
       public         postgres    false    197    197            �           2606    4107962    automacao_produto_descricao_key 
   CONSTRAINT     j   ALTER TABLE ONLY automacao_produto
    ADD CONSTRAINT automacao_produto_descricao_key UNIQUE (descricao);
 [   ALTER TABLE ONLY public.automacao_produto DROP CONSTRAINT automacao_produto_descricao_key;
       public         postgres    false    191    191            �           2606    4107960    automacao_produto_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY automacao_produto
    ADD CONSTRAINT automacao_produto_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.automacao_produto DROP CONSTRAINT automacao_produto_pkey;
       public         postgres    false    191    191            �           2606    4107931    automacao_setor_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY automacao_setor
    ADD CONSTRAINT automacao_setor_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.automacao_setor DROP CONSTRAINT automacao_setor_pkey;
       public         postgres    false    185    185            �           2606    4107915    automacao_tipomaterial_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY automacao_tipomaterial
    ADD CONSTRAINT automacao_tipomaterial_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.automacao_tipomaterial DROP CONSTRAINT automacao_tipomaterial_pkey;
       public         postgres    false    181    181            �           2606    4107311    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    177    177            �           2606    4107286 '   django_content_type_app_label_model_key 
   CONSTRAINT     {   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);
 e   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_key;
       public         postgres    false    174    174    174            �           2606    4107284    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    174    174            �           2606    4107299    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    175    175            �           2606    4107877    south_migrationhistory_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.south_migrationhistory DROP CONSTRAINT south_migrationhistory_pkey;
       public         postgres    false    179    179            �           1259    4107427    auth_group_name_like    INDEX     X   CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);
 (   DROP INDEX public.auth_group_name_like;
       public         postgres    false    166            �           1259    4107425    auth_group_permissions_group_id    INDEX     _   CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);
 3   DROP INDEX public.auth_group_permissions_group_id;
       public         postgres    false    164            �           1259    4107426 $   auth_group_permissions_permission_id    INDEX     i   CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);
 8   DROP INDEX public.auth_group_permissions_permission_id;
       public         postgres    false    164            �           1259    4107424    auth_permission_content_type_id    INDEX     _   CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);
 3   DROP INDEX public.auth_permission_content_type_id;
       public         postgres    false    162            �           1259    4107429    auth_user_groups_group_id    INDEX     S   CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);
 -   DROP INDEX public.auth_user_groups_group_id;
       public         postgres    false    168            �           1259    4107428    auth_user_groups_user_id    INDEX     Q   CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);
 ,   DROP INDEX public.auth_user_groups_user_id;
       public         postgres    false    168            �           1259    4107431 (   auth_user_user_permissions_permission_id    INDEX     q   CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);
 <   DROP INDEX public.auth_user_user_permissions_permission_id;
       public         postgres    false    170            �           1259    4107430 "   auth_user_user_permissions_user_id    INDEX     e   CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);
 6   DROP INDEX public.auth_user_user_permissions_user_id;
       public         postgres    false    170            �           1259    4107432    auth_user_username_like    INDEX     ^   CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);
 +   DROP INDEX public.auth_user_username_like;
       public         postgres    false    172            �           1259    4108001 "   automacao_grupoproduto_codigo_like    INDEX     t   CREATE INDEX automacao_grupoproduto_codigo_like ON automacao_grupoproduto USING btree (codigo varchar_pattern_ops);
 6   DROP INDEX public.automacao_grupoproduto_codigo_like;
       public         postgres    false    189            �           1259    4107994 #   automacao_material_tipo_material_id    INDEX     g   CREATE INDEX automacao_material_tipo_material_id ON automacao_material USING btree (tipo_material_id);
 7   DROP INDEX public.automacao_material_tipo_material_id;
       public         postgres    false    183            �           1259    4108021 (   automacao_materialnotafiscal_material_id    INDEX     q   CREATE INDEX automacao_materialnotafiscal_material_id ON automacao_materialnotafiscal USING btree (material_id);
 <   DROP INDEX public.automacao_materialnotafiscal_material_id;
       public         postgres    false    195            �           1259    4108015 +   automacao_materialnotafiscal_nota_fiscal_id    INDEX     w   CREATE INDEX automacao_materialnotafiscal_nota_fiscal_id ON automacao_materialnotafiscal USING btree (nota_fiscal_id);
 ?   DROP INDEX public.automacao_materialnotafiscal_nota_fiscal_id;
       public         postgres    false    195            �           1259    4108022 (   automacao_materialnotafiscal_volume_like    INDEX     �   CREATE INDEX automacao_materialnotafiscal_volume_like ON automacao_materialnotafiscal USING btree (volume varchar_pattern_ops);
 <   DROP INDEX public.automacao_materialnotafiscal_volume_like;
       public         postgres    false    195            �           1259    4108009     automacao_notafiscal_numero_like    INDEX     p   CREATE INDEX automacao_notafiscal_numero_like ON automacao_notafiscal USING btree (numero varchar_pattern_ops);
 4   DROP INDEX public.automacao_notafiscal_numero_like;
       public         postgres    false    193            �           1259    4108000    automacao_operador_setor_id    INDEX     W   CREATE INDEX automacao_operador_setor_id ON automacao_operador USING btree (setor_id);
 /   DROP INDEX public.automacao_operador_setor_id;
       public         postgres    false    187            �           1259    4108059 (   automacao_ordemfabricacao_nota_fiscal_id    INDEX     q   CREATE INDEX automacao_ordemfabricacao_nota_fiscal_id ON automacao_ordemfabricacao USING btree (nota_fiscal_id);
 <   DROP INDEX public.automacao_ordemfabricacao_nota_fiscal_id;
       public         postgres    false    197            �           1259    4108077 %   automacao_ordemfabricacao_operador_id    INDEX     k   CREATE INDEX automacao_ordemfabricacao_operador_id ON automacao_ordemfabricacao USING btree (operador_id);
 9   DROP INDEX public.automacao_ordemfabricacao_operador_id;
       public         postgres    false    197            	           1259    4108071 $   automacao_ordemfabricacao_produto_id    INDEX     i   CREATE INDEX automacao_ordemfabricacao_produto_id ON automacao_ordemfabricacao USING btree (produto_id);
 8   DROP INDEX public.automacao_ordemfabricacao_produto_id;
       public         postgres    false    197            	           1259    4108065 *   automacao_ordemfabricacao_tipo_material_id    INDEX     u   CREATE INDEX automacao_ordemfabricacao_tipo_material_id ON automacao_ordemfabricacao USING btree (tipo_material_id);
 >   DROP INDEX public.automacao_ordemfabricacao_tipo_material_id;
       public         postgres    false    197            �           1259    4108008     automacao_produto_descricao_like    INDEX     m   CREATE INDEX automacao_produto_descricao_like ON automacao_produto USING btree (descricao text_pattern_ops);
 4   DROP INDEX public.automacao_produto_descricao_like;
       public         postgres    false    191            �           1259    4108007 "   automacao_produto_grupo_produto_id    INDEX     e   CREATE INDEX automacao_produto_grupo_produto_id ON automacao_produto USING btree (grupo_produto_id);
 6   DROP INDEX public.automacao_produto_grupo_produto_id;
       public         postgres    false    191            �           1259    4107436     django_admin_log_content_type_id    INDEX     a   CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);
 4   DROP INDEX public.django_admin_log_content_type_id;
       public         postgres    false    177            �           1259    4107435    django_admin_log_user_id    INDEX     Q   CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);
 ,   DROP INDEX public.django_admin_log_user_id;
       public         postgres    false    177            �           1259    4107434    django_session_expire_date    INDEX     U   CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);
 .   DROP INDEX public.django_session_expire_date;
       public         postgres    false    175            �           1259    4107433    django_session_session_key_like    INDEX     n   CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);
 3   DROP INDEX public.django_session_session_key_like;
       public         postgres    false    175            	           2606    4107207 )   auth_group_permissions_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_permission_id_fkey;
       public       postgres    false    164    2226    162            	           2606    4107237    auth_user_groups_group_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_fkey;
       public       postgres    false    2237    168    166            	           2606    4107252 -   auth_user_user_permissions_permission_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_permission_id_fkey;
       public       postgres    false    162    170    2226            	           2606    4107287     content_type_id_refs_id_d043b34a    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT content_type_id_refs_id_d043b34a;
       public       postgres    false    174    162    2258            	           2606    4107317 %   django_admin_log_content_type_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_fkey;
       public       postgres    false    2258    174    177            
	           2606    4107312    django_admin_log_user_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_fkey;
       public       postgres    false    177    172    2251            	           2606    4107222    group_id_refs_id_f4b32aac    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT group_id_refs_id_f4b32aac;
       public       postgres    false    166    164    2237            	           2606    4108002 !   grupo_produto_id_refs_id_d2bb55c0    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_produto
    ADD CONSTRAINT grupo_produto_id_refs_id_d2bb55c0 FOREIGN KEY (grupo_produto_id) REFERENCES automacao_grupoproduto(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.automacao_produto DROP CONSTRAINT grupo_produto_id_refs_id_d2bb55c0;
       public       postgres    false    2283    189    191            	           2606    4108016    material_id_refs_id_2bd07063    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT material_id_refs_id_2bd07063 FOREIGN KEY (material_id) REFERENCES automacao_material(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.automacao_materialnotafiscal DROP CONSTRAINT material_id_refs_id_2bd07063;
       public       postgres    false    195    2272    183            	           2606    4108054    nota_fiscal_id_refs_id_54e07755    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT nota_fiscal_id_refs_id_54e07755 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.automacao_ordemfabricacao DROP CONSTRAINT nota_fiscal_id_refs_id_54e07755;
       public       postgres    false    197    2294    193            	           2606    4108010    nota_fiscal_id_refs_id_9a95d5e1    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_materialnotafiscal
    ADD CONSTRAINT nota_fiscal_id_refs_id_9a95d5e1 FOREIGN KEY (nota_fiscal_id) REFERENCES automacao_notafiscal(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.automacao_materialnotafiscal DROP CONSTRAINT nota_fiscal_id_refs_id_9a95d5e1;
       public       postgres    false    195    2294    193            	           2606    4108072    operador_id_refs_id_5a2f47c2    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT operador_id_refs_id_5a2f47c2 FOREIGN KEY (operador_id) REFERENCES automacao_operador(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.automacao_ordemfabricacao DROP CONSTRAINT operador_id_refs_id_5a2f47c2;
       public       postgres    false    197    187    2277            	           2606    4108066    produto_id_refs_id_64aedf7f    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT produto_id_refs_id_64aedf7f FOREIGN KEY (produto_id) REFERENCES automacao_produto(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.automacao_ordemfabricacao DROP CONSTRAINT produto_id_refs_id_64aedf7f;
       public       postgres    false    197    2289    191            	           2606    4107995    setor_id_refs_id_2f4ace3b    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_operador
    ADD CONSTRAINT setor_id_refs_id_2f4ace3b FOREIGN KEY (setor_id) REFERENCES automacao_setor(id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY public.automacao_operador DROP CONSTRAINT setor_id_refs_id_2f4ace3b;
       public       postgres    false    187    2275    185            	           2606    4108060 !   tipo_material_id_refs_id_49d5f675    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_ordemfabricacao
    ADD CONSTRAINT tipo_material_id_refs_id_49d5f675 FOREIGN KEY (tipo_material_id) REFERENCES automacao_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.automacao_ordemfabricacao DROP CONSTRAINT tipo_material_id_refs_id_49d5f675;
       public       postgres    false    181    197    2270            	           2606    4107989 !   tipo_material_id_refs_id_6bd3f054    FK CONSTRAINT     �   ALTER TABLE ONLY automacao_material
    ADD CONSTRAINT tipo_material_id_refs_id_6bd3f054 FOREIGN KEY (tipo_material_id) REFERENCES automacao_tipomaterial(id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY public.automacao_material DROP CONSTRAINT tipo_material_id_refs_id_6bd3f054;
       public       postgres    false    181    2270    183            	           2606    4107267    user_id_refs_id_40c41112    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 S   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT user_id_refs_id_40c41112;
       public       postgres    false    172    168    2251            		           2606    4107272    user_id_refs_id_4dc23c39    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT user_id_refs_id_4dc23c39;
       public       postgres    false    170    2251    172            	      x�3�,-.M,������� $��      	   j   x�λ1Q{;�+	}r���8f�6�W���L�:A�N��#�t����Fg�^��E��D#dg24{n)2ي��ER�B��(�^,�^l���P��R�r���?Y��      	   <  x�u�Mn�0���)t��ԏe���6�e���hG�-
��y��Ar�P�p8T�4�=���7�}�c!������<�	�
S������xV9j��<۫��+6�([������Jo�yC=c���N� �@�x�mV�U�����Є�}�Hφ>��b�Gwz�j���O���JK�A�V0Xf|I�W<���N2��S7~x㢦$�k�o���=�]��pS�;�{C��_�h�#��3�jJI�M�}_�Ն��;j����)"�q)���]R�;��]4��F���Ԏ����M_�I;E�SZeyaGon]�
%^�� 
$�t���8���/%�H����d��#P���S�~�[�����j&jX�>���|mIpiPU��-.�JYC2��,l��2rY��d�R�~i+��a��-$nt����:�܊s�g�[�0�S��U,���6�D�d�|$^]��r�H��DT�B}�FZ�Ċ�av��3���&���.N�E�S��"M�����\�'����x���GXzi�B���7�Nx(�+j�Ζ�Cu�[+��o��O��҄      	   I  x�m��N�@�5<E욒�0HL$�`)--U3)��A�^���ў��3�Ie�����("�A7J�ڛ)MK����k������ޗ��P��l�nϋ�ϓ|Q��$���x��8����� �� �RI0��R7��?a`�K���)��-+y���S�u'�n�o�S��t�U�6�s)��Oդ��mW�oS�� j��-:�F��e:�GZ1{V�����Q���͗�L{Vb�T'�nڰ ����݌���!�y�G�3c�ב�F�t� ��+K3T :���D�����������,Ww��R!���M����ʲ�	d~�      	      x�3�4�4����� �Z      	      x������ � �      #	      x������ � �       	   $   x�3�4��M,I-�L�Q00�2�s�|#�=... ��	'      &	   W   x�M��	�0�o�%r��Mv��s�$P�����E!<F�%� 	s�^"�a��5�S ��*�G��A{���TȽ���k���      %	   &   x�3�442662�45�36�2r9�L�L�b���� U��      "	      x������ � �      '	      x������ � �      $	      x������ � �      !	      x������ � �      	       x�3��,�W�M,I-�L�Q00����� ZY      	   }  x�ŖM��F���W��O�>��[��n)9FZ��g�hf�0N�~
��i������y����*pC����P�V��'�n��K���}�Z6��{��MAK��){�4��FrF*T����g�"6ݾ����Wt,ȟ�ɞ��T����
�cfĘ�����e�\o��P��6��ܕ���t8��/�Dx%I?��?~=v�ˋ+B�F������(��y����[�\���mwE�	�
}�j`���5�s4V�N )Ȅ�*zcF,���{c�c&�=��m�8�!GC���Cи�z��Hk:RiIQthU@c�=�v�ڎ��b�Ĳ��6���+�KD�x
#W�%��o5���c�8�,}�٭]D����EdN�Ĳ�y��Z#]��M���2��a(Q�#��
�H���
�p|�i��{�^��Oz�P�T�g����6��ٺ�c���I2p���i��p�T�d���"�\&���,���e2�uS�t#C,��yNV�DIB~oU��Ȱ�8��B�ͺ���xx;��_�f{����_R��S�+a����p�:�q�t����I�%{r�W[�O��7@�����h� �&��lh�S�6�׮��WWdZd{0�ti�?��)*��k��QB�|��
��މX7��<9�3���Vl��u�y��]dI�m�K�$�V3%���Y���8z��2o󼭯�|�9���+{�����#�,$,�l0��Wm�_N��$q�S��l���"\��CzDH�V��o�������m?m����{�~��b���yuI�5�-�y������S��*	V�u�W��BᏄ�cs?�*Ku���[�?t���F�������y����2t|�9&�D&��͈�!�W�0��v      	     x�m�MR� ��ݧ����^`f�c�.ݴ�d��) ��ǅ��	!������t:����pԇs���}��X�#�^�LR�+���"��E�})p^�.���7p�FĠ��5mң�-���c?�T�MQ�NqNR7O��f:J�'
���-;a���O��^������*&�X��.c�k��X�<s q0����FZ��v�+���l��v`M�(�wg����9���'�r'��M�9Ї3]���弜�:{Q��"~x���      	   �  x����n�0�kx�� ȇ���&��� Rjbkorh;@ ����J}���hF�?������l9 ��n7�zُ��:\���'�����uj"A��"�y@d�����X���m�x��j����t�2M)�#O�S����k�B�d������r��uyd{�{~��5C��d\5p�z���t+�R�E.,��H6�&Y��{?A �pg�z��gb�9�ۄ3��m'O{���j	�R8�ӞNe[��B����L�ac�:�5de~ZU���ݠ;T�Liq�-qV��Ɯ!�̨�EҐ`)���|5lG�X�`�}VD1�o�P,�(�'�Ͽ����E<��r�i���ٽ��s���.�>&?1����g���& 6v9��<�u�e��7�����b�C��e(��4?�x�3����o�7�N�_�  �      	   �   x����� ��<�/�i���Y�4��F�G�����f�aGJ��a!{Zgd-  9,!�
H�P��Ro���u�혒��3�������޻�Y��GhY��adb'I�/)����KU�И6�t��s<?�+tK���nK<�`���ʖj�a�	���y�GC�f^Ͽ5����Ԉ�5]��R��Bu�     