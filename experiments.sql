toc.dat                                                                                             0000600 0004000 0002000 00000170321 14220762624 0014450 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP       5                    z            experiments    9.1.24    9.1.24 �    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false         8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false         9           1262    16384    experiments    DATABASE     }   CREATE DATABASE experiments WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_AU.UTF-8' LC_CTYPE = 'en_AU.UTF-8';
    DROP DATABASE experiments;
             postgres    false                     2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false         :           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    7         ;           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT USAGE ON SCHEMA public TO nrao;
                  postgres    false    7                     3079    11647    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false         <           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1         �            1255    17124    update_modified_column()    FUNCTION     �   CREATE FUNCTION update_modified_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.modified = CURRENT_DATE;
    RETURN NEW;
END;
$$;
 /   DROP FUNCTION public.update_modified_column();
       public       observer    false    583    7         �            1259    16439 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         observer    false    7         =           0    0 
   auth_group    ACL     �   REVOKE ALL ON TABLE auth_group FROM PUBLIC;
REVOKE ALL ON TABLE auth_group FROM observer;
GRANT ALL ON TABLE auth_group TO observer;
GRANT SELECT ON TABLE auth_group TO grafanareader;
            public       observer    false    169         �            1259    16437    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       observer    false    169    7         >           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       observer    false    168         �            1259    16449    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         observer    false    7         ?           0    0    auth_group_permissions    ACL     �   REVOKE ALL ON TABLE auth_group_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_group_permissions FROM observer;
GRANT ALL ON TABLE auth_group_permissions TO observer;
GRANT SELECT ON TABLE auth_group_permissions TO grafanareader;
            public       observer    false    171         �            1259    16447    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       observer    false    7    171         @           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       observer    false    170         �            1259    16431    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         observer    false    7         A           0    0    auth_permission    ACL     �   REVOKE ALL ON TABLE auth_permission FROM PUBLIC;
REVOKE ALL ON TABLE auth_permission FROM observer;
GRANT ALL ON TABLE auth_permission TO observer;
GRANT SELECT ON TABLE auth_permission TO grafanareader;
            public       observer    false    167         �            1259    16429    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       observer    false    167    7         B           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       observer    false    166         �            1259    16457 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         observer    false    7         C           0    0 	   auth_user    ACL     �   REVOKE ALL ON TABLE auth_user FROM PUBLIC;
REVOKE ALL ON TABLE auth_user FROM observer;
GRANT ALL ON TABLE auth_user TO observer;
GRANT SELECT ON TABLE auth_user TO grafanareader;
            public       observer    false    173         �            1259    16467    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         observer    false    7         D           0    0    auth_user_groups    ACL     �   REVOKE ALL ON TABLE auth_user_groups FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_groups FROM observer;
GRANT ALL ON TABLE auth_user_groups TO observer;
GRANT SELECT ON TABLE auth_user_groups TO grafanareader;
            public       observer    false    175         �            1259    16465    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       observer    false    175    7         E           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       observer    false    174         �            1259    16455    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       observer    false    7    173         F           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       observer    false    172         �            1259    16475    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         observer    false    7         G           0    0    auth_user_user_permissions    ACL     �   REVOKE ALL ON TABLE auth_user_user_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_user_permissions FROM observer;
GRANT ALL ON TABLE auth_user_user_permissions TO observer;
GRANT SELECT ON TABLE auth_user_user_permissions TO grafanareader;
            public       observer    false    177         �            1259    16473 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       observer    false    177    7         H           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       observer    false    176         �            1259    16587    catalog_correlator    TABLE     L   CREATE TABLE catalog_correlator (
    name character varying(4) NOT NULL
);
 &   DROP TABLE public.catalog_correlator;
       public         observer    false    7         I           0    0    catalog_correlator    ACL     �   REVOKE ALL ON TABLE catalog_correlator FROM PUBLIC;
REVOKE ALL ON TABLE catalog_correlator FROM observer;
GRANT ALL ON TABLE catalog_correlator TO observer;
GRANT SELECT ON TABLE catalog_correlator TO grafanareader;
            public       observer    false    180         �            1259    16595    catalog_experiment    TABLE     �   CREATE TABLE catalog_experiment (
    name character varying(6) NOT NULL,
    schedate date,
    correlator_id character varying(4),
    type_id character varying(4),
    correlation_status boolean DEFAULT false NOT NULL
);
 &   DROP TABLE public.catalog_experiment;
       public         observer    false    1858    7         J           0    0    catalog_experiment    ACL     �   REVOKE ALL ON TABLE catalog_experiment FROM PUBLIC;
REVOKE ALL ON TABLE catalog_experiment FROM observer;
GRANT ALL ON TABLE catalog_experiment TO observer;
GRANT SELECT ON TABLE catalog_experiment TO grafanareader;
            public       observer    false    181         �            1259    16846    catalog_experimentinstance    TABLE     b  CREATE TABLE catalog_experimentinstance (
    id integer NOT NULL,
    recorded date,
    scans integer,
    sched_size integer,
    rec_size integer,
    station character varying(2) NOT NULL,
    "extract" character varying(1) DEFAULT 'p'::character varying NOT NULL,
    transfer character varying(1) DEFAULT 'p'::character varying NOT NULL,
    data_status character varying(1) DEFAULT 'n'::character varying NOT NULL,
    experiment_id character varying(6),
    raid_id character varying(16),
    ship_to character varying(24),
    path character varying(256),
    hobart character varying(1) NOT NULL
);
 .   DROP TABLE public.catalog_experimentinstance;
       public         observer    false    1861    1862    1863    7         K           0    0    catalog_experimentinstance    ACL     �   REVOKE ALL ON TABLE catalog_experimentinstance FROM PUBLIC;
REVOKE ALL ON TABLE catalog_experimentinstance FROM observer;
GRANT ALL ON TABLE catalog_experimentinstance TO observer;
GRANT SELECT ON TABLE catalog_experimentinstance TO grafanareader;
            public       observer    false    189         �            1259    16844 !   catalog_experimentinstance_id_seq    SEQUENCE     �   CREATE SEQUENCE catalog_experimentinstance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.catalog_experimentinstance_id_seq;
       public       observer    false    7    189         L           0    0 !   catalog_experimentinstance_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE catalog_experimentinstance_id_seq OWNED BY catalog_experimentinstance.id;
            public       observer    false    188         �            1259    17055 !   catalog_experimentinstance_module    TABLE     �   CREATE TABLE catalog_experimentinstance_module (
    id integer NOT NULL,
    experimentinstance_id integer NOT NULL,
    module_id character varying(10) NOT NULL
);
 5   DROP TABLE public.catalog_experimentinstance_module;
       public         observer    false    7         M           0    0 !   catalog_experimentinstance_module    ACL       REVOKE ALL ON TABLE catalog_experimentinstance_module FROM PUBLIC;
REVOKE ALL ON TABLE catalog_experimentinstance_module FROM observer;
GRANT ALL ON TABLE catalog_experimentinstance_module TO observer;
GRANT SELECT ON TABLE catalog_experimentinstance_module TO grafanareader;
            public       observer    false    191         �            1259    17053 (   catalog_experimentinstance_module_id_seq    SEQUENCE     �   CREATE SEQUENCE catalog_experimentinstance_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE public.catalog_experimentinstance_module_id_seq;
       public       observer    false    191    7         N           0    0 (   catalog_experimentinstance_module_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE catalog_experimentinstance_module_id_seq OWNED BY catalog_experimentinstance_module.id;
            public       observer    false    190         �            1259    16652    catalog_module    TABLE     �   CREATE TABLE catalog_module (
    vsn character varying(8) NOT NULL,
    size integer,
    free integer,
    location character varying(2),
    modified date,
    ship character varying(20),
    transit boolean NOT NULL
);
 "   DROP TABLE public.catalog_module;
       public         observer    false    7         O           0    0    catalog_module    ACL     �   REVOKE ALL ON TABLE catalog_module FROM PUBLIC;
REVOKE ALL ON TABLE catalog_module FROM observer;
GRANT ALL ON TABLE catalog_module TO observer;
GRANT SELECT ON TABLE catalog_module TO grafanareader;
GRANT SELECT ON TABLE catalog_module TO nrao;
            public       observer    false    185         �            1259    16660    catalog_raid    TABLE     �   CREATE TABLE catalog_raid (
    name character varying(16) NOT NULL,
    freespace integer,
    ip character varying(16) NOT NULL,
    path character varying(100),
    size integer
);
     DROP TABLE public.catalog_raid;
       public         observer    false    7         P           0    0    catalog_raid    ACL     �   REVOKE ALL ON TABLE catalog_raid FROM PUBLIC;
REVOKE ALL ON TABLE catalog_raid FROM observer;
GRANT ALL ON TABLE catalog_raid TO observer;
GRANT SELECT ON TABLE catalog_raid TO grafanareader;
            public       observer    false    186         �            1259    16608    catalog_storage    TABLE       CREATE TABLE catalog_storage (
    id integer NOT NULL,
    server_name character varying(100) NOT NULL,
    ip character varying(100) NOT NULL,
    port character varying(100) NOT NULL,
    freespace integer,
    transferrate integer,
    correlator_id character varying(4)
);
 #   DROP TABLE public.catalog_storage;
       public         observer    false    7         Q           0    0    catalog_storage    ACL     �   REVOKE ALL ON TABLE catalog_storage FROM PUBLIC;
REVOKE ALL ON TABLE catalog_storage FROM observer;
GRANT ALL ON TABLE catalog_storage TO observer;
GRANT SELECT ON TABLE catalog_storage TO grafanareader;
            public       observer    false    183         �            1259    16606    catalog_storage_id_seq    SEQUENCE     x   CREATE SEQUENCE catalog_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.catalog_storage_id_seq;
       public       observer    false    7    183         R           0    0    catalog_storage_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE catalog_storage_id_seq OWNED BY catalog_storage.id;
            public       observer    false    182         �            1259    16619    catalog_type    TABLE     F   CREATE TABLE catalog_type (
    name character varying(4) NOT NULL
);
     DROP TABLE public.catalog_type;
       public         observer    false    7         S           0    0    catalog_type    ACL     �   REVOKE ALL ON TABLE catalog_type FROM PUBLIC;
REVOKE ALL ON TABLE catalog_type FROM observer;
GRANT ALL ON TABLE catalog_type TO observer;
GRANT SELECT ON TABLE catalog_type TO grafanareader;
            public       observer    false    184         �            1259    16535    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
 $   DROP TABLE public.django_admin_log;
       public         observer    false    1857    7         T           0    0    django_admin_log    ACL     �   REVOKE ALL ON TABLE django_admin_log FROM PUBLIC;
REVOKE ALL ON TABLE django_admin_log FROM observer;
GRANT ALL ON TABLE django_admin_log TO observer;
GRANT SELECT ON TABLE django_admin_log TO grafanareader;
            public       observer    false    179         �            1259    16533    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       observer    false    7    179         U           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       observer    false    178         �            1259    16421    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         observer    false    7         V           0    0    django_content_type    ACL     �   REVOKE ALL ON TABLE django_content_type FROM PUBLIC;
REVOKE ALL ON TABLE django_content_type FROM observer;
GRANT ALL ON TABLE django_content_type TO observer;
GRANT SELECT ON TABLE django_content_type TO grafanareader;
            public       observer    false    165         �            1259    16419    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       observer    false    165    7         W           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       observer    false    164         �            1259    16410    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         observer    false    7         X           0    0    django_migrations    ACL     �   REVOKE ALL ON TABLE django_migrations FROM PUBLIC;
REVOKE ALL ON TABLE django_migrations FROM observer;
GRANT ALL ON TABLE django_migrations TO observer;
GRANT SELECT ON TABLE django_migrations TO grafanareader;
            public       observer    false    163         �            1259    16408    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       observer    false    163    7         Y           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       observer    false    162         �            1259    16802    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         observer    false    7         Z           0    0    django_session    ACL     �   REVOKE ALL ON TABLE django_session FROM PUBLIC;
REVOKE ALL ON TABLE django_session FROM observer;
GRANT ALL ON TABLE django_session TO observer;
GRANT SELECT ON TABLE django_session TO grafanareader;
            public       observer    false    187         ;           2604    16442    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       observer    false    169    168    169         <           2604    16452    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       observer    false    171    170    171         :           2604    16434    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       observer    false    167    166    167         =           2604    16460    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       observer    false    173    172    173         >           2604    16470    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       observer    false    174    175    175         ?           2604    16478    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       observer    false    177    176    177         D           2604    16849    id    DEFAULT     �   ALTER TABLE ONLY catalog_experimentinstance ALTER COLUMN id SET DEFAULT nextval('catalog_experimentinstance_id_seq'::regclass);
 L   ALTER TABLE public.catalog_experimentinstance ALTER COLUMN id DROP DEFAULT;
       public       observer    false    189    188    189         H           2604    17058    id    DEFAULT     �   ALTER TABLE ONLY catalog_experimentinstance_module ALTER COLUMN id SET DEFAULT nextval('catalog_experimentinstance_module_id_seq'::regclass);
 S   ALTER TABLE public.catalog_experimentinstance_module ALTER COLUMN id DROP DEFAULT;
       public       observer    false    190    191    191         C           2604    16611    id    DEFAULT     j   ALTER TABLE ONLY catalog_storage ALTER COLUMN id SET DEFAULT nextval('catalog_storage_id_seq'::regclass);
 A   ALTER TABLE public.catalog_storage ALTER COLUMN id DROP DEFAULT;
       public       observer    false    183    182    183         @           2604    16538    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       observer    false    178    179    179         9           2604    16424    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       observer    false    164    165    165         8           2604    16413    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       observer    false    162    163    163                   0    16439 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       observer    false    169    2101       2078.dat [           0    0    auth_group_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('auth_group_id_seq', 1, true);
            public       observer    false    168                    0    16449    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       observer    false    171    2101       2080.dat \           0    0    auth_group_permissions_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 2, true);
            public       observer    false    170                   0    16431    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       observer    false    167    2101       2076.dat ]           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 43, true);
            public       observer    false    166         "          0    16457 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       observer    false    173    2101       2082.dat $          0    16467    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       observer    false    175    2101       2084.dat ^           0    0    auth_user_groups_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_user_groups_id_seq', 2, true);
            public       observer    false    174         _           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 4, true);
            public       observer    false    172         &          0    16475    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       observer    false    177    2101       2086.dat `           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 6, true);
            public       observer    false    176         )          0    16587    catalog_correlator 
   TABLE DATA               +   COPY catalog_correlator (name) FROM stdin;
    public       observer    false    180    2101       2089.dat *          0    16595    catalog_experiment 
   TABLE DATA               a   COPY catalog_experiment (name, schedate, correlator_id, type_id, correlation_status) FROM stdin;
    public       observer    false    181    2101       2090.dat 2          0    16846    catalog_experimentinstance 
   TABLE DATA               �   COPY catalog_experimentinstance (id, recorded, scans, sched_size, rec_size, station, "extract", transfer, data_status, experiment_id, raid_id, ship_to, path, hobart) FROM stdin;
    public       observer    false    189    2101       2098.dat a           0    0 !   catalog_experimentinstance_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('catalog_experimentinstance_id_seq', 2977, true);
            public       observer    false    188         4          0    17055 !   catalog_experimentinstance_module 
   TABLE DATA               Z   COPY catalog_experimentinstance_module (id, experimentinstance_id, module_id) FROM stdin;
    public       observer    false    191    2101       2100.dat b           0    0 (   catalog_experimentinstance_module_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('catalog_experimentinstance_module_id_seq', 1557, true);
            public       observer    false    190         .          0    16652    catalog_module 
   TABLE DATA               U   COPY catalog_module (vsn, size, free, location, modified, ship, transit) FROM stdin;
    public       observer    false    185    2101       2094.dat /          0    16660    catalog_raid 
   TABLE DATA               @   COPY catalog_raid (name, freespace, ip, path, size) FROM stdin;
    public       observer    false    186    2101       2095.dat ,          0    16608    catalog_storage 
   TABLE DATA               e   COPY catalog_storage (id, server_name, ip, port, freespace, transferrate, correlator_id) FROM stdin;
    public       observer    false    183    2101       2092.dat c           0    0    catalog_storage_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('catalog_storage_id_seq', 9, true);
            public       observer    false    182         -          0    16619    catalog_type 
   TABLE DATA               %   COPY catalog_type (name) FROM stdin;
    public       observer    false    184    2101       2093.dat (          0    16535    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       observer    false    179    2101       2088.dat d           0    0    django_admin_log_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_admin_log_id_seq', 1109, true);
            public       observer    false    178                   0    16421    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       observer    false    165    2101       2074.dat e           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);
            public       observer    false    164                   0    16410    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       observer    false    163    2101       2072.dat f           0    0    django_migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_migrations_id_seq', 124, true);
            public       observer    false    162         0          0    16802    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       observer    false    187    2101       2096.dat V           2606    16446    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         observer    false    169    169    2102         [           2606    16501 ;   auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         observer    false    171    171    171    2102         ^           2606    16454    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         observer    false    171    171    2102         X           2606    16444    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         observer    false    169    169    2102         Q           2606    16487 6   auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         observer    false    167    167    167    2102         S           2606    16436    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         observer    false    167    167    2102         f           2606    16472    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         observer    false    175    175    2102         i           2606    16516 /   auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         observer    false    175    175    175    2102         `           2606    16462    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         observer    false    173    173    2102         l           2606    16480    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         observer    false    177    177    2102         o           2606    16530 >   auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         observer    false    177    177    177    2102         c           2606    16571    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         observer    false    173    173    2102         v           2606    16890 #   catalog_correlator_name_bcb8c46f_pk 
   CONSTRAINT     o   ALTER TABLE ONLY catalog_correlator
    ADD CONSTRAINT catalog_correlator_name_bcb8c46f_pk PRIMARY KEY (name);
 `   ALTER TABLE ONLY public.catalog_correlator DROP CONSTRAINT catalog_correlator_name_bcb8c46f_pk;
       public         observer    false    180    180    2102         x           2606    16888 %   catalog_correlator_name_bcb8c46f_uniq 
   CONSTRAINT     l   ALTER TABLE ONLY catalog_correlator
    ADD CONSTRAINT catalog_correlator_name_bcb8c46f_uniq UNIQUE (name);
 b   ALTER TABLE ONLY public.catalog_correlator DROP CONSTRAINT catalog_correlator_name_bcb8c46f_uniq;
       public         observer    false    180    180    2102         |           2606    16836 #   catalog_experiment_name_58bd11be_pk 
   CONSTRAINT     o   ALTER TABLE ONLY catalog_experiment
    ADD CONSTRAINT catalog_experiment_name_58bd11be_pk PRIMARY KEY (name);
 `   ALTER TABLE ONLY public.catalog_experiment DROP CONSTRAINT catalog_experiment_name_58bd11be_pk;
       public         observer    false    181    181    2102         ~           2606    16834 %   catalog_experiment_name_58bd11be_uniq 
   CONSTRAINT     l   ALTER TABLE ONLY catalog_experiment
    ADD CONSTRAINT catalog_experiment_name_58bd11be_uniq UNIQUE (name);
 b   ALTER TABLE ONLY public.catalog_experiment DROP CONSTRAINT catalog_experiment_name_58bd11be_uniq;
       public         observer    false    181    181    2102         �           2606    17072 ?   catalog_experimentinstan_experimentinstance_id_mo_69534f0d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentinstan_experimentinstance_id_mo_69534f0d_uniq UNIQUE (experimentinstance_id, module_id);
 �   ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentinstan_experimentinstance_id_mo_69534f0d_uniq;
       public         observer    false    191    191    191    2102         �           2606    17060 &   catalog_experimentinstance_module_pkey 
   CONSTRAINT        ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentinstance_module_pkey PRIMARY KEY (id);
 r   ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentinstance_module_pkey;
       public         observer    false    191    191    2102         �           2606    16851    catalog_experimentinstance_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY catalog_experimentinstance
    ADD CONSTRAINT catalog_experimentinstance_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.catalog_experimentinstance DROP CONSTRAINT catalog_experimentinstance_pkey;
       public         observer    false    189    189    2102         �           2606    17136    catalog_module_vsn_83f1ce2c_pk 
   CONSTRAINT     e   ALTER TABLE ONLY catalog_module
    ADD CONSTRAINT catalog_module_vsn_83f1ce2c_pk PRIMARY KEY (vsn);
 W   ALTER TABLE ONLY public.catalog_module DROP CONSTRAINT catalog_module_vsn_83f1ce2c_pk;
       public         observer    false    185    185    2102         �           2606    17138     catalog_module_vsn_83f1ce2c_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY catalog_module
    ADD CONSTRAINT catalog_module_vsn_83f1ce2c_uniq UNIQUE (vsn);
 Y   ALTER TABLE ONLY public.catalog_module DROP CONSTRAINT catalog_module_vsn_83f1ce2c_uniq;
       public         observer    false    185    185    2102         �           2606    16928    catalog_raid_name_d5d71b4b_pk 
   CONSTRAINT     c   ALTER TABLE ONLY catalog_raid
    ADD CONSTRAINT catalog_raid_name_d5d71b4b_pk PRIMARY KEY (name);
 T   ALTER TABLE ONLY public.catalog_raid DROP CONSTRAINT catalog_raid_name_d5d71b4b_pk;
       public         observer    false    186    186    2102         �           2606    16926    catalog_raid_name_d5d71b4b_uniq 
   CONSTRAINT     `   ALTER TABLE ONLY catalog_raid
    ADD CONSTRAINT catalog_raid_name_d5d71b4b_uniq UNIQUE (name);
 V   ALTER TABLE ONLY public.catalog_raid DROP CONSTRAINT catalog_raid_name_d5d71b4b_uniq;
       public         observer    false    186    186    2102         �           2606    16616    catalog_storage_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY catalog_storage
    ADD CONSTRAINT catalog_storage_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.catalog_storage DROP CONSTRAINT catalog_storage_pkey;
       public         observer    false    183    183    2102         �           2606    16949    catalog_type_name_37240d35_pk 
   CONSTRAINT     c   ALTER TABLE ONLY catalog_type
    ADD CONSTRAINT catalog_type_name_37240d35_pk PRIMARY KEY (name);
 T   ALTER TABLE ONLY public.catalog_type DROP CONSTRAINT catalog_type_name_37240d35_pk;
       public         observer    false    184    184    2102         �           2606    16951    catalog_type_name_37240d35_uniq 
   CONSTRAINT     `   ALTER TABLE ONLY catalog_type
    ADD CONSTRAINT catalog_type_name_37240d35_uniq UNIQUE (name);
 V   ALTER TABLE ONLY public.catalog_type DROP CONSTRAINT catalog_type_name_37240d35_uniq;
       public         observer    false    184    184    2102         r           2606    16544    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         observer    false    179    179    2102         L           2606    16428 1   django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         observer    false    165    165    165    2102         N           2606    16426    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         observer    false    165    165    2102         J           2606    16418    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         observer    false    163    163    2102         �           2606    16809    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         observer    false    187    187    2102         T           1259    16489    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         observer    false    169    2102         Y           1259    16502 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         observer    false    171    2102         \           1259    16503 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         observer    false    171    2102         O           1259    16488 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         observer    false    167    2102         d           1259    16518 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         observer    false    175    2102         g           1259    16517 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         observer    false    175    2102         j           1259    16532 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         observer    false    177    2102         m           1259    16531 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         observer    false    177    2102         a           1259    16572     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         observer    false    173    2102         t           1259    16900 %   catalog_correlator_name_bcb8c46f_like    INDEX     q   CREATE INDEX catalog_correlator_name_bcb8c46f_like ON catalog_correlator USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.catalog_correlator_name_bcb8c46f_like;
       public         observer    false    180    2102         y           1259    16891 )   catalog_experiment_correlator_id_f82cddd7    INDEX     j   CREATE INDEX catalog_experiment_correlator_id_f82cddd7 ON catalog_experiment USING btree (correlator_id);
 =   DROP INDEX public.catalog_experiment_correlator_id_f82cddd7;
       public         observer    false    181    2102         z           1259    16843 %   catalog_experiment_name_58bd11be_like    INDEX     q   CREATE INDEX catalog_experiment_name_58bd11be_like ON catalog_experiment USING btree (name varchar_pattern_ops);
 9   DROP INDEX public.catalog_experiment_name_58bd11be_like;
       public         observer    false    181    2102                    1259    16959 #   catalog_experiment_type_id_9b5043cb    INDEX     ^   CREATE INDEX catalog_experiment_type_id_9b5043cb ON catalog_experiment USING btree (type_id);
 7   DROP INDEX public.catalog_experiment_type_id_9b5043cb;
       public         observer    false    181    2102         �           1259    16865 1   catalog_experimentinstance_experiment_id_1670b571    INDEX     z   CREATE INDEX catalog_experimentinstance_experiment_id_1670b571 ON catalog_experimentinstance USING btree (experiment_id);
 E   DROP INDEX public.catalog_experimentinstance_experiment_id_1670b571;
       public         observer    false    189    2102         �           1259    16866 6   catalog_experimentinstance_experiment_id_1670b571_like    INDEX     �   CREATE INDEX catalog_experimentinstance_experiment_id_1670b571_like ON catalog_experimentinstance USING btree (experiment_id varchar_pattern_ops);
 J   DROP INDEX public.catalog_experimentinstance_experiment_id_1670b571_like;
       public         observer    false    189    2102         �           1259    17073 9   catalog_experimentinstance_experimentinstance_id_b5df3430    INDEX     �   CREATE INDEX catalog_experimentinstance_experimentinstance_id_b5df3430 ON catalog_experimentinstance_module USING btree (experimentinstance_id);
 M   DROP INDEX public.catalog_experimentinstance_experimentinstance_id_b5df3430;
       public         observer    false    191    2102         �           1259    17074 4   catalog_experimentinstance_module_module_id_166f0e5c    INDEX     �   CREATE INDEX catalog_experimentinstance_module_module_id_166f0e5c ON catalog_experimentinstance_module USING btree (module_id);
 H   DROP INDEX public.catalog_experimentinstance_module_module_id_166f0e5c;
       public         observer    false    191    2102         �           1259    17075 9   catalog_experimentinstance_module_module_id_166f0e5c_like    INDEX     �   CREATE INDEX catalog_experimentinstance_module_module_id_166f0e5c_like ON catalog_experimentinstance_module USING btree (module_id varchar_pattern_ops);
 M   DROP INDEX public.catalog_experimentinstance_module_module_id_166f0e5c_like;
       public         observer    false    191    2102         �           1259    16929 +   catalog_experimentinstance_raid_id_0a3f66e0    INDEX     n   CREATE INDEX catalog_experimentinstance_raid_id_0a3f66e0 ON catalog_experimentinstance USING btree (raid_id);
 ?   DROP INDEX public.catalog_experimentinstance_raid_id_0a3f66e0;
       public         observer    false    189    2102         �           1259    17139     catalog_module_vsn_83f1ce2c_like    INDEX     g   CREATE INDEX catalog_module_vsn_83f1ce2c_like ON catalog_module USING btree (vsn varchar_pattern_ops);
 4   DROP INDEX public.catalog_module_vsn_83f1ce2c_like;
       public         observer    false    185    2102         �           1259    16937    catalog_raid_name_d5d71b4b_like    INDEX     e   CREATE INDEX catalog_raid_name_d5d71b4b_like ON catalog_raid USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.catalog_raid_name_d5d71b4b_like;
       public         observer    false    186    2102         �           1259    16915 &   catalog_storage_correlator_id_c8c0a52a    INDEX     d   CREATE INDEX catalog_storage_correlator_id_c8c0a52a ON catalog_storage USING btree (correlator_id);
 :   DROP INDEX public.catalog_storage_correlator_id_c8c0a52a;
       public         observer    false    183    2102         �           1259    16916 +   catalog_storage_correlator_id_c8c0a52a_like    INDEX     }   CREATE INDEX catalog_storage_correlator_id_c8c0a52a_like ON catalog_storage USING btree (correlator_id varchar_pattern_ops);
 ?   DROP INDEX public.catalog_storage_correlator_id_c8c0a52a_like;
       public         observer    false    183    2102         �           1259    16952    catalog_type_name_37240d35_like    INDEX     e   CREATE INDEX catalog_type_name_37240d35_like ON catalog_type USING btree (name varchar_pattern_ops);
 3   DROP INDEX public.catalog_type_name_37240d35_like;
       public         observer    false    184    2102         p           1259    16555 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         observer    false    179    2102         s           1259    16556 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         observer    false    179    2102         �           1259    16811 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         observer    false    187    2102         �           1259    16810 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         observer    false    187    2102         �           2620    17125    update_module_modtime    TRIGGER     ~   CREATE TRIGGER update_module_modtime BEFORE UPDATE ON catalog_module FOR EACH ROW EXECUTE PROCEDURE update_modified_column();
 =   DROP TRIGGER update_module_modtime ON public.catalog_module;
       public       observer    false    192    185    2102         �           2606    16495 8   auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       observer    false    167    171    1874    2102         �           2606    16490 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       observer    false    171    1879    169    2102         �           2606    16481 5   auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       observer    false    1869    167    165    2102         �           2606    16510 3   auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       observer    false    169    1879    175    2102         �           2606    16505 1   auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       observer    false    1887    173    175    2102         �           2606    16524 8   auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       observer    false    167    177    1874    2102         �           2606    16519 ;   auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       observer    false    1887    177    173    2102         �           2606    16968 &   catalog_experiment_type_id_9b5043cb_fk    FK CONSTRAINT     �   ALTER TABLE ONLY catalog_experiment
    ADD CONSTRAINT catalog_experiment_type_id_9b5043cb_fk FOREIGN KEY (type_id) REFERENCES catalog_type(name) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.catalog_experiment DROP CONSTRAINT catalog_experiment_type_id_9b5043cb_fk;
       public       observer    false    1925    184    181    2102         �           2606    16860 8   catalog_experimentin_experiment_id_1670b571_fk_catalog_e    FK CONSTRAINT     �   ALTER TABLE ONLY catalog_experimentinstance
    ADD CONSTRAINT catalog_experimentin_experiment_id_1670b571_fk_catalog_e FOREIGN KEY (experiment_id) REFERENCES catalog_experiment(name) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.catalog_experimentinstance DROP CONSTRAINT catalog_experimentin_experiment_id_1670b571_fk_catalog_e;
       public       observer    false    189    1917    181    2102         �           2606    17097 ?   catalog_experimentin_experimentinstance_i_b5df3430_fk_catalog_e    FK CONSTRAINT     �   ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentin_experimentinstance_i_b5df3430_fk_catalog_e FOREIGN KEY (experimentinstance_id) REFERENCES catalog_experimentinstance(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentin_experimentinstance_i_b5df3430_fk_catalog_e;
       public       observer    false    191    1945    189    2102         �           2606    17140 4   catalog_experimentin_module_id_166f0e5c_fk_catalog_m    FK CONSTRAINT     �   ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentin_module_id_166f0e5c_fk_catalog_m FOREIGN KEY (module_id) REFERENCES catalog_module(vsn) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentin_module_id_166f0e5c_fk_catalog_m;
       public       observer    false    185    1930    191    2102         �           2606    16917 3   catalog_storage_correlator_id_c8c0a52a_fk_catalog_c    FK CONSTRAINT     �   ALTER TABLE ONLY catalog_storage
    ADD CONSTRAINT catalog_storage_correlator_id_c8c0a52a_fk_catalog_c FOREIGN KEY (correlator_id) REFERENCES catalog_correlator(name) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.catalog_storage DROP CONSTRAINT catalog_storage_correlator_id_c8c0a52a_fk_catalog_c;
       public       observer    false    1911    183    180    2102         �           2606    16545 6   django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       observer    false    179    1869    165    2102         �           2606    16550 1   django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       observer    false    1887    173    179    2102                                                                                                                                                                                                                                                                                                                       2078.dat                                                                                            0000600 0004000 0002000 00000000020 14220762624 0014247 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	stations
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                2080.dat                                                                                            0000600 0004000 0002000 00000000023 14220762624 0014243 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	1	40
2	1	34
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             2076.dat                                                                                            0000600 0004000 0002000 00000003266 14220762624 0014264 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add permission	4	add_permission
11	Can change permission	4	change_permission
12	Can delete permission	4	delete_permission
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add correlator	7	add_correlator
20	Can change correlator	7	change_correlator
21	Can delete correlator	7	delete_correlator
22	Can add raid	8	add_raid
23	Can change raid	8	change_raid
24	Can delete raid	8	delete_raid
25	Can add experiment instance	9	add_experimentinstance
26	Can change experiment instance	9	change_experimentinstance
27	Can delete experiment instance	9	delete_experimentinstance
28	Can add storage	10	add_storage
29	Can change storage	10	change_storage
30	Can delete storage	10	delete_storage
31	Can add type	11	add_type
32	Can change type	11	change_type
33	Can delete type	11	delete_type
34	Can add module	12	add_module
35	Can change module	12	change_module
36	Can delete module	12	delete_module
37	Can add experiment	13	add_experiment
38	Can change experiment	13	change_experiment
39	Can delete experiment	13	delete_experiment
40	Set module shipping reference	12	can_ship
41	Can add vb s_record	14	add_vbs_record
42	Can change vb s_record	14	change_vbs_record
43	Can delete vb s_record	14	delete_vbs_record
\.


                                                                                                                                                                                                                                                                                                                                          2082.dat                                                                                            0000600 0004000 0002000 00000001044 14220762624 0014251 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        2	pbkdf2_sha256$36000$hWHlsOy6i4AO$lg4zuW2xkAwyJehxcbdELzxAIRKPJsEfdV6LGEg+0Yk=	2022-03-08 04:04:17.386589+00	f	katherine			auscope-ke@list.utas.edu.au	f	t	2018-10-31 04:14:09+00
1	pbkdf2_sha256$36000$i8V7TPoULldd$el0Iu4YYJyhqQV75uKljyNadc+Dv70Ye0oV9Z5ouS90=	2022-03-23 01:35:59.958933+00	t	data_master	Warren	Hankey	wjhankey@gmail.com	t	t	2017-08-09 05:38:02+00
3	pbkdf2_sha256$36000$lQEjs7Gmi5Rl$zOaJ+/naF7EGd7ofGbtGObeS0CcMZ9zFzewsq7wnTjs=	2022-03-30 01:12:20.852411+00	f	yarragadee			auscope-yg@list.utas.edu.au	f	t	2018-10-31 04:20:26+00
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            2084.dat                                                                                            0000600 0004000 0002000 00000000021 14220762624 0014245 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	1
2	3	1
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               2086.dat                                                                                            0000600 0004000 0002000 00000000057 14220762624 0014260 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2	34
2	2	35
3	3	34
4	3	35
5	2	40
6	3	40
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 2089.dat                                                                                            0000600 0004000 0002000 00000000104 14220762624 0014254 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        WASH
BONN
HAYS
SHAO
VLBA
GSI
VIEN
CURT
HOB
CASS
RUSS
JIVE
UTAS
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                            2090.dat                                                                                            0000600 0004000 0002000 00000110271 14220762624 0014253 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        OHG110	2017-11-08	BONN	ivs	f
OHG109	2017-11-07	BONN	ivs	f
RD1708	2017-08-23	BONN	\N	t
RD1709	2017-09-26	SHAO	\N	t
R1869	2018-11-19	BONN	\N	t
AOV028	2017-11-28	GSI	aus	t
RD1411	2017-11-28	BONN	\N	f
R1871	2018-12-03	BONN	\N	t
R4811	2017-09-28	WASH	rivs	t
CRDS92	2017-11-28	WASH	\N	t
R4810	2017-09-21	WASH	rivs	t
AUA034	2017-11-28	VIEN	\N	t
R4809	2017-09-14	WASH	rivs	t
V456B	2017-10-06	CASS	lba	f
SFUS03	2017-11-28	HOB	\N	f
GS042	2017-11-28	HOB	\N	f
SXTEST	2017-11-28	HOB	\N	f
OC7305	2017-11-28	HOB	\N	f
V329G	2017-11-28	CASS	lba	f
RD1802	2018-01-30	SHAO	\N	t
VT02AJ	2017-11-28	CASS	\N	f
C1714	2017-12-11	BONN	cont	t
RD1901	2019-01-08	HAYS	\N	f
C1701	2017-11-28	BONN	cont	t
C1703	2017-11-28	BONN	cont	t
C1707	2017-11-28	BONN	cont	t
C1710	2017-11-28	BONN	cont	t
V562A	2017-11-28	CASS	\N	f
V559B	2017-11-28	CASS	\N	f
V547D	2017-11-28	CASS	\N	f
T2122	2017-11-14	BONN	\N	t
C1712	2017-12-09	BONN	cont	t
RD1902	2019-02-06	HAYS	\N	f
R4808	2017-09-09	WASH	rivs	t
R4884	2019-03-07	WASH	\N	t
R4807	2017-08-31	WASH	rivs	t
R4806	2017-08-24	WASH	rivs	t
R4805	2017-08-17	WASH	rivs	t
R4812	2017-10-05	WASH	rivs	t
CRF104	2018-01-09	SHAO	\N	t
RD1801	2018-01-10	SHAO	\N	t
AUA030	2017-10-09	VIEN	\N	t
AUA028	2017-10-06	VIEN	\N	t
AUA027	2017-09-19	VIEN	\N	t
AUA048	2019-01-16	VIEN	\N	t
AUA031	2017-11-01	VIEN	\N	t
AUA033	2017-12-13	VIEN	\N	t
AOV019	2018-01-23	SHAO	\N	t
R4813	2017-10-12	WASH	rivs	t
AUA037	2018-02-21	VIEN	\N	t
RD1903	2019-04-09	HAYS	\N	f
R1875	2019-01-02	BONN	\N	t
AUA029	2017-10-07	VIEN	\N	t
CRF105	2018-02-20	WASH	\N	t
T2126	2018-07-03	BONN	\N	t
CRF108	2018-08-01	SHAO	\N	t
RD1710	2017-10-04	HAYS	\N	t
CRDS91	2017-09-27	WASH	\N	t
V252BP	2018-12-09	CASS	\N	f
R4815	2017-10-26	WASH	rivs	t
C1713	2017-12-10	BONN	\N	t
R4814	2017-10-19	WASH	rivs	t
C1715	2017-12-12	BONN	\N	t
R1876	2019-01-07	BONN	\N	t
R4877	2019-01-17	WASH	\N	t
R4875	2019-01-03	WASH	\N	t
R4876	2019-01-10	WASH	\N	t
R1880	2019-02-04	BONN	\N	t
OHG115	2018-11-08	BONN	ivs	t
R1877	2019-01-14	BONN	\N	t
R4818	2017-11-16	WASH	rivs	t
R1878	2019-01-22	BONN	\N	t
R4878	2019-01-24	WASH	\N	t
R1879	2019-01-28	BONN	\N	t
R4879	2019-01-31	WASH	\N	t
CRDS99	2019-01-15	WASH	\N	t
R4880	2019-02-07	WASH	\N	t
R1809	2017-09-11	BONN	rivs	t
R1807	2017-08-28	BONN	rivs	t
R1881	2019-02-11	BONN	\N	t
R4881	2019-02-14	WASH	\N	t
R1810	2017-09-18	BONN	rivs	t
R1883	2019-02-25	BONN	\N	t
R1882	2019-02-19	BONN	\N	t
R4816	2017-11-02	WASH	rivs	t
R4883	2019-02-28	WASH	r	t
R4823	2018-01-04	WASH	rivs	t
R1884	2019-03-04	BONN	\N	t
AOV029	2018-11-23	SHAO	\N	t
R1811	2017-09-25	BONN	rivs	t
R1812	2017-10-02	BONN	rivs	t
R1813	2017-10-10	BONN	rivs	t
R1885	2019-03-11	BONN	\N	t
R4886	2019-03-21	WASH	\N	t
R1886	2019-03-18	BONN	\N	t
CRD100	2019-02-18	WASH	\N	t
R4885	2019-03-14	WASH	\N	t
R1833	2018-03-12	WASH	rivs	t
R1814	2017-10-16	BONN	rivs	t
R1815	2017-10-23	BONN	rivs	t
R1887	2019-03-25	BONN	\N	t
R1816	2017-10-30	BONN	rivs	t
R4887	2019-03-28	WASH	\N	t
R1849	2018-07-02	BONN	rivs	t
R4824	2018-01-11	WASH	rivs	t
R4817	2017-11-09	WASH	rivs	t
APSG41	2017-10-11	SHAO	\N	t
R1889	2019-04-08	BONN	\N	t
OHG111	2018-02-06	BONN	ivs	t
OHG112	2018-02-07	BONN	ivs	t
OHG113	2018-02-14	BONN	ivs	t
AUA049	2019-02-13	VIEN	\N	t
R4819	2017-11-21	WASH	rivs	t
R4889	2019-04-11	WASH	\N	t
CRF107	2018-06-26	SHAO	\N	t
RD1809	2018-11-28	SHAO	\N	t
OHG114	2018-11-07	BONN	ivs	t
R4825	2018-01-18	WASH	rivs	t
R4827	2018-02-01	WASH	rivs	t
AUA051	2019-04-14	VIEN	\N	t
R4828	2018-02-08	WASH	rivs	t
CRD101	2019-03-27	WASH	\N	t
R4820	2017-12-14	WASH	rivs	t
T2130	2019-01-29	BONN	\N	t
R4830	2018-02-22	WASH	rivs	t
OHG117	2019-02-05	BONN	\N	t
R4821	2017-12-19	WASH	rivs	t
AOV031	2019-01-21	SHAO	\N	t
R4831	2018-03-01	WASH	rivs	t
AOV033	2019-03-20	SHAO	\N	t
R4888	2019-04-04	WASH	\N	t
APSG44	2019-03-19	SHAO	\N	t
CRF110	2019-04-10	SHAO	\N	t
T2123	2018-02-13	BONN	\N	t
AOV032	2019-02-12	GSI 	\N	t
AUA050	2019-03-12	VIEN	\N	t
OHG118	2019-04-02	BONN	\N	t
RD1804	2018-06-27	HAYS	\N	t
T2131	2019-03-26	BONN	\N	t
AOV034	2019-04-03	SHAO	\N	t
R4832	2018-03-08	WASH	rivs	t
R4829	2018-02-15	WASH	rivs	t
AOV018	2017-11-15	GSI 	\N	t
V544C	2017-11-28	CASS	\N	f
V252BL	2017-11-28	CASS	\N	f
VC354	2017-11-28	CASS	\N	f
VC353	2017-11-28	CASS	\N	f
VC357	2017-11-28	CASS	\N	f
V456C	2017-11-28	CASS	\N	f
CRAB2	2017-11-28	HOB	\N	f
AUA032	2017-11-28	VIEN	aus	t
CRDS97	2017-11-28	WASH	\N	t
AOV020	2017-11-28	SHAO	\N	t
AUA035	2017-11-28	VIEN	\N	t
AUA036	2017-11-28	VIEN	\N	t
KS1710	2017-11-28	HOB	\N	f
KS1713	2017-11-28	HOB	\N	f
RD1805	2018-07-11	HAYS	\N	f
KS1802	2017-11-28	HOB	\N	f
RG30A	2017-11-28	RUSS	\N	f
VX999H	2017-11-28	CASS	\N	f
R1817	2017-11-06	BONN	rivs	t
R1852	2018-07-23	BONN	rivs	t
R1851	2018-07-16	BONN	rivs	t
R1818	2017-11-13	WASH	rivs	t
R1819	2017-11-20	WASH	rivs	t
V456D	2017-11-28	CASS	\N	f
R1821	2017-12-18	WASH	rivs	t
R1823	2018-01-02	WASH	rivs	t
R1824	2018-01-08	WASH	rivs	t
R1825	2018-01-15	WASH	rivs	t
R1826	2018-01-22	WASH	rivs	t
V561B	2017-11-28	CASS	\N	f
V566A	2017-11-28	CASS	\N	f
V255AE	2017-11-28	CASS	\N	f
R1828	2018-02-05	WASH	rivs	t
R1829	2018-02-12	WASH	rivs	t
R1830	2018-02-19	WASH	rivs	t
R1831	2018-02-26	WASH	rivs	t
RD1910	2019-09-25	HAYS	\N	f
RD1806	2018-08-22	HAYS	\N	f
R1827	2018-01-29	WASH	rivs	t
RD1803	2018-04-11	SHAO	\N	t
OHG116	2018-11-14	BONN	ivs	t
RK23CQ	\N	RUSS	\N	f
RK23CG	\N	RUSS	\N	f
RK23CD	\N	RUSS	\N	f
KN1901	\N	VIEN	\N	f
RK25AF	\N	RUSS	\N	f
V560C	\N	CASS	\N	f
RK25AO	\N	RUSS	\N	f
C1711	2017-11-28	BONN	cont	t
V255AG	2019-02-25	CASS	lba	f
CRDS93	2017-11-28	WASH	\N	t
V452F	2019-02-27	CASS	lba	f
V447H	\N	CASS	\N	f
V252BQ	\N	CASS	lba	f
GM074C	2019-02-23	JIVE	lba	f
GM074A	2019-02-21	JIVE	lba	f
T2127	2018-09-04	BONN	\N	t
MV012	2017-11-28	HOB	\N	t
MV011	2017-11-28	HOB	\N	t
MV024	2019-02-10	HOB	\N	t
CRF109	2018-11-27	SHAO	\N	t
R1893	2019-05-07	BONN	\N	t
R4894	2019-05-16	WASH	\N	t
AOV035	2019-05-14	GSI	\N	t
R4890	2019-04-17	WASH	\N	t
AUA054	2019-07-09	VIEN	\N	t
R1891	2019-04-23	BONN	\N	t
R4891	2019-04-25	WASH	\N	t
R1895	2019-05-20	BONN	\N	t
VX026A	\N	CASS	\N	f
R1896	2019-05-28	BONN	\N	t
R1892	2019-04-29	BONN	\N	t
R1898	2019-06-11	BONN	\N	t
R4896	2019-05-30	WASH	\N	t
R4897	2019-06-06	WASH	\N	t
R4898	2019-06-13	WASH	\N	t
AUA058	2019-11-28	VIEN	\N	t
SI0056	\N	VIEN	\N	t
AOV038	2019-08-07	GSI 	\N	t
RD1808	2018-10-10	SHAO	\N	t
R4892	2019-05-02	WASH	\N	t
R4893	2019-05-09	WASH	\N	t
R4895	2019-05-23	WASH	\N	t
R1902	2019-07-08	BONN	\N	t
OHG121	2019-10-07	BONN	\N	t
R1899	2019-06-17	BONN	\N	t
R1897	2019-06-03	BONN	\N	t
R4899	2019-06-20	WASH	\N	t
R1900	2019-06-24	BONN	\N	t
R4900	2019-06-27	WASH	\N	t
V580A	\N	CASS	\N	f
R1901	2019-07-01	BONN	\N	t
AOV036	2019-06-18	SHAO	\N	t
M0731	\N	\N	\N	f
R4902	2019-07-11	WASH	\N	t
R4903	2019-07-18	WASH	\N	t
R1904	2019-07-22	BONN	\N	t
CRF112	2019-07-16	SHAO	\N	t
R1907	2019-08-12	BONN	\N	t
R4904	2019-07-25	WASH	\N	t
R1905	2019-07-29	BONN	\N	t
R4907	2019-08-15	WASH	\N	t
R4905	2019-08-01	WASH	\N	t
T2132	2019-05-21	BONN	\N	t
R4906	2019-08-08	WASH	\N	t
R1894	2019-05-13	BONN	\N	t
R1908	2019-08-19	BONN	\N	t
R4908	2019-08-22	WASH	\N	t
R1909	2019-08-26	BONN	\N	t
R4909	2019-08-29	WASH	\N	t
OHG122	2019-11-05	BONN	\N	t
OHG120	2019-08-13	BONN	\N	t
R4915	2019-10-10	WASH	ivs	t
R4921	2019-11-21	WASH	\N	t
R1890	2019-04-15	BONN	\N	t
RD1904	2019-05-08	SHAO	\N	t
RD1905	2019-06-26	SHAO	\N	t
CRF111	2019-07-03	SHAO	\N	t
RD1906	2019-07-10	SHAO	\N	t
RD1907	2019-07-24	SHAO	\N	t
RD1908	2019-08-27	SHAO	\N	t
CRF113	2019-09-10	SHAO	\N	t
RD1909	2019-09-11	SHAO	\N	t
R1903	2019-07-15	BONN	\N	t
CRD102	2019-05-06	WASH	\N	t
AUA059	2019-12-04	VIEN	\N	t
ER051	\N	JIVE	lba	f
AOV039	2019-09-17	SHAO	aus	t
KN1902	\N	\N	\N	f
AOV040	2019-10-15	GSI	\N	t
AUA052	2019-05-15	VIEN	\N	t
AUA053	2019-06-19	VIEN	\N	t
T2133	2019-07-23	BONN	\N	t
AUA055	2019-08-20	VIEN	\N	t
T2134	2019-09-24	BONN	\N	t
OHG119	2019-06-04	BONN	\N	t
MSC001	\N	\N	\N	f
AUA056	2019-09-18	VIEN	\N	t
APSG45	2019-04-16	SHAO	\N	t
R1906	2019-08-05	BONN	\N	t
CRD103	2019-06-25	WASH	\N	t
V586A	2020-03-11	CASS	lba	f
T2136	2019-12-10	BONN	\N	t
R4901	2019-07-04	WASH	\N	t
R1832	2018-03-05	WASH	rivs	t
R1856	2018-08-20	BONN	rivs	t
R1808	2017-09-05	BONN	rivs	t
R1838	2018-04-16	BONN	rivs	t
V565A	2017-11-28	CASS	\N	t
R1861	2018-09-25	BONN	rivs	t
R1862	2018-10-01	BONN	rivs	t
R1863	2018-10-08	BONN	rivs	t
R1865	2018-10-22	BONN	rivs	t
R1848	2018-06-25	BONN	rivs	t
R1839	2018-04-23	WASH	rivs	t
R1840	2018-05-02	BONN	rivs	t
R1841	2018-05-08	BONN	rivs	t
R1842	2018-05-14	BONN	rivs	t
R1843	2018-05-22	BONN	rivs	t
R1850	2018-07-09	BONN	rivs	t
R1853	2018-07-30	BONN	rivs	t
R1854	2018-08-06	BONN	rivs	t
CRDS98	2017-11-28	WASH	\N	t
R1866	2018-10-29	BONN	rivs	t
R1867	2018-11-05	BONN	rivs	t
R1855	2018-08-13	BONN	rivs	t
R1857	2018-08-27	BONN	rivs	t
R1858	2018-09-03	BONN	rivs	t
R1859	2018-09-10	BONN	rivs	t
RG28AL	2017-11-28	RUSS	\N	f
RG30B	2017-11-28	RUSS	\N	f
GG083D	2017-11-28	RUSS	\N	f
GG083B	2017-11-28	RUSS	\N	f
C1702	2017-11-28	BONN	cont	t
C1704	2017-11-28	BONN	cont	t
C1705	2017-11-28	BONN	cont	t
C1706	2017-11-28	BONN	cont	t
RK18BS	2017-11-28	RUSS	\N	f
RK18BH	2017-11-28	RUSS	\N	f
RK18CH	2017-11-28	RUSS	\N	f
V558A	2017-11-28	CASS	\N	f
V4546D	2017-11-28	CASS	\N	f
AUSX01	2017-11-28	HOB	\N	f
V999BU	2017-11-28	CASS	\N	f
V525E	2017-11-28	CASS	\N	f
VT02AK	2017-11-28	CASS	\N	f
G323	2017-11-28	HOB	\N	f
CRAB	2017-11-28	HOB	\N	f
R4838	2017-11-28	WASH	rivs	t
R4850	2017-11-28	WASH	rivs	t
V447G	2017-11-28	CASS	\N	f
V560A	2017-11-28	CASS	\N	f
CRF106	2017-11-28	SHAO	\N	t
KS1801	2017-11-28	HOB	\N	f
V255AF	2017-11-28	CASS	\N	f
V554D	2017-11-28	CASS	\N	f
V544D	2017-11-28	CASS	\N	f
V252BM	2017-11-28	CASS	\N	f
V560B	2017-11-28	CASS	\N	f
RD1807	2017-11-28	HAYS	\N	f
R1847	2017-11-28	BONN	rivs	t
KS1803	2017-11-28	HOB	\N	f
AOV024	2017-11-28	SHAO	\N	t
AUA044	2017-11-28	VIEN	\N	t
KS1804	2017-11-28	HOB	\N	f
CRDS90	2017-11-28	WASH	\N	t
CRDS94	2017-11-28	WASH	\N	t
CRDS95	2017-11-28	WASH	\N	t
CRDS96	2017-11-28	WASH	\N	t
RG28BF	2017-11-28	RUSS	\N	f
RG28AT	2017-11-28	RUSS	\N	f
RG28AU	2017-11-28	RUSS	\N	f
GG084A	2017-11-28	RUSS	\N	f
GG083A	2017-11-28	RUSS	\N	f
GG083J	2017-11-28	RUSS	\N	f
AOV023	2017-11-28	SHAO	\N	t
AOV021	2017-11-28	SHAO	\N	t
AOV022	2017-11-28	SHAO	\N	t
RD1707	2017-11-28	HAYS	\N	t
RK18CU	2017-11-28	RUSS	\N	f
RK18AD	2017-11-28	RUSS	\N	f
RK18DJ	2017-11-28	RUSS	\N	f
RK18BV	2017-11-28	RUSS	\N	f
RK18CA	2017-11-28	RUSS	\N	f
RK18CG	2017-11-28	RUSS	\N	f
RK18EL	2017-11-28	RUSS	\N	f
RK18DN	2017-11-28	RUSS	\N	f
RK18EM	2017-11-28	RUSS	\N	f
RK18DO	2017-11-28	RUSS	\N	f
RK18DP	2017-11-28	RUSS	\N	f
RK18BD	2017-11-28	RUSS	\N	f
RK18FC	2017-11-28	RUSS	\N	f
RK18FY	2017-11-28	RUSS	\N	f
RK18GH	2017-11-28	RUSS	\N	f
RK18GI	2017-11-28	RUSS	\N	f
RK18GL	2017-11-28	RUSS	\N	f
RK18GM	2017-11-28	RUSS	\N	f
RK18GR	2017-11-28	RUSS	\N	f
RK18GV	2017-11-28	RUSS	\N	f
RK18HM	2017-11-28	RUSS	\N	f
RK18HQ	2017-11-28	RUSS	\N	f
RK18HR	2017-11-28	RUSS	\N	f
RK18HU	2017-11-28	RUSS	\N	f
RK18IR	2017-11-28	RUSS	\N	f
RK18IU	2017-11-28	RUSS	\N	f
RK18IV	2017-11-28	RUSS	\N	f
RK18JC	2017-11-28	RUSS	\N	f
RK18JN	2017-11-28	RUSS	\N	f
RK18KJ	2017-11-28	RUSS	\N	f
RK18KL	2017-11-28	RUSS	\N	f
AUA042	2017-11-28	VIEN	\N	t
AUA038	2017-11-28	VIEN	\N	t
AUA039	2017-11-28	VIEN	\N	t
R1868	2018-11-12	BONN	rivs	t
RK25AU	\N	RUSS	\N	f
MV022	2017-11-28	HOB	\N	t
AUA040	2017-11-28	VIEN	\N	t
R1837	2018-04-09	BONN	rivs	t
T2125	2017-11-28	BONN	\N	t
AUA041	2017-11-28	VIEN	\N	t
R1864	2018-10-15	BONN	rivs	t
R1870	2018-11-26	BONN	\N	t
R4871	2018-12-06	WASH	\N	t
R1872	2018-12-10	BONN	\N	t
APSG42	2017-11-28	SHAO	\N	t
AUA045	2017-11-28	VIEN	\N	t
AOV025	2017-11-28	SHAO	\N	t
V558B	2017-11-28	CASS	\N	t
V252BN	2017-11-28	CASS	\N	t
V329H	2017-11-28	CASS	\N	t
OHG107	2017-11-28	BONN	ivs	t
C1708	2017-11-28	BONN	\N	t
C1709	2017-11-28	BONN	cont	t
AUA047	2018-12-04	VIEN	\N	t
S7615B	2017-11-28	HOB	\N	f
APSG43	2017-11-28	SHAO	\N	t
R1888	2019-04-01	BONN	rivs	t
MV020	2017-11-28	HOB	\N	t
MV021	2017-11-28	HOB	\N	t
MV014	2017-11-28	HOB	\N	t
MV013	2017-11-28	HOB	\N	t
MV041	\N	HOB	\N	t
AOV030	2018-12-11	GSI	\N	t
AOV026	2017-11-28	SHAO	\N	t
MV030	2017-11-28	HOB	\N	t
AUA043	2017-11-28	VIEN	\N	t
AOV027	2017-11-28	SHAO	\N	t
AUM001	2017-11-28	HOB	\N	t
RK18KM	2017-11-28	RUSS	\N	f
RK18KN	2017-11-28	RUSS	\N	f
RK18KO	2017-11-28	RUSS	\N	f
RK18KP	2017-11-28	RUSS	\N	f
RK18KQ	2017-11-28	RUSS	\N	f
RK18KU	2017-11-28	RUSS	\N	f
RK18ON	2017-11-28	RUSS	\N	f
RK18OM	2017-11-28	RUSS	\N	f
RK18OJ	2017-11-28	RUSS	\N	f
R1846	2017-11-28	BONN	rivs	t
R1844	2017-11-28	BONN	rivs	t
R1845	2017-11-28	BONN	rivs	t
V252BO	2018-12-06	CASS	\N	f
RK25AX	\N	RUSS	\N	f
RK23CN	\N	RUSS	\N	f
RK23CA	\N	RUSS	\N	f
RK23BW	\N	RUSS	\N	f
RK25AC	\N	RUSS	\N	f
RK25AJ	\N	RUSS	\N	f
RK25AP	\N	RUSS	\N	f
R4873	2018-12-20	WASH	\N	t
R4872	2018-12-13	WASH	\N	t
R1873	2018-12-17	BONN	\N	t
VX027A	2019-02-22	CASS	lba	f
R1912	2019-09-16	BONN	\N	t
V252BR	2019-02-24	CASS	lba	f
R1913	2019-09-23	BONN	\N	t
RG39A	\N	RUSS	\N	f
RG39B	\N	RUSS	\N	f
RG39C	\N	RUSS	\N	f
RG39D	\N	RUSS	\N	f
RG39E	\N	RUSS	\N	f
RG39F	\N	RUSS	\N	f
V452E	2019-02-26	CASS	lba	f
VX026C	\N	CASS	lba	f
V558C	2019-02-28	CASS	lba	f
GM074B	2019-02-23	JIVE	lba	f
MV023	2019-02-09	HOB	\N	t
MV025	2019-02-17	HOB	\N	t
MV026	2019-03-16	HOB	aus	t
R1930	2020-01-21	BONN	\N	t
AUA046	2017-11-28	VIEN	\N	t
AUM010	2017-11-28	HOB	\N	t
T2137	2020-02-04	BONN	\N	t
VX026B	\N	CASS	\N	f
R1860	2017-11-28	BONN	rivs	t
DYN005	2019-06-08	HOB	aus	f
DYN006	2019-06-08	HOB	aus	f
DYN007	2019-06-08	HOB	aus	f
DYN008	2019-06-08	HOB	aus	f
VX028A	2019-05-16	CASS	lba	f
RUA031	2019-07-07	HOB	\N	f
R1914	2019-09-30	BONN	\N	t
R4914	2019-10-02	WASH	ivs	t
MV013b	2019-08-02	HOB	aus	f
MV014B	2019-08-03	HOB	aus	f
MV027	2019-04-13	HOB	lba	t
CRD104	2019-08-06	WASH	\N	t
VX026D	2019-09-08	CURT	lba	f
R1910	2019-09-02	BONN	\N	t
V252BS	2019-09-20	CURT	lba	f
V576A	2019-09-21	CURT	lba	f
R1911	2019-09-09	BONN	\N	t
R4912	2019-09-20	WASH	rivs	t
R1915	2019-10-08	BONN	\N	t
V558D	2019-09-27	CURT	lba	f
AOV037	2019-07-17	SHAO	\N	t
R4916	2019-10-17	WASH	ivs	t
R1917	2019-10-21	BONN	\N	t
R4917	2019-10-24	WASH	ivs	t
R1918	2019-10-28	BONN	rivs	t
R4918	2019-10-30	WASH	ivs	t
R1919	2019-11-04	BONN	rivs	t
R4919	2019-11-07	WASH	\N	t
DYN001	2019-05-11	HOB	aus	t
V560D	2019-12-02	CASS	lba	f
R4920	2019-11-14	WASH	ivs	t
R1921	2019-11-18	BONN	rivs	t
R4923	2019-12-05	WASH	ivs	t
R4929	2020-01-16	WASH	\N	t
R1922	2019-11-25	BONN	rivs	t
R4922	2019-11-26	WASH	\N	t
R1923	2019-12-02	BONN	rivs	t
V544E	2019-09-21	CASS	lba	f
R1924	2019-12-09	BONN	rivs	t
V255AH	2019-09-28	CASS	lba	f
V447J	2019-12-08	CASS	lba	f
V581A	2019-09-28	CASS	lba	f
DYN003	2019-05-12	HOB	aus	t
CRF116	2020-01-20	SHAO	\N	t
V525F	2019-09-29	CASS	lba	f
R1925	2019-12-17	BONN	rivs	t
R4925	2019-12-19	WASH	ivs	t
R4927	2020-01-02	WASH	ivs	t
R1928	2020-01-07	BONN	ivs	t
R4928	2020-01-09	WASH	\N	t
R1929	2020-01-13	BONN	\N	t
R4930	2020-01-23	WASH	\N	t
R1931	2020-01-27	BONN	\N	t
R4931	2020-01-30	WASH	\N	t
R1932	2020-02-03	BONN	\N	t
R4932	2020-02-06	WASH	\N	t
RD1810	2018-12-12	HAYS	\N	t
R4933	2020-02-13	WASH	\N	t
R4934	2020-02-20	WASH	\N	t
R1935	2020-02-24	BONN	\N	t
R4935	2020-02-27	WASH	\N	t
DYN002	2019-05-11	HOB	aus	t
R1933	2020-02-10	BONN	\N	t
RD2001	2020-01-15	SHAO	\N	t
OHG123	2020-01-14	BONN	\N	t
DYN012	2019-07-06	HOB	\N	t
MV015	2019-08-04	HOB	aus	t
MV042	2019-08-10	HOB	\N	t
CRD105	2020-02-05	WASH	\N	t
R1916	2019-10-14	BONN	\N	t
R1920	2019-11-11	BONN	rivs	t
MV028	2019-05-04	HOB	aus	t
V447I	2019-05-05	CASS	lba	t
DYN009	2019-07-06	HOB	aus	t
DYN010	2019-07-06	HOB	aus	t
DYN011	2019-07-06	HOB	\N	t
T2138	2020-04-21	BONN	\N	f
T2142	2020-11-10	BONN	\N	t
T2141	2020-09-15	BONN	\N	t
T2140	2020-07-14	BONN	\N	f
OHG127	2020-09-16	BONN	\N	f
OHG128	2020-11-04	BONN	\N	f
R4924	2019-12-12	WASH	\N	t
V253D	2020-02-17	CASS	lba	f
V191C	2020-02-18	CASS	lba	f
V252BT	2020-02-18	CASS	lba	f
V587A	2020-02-19	CASS	lba	f
V560E	2020-02-20	CASS	lba	f
ED045A	2020-02-22	JIVE	\N	f
ED045B	2020-02-23	JIVE	\N	f
R4939	2020-03-26	WASH	\N	t
R4951	2020-06-18	WASH	\N	t
R1952	2020-06-22	BONN	\N	t
R4952	2020-06-25	WASH	\N	t
R4964	2020-09-17	WASH	\N	t
R4936	2020-03-05	WASH	\N	t
V191D	2020-03-17	CASS	lba	f
V253E	2020-03-18	CASS	lba	f
R1936	2020-03-02	BONN	\N	t
V252BU	2020-03-21	CASS	lba	f
V589A	2020-03-22	CASS	lba	f
V255AI	2020-03-19	CASS	lba	f
R1966	2020-09-28	BONN	\N	t
R1937	2020-03-09	BONN	\N	t
AOV042	2019-12-03	GSI	\N	t
CRF115	2019-12-11	SHAO	\N	t
CRF121	2020-10-12	SHAO	\N	t
AVS001	2020-03-31	HOB	\N	f
R1939	2020-03-23	BONN	\N	t
R4938	2020-03-19	WASH	\N	t
R1940	2020-03-30	BONN	\N	t
AOV046	2020-04-28	SHAO	\N	t
R1941	2020-04-06	BONN	\N	t
AOV044	2020-02-11	GSI	\N	t
R4941	2020-04-08	WASH	\N	t
R4942	2020-04-16	WASH	\N	t
R1943	2020-04-20	BONN	\N	t
R4943	2020-04-22	WASH	\N	t
R1944	2020-04-27	BONN	\N	t
R1975	2020-11-30	BONN	\N	t
R1976	2020-12-07	BONN	\N	t
R1942	2020-04-14	BONN	\N	t
APSG46	2020-04-07	SHAO	\N	t
R4944	2020-04-29	WASH	\N	t
R4945	2020-05-07	WASH	\N	t
R1946	2020-05-11	BONN	\N	t
R4946	2020-05-14	WASH	\N	t
AOV047	2020-05-20	SHAO	\N	t
CRF118	2020-04-15	SHAO	\N	t
R4947	2020-05-21	WASH	\N	t
R1948	2020-05-26	BONN	\N	t
R4948	2020-05-28	WASH	\N	t
R4949	2020-06-04	WASH	\N	t
R1949	2020-06-02	BONN	\N	t
R1970	2020-10-26	BONN	\N	t
CRF120	2020-09-07	SHAO	\N	t
R4950	2020-06-10	WASH	\N	t
AOV043	2020-01-20	GSI	\N	t
AUM012	2020-02-15	HOB	\N	t
AUM013	2020-02-15	HOB	\N	t
AUM014	2020-02-16	HOB	\N	t
AUA063	2020-04-01	VIEN	\N	t
R1969	2020-10-19	BONN	\N	t
AUA066	2020-07-15	VIEN	\N	t
R1953	2020-06-29	BONN	\N	t
R4953	2020-07-01	WASH	\N	t
R1954	2020-07-06	BONN	\N	t
R4954	2020-07-09	WASH	\N	t
R1955	2020-07-13	BONN	\N	t
R4968	2020-10-15	WASH	\N	t
R4937	2020-03-12	WASH	\N	t
R4955	2020-07-16	WASH	\N	t
OHG126	2020-07-28	BONN	\N	t
R4956	2020-07-23	WASH	\N	t
AOV045	2020-03-17	HOB	\N	t
R1951	2020-06-15	BONN	\N	t
S001D	2020-04-12	HOB	spi	f
AOV049	2020-07-22	GSI 	\N	t
R4957	2020-07-30	WASH	\N	t
R1958	2020-08-03	BONN	\N	t
R1962	2020-08-31	BONN	\N	t
R4958	2020-08-06	WASH	\N	t
R1959	2020-08-12	BONN	\N	t
R4959	2020-08-13	WASH	\N	t
R4960	2020-08-20	WASH	\N	t
R4961	2020-08-27	WASH	\N	t
R4962	2020-09-03	WASH	\N	t
R1963	2020-09-08	BONN	\N	t
R4963	2020-09-10	WASH	\N	t
R1956	2020-07-20	BONN	\N	t
R4969	2020-10-22	WASH	\N	t
R1947	2020-05-18	BONN	\N	t
R1957	2020-07-27	BONN	\N	t
AUA062	2020-03-18	VIEN	\N	t
AOV048	2020-06-16	GSI 	\N	t
R4965	2020-09-24	WASH	\N	t
AUA067	2020-08-12	VIEN	\N	t
OHG124	2020-03-10	BONN	\N	t
APSG47	2020-05-13	SHAO	\N	t
AOV041	2019-11-12	GSI	aus	t
R1967	2020-10-05	BONN	\N	t
AUA069	2020-10-21	VIEN	\N	t
R4967	2020-10-08	WASH	\N	t
AUA065	2020-06-09	VIEN	\N	t
R1950	2020-06-08	BONN	\N	t
AUA064	2020-05-25	VIEN	\N	t
CRD110	2020-12-09	WASH	\N	t
R1978	2020-12-21	BONN	\N	t
AOV052	2020-10-07	SHAO	\N	t
AUA070	2020-11-11	HOB	\N	t
AUM011	2020-02-01	HOB	aus	t
CRD106	2020-05-05	WASH	\N	t
RD2005	2020-06-24	HAYS	\N	t
AUA068	2020-09-29	VIEN	\N	t
R4970	2020-10-29	WASH	\N	t
R1971	2020-11-03	BONN	\N	t
R4971	2020-11-05	WASH	\N	t
R1972	2020-11-09	BONN	\N	t
R1973	2020-11-16	BONN	\N	t
R1974	2020-11-24	BONN	\N	t
AOV054	2020-12-08	GSI 	\N	t
R1977	2020-12-14	BONN	\N	t
CRF117	2020-03-24	SHAO	\N	t
RD2004	2020-05-06	SHAO	\N	t
CRF119	2020-06-30	SHAO	\N	t
AOV050	2020-08-10	GSI 	\N	t
R1968	2020-10-13	BONN	\N	t
AOV053	2020-11-17	HOB	\N	t
SI0028	\N	VIEN	\N	t
R1965	2020-09-21	BONN	\N	t
AOV051	2020-09-23	SHAO	\N	t
T2139	2020-06-23	BONN	ivs	t
CRD107	2020-07-21	WASH	\N	t
OHG125	2020-05-12	BONN	\N	t
CRD108	2020-08-04	WASH	\N	t
CRD109	2020-11-25	WASH	\N	t
AUA060	2020-01-28	VIEN	\N	t
AUA071	2020-12-02	HOB	\N	t
AUA061	2020-02-25	VIEN	\N	t
MF0001	\N	\N	\N	f
SI0265	2020-09-22	VIEN	\N	t
T2135	2019-11-19	BONN	\N	t
S001E	2020-04-24	HOB	spi	f
AUMCT1	2020-06-06	HOB	aus	f
V558E	2020-03-30	CASS	lba	f
V583A	2020-03-11	CASS	lba	f
RD2007	2020-08-25	WASH	\N	f
MSC002	2020-06-20	HOB	aus	f
V587B	2020-06-25	CASS	lba	f
V560F	2020-06-26	CASS	lba	f
V594A	2020-06-27	CASS	lba	f
V578A	2020-06-27	CASS	lba	f
v594B	2020-06-28	CASS	lba	f
V255AJ	2020-06-29	CASS	lba	f
V591A	2020-06-26	CASS	lba	f
V252BV	2020-07-08	CASS	lba	f
V590A	2020-07-09	CASS	lba	f
V252BW	2020-07-10	CASS	lba	f
V578B	2020-07-13	CASS	lba	f
V591B	2020-07-14	CASS	lba	f
S001F	2020-05-01	HOB	spi	f
AUM002	2017-11-28	HOB	\N	t
AUM003	2017-11-28	HOB	\N	t
AUM004	2017-11-28	HOB	\N	t
AUM005	2017-11-28	HOB	\N	t
AUM007	2017-11-28	HOB	\N	t
AUM006	2017-11-28	HOB	\N	t
AUM017	2020-07-08	HOB	aus	t
S002A	\N	HOB	spi	f
AVS003	2020-07-06	HOB	aus	f
AUM018	2020-08-19	HOB	\N	t
F20188	\N	\N	\N	f
V590B	2020-07-12	CASS	lba	f
S003B	2020-05-29	HOB	spi	f
V583B	2020-07-13	CASS	lba	f
VX028B	2019-06-13	CASS	lba	f
AVS002	2020-06-24	HOB	aus	f
S003C	2020-06-05	HOB	spi	f
S003D	2020-06-12	HOB	spi	f
S004A	2020-08-08	HOB	spi	f
S004B	2020-08-14	HOB	spi	f
S005A	2020-08-09	HOB	spi	f
S005B	2020-08-15	HOB	spi	f
S005C	2020-08-21	HOB	spi	f
VT29A	2020-07-10	CASS	lba	f
S006A	2020-08-16	HOB	spi	f
SI0071	\N	VIEN	\N	f
SI0092	2020-07-01	VIEN	aus	f
SI0146	\N	VIEN	\N	f
SI0181	2020-06-29	VIEN	aus	f
SI0188	2020-07-06	VIEN	aus	f
SI0224	2020-08-11	VIEN	\N	f
S004C	2020-08-17	HOB	spi	f
SI0216	2020-08-04	VIEN	\N	f
SI0225	2020-08-13	VIEN	\N	f
S006B	2020-08-22	HOB	spi	f
S007A	2020-08-23	HOB	spi	f
AVS005	2020-09-15	HOB	aus	f
SI0308	2020-11-04	VIEN	\N	f
V581B	2020-08-18	CASS	lba	f
AVS004	2020-09-02	HOB	\N	f
S007B	2020-08-28	HOB	spi	f
S008A	2020-08-24	HOB	spi	f
S008B	2020-08-29	HOB	spi	f
S009A	2020-08-30	HOB	spi	f
S009B	2020-09-05	HOB	spi	f
S010A	2020-08-31	HOB	spi	f
S010B	2020-09-06	HOB	spi	f
S011A	2020-09-04	HOB	spi	f
S011B	2020-09-11	HOB	spi	f
SI0237	2020-08-24	VIEN	\N	f
ST003	2020-09-03	SHAO	aus	f
S008C	2020-09-02	HOB	\N	f
SI0252	2020-09-08	VIEN	\N	f
SI0258	2020-09-14	VIEN	\N	f
SI0279	2020-10-05	VIEN	\N	f
SI0287	2020-10-13	VIEN	\N	f
S010C	2020-09-14	HOB	\N	f
S011C	2020-09-26	HOB	aus	f
V447K	2020-09-16	CASS	lba	f
SI0300	2020-10-26	VIEN	\N	t
SI0293	2020-10-20	VIEN	\N	f
S004D	2020-08-29	HOB	\N	f
AUM009	2017-11-28	HOB	\N	t
SI0202	2020-07-21	VIEN	\N	t
SI0209	2020-07-28	VIEN	\N	t
SI0174	2020-06-21	VIEN	aus	f
S012A	2020-10-11	HOB	\N	f
S001G	2020-10-10	HOB	\N	f
SI0273	2020-09-29	VIEN	\N	t
SI0335	2020-12-01	VIEN	\N	f
SI0314	2020-11-10	VIEN	\N	f
SI0321	2020-11-17	VIEN	\N	f
SI0329	2020-11-25	VIEN	\N	f
SI0349	2020-12-15	VIEN	\N	f
S009C	2020-09-25	HOB	\N	f
S001H	2020-10-13	HOB	aus	f
S001I	2020-10-17	HOB	aus	f
S001J	2020-10-31	HOB	\N	f
S001K	2020-10-25	HOB	\N	f
SI0342	2020-12-08	VIEN	\N	f
SI0316	2020-11-11	VIEN	\N	f
V600A	2020-11-22	CURT	lba	f
V596A	2020-11-20	CURT	lba	f
V252BX	2020-11-21	CURT	lba	f
SI0272	2020-09-29	VIEN	\N	t
SI0161	2020-08-20	VIEN	\N	t
T2143	\N	BONN	\N	f
SI0294	2020-10-21	VIEN	aus	t
T2P144	2021-01-12	BONN	\N	f
OHG129	2021-02-23	BONN	\N	f
SI0244	2020-09-01	VIEN	\N	f
SI0356	2020-12-22	VIEN	\N	f
AUM016	2020-05-24	HOB	aus	t
R4980	2021-01-07	WASH	\N	t
R1981	2021-01-11	BONN	\N	t
R4981	2021-01-14	WASH	\N	t
R1982	2021-01-18	BONN	\N	t
CRF122	2021-01-26	SHAO	\N	t
R4982	2021-01-21	WASH	\N	t
AUM019	2020-09-22	HOB	\N	t
AOV055	2021-01-17	GSI 	\N	t
R1984	2021-02-01	BONN	\N	t
RD2009	2020-11-23	SHAO	\N	t
R4984	2021-02-04	WASH	\N	t
S003A	2020-05-22	HOB	spi	t
SI0337	2020-12-03	VIEN	\N	t
R4985	2021-02-11	WASH	\N	t
R4986	2021-02-18	WASH	\N	t
AUA057	2019-10-09	VIEN	\N	t
R4983	2021-01-28	WASH	\N	t
R4987	2021-02-25	WASH	\N	t
AUM020	2020-10-14	HOB	\N	t
AUM021	2020-11-02	HOB	\N	t
AUA072	2021-01-19	HOB	\N	t
RD2101	2021-01-13	SHAO	\N	t
R1983	2021-01-25	BONN	\N	t
R1987	2021-02-22	BONN	\N	t
AUA073	2021-02-24	VIEN	\N	t
R1985	2021-02-08	BONN	\N	t
CRD111	2021-02-02	WASH	\N	t
RV145	2021-01-27	VLBA	\N	t
AUM022	2020-11-23	HOB	\N	t
CRD112	2021-05-04	WASH	\N	t
T2145	2021-03-30	BONN	\N	f
AOV066	2021-12-15	GSI 	\N	t
RV149	2021-09-08	VLBA	\N	t
OHG130	2021-04-28	BONN	\N	f
T2146	2021-05-11	BONN	\N	f
OHG131	2021-06-08	BONN	\N	f
T2147	2021-07-13	BONN	\N	f
OHG132	2021-08-03	BONN	\N	f
T2148	2021-09-14	BONN	\N	f
T2149	2021-10-19	BONN	\N	f
OHG133	2021-10-27	BONN	\N	f
AUA082	2021-11-09	VIEN	\N	f
T2P150	2021-11-30	BONN	\N	f
CRD116	2021-12-01	WASH	\N	f
OHG134	2021-12-07	BONN	\N	f
AUA083	2021-12-08	VIEN	\N	f
R11029	2021-12-13	BONN	\N	f
R41029	2021-12-16	WASH	\N	f
R41030	2021-12-22	WASH	\N	f
V255AK	2020-12-04	CASS	lba	f
V595A	2020-11-05	CASS	lba	f
R1980	2021-01-04	BONN	rivs	t
S004G	2021-01-24	HOB	\N	f
AUM026	2021-02-10	HOB	\N	t
S005D	2021-01-30	HOB	aus	f
S004H	2021-01-29	HOB	\N	f
S005E	2021-02-06	HOB	aus	f
S005F	2021-02-12	HOB	aus	f
S004I	2021-03-13	HOB	aus	f
S005G	2021-02-18	HOB	aus	f
S006C	2021-02-19	HOB	aus	f
S005H	2021-02-22	HOB	aus	f
S006D	2021-02-23	HOB	aus	f
S007C	2021-02-20	HOB	spi	f
S008D	2021-02-21	HOB	spi	f
PULSAR	\N	\N	\N	f
V594B	2020-06-28	CASS	lba	f
R1988	2021-03-01	BONN	\N	t
AUM023	2020-12-15	HOB	\N	t
AUM030	2021-03-16	HOB	\N	t
R4988	2021-03-04	WASH	\N	t
S004E	2021-01-26	HOB	\N	f
S004F	2021-01-22	HOB	\N	f
R4989	2021-03-11	WASH	\N	t
R1990	2021-03-15	BONN	\N	t
R4990	2021-03-18	WASH	\N	t
AOV057	2021-03-22	SHAO	\N	t
R4991	2021-03-25	WASH	\N	t
DPT04A	\N	HOB	\N	f
R4993	2021-04-08	WASH	\N	t
R1992	2021-03-29	BONN	\N	t
R1994	2021-04-12	BONN	\N	t
AUA074	2021-03-09	VIEN	\N	t
R4994	2021-04-15	WASH	\N	t
CRD113	2021-07-27	WASH	\N	t
R1999	2021-05-18	BONN	\N	t
R1995	2021-04-19	BONN	\N	t
AUA075	2021-04-20	VIEN	\N	t
R1998	2021-05-10	BONN	\N	t
R4996	2021-04-29	WASH	\N	t
R1997	2021-05-03	BONN	\N	t
R4997	2021-05-06	WASH	\N	t
R4998	2021-05-13	WASH	\N	t
R11002	2021-06-07	BONN	\N	t
AUM028	2021-03-03	HOB	\N	t
AUM034	2021-06-15	HOB	\N	t
R4999	2021-05-20	WASH	\N	t
R41000	2021-05-27	WASH	\N	t
AUM029	2021-03-10	HOB	\N	t
AUM027	2021-03-02	HOB	\N	t
R11001	2021-05-31	BONN	\N	t
AOV056	2021-02-03	HOB	\N	t
AUM031	2021-03-17	HOB	\N	t
AUM032	2021-04-13	HOB	\N	t
R11004	2021-06-21	BONN	\N	t
R41002	2021-06-09	WASH	\N	t
R41001	2021-06-03	WASH	\N	t
R41003	2021-06-17	WASH	\N	t
R41004	2021-06-24	WASH	\N	t
AUM025	2021-02-09	HOB	\N	t
AOV064	2021-10-11	GSI 	\N	t
R41005	2021-07-01	WASH	\N	t
R41006	2021-07-08	WASH	\N	t
R11024	2021-11-08	BONN	\N	t
R11007	2021-07-12	BONN	\N	t
R41007	2021-07-15	WASH	\N	t
R4995	2021-04-22	WASH	\N	t
CRF126	2021-09-06	SHAO	\N	t
R11005	2021-06-28	BONN	\N	t
R41008	2021-07-22	WASH	\N	t
R41009	2021-07-29	WASH	\N	t
R11010	2021-08-02	BONN	\N	t
R41010	2021-08-04	WASH	\N	t
APSG48	2021-07-20	SHAO	\N	t
CRF123	2021-04-07	SHAO	\N	t
R41011	2021-08-12	WASH	\N	t
RD2105	2021-06-23	SHAO	\N	t
R41012	2021-08-19	WASH	\N	t
R41013	2021-08-26	WASH	\N	t
AUA077	2021-06-01	VIEN	\N	t
R41014	2021-09-02	WASH	\N	t
RV148	2021-07-07	VLBA	\N	t
R41015	2021-09-09	WASH	\N	t
R11016	2021-09-13	BONN	\N	t
R41016	2021-09-16	WASH	\N	t
AOV059	2021-05-17	GSI 	\N	t
AUA076	2021-05-26	VIEN	\N	t
AUA080	2021-09-28	VIEN	\N	t
R41017	2021-09-23	WASH	\N	t
R41019	2021-10-07	WASH	\N	t
CRF125	2021-06-29	SHAO	\N	t
AOV062	2021-08-24	SHAO	\N	t
RV146	2021-03-24	VLBA	\N	t
RV147	2021-05-19	VLBA	\N	t
AOV061	2021-07-14	GSI 	\N	t
AOV060	2021-06-02	SHAO	\N	t
CRF124	2021-05-24	SHAO	\N	t
AOV058	2021-04-27	SHAO	\N	t
AOV063	2021-09-15	HOB	\N	t
R41018	2021-09-30	WASH	\N	t
R41020	2021-10-14	WASH	\N	t
R41021	2021-10-21	WASH	\N	t
R11022	2021-10-25	BONN	\N	t
AUA079	2021-08-11	VIEN	\N	t
R1991	2021-03-23	BONN	\N	t
R41022	2021-10-28	WASH	\N	t
R11023	2021-11-02	BONN	\N	t
R41023	2021-11-04	WASH	\N	t
R11003	2021-06-14	BONN	\N	t
R11025	2021-11-15	BONN	\N	t
RV150	2021-11-24	VLBA	\N	t
R41025	2021-11-18	WASH	\N	t
AUA078	2021-07-21	VIEN	\N	t
APSG49	2021-09-29	SHAO	\N	t
CRD115	2021-10-13	WASH	\N	t
AUA081	2021-10-26	VIEN	\N	t
R41024	2021-11-11	WASH	\N	t
R11026	2021-11-23	BONN	\N	t
R41026	2021-11-25	WASH	\N	t
R11027	2021-11-29	BONN	\N	t
R41027	2021-12-02	WASH	\N	t
R41028	2021-12-09	WASH	\N	t
AUM024	2021-01-20	HOB	\N	t
AOV065	2021-11-16	SHAO	\N	t
AUM039	2021-10-05	UTAS	\N	t
S006E	2021-03-02	CURT	aus	f
V592A	2021-02-09	CURT	\N	f
V252BY	2021-02-08	CURT	\N	f
V600B	2021-02-09	CURT	\N	f
S007G	2021-03-16	HOB	\N	f
S009F	2021-03-15	HOB	\N	f
S007F	2021-03-13	HOB	\N	f
S008G	2021-03-14	HOB	\N	f
S006F	2021-03-09	HOB	\N	f
S009E	2021-03-08	HOB	\N	f
S008F	2021-03-07	HOB	\N	f
S007E	2021-03-06	HOB	\N	f
S009D	2021-03-01	HOB	\N	f
S008E	2021-02-28	HOB	\N	f
S007D	2021-02-27	HOB	\N	f
R1989	2021-03-08	BONN	\N	t
V456E	2021-04-01	CURT	lba	f
S012B	2021-04-03	HOB	\N	f
DPT03A	2021-04-01	HOB	\N	f
DPT05A	2021-04-02	HOB	\N	f
DPT06A	2021-04-03	HOB	\N	f
R4992	2021-03-31	WASH	\N	t
S010F	2021-04-25	HOB	\N	f
S011F	\N	HOB	\N	f
S001L	2021-04-26	HOB	\N	f
S010D	2021-03-20	HOB	\N	f
S010E	2021-04-15	HOB	\N	f
S011D	2021-03-21	HOB	\N	f
S011E	2021-04-11	HOB	\N	f
AUM042	2021-11-24	UTAS	\N	t
V456F	2021-04-08	CURT	\N	f
V456G	\N	CURT	\N	f
SI1106	\N	\N	\N	f
V255AL	2021-05-06	CURT	\N	f
V252BZ	2021-05-07	CURT	lba	f
V589B	2021-05-08	CURT	lba	f
V592B	2021-05-09	CURT	lba	f
AUM033	2021-04-21	HOB	\N	t
SI1127	\N	\N	\N	f
A2112G	\N	\N	\N	f
AUM040	2021-10-18	UTAS	\N	f
AUM041	2021-11-03	UTAS	\N	f
SI1134	\N	\N	\N	f
R1996	2021-04-26	BONN	\N	t
si1141	2021-05-22	HOB	\N	f
si1148	2021-05-29	HOB	\N	f
si1155	2021-06-05	HOB	\N	f
si1161	2021-06-11	HOB	\N	f
SI1169	2021-06-19	HOB	\N	f
SI1141	2021-05-22	HOB	\N	f
SI1148	2021-05-29	HOB	\N	f
SI1155	2021-06-05	HOB	\N	f
SI1161	2021-06-11	HOB	\N	f
SI1176	2021-06-26	HOB	\N	f
SI1183	2021-07-03	HOB	\N	f
SI1190	2021-07-10	HOB	\N	f
SI1204	2021-07-24	HOB	\N	f
SI1211	2021-07-31	HOB	\N	f
SI1225	2021-08-14	HOB	\N	f
SI1217	2021-08-06	HOB	\N	f
SI1232	2021-08-21	HOB	\N	f
SI1239	2021-08-28	HOB	\N	f
SI1246	2021-09-04	HOB	\N	f
S003E	2021-05-31	HOB	\N	f
S014A	2021-05-30	HOB	\N	f
S010G	2021-05-02	HOB	\N	f
S011G	2021-05-03	HOB	\N	f
S001M	2021-05-04	HOB	\N	f
R1001	\N	\N	\N	f
S014B	2021-06-07	HOB	\N	f
S003F	2021-06-05	HOB	\N	f
S009G	2021-05-31	HOB	\N	f
FM005	2021-05-15	HOB	\N	f
FM008	2021-05-29	HOB	\N	f
FM009	2021-06-05	HOB	\N	f
FM007	2021-05-22	HOB	\N	f
FM006	2021-05-22	HOB	\N	f
VX029A	2021-04-29	CASS	\N	f
S015A	2021-06-11	HOB	\N	f
A2104J	\N	\N	\N	f
V576B	2021-06-14	CASS	lba	f
V576C	2021-06-28	CASS	\N	f
S015B	2021-06-25	HOB	\N	f
S004J	2021-07-07	HOB	\N	f
S004K	2021-07-09	HOB	\N	f
FM004	2021-07-03	HOB	\N	f
FM010	2021-07-10	HOB	\N	f
FM012	2021-07-17	HOB	\N	f
FM013	2021-07-24	HOB	\N	f
FM015	2021-07-24	HOB	\N	f
FM017	2021-07-31	HOB	\N	f
V595B	2021-07-16	CASS	\N	f
VX030A	2021-07-16	CASS	\N	f
V560H	2021-07-17	CASS	\N	f
V576D	2021-07-17	CASS	\N	f
V603A	2021-10-09	SHAO	lba	t
AAAMCD	2021-07-21	HOB	\N	f
S016A	2021-07-27	HOB	spi	f
S016B	2021-07-28	HOB	spi	f
S005I	2021-08-28	HOB	spi	f
S017A	2021-08-05	HOB	spi	f
S006G	2021-08-06	HOB	spi	f
S016C	2021-08-07	HOB	spi	f
S005J	2021-08-08	HOB	spi	f
S007H	2021-08-10	HOB	spi	f
S017B	2021-08-11	HOB	spi	f
S006H	2021-08-13	HOB	spi	f
S006I	2021-08-14	HOB	spi	f
S016D	2021-08-15	HOB	spi	f
S008H	2021-08-16	HOB	spi	f
S007I	2021-08-18	HOB	spi	f
S019A	2021-08-19	HOB	spi	f
S008I	2021-08-24	HOB	spi	f
S018B	2021-08-27	HOB	spi	f
S017C	2021-08-21	HOB	spi	f
R11012	2021-08-17	BONN	\N	t
S005K	2021-09-10	HOB	\N	f
S007J	2021-09-11	HOB	\N	f
S010H	2021-09-08	HOB	\N	f
S011H	2021-09-09	HOB	\N	f
AUM035	2021-07-12	UTAS	\N	t
SI1253	2021-09-11	HOB	\N	f
SI1260	2021-09-18	HOB	\N	f
SI1274	2021-10-02	HOB	\N	f
S018E	2021-10-01	HOB	\N	f
S017D	2021-09-30	HOB	\N	f
S010J	2021-10-03	HOB	\N	f
S018F	2021-10-05	HOB	\N	f
S018C	2021-09-18	HOB	\N	f
S010I	2021-09-19	HOB	\N	f
S018D	2021-09-19	HOB	\N	f
S019C	2021-09-21	HOB	\N	f
S011I	2021-09-17	HOB	\N	f
S019B	2021-09-21	HOB	spi	f
S020B	2021-09-24	HOB	\N	f
S020A	2021-08-20	HOB	spi	f
R11008	2021-07-19	BONN	\N	t
SI1113	2021-05-01	HOB	\N	t
R11019	2021-10-04	BONN	\N	t
V603B	2021-10-21	CURT	\N	f
SI1302	2021-10-30	HOB	\N	f
SI1309	2021-11-06	HOB	\N	f
R11021	2021-10-18	BONN	\N	t
VO1327	2021-11-24	BONN	rivs	f
V255AM	2021-11-25	CASS	lba	f
AUM036	2021-07-28	UTAS	\N	t
AUM037	2021-08-25	UTAS	\N	t
V596B	2021-07-18	CASS	\N	t
V606A	2021-07-17	CASS	\N	t
VX031A	2021-07-19	CASS	\N	t
SI1197	2021-07-17	HOB	\N	t
V605A	2021-07-17	CASS	\N	t
AUM044	2021-12-14	UTAS	\N	t
AUM043	2021-12-06	UTAS	\N	t
R11038	2022-02-14	BONN	\N	t
R11037	2022-02-07	BONN	\N	t
V609A	2021-12-05	CURT	lba	f
V594C	2021-12-06	CURT	lba	f
V594D	2021-12-10	CURT	lba	f
V589C	2021-12-12	CURT	lba	f
VX032A	2021-12-13	CURT	lba	f
CRD114	2021-08-18	WASH	\N	t
AUV004	2021-12-17	HOB	\N	f
R11033	2022-01-10	BONN	\N	f
T2P151	2022-01-11	BONN	\N	f
R41033	2022-01-13	WASH	\N	f
RV151	2022-01-19	VLBA	\N	f
CRD117	2022-01-25	WASH	\N	f
CRF128	2022-01-26	SHAO	\N	f
R41035	2022-01-27	WASH	\N	f
RD2202	2022-02-02	SHAO	\N	f
R41036	2022-02-03	WASH	\N	f
OHG135	2022-02-08	BONN	\N	f
RV152	2022-02-16	VLBA	\N	f
R41038	2022-02-17	WASH	\N	f
R11039	2022-02-21	BONN	\N	f
AUA085	2022-02-22	UTAS	\N	f
AOV068	2022-02-23	SHAO	\N	f
R41039	2022-02-24	WASH	\N	f
R11040	2022-02-28	BONN	\N	f
OHG136	2022-03-08	BONN	\N	f
AUM047	2022-03-09	UTAS	\N	f
AUA086	2022-03-15	UTAS	\N	f
AOV069	2022-03-16	UTAS	\N	f
R41042	2022-03-17	WASH	\N	f
R11043	2022-03-22	BONN	\N	f
AUM048	2022-03-23	UTAS	\N	f
RD2203	2022-03-23	SHAO	\N	f
R41043	2022-03-24	WASH	\N	f
R11044	2022-03-28	BONN	\N	f
T2152	2022-03-29	BONN	\N	f
CRF130	2022-03-30	SHAO	\N	f
R41044	2022-03-31	WASH	\N	f
R11045	2022-04-04	BONN	\N	f
R41045	2022-04-07	WASH	\N	f
R11046	2022-04-11	BONN	\N	f
R41046	2022-04-13	WASH	\N	f
R11047	2022-04-19	BONN	\N	f
AUA087	2022-04-20	UTAS	\N	f
R41047	2022-04-21	WASH	\N	f
R11048	2022-04-25	BONN	\N	f
AOV070	2022-04-26	SHAO	\N	f
R41048	2022-04-28	WASH	\N	f
R11049	2022-05-03	BONN	\N	f
RV153	2022-05-04	VLBA	\N	f
R41049	2022-05-05	WASH	\N	f
R11050	2022-05-09	BONN	\N	f
R41050	2022-05-12	WASH	\N	f
R11051	2022-05-16	BONN	\N	f
T2153	2022-05-17	BONN	\N	f
CRD118	2022-05-18	WASH	\N	f
R41051	2022-05-19	WASH	\N	f
R11052	2022-05-23	BONN	\N	f
AUA088	2022-05-24	UTAS	\N	f
R41052	2022-05-26	WASH	\N	f
AOV071	2022-05-30	GSI 	\N	f
R11053	2022-05-31	BONN	\N	f
R41053	2022-06-02	WASH	\N	f
AUA089	2022-06-06	UTAS	\N	f
R11054	2022-06-07	BONN	\N	f
AOV072	2022-06-08	UTAS	\N	f
R41054	2022-06-09	WASH	\N	f
R11055	2022-06-13	BONN	\N	f
OHG138	2022-06-14	BONN	\N	f
R41055	2022-06-16	WASH	\N	f
R11056	2022-06-21	BONN	\N	f
CRF131	2022-06-22	SHAO	\N	f
R41056	2022-06-23	WASH	\N	f
R11057	2022-06-27	BONN	\N	f
R41057	2022-06-30	WASH	\N	f
R11058	2022-07-04	BONN	\N	f
RV154	2022-07-05	VLBA	\N	f
R41058	2022-07-06	WASH	\N	f
APSG50	2022-07-07	SHAO	\N	f
R11059	2022-07-11	BONN	\N	f
T2154	2022-07-12	BONN	\N	f
AUA090	2022-07-13	UTAS	\N	f
R41059	2022-07-14	WASH	\N	f
R11060	2022-07-18	BONN	\N	f
CRD119	2022-07-19	WASH	\N	f
OHG139	2022-07-20	BONN	\N	f
R41060	2022-07-21	WASH	\N	f
R11061	2022-07-25	BONN	\N	f
AOV073	2022-07-26	GSI 	\N	f
R41061	2022-07-28	WASH	\N	f
R11062	2022-08-01	BONN	\N	f
AUA091	2022-08-02	UTAS	\N	f
R41062	2022-08-03	WASH	\N	f
AOV074	2022-08-04	SHAO	\N	f
R11063	2022-08-08	BONN	\N	f
R41063	2022-08-11	WASH	\N	f
R11064	2022-08-16	BONN	\N	f
CRD120	2022-08-17	WASH	\N	f
R41064	2022-08-18	WASH	\N	f
R11065	2022-08-22	BONN	\N	f
R41065	2022-08-25	WASH	\N	f
R11066	2022-08-29	BONN	\N	f
R41066	2022-09-01	WASH	\N	f
R11067	2022-09-05	BONN	\N	f
RV155	2022-09-06	VLBA	\N	f
CRF132	2022-09-07	SHAO	\N	f
R41067	2022-09-08	WASH	\N	f
R11068	2022-09-12	BONN	\N	f
T2155	2022-09-13	BONN	\N	f
R41068	2022-09-15	WASH	\N	f
R11069	2022-09-19	BONN	\N	f
AUA092	2022-09-20	UTAS	\N	f
CRD121	2022-09-21	WASH	\N	f
R41069	2022-09-22	WASH	\N	f
R11070	2022-09-26	BONN	\N	f
OHG140	2022-09-27	BONN	\N	f
AOV075	2022-09-28	GSI 	\N	f
R41070	2022-09-29	WASH	\N	f
AUA093	2022-10-10	UTAS	\N	f
R11072	2022-10-11	BONN	\N	f
R11074	2022-10-24	BONN	\N	f
AOV076	2022-10-25	UTAS	\N	f
R11075	2022-10-31	BONN	\N	f
R11076	2022-11-07	BONN	\N	f
R11077	2022-11-14	BONN	\N	f
AUA094	2022-11-15	UTAS	\N	f
CRD122	2022-11-16	WASH	\N	f
AOV077	2022-11-22	GSI 	\N	f
CRF133	2022-11-23	SHAO	\N	f
RV156	2022-11-28	VLBA	\N	f
R11080	2022-12-05	BONN	\N	f
AUA095	2022-12-07	UTAS	\N	f
AOV078	2022-12-15	SHAO	\N	f
APSG51	2022-12-20	SHAO	\N	f
VO1356	\N	\N	\N	f
V515D	2021-12-11	CURT	lba	t
R11032	\N	\N	\N	f
R41032	\N	\N	\N	f
R11034	2022-01-18	BONN	\N	t
R41034	2022-01-20	WASH	\N	t
R11035	2022-01-24	BONN	\N	t
OHG137	2022-04-12	BONN	\N	t
AUA084	2022-01-17	UTAS	\N	t
AUM045	2022-01-12	UTAS	\N	t
AOV067	2022-01-15	GSI 	\N	t
R11036	2022-01-31	BONN	\N	t
R41037	2022-02-10	WASH	\N	t
V252CA	2021-12-04	CURT	\N	t
R11041	2022-03-07	BONN	\N	t
R41040	2022-03-03	WASH	\N	t
AUM046	2022-02-16	UTAS	\N	t
R11042	2022-03-14	BONN	\N	t
R41041	2022-03-10	WASH	\N	t
CRF129	2022-02-01	SHAO	\N	t
VR2201	2022-01-20	HAYS	\N	f
S003H	2021-12-18	HOB	spi	f
S003I	2022-01-09	HOB	spi	f
S004L	2022-01-12	HOB	spi	f
S014C	2021-12-03	HOB	spi	f
S014E	2022-01-06	HOB	spi	f
S015C	2021-12-21	HOB	spi	f
AUM038	2021-09-21	UTAS	\N	t
Z22269	2022-09-26	UTAS	\N	f
V252CB	2022-02-09	CURT	lba	f
V583C	2022-02-10	CURT	lba	f
V515E	2022-02-11	CURT	lba	f
V607A	2022-02-12	CURT	lba	f
Z22276	2022-10-03	UTAS	\N	f
CRF127	2021-11-17	SHAO	\N	t
Z22024	\N	UTAS	\N	f
Z22045	2022-02-14	UTAS	\N	f
Z22031	2022-01-31	UTAS	\N	f
Z22038	2022-02-07	UTAS	\N	f
VT2049	\N	\N	\N	f
Z22283	2022-10-10	UTAS	\N	f
Z22290	2022-10-17	UTAS	\N	f
Z22297	2022-10-24	UTAS	\N	f
Z22304	2022-10-31	UTAS	\N	f
Z22311	2022-11-07	UTAS	\N	f
Z22318	2022-11-14	UTAS	\N	f
Z22325	2022-11-21	UTAS	\N	f
Z22332	2022-11-28	UTAS	\N	f
Z22339	2022-12-05	UTAS	\N	f
Z22346	2022-12-12	UTAS	\N	f
Z22353	2022-12-19	UTAS	\N	f
Z22360	2022-12-26	UTAS	\N	f
Z22081	2022-03-22	UTAS	\N	f
Z22059	2022-02-28	UTAS	\N	f
Z22066	2022-03-07	UTAS	\N	f
Z22073	2022-03-14	UTAS	\N	f
Z22087	2022-03-28	UTAS	\N	f
Z22094	2022-04-04	UTAS	\N	f
Z22101	2022-04-11	UTAS	\N	f
Z22108	2022-04-18	UTAS	\N	f
Z22115	2022-04-25	UTAS	\N	f
Z22122	2022-05-02	UTAS	\N	f
Z22129	2022-05-09	UTAS	\N	f
Z22136	2022-05-16	UTAS	\N	f
Z22143	2022-05-23	UTAS	\N	f
Z22150	2022-05-30	UTAS	\N	f
Z22157	2022-06-06	UTAS	\N	f
Z22164	2022-06-13	UTAS	\N	f
Z22171	2022-06-20	UTAS	\N	f
Z22178	2022-06-27	UTAS	\N	f
Z22185	2022-07-04	UTAS	\N	f
Z22192	2022-07-11	UTAS	\N	f
Z22199	2022-07-18	UTAS	\N	f
Z22206	2022-07-25	UTAS	\N	f
Z22213	2022-08-01	UTAS	\N	f
Z22220	2022-08-08	UTAS	\N	f
Z22227	2022-08-15	UTAS	\N	f
Z22234	2022-08-22	UTAS	\N	f
Z22241	2022-08-29	UTAS	\N	f
Z22248	2022-09-05	UTAS	\N	f
Z22255	2022-09-12	UTAS	\N	f
Z22262	2022-09-19	UTAS	\N	f
\.


                                                                                                                                                                                                                                                                                                                                       2098.dat                                                                                            0000600 0004000 0002000 00000471635 14220762624 0014301 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1608	\N	\N	2000	\N	cd	u	u	n	S011B	\N	Hobart	/mnt/rdsi/AUSTRAL/s011bcd/	u
2192	\N	\N	6380	\N	yg	u	u	d	AUM037	\N	\N	\N	u
1323	\N	44	\N	181	yg	u	u	d	SI0028	AUSTRAL	\N	/mnt/rd1/AUSTRAL/si0028yg	u
206	\N	\N	1650	\N	yg	u	u	d	R4827	\N	Washington (DHL)	\N	u
1794	\N	707	6290	6043	yg	u	u	d	AUA075	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua075yg/	u
1793	\N	\N	6530	\N	ke	u	u	d	AUA075	\N	Hobart	/mnt/rdsi/AUSTRAL/aua075ke	u
1792	\N	\N	6410	\N	hb	u	u	d	AUA075	\N	\N	vbs://flexbuffhb	u
1779	\N	198	\N	6431	yg	u	u	d	AOV057	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//aov057yg/	u
962	\N	\N	5000	\N	ho	u	u	n	V447I	\N	Hobart	\N	u
816	\N	200	1090	1064	yg	u	u	d	OHG120	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg120yg	u
1778	\N	\N	\N	\N	ke	u	u	d	AOV057	\N	Hobart	/mnt/rdsi/AUSTRAL/aov057ke/	u
1799	\N	244	5827	5400	yg	u	u	d	AOV058	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aov058yg/	u
1123	\N	47	1470	\N	ho	u	u	n	V581A	\N	Hobart	\N	u
210	\N	\N	1710	\N	yg	u	u	d	R4828	\N	Washington (DHL)	\N	u
5	\N	62	1600	1591	yg	u	u	d	R4806	\N	Washington (DHL)	\N	u
2184	\N	\N	6430	\N	hb	u	u	d	AUM035	\N	\N	\N	u
1891	\N	\N	\N	\N	yg	u	u	d	R41016	\N	Hobart (for e-transfer)	\N	u
1885	\N	\N	\N	\N	yg	u	u	d	R41015	\N	Hobart (for e-transfer)	\N	u
1877	\N	\N	\N	\N	yg	u	u	d	R41012	\N	Hobart (for e-transfer)	\N	u
1988	\N	\N	\N	\N	ke	u	u	d	AUM033	\N	\N	\N	u
2044	\N	75	\N	1166	ho	u	u	d	PULSAR	astro	\N	/mnt/rd1/astro//pulsarho/	u
2056	\N	\N	\N	\N	ho	u	p	d	V592A	\N	\N	\N	u
2514	\N	\N	\N	\N	hb	p	p	n	AUV004	\N	Hobart	\N	p
2531	\N	\N	2590	\N	yg	u	u	d	R11035	\N	\N	\N	u
2536	\N	\N	2280	\N	yg	u	u	d	R11036	\N	\N	\N	u
2517	\N	\N	\N	\N	hb	p	p	n	AUM045	\N	\N	\N	p
1966	\N	\N	\N	\N	hb	u	u	d	AUM026	\N	\N	vbs://flexbuflcd/	u
817	\N	212	850	815	ho	u	u	d	OHG120	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS/ohg120ho	u
1614	\N	\N	2500	\N	ke	u	u	n	ST003	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/st003ke	u
1458	\N	\N	6061	\N	cd	u	p	n	v594B	\N	Hobart	/mnt/rdsi/LBA/v594bcd/	u
1457	\N	\N	6061	\N	ho	u	p	n	v594B	\N	Hobart	/mnt/rdsi/LBA/v594bho/	u
1421	\N	34	\N	253	yg	u	u	n	SI0146	AUSTRAL	\N	/mnt/rd1/AUSTRAL/si0146yg	u
1071	\N	\N	1200	\N	cd	u	u	n	VX026D	\N	Hobart	\N	u
990	\N	\N	1800	\N	yg	u	u	n	DYN005	\N	Hobart	\N	u
1607	\N	\N	2000	\N	hb	u	p	n	S011B	\N	Hobart	\N	u
76	\N	4	\N	104	ho	u	u	n	RK18BH	astro	 	\N	u
934	2019-03-16	724	5900	3641	yg	u	u	n	MV026	flexbuf1	Hobart	\N	u
1070	\N	\N	1200	\N	ho	u	u	n	VX026D	\N	Hobart	\N	u
991	\N	\N	1800	\N	hb	u	u	n	DYN005	\N	Hobart	\N	u
281	\N	2	\N	80	cd	u	u	n	RK18BS	astro	Hobart (for e-transfer)	\N	u
378	\N	324	\N	7322	yg	u	u	n	V561B	LBA	Hobart (for e-transfer)	\N	u
2554	\N	\N	\N	\N	hb	p	p	n	AOV068	\N	\N	\N	p
1613	\N	\N	2500	\N	hb	u	u	n	ST003	\N	Hobart	/mnt/rdsi/AUSTRAL/st003hb/	u
2539	\N	\N	1405	\N	yg	u	u	d	R41036	\N	\N	\N	u
2528	\N	\N	3176	\N	yg	u	u	d	R11034	\N	\N	\N	u
2513	\N	\N	\N	\N	ke	u	u	n	AUV004	\N	Hobart	/mnt/rdsi/AUSTRAL/auv004ke/	u
2524	\N	\N	\N	\N	hb	p	p	d	AUA084	\N	\N	\N	p
2551	\N	\N	5644	\N	ke	c	p	n	AUA085	\N	\N	\N	p
2530	\N	\N	1497	\N	yg	u	u	d	R41034	\N	\N	\N	u
2548	\N	\N	\N	\N	yg	u	u	n	R41038	\N	\N	\N	u
2545	\N	\N	7470	\N	hb	p	p	n	AUM046	\N	\N	\N	p
594	\N	\N	1538	\N	yg	u	u	d	R4871	\N	Washington (DHL)	\N	u
323	\N	\N	1750	\N	yg	u	u	d	R4832	\N	Washington (DHL)	\N	u
626	\N	\N	1755	\N	yg	u	u	d	R4875	\N	Washington (DHL)	\N	u
641	\N	\N	1720	\N	yg	u	u	d	R4877	\N	Washington (DHL)	\N	u
25	\N	62	1500	1591	yg	u	u	d	R4807	\N	Washington (DHL)	\N	u
33	\N	62	1600	1591	yg	u	u	d	R4809	\N	Washington (DHL)	\N	u
1465	\N	\N	11100	\N	cd	u	u	d	V590A	\N	Hobart	/mnt/rdsi/LBA/v590acd/	u
46	\N	62	1800	1591	ke	u	u	d	R4811	IVS	Hobart (for e-transfer)	\N	u
1961	\N	\N	\N	\N	hb	u	u	d	AUM024	\N	\N	\N	u
1463	\N	\N	2800	\N	cd	u	u	d	V252BV	\N	Hobart	/mnt/rdsi/LBA/v252bvcd/	u
752	\N	\N	1533	\N	yg	u	u	d	R4893	\N	Washington (DHL)	\N	u
663	\N	\N	1645	\N	yg	u	u	d	R4880	\N	Washington (DHL)	\N	u
747	\N	\N	1578	\N	yg	u	u	d	R4892	\N	Washington (DHL)	\N	u
772	\N	\N	1620	\N	yg	u	u	d	R4898	\N	Washington (DHL)	\N	u
770	\N	\N	1900	\N	yg	u	u	d	R4897	\N	Washington (DHL)	\N	u
760	\N	\N	1900	\N	yg	u	u	d	R4894	\N	Washington (DHL)	\N	u
686	\N	\N	1662	\N	yg	u	u	d	R4884	\N	Washington (DHL)	\N	u
673	\N	\N	1675	\N	yg	u	u	d	R4881	\N	Washington (DHL)	\N	u
1127	\N	420	\N	7912	td	u	u	d	V447J	LBA	\N	\N	u
2555	\N	\N	\N	\N	ke	c	p	n	AOV068	\N	\N	\N	p
2520	\N	\N	\N	\N	yg	u	u	n	R41033	\N	\N	\N	p
2516	\N	223	\N	3651	yg	u	p	n	T2P151	IVS	\N	/mnt/rd1/IVS/	u
2522	\N	\N	\N	\N	ke	c	p	n	AOV067	\N	\N	\N	p
2515	\N	\N	2210	\N	yg	u	u	d	R11033	\N	\N	\N	u
2547	\N	859	5500	5254	yg	u	u	d	AUM046	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum046yg/	u
2532	\N	152	9420	9175	yg	u	p	n	CRD117	IVS1	\N	/mnt/rdsi/IVS//crd117yg/	u
2546	\N	\N	7540	\N	ke	c	p	n	AUM046	\N	\N	\N	p
2535	\N	\N	\N	\N	yg	u	u	d	R41035	\N	\N	\N	u
2540	\N	\N	2610	\N	yg	u	u	d	R11037	\N	\N	\N	u
2552	\N	812	5457	4894	yg	u	p	n	AUA085	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aua085yg/	u
2542	\N	\N	1316	\N	yg	u	u	d	R41037	\N	\N	\N	u
2521	\N	\N	\N	\N	hb	u	u	d	AOV067	\N	\N	/mnt/rdsi/AUSTRAL/	u
2550	\N	\N	5669	\N	hb	p	p	n	AUA085	\N	\N	\N	p
2557	\N	\N	\N	\N	yg	u	u	n	R41039	\N	\N	\N	p
2537	\N	151	7280	7112	yg	u	u	d	CRF129	IVS1	\N	/mnt/rdsi/IVS//crf129yg/	u
2529	\N	310	3360	3089	yg	u	u	n	RV151	IVS1	\N	/mnt/rdsi/IVS//rv151yg/	u
2543	\N	\N	\N	\N	yg	u	u	d	R11038	\N	\N	\N	u
2549	\N	\N	2490	\N	yg	u	u	n	R11039	\N	\N	\N	u
2483	\N	\N	\N	\N	hb	p	p	n	V255AM	\N	Hobart	\N	p
2481	\N	\N	\N	\N	ke	u	p	n	V255AM	\N	Hobart	\N	p
836	\N	185	6380	5930	ho	u	u	n	RD1910	IVS1	 	/mnt/rdsi/IVS/rd1910ho	u
2585	\N	\N	\N	\N	yg	p	p	n	R41043	\N	\N	\N	p
2484	\N	\N	2290	\N	yg	u	u	d	R11029	\N	\N	\N	u
1456	\N	\N	929	\N	cd	u	u	d	V578A	\N	Hobart	/mnt/rdsi/LBA//v578acd	u
2595	\N	\N	\N	\N	yg	p	p	d	OHG137	\N	\N	\N	p
2565	\N	\N	6370	\N	hb	p	p	n	AUM047	\N	\N	\N	p
1611	\N	\N	2000	\N	cd	u	p	n	S010B	\N	Hobart	\N	u
2482	\N	\N	\N	\N	cd	u	u	n	V255AM	\N	Hobart	\N	u
2586	\N	\N	2160	\N	yg	p	p	n	R11044	\N	\N	\N	p
2581	\N	\N	6710	\N	hb	p	p	n	AUM048	\N	\N	\N	p
2571	\N	\N	5480	\N	hb	p	p	n	AUA086	\N	\N	\N	p
2572	\N	\N	5450	\N	ke	p	p	n	AUA086	\N	\N	\N	p
1471	\N	153	2800	2442	yg	u	u	d	V252BW	LBA1	Hobart	/mnt/rdsi/LBA//v252bwyg/	u
2568	\N	\N	\N	\N	yg	u	u	d	R41041	\N	\N	\N	u
2566	\N	\N	\N	\N	ke	p	p	n	AUM047	\N	\N	\N	p
2576	\N	\N	\N	\N	ke	p	p	n	AOV069	\N	\N	\N	p
2582	\N	\N	\N	\N	ke	p	p	n	AUM048	\N	\N	\N	p
2593	\N	\N	\N	\N	yg	p	p	n	R41045	\N	\N	\N	p
2115	\N	\N	2500	\N	yg	u	u	n	S012B	\N	Hobart	\N	u
1664	\N	\N	500	\N	hb	u	u	n	SI0294	\N	Hobart	/mnt/rdsi/AUSTRAL//si0294hb	u
2596	\N	\N	\N	\N	yg	p	p	n	R41046	\N	\N	\N	p
2597	\N	\N	\N	\N	yg	p	p	n	R11047	\N	\N	\N	p
2598	\N	\N	\N	\N	hb	p	p	n	AUA087	\N	\N	\N	p
2599	\N	\N	\N	\N	ke	p	p	n	AUA087	\N	\N	\N	p
2600	\N	\N	\N	\N	yg	p	p	n	AUA087	\N	\N	\N	p
1610	\N	\N	2000	\N	hb	u	p	n	S010B	\N	Hobart	\N	u
1391	\N	2	\N	2	yg	u	u	n	MF0001	flexbuf0	\N	/mnt/flexbuf0/mf0001yg	u
2602	\N	\N	\N	\N	yg	p	p	n	R41047	\N	\N	\N	p
1616	\N	\N	2000	\N	hb	u	p	n	S008C	\N	Hobart	\N	u
2603	\N	\N	\N	\N	yg	p	p	n	R11048	\N	\N	\N	p
1469	\N	\N	2800	\N	cd	u	u	d	V252BW	\N	Hobart	/mnt/rdsi/LBA/v252bwcd/	u
2604	\N	\N	\N	\N	hb	p	p	n	AOV070	\N	\N	\N	p
1390	\N	74	\N	1076	yg	u	u	n	MSC001	flexbuf0	\N	/mnt/flexbuf0/msc001yg	u
744	\N	\N	\N	\N	yg	u	u	d	R4891	\N	Washington (DHL)	\N	u
2605	\N	\N	\N	\N	ke	p	p	n	AOV070	\N	\N	\N	p
2606	\N	\N	\N	\N	yg	p	p	n	AOV070	\N	\N	\N	p
2607	\N	\N	\N	\N	yg	p	p	n	R41048	\N	\N	\N	p
2608	\N	\N	\N	\N	yg	p	p	n	R11049	\N	\N	\N	p
2609	\N	\N	\N	\N	ho	p	p	n	RV153	\N	\N	\N	p
2610	\N	\N	\N	\N	yg	p	p	n	R41049	\N	\N	\N	p
2611	\N	\N	\N	\N	yg	p	p	n	R11050	\N	\N	\N	p
2612	\N	\N	\N	\N	ho	p	p	n	R11050	\N	\N	\N	p
2613	\N	\N	\N	\N	yg	p	p	n	R41050	\N	\N	\N	p
2614	\N	\N	\N	\N	yg	p	p	n	R11051	\N	\N	\N	p
2615	\N	\N	\N	\N	yg	p	p	n	T2153	\N	\N	\N	p
2616	\N	\N	\N	\N	yg	p	p	n	CRD118	\N	\N	\N	p
2617	\N	\N	\N	\N	ho	p	p	n	CRD118	\N	\N	\N	p
2618	\N	\N	\N	\N	yg	p	p	n	R41051	\N	\N	\N	p
2619	\N	\N	\N	\N	yg	p	p	n	R11052	\N	\N	\N	p
2620	\N	\N	\N	\N	hb	p	p	n	AUA088	\N	\N	\N	p
2621	\N	\N	\N	\N	ke	p	p	n	AUA088	\N	\N	\N	p
2622	\N	\N	\N	\N	yg	p	p	n	AUA088	\N	\N	\N	p
2623	\N	\N	\N	\N	ho	p	p	n	AUA088	\N	\N	\N	p
2624	\N	\N	\N	\N	yg	p	p	n	R41052	\N	\N	\N	p
2625	\N	\N	\N	\N	hb	p	p	n	AOV071	\N	\N	\N	p
2626	\N	\N	\N	\N	ke	p	p	n	AOV071	\N	\N	\N	p
2627	\N	\N	\N	\N	yg	p	p	n	AOV071	\N	\N	\N	p
2628	\N	\N	\N	\N	yg	p	p	n	R11053	\N	\N	\N	p
2629	\N	\N	\N	\N	yg	p	p	n	R41053	\N	\N	\N	p
2630	\N	\N	\N	\N	hb	p	p	n	AUA089	\N	\N	\N	p
2631	\N	\N	\N	\N	ke	p	p	n	AUA089	\N	\N	\N	p
2632	\N	\N	\N	\N	yg	p	p	n	AUA089	\N	\N	\N	p
2633	\N	\N	\N	\N	ho	p	p	n	AUA089	\N	\N	\N	p
2634	\N	\N	\N	\N	yg	p	p	n	R11054	\N	\N	\N	p
2635	\N	\N	\N	\N	ho	p	p	n	R11054	\N	\N	\N	p
2636	\N	\N	\N	\N	hb	p	p	n	AOV072	\N	\N	\N	p
2637	\N	\N	\N	\N	ke	p	p	n	AOV072	\N	\N	\N	p
2638	\N	\N	\N	\N	yg	p	p	n	AOV072	\N	\N	\N	p
2639	\N	\N	\N	\N	yg	p	p	n	R41054	\N	\N	\N	p
2640	\N	\N	\N	\N	yg	p	p	n	R11055	\N	\N	\N	p
2641	\N	\N	\N	\N	yg	p	p	n	OHG138	\N	\N	\N	p
2577	\N	689	6340	6035	yg	u	p	n	AOV069	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov069yg/	u
2587	\N	\N	980	\N	yg	p	p	n	T2152	\N	\N	\N	p
2591	\N	\N	2720	\N	yg	p	p	n	R11045	\N	\N	\N	p
2575	\N	\N	6570	\N	hb	p	p	n	AOV069	\N	\N	\N	p
2588	\N	\N	9010	\N	yg	p	p	n	CRF130	\N	\N	\N	p
2567	\N	\N	6280	\N	yg	c	p	n	AUM047	\N	\N	\N	u
2578	\N	\N	\N	\N	yg	p	u	n	R41042	\N	\N	\N	p
2558	\N	\N	2750	\N	yg	u	u	n	R11040	\N	\N	\N	c
2590	\N	\N	\N	\N	yg	p	p	n	R41044	\N	\N	\N	p
2594	\N	\N	2780	\N	yg	p	p	n	R11046	\N	\N	\N	p
2561	\N	\N	2970	\N	yg	u	u	d	R11041	\N	\N	\N	u
2563	\N	\N	1010	\N	yg	c	p	n	OHG136	\N	\N	\N	u
2569	\N	\N	3090	\N	yg	u	u	d	R11042	\N	\N	\N	u
2583	\N	\N	6650	\N	yg	p	p	n	AUM048	\N	\N	\N	p
2560	\N	\N	1523	\N	yg	u	u	d	R41040	\N	\N	\N	u
713	\N	\N	1509	\N	yg	u	u	d	R4887	\N	Washington (DHL)	\N	u
1460	\N	\N	2827	\N	cd	u	u	d	V255AJ	\N	Hobart	/mnt/rd1/LBA/v255ajcd/	u
1424	\N	\N	6540	\N	yg	u	u	d	AUA065	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/aua065yg/	u
1548	\N	\N	\N	\N	ho	u	u	d	VT29A	\N	Hobart	/mnt/rdsi/LBA/vt29aho	u
1350	\N	290	4450	\N	cd	u	u	d	V589A	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v589acd	u
151	\N	\N	1800	\N	yg	u	u	d	R4820	\N	Washington (DHL)	\N	u
167	\N	\N	1600	\N	yg	u	u	d	R4821	\N	Washington (DHL)	\N	u
2579	\N	\N	2580	\N	yg	p	c	n	R11043	\N	\N	\N	p
2573	\N	817	5290	4936	yg	u	p	n	AUA086	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua086yg/	u
1213	\N	182	8440	7315	ho	u	u	d	CRD107	IVS	\N	/mnt/rd1/IVS//crd107ho/	u
1177	\N	200	9650	9401	yg	u	u	d	CRD106	IVS	\N	/mnt/rd1/IVS/crd106yg	u
1144	\N	162	1090	1058	yg	u	u	d	T2137	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/t2137yg	u
2486	\N	\N	\N	\N	hb	u	u	d	V252CA	\N	Hobart	\N	u
2642	\N	\N	\N	\N	yg	p	p	n	R41055	\N	\N	\N	p
2643	\N	\N	\N	\N	yg	p	p	n	R11056	\N	\N	\N	p
2644	\N	\N	\N	\N	yg	p	p	n	CRF131	\N	\N	\N	p
1617	\N	\N	2000	\N	cd	u	u	n	S008C	\N	Hobart	\N	u
2645	\N	\N	\N	\N	ho	p	p	n	CRF131	\N	\N	\N	p
2237	\N	\N	500	\N	hb	p	p	n	SI1190	\N	Hobart	\N	p
2646	\N	\N	\N	\N	yg	p	p	n	R41056	\N	\N	\N	p
2647	\N	\N	\N	\N	yg	p	p	n	R11057	\N	\N	\N	p
2648	\N	\N	\N	\N	yg	p	p	n	R41057	\N	\N	\N	p
2649	\N	\N	\N	\N	yg	p	p	n	R11058	\N	\N	\N	p
2650	\N	\N	\N	\N	ho	p	p	n	RV154	\N	\N	\N	p
1773	\N	700	6170	5933	yg	u	u	d	AUA074	godzilla16	Hobart	/mnt/godzilla16//aua074yg/	u
2651	\N	\N	\N	\N	yg	p	p	n	R41058	\N	\N	\N	p
2652	\N	\N	\N	\N	yg	p	p	n	APSG50	\N	\N	\N	p
2653	\N	\N	\N	\N	ho	p	p	n	APSG50	\N	\N	\N	p
2654	\N	\N	\N	\N	yg	p	p	n	R11059	\N	\N	\N	p
2655	\N	\N	\N	\N	yg	p	p	n	T2154	\N	\N	\N	p
2656	\N	\N	\N	\N	hb	p	p	n	AUA090	\N	\N	\N	p
2657	\N	\N	\N	\N	ke	p	p	n	AUA090	\N	\N	\N	p
2658	\N	\N	\N	\N	yg	p	p	n	AUA090	\N	\N	\N	p
2659	\N	\N	\N	\N	ho	p	p	n	AUA090	\N	\N	\N	p
565	\N	509	3320	3054	yg	u	u	d	R1868	IVS	Hobart (for e-transfer)	\N	u
2660	\N	\N	\N	\N	yg	p	p	n	R41059	\N	\N	\N	p
2661	\N	\N	\N	\N	yg	p	p	n	R11060	\N	\N	\N	p
2662	\N	\N	\N	\N	yg	p	p	n	CRD119	\N	\N	\N	p
2663	\N	\N	\N	\N	ho	p	p	n	CRD119	\N	\N	\N	p
2664	\N	\N	\N	\N	yg	p	p	n	OHG139	\N	\N	\N	p
2665	\N	\N	\N	\N	ho	p	p	n	OHG139	\N	\N	\N	p
2666	\N	\N	\N	\N	yg	p	p	n	R41060	\N	\N	\N	p
2667	\N	\N	\N	\N	yg	p	p	n	R11061	\N	\N	\N	p
1666	\N	\N	12000	\N	hb	u	u	d	AUA068	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
2668	\N	\N	\N	\N	hb	p	p	n	AOV073	\N	\N	\N	p
1208	\N	239	950	889	yg	u	u	n	T2140	IVS	\N	/mnt/rd1/IVS/t2140yg/	u
1156	\N	277	1060	1026	yg	u	u	d	OHG124	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg124yg	u
527	\N	175	6850	6320	ho	u	u	d	RD1808	IVS	 	\N	u
2669	\N	\N	\N	\N	ke	p	p	n	AOV073	\N	\N	\N	p
2116	\N	\N	2500	\N	hb	u	u	n	S012B	\N	Hobart	\N	u
1994	\N	\N	\N	\N	cd	u	u	n	S004F	\N	Hobart	/mnt/usb1/s004fcd	u
2670	\N	\N	\N	\N	yg	p	p	n	AOV073	\N	\N	\N	p
97	\N	449	\N	4706	yg	u	u	d	AOV018	AUSTRAL	Hobart (for e-transfer)	\N	u
2671	\N	\N	\N	\N	yg	p	p	n	R41061	\N	\N	\N	p
2672	\N	\N	\N	\N	yg	p	p	n	R11062	\N	\N	\N	p
2673	\N	\N	\N	\N	hb	p	p	n	AUA091	\N	\N	\N	p
2674	\N	\N	\N	\N	ke	p	p	n	AUA091	\N	\N	\N	p
2675	\N	\N	\N	\N	yg	p	p	n	AUA091	\N	\N	\N	p
2676	\N	\N	\N	\N	ho	p	p	n	AUA091	\N	\N	\N	p
2677	\N	\N	\N	\N	yg	p	p	n	R41062	\N	\N	\N	p
1422	\N	\N	6700	\N	hb	u	u	d	AUA065	\N	\N	/mnt/flexbuf2/aua065hb	u
1157	\N	244	760	697	ho	u	u	d	OHG124	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg124ho	u
2678	\N	\N	\N	\N	hb	p	p	n	AOV074	\N	\N	\N	p
1212	\N	199	9590	9305	yg	u	u	d	CRD107	IVS	\N	/mnt/rd1/IVS//crd107yg/	u
2679	\N	\N	\N	\N	ke	p	p	n	AOV074	\N	\N	\N	p
1173	\N	166	1000	975	yg	u	u	d	T2138	IVS	\N	/mnt/rd1/IVS/t2138yg	u
2680	\N	\N	\N	\N	yg	p	p	n	AOV074	\N	\N	\N	p
2681	\N	\N	\N	\N	yg	p	p	n	R11063	\N	\N	\N	p
2117	\N	\N	2500	\N	cd	u	p	n	S012B	\N	Hobart	\N	p
2682	\N	\N	\N	\N	yg	p	p	n	R41063	\N	\N	\N	p
2683	\N	\N	\N	\N	yg	p	p	n	R11064	\N	\N	\N	p
2684	\N	\N	\N	\N	yg	p	p	n	CRD120	\N	\N	\N	p
2685	\N	\N	\N	\N	ho	p	p	n	CRD120	\N	\N	\N	p
2686	\N	\N	\N	\N	yg	p	p	n	R41064	\N	\N	\N	p
2687	\N	\N	\N	\N	yg	p	p	n	R11065	\N	\N	\N	p
2688	\N	\N	\N	\N	yg	p	p	n	R41065	\N	\N	\N	p
2689	\N	\N	\N	\N	yg	p	p	n	R11066	\N	\N	\N	p
2690	\N	\N	\N	\N	yg	p	p	n	R41066	\N	\N	\N	p
2691	\N	\N	\N	\N	yg	p	p	n	R11067	\N	\N	\N	p
2692	\N	\N	\N	\N	ho	p	p	n	RV155	\N	\N	\N	p
2693	\N	\N	\N	\N	yg	p	p	n	CRF132	\N	\N	\N	p
2694	\N	\N	\N	\N	yg	p	p	n	R41067	\N	\N	\N	p
2695	\N	\N	\N	\N	yg	p	p	n	R11068	\N	\N	\N	p
2696	\N	\N	\N	\N	yg	p	p	n	T2155	\N	\N	\N	p
1353	\N	\N	2652	\N	ho	u	u	d	V252BU	\N	Hobart	\N	u
2697	\N	\N	\N	\N	yg	p	p	n	R41068	\N	\N	\N	p
2698	\N	\N	\N	\N	yg	p	p	n	R11069	\N	\N	\N	p
2699	\N	\N	\N	\N	hb	p	p	n	AUA092	\N	\N	\N	p
2700	\N	\N	\N	\N	ke	p	p	n	AUA092	\N	\N	\N	p
2701	\N	\N	\N	\N	yg	p	p	n	AUA092	\N	\N	\N	p
2702	\N	\N	\N	\N	ho	p	p	n	AUA092	\N	\N	\N	p
2703	\N	\N	\N	\N	yg	p	p	n	CRD121	\N	\N	\N	p
2704	\N	\N	\N	\N	ho	p	p	n	CRD121	\N	\N	\N	p
2705	\N	\N	\N	\N	yg	p	p	n	R41069	\N	\N	\N	p
2706	\N	\N	\N	\N	yg	p	p	n	R11070	\N	\N	\N	p
2707	\N	\N	\N	\N	yg	p	p	n	OHG140	\N	\N	\N	p
2708	\N	\N	\N	\N	ho	p	p	n	OHG140	\N	\N	\N	p
2709	\N	\N	\N	\N	hb	p	p	n	AOV075	\N	\N	\N	p
2710	\N	\N	\N	\N	ke	p	p	n	AOV075	\N	\N	\N	p
2711	\N	\N	\N	\N	yg	p	p	n	AOV075	\N	\N	\N	p
2712	\N	\N	\N	\N	yg	p	p	n	R41070	\N	\N	\N	p
2713	\N	\N	\N	\N	hb	p	p	n	AUA093	\N	\N	\N	p
2488	\N	\N	\N	\N	cd	u	u	d	V252CA	\N	Hobart	\N	u
2714	\N	\N	\N	\N	ke	p	p	n	AUA093	\N	\N	\N	p
2715	\N	\N	\N	\N	ho	p	p	n	AUA093	\N	\N	\N	p
2716	\N	\N	\N	\N	ho	p	p	n	R11072	\N	\N	\N	p
2717	\N	\N	\N	\N	ho	p	p	n	R11074	\N	\N	\N	p
2718	\N	\N	\N	\N	hb	p	p	n	AOV076	\N	\N	\N	p
2719	\N	\N	\N	\N	ke	p	p	n	AOV076	\N	\N	\N	p
2720	\N	\N	\N	\N	yg	p	p	n	AOV076	\N	\N	\N	p
1056	\N	\N	\N	\N	ke	u	u	n	M0731	\N	Hobart (for e-transfer)	/mnt/bfg16/m0731ke	u
2721	\N	\N	\N	\N	ho	p	p	n	R11075	\N	\N	\N	p
2722	\N	\N	\N	\N	ho	p	p	n	R11076	\N	\N	\N	p
1996	\N	\N	\N	\N	ke	u	u	n	S004F	\N	Hobart	\N	u
1993	\N	\N	\N	\N	wa	u	u	n	S004F	\N	Hobart	\N	u
2485	\N	\N	\N	\N	ke	u	u	d	V252CA	\N	Hobart	\N	u
2337	\N	\N	\N	\N	ho	u	u	d	VX031A	\N	Hobart	\N	u
1232	\N	291	940	913	yg	u	u	d	T2141	IVS	\N	/mnt/rd1/IVS//t2141yg/	u
2335	\N	\N	\N	\N	ke	u	u	d	VX031A	\N	Hobart	\N	u
2238	\N	\N	500	\N	yg	u	p	n	SI1190	\N	Hobart	\N	p
1431	2020-06-12	604	4900	\N	cd	u	u	n	S003D	\N	Hobart	/mnt/rdsi/AUSTRAL/s003dcd/	u
1217	\N	210	840	768	ho	u	u	d	OHG126	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg126ho/	u
1216	\N	211	1100	1068	yg	u	u	d	OHG126	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//ohg126yg/	u
2723	\N	\N	\N	\N	ho	p	p	n	R11077	\N	\N	\N	p
2724	\N	\N	\N	\N	hb	p	p	n	AUA094	\N	\N	\N	p
2725	\N	\N	\N	\N	ke	p	p	n	AUA094	\N	\N	\N	p
2726	\N	\N	\N	\N	ho	p	p	n	AUA094	\N	\N	\N	p
2727	\N	\N	\N	\N	ho	p	p	n	CRD122	\N	\N	\N	p
2728	\N	\N	\N	\N	hb	p	p	n	AOV077	\N	\N	\N	p
2729	\N	\N	\N	\N	ke	p	p	n	AOV077	\N	\N	\N	p
2730	\N	\N	\N	\N	yg	p	p	n	AOV077	\N	\N	\N	p
2731	\N	\N	\N	\N	ho	p	p	n	CRF133	\N	\N	\N	p
2732	\N	\N	\N	\N	ho	p	p	n	RV156	\N	\N	\N	p
2733	\N	\N	\N	\N	ho	p	p	n	R11080	\N	\N	\N	p
2734	\N	\N	\N	\N	hb	p	p	n	AUA095	\N	\N	\N	p
2735	\N	\N	\N	\N	ke	p	p	n	AUA095	\N	\N	\N	p
2736	\N	\N	\N	\N	ho	p	p	n	AUA095	\N	\N	\N	p
2737	\N	\N	\N	\N	hb	p	p	n	AOV078	\N	\N	\N	p
2738	\N	\N	\N	\N	ke	p	p	n	AOV078	\N	\N	\N	p
2739	\N	\N	\N	\N	yg	p	p	n	AOV078	\N	\N	\N	p
2740	\N	\N	\N	\N	ho	p	p	n	APSG51	\N	\N	\N	p
1250	\N	200	1100	1069	yg	u	u	d	OHG128	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg128yg/	u
1251	\N	214	840	813	ho	u	u	d	OHG128	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg128ho/	u
2177	\N	30	\N	113	yg	u	u	n	SI1113	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si1113yg/	u
2489	\N	\N	\N	\N	hb	u	u	n	V609A	\N	Hobart	\N	u
1396	\N	\N	\N	\N	cd	u	u	n	S001E	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/s001ecd/	u
2490	\N	\N	\N	\N	cd	u	u	n	V609A	\N	Hobart	\N	u
1997	\N	\N	\N	\N	wa	u	u	n	S004G	\N	Hobart	\N	u
2892	\N	\N	300	\N	yg	p	p	n	Z22101	\N	Hobart	\N	p
1998	\N	\N	\N	\N	hb	u	u	n	S004G	\N	Hobart	vbs://flexbufcd	u
2944	\N	\N	300	\N	hb	p	p	n	Z22150	\N	\N	\N	p
2918	\N	\N	300	\N	yg	p	p	n	Z22283	\N	Hobart	\N	p
2970	\N	\N	300	\N	hb	p	p	n	Z22332	\N	\N	\N	p
1254	\N	193	920	685	yg	u	u	d	T2142	IVS	\N	/mnt/rd1/IVS/	u
1234	\N	163	860	600	ho	u	u	n	OHG127	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg127ho/	u
1389	\N	\N	\N	\N	ho	u	u	n	S001D	\N	Hobart	\N	u
1999	\N	\N	\N	\N	cd	u	u	n	S004G	\N	Hobart	/mnt/usb1/s004gcd	u
2000	\N	\N	\N	\N	ke	u	u	n	S004G	\N	Hobart	flexbuflcd	u
945	\N	\N	\N	6000	cd	u	u	n	MV027	\N	Hobart	\N	u
946	\N	\N	\N	6000	ho	u	u	n	MV027	\N	Hobart	\N	u
1125	\N	129	1090	\N	ho	u	u	n	V525F	\N	Hobart	\N	u
1079	\N	\N	1200	\N	ho	u	u	n	V544E	\N	Hobart	\N	u
2114	\N	\N	2500	\N	ke	u	u	n	S012B	\N	Hobart	vbs://flexbuflcd/	u
2239	\N	\N	500	\N	hb	p	p	n	SI1204	\N	Hobart	\N	p
1484	\N	\N	1600	\N	td	u	u	d	V578B	\N	Hobart	\N	u
2240	\N	\N	500	\N	yg	u	u	n	SI1204	\N	Hobart	\N	u
1233	\N	211	1080	1052	yg	u	u	n	OHG127	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg127yg/	u
1182	\N	206	1070	1039	yg	u	u	d	OHG125	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg125yg	u
1667	\N	34	\N	227	yg	u	u	n	SI0294	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//si0294yg/	u
1554	\N	\N	1090	\N	ke	u	u	d	V581B	\N	Hobart (for e-transfer)	\N	u
1482	\N	\N	1600	\N	ke	u	u	d	V578B	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v578bke	u
1394	\N	\N	\N	\N	ke	u	u	n	S001E	AUSTRAL1	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/s001eke/	u
2393	\N	\N	\N	\N	cd	u	u	n	S019A	\N	Hobart	\N	u
1795	\N	\N	2590	\N	ho	u	u	d	AUA075	\N	None	\N	u
2423	\N	\N	\N	\N	ke	u	p	n	S010H	\N	Hobart	vbs://131.217.63.229/	p
2444	\N	\N	\N	\N	ke	u	p	n	S018F	\N	Hobart	vbs://131.217.63.229/	u
1489	\N	37	250	229	yg	u	u	n	SI0181	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//si0181yg/	u
2745	\N	\N	\N	\N	yg	u	u	d	R41032	\N	\N	\N	u
2492	\N	\N	\N	\N	hb	u	u	n	V594C	\N	Hobart	\N	u
2338	\N	\N	\N	\N	cd	u	u	d	VX031A	\N	Hobart	 /mnt/rdsi/LBA/vx031acd/	u
1729	2020-12-01	139	2000	964	td	u	p	n	T2143	IVS	Hobart	/mnt/rd1/IVS//t2143td/	u
2494	\N	\N	\N	\N	cd	u	p	n	V594C	\N	Hobart	\N	u
1556	\N	\N	2003	2003	cd	u	u	n	S004A	\N	Hobart	\N	u
1455	\N	\N	929	\N	ho	u	u	d	V578A	\N	Hobart	/mnt/rdsi/LBA/v578aho	u
2001	\N	\N	\N	\N	ke	u	u	n	S004E	\N	Hobart	\N	u
2003	\N	\N	\N	\N	cd	u	u	n	S004E	\N	Hobart	/mnt/usb1//s004ecd	u
2469	\N	32	\N	1160	cd	u	u	d	V603A	\N	Hobart	\N	u
2353	\N	\N	\N	\N	hb	p	p	n	S005I	\N	Hobart	\N	p
2478	\N	\N	3170	\N	yg	u	u	d	R11027	\N	\N	\N	u
1402	\N	\N	3000	\N	ke	u	u	n	S001F	flexbuflke	Hobart (for e-transfer)	/mnt/disk9/ 	u
1038	\N	\N	4500	4500	ho	u	u	n	RD1806	colossos	\N	/mnt/flexbuf0/rd1806ho	u
2392	\N	\N	\N	\N	hb	p	p	n	S019A	\N	Hobart	\N	p
2493	\N	31	\N	5726	yg	u	c	n	V594C	LBA1	Hobart	/mnt/rdsi/LBA//v594cyg/	u
2893	\N	\N	300	\N	yg	p	p	n	Z22108	\N	Hobart	\N	p
2945	\N	\N	300	\N	hb	p	p	n	Z22157	\N	\N	\N	p
2118	\N	\N	1000	\N	cd	u	u	n	DPT03A	\N	Hobart	/mnt/rdsi/astro//dpt03acd	u
2919	\N	\N	300	\N	yg	p	p	n	Z22290	\N	Hobart	\N	p
2971	\N	\N	300	\N	hb	p	p	n	Z22339	\N	\N	\N	p
2491	\N	\N	\N	\N	ke	u	u	n	V594C	\N	Hobart	\N	u
2556	\N	8	\N	263	yg	c	p	n	AOV068	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aov068yg/	u
2178	\N	33	\N	261	yg	u	p	n	SI1127	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//si1127yg/	p
2241	\N	\N	500	\N	hb	p	p	n	SI1211	\N	Hobart	\N	p
2004	\N	\N	\N	\N	wa	u	u	n	S004E	\N	Hobart	\N	u
2242	\N	\N	500	\N	yg	u	u	n	SI1211	\N	Hobart	\N	u
1668	\N	\N	6000	\N	hb	u	u	n	AVS005	\N	Hobart	\N	u
2445	\N	\N	\N	\N	hb	p	p	n	S018F	\N	Hobart	\N	p
2424	\N	\N	\N	\N	hb	p	p	n	S010H	\N	Hobart	\N	p
2352	\N	\N	\N	\N	ke	u	p	n	S005I	\N	Hobart	\N	p
1420	\N	\N	4000	\N	wa	u	u	n	AUMCT1	rd1	Hobart	/mnt/rd1/AUSTRAL/aumtc1wa/	u
1392	\N	5	\N	153	yg	u	u	n	ED045A	flexbuf0	\N	\N	u
993	\N	\N	1800	\N	yg	u	u	n	DYN006	\N	Hobart	\N	u
994	\N	\N	1800	\N	hb	u	u	n	DYN006	\N	Hobart	\N	u
1393	\N	5	\N	153	yg	u	u	n	ED045B	flexbuf0	\N	\N	u
1887	\N	253	1060	982	yg	u	p	n	T2148	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS/t2148yg/	u
2457	\N	\N	\N	\N	hb	p	p	n	S019C	\N	Hobart	\N	p
2425	\N	\N	\N	\N	cd	u	u	n	S010H	\N	Hobart	vbs://flexbuflcd/	u
2354	\N	\N	\N	\N	cd	u	u	n	S005I	\N	Hobart	\N	u
819	\N	360	3510	3237	yg	u	u	d	R1908	IVS	Hobart (for e-transfer)	\N	u
2456	\N	\N	\N	\N	ke	u	p	n	S019C	\N	Hobart	\N	u
2458	\N	\N	\N	\N	cd	u	u	n	S019C	\N	Hobart	\N	u
2471	\N	203	\N	1715	ti	u	p	n	T2149	IVS	\N	/mnt/rd1/IVS//t2149ti/	p
853	\N	127	10000	6969	ho	u	u	d	AUA058	AUSTRAL1	 	\N	u
2391	\N	\N	\N	\N	ke	u	u	n	S019A	\N	Hobart	\N	u
2498	\N	\N	\N	\N	cd	u	u	n	V594D	\N	Hobart	\N	u
2007	\N	\N	\N	\N	cd	u	u	n	S004H	\N	Hobart	/mnt/usb1/s004hcd	u
2356	\N	\N	\N	\N	hb	p	p	n	S017A	\N	Hobart	\N	p
1670	\N	9	500	50	yg	u	u	n	SI0308	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL/si0308yg/	u
2312	\N	\N	2000	\N	ke	u	u	n	FM004	\N	Hobart	flexbuflyg:/mnt/disk0/	u
1557	\N	\N	2140	2140	cd	u	u	n	S004C	\N	Hobart	/mnt/rdsi/AUSTRAL/s004ccd/	u
2894	\N	\N	300	\N	yg	p	p	n	Z22115	\N	Hobart	\N	p
2428	\N	\N	\N	\N	cd	u	u	n	S011H	\N	Hobart	vbs://131.217.63.229/	u
2459	\N	\N	\N	\N	ke	u	p	n	S011I	\N	Hobart	vbs://131.217.63.229/	p
2435	\N	\N	\N	\N	ke	u	p	n	S017D	\N	Hobart	vbs://131.217.63.229/	u
1405	\N	\N	\N	\N	cd	u	u	n	S001D	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/s001dcd/	u
2946	\N	\N	300	\N	hb	p	p	n	Z22164	\N	\N	\N	p
2920	\N	\N	300	\N	yg	p	p	n	Z22297	\N	Hobart	\N	p
2972	\N	\N	300	\N	hb	p	p	n	Z22346	\N	\N	\N	p
2292	\N	\N	\N	\N	cd	u	u	n	S015A	\N	Hobart	/mnt/flexbuf3/	u
2426	\N	\N	\N	\N	ke	c	p	n	S011H	\N	Hobart	\N	p
2976	\N	\N	300	\N	hb	p	p	n	Z22081	\N	\N	\N	p
2336	\N	87	\N	1817	yg	u	u	d	VX031A	LBA1	Hobart	/mnt/rdsi/LBA//vx031ayg/	u
1733	\N	251	3020	2936	ho	u	u	d	T2P144	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//t2p144ho/	u
2047	2020-06-28	\N	\N	\N	cd	u	u	d	V594B	\N	Hobart	/mnt/rdsi/LBA	u
2046	2020-06-28	\N	\N	\N	ho	u	u	d	V594B	\N	Hobart	/mnt/rdsi/LBA	u
2977	\N	\N	300	\N	yg	p	p	n	Z22081	\N	\N	\N	p
2008	\N	\N	\N	\N	wa	u	u	n	S004H	\N	Hobart	\N	u
2395	\N	\N	\N	\N	hb	p	p	n	S020A	\N	Hobart	\N	p
1525	\N	\N	500	\N	hb	u	u	n	SI0202	\N	Hobart	/mnt/rdsi/AUSTRAL/si0202hb	u
2243	\N	\N	500	\N	hb	p	p	n	SI1217	\N	Hobart	\N	p
1671	\N	\N	500	\N	hb	u	u	n	SI0308	\N	Hobart	\N	u
1761	\N	188	1090	1053	yg	u	p	n	OHG129	AUSTRAL	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL//ohg129yg/	u
2746	\N	\N	\N	\N	hb	p	u	n	VR2201	\N	\N	\N	p
2495	\N	\N	\N	\N	ke	u	u	n	V594D	\N	Hobart	\N	u
2496	\N	\N	\N	\N	hb	u	u	n	V594D	\N	Hobart	\N	u
2497	\N	201	\N	5542	yg	u	u	n	V594D	LBA1	Hobart	/mnt/rdsi/LBA//v594dyg/	u
1524	\N	32	500	238	yg	u	u	n	SI0202	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//si0202yg/	u
1762	\N	197	830	791	ho	u	p	n	OHG129	godzilla16	None	/mnt/godzilla16//ohg129ho/	u
2355	\N	\N	\N	\N	ke	u	p	n	S017A	\N	Hobart	\N	u
2006	\N	\N	\N	\N	hb	u	u	n	S004H	\N	Hobart	vbs://flexbufcd	u
2291	\N	\N	\N	\N	ke	u	u	n	S015A	\N	Hobart	vbs://flexbuflcd/ 	u
1596	\N	\N	2000	\N	ke	u	u	n	AVS004	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/avs004ke/	u
1597	\N	\N	2000	\N	ke	u	u	n	S011A	\N	Hobart (for e-transfer)	flxbflke	u
2293	\N	\N	\N	\N	hb	u	u	n	S015A	\N	Hobart	\N	u
2119	\N	\N	1000	\N	cd	u	u	n	DPT05A	\N	Hobart	/mnt/rdsi/astro/dpt05acd	u
2357	\N	\N	\N	\N	cd	u	u	n	S017A	\N	Hobart	\N	u
2244	\N	\N	500	\N	yg	u	u	n	SI1217	\N	Hobart	\N	u
2427	\N	\N	\N	\N	hb	p	p	n	S011H	\N	Hobart	\N	p
2447	\N	\N	\N	\N	ke	u	u	n	S018C	\N	Hobart	vbs://flexbuflcd/	u
2437	\N	\N	\N	\N	hb	p	p	n	S017D	\N	Hobart	\N	p
2448	\N	\N	\N	\N	hb	p	p	n	S018C	\N	Hobart	\N	p
2449	\N	\N	\N	\N	cd	p	p	n	S018C	\N	Hobart	\N	p
2460	\N	\N	\N	\N	hb	p	p	n	S011I	\N	Hobart	\N	p
2461	\N	\N	\N	\N	cd	p	p	n	S011I	\N	Hobart	\N	p
2379	\N	\N	\N	\N	ke	u	u	n	S016D	\N	Hobart	\N	u
2465	\N	\N	\N	\N	hb	p	p	n	S020B	\N	Hobart	\N	p
119	\N	2	\N	62	cd	u	u	d	RK18BV	astro	Hobart (for e-transfer)	\N	u
1239	\N	332	1540	1425	yg	u	u	d	R1967	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1967yg/	u
1741	\N	\N	6460	\N	hb	u	u	d	AUA072	\N	\N	\N	u
2394	\N	\N	\N	\N	ke	u	u	n	S020A	\N	Hobart	\N	u
1780	\N	\N	\N	\N	ho	u	u	d	AOV057	\N	None	\N	u
1437	\N	\N	600	\N	ke	u	u	n	MSC002	\N	Hobart (for e-transfer)	/mnt/disk3/msc002ke	u
1426	2020-06-05	604	4900	\N	ke	u	u	n	S003C	\N	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/s003cke	u
1527	\N	33	500	247	yg	u	u	n	SI0209	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//si0209yg/	u
1438	\N	\N	600	\N	yg	u	u	n	MSC002	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/msc002yg	u
1493	\N	\N	4009	\N	ke	u	u	d	V586A	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v586ake/	u
1672	\N	\N	2500	\N	hb	u	p	n	S001H	\N	Hobart	\N	u
2749	\N	\N	\N	\N	hb	p	p	n	S003H	\N	Hobart	\N	p
2748	\N	\N	\N	\N	cd	u	p	n	S003H	\N	Hobart	\N	p
2358	\N	\N	\N	\N	ke	u	p	n	S006G	\N	Hobart	\N	p
2009	\N	30	\N	263	hb	u	u	n	SI0265	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/si0265hb/	u
1526	\N	\N	500	\N	hb	u	u	n	SI0209	\N	Hobart	/mnt/rdsi/AUSTRAL/si0209hb	u
951	\N	730	5000	\N	ho	u	u	n	MV028	\N	Hobart	\N	u
2313	\N	\N	\N	\N	ke	u	u	n	FM010	\N	Hobart	flexbuflyg:/mnt/disk0/	u
2747	\N	\N	\N	\N	ke	u	u	n	S003H	\N	Hobart	vbs://flexbuflcd/	u
2502	\N	\N	\N	\N	cd	u	u	d	V515D	\N	Hobart	\N	u
2500	\N	\N	\N	\N	hb	u	u	d	V515D	\N	Hobart	\N	u
2499	\N	\N	\N	\N	ke	u	u	d	V515D	\N	Hobart	\N	u
2501	\N	139	\N	3352	yg	u	u	d	V515D	LBA1	Hobart	/mnt/rdsi/LBA//v515dyg/	u
2895	\N	\N	300	\N	yg	p	p	n	Z22122	\N	Hobart	\N	p
2947	\N	\N	300	\N	hb	p	p	n	Z22171	\N	\N	\N	p
2921	\N	\N	300	\N	yg	p	p	n	Z22304	\N	Hobart	\N	p
2973	\N	\N	300	\N	hb	p	p	n	Z22353	\N	\N	\N	p
1145	\N	\N	9400	\N	yg	u	u	d	CRD105	\N	Washington (DHL)	\N	u
937	\N	\N	1200	\N	ho	p	u	n	VX026C	\N	Hobart	\N	u
996	\N	\N	1800	\N	yg	u	u	n	DYN007	\N	Hobart	\N	u
997	\N	\N	1800	\N	hb	u	u	n	DYN007	\N	Hobart	\N	u
1427	2020-06-05	604	4900	\N	hb	u	u	n	S003C	\N	Hobart	\N	u
1428	2020-06-05	604	4900	\N	cd	u	u	n	S003C	\N	Hobart	/mnt/rdsi/AUSTRAL/s003ccd/	u
2120	\N	\N	1000	\N	cd	u	u	n	DPT06A	\N	Hobart	/mnt/rdsi/astro/dpt06acd	u
995	\N	134	1800	1692	ke	u	u	d	DYN007	AUSTRAL	Hobart (for e-transfer)	\N	u
985	\N	350	4050	3703	ke	u	u	d	R1898	IVS	Hobart (for e-transfer)	\N	u
998	\N	128	1800	1678	ke	u	u	d	DYN008	AUSTRAL	Hobart (for e-transfer)	\N	u
2339	\N	\N	\N	\N	cd	u	u	n	AAAMCD	\N	Hobart	\N	u
2245	\N	\N	500	\N	hb	p	p	n	SI1225	\N	Hobart	\N	p
2273	\N	\N	\N	\N	cd	u	u	n	S014B	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
1673	\N	\N	2500	\N	cd	u	u	n	S001H	\N	Hobart	/mnt/rdsi/AUSTRAL/s001hcd	u
1781	\N	299	1550	1435	yg	u	u	d	R1991	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//r1991yg/	u
2359	\N	\N	\N	\N	hb	p	p	n	S006G	\N	Hobart	\N	p
1820	\N	\N	6290	\N	ke	u	u	d	AUA076	\N	Hobart	\N	u
1623	\N	1	500	23	yg	u	u	n	SI0272	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/si0272yg/	u
1529	\N	35	500	251	yg	u	u	n	SI0216	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0216yg/	u
1559	\N	\N	2430	2430	cd	u	u	n	S005A	\N	Hobart	/mnt/rdsi/AUSTRAL/s005acd	u
1821	\N	707	6140	5898	yg	u	u	d	AUA076	flexbuf2	Hobart	/mnt/flexbuf2/aua076yg/	u
1822	\N	468	2430	2061	ho	u	u	d	AUA076	AUSTRAL1	None	/mnt/rdsi/AUSTRAL//aua076ho/	u
1800	\N	\N	\N	\N	ho	u	u	d	AOV058	\N	None	\N	u
1829	\N	\N	8000	\N	ke	u	u	d	AOV060	\N	Hobart	\N	u
1830	\N	\N	6762	\N	yg	u	u	d	AOV060	\N	Hobart	/mnt/flexbuf0/aov060yg/	u
939	\N	\N	3000	2800	ho	p	u	n	V447H	\N	Hobart	\N	u
1528	\N	\N	500	\N	hb	u	u	n	SI0216	\N	Hobart	/mnt/rdsi/AUSTRAL/si0216hb	u
1837	\N	277	1140	891	yg	u	u	d	R11003	IVS	\N	/mnt/rd1/IVS//r11003yg/	u
1834	\N	\N	1080	\N	yg	u	u	n	OHG131	\N	Hobart (for e-transfer)	\N	u
1395	\N	\N	\N	\N	hb	u	u	n	S001E	\N	Hobart	\N	u
2505	\N	270	\N	4750	yg	u	p	n	V589C	LBA1	Hobart	/mnt/rdsi/LBA//v589cyg/	u
2752	\N	\N	\N	\N	hb	p	p	n	S003I	\N	Hobart	\N	p
2248	\N	\N	500	\N	yg	u	u	n	SI1232	\N	Hobart	\N	u
1674	\N	\N	2500	\N	hb	u	p	n	S001I	\N	Hobart	\N	u
2121	\N	\N	1000	\N	cd	u	u	n	DPT04A	\N	Hobart	/mnt/rdsi/astro/dpt04acd	u
2751	\N	\N	\N	\N	cd	u	p	n	S003I	\N	Hobart	\N	p
2504	\N	\N	\N	\N	hb	u	p	n	V589C	\N	Hobart	\N	u
2503	\N	\N	\N	\N	ke	u	p	n	V589C	\N	Hobart	\N	u
2506	\N	\N	\N	\N	cd	u	p	n	V589C	\N	Hobart	\N	u
2750	\N	\N	\N	\N	ke	u	u	n	S003I	\N	Hobart	vbs://flexbuflcd/	u
2896	\N	\N	300	\N	yg	p	p	n	Z22129	\N	Hobart	\N	p
2948	\N	\N	300	\N	hb	p	p	n	Z22178	\N	\N	\N	p
2922	\N	\N	300	\N	yg	p	p	n	Z22311	\N	Hobart	\N	p
2974	\N	\N	300	\N	hb	p	p	n	Z22360	\N	\N	\N	p
999	\N	\N	1800	\N	yg	u	u	n	DYN008	\N	Hobart	\N	u
1000	\N	\N	1800	\N	hb	u	u	n	DYN008	\N	Hobart	\N	u
917	\N	\N	5114	\N	ho	u	u	n	GM074B	\N	Hobart	\N	u
1077	\N	\N	2500	\N	cd	u	u	n	V252BS	\N	Hobart	\N	u
1076	\N	\N	2500	\N	ho	u	u	n	V252BS	\N	Hobart	\N	u
1430	2020-06-12	604	4900	\N	hb	u	u	n	S003D	\N	Hobart	\N	u
1020	\N	\N	1800	\N	hb	u	u	n	DYN009	\N	\N	\N	u
1802	\N	\N	820	\N	ho	u	u	n	OHG130	\N	None	\N	u
1809	\N	339	970	942	yg	u	p	n	T2146	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//t2146yg/	u
1675	\N	\N	2500	\N	cd	u	u	n	S001I	\N	Hobart	/mnt/rdsi/AUSTRAL/s001icd	u
2181	\N	93	\N	190	ti	u	p	n	T2146	IVS	\N	/mnt/rd1/IVS//t2146ti/	u
2049	\N	\N	\N	\N	36	u	p	n	PULSAR	astro1	\N	/mnt/rdsi/astro/pulsar36	p
1801	\N	214	1100	1027	yg	u	p	n	OHG130	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg130yg/	u
1835	\N	142	770	456	ho	u	p	n	OHG131	flexbuf0	None	/mnt/flexbuf0//ohg131ho/	u
2247	\N	\N	500	\N	hb	p	p	n	SI1232	\N	Hobart	\N	p
2272	\N	\N	\N	\N	ke	u	p	n	S014B	\N	Hobart	\N	p
1804	\N	271	1640	1521	yg	u	u	d	R1997	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1997yg/	u
1904	\N	\N	\N	\N	yg	u	u	d	AOV064	\N	Hobart	\N	u
1926	\N	\N	1290	\N	yg	u	u	d	R11025	\N	\N	\N	u
1878	\N	\N	\N	\N	ke	u	u	d	AOV062	\N	Hobart	\N	u
1875	\N	\N	\N	\N	yg	u	u	d	CRD114	\N	\N	\N	u
1625	\N	30	500	267	yg	u	u	n	SI0265	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/si0265yg/	u
1905	\N	108	\N	7868	yg	u	u	d	CRD115	IVS	\N	/mnt/rd1/IVS//crd115yg/	u
1902	\N	\N	\N	\N	hb	u	u	d	AOV064	\N	\N	\N	u
1918	\N	\N	1550	\N	yg	u	u	d	R11023	\N	\N	\N	u
1845	\N	\N	\N	\N	yg	u	u	d	R41005	\N	Washington (DHL)	\N	u
1920	\N	\N	1130	\N	yg	u	u	d	R11024	\N	\N	\N	u
1914	\N	653	5697	4289	yg	u	u	d	AUA081	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//aua081yg/	u
1889	\N	\N	6520	\N	ke	u	u	d	AOV063	\N	Hobart	vbs://flexbuflcd/	u
1890	\N	621	6410	6169	yg	u	u	d	AOV063	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aov063yg/	u
1883	\N	217	\N	8346	yg	u	u	d	CRF126	IVS	\N	/mnt/rd1/IVS//crf126yg/	u
1846	\N	226	2950	2097	ho	u	u	d	RV148	IVS1	None	/mnt/rdsi/IVS/rv148ho/	u
1870	\N	\N	5430	\N	ke	u	u	d	AUA079	\N	Hobart	/mnt/flexbuf1/aua079ke	u
1928	\N	230	\N	7515	yg	u	u	d	AOV065	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//aov065yg/	u
1442	\N	\N	\N	\N	yg	u	u	n	SI0161	AUSTRAL	\N	/mnt/rd1/AUSTRAL/si0161yg/	u
1893	\N	\N	\N	\N	hb	p	p	d	AUA080	\N	\N	\N	u
1560	\N	\N	2430	2430	cd	u	u	n	S005B	\N	Hobart	\N	u
1888	\N	\N	6630	\N	hb	p	p	d	AOV063	\N	\N	\N	u
1869	\N	\N	5430	\N	hb	p	p	d	AUA079	\N	\N	\N	u
1912	\N	\N	\N	\N	hb	p	p	p	AUA081	\N	\N	\N	p
1930	\N	237	\N	9058	yg	u	u	d	CRF127	IVS	\N	/mnt/rd1/IVS//crf127yg/	u
1923	\N	788	5682	5162	yg	u	u	d	AUA082	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua082yg/	u
2509	\N	104	\N	3776	yg	u	p	n	VX032A	LBA1	Hobart	/mnt/rdsi/LBA//vx032ayg/	u
2507	\N	\N	\N	\N	ke	u	p	n	VX032A	\N	Hobart	\N	p
2510	\N	\N	\N	\N	cd	p	p	n	VX032A	\N	Hobart	\N	u
2755	\N	\N	\N	\N	hb	p	p	n	S004L	\N	Hobart	\N	p
2754	\N	\N	\N	\N	cd	c	p	n	S004L	\N	Hobart	\N	p
2508	\N	\N	\N	\N	hb	u	p	n	VX032A	\N	Hobart	\N	u
2975	\N	\N	\N	\N	hb	p	u	n	VT2049	\N	\N	\N	u
2314	\N	\N	\N	\N	ke	u	u	n	FM012	\N	Hobart	flexbuflyg:/mnt/disk0/	u
1855	\N	268	4418	4103	yg	u	u	d	APSG48	cornucopia	\N	/mnt/cornucopia//apsg48yg/	u
1856	\N	261	\N	4577	ho	u	u	d	APSG48	IVS	None	/mnt/rd1/IVS//apsg48ho/	u
1897	\N	300	\N	4892	yg	u	u	d	APSG49	IVS	\N	/mnt/rd1/IVS//apsg49yg/	u
2753	\N	\N	\N	\N	ke	u	u	n	S004L	\N	Hobart	vbs://flexbuflcd/	u
2897	\N	\N	300	\N	yg	p	p	n	Z22136	\N	Hobart	\N	p
2949	\N	\N	300	\N	hb	p	p	n	Z22185	\N	\N	\N	p
2923	\N	\N	300	\N	yg	p	p	n	Z22318	\N	Hobart	\N	p
916	\N	513	\N	4122	yg	u	u	d	AOV026	AUSTRAL	\N	\N	u
2182	\N	41	\N	3209	ti	u	p	n	A2112G	IVS	\N	/mnt/rd1/IVS//a2112gti/	u
1921	\N	\N	\N	\N	hb	p	p	n	AUA082	\N	\N	\N	p
1866	\N	298	1040	999	yg	u	p	n	OHG132	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//ohg132yg/	u
2274	\N	\N	\N	\N	hb	u	u	n	S014B	\N	Hobart	\N	u
1429	2020-06-12	604	4900	\N	ke	u	u	n	S003D	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/s003dke/	u
2122	\N	414	\N	1821	ti	u	p	n	T2145	IVS	\N	/mnt/rd1/IVS//t2145ti/	p
2249	\N	\N	500	\N	hb	p	p	n	SI1239	\N	Hobart	\N	p
1849	\N	318	970	942	yg	u	p	n	T2147	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/t2147yg/	u
2360	\N	\N	\N	\N	cd	u	u	n	S006G	\N	Hobart	\N	u
215	\N	33	650	107	ho	u	u	d	OHG113	IVS	 	\N	u
1497	\N	\N	8000	\N	ke	u	u	d	AVS003	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/avs003ke/	u
1335	\N	\N	9303	\N	hb	u	u	d	AOV045	\N	\N	\N	u
1626	\N	\N	500	\N	hb	u	u	n	SI0273	\N	Hobart	\N	u
1953	\N	\N	\N	\N	yg	u	u	d	R41030	\N	Washington (DHL)	\N	u
1952	\N	\N	915	\N	yg	u	u	d	R41029	\N	Washington (DHL)	\N	u
2251	\N	\N	500	\N	hb	u	p	n	SI1246	\N	Hobart	\N	u
1112	\N	\N	6000	\N	ho	u	u	n	V558D	flexbuf1	Hobart	\N	u
387	\N	26	\N	1122	ho	u	u	n	GG084A	LBA	 	\N	u
905	\N	\N	1500	\N	ho	u	u	n	V252BR	\N	Hobart	\N	u
1444	\N	\N	250	\N	hb	u	u	n	SI0174	\N	Hobart	/mnt/flexbuf3	u
2541	\N	281	1040	985	yg	u	p	n	OHG135	IVS	\N	/mnt/rd1/IVS//ohg135yg/	u
2757	\N	\N	\N	\N	cd	u	u	n	S014C	\N	Hobart	vbs://flexbuflcd/	u
2756	\N	\N	\N	\N	ke	u	u	n	S014C	\N	Hobart	vbs://flexbuflcd/	u
2511	\N	55	\N	1521	ti	u	u	d	V515D	LBA1	\N	/mnt/rdsi/LBA//v515dti/	u
2898	\N	\N	300	\N	yg	p	p	n	Z22143	\N	Hobart	\N	p
2950	\N	\N	300	\N	hb	p	p	n	Z22192	\N	\N	\N	p
2924	\N	\N	300	\N	yg	p	p	n	Z22325	\N	Hobart	\N	p
1579	\N	\N	2000	\N	ke	u	u	n	S007A	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/s007ake/	u
2011	\N	\N	\N	\N	ho	u	p	n	RD2007	IVS	\N	\N	u
1942	\N	332	\N	1024	yg	u	p	n	OHG134	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg134yg/	u
1947	\N	\N	\N	\N	yg	u	u	d	R41028	\N	Washington (DHL)	\N	u
1627	\N	36	500	235	yg	u	u	n	SI0273	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//si0273yg/	u
1951	\N	393	\N	6670	yg	u	u	d	AOV066	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//aov066yg/	u
1950	\N	\N	\N	\N	ke	u	u	d	AOV066	\N	Hobart	\N	u
1949	\N	\N	\N	\N	hb	u	u	d	AOV066	\N	\N	\N	u
2051	\N	\N	2500	\N	hb	u	u	n	S006E	\N	Hobart	\N	u
2052	\N	\N	2500	\N	cd	u	u	n	S006E	\N	Hobart	\N	u
1937	\N	261	4320	4008	yg	u	u	n	T2P150	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//t2p150yg/	u
1939	\N	132	9087	8456	yg	u	u	n	CRD116	IVS	\N	/mnt/rd1/IVS//crd116yg/	u
1561	\N	\N	2870	2870	hb	u	p	n	S005B	\N	Hobart	\N	u
1678	\N	\N	2500	\N	hb	u	p	n	S001J	\N	Hobart	\N	u
1944	\N	\N	\N	\N	ke	u	p	n	AUA083	\N	Hobart	\N	p
1679	\N	\N	2500	\N	cd	u	u	n	S001J	\N	Hobart	\N	u
2758	\N	\N	\N	\N	hb	p	p	n	S014C	\N	Hobart	\N	p
1533	\N	\N	500	\N	yg	u	u	n	SI0237	\N	Hobart	/mnt/rdsi/AUSTRAL//si0237yg	u
1945	\N	812	\N	4976	yg	u	u	d	AUA083	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//aua083yg/	u
1943	\N	\N	\N	\N	hb	p	p	n	AUA083	\N	\N	\N	p
1935	\N	\N	\N	\N	yg	u	u	d	R41026	\N	Washington (DHL)	\N	u
1941	\N	\N	1503	\N	yg	u	u	d	R41027	\N	Washington (DHL)	\N	u
1532	\N	\N	500	\N	hb	u	p	n	SI0237	\N	Hobart	/mnt/rdsi/AUSTRAL/si0237hb	u
2275	\N	\N	\N	\N	ke	u	u	n	S003F	\N	Hobart	vbs://flexbuflcd/ 	u
613	\N	115	2600	2418	ho	u	u	d	RD1810	IVS	 	\N	u
2252	\N	\N	500	\N	yg	u	p	n	SI1246	\N	Hobart	\N	u
940	\N	35	\N	2824	td	u	u	d	V252BQ	LBA	\N	\N	u
2185	\N	\N	6250	\N	ke	u	u	d	AUM035	\N	\N	vbs://flexbuflcd/	u
1681	\N	36	500	235	yg	u	u	n	SI0329	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0329yg/	u
2187	\N	\N	6950	\N	hb	p	p	d	AUM036	\N	\N	\N	u
2512	\N	77	\N	1948	ti	u	p	n	VX032A	LBA1	\N	/mnt/rdsi/LBA//vx032ati/	p
2761	\N	\N	\N	\N	hb	p	p	n	S014E	\N	Hobart	\N	p
2013	\N	1047	\N	5648	ho	u	p	n	DPT04A	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//dpt04aho/	p
2760	\N	\N	\N	\N	cd	u	p	n	S014E	\N	Hobart	\N	p
1324	\N	\N	\N	\N	ho	u	u	n	ED045A	\N	\N	\N	u
1510	\N	\N	\N	\N	hb	u	u	d	AUM022	\N	\N	\N	u
1534	\N	\N	500	\N	hb	u	u	n	SI0225	\N	Hobart	/mnt/rdsi/AUSTRAL/si0225hb	u
1562	\N	\N	2470	2470	ke	u	u	n	S004A	\N	Hobart (for e-transfer)	\N	u
1044	\N	\N	6000	\N	ke	u	u	n	MV013b	\N	Hobart (for e-transfer)	\N	u
2759	\N	\N	\N	\N	ke	u	u	n	S014E	\N	Hobart	vbs://flexbuflcd/	u
2899	\N	\N	300	\N	yg	p	p	n	Z22150	\N	Hobart	\N	p
2951	\N	\N	300	\N	hb	p	p	n	Z22199	\N	\N	\N	p
2925	\N	\N	300	\N	yg	p	p	n	Z22332	\N	Hobart	\N	p
1535	\N	32	500	223	yg	u	u	n	SI0225	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0225yg/	u
1628	\N	\N	500	\N	hb	u	u	n	SI0279	\N	Hobart	/mnt/rdsi/AUSTRAL//si0279hb	u
1045	\N	\N	6000	\N	yg	u	u	n	MV013b	\N	Hobart	\N	u
1046	\N	\N	6000	\N	cd	u	u	n	MV013b	\N	Hobart	\N	u
1047	\N	\N	6000	\N	ho	u	u	n	MV013b	\N	Hobart	\N	u
1081	\N	\N	1100	\N	ho	u	u	n	V576A	\N	Hobart	\N	u
1325	\N	\N	\N	\N	ho	u	u	n	ED045B	\N	\N	\N	u
1680	\N	\N	500	\N	hb	u	u	n	SI0329	\N	Hobart	\N	u
1600	\N	\N	2000	\N	ke	u	u	n	S009B	\N	Hobart (for e-transfer)	flxbflke	u
1652	\N	\N	2500	\N	ke	u	u	n	S012A	\N	Hobart (for e-transfer)	\N	u
611	\N	61	1500	1276	ke	u	u	n	MV041	AUSTRAL	Hobart (for e-transfer)	\N	u
1583	\N	\N	2000	\N	ke	u	u	n	S007B	\N	Hobart (for e-transfer)	flxbflke	u
1629	\N	\N	500	\N	yg	u	u	n	SI0279	\N	Hobart	\N	u
2123	\N	149	\N	1710	ho	u	p	n	RD1708	godzilla8	\N	/mnt/godzilla8//rd1708ho/	u
1954	\N	317	1460	1355	yg	u	u	d	R1980	IVS	Hobart	/mnt/rd1/IVS//r1980yg/	u
2191	\N	\N	6130	\N	ke	u	u	d	AUM037	\N	\N	\N	u
2188	\N	\N	6520	\N	ke	u	u	d	AUM036	\N	\N	\N	u
2190	\N	\N	6350	\N	hb	p	p	d	AUM037	\N	\N	\N	u
2764	\N	\N	\N	\N	hb	p	p	n	S015C	\N	Hobart	\N	p
2066	\N	\N	2500	\N	ke	u	u	n	S007G	\N	Hobart	vbs://flexbuflcd	u
769	\N	177	890	639	ho	u	u	d	OHG119	IVS		/mnt/rd1/IVS/ohg119ho	u
2016	2021-01-30	422	3000	\N	hb	u	u	n	S005D	\N	Hobart	vbs://flexbuflcd/	u
631	\N	\N	1663	\N	yg	u	u	n	R4876	\N	Washington (DHL)	\N	u
2763	\N	\N	\N	\N	cd	c	p	n	S015C	\N	Hobart	\N	p
1453	\N	\N	6146	\N	ho	u	u	d	V594A	\N	Hobart	/mnt/rdsi/LBA/v594aho	u
1454	\N	\N	6146	\N	cd	u	u	d	V594A	\N	Hobart	/mnt/rdsi/LBA/v594acd/	u
1452	\N	\N	4037	\N	cd	u	u	d	V591A	\N	Hobart	/mnt/rdsi/LBA/v591acd/	u
1451	\N	\N	4037	\N	ho	u	u	d	V591A	\N	Hobart	/mnt/rdsi/LBA/v591aho/	u
2762	\N	\N	\N	\N	ke	u	u	n	S015C	\N	Hobart	vbs://flexbuflcd/	u
2900	\N	\N	300	\N	yg	p	p	n	Z22157	\N	Hobart	\N	p
2952	\N	\N	300	\N	hb	p	p	n	Z22206	\N	\N	\N	p
2926	\N	\N	300	\N	yg	p	p	n	Z22339	\N	Hobart	\N	p
1564	\N	\N	2140	2140	cd	u	u	n	S004B	\N	Hobart	\N	u
2015	2021-01-30	422	3000	\N	ke	u	u	n	S005D	\N	Hobart	vbs://flexbuflcd	u
256	\N	96	\N	2484	ho	u	u	n	V562A	LBA	 	\N	u
319	\N	86	\N	89	ho	u	u	n	VC354	LBA	 	\N	u
1630	\N	\N	500	\N	hb	u	u	n	SI0287	\N	Hobart	/mnt/rdsi/AUSTRAL//si0287hb	u
1403	\N	\N	3000	\N	hb	u	u	n	S001F	\N	Hobart	\N	u
80	\N	418	\N	816	ho	u	u	n	RD1411	IVS	 	/mnt/rdsi/IVS/rd1411ho	u
2067	\N	\N	\N	\N	hb	u	u	n	S007G	\N	Hobart	\N	u
2069	\N	\N	\N	\N	wa	u	u	n	S007G	\N	Hobart	\N	u
1682	\N	\N	500	\N	hb	u	u	n	SI0321	\N	Hobart	\N	u
2014	2021-01-30	422	3000	\N	cd	u	u	n	S005D	\N	Hobart	/mnt/rdsi/AUSTRAL//s005dcd	u
1683	\N	36	500	234	yg	u	u	n	SI0321	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0321yg/	u
1049	\N	\N	6000	\N	yg	u	u	n	MV014B	\N	Hobart	\N	u
325	\N	1	\N	2	ho	u	u	n	RK18KJ	astro	 	\N	u
276	\N	62	\N	2230	ho	u	u	n	GG083D	LBA	 	\N	u
282	\N	7	\N	33	ho	u	u	n	VC353	LBA	 	\N	u
283	\N	0	\N	0	ho	u	u	n	GG083B	LBA	 	\N	u
284	\N	21	\N	219	ho	u	u	n	VC357	LBA	 	\N	u
389	\N	85	\N	4416	ho	u	u	n	V558A	LBA	 	\N	u
74	\N	4	\N	108	ho	u	u	n	RK18DJ	astro	 	\N	u
77	\N	4	\N	104	ho	u	u	n	RK18CH	astro	 	\N	u
78	\N	4	\N	104	ho	u	u	n	RK18CU	astro	 	\N	u
75	\N	2	\N	80	ho	u	u	n	RK18BS	astro	 	\N	u
397	\N	13	\N	454	ho	u	u	n	GG083J	astro	 	\N	u
423	\N	90	\N	2612	ho	u	u	n	V447G	astro	 	\N	u
1563	\N	\N	2470	2470	ke	u	u	n	S004B	\N	Hobart (for e-transfer)	\N	u
1048	\N	0	6000	0	ke	u	u	n	MV014B	AUSTRAL	Hobart (for e-transfer)	\N	u
1313	\N	\N	2646	\N	ke	u	u	n	V252BT	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252btke	u
1593	\N	\N	2000	\N	ke	u	u	n	S010A	\N	Hobart (for e-transfer)	flxbflke	u
859	\N	181	8863	8072	ho	u	u	d	AUA059	AUSTRAL	 	\N	u
2017	2021-02-06	422	3000	\N	cd	u	u	n	S005E	\N	Hobart	/mnt/rdsi/AUSTRAL//s005ecd	u
1632	\N	\N	500	\N	hb	u	u	n	SI0293	\N	Hobart	/mnt/rdsi/AUSTRAL//si0293hb	u
1633	\N	16	500	112	yg	u	u	n	SI0293	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0293yg/	u
2207	\N	741	5730	5483	yg	u	u	d	AUM042	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aum042yg/	u
2206	\N	\N	5820	\N	ke	u	u	d	AUM042	\N	\N	\N	u
1565	\N	\N	2460	2460	ke	u	u	n	S004C	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/s004cke/	u
2901	\N	\N	300	\N	yg	p	p	n	Z22164	\N	Hobart	\N	p
629	\N	\N	5820	\N	ho	u	u	n	RD1901	\N	 	\N	u
2208	\N	\N	6740	\N	hb	p	p	n	AUM043	\N	\N	\N	p
2953	\N	\N	300	\N	hb	p	p	n	Z22213	\N	\N	\N	p
2927	\N	\N	300	\N	yg	p	p	n	Z22346	\N	Hobart	\N	p
1413	\N	\N	5300	\N	ke	u	u	n	AUM016	flexbuflyg	Hobart (for e-transfer)	/mnt/disk2/aum016ke/	u
1415	2020-05-29	574	4700	\N	ke	u	u	n	S003B	flexbuf3	Hobart (for e-transfer)	/disk3/s003bke/	u
2195	\N	769	\N	3992	yg	u	u	d	AUM038	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum038yg/	u
2198	\N	506	\N	5709	yg	u	u	d	AUM039	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum039yg/	u
2211	\N	\N	6870	\N	hb	p	p	n	AUM044	\N	\N	\N	p
2193	\N	\N	\N	\N	hb	p	p	p	AUM038	\N	\N	\N	p
2194	\N	\N	\N	\N	ke	u	u	p	AUM038	\N	\N	\N	u
2200	\N	\N	6090	\N	ke	u	u	d	AUM040	\N	\N	\N	u
2201	\N	689	5950	5693	yg	u	u	d	AUM040	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum040yg/	u
2209	\N	\N	6120	\N	ke	u	u	n	AUM043	\N	\N	vbs://131.217.63.229/	u
1732	\N	332	4260	4010	yg	u	u	d	T2P144	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//t2p144yg/	u
2204	\N	649	6230	5978	yg	u	u	d	AUM041	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum041yg/	u
2210	\N	579	6320	6118	yg	u	u	d	AUM043	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aum043yg/	u
453	\N	410	1680	1558	ke	u	u	d	R1853	bfg16	Hobart (for e-transfer)	\N	u
2124	\N	\N	2800	\N	ke	u	u	n	S001L	\N	Hobart	\N	u
2019	2021-02-06	422	3000	\N	hb	u	u	n	S005E	\N	Hobart	vbs://flexbuflcd/	u
2073	\N	\N	2500	\N	wa	u	u	n	S009F	\N	Hobart	\N	u
2070	\N	\N	2500	\N	ke	u	p	n	S009F	\N	Hobart	\N	p
2071	\N	\N	2500	\N	cd	u	u	n	S009F	\N	Hobart	vbs://flexbuflcd/	u
2018	2021-02-06	422	3000	\N	ke	u	u	n	S005E	\N	Hobart	vbs://flexbuflcd	u
2072	\N	\N	2500	\N	hb	u	u	n	S009F	\N	Hobart	\N	u
2125	\N	\N	2800	\N	hb	u	u	n	S001L	\N	Hobart	\N	u
2127	\N	\N	2800	\N	wa	u	u	n	S001L	\N	Hobart	\N	u
2126	\N	\N	2800	\N	cd	u	p	n	S001L	\N	Hobart	vbs://flexbuflke	p
2765	\N	234	7220	6712	yg	u	p	n	RD2202	IVS1	\N	/mnt/rdsi/IVS//rd2202yg/	u
2196	\N	\N	\N	\N	hb	p	p	n	AUM039	\N	\N	\N	p
1684	\N	\N	500	\N	hb	u	u	n	SI0314	\N	Hobart	\N	u
2202	\N	\N	6380	\N	hb	p	p	n	AUM041	\N	\N	\N	p
2199	\N	\N	6320	\N	hb	p	p	n	AUM040	\N	\N	\N	p
2205	\N	\N	5850	\N	hb	p	p	n	AUM042	\N	\N	\N	p
578	\N	190	\N	1008	ke	u	u	d	OHG115	IVS	Hobart (for e-transfer)	\N	u
64	2017-10-06	57	6000	1378	ke	u	u	d	V456B	LBA	Hobart (for e-transfer)	\N	u
67	\N	229	3600	3303	ke	u	u	d	APSG41	IVS	Hobart (for e-transfer)	\N	u
468	\N	432	1780	1656	ke	u	u	d	R1855	bfg8	Hobart (for e-transfer)	\N	u
2477	\N	\N	2350	\N	yg	u	u	d	R11026	\N	\N	\N	u
1987	\N	\N	\N	\N	hb	u	u	d	AUM033	\N	\N	\N	u
2470	\N	\N	\N	\N	cd	u	u	n	V603B	\N	Hobart	\N	u
2361	\N	\N	\N	\N	ke	u	p	n	S016C	\N	Hobart	\N	u
2429	\N	\N	\N	\N	hb	p	p	n	SI1253	\N	Hobart	\N	p
2472	\N	\N	\N	\N	yg	u	p	n	SI1302	\N	Hobart	\N	u
730	\N	\N	1568	\N	yg	u	u	d	R4889	\N	Washington (DHL)	\N	u
2430	\N	\N	\N	\N	yg	u	u	n	SI1253	\N	Hobart	\N	u
1464	\N	\N	11100	\N	ho	u	u	d	V590A	\N	Hobart	/mnt/rdsi/LBA/v590aho/	u
682	\N	\N	1684	\N	yg	u	u	d	R4883	\N	Washington (DHL)	\N	u
1663	\N	\N	6421	\N	hb	u	u	d	AUA069	\N	Hobart	\N	u
1635	\N	33	500	235	yg	u	u	n	SI0300	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0300yg/	u
602	\N	\N	1800	\N	yg	u	u	d	R4872	\N	Washington (DHL)	\N	u
2021	2021-02-12	422	3000	\N	ke	u	u	n	S005F	\N	Hobart	vbs://flexbuflcd	u
2020	2021-02-12	422	3000	\N	cd	u	u	n	S005F	\N	Hobart	/mnt/rdsi/AUSTRAL//s005fcd	u
2479	\N	\N	\N	\N	hb	p	u	n	VO1327	\N	Hobart	\N	p
2439	\N	\N	\N	\N	hb	p	p	n	S018E	\N	Hobart	\N	p
1566	\N	\N	2810	2810	ke	u	u	n	S005A	\N	Hobart (for e-transfer)	\N	u
2451	\N	\N	\N	\N	hb	p	p	n	S010I	\N	Hobart	\N	p
2022	2021-02-12	422	3000	\N	hb	u	u	n	S005F	\N	Hobart	vbs://flexbuflcd/	u
2077	\N	\N	\N	\N	wa	u	u	n	S007F	\N	Hobart	\N	u
2417	\N	\N	\N	\N	ke	u	p	n	S005K	\N	Hobart	vbs://131.217.63.229/	p
2438	\N	\N	\N	\N	ke	u	p	n	S018E	\N	Hobart	vbs://131.217.63.229/	p
2075	\N	\N	2500	\N	hb	u	u	n	S007F	\N	Hobart	\N	u
2129	\N	\N	3100	\N	hb	u	u	n	S010F	\N	Hobart	\N	u
2131	\N	\N	3100	\N	wa	u	u	n	S010F	\N	Hobart	\N	u
1662	\N	631	6126	5358	yg	u	u	d	AUA069	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua069yg/	u
2253	\N	\N	500	\N	hb	p	p	n	SI1197	\N	Hobart	\N	p
2076	\N	\N	2500	\N	cd	u	u	n	S007F	\N	Hobart	vbs://flexbuflcd/	u
2450	\N	\N	\N	\N	ke	u	p	n	S010I	\N	Hobart	\N	p
24	\N	62	1500	1591	ke	u	u	d	R4807	\N	Hobart (for e-transfer)	\N	u
780	\N	\N	1900	\N	yg	u	u	d	R4899	\N	Washington (DHL)	\N	u
625	\N	\N	1830	\N	ke	u	u	d	R4875	\N	Hobart (for e-transfer)	\N	u
2130	\N	\N	3100	\N	cd	u	u	n	S010F	\N	Hobart	vbs://flexbuflcd	u
2212	\N	\N	6780	\N	ke	u	p	n	AUM044	\N	\N	vbs://flexbuflcd/	p
2128	\N	\N	3100	\N	ke	u	u	n	S010F	\N	Hobart	\N	u
1085	\N	\N	1500	\N	yg	u	u	d	R4914	\N	Washington (DHL)	\N	u
196	\N	835	\N	4368	ke	u	u	d	AUA035	AUSTRAL	Hobart (for e-transfer)	\N	u
1024	\N	129	1800	1719	ke	u	u	d	DYN010	godzilla16	Hobart (for e-transfer)	\N	u
2276	\N	\N	\N	\N	cd	u	u	n	S003F	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
1634	\N	\N	500	\N	hb	u	u	n	SI0300	\N	Hobart	\N	u
2277	\N	\N	\N	\N	hb	u	u	n	S003F	\N	Hobart	\N	u
2213	\N	582	6630	6441	yg	u	u	d	AUM044	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aum044yg/	u
321	\N	211	\N	5444	ke	u	u	d	MV014	AUSTRAL	Hobart (for e-transfer)	\N	u
2523	\N	572	\N	5893	yg	u	u	d	AOV067	AUSTRAL	\N	/mnt/rdsi/AUSTRAL/	u
1462	\N	\N	2800	\N	ho	u	u	d	V252BV	\N	Hobart	/mnt/rdsi/LBA/v252bvho	u
2254	\N	30	500	271	yg	u	p	n	SI1197	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si1197yg/	u
1091	\N	\N	1210	\N	yg	u	u	d	R4920	\N	Washington (DHL)	\N	u
2362	\N	\N	\N	\N	hb	p	p	n	S016C	\N	Hobart	\N	p
1073	\N	\N	1191	\N	yg	u	u	d	R4912	\N	Hobart	\N	u
1963	\N	\N	\N	\N	hb	u	u	d	AUM025	\N	\N	vbs://flexbuflcd/	u
1964	\N	\N	\N	\N	ke	u	u	d	AUM025	\N	\N	vbs://vc2	u
2415	\N	337	2300	2421	yg	u	u	p	RV149	IVS1	\N	/mnt/rdsi/IVS//rv149yg/	u
1384	\N	\N	12000	\N	ke	u	u	d	AVS001	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/avs001ke	u
1967	\N	1152	\N	15280	ke	u	u	d	AUM026	\N	\N	vbs://vc2/	u
179	\N	\N	1530	\N	yg	u	u	d	R4824	\N	Washington (DHL)	\N	u
29	\N	62	1500	1591	yg	u	u	d	R4808	\N	Washington (DHL)	\N	u
2074	\N	\N	2500	\N	ke	u	u	n	S007F	\N	Hobart	\N	u
1542	\N	27	\N	2003	td	u	u	d	V252BW	LBA	\N	/mnt/rd1/LBA//v252bwtd/	u
606	\N	\N	1499	\N	yg	u	u	d	R4873	\N	Washington (DHL)	\N	u
2316	\N	\N	\N	\N	ke	u	u	n	FM015	\N	Hobart	\N	u
2473	\N	\N	\N	\N	hb	u	u	n	SI1302	\N	Hobart	\N	u
41	\N	62	1700	1591	yg	u	u	d	R4810	\N	Washington (DHL)	\N	u
1916	\N	347	\N	1004	yg	u	p	n	OHG133	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//ohg133yg/	u
70	\N	62	1600	1591	yg	u	u	d	R4813	\N	Washington (DHL)	\N	u
51	\N	62	1500	1591	yg	u	u	d	R4812	\N	Washington (DHL)	\N	u
239	\N	\N	1290	\N	yg	u	u	d	R4829	\N	Washington (DHL)	\N	u
252	\N	\N	1760	\N	yg	u	u	d	R4830	\N	Washington (DHL)	\N	u
263	\N	\N	1700	\N	yg	u	u	d	R4831	\N	Washington (DHL)	\N	u
2902	\N	\N	300	\N	yg	p	p	n	Z22171	\N	Hobart	\N	p
648	\N	\N	1686	\N	yg	u	u	d	R4878	\N	Washington (DHL)	\N	u
655	\N	\N	1459	\N	yg	u	u	d	R4879	\N	Washington (DHL)	\N	u
2954	\N	\N	300	\N	hb	p	p	n	Z22220	\N	\N	\N	p
2928	\N	\N	300	\N	yg	p	p	n	Z22353	\N	Hobart	\N	p
2446	\N	\N	\N	\N	cd	u	u	n	S018F	\N	Hobart	\N	u
2463	\N	\N	\N	\N	ke	u	u	n	S020B	\N	Hobart	\N	u
2436	\N	\N	\N	\N	cd	u	u	n	S017D	\N	Hobart	\N	u
2464	\N	\N	\N	\N	cd	u	u	n	S020B	\N	Hobart	\N	u
2440	\N	\N	\N	\N	cd	u	u	n	S018E	\N	Hobart	\N	u
2452	\N	\N	\N	\N	cd	u	u	n	S010I	\N	Hobart	\N	u
2363	\N	\N	\N	\N	cd	u	u	n	S016C	\N	Hobart	\N	u
1352	\N	268	5420	4615	yg	u	u	d	V589A	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v589ayg	u
1349	\N	290	5420	\N	ho	u	u	d	V589A	\N	\N	\N	u
1356	\N	153	2652	2426	yg	u	u	d	V252BU	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252buyg	u
1355	\N	41	2369	3493	td	u	u	d	V252BU	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252butd	u
1322	\N	\N	1317	\N	cd	u	u	d	V560E	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v560ecd	u
1321	\N	\N	1317	\N	ho	u	u	d	V560E	\N	Hobart (for e-transfer)	\N	u
1468	\N	\N	2800	\N	ho	u	u	d	V252BW	\N	Hobart	/mnt/rdsi/LBA/v252bwho	u
1386	\N	127	\N	4201	yg	u	u	d	V586A	\N	\N	/mnt/rdsi/LBA/v586ayg	u
1385	\N	74	\N	2730	td	u	u	d	V586A	\N	\N	/mnt/rdsi/LBA/v586atd	u
271	\N	153	\N	3887	ke	u	u	d	MV012	cornucopia	Hobart (for e-transfer)	\N	u
2400	\N	\N	\N	\N	ke	u	p	n	S008I	\N	Hobart	vbs://131.217.63.229/	p
1638	\N	\N	2000	\N	cd	u	u	n	S010C	\N	Hobart	/mnt/rd1/AUSTRAL/s010ccd/	u
2519	\N	696	\N	5127	yg	u	u	d	AUM045	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/	u
2366	\N	\N	\N	\N	cd	u	u	n	S005J	\N	Hobart	\N	u
1637	\N	\N	2000	\N	hb	u	p	n	S010C	\N	Hobart	\N	u
2315	\N	\N	\N	\N	ke	u	u	n	FM013	\N	Hobart	\N	u
2903	\N	\N	300	\N	yg	p	p	n	Z22178	\N	Hobart	\N	p
2955	\N	\N	300	\N	hb	p	p	n	Z22227	\N	\N	\N	p
2929	\N	\N	300	\N	yg	p	p	n	Z22360	\N	Hobart	\N	p
2081	\N	\N	2500	\N	wa	u	u	n	S008G	\N	Hobart	\N	u
1688	\N	\N	500	\N	hb	u	u	n	SI0337	\N	Hobart	\N	u
2364	\N	\N	\N	\N	ke	u	u	n	S005J	\N	Hobart	vbs://flexbuflcd/	u
1689	\N	41	500	220	yg	u	u	n	SI0337	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0337yg/	u
2402	\N	\N	\N	\N	cd	u	u	n	S008I	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
2024	2021-02-13	367	2500	\N	ke	u	u	d	S004I	\N	Hobart	flexbuflcd	u
1956	\N	\N	500	\N	hb	u	u	n	SI0244	\N	Hobart	\N	u
1567	\N	\N	2890	2890	ke	u	u	n	S005B	\N	Hobart (for e-transfer)	\N	u
1636	\N	\N	2000	\N	ke	u	u	n	S010C	\N	Hobart (for e-transfer)	flxbflke	u
2133	\N	\N	2800	\N	hb	p	p	n	S011F	\N	Hobart	\N	p
2025	2021-02-13	367	2500	\N	hb	u	u	n	S004I	\N	Hobart	vbs://flexbufcd	u
1543	\N	99	\N	5107	td	u	u	d	V590B	LBA	\N	/mnt/rd1/LBA//v590btd/	u
1092	\N	\N	1317	\N	yg	u	u	d	R4921	\N	Washington (DHL)	\N	u
2079	\N	\N	2500	\N	hb	u	u	n	S008G	\N	Hobart	\N	u
2078	\N	\N	2500	\N	ke	u	u	n	S008G	\N	Hobart	\N	u
2135	\N	\N	2800	\N	wa	u	u	n	S011F	\N	Hobart	\N	u
2214	\N	32	\N	269	yg	u	p	n	SI1134	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//si1134yg/	p
1093	\N	\N	1202	\N	yg	u	u	d	R4922	\N	Washington (DHL)	\N	u
2080	\N	\N	2500	\N	cd	u	u	n	S008G	\N	Hobart	vbs://flexbuflcd/	u
2068	\N	\N	\N	\N	cd	u	u	n	S007G	\N	Hobart	vbs://flexbuflcd/	u
1167	\N	\N	\N	\N	yg	u	u	d	R4941	\N	Washington (DHL)	\N	u
1129	\N	\N	1248	\N	yg	u	u	d	R4927	\N	Washington (DHL)	\N	u
1131	\N	\N	1213	\N	yg	u	u	d	R4928	\N	Washington (DHL)	\N	u
1171	\N	\N	\N	\N	yg	u	u	d	R4942	\N	Washington (DHL)	\N	u
2279	\N	\N	\N	\N	cd	u	u	n	S009G	\N	Hobart	vbs://flexbuflcd	u
1136	\N	\N	1117	\N	yg	u	u	d	R4929	\N	Washington (DHL)	\N	u
1190	\N	\N	1651	\N	yg	u	u	d	R4948	\N	Washington (DHL)	\N	u
1192	\N	\N	1639	\N	yg	u	u	d	R4949	\N	Washington (DHL)	\N	u
1957	\N	\N	500	\N	yg	u	u	n	SI0244	\N	Hobart	\N	u
2023	2021-02-13	367	2500	\N	cd	u	u	n	S004I	\N	Hobart	/mnt/rdsi/AUSTRAL//s004icd	u
2280	\N	\N	\N	\N	hb	u	u	n	S009G	\N	Hobart	\N	u
1186	\N	\N	\N	\N	yg	u	u	d	R4946	\N	Washington (DHL)	\N	u
1188	\N	\N	\N	\N	yg	u	u	d	R4947	\N	Washington (DHL)	\N	u
1150	\N	\N	1174	\N	yg	u	u	d	R4934	\N	Washington (DHL)	\N	u
2132	\N	\N	2800	\N	ke	u	u	n	S011F	\N	Hobart	vbs://flexbuflcd/ 	u
2278	\N	\N	\N	\N	ke	u	u	n	S009G	\N	Hobart	vbs://flexbuflcd/ 	u
443	\N	60	\N	211	ho	u	u	n	V999BU	bfg8	 	\N	u
2134	\N	\N	2800	\N	cd	u	u	n	S011F	\N	Hobart	vbs://flexbuflcd/	u
2341	\N	299	\N	2301	ti	u	p	n	T2147	IVS1	\N	/mnt/rdsi/IVS//t2147ti/	p
2365	\N	\N	\N	\N	hb	p	p	n	S005J	\N	Hobart	\N	p
2401	\N	\N	\N	\N	hb	p	p	n	S008I	\N	Hobart	\N	p
1152	\N	\N	1512	\N	yg	u	u	d	R4935	\N	Washington (DHL)	\N	u
1154	\N	\N	\N	\N	yg	u	u	d	R4936	\N	Washington (DHL)	\N	u
1158	\N	\N	1643	\N	yg	u	u	d	R4937	\N	Washington (DHL)	\N	u
1159	\N	\N	1131	\N	yg	u	u	d	R4938	\N	Washington (DHL)	\N	u
1162	\N	\N	1467	\N	yg	u	u	d	R4939	\N	Washington (DHL)	\N	u
2367	\N	\N	\N	\N	ke	u	u	n	S007H	\N	Hobart	vbs://131.217.63.229/	u
2403	\N	\N	\N	\N	ke	u	u	n	S018B	\N	Hobart	vbs://131.217.63.229/	u
661	\N	202	6160	5724	ho	u	u	n	RD1902	IVS	 	/mnt/rd1/IVS/rd1902ho	u
726	\N	196	6150	5684	ho	u	u	n	RD1903	IVS	 	/mnt/rd1/IVS/rd1903ho	u
2518	\N	\N	\N	\N	ke	u	p	n	AUM045	\N	\N	vbs://flexbuflcd/	p
1690	\N	\N	500	\N	hb	u	u	n	SI0342	\N	Hobart	\N	u
2027	\N	417	3000	\N	ke	u	u	n	S005G	\N	Hobart	vbs://flexbuflcd	u
444	\N	48	\N	469	ho	u	u	n	GS042	cornucopia	 	\N	u
2904	\N	\N	300	\N	yg	p	p	n	Z22185	\N	Hobart	\N	p
1691	\N	37	500	230	yg	u	u	n	SI0342	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0342yg/	u
2956	\N	\N	300	\N	hb	p	p	n	Z22234	\N	\N	\N	p
2026	\N	417	3000	\N	cd	u	u	n	S005G	\N	Hobart	/mnt/rdsi/AUSTRAL	u
1569	\N	\N	2910	2910	ke	u	u	n	S006A	\N	Hobart (for e-transfer)	flxbflke	u
1404	\N	\N	3000	\N	cd	u	u	n	S001F	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/s001fcd/	u
621	\N	5	\N	685	td	u	u	n	RK25AX	LBA	Hobart (for e-transfer)	\N	u
384	\N	370	\N	8747	cd	u	u	n	V561B	IVS	Hobart (for e-transfer)	\N	u
1640	\N	\N	2500	\N	ke	u	u	n	S011C	\N	Hobart (for e-transfer)	\N	u
1570	\N	\N	2370	2370	cd	u	u	n	S006A	\N	Hobart	\N	u
2028	\N	417	3000	\N	hb	u	u	n	S005G	\N	Hobart	vbs://flexbuflcd/	u
1568	\N	\N	2910	2910	hb	u	p	n	S006A	\N	Hobart	\N	u
1641	\N	\N	2500	\N	hb	u	p	n	S011C	\N	Hobart	\N	u
1435	\N	\N	\N	\N	ke	u	u	n	S002A	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/s002ake/	u
2040	\N	417	3000	\N	hb	u	u	n	S005H	\N	Hobart	vbs://flexbuflcd/	u
1642	\N	\N	2500	\N	cd	u	u	n	S011C	\N	Hobart	\N	u
2085	\N	\N	2500	\N	wa	u	u	n	S006F	\N	Hobart	\N	u
2043	\N	418	3000	\N	hb	u	u	n	S006D	\N	Hobart	vbs://flexbuflcd/	u
2082	\N	\N	2500	\N	ke	u	u	n	S006F	\N	Hobart	vbs://flexbuflcd/	u
2083	\N	\N	2500	\N	hb	u	u	n	S006F	\N	Hobart	\N	u
2084	\N	\N	2500	\N	cd	u	p	n	S006F	\N	Hobart	/mnt/rdsi/AUSTRAL/s006fcd	p
2294	\N	21	\N	3112	ti	u	p	n	A2104J	astro1	\N	/mnt/rdsi/astro//a2104jti/	u
2369	\N	\N	\N	\N	cd	u	u	n	S007H	\N	Hobart	\N	u
2368	\N	\N	\N	\N	hb	p	p	n	S007H	\N	Hobart	\N	p
2404	\N	\N	\N	\N	hb	p	p	n	S018B	\N	Hobart	\N	p
1205	\N	\N	2190	\N	ho	u	u	d	R1954	\N	Hobart (for e-transfer)	/mnt/rd1/IVS/r1954ho/	u
782	\N	\N	9390	\N	yg	u	u	d	CRD103	\N	Washington (DHL)	\N	u
2525	\N	\N	\N	\N	ke	u	p	d	AUA084	\N	\N	vbs://flexbuflcd/	p
2526	\N	793	\N	5202	yg	u	u	d	AUA084	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/	u
907	\N	\N	2000	\N	ho	u	u	n	V255AG	\N	Hobart	\N	u
909	\N	\N	1500	\N	ho	u	u	n	V452E	\N	Hobart	\N	u
1115	\N	\N	\N	\N	ho	u	u	n	V560D	\N	Hobart	\N	u
2281	\N	\N	1700	\N	ke	u	u	n	FM005	\N	Hobart	flexbuflyg:/mnt/disk2/	u
2370	\N	\N	\N	\N	ke	u	p	n	S017B	\N	Hobart	\N	p
2317	\N	\N	\N	\N	ke	u	u	n	FM017	\N	Hobart	\N	u
1692	\N	39	500	220	yg	u	u	n	SI0349	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0349yg/	u
2487	\N	9	\N	154	yg	u	u	d	V252CA	LBA1	Hobart	/mnt/rdsi/LBA//v252cayg/	u
450	\N	198	5000	4986	ho	u	u	n	RD1805	bfg16	 	/mnt/godzilla8/rd1805ho	u
2931	\N	\N	300	\N	hb	p	p	n	Z22059	\N	\N	\N	p
1439	\N	\N	600	\N	hb	u	u	n	MSC002	\N	Hobart	/mnt/disk3/msc002hb	u
2905	\N	\N	300	\N	yg	p	p	n	Z22192	\N	Hobart	\N	p
2136	\N	\N	2500	\N	ke	u	u	n	S010D	\N	Hobart	\N	u
2957	\N	\N	300	\N	hb	p	p	n	Z22241	\N	\N	\N	p
2086	\N	\N	2500	\N	cd	u	p	n	S009E	\N	Hobart	/mnt/rdsi/AUSTRAL/s009ecd	p
2088	\N	\N	2500	\N	ke	u	u	n	S009E	\N	Hobart	vbs://flexbuflcd/	u
2087	\N	\N	2500	\N	hb	u	u	n	S009E	\N	Hobart	\N	u
1693	\N	\N	500	\N	hb	u	p	n	SI0349	\N	Hobart	\N	u
2089	\N	\N	2500	\N	wa	u	u	n	S009E	\N	Hobart	\N	u
2031	\N	418	3000	\N	hb	u	u	n	S006C	\N	Hobart	\N	u
2137	\N	\N	2500	\N	hb	u	u	n	S010D	\N	Hobart	\N	u
2030	\N	418	3000	\N	ke	u	u	n	S006C	\N	Hobart	flexbuflcd	u
1645	\N	\N	5000	\N	hb	u	u	n	V447K	\N	Hobart	\N	u
303	\N	4	\N	104	cd	u	u	n	RK18IV	astro	Hobart (for e-transfer)	\N	u
306	\N	3	\N	105	cd	u	u	n	RK18JC	astro	Hobart (for e-transfer)	\N	u
307	\N	3	\N	105	cd	u	u	n	RK18JN	astro	Hobart (for e-transfer)	\N	u
308	\N	3	\N	210	cd	u	u	n	RK18KJ	astro	Hobart (for e-transfer)	\N	u
309	\N	5	\N	170	cd	u	u	n	RK18KL	astro	Hobart (for e-transfer)	\N	u
2139	\N	\N	2500	\N	wa	u	u	n	S010D	\N	Hobart	\N	u
310	\N	4	\N	208	cd	u	u	n	RK18KM	astro	Hobart (for e-transfer)	\N	u
311	\N	4	\N	208	cd	u	u	n	RK18KN	astro	Hobart (for e-transfer)	\N	u
312	\N	4	\N	208	cd	u	u	n	RK18KO	astro	Hobart (for e-transfer)	\N	u
2029	\N	418	3000	\N	cd	u	u	n	S006C	\N	Hobart	/mnt/rdsi/AUSTRAL	u
314	\N	3	\N	210	cd	u	u	n	RK18KP	astro	Hobart (for e-transfer)	\N	u
975	\N	\N	5000	4900	ho	u	u	n	VX028A	\N	Hobart	\N	u
1571	\N	\N	2000	\N	hb	u	p	n	S005C	\N	Hobart	\N	u
1573	\N	\N	2000	\N	ke	u	u	n	S005C	\N	Hobart (for e-transfer)	\N	u
630	\N	\N	1679	\N	ke	u	u	n	R4876	\N	Hobart (for e-transfer)	\N	u
911	\N	\N	1500	\N	ho	u	u	n	V452F	\N	Hobart	\N	u
2138	\N	\N	2500	\N	cd	u	u	n	S010D	\N	Hobart	\N	u
1572	\N	\N	2000	\N	cd	u	u	n	S005C	\N	Hobart	\N	u
2371	\N	\N	\N	\N	hb	p	p	n	S017B	\N	Hobart	\N	p
2372	\N	\N	\N	\N	cd	u	u	n	S017B	\N	Hobart	\N	u
2405	\N	\N	\N	\N	cd	u	u	n	S018B	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
204	\N	172	1100	1019	yg	u	u	d	OHG112	godzilla16	Hobart (for e-transfer)	\N	u
143	\N	267	2000	1053	ho	u	u	d	C1712	IVS	 	\N	u
1576	\N	\N	2000	\N	ke	u	u	n	S006B	\N	Hobart (for e-transfer)	flxbflke	u
315	\N	3	\N	210	cd	u	u	n	RK18KQ	astro	Hobart (for e-transfer)	\N	u
1907	\N	\N	\N	\N	yg	u	u	d	R41020	\N	Washington (DHL)	\N	u
316	\N	3	\N	210	cd	u	u	n	RK18KU	astro	Hobart (for e-transfer)	\N	u
2766	\N	332	3410	3153	yg	u	u	n	RV152	IVS	\N	/mnt/rd1/IVS//rv152yg/	u
305	\N	25	\N	437	cd	u	u	n	RG30B	astro	Hobart (for e-transfer)	\N	u
331	\N	25	\N	136	cd	u	u	n	VC357	LBA	Hobart (for e-transfer)	\N	u
332	\N	48	\N	1402	cd	u	u	n	V456C	LBA	Hobart (for e-transfer)	\N	u
351	\N	70	\N	3425	td	u	u	n	V561B	LBA	Hobart (for e-transfer)	\N	u
356	\N	31	\N	1027	td	u	u	n	V566A	LBA	Hobart (for e-transfer)	\N	u
359	\N	4	\N	286	td	u	u	n	RG28BF	LBA	Hobart (for e-transfer)	\N	u
360	\N	6	\N	846	td	u	u	n	RK18ON	LBA	Hobart (for e-transfer)	\N	u
363	\N	5	\N	566	td	u	u	n	RK18OM	LBA	Hobart (for e-transfer)	\N	u
365	\N	6	\N	846	td	u	u	n	RK18OJ	astro	Hobart (for e-transfer)	\N	u
1337	\N	33	\N	229	yg	u	u	n	SI0056	flexbuf3	\N	\N	u
1910	\N	\N	\N	\N	yg	u	u	d	R41021	\N	Washington (DHL)	\N	u
346	\N	53	\N	898	cd	u	u	n	VX999H	LBA	Hobart (for e-transfer)	\N	u
348	\N	66	\N	3023	cd	u	u	n	GG084A	LBA	Hobart (for e-transfer)	\N	u
361	\N	84	\N	4225	cd	u	u	n	V558A	LBA	Hobart (for e-transfer)	\N	u
1695	\N	40	500	232	yg	u	u	n	SI0356	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0356yg/	u
367	\N	4	\N	286	td	u	u	n	RG28AT	astro	Hobart (for e-transfer)	\N	u
2932	\N	\N	300	\N	hb	p	p	n	Z22066	\N	\N	\N	p
1694	\N	\N	500	\N	hb	u	u	n	SI0356	\N	Hobart	\N	u
2906	\N	\N	300	\N	yg	p	p	n	Z22199	\N	Hobart	\N	p
2092	\N	\N	2500	\N	cd	u	p	n	S008F	\N	Hobart	/mnt/rdsi/AUSTRAL/s008fcd	p
368	\N	1	\N	286	td	u	u	n	RG28AU	astro	Hobart (for e-transfer)	\N	u
258	\N	98	\N	2605	cd	u	u	n	V562A	LBA	Hobart (for e-transfer)	\N	u
373	\N	0	\N	0	cd	u	u	n	V4546D	LBA	Hobart (for e-transfer)	\N	u
1575	\N	\N	2000	\N	cd	u	p	n	S006B	\N	Hobart	\N	u
1917	\N	\N	\N	\N	yg	u	u	d	R41022	\N	Washington (DHL)	\N	u
1925	\N	\N	1675	\N	yg	u	u	d	R41024	\N	Washington (DHL)	\N	u
2958	\N	\N	300	\N	hb	p	p	n	Z22248	\N	\N	\N	p
268	\N	11	\N	2	cd	u	u	n	VC354	LBA	Hobart (for e-transfer)	\N	u
274	\N	13	\N	16	cd	u	u	n	VC353	LBA	Hobart (for e-transfer)	\N	u
269	\N	62	\N	2190	cd	u	u	n	GG083D	LBA	Hobart (for e-transfer)	\N	u
277	\N	58	\N	2038	cd	u	u	n	GG083B	LBA	Hobart (for e-transfer)	\N	u
1919	\N	\N	\N	\N	yg	u	u	d	R41023	\N	Washington (DHL)	\N	u
280	\N	0	\N	0	cd	u	u	n	RK18BD	astro	Hobart (for e-transfer)	\N	u
1932	\N	\N	\N	\N	yg	u	u	d	R41025	\N	Washington (DHL)	\N	u
1440	\N	\N	600	\N	wa	u	u	n	MSC002	flexbuflyg	Hobart	/disk3/msc002wa/	u
287	\N	4	\N	103	cd	u	u	n	RG30A	astro	Hobart (for e-transfer)	\N	u
976	\N	\N	\N	1200	ho	u	u	n	VX026A	flexbuf1	Hobart	\N	u
288	\N	3	\N	105	cd	u	u	n	RK18FC	astro	Hobart (for e-transfer)	\N	u
289	\N	2	\N	88	cd	u	u	n	RK18FY	astro	Hobart (for e-transfer)	\N	u
290	\N	1	\N	35	cd	u	u	n	RG28AL	astro	Hobart (for e-transfer)	\N	u
291	\N	4	\N	104	cd	u	u	n	RK18GH	astro	Hobart (for e-transfer)	\N	u
863	\N	5	\N	423	td	u	u	n	RK23BW	astro	Hobart (for e-transfer)	\N	u
864	\N	5	\N	423	td	u	u	n	RK23CA	astro	Hobart (for e-transfer)	\N	u
865	\N	7	\N	344	td	u	u	n	RK23CG	astro	Hobart (for e-transfer)	\N	u
866	\N	5	\N	423	td	u	u	n	RK23CN	astro	Hobart (for e-transfer)	\N	u
870	\N	4	\N	215	td	u	u	n	RK23CD	astro	Hobart (for e-transfer)	\N	u
292	\N	4	\N	104	cd	u	u	n	RK18GI	astro	Hobart (for e-transfer)	\N	u
1574	\N	\N	2000	\N	hb	u	p	n	S006B	\N	Hobart	\N	u
293	\N	3	\N	105	cd	u	u	n	RK18GL	astro	Hobart (for e-transfer)	\N	u
294	\N	4	\N	103	cd	u	u	n	RK18GM	astro	Hobart (for e-transfer)	\N	u
295	\N	0	\N	0	cd	u	u	n	RK18GR	astro	Hobart (for e-transfer)	\N	u
296	\N	3	\N	105	cd	u	u	n	RK18GV	astro	Hobart (for e-transfer)	\N	u
297	\N	2	\N	70	cd	u	u	n	RK18HM	astro	Hobart (for e-transfer)	\N	u
298	\N	4	\N	103	cd	u	u	n	RK18HQ	astro	Hobart (for e-transfer)	\N	u
299	\N	3	\N	104	cd	u	u	n	RK18HR	astro	Hobart (for e-transfer)	\N	u
300	\N	3	\N	104	cd	u	u	n	RK18HU	astro	Hobart (for e-transfer)	\N	u
301	\N	4	\N	104	cd	u	u	n	RK18IR	astro	Hobart (for e-transfer)	\N	u
302	\N	2	\N	70	cd	u	u	n	RK18IU	astro	Hobart (for e-transfer)	\N	u
79	\N	3	\N	105	cd	u	u	n	RK18AD	astro	Hobart (for e-transfer)	\N	u
1648	\N	\N	2500	\N	cd	u	u	n	S004D	\N	Hobart	\N	u
2091	\N	\N	2500	\N	hb	u	u	n	S008F	\N	Hobart	\N	u
2034	\N	418	3000	\N	hb	u	u	n	S007C	\N	Hobart	\N	u
1646	\N	\N	2500	\N	ke	u	u	n	S004D	\N	Hobart (for e-transfer)	\N	u
2033	\N	418	3000	\N	ke	u	u	n	S007C	\N	Hobart		u
852	\N	145	9207	7238	yg	u	u	d	AUA058	AUSTRAL	Hobart (for e-transfer)	\N	u
858	\N	202	10006	9312	yg	u	u	d	AUA059	AUSTRAL	Hobart (for e-transfer)	\N	u
435	\N	323	1910	1349	ke	u	u	d	R1849	bfg16	Hobart (for e-transfer)	\N	u
1740	\N	405	1040	963	ho	u	u	d	R1982	IVS	None	/mnt/rd1/IVS//r1982ho/	u
1406	\N	\N	6680	\N	hb	u	u	d	AUA064	\N	\N	/mnt/disk3/aua064hb	u
2343	\N	53	\N	2329	ti	u	u	d	V596B	LBA1	\N	/mnt/rdsi/LBA//v596bti/	u
2141	\N	\N	2500	\N	hb	u	u	n	S010E	\N	Hobart	\N	u
2770	\N	\N	\N	\N	cd	u	p	n	V252CB	\N	Hobart	\N	c
2768	\N	\N	\N	\N	ke	u	p	n	V252CB	\N	Hobart	\N	u
2769	\N	115	\N	1975	yg	u	c	n	V252CB	LBA1	Hobart	/mnt/rdsi/LBA//v252cbyg/	u
1578	\N	\N	2000	\N	cd	u	u	n	S007A	\N	Hobart	\N	u
2093	\N	\N	2500	\N	wa	u	u	n	S008F	\N	Hobart	\N	u
1441	\N	\N	600	\N	cd	u	u	n	MSC002	\N	Hobart	/mnt/rdsi/AUSTRAL/msc002cd/	u
1494	\N	\N	\N	\N	yg	u	u	n	SI0092	\N	Hobart	/mnt/rdsi/AUSTRAL/si0092yg/	u
617	\N	59	\N	1361	td	u	u	n	V560C	LBA	Hobart (for e-transfer)	\N	u
511	\N	0	\N	0	yg	u	u	n	V252BM	LBA	Hobart (for e-transfer)	\N	u
2771	\N	36	\N	3602	td	u	p	n	V252CB	LBA1	Hobart	/mnt/rdsi/LBA//v252cbtd/	u
2282	\N	\N	1700	\N	ke	u	u	n	FM007	\N	Hobart	flexbuflyg:/mnt/disk2/	u
570	\N	209	200	184	hb	u	u	n	S7615B	astro	Hobart (for e-transfer)	\N	u
2767	\N	\N	\N	\N	hb	u	p	n	V252CB	\N	Hobart	\N	u
73	2017-10-25	\N	1000	\N	ke	u	u	n	V329G	\N	Hobart (for e-transfer)	\N	u
2933	\N	\N	300	\N	hb	p	p	n	Z22073	\N	\N	\N	p
2907	\N	\N	300	\N	yg	p	p	n	Z22206	\N	Hobart	\N	p
885	\N	\N	1500	\N	ho	u	u	n	GM074A	\N	Hobart	\N	u
1023	\N	\N	1800	\N	hb	u	u	n	DYN010	\N	Hobart	\N	u
2959	\N	\N	300	\N	hb	p	p	n	Z22255	\N	\N	\N	p
619	\N	6	\N	846	td	u	u	n	RK25AU	LBA	Hobart (for e-transfer)	\N	u
1649	\N	204	\N	1422	td	u	u	d	T2141	IVS	\N	/mnt/rd1/IVS//t2141td/	u
2256	\N	\N	\N	\N	hb	u	u	n	S003E	\N	Hobart	\N	u
1577	\N	\N	2000	\N	hb	u	p	n	S007A	\N	Hobart	\N	u
1697	\N	\N	2500	\N	hb	u	p	n	S009C	\N	Hobart	\N	u
2143	\N	2500	\N	\N	wa	u	u	n	S010E	\N	Hobart	\N	u
1698	\N	\N	2500	\N	cd	u	u	n	S009C	\N	Hobart	\N	u
2036	\N	418	3000	\N	ke	u	u	n	S008D	\N	Hobart	\N	u
1696	\N	\N	2500	\N	ke	u	u	n	S009C	\N	Hobart (for e-transfer)	\N	u
2035	\N	418	3000	\N	cd	u	u	n	S008D	\N	Hobart	vbs://flexbuflcd/	u
2142	\N	\N	2500	\N	cd	u	u	n	S010E	\N	Hobart	vbs://flexbuflcd	u
2037	\N	418	3000	\N	hb	u	u	n	S008D	\N	Hobart	vbs://flexbuflcd/	u
1387	\N	\N	\N	\N	ke	u	u	n	S001D	AUSTRAL1	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/s001dke/	u
2140	\N	\N	2500	\N	ke	u	u	n	S010E	\N	Hobart	vbs://flexbuflcd/	u
2255	\N	\N	\N	\N	cd	u	p	n	S003E	\N	Hobart	/mnt/rdsi/AUSTRAL/s003ecd	p
2146	\N	\N	2500	\N	cd	u	p	n	S011D	\N	Hobart	vbs://flexbuflcd/	p
2257	\N	\N	\N	\N	ke	u	u	n	S003E	\N	Hobart	\N	u
2373	\N	\N	\N	\N	ke	u	p	n	S006H	\N	Hobart	\N	u
183	\N	306	8220	7562	yg	u	u	d	AOV019	AUSTRAL	Hobart (for e-transfer)	\N	u
1053	\N	211	6000	5400	yg	u	u	d	MV015	flexbuf2	Hobart	\N	u
1699	\N	\N	2500	\N	ke	u	u	n	S001H	\N	Hobart (for e-transfer)	\N	u
2774	\N	80	\N	1205	yg	u	p	n	V583C	LBA1	Hobart	/mnt/rdsi/LBA//v583cyg/	u
2772	\N	\N	\N	\N	ke	u	p	n	V583C	\N	Hobart	\N	c
2776	\N	95	\N	2822	td	u	p	n	V583C	LBA1	Hobart	/mnt/rdsi/LBA//v583ctd/	u
2908	\N	\N	300	\N	yg	p	p	n	Z22213	\N	Hobart	\N	p
1580	\N	\N	2000	\N	hb	u	p	n	S008A	\N	Hobart	\N	u
1653	\N	\N	2500	\N	hb	u	p	n	S012A	\N	Hobart	\N	u
2960	\N	\N	300	\N	hb	p	p	n	Z22262	\N	\N	\N	p
2773	\N	\N	\N	\N	hb	u	p	n	V583C	\N	Hobart	\N	u
2775	\N	\N	\N	\N	cd	u	p	n	V583C	\N	Hobart	\N	u
1026	\N	\N	1800	\N	hb	u	u	n	DYN011	\N	Hobart	\N	u
612	\N	59	1500	1252	yg	u	u	n	MV041	AUSTRAL	Hobart (for e-transfer)	\N	u
873	\N	\N	\N	\N	cd	u	u	n	RK25AC	astro	Hobart (for e-transfer)	\N	u
874	\N	\N	\N	\N	cd	u	u	n	RK25AF	astro	Hobart (for e-transfer)	\N	u
875	\N	\N	\N	\N	cd	u	u	n	RK25AJ	astro	Hobart (for e-transfer)	\N	u
1581	\N	\N	2000	\N	cd	u	p	n	S008A	\N	Hobart	\N	u
876	\N	\N	\N	\N	cd	u	u	n	RK25AO	astro	Hobart (for e-transfer)	\N	u
877	\N	\N	\N	\N	cd	u	u	n	RK25AP	astro	Hobart (for e-transfer)	\N	u
2039	\N	417	3000	\N	ke	u	u	n	S005H	\N	Hobart	vbs://flexbuflcd	u
1654	\N	\N	2500	\N	wa	u	p	n	S012A	\N	Hobart	\N	u
2095	\N	\N	2500	\N	hb	u	u	n	S007E	\N	Hobart	\N	u
2097	\N	\N	2500	\N	wa	u	u	n	S007E	\N	Hobart	\N	u
2038	\N	417	3000	\N	cd	u	u	n	S005H	\N	Hobart	/mnt/rdsi/AUSTRAL	u
2096	\N	\N	2500	\N	cd	u	u	n	S007E	\N	Hobart	/mnt/rdsi/AUSTRAL/s007ecd	u
2094	\N	\N	2500	\N	ke	u	u	n	S007E	\N	Hobart	vbs://flexbuflcd/	u
2145	\N	\N	2500	\N	hb	u	u	n	S011D	\N	Hobart	\N	u
2147	\N	\N	2500	\N	wa	u	u	n	S011D	\N	Hobart	\N	u
410	\N	409	\N	1750	yg	u	u	d	R1841	godzilla16	Hobart (for e-transfer)	\N	u
2144	\N	\N	2500	\N	ke	u	u	n	S011D	\N	Hobart	\N	u
2777	\N	\N	\N	\N	ke	p	p	n	V515E	\N	Hobart	\N	p
1700	\N	\N	\N	\N	ke	u	u	n	S001I	\N	Hobart (for e-transfer)	\N	u
1300	\N	\N	\N	\N	hb	u	u	n	AUM011	\N	Hobart	\N	u
707	\N	200	1120	1050	yg	u	u	d	T2131	IVS1	Hobart (for e-transfer)	\N	u
896	\N	\N	1500	\N	ho	u	u	n	GM074C	\N	Hobart	\N	u
1029	\N	\N	1800	\N	hb	u	u	n	DYN012	\N	Hobart	\N	u
2779	\N	127	\N	3202	yg	u	p	n	V515E	LBA1	Hobart	/mnt/rdsi/LBA//v515eyg/	u
1655	\N	\N	2500	\N	cd	u	u	n	S012A	\N	Hobart	/mnt/rdsi/AUSTRAL/s012acd//s012acd	u
2780	\N	\N	\N	\N	cd	u	p	n	V515E	\N	Hobart	\N	c
2778	\N	\N	\N	\N	hb	u	p	n	V515E	\N	Hobart	\N	u
1412	\N	\N	14500	\N	hb	u	u	n	AUM016	\N	Hobart	\N	u
897	\N	\N	1000	\N	ho	u	u	n	VX027A	\N	Hobart	\N	u
2781	\N	24	\N	641	td	u	p	n	V515E	LBA1	Hobart	/mnt/rdsi/LBA//v515etd/	u
1032	\N	\N	5000	\N	kb	u	u	n	VX028A	\N	Hobart	\N	u
867	\N	5	\N	423	td	u	u	n	RK23CQ	astro	Hobart (for e-transfer)	\N	u
2935	\N	\N	300	\N	hb	p	p	n	Z22087	\N	\N	\N	p
2909	\N	\N	300	\N	yg	p	p	n	Z22220	\N	Hobart	\N	p
1033	\N	\N	5000	\N	hi	u	u	n	VX028A	\N	Hobart	\N	u
2961	\N	\N	300	\N	hb	p	p	n	Z22269	\N	\N	\N	p
1584	\N	\N	2000	\N	hb	u	p	n	S007B	\N	Hobart	\N	u
1034	\N	\N	5000	\N	ya	u	u	n	VX028A	\N	Hobart	\N	u
1414	2020-05-29	574	4700	\N	hb	u	u	n	S003B	\N	Hobart	\N	u
2148	\N	\N	2500	\N	ke	u	u	n	S011E	\N	Hobart	\N	u
1117	\N	\N	5000	\N	ho	u	u	n	V447J	\N	Hobart	\N	u
1419	\N	\N	4000	\N	hb	u	u	n	AUMCT1	\N	Hobart	\N	u
982	\N	\N	900	\N	ho	p	u	n	VX026B	\N	Hobart	\N	u
1121	\N	413	2560	\N	ho	u	u	n	V255AH	\N	Hobart	\N	u
1062	\N	\N	2000	\N	cd	u	u	n	MV042	\N	Hobart	\N	u
2042	\N	418	3000	\N	ke	u	u	n	S006D	\N	Hobart	flexbuflcd	u
1063	\N	\N	2000	\N	hb	u	u	n	MV042	\N	Hobart	\N	u
1064	\N	\N	2000	\N	ho	u	u	n	MV042	\N	Hobart	\N	u
902	\N	\N	1500	\N	ho	u	u	n	V252BQ	\N	Hobart	\N	u
932	\N	73	4000	4113	ho	u	u	n	V558C	\N	Hobart	\N	u
510	\N	113	\N	4243	ho	u	u	n	RD1807	IVS	 	/mnt/rd1/IVS/rd1807ho	u
1416	2020-05-29	574	4700	\N	cd	u	u	n	S003B	\N	Hobart	/mnt/disk3/s003bcd	u
1585	\N	\N	2000	\N	cd	u	p	n	S007B	\N	Hobart	\N	u
1443	\N	25	250	139	yg	u	u	n	SI0174	\N	Hobart	/mnt/rdsi/AUSTRAL/si0174yg/	u
2149	\N	\N	2500	\N	hb	u	u	n	S011E	\N	Hobart	\N	u
2101	\N	\N	2500	\N	wa	u	u	n	S009D	\N	Hobart	\N	u
2100	\N	\N	2500	\N	cd	u	u	n	S009D	\N	Hobart	/mnt/rdsi/AUSTRAL	u
2098	\N	\N	2500	\N	ke	u	u	n	S009D	\N	Hobart	vbs://flexbuflcd/	u
2041	\N	418	3000	\N	cd	u	u	n	S006D	\N	Hobart	/mnt/rdsi/AUSTRAL	u
2151	\N	\N	2500	\N	wa	u	u	n	S011E	\N	Hobart	\N	u
2099	\N	\N	2500	\N	hb	u	u	n	S009D	\N	Hobart	vbs://flexbuflcd	u
818	\N	\N	1900	\N	yg	u	u	n	R4907	\N	Washington (DHL)	\N	u
2344	\N	30	\N	1324	ti	u	u	d	VX031A	LBA1	\N	/mnt/rdsi/LBA//vx031ati/	u
2782	\N	\N	\N	\N	ke	p	p	n	V607A	\N	Hobart	\N	p
1418	\N	\N	2000	\N	yg	u	u	n	AUMCT1	\N	Hobart	/mnt/rdsi/AUSTRAL/aumtc1yg	u
2784	\N	40	\N	4564	yg	u	p	n	V607A	LBA1	Hobart	/mnt/rdsi/LBA//v607ayg/	u
2785	\N	\N	\N	\N	cd	u	p	n	V607A	\N	Hobart	\N	c
2283	\N	\N	1700	\N	ke	u	u	n	FM008	\N	Hobart	flexbuflyg:/mnt/disk2/	u
2786	\N	39	\N	994	td	u	p	n	V607A	LBA1	Hobart	/mnt/rdsi/LBA//v607atd/	u
2936	\N	\N	300	\N	hb	p	p	n	Z22094	\N	\N	\N	p
2910	\N	\N	300	\N	yg	p	p	n	Z22227	\N	Hobart	\N	p
2962	\N	\N	300	\N	hb	p	p	n	Z22276	\N	\N	\N	p
1659	\N	\N	2500	\N	wa	u	p	n	S001G	\N	Hobart	\N	u
1658	\N	\N	2500	\N	cd	u	u	n	S001G	\N	Hobart	\N	u
2783	\N	\N	\N	\N	hb	u	p	n	V607A	\N	Hobart	\N	c
2224	\N	32	500	256	yg	u	p	n	SI1169	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si1169yg/	u
2103	\N	\N	2500	\N	cd	u	p	n	S008E	\N	Hobart	/mnt/rdsi/AUSTRAL//s008ecd	u
2102	\N	\N	2500	\N	hb	u	u	n	S008E	\N	Hobart	vbs://flexbuflcd/	u
2105	\N	\N	2500	\N	wa	u	u	n	S008E	\N	Hobart	\N	u
2104	\N	\N	2500	\N	ke	u	u	n	S008E	\N	Hobart	vbs://flexbuflcd/	u
2223	\N	\N	500	\N	hb	p	p	n	SI1169	\N	Hobart	\N	p
2259	\N	\N	\N	\N	hb	u	u	n	S014A	\N	Hobart	\N	u
2319	\N	\N	\N	\N	ho	p	p	n	V595B	\N	Hobart	\N	p
2297	\N	\N	\N	\N	td	p	p	n	V576B	\N	Hobart	\N	p
1587	\N	\N	2000	\N	hb	u	p	n	S008B	\N	Hobart	\N	u
1586	\N	\N	2000	\N	ke	u	u	n	S008B	\N	Hobart (for e-transfer)	flxbflke	u
1657	\N	\N	2500	\N	hb	u	p	n	S001G	\N	Hobart	\N	u
1417	\N	\N	6000	\N	ke	u	u	n	AUMCT1	rd1	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/aumtc1ke/	u
1588	\N	\N	2000	\N	cd	u	p	n	S008B	\N	Hobart	/mnt/rdsi/AUSTRAL/s008bcd	u
2374	\N	\N	\N	\N	hb	p	p	n	S006H	\N	Hobart	\N	p
2375	\N	\N	\N	\N	cd	u	u	n	S006H	\N	Hobart	\N	u
2260	\N	\N	\N	\N	ke	u	u	n	S014A	\N	Hobart	\N	u
489	\N	549	\N	3217	ke	u	u	d	R1856	bfg16	Hobart (for e-transfer)	\N	u
2406	\N	\N	\N	\N	ke	u	p	n	S019B	\N	Hobart	\N	p
1589	\N	\N	2000	\N	ke	u	u	n	S009A	\N	Hobart (for e-transfer)	flxbflke	u
2108	\N	\N	2500	\N	cd	u	u	n	S007D	\N	Hobart	/mnt/rdsi/AUSTRAL	u
2320	\N	\N	\N	\N	ho	u	u	d	VX030A	\N	Hobart	\N	u
2107	\N	\N	2500	\N	ke	u	u	n	S007D	\N	Hobart	vbs://flexbuflcd/	u
2534	\N	172	\N	7329	yg	u	p	n	CRF128	IVS	\N	/mnt/rd1/IVS//crf128yg/	u
1702	\N	\N	2500	\N	cd	u	u	n	S001K	\N	Hobart	/mnt/rdsi/AUSTRAL//s001kcd	u
2284	\N	\N	1700	\N	ke	u	u	n	FM009	\N	Hobart	flexbuflyg:/mnt/disk2/	u
2937	\N	\N	300	\N	hb	p	p	n	Z22101	\N	\N	\N	p
2911	\N	\N	300	\N	yg	p	p	n	Z22234	\N	Hobart	\N	p
2963	\N	\N	300	\N	hb	p	p	n	Z22283	\N	\N	\N	p
2106	\N	\N	2500	\N	hb	u	u	n	S007D	\N	Hobart	vbs://flexbuflcd/	u
1590	\N	\N	2000	\N	hb	u	p	n	S009A	\N	Hobart	\N	u
1703	\N	\N	2500	\N	hb	u	p	n	S001K	\N	Hobart	\N	u
2225	\N	\N	500	\N	hb	p	p	n	SI1141	\N	Hobart	\N	p
2226	\N	\N	500	\N	yg	u	u	n	SI1141	\N	Hobart	/mnt/flexbuf0/	u
1591	\N	\N	2000	\N	cd	u	u	n	S009A	\N	Hobart	/mnt/rdsi/AUSTRAL/s009acd	u
2258	\N	\N	\N	\N	cd	u	u	n	S014A	\N	Hobart	/mnt/rdsi/AUSTRAL/s014acd	u
209	\N	65	1770	320	ke	u	u	d	R4828	IVS	Hobart (for e-transfer)	\N	u
2300	\N	\N	\N	\N	td	p	p	n	V576C	\N	Hobart	\N	p
381	\N	144	\N	3095	ho	u	u	d	RD1803	IVS	 	\N	u
349	\N	175	\N	6078	ho	u	u	d	AUA036	AUSTRAL	 	\N	u
402	\N	225	10000	7861	ho	u	u	d	AUA042	AUSTRAL	 	\N	u
1909	\N	240	\N	1022	yg	u	p	n	T2149	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//t2149yg/	u
1913	\N	\N	\N	\N	ke	u	u	d	AUA081	\N	Hobart	\N	u
1922	\N	\N	\N	\N	ke	u	u	d	AUA082	\N	Hobart	\N	u
2321	\N	\N	\N	\N	ho	u	u	d	V560H	\N	Hobart	\N	u
1903	\N	\N	\N	\N	ke	u	u	d	AOV064	\N	Hobart	\N	u
1927	\N	\N	\N	\N	ke	u	u	d	AOV065	\N	Hobart	\N	u
1592	\N	\N	2000	\N	hb	u	p	n	S010A	\N	Hobart	\N	u
2285	\N	\N	1700	\N	ke	u	u	n	FM006	\N	Hobart	flexbuflyg:/mnt/disk2/	u
2787	\N	33	300	268	yg	u	p	n	Z22024	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//z22024yg/	p
2886	\N	\N	300	\N	yg	p	p	n	Z22059	\N	Hobart	\N	p
2938	\N	\N	300	\N	hb	p	p	n	Z22108	\N	\N	\N	p
2912	\N	\N	300	\N	yg	p	p	n	Z22241	\N	Hobart	\N	p
2964	\N	\N	300	\N	hb	p	p	n	Z22290	\N	\N	\N	p
2160	\N	32	\N	234	yg	u	p	n	SI1106	flexbuf2	\N	/mnt/flexbuf2/si1106yg/	p
2376	\N	\N	\N	\N	ke	u	p	n	S006I	\N	Hobart	\N	u
2263	\N	\N	\N	\N	hb	u	u	n	S010G	\N	Hobart	\N	u
2227	\N	\N	500	\N	hb	p	p	n	SI1148	\N	Hobart	\N	p
2090	\N	\N	2500	\N	ke	u	u	n	S008F	\N	Hobart	vbs://flexbuflcd/	u
1785	\N	360	890	867	yg	u	p	n	T2145	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//t2145yg/	u
2228	\N	\N	500	\N	yg	u	u	n	SI1148	\N	Hobart	/mnt/flexbuf2/	u
2261	\N	\N	\N	\N	ke	u	u	n	S010G	\N	Hobart	\N	u
1594	\N	\N	2000	\N	cd	u	p	n	S010A	\N	Hobart	/mnt/rd1/AUSTRAL/s010acd	u
2262	\N	\N	\N	\N	cd	u	u	n	S010G	\N	Hobart	vbs://flexbuflcd	u
2377	\N	\N	\N	\N	hb	p	p	n	S006I	\N	Hobart	\N	p
2407	\N	\N	\N	\N	hb	p	p	n	S019B	\N	Hobart	\N	p
2378	\N	\N	\N	\N	cd	u	u	n	S006I	\N	Hobart	\N	u
792	\N	201	9990	6741	ho	u	u	d	AUA054	AUSTRAL1		\N	u
2408	\N	\N	\N	\N	cd	u	u	n	S019B	\N	Hobart	\N	u
2381	\N	\N	\N	\N	cd	u	p	n	S016D	\N	Hobart	\N	p
1815	\N	228	3030	2371	ho	u	u	d	RV147	IVS	None	/mnt/rd1/IVS//rv147ho/	u
2322	\N	\N	\N	\N	ho	u	u	d	V576D	\N	Hobart	\N	u
1196	\N	237	9090	8811	yg	c	u	d	CRF119	IVS	Hobart (for e-transfer)	\N	u
1712	\N	39	500	223	yg	u	u	n	SI0316	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//si0316yg/	u
2887	\N	\N	300	\N	yg	p	p	n	Z22066	\N	Hobart	\N	p
2939	\N	\N	300	\N	hb	p	p	n	Z22115	\N	\N	\N	p
2913	\N	\N	300	\N	yg	p	p	n	Z22248	\N	Hobart	\N	p
2965	\N	\N	300	\N	hb	p	p	n	Z22297	\N	\N	\N	p
2032	\N	418	3000	\N	cd	u	u	n	S007C	\N	Hobart	/mnt/rdsi/AUSTRAL	u
1711	\N	\N	500	\N	hb	u	u	n	SI0316	\N	Hobart	\N	u
2229	\N	\N	500	\N	hb	p	p	n	SI1155	\N	Hobart	\N	p
2303	\N	\N	\N	\N	cd	u	p	n	S015B	\N	Hobart	/mnt/rdsi/AUSTRAL/s015bcd	p
690	\N	175	10238	7382	yg	u	u	d	AUA050	AUSTRAL1	Hobart (for e-transfer)	\N	u
2230	\N	\N	500	\N	yg	u	u	n	SI1155	\N	Hobart	/mnt/flexbuf2/	u
2266	\N	\N	\N	\N	hb	u	u	n	S011G	\N	Hobart	\N	u
2304	\N	\N	\N	\N	hb	u	u	n	S015B	\N	Hobart	\N	u
2302	\N	\N	\N	\N	ke	u	u	n	S015B	\N	Hobart	vbs://flexbuflcd/ 	u
2264	\N	\N	\N	\N	ke	u	p	n	S011G	\N	Hobart	\N	p
2265	\N	\N	\N	\N	cd	u	u	n	S011G	\N	Hobart	vbs://flexbuflcd/	u
2380	\N	\N	\N	\N	hb	p	p	n	S016D	\N	Hobart	\N	p
1701	\N	\N	2500	\N	ke	u	p	n	S001J	\N	Hobart (for e-transfer)	\N	p
1656	\N	\N	2500	\N	ke	u	p	n	S001G	\N	Hobart (for e-transfer)	\N	u
1704	\N	\N	2500	\N	ke	u	p	n	S001K	\N	Hobart (for e-transfer)	\N	p
798	\N	229	6490	6028	yg	u	u	d	AOV037	AUSTRAL1	Hobart (for e-transfer)	\N	u
2382	\N	\N	\N	\N	ke	u	p	n	S008H	\N	Hobart	vbs://131.217.63.229/	p
1582	\N	\N	2000	\N	ke	u	u	n	S008A	\N	Hobart (for e-transfer)	flxbflke	u
2788	\N	\N	\N	\N	36	p	u	n	T2141	\N	\N	\N	u
2940	\N	\N	300	\N	hb	p	p	n	Z22122	\N	\N	\N	p
2914	\N	\N	300	\N	yg	p	p	n	Z22255	\N	Hobart	\N	p
2306	\N	\N	\N	\N	hb	u	u	n	S004K	\N	Hobart	\N	u
2966	\N	\N	300	\N	hb	p	p	n	Z22304	\N	\N	\N	p
2888	\N	\N	300	\N	yg	p	p	n	Z22073	\N	Hobart	\N	p
2053	\N	\N	2500	\N	ke	u	u	n	S006E	\N	Hobart	\N	u
1599	\N	\N	2000	\N	cd	u	p	n	S011A	\N	Hobart	/mnt/rdsi/AUSTRAL/s011acd	u
2109	\N	\N	\N	\N	hb	u	u	n	S004E	\N	Hobart	\N	u
1598	\N	\N	2000	\N	hb	u	p	n	S011A	\N	Hobart	\N	u
2231	\N	\N	500	\N	hb	p	p	n	SI1161	\N	Hobart	\N	p
2232	\N	\N	500	\N	yg	u	u	n	SI1161	\N	Hobart	\N	u
2383	\N	\N	\N	\N	hb	p	p	n	S008H	\N	Hobart	\N	p
2268	\N	\N	\N	\N	cd	u	u	n	S001M	\N	Hobart	/mnt/flexbuflke/	u
2269	\N	\N	\N	\N	hb	u	u	n	S001M	\N	Hobart	\N	u
2267	\N	\N	\N	\N	ke	u	u	n	S001M	\N	Hobart	\N	u
2246	\N	\N	500	\N	yg	u	u	n	SI1225	\N	Hobart	\N	u
2384	\N	\N	\N	\N	cd	u	p	n	S008H	\N	Hobart	\N	p
2305	\N	\N	\N	\N	ke	u	u	n	S004K	\N	Hobart	\N	u
47	\N	62	1700	1591	yg	u	u	d	R4811	IVS	Washington (DHL)	\N	u
1369	\N	\N	3541	\N	ho	u	u	d	AOV048	AUSTRAL1	\N	\N	u
1080	\N	\N	1100	\N	cd	u	u	d	V576A	\N	Hobart	\N	u
2309	\N	\N	\N	\N	hb	u	u	n	S004J	\N	Hobart	\N	u
1720	\N	\N	\N	\N	yg	u	u	d	V596A	\N	Hobart	/mnt/rd1/LBA	u
1718	\N	\N	\N	\N	cd	u	u	d	V596A	\N	Hobart	/mnt/rdsi/LBA/v596acd	u
1719	\N	\N	\N	\N	ho	u	u	d	V596A	\N	Hobart	/mnt/rdsi/LBA/v596aho	u
2150	\N	\N	2500	\N	cd	u	u	n	S011E	\N	Hobart	vbs://flexbuflcd/	u
2110	\N	\N	\N	\N	hb	u	u	n	S004F	\N	Hobart	\N	u
2790	\N	\N	300	\N	hb	u	u	n	Z22045	\N	Hobart	\N	u
2789	\N	\N	300	\N	yg	u	u	n	Z22045	\N	Hobart	\N	u
2941	\N	\N	300	\N	hb	p	p	n	Z22129	\N	\N	\N	p
2915	\N	\N	300	\N	yg	p	p	n	Z22262	\N	Hobart	\N	p
2967	\N	\N	300	\N	hb	p	p	n	Z22311	\N	\N	\N	p
2348	\N	\N	\N	\N	hb	p	p	n	S016A	\N	Hobart	\N	p
2233	\N	\N	500	\N	hb	p	p	n	SI1176	\N	Hobart	\N	p
2234	\N	\N	500	\N	yg	u	u	n	SI1176	\N	Hobart	\N	u
1602	\N	\N	2000	\N	cd	u	p	n	S009B	\N	Hobart	/mnt/rdsi/AUSTRAL/s009bcd/	u
2349	\N	\N	\N	\N	cd	u	u	n	S016A	\N	Hobart	\N	u
1601	\N	\N	2000	\N	hb	u	p	n	S009B	\N	Hobart	\N	u
2308	\N	\N	\N	\N	ke	u	u	n	S004J	\N	Hobart	\N	u
2431	\N	\N	\N	\N	yg	u	u	n	SI1260	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
2347	\N	\N	\N	\N	ke	u	p	n	S016A	\N	Hobart	\N	u
2310	\N	\N	\N	\N	cd	u	u	n	S004J	\N	Hobart	/mnt/flexbuf1/	u
2418	\N	\N	\N	\N	cd	u	u	n	S005K	\N	Hobart	\N	u
2432	\N	\N	\N	\N	hb	p	p	n	SI1260	\N	Hobart	\N	p
2419	\N	\N	\N	\N	hb	p	p	n	S005K	\N	Hobart	\N	p
2330	\N	\N	\N	\N	cd	u	u	d	V605A	\N	Hobart	 /mnt/rdsi/LBA/v605acd/	u
1871	\N	811	5290	5031	yg	u	u	d	AUA079	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua079yg/	u
2388	\N	\N	\N	\N	ke	u	p	n	S007I	\N	Hobart	vbs://131.217.63.229/	p
2236	\N	\N	500	\N	yg	u	u	n	SI1183	\N	Hobart	\N	u
2420	\N	\N	\N	\N	ke	u	p	n	S007J	\N	Hobart	vbs://131.217.63.229/	p
2441	\N	\N	\N	\N	ke	u	p	n	S010J	\N	Hobart	vbs://131.217.63.229/	p
2412	\N	\N	\N	\N	ke	u	u	n	S017C	\N	Hobart	vbs://131.217.63.229/	u
2453	\N	\N	\N	\N	ke	u	u	n	S018D	\N	Hobart	vbs://flexbuflcd/	u
2333	\N	\N	\N	\N	ho	u	u	d	V596B	\N	Hobart	\N	u
2413	\N	\N	\N	\N	hb	p	p	n	S017C	\N	Hobart	\N	p
2331	\N	\N	\N	\N	ke	u	u	d	V596B	\N	Hobart	/mnt/rdsi/LBA	u
2270	\N	\N	\N	\N	td	u	p	n	V592B	LBA1	\N	\N	u
2332	\N	168	\N	3429	yg	u	u	d	V596B	LBA1	Hobart	/mnt/rdsi/LBA//v596byg/	u
2334	\N	\N	\N	\N	cd	u	u	d	V596B	\N	Hobart	\N	u
2476	\N	266	3520	3114	yg	u	u	d	RV150	IVS	\N	/mnt/rd1/IVS//rv150yg/	u
2414	\N	\N	\N	\N	cd	u	u	n	S017C	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
2792	\N	\N	300	\N	yg	u	p	n	Z22031	\N	Hobart	\N	p
383	\N	291	\N	7130	ke	u	u	n	V561B	LBA	Hobart (for e-transfer)	\N	u
2791	\N	\N	300	\N	hb	u	p	n	Z22031	\N	Hobart	\N	p
2942	\N	\N	300	\N	hb	p	p	n	Z22136	\N	\N	\N	p
2916	\N	\N	300	\N	yg	p	p	n	Z22269	\N	Hobart	\N	p
2350	\N	\N	\N	\N	ke	u	p	n	S016B	\N	Hobart	\N	p
2968	\N	\N	300	\N	hb	p	p	n	Z22318	\N	\N	\N	p
2890	\N	\N	300	\N	yg	p	p	n	Z22087	\N	Hobart	\N	p
1010	\N	\N	1900	\N	ke	u	u	n	R4907	\N	Hobart (for e-transfer)	\N	u
2390	\N	\N	\N	\N	cd	u	u	n	S007I	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
2474	\N	\N	\N	\N	yg	u	p	n	SI1309	\N	Hobart	\N	p
2235	\N	\N	500	\N	hb	p	p	n	SI1183	\N	Hobart	\N	p
2421	\N	\N	\N	\N	hb	p	p	n	S007J	\N	Hobart	\N	p
1072	\N	237	1230	1137	yg	u	u	d	R1913	IVS	Hobart (for e-transfer)	\N	u
1609	\N	\N	2000	\N	ke	u	u	n	S010B	\N	Hobart (for e-transfer)	flxbflke	u
1615	\N	\N	2000	\N	ke	u	u	n	S008C	\N	Hobart (for e-transfer)	flxbflke	u
2462	\N	280	\N	2601	ti	u	p	n	T2148	IVS	\N	/mnt/rd1/IVS//t2148ti/	p
2351	\N	\N	\N	\N	hb	p	p	n	S016B	\N	Hobart	\N	p
2389	\N	\N	\N	\N	hb	p	p	n	S007I	\N	Hobart	\N	p
2434	\N	\N	\N	\N	hb	p	p	n	SI1274	\N	Hobart	\N	p
2311	\N	\N	\N	\N	cd	u	u	n	S004K	\N	Hobart	/mnt/flexbuf1/	u
2442	\N	\N	\N	\N	hb	p	p	n	S010J	\N	Hobart	\N	p
2454	\N	\N	\N	\N	hb	p	p	n	S018D	\N	Hobart	\N	p
2455	\N	\N	\N	\N	cd	p	p	n	S018D	\N	Hobart	\N	p
2422	\N	\N	\N	\N	cd	u	u	n	S007J	\N	Hobart	\N	u
2433	\N	\N	\N	\N	yg	u	u	n	SI1274	\N	Hobart	\N	u
2475	\N	\N	\N	\N	hb	p	p	n	SI1309	\N	Hobart	\N	p
546	\N	768	5000	4382	ke	u	u	d	MV022	astro	Hobart (for e-transfer)	\N	u
2443	\N	\N	\N	\N	cd	u	u	n	S010J	\N	Hobart	\N	u
1104	\N	347	1650	1525	yg	u	u	d	R1923	IVS	Hobart (for e-transfer)	\N	u
237	\N	237	\N	8259	ke	u	u	d	AUA036	AUSTRAL	Hobart (for e-transfer)	\N	u
552	\N	392	1880	1721	ke	u	u	d	R1867	IVS	Hobart (for e-transfer)	\N	u
528	\N	214	\N	7539	ho	u	u	d	CRDS98	IVS	 	\N	u
532	\N	445	1820	1685	yg	u	u	d	R1863	IVS	Hobart (for e-transfer)	\N	u
572	\N	475	1830	1699	ke	u	u	d	R1869	IVS	Hobart (for e-transfer)	\N	u
590	\N	502	7664	6994	ke	u	u	d	AUA047	AUSTRAL	Hobart (for e-transfer)	\N	u
160	\N	381	3100	2991	ke	u	u	d	C1708	IVS	Hobart (for e-transfer)	\N	u
1037	\N	205	1040	1016	ke	u	u	d	T2133	IVS	Hobart (for e-transfer)	\N	u
243	\N	159	1060	987	ke	u	u	d	CRF105	IVS	Hobart (for e-transfer)	\N	u
622	\N	57	\N	986	ke	u	u	d	V252BP	LBA	Hobart (for e-transfer)	\N	u
36	\N	481	7100	6500	ke	u	u	d	AUA027	IVS	Hobart (for e-transfer)	\N	u
1107	\N	245	1060	1011	yg	u	u	d	OHG122	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg122yg	u
1459	\N	\N	2835	\N	ho	u	u	d	V255AJ	\N	Hobart	/mnt/rdsi/LBA/v255ajho	u
1973	\N	\N	7000	\N	ke	u	u	d	AUM028	\N	\N	vbs://flexbuflcd/	u
1975	\N	\N	\N	\N	hb	u	u	d	AUM029	\N	\N	\N	u
1549	\N	\N	\N	\N	cd	u	u	d	VT29A	\N	Hobart	/mnt/rdsi/LBA/vt29acd/	u
1990	\N	\N	7190	\N	hb	u	u	d	AUM034	\N	\N	\N	u
1007	\N	\N	1678	\N	ke	u	u	d	R4904	\N	Hobart (for e-transfer)	\N	u
1978	\N	\N	5533	\N	hb	u	u	d	AUM030	\N	\N	\N	u
1979	\N	\N	7427	\N	ke	u	u	d	AUM030	\N	\N	vbs://vc7/	u
1725	\N	\N	6150	\N	hb	u	u	d	AUA071	\N	\N	\N	u
1984	\N	\N	8011	\N	hb	u	u	d	AUM032	\N	\N	\N	u
1992	\N	332	6950	6757	yg	u	u	d	AUM034	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aum034yg/	u
1006	\N	\N	1900	\N	ke	u	u	d	R4903	\N	Hobart (for e-transfer)	\N	u
1981	\N	\N	\N	\N	hb	u	u	d	AUM031	\N	\N	\N	u
1976	\N	\N	7435	\N	ke	u	u	d	AUM029	\N	\N	vbs://vc7/	u
1985	\N	\N	7886	\N	ke	u	u	d	AUM032	\N	\N	/mnt/rdsi/AUSTRAL/	u
1970	\N	\N	7000	\N	ke	u	u	d	AUM027	\N	\N	\N	u
1982	\N	\N	7448	\N	ke	u	u	d	AUM031	\N	\N	/mnt/rdsi/AUSTRAL/	u
1971	\N	516	7000	6457	yg	u	u	d	AUM027	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum027yg/	u
1986	\N	135	7875	1986	yg	u	u	d	AUM032	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum032yg/	u
794	\N	\N	1900	\N	yg	u	u	d	R4902	\N	Washington (DHL)	\N	u
1183	\N	226	770	757	ho	u	u	d	OHG125	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg125ho	u
1354	\N	\N	2652	\N	cd	u	u	d	V252BU	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252bucd	u
1201	\N	\N	1900	\N	ho	u	u	d	RD2005	\N	Hobart (for e-transfer)	/mnt/rd1/IVS/rd2005ho	u
1220	\N	198	9580	5403	yg	u	u	d	CRD108	IVS	\N	/mnt/rd1/IVS/crd108yg/	u
1425	\N	\N	5000	\N	ke	u	u	d	V558E	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v558eke/	u
1550	\N	\N	6756	\N	ke	u	u	d	AUA067	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/aua067ke	u
1198	\N	\N	\N	\N	yg	u	u	d	R4951	\N	Washington (DHL)	\N	u
1184	\N	433	4789	4414	yg	u	u	d	APSG47	IVS1	\N	/mnt/rdsi/IVS/apsg47yg	u
1185	\N	374	3615	0	ho	u	u	d	APSG47	IVS1	\N	/mnt/rdsi/IVS/apsg47ho	u
1178	\N	88	8660	9687	ho	u	u	d	CRD106	IVS1	\N	/mnt/rdsi/IVS/crd106ho	u
1612	\N	\N	\N	\N	ho	u	u	d	V586A	\N	Hobart	\N	u
1461	\N	\N	2201	\N	ke	u	u	d	V255AJ	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v255ajke/	u
1470	\N	\N	2800	\N	ke	u	u	d	V252BW	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252bwke	u
1473	\N	\N	11100	\N	cd	u	u	d	V590B	\N	Hobart	/mnt/rdsi/LBA/v590bcd/	u
525	\N	391	\N	5567	yg	u	u	d	AUM004	flexbuf2	Hobart (for e-transfer)	\N	u
447	\N	253	\N	4705	ho	u	u	d	APSG43	godzilla16	 	\N	u
1105	\N	231	3350	1846	yg	u	u	d	R1924	IVS	Hobart (for e-transfer)	\N	u
847	\N	416	8069	7458	yg	u	u	d	AOV041	AUSTRAL1	Hobart (for e-transfer)	\N	u
810	\N	216	7940	7663	ho	u	u	d	CRD104	AUSTRAL		\N	u
809	\N	218	9440	9211	yg	u	u	d	CRD104	IVS1	Hobart (for e-transfer)	\N	u
1294	\N	471	3349	3052	yg	u	u	d	AOV044	AUSTRAL	Hobart (for e-transfer)	\N	u
822	\N	196	8665	7413	ho	u	u	d	AUA055	flexbuf2	 	\N	u
1551	\N	670	6033	5497	yg	u	u	d	AUA067	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua067yg/	u
1357	\N	\N	2652	\N	ke	u	u	d	V252BU	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252buke	u
1552	\N	\N	6188	\N	hb	u	u	d	AUA067	\N	Hobart	/mnt/rdsi/AUSTRAL/aua067hb	u
1475	\N	117	11100	8733	yg	u	u	d	V590B	LBA1	Hobart	/mnt/rdsi/LBA//v590byg/	u
1229	\N	218	9697	8885	yg	u	u	d	CRF120	IVS	\N	/mnt/rd1/IVS//crf120yg/	u
1221	\N	\N	8510	\N	ho	u	u	d	CRD108	\N	\N	\N	u
531	\N	448	1820	1691	ke	u	u	d	R1863	IVS	Hobart (for e-transfer)	\N	u
564	\N	491	3360	3102	ke	u	u	d	R1868	IVS	Hobart (for e-transfer)	\N	u
1472	\N	\N	11100	\N	ho	u	u	d	V590B	\N	Hobart	/mnt/rdsi/LBA/v590bho	u
1474	\N	\N	11100	\N	ke	u	u	d	V590B	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v590bke/	u
318	\N	184	\N	4700	ke	u	u	d	MV013	AUSTRAL1	Hobart (for e-transfer)	\N	u
1301	\N	\N	6576	\N	ho	u	u	d	V253D	flxbffhb	Hobart (for e-transfer)	/mnt/rd1/LBA/v253dho/	u
1991	\N	\N	6200	\N	ke	u	u	d	AUM034	\N	\N	\N	u
2174	\N	\N	4000	\N	ho	u	u	d	V592B	\N	Hobart	\N	u
1968	\N	407	\N	6339	yg	u	u	d	AUM026	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum026yg/	u
2288	\N	\N	\N	\N	ho	u	u	d	VX029A	\N	Hobart	\N	u
2175	\N	\N	4000	\N	ke	u	u	d	V592B	\N	Hobart	\N	u
1209	\N	\N	\N	\N	yg	u	u	d	R4955	\N	Washington (DHL)	\N	u
1480	\N	342	6900	4802	yg	u	u	d	V583B	LBA	Hobart	/mnt/rd1/LBA//v583byg/	u
1249	\N	238	1550	1440	yg	u	u	d	R1971	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1971yg/	u
1242	\N	221	8039	7856	ho	u	u	d	CRF121	IVS	\N	/mnt/rd1/IVS/crf121ho/	u
1241	\N	221	9360	9115	yg	u	u	d	CRF121	IVS1	\N	/mnt/rdsi/IVS/crf121yg/	u
1972	\N	\N	7000	\N	hb	u	u	d	AUM028	\N	\N	vbs://flexbuflcd/	u
1477	\N	\N	6900	\N	ho	u	u	d	V583B	\N	Hobart	/mnt/rdsi/LBA/v583bho	u
1263	\N	304	2180	2005	ho	u	u	d	R1977	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1977ho/	u
1264	\N	268	1520	1415	yg	u	u	d	R1978	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1978yg/	u
1476	\N	\N	3500	\N	td	u	u	d	V583B	\N	Hobart	/mnt/rd1/LBA/v583btd	u
650	\N	294	1480	1374	yg	u	u	d	R1879	IVS	Hobart (for e-transfer)	\N	u
1481	\N	\N	1600	\N	cd	u	u	d	V578B	\N	Hobart	/mnt/rdsi/LBA/v578bcd/	u
1358	\N	\N	2790	\N	ho	u	u	d	V255AI	\N	Hobart	\N	u
1359	\N	\N	2775	\N	cd	u	u	d	V255AI	\N	Hobart	/mnt/rdsi/LBA/v255aicd	u
1260	\N	289	1880	1639	yg	u	u	d	R1976	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1976yg/	u
2045	\N	393	1090	977	ho	u	u	d	R1988	IVS1	\N	/mnt/rdsi/IVS/r1988ho/	u
1479	\N	\N	6900	\N	ke	u	u	d	V583B	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v583bke	u
1478	\N	\N	6900	\N	cd	u	u	d	V583B	\N	Hobart	/mnt/rdsi/LBA/v583bcd/	u
1483	\N	191	1600	1237	yg	u	u	d	V578B	LBA	Hobart	/mnt/rd1/LBA//v578byg/	u
1398	\N	\N	5708	\N	cd	u	u	d	V558E	\N	Hobart	/mnt/rdsi/LBA/v558ecd	u
1336	\N	394	8504	7748	yg	u	u	d	AOV045	AUSTRAL	\N	/mnt/rd1/AUSTRAL/aov045yg	u
1553	\N	\N	1040	\N	ho	u	u	d	V581B	\N	Hobart	/mnt/rdsi/LBA/v581bho	u
1433	\N	\N	3600	\N	cd	u	u	d	V583A	\N	Hobart	/mnt/rdsi/LBA/V583acd/	u
845	\N	134	740	326	ho	u	u	d	OHG122	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg122ho	u
1243	\N	\N	1770	\N	ho	u	u	d	R1968	\N	Hobart (for e-transfer)	/mnt/rd1	u
1434	\N	\N	\N	\N	ho	u	u	d	V583A	\N	Hobart	\N	u
1200	\N	186	990	963	yg	u	u	d	T2139	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/t2139yg/	u
1247	\N	298	1760	1620	yg	u	u	d	R1970	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1970yg/	u
1245	\N	260	1570	1449	yg	u	u	d	R1969	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1969yg/	u
1257	\N	161	9975	7362	yg	u	u	d	CRD109	IVS1	\N	/mnt/rdsi/IVS/crd109yg/	u
57	\N	406	1800	1642	ho	u	u	d	AUA029	AUSTRAL	 	\N	u
815	\N	359	1920	1777	yg	u	u	d	R1907	IVS1	Hobart (for e-transfer)	\N	u
118	\N	464	1800	1851	ho	u	u	d	C1702	IVS	 	\N	u
1259	\N	273	1900	1765	yg	u	u	d	R1975	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1975yg/	u
1197	\N	229	7590	7403	ho	u	u	d	CRF119	IVS	\N	\N	u
1432	\N	\N	4200	\N	cd	u	u	d	V586A	\N	Hobart	/mnt/rdsi/LBA/v586acd/	u
1261	\N	211	9560	9323	yg	u	u	d	CRD110	IVS	\N	/mnt/rd1/IVS/crd110yg/	u
1253	\N	293	1807	1565	ho	u	u	d	R1972	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1972ho/	u
1256	\N	193	2070	1327	ho	u	u	d	R1974	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1974ho/	u
1255	\N	275	1740	1290	ho	u	u	d	R1973	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA//r1973ho/	u
1262	\N	144	8370	5563	ho	u	u	d	CRD110	AUSTRAL	\N	/mnt/rd1/AUSTRAL/crd110ho/	u
1397	\N	\N	5754	\N	ho	u	u	d	V558E	\N	Hobart	\N	u
1240	\N	\N	1661	\N	yg	u	u	d	R4967	\N	Hobart (for e-transfer)	/mnt/rd1/IVS//r4967yg	u
1258	\N	140	8160	5512	ho	u	u	d	CRD109	IVS	\N	/mnt/rd1/IVS//crd109ho/	u
1360	\N	\N	2500	\N	ke	u	u	d	V255AI	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v255aike	u
992	\N	119	1800	1729	ke	u	u	d	DYN006	AUSTRAL	Hobart (for e-transfer)	\N	u
656	\N	170	1500	1383	ke	u	u	d	R1880	IVS	Hobart (for e-transfer)	\N	u
1297	\N	\N	24000	\N	ke	u	u	d	AUA060	flexbuflyg	Hobart (for e-transfer)	/mnt/disk2/aua060ke/	u
808	\N	360	3830	3545	yg	u	u	d	R1906	IVS	Hobart (for e-transfer)	\N	u
1108	\N	72	\N	270	ho	u	u	d	OHG121	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg121ho	u
1082	\N	182	1080	1048	yg	u	u	d	OHG121	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg121yg	u
860	\N	153	380	400	ho	u	u	d	T2136	IVS		/mnt/rd1/IVS/t2136ho	u
862	\N	242	\N	1173	ho	u	u	d	R4924	IVS	Washington (DHL)	\N	u
812	\N	490	7713	7125	yg	u	u	d	AOV038	AUSTRAL1	Hobart (for e-transfer)	\N	u
813	\N	467	3171	2918	ho	u	u	d	AOV038	AUSTRAL	 	\N	u
393	\N	47	\N	234	ke	u	u	d	R4838	bfg16	Hobart (for e-transfer)	\N	u
1210	\N	403	2750	2535	yg	u	u	d	R1956	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1956yg/	u
1211	\N	362	2110	1868	ho	u	u	d	R1956	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1956ho/	u
424	\N	405	\N	1834	ke	u	u	d	R1845	IVS	Hobart (for e-transfer)	\N	u
731	\N	168	\N	6713	ke	u	u	d	AUA051	AUSTRAL	Hobart (for e-transfer)	\N	u
724	\N	349	2040	1860	ke	u	u	d	R1889	flexbuf3	Hobart (for e-transfer)	\N	u
1219	\N	270	1060	984	yg	u	u	d	R1958	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1958yg/	u
95	\N	185	\N	878	ke	u	u	d	T2122	IVS	Hobart (for e-transfer)	\N	u
1223	\N	261	1520	1386	yg	u	u	d	R1959	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1959yg/	u
1522	\N	\N	3500	\N	ke	u	u	d	AVS002	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/avs002ke/	u
1523	\N	\N	6140	\N	hb	u	u	d	AVS002	\N	Hobart	/mnt/rdsi/AUSTRAL/avs002hb	u
1215	\N	332	1540	1422	yg	u	u	d	R1957	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1957yg/	u
83	\N	\N	4000	\N	ke	u	u	d	R1816	IVS	Hobart (for e-transfer)	\N	u
1486	\N	\N	5500	\N	cd	u	u	d	V591B	\N	Hobart	/mnt/rdsi/LBA/v591bcd/	u
1487	\N	\N	5500	\N	ke	u	u	d	V591B	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v591bke	u
1485	\N	\N	5500	\N	ho	u	u	d	V591B	\N	Hobart	\N	u
1040	\N	57	\N	5700	td	u	u	d	V580A	LBA	\N	/mnt/rd1/LBA/v580atd	u
1488	\N	61	5500	1198	yg	u	u	d	V591B	LBA	Hobart	/mnt/rd1/LBA//v591byg/	u
2290	\N	187	\N	6394	ti	u	u	d	V589B	godzilla16	\N	/mnt/godzilla16//v589bti/	u
2159	\N	135	\N	4359	td	u	u	d	V456G	LBA1	Hobart	/mnt/rdsi/LBA//v456gtd/	u
2173	\N	\N	4000	\N	cd	u	u	d	V592B	\N	Hobart	/mnt/rdsi/LBA/v592bcd	u
1843	\N	258	8720	8488	yg	u	u	d	CRF125	IVS1	\N	/mnt/rdsi/IVS//crf125yg/	u
1669	\N	\N	6000	\N	ke	u	u	d	AVS005	\N	Hobart (for e-transfer)	\N	u
2157	\N	\N	\N	\N	ho	u	u	d	V456G	\N	Hobart	\N	u
2158	\N	\N	\N	\N	cd	u	u	d	V456G	\N	Hobart	\N	u
1124	\N	47	1600	\N	cd	u	u	d	V581A	\N	Hobart	\N	u
132	\N	416	1800	1732	ho	u	u	d	C1704	IVS	 	\N	u
1084	\N	291	810	752	yg	u	u	d	R1915	IVS	Hobart (for e-transfer)	\N	u
643	\N	227	6597	6127	yg	u	u	d	AOV031	AUSTRAL	Hobart (for e-transfer)	\N	u
721	\N	322	8260	7667	ho	u	u	d	AOV034	AUSTRAL1	 	\N	u
425	\N	325	\N	1478	yg	u	u	d	R1845	IVS	Hobart (for e-transfer)	\N	u
304	\N	137	\N	3082	ho	u	u	d	RD1801	IVS	 	\N	u
964	\N	123	\N	4021	td	u	u	d	GM074C	LBA1	\N	\N	u
133	\N	314	1800	1348	ho	u	u	d	C1705	IVS	 	\N	u
1751	\N	197	9600	9004	yg	u	u	d	CRD111	IVS	\N	/mnt/rd1/IVS/crd111yg/	u
1752	\N	199	8600	7977	ho	u	u	d	CRD111	IVS	None	/mnt/rd1/IVS//crd111ho/	u
1774	\N	\N	2580	\N	ho	u	u	d	AUA074	\N	None	\N	u
1236	\N	320	1950	1805	yg	u	u	d	R1965	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1965yg/	u
1743	\N	682	6170	5965	yg	u	u	d	AUA072	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/aua072yg/	u
1744	\N	519	2690	2934	ho	u	u	d	AUA072	AUSTRAL1	None	/mnt/rdsi/AUSTRAL/aua072ho/	u
1731	\N	308	2260	2097	ho	u	u	d	R1981	IVS	\N	/mnt/rd1/IVS//r1981ho/	u
1238	\N	321	1820	1682	ho	u	u	d	R1966	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1966ho/	u
1748	\N	257	3090	2872	ho	u	u	d	RV145	IVS	None	/mnt/rd1/IVS/rv145ho/	u
1738	\N	430	6968	6454	yg	u	u	d	AOV055	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aov055yg/	u
1491	\N	\N	5333	\N	yg	u	u	d	AUM017	\N	Hobart	/mnt/rd1/AUSTRAL/aum017yg/	u
1492	\N	351	24000	4738	hb	u	u	d	AUM017	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL//aum017hb/	u
1736	\N	\N	\N	\N	hb	u	u	d	AOV055	\N	\N	/mnt/rdsi/AUSTRAL/aov055hb	u
1901	\N	\N	\N	\N	yg	u	u	d	R41019	\N	Hobart (for e-transfer)	\N	u
1227	\N	\N	2060	\N	ho	u	u	d	R1962	\N	Hobart (for e-transfer)	/mnt/rd1/IVS/r1962ho/	u
1230	\N	312	1970	1781	ho	u	u	d	R1963	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1963ho/	u
1746	\N	345	1690	1557	yg	u	u	d	R1983	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1983yg/	u
1735	\N	\N	\N	\N	yg	u	u	d	R4981	\N	Washington (DHL)	\N	u
914	\N	59	4576	4230	yg	u	u	d	GM074B	LBA	Hobart	\N	u
825	\N	171	6520	5757	ho	u	u	d	RD1908	IVS	 	\N	u
827	\N	67	7130	1935	ho	u	u	d	CRF113	IVS	 	\N	u
2005	\N	\N	\N	\N	ke	u	u	d	S004H	\N	Hobart	flexbuflcd	u
2179	\N	\N	\N	\N	ti	u	u	d	V592B	LBA1	\N	/mnt/flexbuf1/	u
1974	\N	515	7000	6563	yg	u	u	d	AUM028	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum028yg/	u
1755	\N	300	8242	5897	yg	u	u	d	AOV056	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL/aov056yg/	u
1747	\N	23	9360	917	yg	u	u	d	CRF122	IVS	\N	/mnt/rd1/IVS//crf122yg/	u
1734	\N	213	3980	3695	ho	u	u	d	RD2101	IVS	\N	/mnt/rd1/IVS/rd2101ho/	u
1749	\N	274	1272	1178	yg	u	u	d	R4983	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r4983yg/	u
1745	\N	\N	1555	\N	yg	u	u	d	R4982	\N	Washington (DHL)	/mnt/rd1/IVS//r4982yg	u
1753	\N	\N	\N	\N	hb	u	u	d	AOV056	\N	\N	\N	u
1756	\N	\N	\N	\N	yg	u	u	d	R4984	\N	Washington (DHL)	\N	u
1882	\N	\N	\N	\N	yg	u	u	d	R41014	\N	Hobart (for e-transfer)	\N	u
2328	\N	106	\N	1828	yg	u	u	d	V605A	LBA1	Hobart	/mnt/rdsi/LBA//v605ayg/	u
2296	\N	\N	\N	\N	cd	u	u	d	V576B	\N	Hobart	/mnt/rdsi/LBA/v576bcd	u
2295	\N	\N	\N	\N	ho	u	u	d	V576B	\N	Hobart	\N	u
2342	\N	191	\N	6855	ti	u	u	d	V605A	LBA1	\N	/mnt/rdsi/LBA//v605ati/	u
1787	\N	281	8760	8520	yg	u	u	d	CRF123	AUSTRAL	\N	/mnt/rd1/AUSTRAL//crf123yg/	u
949	\N	718	5000	4285	ke	u	u	d	MV028	AUSTRAL1	Hobart (for e-transfer)	\N	u
1770	\N	298	1550	1430	yg	u	u	d	R1989	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//r1989yg/	u
1110	\N	0	\N	2800	td	u	u	d	ER051	LBA	\N	/mnt/rd1/LBA/er051td	u
1784	\N	266	1580	1469	yg	u	u	d	R1992	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1992yg/	u
1776	\N	284	1660	1539	yg	u	u	d	R1990	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//r1990yg/	u
1768	\N	353	1560	1443	yg	u	u	d	R1988	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1988yg/	u
197	\N	179	1060	925	ke	u	u	d	OHG111	IVS	Hobart (for e-transfer)	\N	u
26	\N	62	3600	1591	ke	u	u	d	R1808	IVS	Hobart (for e-transfer)	\N	u
201	\N	179	1060	925	ke	u	u	d	OHG111	IVS	Hobart (for e-transfer)	\N	u
692	\N	\N	1788	\N	ke	u	u	d	R4885	\N	Hobart (for e-transfer)	\N	u
702	\N	\N	\N	\N	ke	u	u	d	R4886	\N	Hobart (for e-transfer)	\N	u
1782	\N	\N	3110	\N	ho	u	u	d	RV146	\N	None	\N	u
835	\N	151	670	611	ho	u	u	d	T2134	IVS	 	\N	u
1074	\N	185	920	894	yg	u	u	d	T2134	IVS	\N	\N	u
1295	\N	399	1502	1232	ho	u	u	d	AOV044	AUSTRAL1	\N	\N	u
1789	\N	\N	1470	\N	yg	u	u	d	R1994	\N	Hobart (for e-transfer)	\N	u
821	\N	229	10194	9338	yg	u	u	d	AUA055	AUSTRAL	Hobart (for e-transfer)	\N	u
834	\N	211	9816	8589	ho	u	u	d	AUA056	AUSTRAL	 	\N	u
1106	\N	242	1480	1375	yg	u	u	d	R1925	IVS	Hobart (for e-transfer)	\N	u
1128	\N	320	1410	1333	yg	u	u	d	R1928	IVS	Hobart (for e-transfer)	\N	u
65	2017-10-06	62	6000	1545	yg	u	u	d	V456B	LBA	Hobart (for e-transfer)	\N	u
831	\N	386	3480	3229	ho	u	u	d	AOV039	AUSTRAL		\N	u
824	\N	346	1890	1752	yg	u	u	d	R1909	IVS	Hobart (for e-transfer)	\N	u
828	\N	75	5800	2429	ho	u	u	d	RD1909	IVS	 	\N	u
1161	\N	192	9140	7225	yg	u	u	d	CRF117	IVS	\N	\N	u
1132	\N	327	2240	2057	ho	u	u	d	R1929	IVS	Hobart (for e-transfer)	\N	u
1153	\N	231	1440	1341	yg	u	u	d	R1936	IVS	Hobart (for e-transfer)	\N	u
1138	\N	453	3000	2761	yg	u	u	d	R1930	IVS	Hobart (for e-transfer)	\N	u
1139	\N	315	1960	1305	ho	u	u	d	R1930	IVS	Hobart (for e-transfer)	\N	u
950	\N	724	5000	4367	yg	u	u	d	MV028	AUSTRAL1	Hobart	\N	u
1164	\N	355	1490	1331	yg	u	u	d	R1941	IVS	Hobart (for e-transfer)	\N	u
120	\N	2	\N	80	cd	u	u	d	RK18CA	astro	Hobart (for e-transfer)	\N	u
31	\N	62	1800	1591	yg	u	u	d	R1809	IVS	Hobart (for e-transfer)	\N	u
1168	\N	388	1620	1448	ho	u	u	d	R1942	IVS	Hobart (for e-transfer)	\N	u
1075	\N	403	3090	2846	yg	u	u	d	R1914	IVS	Hobart (for e-transfer)	\N	u
1109	\N	201	950	924	yg	u	u	d	T2135	IVS1	Hobart (for e-transfer)	\N	u
1141	\N	391	1680	1557	yg	u	u	d	R1931	IVS	Hobart (for e-transfer)	\N	u
1143	\N	409	3500	3227	yg	u	u	d	R1932	IVS	Hobart (for e-transfer)	\N	u
1165	\N	298	4624	4179	yg	u	u	d	APSG46	IVS	\N	\N	u
1765	\N	677	6190	5790	yg	u	u	d	AUA073	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua073yg/	u
1763	\N	\N	6390	\N	hb	u	u	d	AUA073	\N	\N	\N	u
1766	\N	513	2670	2592	ho	u	u	d	AUA073	godzilla16	None	/mnt/godzilla16//aua073ho/	u
2048	\N	86	\N	5410	td	u	u	d	V592A	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//v592atd/	u
1771	\N	\N	6280	\N	hb	u	u	d	AUA074	\N	\N	\N	u
1899	\N	\N	\N	\N	yg	u	u	d	R41018	\N	Hobart (for e-transfer)	\N	u
2467	\N	\N	1220	\N	hb	u	u	d	R11021	\N	\N	\N	u
1767	\N	\N	1669	\N	yg	u	u	d	R4987	\N	Washington (DHL)	/mnt/rdsi/IVS//r4987yg	u
986	\N	309	1850	1718	ke	u	u	d	R1899	IVS	Hobart (for e-transfer)	\N	u
1146	\N	\N	8520	\N	ho	u	u	d	CRD105	\N	\N	/mnt/rd1/IVS/crd105ho	u
2010	\N	\N	\N	\N	ke	u	u	d	AUM024	\N	Hobart	\N	u
1827	\N	708	6160	5922	yg	u	u	d	AUA077	flexbuf2	Hobart	/mnt/flexbuf2/aua076yg/	u
1817	\N	200	9430	9157	yg	u	u	d	CRF124	IVS1	\N	/mnt/rdsi/IVS/crf124yg/	u
1166	\N	189	3010	1976	ho	u	u	d	APSG46	AUSTRAL	\N	\N	u
1169	\N	231	9520	9273	yg	u	u	d	CRF118	IVS1	\N	\N	u
1170	\N	176	8189	7072	ho	u	u	d	CRF118	IVS	\N	\N	u
245	\N	158	1060	982	ho	u	u	d	CRF105	godzilla16	 	\N	u
919	\N	20	\N	222	cd	u	u	d	RG39A	astro	\N	\N	u
1189	\N	370	1410	1300	yg	u	u	d	R1948	IVS	Hobart (for e-transfer)	\N	u
1179	\N	157	6480	6126	ho	u	u	d	RD2004	IVS1	Hobart (for e-transfer)	\N	u
1148	\N	353	1890	1745	yg	u	u	d	R1933	IVS	Hobart (for e-transfer)	\N	u
1155	\N	308	1210	1113	yg	u	u	d	R1937	IVS	Hobart (for e-transfer)	\N	u
1137	\N	219	9300	9065	yg	u	u	d	CRF116	IVS	Hobart (for e-transfer)	\N	u
1151	\N	396	1750	1619	yg	u	u	d	R1935	AUSTRAL	Hobart (for e-transfer)	\N	u
1172	\N	445	1770	1634	ho	u	u	d	R1943	IVS	Hobart (for e-transfer)	\N	u
848	\N	324	4597	3118	ho	u	u	d	AOV041	AUSTRAL1	Hobart (for e-transfer)	\N	u
63	2017-10-06	188	6000	8550	ho	u	u	d	AUA028	AUSTRAL	 	\N	u
137	\N	465	1800	1801	ho	u	u	d	C1707	IVS	 	\N	u
969	\N	132	2000	1645	yg	u	u	d	DYN002	godzilla16	Hobart	\N	u
1813	\N	469	\N	6436	yg	u	u	d	AOV059	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aov059yg/	u
987	\N	250	1150	1070	ke	u	u	d	OHG119	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg119ke	u
1797	\N	182	1410	1310	yg	u	u	d	R1996	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1996yg/	u
1811	\N	\N	\N	\N	hb	u	u	d	AOV059	\N	\N	\N	u
1826	\N	\N	6430	\N	ke	u	u	d	AUA077	\N	Hobart	/mnt/rdsi/AUSTRAL/aua077ke	u
1808	\N	244	1270	1175	yg	u	u	d	R1998	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1998yg/	u
1832	\N	\N	\N	\N	yg	u	u	d	R41001	\N	Washington (DHL)	\N	u
1823	\N	\N	\N	\N	yg	u	u	d	R41000	\N	Washington (DHL)	\N	u
1791	\N	390	1600	1473	yg	u	u	d	R1995	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1995yg/	u
1828	\N	523	2480	2401	ho	u	u	d	AUA077	AUSTRAL1	None	/mnt/rdsi/AUSTRAL//aua077ho/	u
1812	\N	\N	\N	\N	ke	u	u	d	AOV059	\N	Hobart	\N	u
1814	\N	415	1860	1713	ho	u	u	d	R1999	IVS	None	/mnt/rd1/IVS//r1999ho/	u
1838	\N	\N	\N	\N	yg	u	u	d	R41003	\N	Washington (DHL)	/mnt/rdsi/AUSTRAL/	u
1825	\N	\N	6230	\N	hb	u	u	d	AUA077	\N	\N	\N	u
1839	\N	469	1130	1495	yg	u	u	d	R11004	IVS1	\N	/mnt/rdsi/IVS/r11004yg/	u
1836	\N	\N	\N	\N	yg	u	u	d	R41002	\N	Washington (DHL)	\N	u
1807	\N	225	\N	936	yg	u	u	d	R4997	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r4997yg/	u
1818	\N	\N	7380	\N	ho	u	u	d	CRF124	\N	None	\N	u
1965	\N	418	5549	5105	yg	u	u	d	AUM025	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum025yg/	u
2050	\N	68	\N	6428	td	u	u	d	V252BY	\N	\N	/mnt/rdsi/LBA//v252bytd/	u
1868	\N	\N	\N	\N	yg	u	u	d	R41010	\N	Hobart (for e-transfer)	\N	u
1873	\N	\N	\N	\N	yg	u	u	d	R41011	\N	Hobart (for e-transfer)	\N	u
566	\N	185	700	545	ho	u	u	d	OHG114	IVS	 	\N	u
218	\N	94	710	337	ho	u	u	d	T2123	IVS	\N	\N	u
45	\N	162	1900	1731	ho	u	u	d	CRDS91	IVS	 	\N	u
1859	\N	\N	6200	\N	yg	u	u	d	AUA078	\N	Hobart	/mnt/rdsi/AUSTRAL	u
1842	\N	318	1840	1689	ho	u	u	d	R11005	IVS1	None	/mnt/rdsi/IVS//r11005ho/	u
1848	\N	302	1800	1597	ho	u	u	d	R11007	IVS1	None	/mnt/rdsi/IVS/r11007ho/	u
1854	\N	420	1900	1707	ho	u	u	d	R11008	cornucopia	None	/mnt/cornucopia//r11008ho/	u
1853	\N	\N	1439	\N	yg	u	u	d	R41007	\N	Washington (DHL)	\N	u
1857	\N	\N	6280	\N	hb	u	u	d	AUA078	\N	\N	\N	u
712	\N	27	1597	110	ke	u	u	d	R4887	IVS	Hobart (for e-transfer)	\N	u
1002	\N	\N	8630	\N	ke	u	u	d	CRD103	\N	Hobart (for e-transfer)	\N	u
965	\N	340	1930	1880	ke	u	u	d	R1895	bfg16	Hobart (for e-transfer)	\N	u
216	\N	124	1010	940	ke	u	u	d	T2123	IVS	Hobart (for e-transfer)	\N	u
1847	\N	\N	\N	\N	yg	u	u	d	R41006	\N	Washington (DHL)	\N	u
1078	\N	\N	1200	\N	cd	u	u	d	V544E	\N	Hobart	/mnt/rdsi/LBA/v544ecd	u
1851	\N	\N	\N	\N	ke	u	u	d	AOV061	\N	Hobart	\N	u
1862	\N	157	9630	9402	yg	u	u	d	CRD113	IVS	\N	/mnt/rd1/IVS//crd113yg/	u
1496	\N	\N	8000	\N	hb	u	u	d	AVS003	\N	Hobart	/mnt/rdsi/AUSTRAL/avs003hb	u
1841	\N	\N	\N	\N	yg	u	u	d	R41004	\N	Washington (DHL)	\N	u
1861	\N	\N	\N	\N	yg	u	u	d	R41008	\N	Washington (DHL)	\N	u
1852	\N	486	6899	6396	yg	u	u	d	AOV061	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aov061yg/	u
1840	\N	43	4590	1027	ho	u	u	d	RD2105	IVS1	None	/mnt/rdsi/IVS//rd2105ho/	u
1844	\N	193	5750	5449	ho	u	u	d	CRF125	IVS1	None	/mnt/rdsi/IVS//crf125ho/	u
2250	\N	\N	500	\N	yg	u	u	d	SI1239	\N	Hobart	\N	u
1860	\N	\N	2410	\N	ho	u	u	d	AUA078	\N	None	/mnt/rdsi/AUSTRAL/	u
1303	\N	99	6576	6022	yg	u	u	d	V253D	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v253dyg/	u
1500	\N	\N	5000	\N	yg	u	u	d	AUM018	\N	\N	/mnt/rdsi/AUSTRAL/aum018yg	u
1499	\N	\N	15000	\N	ke	u	u	d	AUM018	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/aum018ke	u
1498	\N	\N	15000	\N	hb	u	u	d	AUM018	\N	\N	\N	u
966	\N	123	2000	1681	ke	u	u	d	DYN001	AUSTRAL1	Hobart (for e-transfer)	\N	u
718	\N	383	900	4433	ho	u	u	d	OHG118	IVS	 	\N	u
1819	\N	\N	6310	\N	hb	u	u	d	AUA076	\N	\N	\N	u
1798	\N	\N	20740	\N	ke	u	u	d	AOV058	\N	Hobart	/mnt/flexbuf1/aov058ke	u
1831	\N	235	7120	6585	ho	u	u	d	AOV060	AUSTRAL1	None	/mnt/rdsi/AUSTRAL/aov060ho/	u
1879	\N	234	\N	6053	yg	u	u	d	AOV062	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aov062yg/	u
2340	\N	312	1650	1527	yg	u	u	d	R11010	cornucopia	\N	/mnt/cornucopia//r11010yg/	u
1850	\N	\N	\N	\N	hb	u	u	d	AOV061	\N	\N	\N	u
1858	\N	\N	6320	\N	ke	u	u	d	AUA078	\N	Hobart	/mnt/rdsi/AUSTRAL/aua078ke	u
1911	\N	\N	910	\N	yg	u	u	d	R11022	\N	\N	\N	u
1900	\N	\N	\N	\N	yg	u	u	d	R11019	\N	\N	\N	u
1805	\N	175	9520	9280	yg	u	u	d	CRD112	IVS	\N	/mnt/rd1/IVS//crd112yg/	u
1266	\N	248	920	899	yg	u	u	d	OHG123	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg123yg	u
498	\N	232	\N	3628	ke	u	u	d	AUM004	AUSTRAL	Hobart (for e-transfer)	\N	u
499	\N	496	\N	7044	ke	u	u	d	AUM005	AUSTRAL	Hobart (for e-transfer)	\N	u
513	\N	427	1870	1735	ke	u	u	d	R1861	IVS	Hobart (for e-transfer)	\N	u
1017	\N	395	3840	3558	ke	u	u	d	R1904	IVS	Hobart (for e-transfer)	\N	u
335	\N	128	\N	1375	ke	u	u	d	CRDS90	IVS	Hobart (for e-transfer)	\N	u
588	\N	451	1870	1731	ke	u	u	d	R1871	IVS	Hobart (for e-transfer)	\N	u
376	\N	185	10000	9265	ke	u	u	d	CRF106	IVS	Hobart (for e-transfer)	\N	u
706	\N	203	1110	1074	ke	u	u	d	T2131	godzilla16	Hobart (for e-transfer)	\N	u
716	\N	461	1140	7318	ke	u	u	d	OHG118	IVS	Hobart (for e-transfer)	\N	u
344	\N	240	\N	9316	ke	u	u	d	AUA039	AUSTRAL	Hobart (for e-transfer)	\N	u
551	\N	395	1870	1710	ke	u	u	d	R1865	IVS	Hobart (for e-transfer)	\N	u
392	\N	668	5000	5076	ke	u	u	d	AUA041	AUSTRAL	Hobart (for e-transfer)	\N	u
416	\N	228	\N	807	ke	u	u	d	T2125	IVS	Hobart (for e-transfer)	\N	u
437	\N	213	861	776	ke	u	u	d	T2126	godzilla8	Hobart (for e-transfer)	\N	u
441	\N	490	3580	3304	ke	u	u	d	R1850	flexbuf1	Hobart (for e-transfer)	\N	u
550	\N	187	10000	9819	ke	u	u	d	AUA045	AUSTRAL	Hobart (for e-transfer)	\N	u
1330	\N	\N	2000	\N	ke	u	u	d	AUM014	\N	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum014ke	u
1327	\N	137	2000	1637	yg	u	u	d	AUM012	AUSTRAL	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum012yg	u
235	\N	\N	1990	\N	ke	u	u	d	R1831	\N	Hobart (for e-transfer)	\N	u
1501	\N	\N	\N	\N	hb	u	u	d	AUM019	\N	\N	\N	u
1187	\N	366	1840	1699	ho	u	u	d	R1947	IVS	Hobart (for e-transfer)	\N	u
941	\N	66	\N	4553	td	u	u	d	V252BR	LBA	\N	\N	u
1160	\N	383	1780	1653	ho	u	u	d	R1939	IVS	Hobart (for e-transfer)	\N	u
942	\N	65	\N	2245	td	u	u	d	VX027A	LBA	\N	\N	u
1163	\N	408	1930	1795	ho	u	u	d	R1940	IVS	Hobart (for e-transfer)	\N	u
967	\N	103	2000	1394	yg	u	u	d	DYN001	godzilla16	Hobart	\N	u
62	\N	310	2000	1779	ho	u	u	d	R1814	IVS	 	\N	u
165	\N	230	\N	4703	ho	u	u	d	AUA033	AUSTRAL	 	\N	u
180	\N	175	\N	1875	ho	u	u	d	CRF104	bfg8	 	\N	u
175	\N	66	\N	3773	ho	u	u	d	SFUS03	flexbuf2	 	\N	u
1299	\N	\N	\N	\N	ke	u	u	d	AUM011	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/aum011ke	u
395	\N	249	10000	9304	ke	u	u	d	AUA042	AUSTRAL	Hobart (for e-transfer)	\N	u
327	\N	238	\N	903	ke	u	u	d	AOV020	AUSTRAL	Hobart (for e-transfer)	\N	u
405	\N	436	\N	3530	ke	u	u	d	R1840	IVS	Hobart (for e-transfer)	\N	u
577	\N	186	\N	977	ke	u	u	d	OHG114	IVS	Hobart (for e-transfer)	\N	u
534	\N	429	\N	7435	ke	u	u	d	AUM009	AUSTRAL	Hobart (for e-transfer)	\N	u
1267	\N	249	330	318	ho	u	u	d	OHG123	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg123ho	u
1503	\N	296	4623	4188	yg	u	u	d	AUM019	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aum019yg/	u
1504	\N	\N	4301	\N	hb	u	u	d	AUM020	\N	\N	\N	u
1724	\N	170	4670	3030	ho	u	u	d	RD2009	IVS	\N	/mnt/rd1/IVS//rd2009ho/	u
1111	\N	\N	6000	\N	cd	u	u	d	V558D	LBA	Hobart	\N	u
1506	\N	336	4301	3948	yg	u	u	d	AUM020	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/aum020yg/	u
1507	\N	\N	\N	\N	hb	u	u	d	AUM021	\N	\N	\N	u
1333	\N	\N	7110	\N	ke	u	u	d	AUA061	flexbuf	Hobart (for e-transfer)	/disk2/aua061ke/	u
1449	\N	\N	1318	\N	ho	u	u	d	V560F	\N	Hobart	/mnt/rdsi/LBA/v560fho/	u
1315	\N	66	2646	6479	td	u	u	d	V252BT	LBA1	Hobart (for e-transfer)	\N	u
1513	\N	\N	6285	\N	hb	u	u	d	AUM023	\N	\N	\N	u
520	\N	245	\N	6934	ho	u	u	d	KS1804	flexbuf3	 	\N	u
1116	\N	169	740	720	yg	u	u	d	T2136	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/t2136yg	u
1181	\N	371	1530	1416	yg	u	u	d	R1946	IVS1	Hobart (for e-transfer)	\N	u
1329	\N	126	2000	1724	yg	u	u	d	AUM013	AUSTRAL	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum013yg	u
1339	\N	\N	\N	\N	hb	u	u	d	AUA062	flexbuf	Hobart	/disk3/aua062hb/	u
1191	\N	392	1470	1354	yg	u	u	d	R1949	IVS	Hobart (for e-transfer)	\N	u
1331	\N	132	2000	1653	yg	u	u	d	AUM014	AUSTRAL	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum014yg	u
1516	\N	15	\N	212	yg	u	u	d	F20188	flexbuf0	\N	/mnt/rd1/AUSTRAL/f20188yg	u
856	\N	151	2464	904	ho	u	u	d	AOV042	AUSTRAL1	Hobart (for e-transfer)	\N	u
1308	\N	\N	2784	\N	ke	u	u	d	V191C	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v191cke	u
972	\N	149	1130	1107	ke	u	u	d	T2132	IVS1	Hobart (for e-transfer)	\N	u
1518	\N	646	6057	5420	yg	u	u	d	AUA066	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua066yg/	u
1519	\N	\N	6230	\N	hb	u	u	d	AUA066	\N	Hobart	/mnt/rdsi/AUSTRAL/aua066hb	u
1310	\N	186	1476	6601	td	u	u	d	V191C	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v191ctd	u
1517	\N	\N	6000	\N	ke	u	u	d	AUA066	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/aua066ke/	u
1309	\N	78	2971	2763	yg	u	u	d	V191C	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v191cyg	u
1306	\N	\N	2971	\N	ho	u	u	d	V191C	\N	Hobart (for e-transfer)	\N	u
1307	\N	\N	2971	\N	cd	u	u	d	V191C	\N	Hobart (for e-transfer)	\N	u
1362	\N	\N	6730	\N	ke	u	u	d	AUA063	flexbuf2	Hobart (for e-transfer)	/mnt/disk5/aua063ke/	u
1361	\N	\N	6970	\N	hb	u	u	d	AUA063	flexbuflyg	\N	/mnt/disk4/aua063hb/	u
1448	\N	63	3547	714	yg	u	u	d	V587B	LBA1	Hobart	/mnt/rdsi/LBA//v587byg/	u
1343	\N	\N	3005	\N	ke	u	u	d	V191D	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v191dke	u
1445	\N	\N	3408	\N	ho	u	u	d	V587B	\N	Hobart	/mnt/rdsi/LBA/v587bho/	u
1447	\N	\N	3258	\N	ke	u	u	d	V587B	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v587bke	u
434	\N	263	\N	872	ke	u	u	d	AOV024	bfg16	Hobart (for e-transfer)	\N	u
2054	\N	\N	\N	\N	cd	u	u	d	V252BY	\N	\N	\N	u
467	\N	237	\N	9261	ke	u	u	d	AUA043	flexbuf3	Hobart (for e-transfer)	\N	u
350	\N	813	\N	4475	ke	u	u	d	AUA040	AUSTRAL	Hobart (for e-transfer)	\N	u
1312	\N	\N	2646	\N	cd	u	u	d	V252BT	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252btcd	u
1446	\N	\N	3288	\N	cd	u	u	d	V587B	\N	Hobart	/mnt/rdsi/LBA/v587bcd/	u
623	\N	363	1790	1432	ke	u	u	d	R1875	IVS	Hobart (for e-transfer)	\N	u
411	\N	217	\N	7798	ho	u	u	d	AUA043	flexbuf2	 	\N	u
708	\N	192	870	851	ho	u	u	d	T2131	godzilla16	 	\N	u
830	\N	393	6910	6366	yg	u	u	d	AOV039	AUSTRAL	Hobart (for e-transfer)	\N	u
904	\N	157	2740	2540	yg	u	u	d	V252BR	AUSTRAL	Hobart	\N	u
627	\N	492	3600	3278	ke	u	u	d	R1876	IVS	Hobart (for e-transfer)	\N	u
1043	\N	362	3790	3520	ke	u	u	d	R1906	IVS1	Hobart (for e-transfer)	\N	u
522	\N	524	3610	3328	ke	u	u	d	R1862	IVS	Hobart (for e-transfer)	\N	u
152	\N	383	3100	2983	ke	u	u	d	C1702	IVS	Hobart (for e-transfer)	\N	u
153	\N	387	3100	3251	ke	u	u	d	C1706	IVS	Hobart (for e-transfer)	\N	u
429	\N	477	3570	3319	ke	u	u	d	R1848	bfg16	Hobart (for e-transfer)	\N	u
155	\N	364	3100	3105	ke	u	u	d	C1704	IVS	Hobart (for e-transfer)	\N	u
2062	\N	\N	\N	\N	ke	u	u	d	V600B	\N	\N	\N	u
2055	\N	\N	\N	\N	ho	u	u	d	V252BY	\N	\N	\N	u
2060	\N	\N	\N	\N	ke	u	u	d	V252BY	\N	\N	\N	u
1515	\N	1009	7500	5578	yg	u	u	d	AUM023	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum023yg/	u
2059	\N	151	\N	2429	yg	u	u	d	V252BY	LBA1	\N	/mnt/rdsi/LBA//v252byyg/	u
2061	\N	\N	\N	\N	ke	u	u	d	V592A	\N	\N	\N	u
2064	\N	\N	\N	\N	cd	u	u	d	V600B	\N	\N	\N	u
2058	\N	243	\N	8164	yg	u	u	d	V592A	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//v592ayg/	u
1509	\N	233	\N	1637	yg	u	u	d	AUM021	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/aum021yg/	u
1319	\N	212	3090	2836	yg	u	u	d	V587A	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v587ayg	u
1342	\N	\N	1580	\N	cd	u	u	d	V191D	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v191dcd/	u
1287	\N	513	2570	2316	ho	u	u	d	AUA070	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua070ho/	u
1341	\N	\N	1580	\N	ho	u	u	d	V191D	\N	Hobart (for e-transfer)	\N	u
1374	\N	198	4471	4150	yg	u	u	d	AOV051	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aov051yg/	u
1314	\N	150	2646	2416	yg	u	u	d	V252BT	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252btyg	u
1311	\N	\N	2646	\N	ho	u	u	d	V252BT	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v252btho/	u
1195	\N	\N	960	\N	yg	u	u	d	R1951	\N	Hobart (for e-transfer)	\N	u
439	\N	143	3200	3171	ho	u	u	d	RD1804	godzilla8	 	\N	u
1283	\N	539	2590	2507	ho	u	u	d	AUA067	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua067ho/	u
1372	\N	367	7757	7188	yg	u	u	d	AOV050	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov050yg/	u
1373	\N	375	3098	2804	ho	u	u	d	AOV050	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov050ho/	u
1344	\N	\N	6576	\N	ho	u	u	d	V253E	\N	Hobart	\N	u
1380	\N	574	7123	6545	yg	u	u	d	AOV053	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov053yg/	u
1345	\N	\N	6576	\N	cd	u	u	d	V253E	\N	Hobart	/mnt/rdsi/LBA/v253ecd	u
1377	\N	170	4898	3702	ho	u	u	d	AOV052	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aov052ho/	u
1376	\N	197	5069	4703	yg	u	u	d	AOV052	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov052yg/	u
1316	\N	\N	3077	\N	ho	u	u	d	V587A	\N	Hobart (for e-transfer)	\N	u
1371	\N	427	2098	1933	ho	u	u	d	AOV049	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aov049ho/	u
1381	\N	322	7113	6592	yg	u	u	d	AOV054	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov054yg/	u
1370	\N	474	5045	4615	yg	u	u	d	AOV049	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aov049yg/	u
1288	\N	659	5790	5538	yg	u	u	d	AUA071	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua071yg/	u
1520	\N	\N	2500	\N	hb	u	u	d	VX028B	\N	Hobart	/mnt/rdsi/LBA/vx028bhb/	u
1320	\N	110	2940	5555	td	u	u	d	V587A	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v587atd	u
1382	\N	290	3716	2548	ho	u	u	d	AOV054	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov054ho/	u
1317	\N	\N	3042	\N	cd	u	u	d	V587A	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v587acd	u
1378	\N	\N	\N	\N	hb	u	u	d	AOV053	\N	\N	\N	u
1289	\N	531	2790	2707	ho	u	u	d	AUA071	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua071ho/	u
1284	\N	653	6136	5604	yg	u	u	d	AUA068	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aua068yg/	u
1375	\N	180	\N	3922	ho	u	u	d	AOV051	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aov051ho/	u
1285	\N	518	2791	2572	ho	u	u	d	AUA068	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua068ho/	u
1318	\N	\N	3052	\N	ke	u	u	d	V587A	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v587ake	u
1286	\N	515	2742	2537	ho	u	u	d	AUA069	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua069ho/	u
1346	\N	\N	6014	\N	ke	u	u	d	V253E	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA	u
1282	\N	500	2681	2370	ho	u	u	d	AUA066	AUSTRAL	\N	/mnt/rd1/AUSTRAL//aua066ho/	u
1340	\N	\N	\N	\N	ke	u	u	d	AUA062	flexbuf1	Hobart (for e-transfer)	/disk1/aua062ke/	u
958	\N	369	3990	3673	ke	u	u	d	R1894	IVS	Hobart (for e-transfer)	\N	u
157	\N	397	3100	3123	ke	u	u	d	C1705	IVS	Hobart (for e-transfer)	\N	u
1328	\N	\N	2000	\N	ke	u	u	d	AUM013	\N	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum013ke	u
508	\N	495	\N	7010	ke	u	u	d	AUM006	AUSTRAL	Hobart (for e-transfer)	\N	u
1730	\N	\N	1308	\N	yg	u	u	d	R4980	\N	Washington (DHL)	\N	u
388	\N	289	2800	2548	ke	u	u	d	APSG42	IVS	Hobart (for e-transfer)	\N	u
597	\N	660	6547	6027	ke	u	u	d	AOV030	AUSTRAL	Hobart (for e-transfer)	\N	u
445	\N	355	1900	1732	ke	u	u	d	R1851	bfg16	Hobart (for e-transfer)	\N	u
448	\N	520	3620	3361	ke	u	u	d	R1852	flexbuf3	Hobart (for e-transfer)	\N	u
1304	\N	\N	6014	\N	ke	u	u	d	V253D	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v253dke/	u
490	\N	426	1840	1707	ke	u	u	d	R1859	IVS	Hobart (for e-transfer)	\N	u
203	\N	183	1090	1016	ke	u	u	d	OHG112	IVS	Hobart (for e-transfer)	\N	u
956	\N	339	1940	1800	ke	u	u	d	R1893	IVS	Hobart (for e-transfer)	\N	u
1014	\N	391	1980	1845	ke	u	u	d	R1901	IVS	Hobart (for e-transfer)	\N	u
968	\N	133	2000	1655	ke	u	u	d	DYN002	AUSTRAL1	Hobart (for e-transfer)	\N	u
55	\N	533	3200	2962	ke	u	u	d	AUA029	AUSTRAL	Hobart (for e-transfer)	\N	u
903	\N	159	2740	2562	ke	u	u	d	V252BR	LBA	Hobart (for e-transfer)	\N	u
918	\N	304	\N	7575	ke	u	u	d	AOV025	AUSTRAL	Hobart (for e-transfer)	\N	u
970	\N	29	2000	380	ke	u	u	d	DYN003	AUSTRAL1	Hobart (for e-transfer)	\N	u
607	\N	483	3560	3173	ke	u	u	d	R1872	IVS	Hobart (for e-transfer)	\N	u
548	\N	411	\N	3467	ke	u	u	d	R1864	IVS	Hobart (for e-transfer)	\N	u
540	\N	433	\N	7362	ke	u	u	d	AUM010	AUSTRAL	Hobart (for e-transfer)	\N	u
521	\N	438	\N	3268	ke	u	u	d	R1860	IVS	Hobart (for e-transfer)	\N	u
658	\N	201	1187	1101	ke	u	u	d	OHG117	IVS	Hobart (for e-transfer)	\N	u
649	\N	159	870	764	ke	u	u	d	R1879	IVS	Hobart (for e-transfer)	\N	u
466	\N	222	\N	1240	ke	u	u	d	MV020	flexbuf1	Hobart (for e-transfer)	\N	u
2170	\N	\N	4000	\N	ho	u	u	d	V589B	\N	Hobart	\N	u
371	\N	0	\N	0	ke	u	u	d	V566A	flexbuf3	Hobart (for e-transfer)	\N	u
91	\N	\N	1900	\N	ke	u	u	d	R1819	\N	Hobart (for e-transfer)	\N	u
677	\N	445	3600	3332	ke	u	u	d	R1882	IVS	Hobart (for e-transfer)	\N	u
709	\N	184	7077	6532	ke	u	u	d	CRD101	IVS	Hobart (for e-transfer)	\N	u
683	\N	483	3700	3427	ke	u	u	d	R1884	IVS	Hobart (for e-transfer)	\N	u
687	\N	348	1790	1319	ke	u	u	d	R1885	bfg16	Hobart (for e-transfer)	\N	u
694	\N	480	3440	3134	ke	u	u	d	R1886	flexbuf3	Hobart (for e-transfer)	\N	u
674	\N	180	6923	6438	ke	u	u	d	CRD100	IVS	Hobart (for e-transfer)	\N	u
455	\N	284	5500	5507	ke	u	u	d	APSG43	\N	Hobart (for e-transfer)	\N	u
666	\N	529	6613	6112	ke	u	u	d	AOV032	\N	Hobart (for e-transfer)	\N	u
1962	\N	275	8715	6403	yg	u	u	d	AUM024	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/aum024yg/	u
2203	\N	\N	5990	\N	ke	u	u	d	AUM041	\N	\N	\N	u
2287	\N	\N	\N	\N	cd	u	u	d	VX029A	\N	Hobart	/mnt/rdsi/LBA/vx029acd	u
2289	\N	\N	\N	\N	ke	u	u	d	VX029A	\N	Hobart	\N	u
2180	\N	57	\N	3700	td	u	u	d	VX029A	\N	\N	/mnt/rdsi/LBA//vx029ati/	u
2176	\N	257	4000	8960	yg	u	u	d	V592B	LBA1	Hobart	/mnt/rdsi/LBA//v592byg/	u
1207	\N	278	2060	1700	ho	u	u	d	R1955	IVS	Hobart (for e-transfer)	\N	u
839	\N	257	10174	9472	yg	u	u	d	AUA057	AUSTRAL1	Hobart (for e-transfer)	\N	u
1959	\N	\N	\N	\N	ho	u	u	d	V255AK	\N	Hobart	\N	u
2063	\N	\N	\N	\N	ho	u	u	d	V600B	\N	\N	\N	u
185	\N	71	3090	1516	ho	u	u	d	RD1802	IVS	 	\N	u
1097	\N	411	3370	3107	yg	u	u	d	R1916	IVS	Hobart (for e-transfer)	\N	u
742	\N	335	1890	1740	yg	u	u	d	R1891	IVS	Hobart (for e-transfer)	\N	u
481	\N	89	\N	4359	cd	u	u	d	V558B	flexbuf3	Hobart (for e-transfer)	\N	u
558	\N	380	1830	1700	yg	u	u	d	R1865	IVS	Hobart (for e-transfer)	\N	u
483	\N	65	\N	2502	cd	u	u	d	V565A	flexbuf2	Hobart (for e-transfer)	\N	u
931	\N	12	\N	586	cd	u	u	d	VX026B	LBA	\N	\N	u
849	\N	219	790	767	ho	u	u	d	T2135	IVS1	 	\N	u
861	\N	162	7350	5847	ho	u	u	d	CRF115	IVS	 	\N	u
343	\N	169	\N	6259	ho	u	u	d	AUA039	AUSTRAL	 	\N	u
574	\N	186	9500	9310	ho	u	u	d	AUA045	AUSTRAL	 	\N	u
194	\N	184	\N	1966	yg	u	u	d	CRF104	IVS	Hobart (for e-transfer)	\N	u
341	\N	202	\N	7140	ho	u	u	d	AUA038	AUSTRAL	 	\N	u
569	\N	205	500	500	ho	u	u	d	OHG110	IVS	 	\N	u
458	\N	98	\N	3465	ho	u	u	d	CRF107	bfg16	 	\N	u
147	\N	445	1900	1714	ho	u	u	d	C1714	IVS	 	\N	u
124	\N	3	\N	105	ho	u	u	d	RK18EL	astro	 	\N	u
127	\N	3	\N	105	ho	u	u	d	RK18EM	astro	 	\N	u
86	\N	441	\N	12570	ho	u	u	d	KS1713	flexbuf3	 	\N	u
592	\N	481	4114	3662	ho	u	u	d	AUA047	AUSTRAL	 	\N	u
154	\N	390	1800	1585	ho	u	u	d	C1711	IVS	 	\N	u
145	\N	392	2000	1802	ho	u	u	d	C1713	IVS	 	\N	u
159	\N	454	1800	1896	ho	u	u	d	C1709	IVS	 	\N	u
266	\N	10	\N	46	ho	u	u	d	OC7305	astro	 	\N	u
285	\N	48	\N	1418	ho	u	u	d	V456C	astro	 	\N	u
257	\N	47	\N	1500	ho	u	u	d	V559B	LBA	 	\N	u
1052	\N	166	6000	4217	ke	u	u	d	MV015	AUSTRAL	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/mv015ke	u
261	\N	56	\N	1495	ho	u	u	d	V547D	LBA	 	\N	u
265	\N	106	\N	1668	ho	u	u	d	V544C	LBA	 	\N	u
181	\N	184	\N	1977	ke	u	u	d	CRF104	IVS	Hobart (for e-transfer)	\N	u
254	\N	74	\N	2660	ho	u	u	d	SXTEST	flexbuf1	 	\N	u
404	\N	176	\N	5476	ho	u	u	d	CRDS95	IVS	 	\N	u
136	\N	399	3100	3090	ke	u	u	d	C1701	IVS	Hobart (for e-transfer)	\N	u
390	\N	48	\N	485	ho	u	u	d	VT02AK	LBA	 	\N	u
478	\N	418	\N	10840	ho	u	u	d	KS1802	flexbuf3	 	\N	u
653	\N	80	817	339	ho	u	u	d	T2130	IVS	 	\N	u
671	\N	152	10031	4565	ho	u	u	d	AUA049	AUSTRAL	 	\N	u
396	\N	0	\N	0	ho	u	u	d	GG083A	astro	 	\N	u
382	\N	29	\N	772	ho	u	u	d	V456D	LBA	 	\N	u
385	\N	145	\N	1245	ho	u	u	d	V525E	LBA	 	\N	u
398	\N	463	\N	13137	ho	u	u	d	KS1801	flexbuf0	 	\N	u
369	\N	121	\N	1958	ho	u	u	d	V566A	LBA	 	\N	u
84	\N	\N	4000	\N	yg	u	u	d	R1816	IVS	Hobart (for e-transfer)	\N	u
49	\N	171	3000	2827	ho	u	u	d	RD1710	IVS	 	\N	u
545	\N	337	5000	4434	ho	u	u	d	AOV028	AUSTRAL	 	\N	u
1068	\N	210	1690	1613	yg	u	u	d	R1911	bfg16	Hobart (for e-transfer)	\N	u
924	\N	18	\N	168	cd	u	u	d	RG39B	astro	\N	\N	u
1290	\N	121	\N	3504	td	u	u	d	KN1902	LBA	\N	\N	u
1512	\N	530	6440	5586	yg	u	u	d	AUM022	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/aum022yg/	u
1958	\N	\N	\N	\N	cd	u	u	d	V255AK	\N	Hobart	/mnt/rdsi/LBA/v255akcd	u
2057	\N	\N	\N	\N	cd	u	u	d	V592A	\N	\N	/mnt/rdsi/LBA/v592acd/	u
1824	\N	374	1320	1175	yg	u	u	d	R11001	IVS	\N	/mnt/rd1/IVS/r11001yg/	u
1983	\N	481	7302	6740	yg	u	u	d	AUM031	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum031yg/	u
691	\N	208	8691	8082	ho	u	u	d	AUA050	AUSTRAL1	 	\N	u
850	\N	242	1383	1174	ho	u	u	d	R4921	IVS	Washington (DHL)	\N	u
212	\N	293	8880	8228	yg	u	u	d	AUA037	AUSTRAL	Hobart (for e-transfer)	\N	u
59	\N	387	1800	1682	yg	u	u	d	R1813	bfg8	Hobart (for e-transfer)	\N	u
793	\N	163	4630	3660	ho	u	u	d	RD1906	bfg8	 	\N	u
149	\N	458	2000	1833	ho	u	u	d	C1715	IVS	 	\N	u
803	\N	172	730	704	ho	u	u	d	T2133	IVS	 	\N	u
660	\N	198	924	852	ho	u	u	d	OHG117	IVS	 	\N	u
456	\N	232	\N	7488	ho	u	u	d	CRDS96	flexbuf0	 	\N	u
488	\N	186	\N	1140	yg	u	u	d	R1856	flexbuf3	Hobart (for e-transfer)	\N	u
676	\N	185	8154	5835	ho	u	u	d	CRD100	IVS	 	\N	u
779	\N	209	8430	8105	ho	u	u	d	AUA053	AUSTRAL	 	\N	u
579	\N	167	6530	6042	ho	u	u	d	RD1809	IVS	 	\N	u
698	\N	288	3794	3505	ho	u	u	d	APSG44	AUSTRAL	 	\N	u
270	\N	187	\N	3025	ho	u	u	d	V252BL	LBA	 	\N	u
380	\N	426	\N	1990	ho	u	u	d	V255AE	LBA	 	\N	u
495	\N	756	\N	3022	ho	u	u	d	MV021	flexbuf1		\N	u
313	\N	177	\N	4248	ho	u	u	d	MV013	flexbuf1		\N	u
804	\N	198	4140	3849	ho	u	u	d	RD1907	IVS	 	\N	u
2468	\N	\N	2460	\N	yg	u	u	d	R11021	\N	\N	\N	u
2416	\N	\N	2970	\N	yg	u	u	d	R11016	\N	\N	\N	u
796	\N	171	7080	5762	ho	u	u	d	CRF112	IVS	 	\N	u
161	\N	240	9000	8852	yg	u	u	d	AUA032	AUSTRAL	Hobart (for e-transfer)	\N	u
169	\N	462	\N	5655	yg	u	u	d	AUA033	AUSTRAL	Hobart (for e-transfer)	\N	u
158	\N	158	\N	1690	yg	u	u	d	CRDS92	IVS	Hobart (for e-transfer)	\N	u
505	\N	0	\N	0	cd	u	u	d	V554D	LBA	Hobart (for e-transfer)	\N	u
871	\N	75	\N	2166	td	u	u	d	KN1901	astro	Hobart (for e-transfer)	\N	u
882	\N	\N	1000	\N	cd	u	u	d	V252BP	LBA	Hobart	\N	u
492	\N	845	\N	4862	yg	u	u	d	MV021	astro	Hobart (for e-transfer)	\N	u
176	\N	159	\N	10142	yg	u	u	d	AUA034	AUSTRAL	Hobart (for e-transfer)	\N	u
217	\N	116	930	861	yg	u	u	d	T2123	IVS	Hobart (for e-transfer)	\N	u
912	\N	\N	1500	1770	cd	u	u	d	V452F	\N	Hobart	/mnt/rd1/LBA/v452fcd	u
1960	\N	\N	\N	1610	ho	u	u	d	V595A	\N	Hobart	/mnt/rdsi/LBA/v595aho	u
427	\N	463	\N	3300	yg	u	u	d	R1846	IVS	Hobart (for e-transfer)	\N	u
1114	\N	\N	\N	\N	cd	u	u	d	V560D	\N	Hobart	\N	u
2065	\N	156	\N	2809	yg	u	u	d	V600B	LBA1	\N	/mnt/rdsi/LBA//v600byg/	u
1643	\N	\N	966	\N	cd	u	u	d	V447K	\N	Hobart	\N	u
1096	\N	\N	\N	\N	yg	u	u	d	R4925	\N	Washington (DHL)	\N	u
138	\N	366	3100	3065	ke	u	u	d	C1703	IVS	Hobart (for e-transfer)	\N	u
211	\N	295	8880	8261	ke	u	u	d	AUA037	AUSTRAL	Hobart (for e-transfer)	\N	u
408	\N	640	\N	3760	ke	u	u	d	AOV022	AUSTRAL	Hobart (for e-transfer)	\N	u
1806	\N	175	8380	8188	ho	u	u	d	CRD112	IVS1	None	/mnt/rdsi/IVS//crd112ho/	u
58	\N	404	1900	1781	ke	u	u	d	R1813	cornucopia	Hobart (for e-transfer)	\N	u
156	\N	242	10000	9029	ke	u	u	d	AUA032	AUSTRAL	Hobart (for e-transfer)	\N	u
501	\N	488	\N	3121	ke	u	u	d	R1858	IVS	Hobart (for e-transfer)	\N	u
1833	\N	333	1150	1011	yg	u	u	d	R11002	IVS1	\N	/mnt/rdsi/IVS//r11002yg/	u
805	\N	\N	1718	\N	yg	u	u	d	R4904	\N	Washington (DHL)	\N	u
1094	\N	\N	1399	\N	yg	u	u	d	R4923	\N	Washington (DHL)	\N	u
1180	\N	\N	\N	\N	yg	u	u	d	R4945	\N	Washington (DHL)	\N	u
826	\N	\N	1900	\N	yg	u	u	d	R4909	\N	Washington (DHL)	\N	u
785	\N	\N	1900	\N	yg	u	u	d	R4900	\N	Washington (DHL)	\N	u
807	\N	\N	1900	\N	yg	u	u	d	R4905	\N	Washington (DHL)	\N	u
430	\N	450	3510	3236	yg	u	u	d	R1848	bfg16	Hobart (for e-transfer)	\N	u
1739	\N	548	1460	1691	yg	u	u	d	R1982	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1982yg/	u
1758	\N	\N	\N	\N	yg	u	u	d	R4985	\N	Washington (DHL)	\N	u
1757	\N	367	1620	1497	yg	u	u	d	R1985	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS//r1985yg/	u
1750	\N	355	1600	1481	yg	u	u	d	R1984	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/r1984yg/	u
1881	\N	\N	\N	\N	yg	u	u	d	R41013	\N	Hobart (for e-transfer)	\N	u
1760	\N	405	1640	1515	yg	u	u	d	R1987	IVS1	Hobart (for e-transfer)	/mnt/rdsi/IVS//r1987yg/	u
1759	\N	\N	1669	\N	yg	u	u	d	R4986	\N	Washington (DHL)	\N	u
182	\N	307	8250	7622	ke	u	u	d	AOV019	AUSTRAL	Hobart (for e-transfer)	\N	u
575	\N	191	\N	967	yg	u	u	d	OHG115	IVS	Hobart (for e-transfer)	\N	u
214	\N	160	1040	969	yg	u	u	d	OHG113	IVS	Hobart (for e-transfer)	\N	u
843	\N	179	\N	5493	yg	u	u	d	AOV040	AUSTRAL	Hobart (for e-transfer)	\N	u
509	\N	92	\N	1215	cd	u	u	d	V560B	LBA	Hobart (for e-transfer)	\N	u
324	\N	223	\N	7302	yg	u	u	d	CRDS93	IVS	Hobart (for e-transfer)	\N	u
338	\N	304	\N	6463	yg	u	u	d	CRDS94	IVS	Hobart (for e-transfer)	\N	u
473	\N	93	\N	1217	cd	u	u	d	V560A	cornucopia	Hobart (for e-transfer)	\N	u
506	\N	112	\N	1531	cd	u	u	d	V544D	LBA	Hobart (for e-transfer)	\N	u
507	\N	80	\N	1280	cd	u	u	d	V252BM	LBA	Hobart (for e-transfer)	\N	u
328	\N	223	\N	818	yg	u	u	d	AOV020	AUSTRAL	Hobart (for e-transfer)	\N	u
339	\N	228	\N	6031	yg	u	u	d	AOV021	AUSTRAL	Hobart (for e-transfer)	\N	u
502	\N	515	\N	3257	yg	u	u	d	R1858	IVS	Hobart (for e-transfer)	\N	u
336	\N	167	\N	9308	yg	u	u	d	AUA038	AUSTRAL	Hobart (for e-transfer)	\N	u
195	\N	875	\N	4195	yg	u	u	d	AUA035	cornucopia	Hobart (for e-transfer)	\N	u
329	\N	196	\N	4971	cd	u	u	d	MV013	flexbuf1	Hobart (for e-transfer)	\N	u
177	\N	152	\N	5516	ke	u	u	d	AUA034	IVS	Hobart (for e-transfer)	\N	u
141	\N	403	3100	3016	ke	u	u	d	C1707	IVS	Hobart (for e-transfer)	\N	u
135	\N	136	\N	1459	ke	u	u	d	CRDS92	IVS	Hobart (for e-transfer)	\N	u
213	\N	151	1090	1015	ke	u	u	d	OHG113	IVS	Hobart (for e-transfer)	\N	u
340	\N	239	\N	6317	ke	u	u	d	AOV021	AUSTRAL	Hobart (for e-transfer)	\N	u
1021	\N	138	1800	1692	ke	u	u	d	DYN009	godzilla16	Hobart (for e-transfer)	\N	u
883	\N	515	\N	3996	ke	u	u	d	AOV026	AUSTRAL	Hobart (for e-transfer)	\N	u
1265	\N	\N	\N	3500	cd	u	u	d	ER051	LBA	\N	/mnt/rd1/LBA/er051cd	u
925	\N	25	\N	206	cd	u	u	d	RG39C	astro	\N	\N	u
470	\N	468	\N	7250	yg	u	u	d	AUM001	flexbuf1	Hobart (for e-transfer)	\N	u
768	\N	248	1150	1071	yg	u	u	d	OHG119	godzilla8	Hobart (for e-transfer)	/mnt/godzilla8/ohg119yg	u
541	\N	784	\N	3980	cd	u	u	d	MV022	astro	Hobart (for e-transfer)	\N	u
806	\N	327	1870	1683	yg	u	u	d	R1905	godzilla16	Hobart (for e-transfer)	\N	u
514	\N	383	1760	1548	yg	u	u	d	R1861	IVS	Hobart (for e-transfer)	\N	u
330	\N	259	\N	9191	yg	u	u	d	AUA036	AUSTRAL	Hobart (for e-transfer)	\N	u
1409	2020-05-22	586	4730	\N	hb	u	u	d	S003A	\N	Hobart	\N	u
614	\N	65	1500	1122	yg	u	u	d	V252BO	LBA	Hobart (for e-transfer)	\N	u
493	\N	836	\N	4519	cd	u	u	d	MV021	astro	Hobart (for e-transfer)	\N	u
476	\N	512	\N	2323	cd	u	u	d	V255AF	cornucopia	Hobart (for e-transfer)	\N	u
370	\N	301	\N	6214	ke	u	u	d	AUSX01	flexbuf3	Hobart (for e-transfer)	\N	u
679	\N	444	1820	1689	ke	u	u	d	R1883	IVS	Hobart (for e-transfer)	\N	u
704	\N	378	1780	1632	ke	u	u	d	R1887	IVS	Hobart (for e-transfer)	\N	u
714	\N	438	3540	3232	ke	u	u	d	R1888	IVS	Hobart (for e-transfer)	\N	u
609	2018-12-06	149	2500	1580	ke	u	u	d	V252BO	LBA	Hobart (for e-transfer)	\N	u
984	\N	361	1970	1822	ke	u	u	d	R1897	bfg16	Hobart (for e-transfer)	\N	u
89	\N	166	1000	991	ke	u	u	d	OHG110	IVS	Hobart (for e-transfer)	\N	u
582	\N	445	3660	3338	ke	u	u	d	R1870	IVS	Hobart (for e-transfer)	\N	u
52	\N	382	5800	5319	ke	u	u	d	AUA030	AUSTRAL	Hobart (for e-transfer)	\N	u
504	\N	136	\N	724	ke	u	u	d	T2127	IVS	Hobart (for e-transfer)	\N	u
777	\N	232	10061	9642	ke	u	u	d	AUA053	AUSTRAL1	Hobart (for e-transfer)	\N	u
1977	\N	460	7315	6538	yg	u	u	d	AUM029	godzilla16	\N	/mnt/godzilla16//aum029yg/	u
1980	\N	490	7194	6628	yg	u	u	d	AUM030	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum030yg/	u
1326	\N	\N	2000	\N	ke	u	u	d	AUM012	\N	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum012ke	u
529	\N	199	\N	6929	ke	u	u	d	AOV027	AUSTRAL	Hobart (for e-transfer)	\N	u
463	\N	66	\N	2585	ke	u	u	d	V565A	flexbuf3	Hobart (for e-transfer)	\N	u
1113	\N	133	\N	1255	td	u	u	d	T2135	IVS1	\N	\N	u
973	\N	242	5000	5488	td	u	u	d	V447I	LBA	Hobart	\N	u
517	\N	188	\N	5352	td	u	u	d	V329H	LBA	Hobart (for e-transfer)	\N	u
1083	\N	696	\N	6846	td	u	u	d	V576A	LBA1	\N	\N	u
881	\N	98	\N	1368	td	u	u	d	T2130	IVS	\N	\N	u
487	\N	0	\N	0	td	u	u	d	KS1802	flexbuf2	Hobart (for e-transfer)	\N	u
358	\N	245	\N	5245	ke	u	u	d	CRDS94	IVS	Hobart (for e-transfer)	\N	u
616	\N	28	\N	2971	td	u	u	d	V252BO	LBA	Hobart (for e-transfer)	\N	u
516	\N	50	\N	4926	td	u	u	d	V252BN	LBA	Hobart (for e-transfer)	\N	u
347	\N	33	\N	1061	td	u	u	d	V456D	LBA	Hobart (for e-transfer)	\N	u
618	\N	39	\N	3198	td	u	u	d	V252BP	LBA	Hobart (for e-transfer)	\N	u
391	\N	249	\N	2365	yg	u	u	d	APSG42	IVS	Hobart (for e-transfer)	\N	u
379	\N	183	10000	9178	yg	u	u	d	CRF106	IVS	Hobart (for e-transfer)	\N	u
1296	\N	\N	7550	\N	hb	u	u	d	AUA060	flexbuf3	\N	/disk3/aua060hb	u
362	\N	240	\N	9199	yg	u	u	d	AUA039	AUSTRAL	Hobart (for e-transfer)	\N	u
533	\N	496	7000	7007	yg	u	u	d	AUM005	AUSTRAL	Hobart (for e-transfer)	\N	u
394	\N	682	\N	4891	yg	u	u	d	AUA041	AUSTRAL	Hobart (for e-transfer)	\N	u
431	\N	177	\N	942	yg	u	u	d	OHG107	bfg8	Hobart (for e-transfer)	\N	u
121	\N	4	\N	103	cd	u	u	d	RK18CG	astro	Hobart (for e-transfer)	\N	u
122	\N	4	\N	101	cd	u	u	d	RK18CH	astro	Hobart (for e-transfer)	\N	u
1410	2020-05-22	586	4700	\N	cd	u	u	d	S003A	\N	Hobart	/mnt/disk3/s003acd/	u
419	\N	466	\N	6839	yg	u	u	d	AUA044	flexbuf2	Hobart (for e-transfer)	\N	u
581	\N	170	\N	993	ke	u	u	d	OHG116	IVS	Hobart (for e-transfer)	\N	u
442	\N	468	3540	3253	yg	u	u	d	R1850	flexbuf1	Hobart (for e-transfer)	\N	u
1019	\N	297	6110	5557	ke	u	u	d	CRF111	IVS	Hobart (for e-transfer)	\N	u
1015	\N	337	3890	3610	ke	u	u	d	R1902	IVS	Hobart (for e-transfer)	\N	u
123	\N	4	\N	104	cd	u	u	d	RK18CU	astro	Hobart (for e-transfer)	\N	u
669	\N	235	10416	9271	ke	u	u	d	AUA049	AUSTRAL	Hobart (for e-transfer)	\N	u
357	\N	437	\N	2044	cd	u	u	d	V255AE	LBA	Hobart (for e-transfer)	\N	u
406	\N	248	10000	9275	yg	u	u	d	AUA042	AUSTRAL	Hobart (for e-transfer)	\N	u
635	\N	231	8832	8241	yg	u	u	d	CRDS99	IVS	Hobart (for e-transfer)	\N	u
1018	\N	346	2000	1865	ke	u	u	d	R1905	bfg16	Hobart (for e-transfer)	\N	u
926	\N	27	\N	207	cd	u	u	d	RG39D	astro	\N	\N	u
615	\N	126	1500	1294	yg	u	u	d	V252BP	LBA	Hobart (for e-transfer)	\N	u
696	\N	283	6042	5449	ke	u	u	d	APSG44	AUSTRAL	Hobart (for e-transfer)	\N	u
403	\N	697	\N	3685	yg	u	u	d	AOV022	AUSTRAL	Hobart (for e-transfer)	\N	u
240	\N	41	\N	2472	td	u	u	d	AUA028	AUSTRAL	Hobart (for e-transfer)	\N	u
727	\N	266	8260	7780	ke	u	u	d	CRF110	IVS	Hobart (for e-transfer)	\N	u
893	\N	66	4970	4633	ke	u	u	d	GM074C	LBA	Hobart (for e-transfer)	\N	u
719	\N	322	8241	7587	ke	u	u	d	AOV034	AUSTRAL	Hobart (for e-transfer)	\N	u
536	\N	\N	\N	\N	yg	u	u	d	AUM009	AUSTRAL	Hobart (for e-transfer)	\N	u
401	\N	420	\N	3369	yg	u	u	d	R1840	IVS	Hobart (for e-transfer)	\N	u
421	\N	230	\N	798	yg	u	u	d	T2125	IVS	Hobart (for e-transfer)	\N	u
589	\N	207	1710	829	yg	u	u	d	R1871	IVS	Hobart (for e-transfer)	\N	u
420	\N	505	\N	4300	yg	u	u	d	AOV023	flexbuf3	Hobart (for e-transfer)	\N	u
433	\N	249	\N	772	yg	u	u	d	AOV024	bfg16	Hobart (for e-transfer)	\N	u
774	\N	217	7000	6443	ke	u	u	d	AOV036	AUSTRAL1	Hobart (for e-transfer)	\N	u
624	\N	429	1760	1619	yg	u	u	d	R1875	IVS	Hobart (for e-transfer)	\N	u
628	\N	479	3450	3181	yg	u	u	d	R1876	IVS	Hobart (for e-transfer)	\N	u
1058	\N	371	1880	1735	ke	u	u	d	R1907	IVS	Hobart (for e-transfer)	\N	u
754	\N	441	5881	5419	ke	u	u	d	AOV035	flexbuf3	Hobart (for e-transfer)	\N	u
366	\N	860	\N	4496	yg	u	u	d	AUA040	AUSTRAL	Hobart (for e-transfer)	\N	u
811	\N	497	7717	7091	ke	u	u	d	AOV038	AUSTRAL1	Hobart (for e-transfer)	\N	u
30	\N	62	1900	1591	ke	u	u	d	R1809	IVS	Hobart (for e-transfer)	\N	u
1054	\N	\N	6000	\N	cd	u	u	d	MV015	\N	Hobart	\N	u
98	\N	498	\N	4895	ke	u	u	d	AOV018	IVS	Hobart (for e-transfer)	\N	u
409	\N	52	\N	1675	ke	u	u	d	CRDS95	IVS	Hobart (for e-transfer)	\N	u
494	\N	846	\N	4963	ke	u	u	d	MV021	astro	Hobart (for e-transfer)	\N	u
745	\N	338	3990	3725	ke	u	u	d	R1892	IVS	Hobart (for e-transfer)	\N	u
1275	\N	508	\N	6201	yg	u	u	d	AUA062	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL/aua062yg	u
469	\N	413	1730	1594	yg	u	u	d	R1855	colossos	Hobart (for e-transfer)	\N	u
438	\N	205	504	777	yg	u	u	d	T2126	godzilla16	Hobart (for e-transfer)	\N	u
496	\N	480	\N	7111	yg	u	u	d	AUM003	AUSTRAL	Hobart (for e-transfer)	\N	u
1027	\N	124	1800	1769	ke	u	u	d	DYN011	godzilla16	Hobart (for e-transfer)	\N	u
436	\N	334	1770	1359	yg	u	u	d	R1849	bfg8	Hobart (for e-transfer)	\N	u
1272	\N	0	4140	0	ho	u	u	d	AUA060	AUSTRAL1	\N	/mnt/rd1/AUSTRAL/aua060ho	u
717	\N	438	1140	7045	yg	u	u	d	OHG118	IVS	Hobart (for e-transfer)	\N	u
1271	\N	422	7275	6731	yg	u	u	d	AUA060	AUSTRAL	\N	/mnt/rd1/AUSTRAL/aua060yg	u
1298	\N	176	2000	1429	yg	u	u	d	AUM011	AUSTRAL	Hobart	/mnt/rd1/AUSTRAL/aum011yg	u
1411	\N	\N	4900	\N	yg	u	u	d	AUM016	flexbuf0	Hobart	/disk0/aum016yg/	u
1332	\N	\N	6760	\N	hb	u	u	d	AUA061	flexbuf	\N	/disk2/aua061hb/	u
1279	\N	573	6570	6334	yg	u	u	d	AUA064	AUSTRAL	\N	/mnt/rd1/AUSTRAL/aua064yg	u
523	\N	493	3560	3272	yg	u	u	d	R1862	IVS	Hobart (for e-transfer)	\N	u
736	\N	282	\N	5029	ke	u	u	d	APSG45	AUSTRAL	Hobart (for e-transfer)	\N	u
1450	\N	\N	1318	\N	cd	u	u	d	V560F	\N	Hobart	/mnt/rdsi/LBA/v560fcd/	u
454	\N	386	1640	1522	yg	u	u	d	R1853	bfg16	Hobart (for e-transfer)	\N	u
633	\N	0	1780	0	yg	u	u	d	R1877	IVS	Hobart (for e-transfer)	\N	u
503	\N	115	\N	665	yg	u	u	d	T2127	IVS	Hobart (for e-transfer)	\N	u
125	\N	3	\N	105	cd	u	u	d	RK18DJ	astro	Hobart (for e-transfer)	\N	u
462	\N	455	3570	3288	yg	u	u	d	R1854	flexbuf3	Hobart (for e-transfer)	\N	u
126	\N	3	\N	105	cd	u	u	d	RK18DN	astro	Hobart (for e-transfer)	\N	u
757	\N	235	10423	9551	ke	u	u	d	AUA052	AUSTRAL1	Hobart (for e-transfer)	\N	u
130	\N	3	\N	105	cd	u	u	d	RK18EM	astro	Hobart (for e-transfer)	\N	u
162	\N	363	3100	3050	ke	u	u	d	C1709	IVS	Hobart (for e-transfer)	\N	u
500	\N	508	7000	6919	yg	u	u	d	AUM007	AUSTRAL	Hobart (for e-transfer)	\N	u
164	\N	376	3100	2991	ke	u	u	d	C1711	IVS	Hobart (for e-transfer)	\N	u
144	\N	388	3300	3032	ke	u	u	d	C1713	IVS	Hobart (for e-transfer)	\N	u
142	\N	385	3500	3230	ke	u	u	d	C1712	IVS	Hobart (for e-transfer)	\N	u
148	\N	364	3200	2978	ke	u	u	d	C1715	IVS	Hobart (for e-transfer)	\N	u
446	\N	337	1900	1759	yg	u	u	d	R1851	cornucopia	Hobart (for e-transfer)	\N	u
899	\N	60	1500	966	ke	u	u	d	V252BQ	LBA	Hobart (for e-transfer)	\N	u
449	\N	483	3520	3198	yg	u	u	d	R1852	flexbuf0	Hobart (for e-transfer)	\N	u
886	\N	45	4548	3165	yg	u	u	d	GM074A	LBA	Hobart	\N	u
927	\N	27	\N	202	cd	u	u	d	RG39E	astro	\N	\N	u
983	\N	329	3320	3091	ke	u	u	d	R1896	godzilla16	Hobart (for e-transfer)	\N	u
989	\N	127	1800	1766	ke	u	u	d	DYN005	AUSTRAL	Hobart (for e-transfer)	\N	u
1016	\N	345	1970	1832	ke	u	u	d	R1903	IVS	Hobart (for e-transfer)	\N	u
960	\N	131	5000	4334	ke	u	u	d	V447I	\N	Hobart (for e-transfer)	\N	u
10	\N	62	1900	1591	ke	u	u	d	R1807	\N	Hobart (for e-transfer)	\N	u
1334	\N	\N	1000	\N	ke	u	u	d	V525F	\N	Hobart (for e-transfer)	\N	u
1363	\N	39	\N	218	yg	u	u	d	SI0071	AUSTRAL	\N	/mnt/rd1/AUSTRAL/si0071yg	u
1291	\N	654	\N	2280	ke	u	u	d	V255AH	\N	Hobart (for e-transfer)	\N	u
1302	\N	\N	6576	\N	cd	u	u	d	V253D	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v253dcd/	u
1305	\N	82	3288	3641	td	u	u	d	V253D	LBA1	Hobart (for e-transfer)	/mnt/rdsi/LBA/v253dtd/	u
947	\N	719	\N	4205	ke	u	u	d	MV027	\N	Hobart (for e-transfer)	\N	u
233	\N	\N	2009	\N	ke	u	u	d	R1830	\N	Hobart (for e-transfer)	\N	u
1061	\N	81	2000	1857	yg	u	u	d	MV042	godzilla16	Hobart	/mnt/godzilla16/mv042yg	u
1364	\N	208	5745	5333	yg	u	u	d	AOV046	AUSTRAL1	\N	\N	u
1365	\N	188	5852	6022	ho	u	u	d	AOV046	AUSTRAL	\N	\N	u
244	\N	156	1040	968	yg	u	u	d	CRF105	IVS	Hobart (for e-transfer)	\N	u
783	\N	200	7940	7396	ho	u	u	d	CRD103	IVS	 	\N	u
591	\N	508	7683	7021	yg	u	u	d	AUA047	AUSTRAL	Hobart (for e-transfer)	\N	u
665	\N	425	1730	1598	yg	u	u	d	R1881	IVS	Hobart (for e-transfer)	\N	u
604	\N	361	1710	1505	yg	u	u	d	R1873	IVS	Hobart (for e-transfer)	\N	u
163	\N	380	3100	3081	ke	u	u	d	C1710	IVS	Hobart (for e-transfer)	\N	u
146	\N	367	3200	2998	ke	u	u	d	C1714	IVS	Hobart (for e-transfer)	\N	u
1273	\N	523	6690	6446	yg	u	u	d	AUA061	AUSTRAL	\N	/mnt/rd1/AUSTRAL/aua061yg	u
61	\N	476	3500	3233	yg	u	u	d	R1814	IVS	Hobart (for e-transfer)	\N	u
1274	\N	\N	2890	\N	ho	u	u	d	AUA061	\N	\N	\N	u
337	\N	63	\N	1635	ho	u	u	d	AOV021	AUSTRAL	 	\N	u
2152	\N	\N	\N	\N	ke	u	u	d	V456F	\N	Hobart	\N	u
472	\N	93	\N	1186	ho	u	u	d	V560A	cornucopia	 	\N	u
334	\N	0	\N	0	ho	u	u	d	CRDS90	IVS	 	\N	u
116	\N	473	1800	1674	ho	u	u	d	C1701	IVS	 	\N	u
131	\N	417	1800	1749	ho	u	u	d	C1703	IVS	 	\N	u
512	\N	38	\N	1528	ho	u	u	d	AOV027	AUSTRAL	 	\N	u
451	\N	47	\N	2812	ho	u	u	d	V558B	LBA	 	\N	u
929	\N	145	\N	2273	cd	u	u	d	V447H	LBA	\N	\N	u
651	\N	164	1165	1081	ke	u	u	d	T2130	IVS	Hobart (for e-transfer)	\N	u
56	\N	517	3200	2850	yg	u	u	d	AUA029	AUSTRAL	Hobart (for e-transfer)	\N	u
249	\N	156	1040	968	yg	u	u	d	CRF105	IVS	Hobart (for e-transfer)	\N	u
485	\N	440	1720	1588	yg	u	u	d	R1857	IVS	Hobart (for e-transfer)	\N	u
414	\N	439	\N	3226	yg	u	u	d	R1842	IVS	Hobart (for e-transfer)	\N	u
412	\N	5	\N	1	ho	u	u	d	G323	astro	 	\N	u
543	\N	719	\N	4893	yg	u	u	d	AUA046	AUSTRAL	Hobart (for e-transfer)	\N	u
320	\N	224	\N	7306	ho	u	u	d	CRDS93	IVS	 	\N	u
198	\N	181	1040	967	yg	u	u	d	OHG111	godzilla16	Hobart (for e-transfer)	\N	u
202	\N	181	1040	967	yg	u	u	d	OHG111	godzilla16	Hobart (for e-transfer)	\N	u
697	\N	260	5240	4572	yg	u	u	d	APSG44	IVS	Hobart (for e-transfer)	\N	u
567	\N	191	700	596	ho	u	u	d	OHG115	IVS	 	\N	u
1366	\N	176	5891	4285	yg	u	u	d	AOV047	AUSTRAL	\N	\N	u
1367	\N	213	6029	5653	ho	u	u	d	AOV047	AUSTRAL	\N	\N	u
549	\N	347	7500	7445	yg	u	u	d	AOV028	AUSTRAL	Hobart (for e-transfer)	\N	u
515	\N	95	\N	2772	td	u	u	d	KS1803	flexbuf2	Hobart (for e-transfer)	\N	u
556	\N	432	3570	3289	yg	u	u	d	R1866	IVS	Hobart (for e-transfer)	\N	u
943	\N	162	\N	3432	td	u	u	d	GM074A	LBA1	\N	\N	u
526	\N	58	\N	5567	yg	u	u	d	V329H	LBA	Hobart (for e-transfer)	\N	u
584	2018-11-23	269	8200	6300	ho	u	u	d	AOV029	AUSTRAL	 	\N	u
587	2018-11-28	331	4500	4426	ho	u	u	d	CRF109	IVS	 	\N	u
250	\N	158	1060	982	ho	u	u	d	CRF105	godzilla16	 	\N	u
464	\N	65	\N	2551	ho	u	u	d	V565A	flexbuf1	 	\N	u
872	\N	63	890	886	cd	u	u	d	V560C	LBA	Hobart (for e-transfer)	\N	u
2154	\N	\N	\N	\N	cd	u	u	d	V456F	\N	Hobart	\N	u
664	\N	439	1750	1625	ke	u	u	d	R1881	IVS	Hobart (for e-transfer)	\N	u
2155	\N	89	\N	2812	td	u	u	d	V456F	LBA1	Hobart	/mnt/rdsi/LBA//v456ftd/	u
2153	\N	\N	\N	\N	ho	u	u	d	V456F	\N	Hobart	\N	u
1276	\N	454	\N	2519	ho	u	u	d	AUA062	AUSTRAL2	Hobart	/mnt/rdsi/AUSTRAL/aua062ho	u
248	\N	159	1060	987	ke	u	u	d	CRF105	IVS	Hobart (for e-transfer)	\N	u
1281	\N	514	2970	2829	ho	u	u	d	AUA065	AUSTRAL	\N	/rd1/auscope/PRIVATE/AUSTRAL/aua065ho/	u
1277	\N	256	6920	2820	yg	u	u	d	AUA063	rd1	\N	/rd1/auscope/PRIVATE/AUSTRAL/aua063yg/	u
1278	\N	504	2720	4357	ho	u	u	d	AUA063	AUSTRAL	\N	/mnt/rd1/AUSTRAL/aua063ho/	u
1280	\N	0	2880	0	ho	u	u	d	AUA064	AUSTRAL2	\N	/mnt/rdsi/AUSTRAL/aua064ho	u
1292	\N	62	5000	1400	ke	u	u	d	V447J	\N	Hobart (for e-transfer)	\N	u
272	\N	\N	1970	\N	ke	u	u	d	R1832	\N	Hobart (for e-transfer)	\N	u
474	\N	468	8000	7285	ke	u	u	d	AUM001	\N	Hobart (for e-transfer)	\N	u
585	2018-11-23	316	8100	7501	ke	u	u	d	AOV029	\N	Hobart (for e-transfer)	\N	u
475	\N	475	8000	7072	ke	u	u	d	AUM002	\N	Hobart (for e-transfer)	\N	u
352	\N	\N	1980	\N	ke	u	u	d	R1837	\N	Hobart (for e-transfer)	\N	u
278	\N	\N	2000	\N	ke	u	u	d	R1833	\N	Hobart (for e-transfer)	\N	u
354	\N	\N	1860	\N	ke	u	u	d	R1838	\N	Hobart (for e-transfer)	\N	u
407	\N	521	\N	1882	ho	u	u	d	AOV022	IVS	 	\N	u
150	\N	61	1800	345	ke	u	u	d	R4820	IVS	Hobart (for e-transfer)	\N	u
729	\N	300	1619	1477	ke	u	u	d	R4889	flexbuf3	Hobart (for e-transfer)	\N	u
275	\N	0	\N	0	ho	u	u	d	AOV020	AUSTRAL	 	\N	u
417	\N	484	\N	1906	ho	u	u	d	AOV023	IVS	 	\N	u
377	\N	223	\N	2127	ho	u	u	d	APSG42	IVS	 	\N	u
465	\N	171	\N	6079	ho	u	u	d	CRF108	flexbuf3	 	\N	u
134	\N	309	1800	1217	ho	u	u	d	C1706	IVS	 	\N	u
479	\N	96	\N	3120	ho	u	u	d	CRDS97	cornucopia	 	\N	u
568	\N	220	500	500	ho	u	u	d	OHG109	IVS	 	\N	u
583	\N	451	3510	3241	yg	u	u	d	R1870	IVS	Hobart (for e-transfer)	\N	u
491	\N	400	1800	1666	yg	u	u	d	R1859	IVS	Hobart (for e-transfer)	\N	u
114	\N	162	\N	1733	ho	u	u	d	CRDS92	IVS	 	\N	u
253	\N	83	\N	741	ho	u	u	d	VT02AJ	LBA	 	\N	u
333	\N	254	\N	958	ho	u	u	d	RD1707	IVS	 	\N	u
317	\N	160	\N	4114	ho	u	u	d	MV014	flexbuf1		\N	u
170	\N	196	\N	6598	ho	u	u	d	AUA034	AUSTRAL	 	\N	u
1175	\N	324	1840	1634	yg	u	u	d	R1944	IVS	Hobart (for e-transfer)	\N	u
139	\N	465	1800	1836	ho	u	u	d	C1708	IVS	 	\N	u
140	\N	448	1800	1741	ho	u	u	d	C1710	IVS	 	\N	u
184	\N	292	8290	7205	ho	u	u	d	AOV019	AUSTRAL	 	\N	u
486	\N	456	\N	1565	ho	u	u	d	AOV026	flexbuf0	 	\N	u
2183	\N	\N	\N	\N	yg	u	u	d	R1999	IVS	\N	\N	u
484	\N	439	1720	1513	ke	u	u	d	R1857	IVS	Hobart (for e-transfer)	\N	u
1490	\N	\N	24000	\N	ke	u	u	d	AUM017	\N	Hobart (for e-transfer)	/mnt/rd1/AUSTRAL/aum017ke/	u
1067	\N	249	2800	2566	yg	u	u	d	R1910	IVS	Hobart (for e-transfer)	\N	u
668	\N	439	2912	2530	ho	u	u	d	AOV032	AUSTRAL	 	\N	u
477	\N	448	\N	1188	ho	u	u	d	V255AF	cornucopia	 	\N	u
461	\N	\N	3640	\N	ke	u	u	d	R1854	\N	Hobart (for e-transfer)	\N	u
171	\N	\N	1900	\N	ke	u	u	d	R1823	\N	Hobart (for e-transfer)	\N	u
173	\N	\N	1880	\N	ke	u	u	d	R1824	\N	Hobart (for e-transfer)	\N	u
971	\N	51	2000	683	yg	u	u	d	DYN003	bfg16	Hobart	\N	u
418	\N	306	\N	1245	yg	u	u	d	R1843	godzilla16	Hobart (for e-transfer)	\N	u
422	\N	386	\N	3425	yg	u	u	d	R1844	IVS	Hobart (for e-transfer)	\N	u
833	\N	153	10132	5452	yg	u	u	d	AUA056	AUSTRAL1	Hobart (for e-transfer)	\N	u
1069	\N	354	3600	3227	yg	u	u	d	R1912	IVS	Hobart (for e-transfer)	\N	u
576	\N	198	\N	562	ho	u	u	d	OHG116	IVS	 	\N	u
1102	\N	316	1150	1063	yg	u	u	d	R1921	IVS	Hobart (for e-transfer)	\N	u
440	\N	82	\N	2358	cd	u	u	d	V447G	godzilla16	Hobart (for e-transfer)	\N	u
539	\N	687	\N	3821	yg	u	u	d	MV022	astro	Hobart (for e-transfer)	\N	u
524	\N	207	\N	3282	yg	u	u	d	V252BN	LBA	Hobart (for e-transfer)	\N	u
657	\N	414	2970	2732	yg	u	u	d	R1880	IVS	Hobart (for e-transfer)	\N	u
547	\N	388	\N	3242	yg	u	u	d	R1864	IVS	Hobart (for e-transfer)	\N	u
608	\N	510	3420	3135	yg	u	u	d	R1872	IVS	Hobart (for e-transfer)	\N	u
2299	\N	\N	\N	\N	ho	u	u	d	V576C	\N	Hobart	\N	u
535	\N	\N	\N	\N	yg	u	u	d	AUM006	AUSTRAL	Hobart (for e-transfer)	\N	u
128	\N	4	\N	104	cd	u	u	d	RK18DO	astro	Hobart (for e-transfer)	\N	u
537	\N	434	\N	7367	yg	u	u	d	AUM010	AUSTRAL	Hobart (for e-transfer)	\N	u
457	\N	238	5100	384	yg	u	u	d	APSG43	IVS	Hobart (for e-transfer)	\N	u
659	\N	206	1134	1054	yg	u	u	d	OHG117	IVS	Hobart (for e-transfer)	\N	u
117	\N	560	\N	3945	cd	u	u	d	MV011	flexbuf1	Hobart (for e-transfer)	\N	u
129	\N	2	\N	70	cd	u	u	d	RK18DP	astro	Hobart (for e-transfer)	\N	u
563	2018-10-30	348	8000	7421	ke	u	u	d	AOV028	\N	Hobart (for e-transfer)	\N	u
34	\N	62	3700	1591	ke	u	u	d	R1810	\N	Hobart (for e-transfer)	\N	u
518	\N	468	\N	3227	yg	u	u	d	R1860	IVS	Hobart (for e-transfer)	\N	u
259	\N	52	\N	1473	cd	u	u	d	V559B	LBA	Hobart (for e-transfer)	\N	u
530	\N	135	\N	4545	yg	u	u	d	AOV027	AUSTRAL	Hobart (for e-transfer)	\N	u
646	\N	402	3740	3435	yg	u	u	d	R1878	IVS	Hobart (for e-transfer)	\N	u
260	\N	42	\N	1425	cd	u	u	d	V547D	LBA	Hobart (for e-transfer)	\N	u
267	\N	187	\N	3003	cd	u	u	d	V252BL	LBA	Hobart (for e-transfer)	\N	u
580	\N	176	\N	996	yg	u	u	d	OHG116	IVS	Hobart (for e-transfer)	\N	u
2156	\N	\N	\N	\N	ke	u	u	d	V456G	\N	Hobart	\N	u
699	\N	\N	8175	\N	ke	u	u	d	AOV033	\N	Hobart (for e-transfer)	\N	u
38	\N	62	2000	1591	ke	u	u	d	R1811	\N	Hobart (for e-transfer)	\N	u
82	\N	\N	2000	\N	ke	u	u	d	R1815	\N	Hobart (for e-transfer)	\N	u
734	\N	\N	3860	\N	ke	u	u	d	R1890	\N	Hobart (for e-transfer)	\N	u
878	2019-01-31	771	4763	\N	ke	u	u	d	MV023	\N	Hobart (for e-transfer)	\N	u
2298	\N	\N	\N	\N	cd	u	u	d	V576C	\N	Hobart	\N	u
264	\N	106	\N	1664	cd	u	u	d	V544C	LBA	Hobart (for e-transfer)	\N	u
255	\N	107	\N	885	cd	u	u	d	VT02AJ	LBA	Hobart (for e-transfer)	\N	u
1001	\N	370	4130	3821	ke	u	u	d	R1900	IVS	Hobart (for e-transfer)	\N	u
242	\N	153	\N	3874	yg	u	u	d	MV012	cornucopia	Hobart (for e-transfer)	\N	u
480	\N	224	\N	1124	cd	u	u	d	MV020	flexbuf1	Hobart (for e-transfer)	\N	u
678	\N	436	3600	3342	yg	u	u	d	R1882	IVS	Hobart (for e-transfer)	\N	u
326	\N	182	\N	4641	yg	u	u	d	MV013	flexbuf2	Hobart (for e-transfer)	\N	u
399	\N	211	\N	5434	yg	u	u	d	MV014	flexbuf2	Hobart (for e-transfer)	\N	u
241	\N	153	\N	3837	ho	u	u	d	MV012	\N		\N	u
884	\N	63	4867	4527	ke	u	u	d	GM074A	LBA	Hobart (for e-transfer)	\N	u
928	\N	33	\N	282	cd	u	u	d	RG39F	astro	\N	\N	u
571	\N	181	\N	967	yg	u	u	d	OHG114	IVS	Hobart (for e-transfer)	\N	u
688	\N	324	1710	1161	yg	u	u	d	R1885	godzilla16	Hobart (for e-transfer)	\N	u
802	\N	194	1010	920	yg	u	u	d	T2133	IVS	Hobart (for e-transfer)	\N	u
974	\N	\N	1900	\N	ke	u	u	d	R4894	\N	Hobart (for e-transfer)	\N	u
977	\N	\N	1900	\N	ke	u	u	d	R4895	\N	Hobart (for e-transfer)	\N	u
1423	\N	\N	6710	\N	ke	u	u	d	AUA065	\N	Hobart (for e-transfer)	/mnt/rdsi/AUSTRAL/aua065ke	u
695	\N	489	3390	2557	yg	u	u	d	R1886	godzilla16	Hobart (for e-transfer)	\N	u
652	\N	183	1169	1088	yg	u	u	d	T2130	IVS	Hobart (for e-transfer)	\N	u
778	\N	230	9959	9543	yg	u	u	d	AUA053	AUSTRAL	Hobart (for e-transfer)	\N	u
675	\N	212	8154	7571	yg	u	u	d	CRD100	IVS	Hobart (for e-transfer)	\N	u
957	\N	\N	918	\N	ke	u	u	d	R4892	\N	Hobart (for e-transfer)	\N	u
375	\N	32	\N	769	cd	u	u	d	V456D	LBA	Hobart (for e-transfer)	\N	u
386	\N	145	\N	1244	cd	u	u	d	V525E	IVS	Hobart (for e-transfer)	\N	u
364	\N	115	\N	942	cd	u	u	d	V566A	LBA	Hobart (for e-transfer)	\N	u
372	\N	411	\N	14832	yg	u	u	d	AUSX01	flexbuf2	Hobart (for e-transfer)	\N	u
1710	\N	670	5750	5520	yg	u	u	d	AUA070	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aua070yg/	u
705	\N	352	1610	1412	yg	u	u	d	R1887	IVS	Hobart (for e-transfer)	\N	u
680	\N	450	1780	1653	yg	u	u	d	R1883	IVS	Hobart (for e-transfer)	\N	u
681	\N	\N	1733	\N	ke	u	u	d	R4883	\N	Hobart (for e-transfer)	\N	u
715	\N	422	3410	2964	yg	u	u	d	R1888	IVS	Hobart (for e-transfer)	\N	u
685	\N	\N	1772	\N	ke	u	u	d	R4884	\N	Hobart (for e-transfer)	\N	u
725	\N	337	1910	1766	yg	u	u	d	R1889	flexbuf2	Hobart (for e-transfer)	\N	u
722	\N	\N	1834	\N	ke	u	u	d	R4888	\N	Hobart (for e-transfer)	\N	u
96	\N	173	\N	850	yg	u	u	d	T2122	IVS	Hobart (for e-transfer)	\N	u
426	\N	187	9500	9545	yg	u	u	d	AUA045	AUSTRAL	Hobart (for e-transfer)	\N	u
739	\N	\N	\N	\N	ke	u	u	d	R4890	\N	Hobart (for e-transfer)	\N	u
44	\N	157	1800	1679	yg	u	u	d	CRDS91	IVS	Hobart (for e-transfer)	\N	u
88	\N	178	1000	932	yg	u	u	d	OHG110	IVS	Hobart (for e-transfer)	\N	u
27	\N	62	3400	1591	yg	u	u	d	R1808	IVS	Hobart (for e-transfer)	\N	u
482	\N	305	\N	7555	yg	u	u	d	AOV025	flexbuf0	Hobart (for e-transfer)	\N	u
87	\N	187	1000	950	yg	u	u	d	OHG109	IVS	Hobart (for e-transfer)	\N	u
855	\N	495	5128	4697	yg	u	u	d	AOV042	AUSTRAL	Hobart (for e-transfer)	\N	u
670	\N	180	10444	7447	yg	u	u	d	AUA049	flexbuf3	Hobart (for e-transfer)	\N	u
497	\N	480	\N	7191	ke	u	u	d	AUM003	AUSTRAL	Hobart (for e-transfer)	\N	u
428	\N	507	\N	3394	ke	u	u	d	R1846	IVS	Hobart (for e-transfer)	\N	u
728	\N	288	8970	8536	yg	u	u	d	CRF110	IVS	Hobart (for e-transfer)	\N	u
700	\N	316	8156	6546	yg	u	u	d	AOV033	AUSTRAL	Hobart (for e-transfer)	\N	u
895	\N	\N	5114	4280	cd	u	u	d	GM074C	\N	Hobart	\N	u
432	\N	391	\N	1816	ke	u	u	d	R1847	godzilla8	Hobart (for e-transfer)	\N	u
60	\N	491	3700	3429	ke	u	u	d	R1814	IVS	Hobart (for e-transfer)	\N	u
1057	\N	189	8220	7980	ke	u	u	d	CRD104	IVS	Hobart (for e-transfer)	\N	u
1030	\N	127	1800	1740	ke	u	u	d	DYN012	godzilla16	Hobart (for e-transfer)	\N	u
415	\N	456	\N	3419	ke	u	u	d	R1842	IVS	Hobart (for e-transfer)	\N	u
605	\N	\N	1571	\N	ke	u	u	d	R4873	\N	Hobart (for e-transfer)	\N	u
1708	\N	\N	5890	\N	hb	u	u	d	AUA070	\N	\N	\N	u
1644	\N	\N	5000	\N	ke	u	u	d	V447K	\N	Hobart (for e-transfer)	\N	u
1772	\N	\N	6430	\N	ke	u	u	d	AUA074	\N	Hobart	/mnt/rdsi/AUSTRAL/aua074ke/	u
1086	\N	\N	\N	\N	yg	u	u	d	R4915	\N	Washington (DHL)	\N	u
1764	\N	\N	6580	18810	ke	u	u	d	AUA073	\N	Hobart	\N	u
791	\N	256	10369	9597	yg	u	u	d	AUA054	AUSTRAL1	Hobart (for e-transfer)	\N	u
894	\N	58	4588	4271	yg	u	u	d	GM074C	LBA	Hobart	\N	u
787	\N	378	8390	8147	yg	u	u	d	CRF111	flexbuf2	Hobart (for e-transfer)	\N	u
767	\N	331	1830	1691	yg	u	u	d	R1897	bfg16	Hobart (for e-transfer)	\N	u
771	\N	354	3880	3600	yg	u	u	d	R1898	IVS	Hobart (for e-transfer)	\N	u
773	\N	286	1790	1661	yg	u	u	d	R1899	IVS	Hobart (for e-transfer)	\N	u
781	\N	357	3990	3668	yg	u	u	d	R1900	IVS	Hobart (for e-transfer)	\N	u
789	\N	346	3650	3375	yg	u	u	d	R1902	IVS	Hobart (for e-transfer)	\N	u
786	\N	364	1860	1718	yg	u	u	d	R1901	IVS	Hobart (for e-transfer)	\N	u
801	\N	384	3660	3384	yg	u	u	d	R1904	IVS	Hobart (for e-transfer)	\N	u
1100	\N	246	1100	974	yg	u	u	d	R1919	IVS	Hobart (for e-transfer)	\N	u
1098	\N	198	1380	909	yg	u	u	d	R1917	IVS	Hobart (for e-transfer)	\N	u
599	\N	488	3432	3152	ho	u	u	d	AOV030	AUSTRAL	 	\N	u
776	\N	183	6200	5768	ho	u	u	d	AOV036	AUSTRAL	 	\N	u
701	\N	313	8229	7495	ho	u	u	d	AOV033	bfg16	 	\N	u
598	\N	661	6584	6021	yg	u	u	d	AOV030	AUSTRAL	Hobart (for e-transfer)	\N	u
720	\N	312	8210	7449	yg	u	u	d	AOV034	AUSTRAL	Hobart (for e-transfer)	\N	u
775	\N	193	6000	4504	yg	u	u	d	AOV036	AUSTRAL	Hobart (for e-transfer)	\N	u
930	\N	23	\N	1210	cd	u	u	d	VX026A	LBA	\N	\N	u
735	\N	362	3790	3509	yg	u	u	d	R1890	flexbuf2	Hobart (for e-transfer)	\N	u
749	\N	191	7880	7683	ho	u	u	d	CRD102	IVS	 	\N	u
1101	\N	296	2770	2568	yg	u	u	d	R1920	IVS	Hobart (for e-transfer)	\N	u
797	\N	249	7165	6559	ke	u	u	d	AOV037	AUSTRAL1	Hobart (for e-transfer)	\N	u
756	\N	437	2507	2296	ho	u	u	d	AOV035	AUSTRAL		\N	u
755	\N	447	5986	5540	yg	u	u	d	AOV035	AUSTRAL1	Hobart (for e-transfer)	\N	u
788	\N	\N	1900	\N	yg	u	u	d	R4901	\N	Washington (DHL)	\N	u
753	\N	353	3840	3522	yg	u	u	d	R1894	godzilla16	Hobart (for e-transfer)	\N	u
761	\N	367	1830	1691	yg	u	u	d	R1895	IVS	Hobart (for e-transfer)	\N	u
689	\N	224	10198	9454	ke	u	u	d	AUA050	AUSTRAL1	Hobart (for e-transfer)	\N	u
1894	\N	\N	\N	\N	ke	u	u	d	AUA080	\N	Hobart	/mnt/rdsi/AUSTRAL/	u
2345	\N	472	2900	2679	yg	u	u	d	R11012	IVS	\N	/mnt/rd1/IVS//r11012yg/	u
374	\N	3	\N	26	yg	u	u	d	V566A	LBA	Hobart (for e-transfer)	\N	u
1174	\N	\N	1116	\N	yg	u	u	d	R4943	\N	Washington (DHL)	\N	u
746	\N	382	3900	3602	yg	u	u	d	R1892	IVS	Hobart (for e-transfer)	\N	u
544	\N	795	\N	4776	ke	u	u	d	AUA046	AUSTRAL	Hobart (for e-transfer)	\N	u
2161	\N	\N	\N	\N	yg	u	u	d	R1966	IVS	\N	\N	u
1595	\N	\N	2000	\N	hb	u	u	d	AVS004	\N	Hobart	/mnt/rdsi/AUSTRAL//avs004hb	u
737	\N	266	\N	4668	yg	u	u	d	APSG45	AUSTRAL	Hobart (for e-transfer)	\N	u
738	\N	271	\N	2729	ho	u	u	d	APSG45	AUSTRAL	 	\N	u
751	\N	185	6240	5782	ho	u	u	d	RD1904	IVS	 	\N	u
1095	\N	\N	\N	\N	yg	u	u	d	R4924	\N	Washington (DHL)	\N	u
1087	\N	\N	\N	\N	yg	u	u	d	R4916	\N	Washington (DHL)	\N	u
733	\N	155	\N	5693	ho	u	u	d	AUA051	AUSTRAL	 	\N	u
1088	\N	\N	1297	\N	yg	u	u	d	R4917	\N	Washington (DHL)	\N	u
1089	\N	\N	1287	\N	yg	u	u	d	R4918	\N	Washington (DHL)	\N	u
1090	\N	\N	1286	\N	yg	u	u	d	R4919	\N	Washington (DHL)	\N	u
814	\N	\N	1594	\N	yg	u	u	d	R4906	\N	Washington (DHL)	\N	u
1969	\N	\N	7000	\N	hb	u	u	d	AUM027	\N	\N	vbs://flexbuflcd/	u
732	\N	168	\N	6697	yg	u	u	d	AUA051	IVS	Hobart (for e-transfer)	\N	u
758	\N	216	10495	8814	yg	u	u	d	AUA052	colossos	Hobart (for e-transfer)	\N	u
823	\N	\N	1900	\N	yg	u	u	d	R4908	\N	Washington (DHL)	\N	u
959	\N	165	7580	7392	ke	u	u	d	CRD102	IVS	Hobart (for e-transfer)	\N	u
90	\N	178	1000	986	ke	u	u	d	OHG109	IVS	Hobart (for e-transfer)	\N	u
1060	\N	101	2000	2074	ke	u	u	d	MV042	AUSTRAL	Hobart (for e-transfer)	\N	u
963	\N	\N	1616	\N	ke	u	u	d	R4893	\N	Hobart (for e-transfer)	\N	u
662	\N	\N	1626	\N	ke	u	u	d	R4880	\N	Hobart (for e-transfer)	\N	u
672	\N	\N	1777	\N	ke	u	u	d	R4881	\N	Hobart (for e-transfer)	\N	u
1194	\N	\N	\N	\N	yg	u	u	d	R4950	\N	Washington (DHL)	\N	u
1202	\N	\N	1260	\N	yg	u	u	d	R4952	\N	Washington (DHL)	\N	u
1206	\N	\N	1253	\N	yg	u	u	d	R4954	\N	Washington (DHL)	\N	u
1204	\N	\N	1192	\N	yg	u	u	d	R4953	\N	Washington (DHL)	\N	u
1214	\N	\N	1219	\N	yg	u	u	d	R4956	\N	Washington (DHL)	\N	u
1218	\N	\N	\N	\N	yg	u	u	d	R4957	\N	Washington (DHL)	\N	u
1222	\N	\N	\N	\N	yg	u	u	d	R4958	\N	Washington (DHL)	\N	u
1224	\N	\N	\N	\N	yg	u	u	d	R4959	\N	Washington (DHL)	\N	u
1225	\N	\N	\N	\N	yg	u	u	d	R4960	\N	Washington (DHL)	\N	u
750	\N	329	1830	1695	yg	u	u	d	R1893	IVS	Hobart (for e-transfer)	\N	u
748	\N	368	9470	16632	yg	u	u	d	CRD102	IVS	Hobart (for e-transfer)	\N	u
759	\N	218	10132	7561	ho	u	u	d	AUA052	AUSTRAL	 	\N	u
763	\N	148	890	872	ho	u	u	d	T2132	godzilla16		\N	u
638	\N	245	10381	9649	yg	u	u	d	AUA048	AUSTRAL	Hobart (for e-transfer)	\N	u
1716	\N	\N	\N	\N	ho	u	u	d	V600A	\N	Hobart	/mnt/rdsi/LBA//v600aho	u
553	\N	380	1810	1679	yg	u	u	d	R1867	IVS	Hobart (for e-transfer)	\N	u
573	\N	151	1780	536	yg	u	u	d	R1869	IVS	Hobart (for e-transfer)	\N	u
795	\N	329	1870	1718	yg	u	u	d	R1903	IVS	Hobart (for e-transfer)	\N	u
452	\N	7	\N	1	ke	u	u	d	R4850	bfg16	Hobart (for e-transfer)	\N	u
1408	2020-05-22	586	4700	\N	ke	u	u	d	S003A	\N	Hobart (for e-transfer)	/disk2/s003ake/	u
901	\N	\N	1496	\N	cd	u	u	d	V252BQ	LBA	Hobart	\N	u
1103	\N	335	2830	2606	yg	u	u	d	R1922	IVS	Hobart (for e-transfer)	\N	u
900	\N	61	1500	954	yg	u	u	d	V252BQ	LBA	Hobart	\N	u
1036	\N	71	\N	1403	ho	u	u	d	RUA031	bfg16	\N	\N	u
53	\N	376	6500	6016	yg	u	u	d	AUA030	AUSTRAL	Hobart (for e-transfer)	\N	u
115	\N	149	5000	5093	ho	u	u	d	AUA032	AUSTRAL	 	\N	u
961	\N	132	5000	4348	yg	u	u	d	V447I	LBA	Hobart	\N	u
1099	\N	281	2863	2647	yg	u	u	d	R1918	IVS	Hobart (for e-transfer)	\N	u
42	\N	163	2600	2451	ho	u	u	d	RD1709	IVS	 	\N	u
37	\N	485	6900	6345	yg	u	u	d	AUA027	\N	Hobart (for e-transfer)	\N	u
935	2019-03-16	\N	\N	6000	cd	u	u	d	MV026	\N	Hobart	\N	u
459	\N	254	6100	6095	ho	u	u	d	AOV025	\N	 	\N	u
1126	\N	128	1200	\N	cd	u	u	d	V525F	\N	Hobart	\N	u
1606	\N	\N	2000	\N	ke	u	u	d	S011B	\N	Hobart (for e-transfer)	\N	u
11	\N	62	1800	1591	yg	u	u	d	R1807	\N	Hobart (for e-transfer)	\N	u
936	\N	\N	4000	3900	cd	u	u	d	V558C	\N	Hobart	\N	u
48	\N	231	2000	1820	ho	u	u	d	R1812	\N	 	\N	u
32	\N	62	1600	1591	ke	u	u	d	R4809	\N	Hobart (for e-transfer)	\N	u
557	\N	450	3800	3479	ke	u	u	d	R1866	IVS	Hobart (for e-transfer)	\N	u
66	2017-10-06	62	6000	1591	ho	u	u	d	V456B	\N	 	\N	u
948	\N	724	\N	4281	yg	u	u	d	MV027	\N	Hobart	\N	u
981	\N	\N	1900	\N	ke	u	u	d	R4899	\N	Hobart (for e-transfer)	\N	u
620	\N	\N	\N	2000	cd	u	u	d	V252BO	\N	Hobart (for e-transfer)	\N	u
938	\N	\N	1200	744	cd	u	u	d	VX026C	\N	Hobart	\N	u
915	\N	\N	5102	4610	cd	u	u	d	GM074B	\N	Hobart	\N	u
68	\N	62	3100	1591	yg	u	u	d	APSG41	\N	Hobart (for e-transfer)	\N	u
72	2017-10-25	\N	1000	\N	cd	u	u	d	V329G	\N	Hobart (for e-transfer)	\N	u
1055	\N	\N	6000	\N	ho	u	u	d	MV015	\N	Hobart	\N	u
1742	\N	\N	6590	\N	ke	u	u	d	AUA072	\N	Hobart	\N	u
1717	\N	\N	\N	\N	cd	u	u	d	V600A	\N	Hobart	/mnt/rdsi/LBA/v600acd	u
1714	\N	66	\N	3172	td	u	u	d	V600A	LBA1	Hobart	/mnt/rdsi/LBA//v600atd/	u
1715	\N	179	\N	1615	yg	u	u	d	V600A	LBA1	Hobart	/mnt/rdsi/LBA/v600ayg/	u
2163	\N	\N	4000	\N	cd	u	u	d	V255AL	\N	Hobart	/mnt/rdsi/LBA/v255alcd	u
953	\N	\N	\N	\N		u	u	d	MV030	\N	Hobart	\N	u
954	\N	\N	\N	\N		u	u	d	MV030	\N	Hobart	\N	u
955	\N	\N	\N	\N		u	u	d	MV030	\N	Hobart	\N	u
1864	\N	\N	\N	\N	yg	u	u	d	R41009	\N	Washington (DHL)	\N	u
743	\N	\N	\N	\N	ke	u	u	d	R4891	\N	Hobart (for e-transfer)	\N	u
978	\N	\N	1900	\N	ke	u	u	d	R4896	\N	Hobart (for e-transfer)	\N	u
979	\N	\N	1900	\N	ke	u	u	d	R4897	\N	Hobart (for e-transfer)	\N	u
980	\N	\N	1717	\N	ke	u	u	d	R4898	\N	Hobart (for e-transfer)	\N	u
166	\N	\N	1800	\N	ke	u	u	d	R4821	\N	Hobart (for e-transfer)	\N	u
1351	\N	287	5367	\N	ke	u	u	d	V589A	\N	Hobart (for e-transfer)	/mnt/rdsi/LBA/v589ake	u
790	\N	253	10356	9562	ke	u	u	d	AUA054	AUSTRAL1	Hobart (for e-transfer)	\N	u
178	\N	\N	1700	\N	ke	u	u	d	R4824	\N	Hobart (for e-transfer)	\N	u
1226	\N	\N	1258	\N	yg	u	u	d	R4961	\N	Washington (DHL)	/mnt/rd1/IVS/r4961yg	u
2164	\N	\N	4000	\N	ho	u	u	d	V255AL	\N	Hobart	\N	u
1228	\N	\N	\N	\N	yg	u	u	d	R4962	\N	Washington (DHL)	\N	u
1231	\N	\N	\N	\N	yg	u	u	d	R4963	\N	Washington (DHL)	\N	u
1235	\N	\N	\N	\N	yg	u	u	d	R4964	\N	Washington (DHL)	\N	u
1237	\N	\N	\N	\N	yg	u	u	d	R4965	\N	Washington (DHL)	\N	u
1244	\N	\N	1555	\N	yg	u	u	d	R4968	\N	Hobart (for e-transfer)	\N	u
1246	\N	\N	\N	\N	yg	u	u	d	R4969	\N	Washington (DHL)	\N	u
1248	\N	\N	1775	\N	yg	u	u	d	R4970	\N	Washington (DHL)	\N	u
1252	\N	\N	1630	\N	yg	u	u	d	R4971	\N	Washington (DHL)	\N	u
1790	\N	274	\N	1191	yg	u	u	d	R4994	IVS	Washington (DHL)	/mnt/rd1/IVS//r4994yg/	u
1003	\N	\N	1900	\N	ke	u	u	d	R4900	\N	Hobart (for e-transfer)	\N	u
2162	\N	\N	4000	\N	ke	u	u	d	V255AL	\N	Hobart	\N	u
2323	\N	\N	\N	\N	ke	u	u	d	V606A	\N	Hobart	\N	u
2326	\N	\N	\N	\N	cd	u	u	d	V606A	\N	Hobart	 /mnt/rdsi/LBA/v606acd/	u
2324	\N	89	\N	3459	yg	u	u	d	V606A	LBA1	Hobart	/mnt/rdsi/LBA//v606ayg/	u
1193	\N	\N	1460	\N	yg	u	u	d	R1950	\N	Hobart (for e-transfer)	\N	u
1199	\N	\N	2090	\N	ho	u	u	d	R1952	\N	Hobart (for e-transfer)	\N	u
1203	\N	\N	2080	\N	ho	u	u	d	R1953	\N	Hobart (for e-transfer)	\N	u
988	\N	\N	5000	\N	cd	u	u	d	V447I	\N	Hobart	\N	u
187	\N	\N	1880	\N	yg	u	u	d	R1827	\N	Hobart (for e-transfer)	\N	u
191	\N	\N	1880	\N	yg	u	u	d	R1827	\N	Hobart (for e-transfer)	\N	u
193	\N	\N	1920	\N	yg	u	u	d	R1828	\N	Hobart (for e-transfer)	\N	u
1293	\N	62	\N	1400	ke	u	u	d	V581A	\N	Hobart (for e-transfer)	\N	u
906	\N	139	1500	\N	cd	u	u	d	V252BR	\N	Hobart	\N	u
208	\N	\N	1810	\N	yg	u	u	d	R1829	\N	Hobart (for e-transfer)	\N	u
186	\N	\N	1940	\N	ke	u	u	d	R1827	\N	Hobart (for e-transfer)	\N	u
711	\N	\N	8192	\N	ho	u	u	d	CRD101	\N	 	\N	u
908	\N	\N	2000	\N	cd	u	u	d	V255AG	\N	Hobart	\N	u
54	\N	62	5600	1591	ho	u	u	d	AUA030	\N	 	\N	u
923	2019-02-10	566	3574	\N	yg	u	u	d	MV024	\N	Hobart	\N	u
93	\N	557	\N	3963	ho	u	u	d	MV011	\N		\N	u
784	\N	\N	5840	\N	ho	u	u	d	RD1905	\N	 	\N	u
910	\N	\N	1500	876	cd	u	u	d	V452E	\N	Hobart	\N	u
227	\N	\N	1920	\N	yg	u	u	d	R1830	\N	Hobart (for e-transfer)	\N	u
234	\N	\N	1920	\N	yg	u	u	d	R1830	\N	Hobart (for e-transfer)	\N	u
236	\N	\N	1910	\N	yg	u	u	d	R1831	\N	Hobart (for e-transfer)	\N	u
190	\N	\N	1940	\N	ke	u	u	d	R1827	\N	Hobart (for e-transfer)	\N	u
2165	\N	\N	4000	\N	ke	u	u	d	V252BZ	\N	Hobart	\N	u
1022	\N	\N	1800	\N	yg	u	u	d	DYN009	\N	Hobart	\N	u
192	\N	\N	1930	\N	ke	u	u	d	R1828	\N	Hobart (for e-transfer)	\N	u
586	2018-11-23	317	8200	7493	yg	u	u	d	AOV029	\N	Hobart (for e-transfer)	\N	u
1989	\N	424	\N	7040	yg	u	u	d	AUM033	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL/aum033yg/	u
471	\N	474	8000	7050	yg	u	u	d	AUM002	\N	Hobart (for e-transfer)	\N	u
207	\N	\N	1870	\N	ke	u	u	d	R1829	\N	Hobart (for e-transfer)	\N	u
353	\N	\N	1890	\N	yg	u	u	d	R1837	\N	Hobart (for e-transfer)	\N	u
1025	\N	\N	1800	\N	yg	u	u	d	DYN010	\N	Hobart	\N	u
413	\N	245	10000	9766	yg	u	u	d	AUA043	\N	Hobart (for e-transfer)	\N	u
279	\N	\N	1900	\N	yg	u	u	d	R1833	\N	Hobart (for e-transfer)	\N	u
1028	\N	\N	1800	\N	yg	u	u	d	DYN011	\N	Hobart	\N	u
355	\N	\N	1770	\N	yg	u	u	d	R1838	\N	Hobart (for e-transfer)	\N	u
887	\N	\N	5106	4470	cd	u	u	d	GM074A	\N	Hobart	\N	u
1031	\N	\N	1800	\N	yg	u	u	d	DYN012	\N	Hobart	\N	u
172	\N	\N	1730	\N	yg	u	u	d	R1823	\N	Hobart (for e-transfer)	\N	u
922	2019-02-10	566	3597	\N	ke	u	u	d	MV024	\N	Hobart (for e-transfer)	\N	u
1050	\N	\N	6000	\N	cd	u	u	d	MV014B	\N	Hobart	\N	u
1769	\N	\N	1473	\N	yg	u	u	d	R4988	\N	Washington (DHL)	\N	u
1051	\N	\N	6000	\N	ho	u	u	d	MV014B	\N	Hobart	\N	u
174	\N	\N	1790	\N	yg	u	u	d	R1824	\N	Hobart (for e-transfer)	\N	u
71	2017-10-25	55	2000	1900	ho	u	u	d	V329G	\N	 	\N	u
1120	\N	\N	\N	\N	cd	u	u	d	V447J	\N	Hobart	\N	u
1118	\N	179	5000	4985	yg	u	u	d	V447J	\N	Hobart (for e-transfer)	\N	u
1368	\N	\N	6244	\N	yg	u	u	d	AOV048	\N	\N	\N	u
1122	\N	311	2100	\N	cd	u	u	d	V255AH	\N	Hobart	\N	u
952	\N	730	5000	\N	cd	u	u	d	MV028	\N	Hobart	\N	u
2166	\N	\N	4000	\N	ho	u	u	d	V252BZ	\N	Hobart	\N	u
1407	\N	509	6760	\N	ke	u	u	d	AUA064	flexbuflyg	Hobart (for e-transfer)	/mnt/disk2/aua064ke/	u
205	\N	\N	1470	\N	ke	u	u	d	R4827	\N	Hobart (for e-transfer)	\N	u
28	\N	62	1500	1591	ke	u	u	d	R4808	\N	Hobart (for e-transfer)	\N	u
593	\N	\N	1638	\N	ke	u	u	d	R4871	\N	Hobart (for e-transfer)	\N	u
40	\N	62	1700	1591	ke	u	u	d	R4810	\N	Hobart (for e-transfer)	\N	u
238	\N	\N	1690	\N	ke	u	u	d	R4829	\N	Hobart (for e-transfer)	\N	u
69	\N	62	1700	1591	ke	u	u	d	R4813	\N	Hobart (for e-transfer)	\N	u
50	\N	62	1700	1591	ke	u	u	d	R4812	\N	Hobart (for e-transfer)	\N	u
251	\N	\N	1810	\N	ke	u	u	d	R4830	\N	Hobart (for e-transfer)	\N	u
226	\N	\N	2009	\N	ke	u	u	d	R1830	\N	Hobart (for e-transfer)	\N	u
2168	\N	\N	4000	\N	cd	u	u	d	V252BZ	\N	Hobart	/mnt/rdsi/LBA/v252bzcd/	u
1775	\N	\N	\N	\N	yg	u	u	d	R4989	\N	Washington (DHL)	\N	u
1777	\N	\N	\N	\N	yg	u	u	d	R4990	\N	Washington (DHL)	\N	u
1783	\N	\N	\N	\N	yg	u	u	d	R4991	\N	Washington (DHL)	\N	u
1786	\N	\N	\N	\N	yg	u	u	d	R4992	\N	Washington (DHL)	\N	u
1788	\N	\N	\N	\N	yg	u	u	d	R4993	\N	Washington (DHL)	\N	u
1796	\N	\N	1393	\N	yg	u	u	d	R4995	\N	Washington (DHL)	\N	u
1803	\N	\N	1238	\N	yg	u	u	d	R4996	\N	Washington (DHL)	\N	u
1810	\N	\N	1349	\N	yg	u	u	d	R4998	\N	Hobart (for e-transfer)		u
1816	\N	\N	\N	\N	yg	u	u	d	R4999	\N	Washington (DHL)	\N	u
2327	\N	\N	\N	\N	ke	u	u	d	V605A	\N	Hobart	\N	u
2167	\N	67	4000	1008	yg	u	u	d	V252BZ	LBA1	Hobart	/mnt/rdsi/LBA//v252bzyg/	u
2329	\N	\N	\N	\N	ho	u	u	d	V605A	\N	Hobart	\N	u
262	\N	\N	1930	\N	ke	u	u	d	R4831	\N	Hobart (for e-transfer)	\N	u
2172	\N	230	4000	3989	yg	u	u	d	V589B	LBA1	Hobart	/mnt/rdsi/LBA/v589byg/	u
2111	\N	\N	\N	\N	ho	u	u	d	V456E	\N	Hobart	\N	u
2169	\N	\N	4000	\N	ke	u	u	d	V589B	\N	Hobart	\N	u
2186	\N	642	6130	5734	yg	u	u	d	AUM035	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum035yg/	u
2325	\N	\N	\N	\N	ho	u	u	d	V606A	\N	Hobart	\N	u
92	\N	\N	1800	\N	yg	u	u	d	R1819	\N	Hobart (for e-transfer)	\N	u
286	\N	153	\N	3779	cd	u	u	d	MV012	\N	Hobart (for e-transfer)	\N	u
710	\N	\N	8192	\N	yg	u	u	d	CRD101	\N	Hobart (for e-transfer)	\N	u
667	\N	393	5018	4614	yg	u	u	d	AOV032	\N	Hobart (for e-transfer)	\N	u
460	\N	221	\N	1210	yg	u	u	d	MV020	\N	Hobart (for e-transfer)	\N	u
400	\N	196	\N	4933	cd	u	u	d	MV014	\N	Hobart (for e-transfer)	\N	u
684	\N	\N	3420	\N	yg	u	u	d	R1884	\N	Hobart (for e-transfer)	\N	u
35	\N	62	3400	1591	yg	u	u	d	R1810	\N	Hobart (for e-transfer)	\N	u
1723	\N	\N	\N	\N	cd	u	u	d	V252BX	\N	Hobart	/mnt/rdsi/LBA/v252bxcd	u
39	\N	382	1900	1729	yg	u	u	d	R1811	\N	Hobart (for e-transfer)	\N	u
81	\N	\N	2000	\N	yg	u	u	d	R1815	\N	Hobart (for e-transfer)	\N	u
322	\N	\N	1780	\N	ke	u	u	d	R4832	\N	Hobart (for e-transfer)	\N	u
273	\N	\N	1940	\N	yg	u	u	d	R1832	\N	Hobart (for e-transfer)	\N	u
1722	\N	\N	\N	\N	ho	u	u	d	V252BX	\N	Hobart	/mnt/rdsi/LBA//v252bxho	u
799	\N	\N	6451	\N	ho	u	u	d	AOV037	\N	 	\N	u
2112	\N	\N	\N	\N	ke	u	u	d	V456E	\N	Hobart	\N	u
4	\N	62	1600	1591	ke	u	u	d	R4806	\N	Hobart (for e-transfer)	\N	u
898	\N	\N	1000	\N	cd	u	u	d	VX027A	\N	Hobart	\N	u
879	2019-01-31	771	4906	\N	yg	u	u	d	MV023	\N	Hobart (for e-transfer)	\N	u
800	\N	\N	1900	\N	yg	u	u	d	R4903	\N	Washington (DHL)	\N	u
1721	\N	168	\N	2793	yg	u	u	d	V252BX	LBA1	Hobart	/mnt/rdsi/LBA/v252bxyg/	u
1009	\N	\N	1604	\N	ke	u	u	d	R4906	\N	Hobart (for e-transfer)	\N	u
1004	\N	\N	1900	\N	ke	u	u	d	R4901	\N	Hobart (for e-transfer)	\N	u
1005	\N	\N	1900	\N	ke	u	u	d	R4902	\N	Hobart (for e-transfer)	\N	u
1863	\N	157	8600	9402	ho	u	u	d	CRD113	AUSTRAL1	None	/mnt/rdsi/AUSTRAL//crd113ho/	u
1008	\N	\N	1900	\N	ke	u	u	d	R4905	\N	Hobart (for e-transfer)	\N	u
1140	\N	\N	\N	\N	yg	u	u	d	R4930	\N	Washington (DHL)	\N	u
1270	\N	224	6517	6043	ho	u	u	d	AOV043	AUSTRAL	Hobart (for e-transfer)	\N	u
1142	\N	\N	1141	\N	yg	u	u	d	R4931	\N	Washington (DHL)	\N	u
168	\N	407	\N	4429	ke	u	u	d	AUA033	AUSTRAL	Hobart (for e-transfer)	\N	u
933	2019-03-16	718	5900	4192	ke	u	u	d	MV026	AUSTRAL	Hobart (for e-transfer)	\N	u
913	\N	66	4934	4600	ke	u	u	d	GM074B	LBA	Hobart (for e-transfer)	\N	u
1065	\N	196	1060	1033	ke	u	u	d	OHG120	IVS	Hobart (for e-transfer)	/mnt/rd1/IVS/ohg120ke	u
693	\N	\N	1685	\N	yg	u	u	d	R4885	\N	Washington (DHL)	\N	u
723	\N	\N	1726	\N	yg	u	u	d	R4888	\N	Washington (DHL)	\N	u
703	\N	\N	\N	\N	yg	u	u	d	R4886	\N	Washington (DHL)	\N	u
740	\N	\N	\N	\N	yg	u	u	d	R4890	\N	Washington (DHL)	\N	u
1269	\N	\N	6000	\N	ho	u	u	d	RD2001	\N	Hobart (for e-transfer)	/mnt/rd1/IVS/rd2001ho	u
1147	\N	\N	1174	\N	yg	u	u	d	R4932	\N	Washington (DHL)	\N	u
1149	\N	\N	1375	\N	yg	u	u	d	R4933	\N	Washington (DHL)	\N	u
342	\N	155	\N	8936	ke	u	u	d	AUA038	AUSTRAL	Hobart (for e-transfer)	\N	u
1176	\N	\N	\N	\N	yg	u	u	d	R4944	\N	Washington (DHL)	\N	u
2171	\N	\N	4000	\N	cd	u	u	d	V589B	\N	Hobart	/mnt/rdsi/LBA/v589bcd	u
2286	\N	34	\N	4075	ti	u	u	d	V252BZ	LBA1	\N	/mnt/rdsi/LBA//v252bzti/	u
2113	\N	\N	\N	\N	cd	u	u	d	V456E	\N	Hobart	/mnt/rdsi/LBA/v456ecd	u
1892	\N	\N	\N	\N	yg	u	u	d	R41017	\N	Hobart (for e-transfer)	\N	u
1895	\N	794	\N	5050	yg	u	u	d	AUA080	AUSTRAL1	Hobart	/mnt/rdsi/AUSTRAL//aua080yg/	u
2189	\N	594	6660	6452	yg	u	u	d	AUM036	AUSTRAL1	\N	/mnt/rdsi/AUSTRAL//aum036yg/	u
2794	\N	\N	300	\N	yg	u	p	n	Z22038	\N	Hobart	\N	p
2793	\N	\N	300	\N	hb	u	p	n	Z22038	\N	Hobart	\N	p
2891	\N	\N	300	\N	yg	p	p	n	Z22094	\N	Hobart	\N	p
2943	\N	\N	300	\N	hb	p	p	n	Z22143	\N	\N	\N	p
2917	\N	\N	300	\N	yg	p	p	n	Z22276	\N	Hobart	\N	p
2969	\N	\N	300	\N	hb	p	p	n	Z22325	\N	\N	\N	p
\.


                                                                                                   2100.dat                                                                                            0000600 0004000 0002000 00000006574 14220762624 0014255 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	73	PKS+0034
1476	2537	HOB+0104
1522	2556	HOB+0033
1527	2568	HAY-0050
1532	2577	HOB+1008
1536	2578	SSDYG-02
1253	1835	HOB+0128
1256	1834	EXTYG-07
1540	2977	HART+104
1544	2585	IAA-0040
1550	2587	USN-0020
1551	2587	SSDYG-04
824	1426	flxbffke
825	1427	flxbffhb
826	1428	flxbffcd
1493	2787	HOB+0100
1552	2587	BKG-0049
1501	2766	HOB+0095
1507	2552	HOB+0033
1512	2771	WW+21030
1520	2886	HOB+0041
866	1457	flxbffhb
68	450	HOB+1001
1074	1999	flxbffcd
197	661	HOB+0097
81	510	HOB+0124
1080	2006	flxbffhb
882	1489	HOB+1012
1104	2013	JPL+0417
1110	2020	flxbffcd
1111	2021	flxbffke
1112	2022	flxbffhb
1117	2026	flxbffcd
1118	2027	flxbffke
1119	2028	flxbffhb
1126	2035	flxbffcd
1127	2036	flxbffke
1128	2037	flxbffhb
580	1071	EXTCD-06
1174	1785	JOD-0024
1211	1809	USN-0093
1244	2228	EXTYG-08
1523	2560	USN-0020
1477	2765	HOB+0104
1533	2573	HOB+1008
822	1421	GSFC+011
1541	2579	HART+104
1545	2585	SSDYG-05
1553	2588	GSFC+022
827	1429	flxbffke
828	1430	flxbffhb
1554	2588	SSDYG-04
1555	2588	HAY-0050
829	1431	flxbffcd
1498	2779	HOB+0099
1502	2548	HOB+0095
1042	1681	NYAL-013
1045	1729	HART+101
1508	2556	HOB+1003
1513	2776	WW+21030
1519	2786	WW+21030
1521	2781	WW+21030
1072	1996	flxbffke
1075	2000	flxbffke
1078	2003	flxbffcd
1081	2007	flxbffcd
1093	2011	HOB+0103
338	726	JPL+0418
1105	2014	flxbffcd
1106	2015	flxbffke
1113	2023	flxbffcd
1115	2025	flxbffhb
1120	2029	flxbffcd
1121	2030	flxbffke
1122	2031	flxbffhb
1129	2038	flxbffcd
1130	2039	flxbffke
1131	2040	flxbffhb
1136	1761	HART-015
1148	2049	HOB+0090
533	1056	USN-0201
1194	1801	BKG+0137
1215	2178	HOB+0127
1218	2181	GSFC+039
597	836	HOB+0057
599	1077	EXTCD-01
1242	2270	GSFC+039
1245	2230	EXTYG-08
818	1414	flxbffhb
819	1415	flxbffke
1525	2563	HOB+0067
1529	2568	SSDYG-04
1534	2569	GSFC+022
820	1416	flxbffcd
1542	2583	HOB+0064
1546	2586	SSDYG-03
1547	2586	HAY-0050
1254	2232	EXTYG-07
1556	2590	SSDYG-04
1557	2590	HAY-0050
1483	2534	HOB+0100
1276	2238	HAY-0047
778	1390	USN+0224
779	1391	USN+0224
780	1392	USN+0224
781	1393	USN+0224
1499	2784	HOB+0099
1504	2549	HAY-0050
1509	2557	IAA-0040
1510	2557	SSDYG-04
796	1402	flxbffke
797	1403	flxbffhb
798	1404	flxbffcd
1300	2341	GSFC+041
867	1458	flxbffcd
895	1208	BKG-0067
1326	2415	USN-0147
925	1528	flxbffhb
1348	2462	GSFC+042
938	1534	flxbffhb
949	1535	MAT+0003
959	1232	HOB+0098
960	1233	HOB+0098
961	1234	HOB+1012
1375	1909	HOB+0072
975	1649	HOB+0132
1389	1916	HOB+0055
991	1633	HOB+0047
1005	1254	HOB+0110
1009	1712	HOB+0110
1526	2567	HOB+0067
1530	2888	GSFC+022
1531	2888	SSDYG-03
1535	2578	HOB+0041
1014	1683	HOB+0110
1484	2532	HOB+0112
1543	2579	SSDYG-01
1548	2890	SSDYG-03
1549	2890	HAY-0050
1496	2541	HOB+0092
1263	2294	GSFC+042
1500	2547	HOB+0095
1506	2769	HOB+0092
1511	2774	HOB+0092
1070	1994	flxbffcd
1073	1998	flxbffhb
1076	2001	flxbffke
1082	2009	HOB+1012
1107	2017	flxbffcd
1108	2018	flxbffke
1109	2019	flxbffhb
1123	2032	flxbffcd
1124	2033	flxbffke
1125	2034	flxbffhb
1132	2041	flxbffcd
1133	2042	flxbffke
1134	2043	flxbffhb
1280	1849	HOB+0039
1140	1762	MAT+0004
1284	1849	OSOD+121
1179	2122	GSFC+039
1188	2160	MPI+0817
1191	2115	MPI+0817
1219	2182	GSFC+039
1225	2214	USN-0093
1307	1866	MPI-0419
1331	1887	HOB+0114
1415	2207	HOB+0113
1419	2479	flxbf2hb
1425	1937	HOB+1004
1426	1939	HOB+1004
1437	1942	HOB+0133
1444	1951	HOB+1013
1451	2487	HOB+0133
1452	2493	HOB+0133
1456	2487	HOB+0130
1457	2497	HOB+0130
1458	2501	HOB+0130
1459	2511	WW+21030
1460	2512	WW+21030
1461	2505	HOB+0130
1463	2516	HOB+0117
1467	2509	HOB+0130
1470	2529	HOB+0100
\.


                                                                                                                                    2094.dat                                                                                            0000600 0004000 0002000 00000032542 14220762624 0014263 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        NYAL-013	1480	1229	ho	2021-01-19	URV76455	f
GSFC+015	8000	3962	wn	2020-02-28	6421351362	f
PKS+0034	8000	2000	ho	2018-10-11	\N	f
JOD-0036	3200	3200	ke	2018-11-02	\N	f
JPL+0417	16000	1369	ho	2021-02-15	\N	f
HOB+1001	8000	747	ho	2018-11-13	\N	f
HOB+0095	16000	5541	ho	2022-03-02	2647035694	f
HOB+1003	8000	1269	ho	2022-03-21	6524853112	f
HOB+0105	16000	6834	ho	2019-06-03	4708013391	f
HOB+0124	32000	2000	ho	2018-11-20	\N	f
HOB+0039	16000	8831	ho	2021-07-28	FBYZ50000046	f
HAY-0047	6000	4738	ff	2021-09-21	YG Graveyard	f
NRAO-199	2400	1916	wn	2019-06-03	5523632623	f
HOB+0068	8000	2597	ho	2021-08-20	7101189900	f
HOB+0130	32000	9745	ho	2022-01-12	FBYZ50000100PRM00004	f
GSFC+024	8000	3399	ho	2020-06-02	DHL1697254204	f
HOB+0043	6000	4951	ho	2021-03-04	3146702716	f
NRAO-180	2400	2400	wn	2020-10-16	5751329905	f
USN-0070	4000	4000	wn	2020-02-12	9785092984	f
HOB+0112	16000	6149	ho	2022-02-03	5055221824	f
MAT+0008	8000	1629	ho	2021-05-14	5327017275	f
IPA-0028	2000	1600	wn	2020-06-04	6389381390	f
USN-0036	4000	4000	ke	2019-06-08	URV76354	f
CURT+102	6000	274	ho	2021-01-28	5340916346	f
HAY-0021	960	960	ho	2021-04-22	8623527371	f
HOB+0098	16000	4348	ho	2021-04-29	9301029216	f
HOB+0123	32000	32002	ho	2022-01-20	FBYZ50000022	f
NRCAN-01	2000	2000	wn	2020-04-21	6775489243	f
NTO-0023	3200	3200	wn	2019-08-11	2917247491	f
HOB+0096	16000	16001	ho	2021-04-22	URV76316	f
HOB+0133	16000	1940	ho	2021-12-23	9018008440	f
HOB+0102	16000	16001	ho	2022-01-20	6465353274	f
OSOD-031	1317	1317	wn	2021-01-29	1076051605	f
HOB+0097	16000	9854	ho	2019-02-26	\N	f
GSFC+017	8000	8000	ho	2022-01-20	URV76366	f
MPI-0419	3200	486	ho	2021-08-12	5833440852	f
HOB+0120	32000	32002	ho	2022-01-20	8225236585	f
HOB+1005	16000	16001	ho	2022-01-20	\N	f
HOB+0119	32000	14968	ho	2021-10-26	4536718104	f
HOB+0067	8000	2000	ho	2022-03-22	5468278900	f
PKS+0020	8000	8000	ho	2019-11-01	\N	f
HOB+0035	6000	3327	ho	2020-02-12	3898385190	f
HOB+0128	32000	21862	ho	2021-06-11	lost by startrack	f
SAO+0002	8000	389	ho	2020-07-29	\N	f
JOD-0034	3200	2776	wn	2019-05-10	5236861276	f
GSFC+011	8000	517	ho	2021-07-13	8992662237	f
USN-0137	4000	4000	wn	2019-11-05	3504032571	f
HOB+0015	6000	2115	ho	2020-02-14	URV76351	f
HOB+0107	16000	6126	ho	2021-06-03	2906516502	f
HOB+0086	8000	4594	ho	2020-11-30	URV76449	f
UVLBI-06	2400	1246	ho	2019-05-23	URV76332	f
HOB+0072	8000	895	ho	2021-11-02	FBYZ50000101	f
MPI-0510	4000	4000	wn	2021-04-20	1743859025	f
GSFC+012	8000	8000	ho	2022-01-20	1390111100	f
HOB+0111	16000	1008	ho	2020-08-06	2512190671	f
MPI-0405	3200	3200	wn	2019-05-10	1529879433	f
HOB+0117	32000	7641	ho	2022-02-03	3866973154	f
MPI+0817	8000	1696	ho	2021-04-29	5543121975	f
HOB+1011	16000	1107	ho	2021-02-01	\N	f
HOB+1002	16000	16001	ho	2021-03-05	\N	f
HOB+1007	16000	16001	ho	2022-01-20	1453353694	f
HOB+0055	8000	2316	ho	2021-11-08	9232874803	f
HOB+0022	6000	32	ho	2019-05-08	1539360712	f
HART-015	1480	350	ho	2021-03-12	7966411762	f
HOB+1010	16000	0	ho	2021-01-07	1696548700	f
HOB+1009	16000	15999	ff	2020-02-18	\N	f
HOB+0093	16000	1712	ho	2020-05-12	3374255172	f
NRAO+257	6000	5999	ff	2020-02-18	\N	f
OSOD+121	8000	1132	ho	2021-07-23	4288779876	f
HOB+0057	8000	976	ho	2019-10-02	9281246553	f
HOB+0114	16000	8321	ho	2021-10-01	4003917330	f
HOB+0094	16000	1973	ho	2020-10-26	6965749313	f
HOB+0025	6000	6000	ho	2022-01-20	2986148970	f
GFSC+022	8000	8000	yg	2022-03-04	\N	f
OSOD-005	2000	1571	wn	2019-10-30	6674530870	f
BKG-0015	1480	433	ho	2020-05-06	1172927825	f
HART-032	1310	189	ho	2019-05-24	2585925101	f
HOB+1006	16000	16001	ho	2022-01-20	7030577816	f
USN-0147	4000	1399	ho	2021-09-26	FBYZ50000091	f
HART+101	8000	6965	ho	2020-12-17	URV76461	f
USN-0042	2000	1663	wn	2020-01-13	7379713014	f
HOB+0110	16000	1829	ho	2021-01-07	3442471535	f
HOB+0029	6000	6000	ff	2021-01-29	URV76399	f
USN-0097	4000	4000	ho	2022-01-20	5871877804	f
HOB+0115	16000	10458	ho	2021-11-21	1922045344	f
HOB+0041	6000	6000	yg	2022-02-24	FBYZ50000142	f
GSFC+022	8000	8000	yg	2022-03-08	FBYZ50000144	f
SHAO-023	2000	1372	wn	2019-10-30	not recorded	f
HOB+0064	8000	8000	ho	2022-03-24	6967477296	t
HOB+0131	32000	32002	ho	2022-01-20	URV76462	f
CURT+101	6000	6000	wn	2021-07-12	6000974280	f
USN-0150	4000	4000	wn	2020-01-03	9623365161	f
MPI-0153	2000	1826	wn	2020-04-16	5537746885	f
HOB+1000	8000	3693	ho	2021-01-26	4059316623	f
HOB+0127	32000	5763	ho	2021-10-01	5158026473	f
HOB+0034	6000	13	ho	2020-06-30	\N	f
MAT+0004	8000	3114	ho	2021-03-15	\N	f
USN+0220	8000	2657	ho	2021-12-17	6556633193	f
HOB+0059	8000	1580	ho	2021-11-24	2404756642	f
HOB+0104	16000	1150	ho	2022-02-17	8746881021	f
UAO-0018	2000	2000	wn	2019-05-10	\N	f
USN-0063	4000	4000	ff	\N	\N	f
HOB+1012	16000	2522	ho	2021-01-22	2229766534	f
JIVE-020	2000	1682	wn	2019-05-10	6562749174	f
USN-0173	2000	2000	wn	2019-03-29	1155707604	f
HAY-0050	6000	6000	yg	2022-02-10	FBYZ50000137	f
BKG-0039	2000	2000	wn	2019-03-29	6989432085	f
HOB+0121	32000	32002	ho	2022-01-19	4243081485	f
PKS+0011	8000	510	ho	2018-12-15	\N	f
BKG-0037	2000	2000	wn	2019-03-29	9248922421	f
NRAO+144	2000	2000	wn	2019-03-29	\N	f
USN-0182	2000	462	ho	2019-11-11	8433070122	f
OSOD-114	2000	2000	wn	2019-03-29	2773046522	f
HOB+0076	8000	8000	ff	2020-02-18	\N	f
USN-0049	4000	4000	wn	2019-03-29	7188294190	f
HOB+0126	32000	22792	ho	2020-08-23	5398312124	f
NRAO-175	2400	2400	ke	2019-04-23	Mick	f
USN-0102	6000	6000	yg	2022-01-25	FBYZ50000129	f
HOB+0101	16000	2459	ho	2021-05-25	4166424275	f
HOB+0016	6000	6000	wn	2022-03-01	5144068731	f
USN-0194	2000	2000	wn	2021-07-12	9764767121	f
TR-00011	2000	1034	ho	2020-01-22	7507038696	f
TR-00026	2000	2000	wn	2020-09-15	8307088834	f
USN-0201	2000	1975	ho	2019-10-30	4707264870	f
JIVE-064	2000	2000	wn	2020-07-09	9300238555	f
OSOD-117	2000	1773	wn	2019-06-03	4649863352	f
HOB+1004	16000	2615	ho	2021-12-15	1128773354	f
EXTKE-01	8000	8000	ke	2020-07-03	Express Post	f
USN+0224	8000	2053	ho	2020-04-22	4963787135	f
HAY-0041	960	960	ho	2020-02-19	\N	f
HART+104	8000	8000	yg	2022-01-25	FBYZ50000129	f
UVLBI-30	2000	2000	wn	2019-03-29	1262585693	f
BKG+0142	4000	4000	wn	2019-03-29	4511259701	f
HOB+0122	32000	6382	ho	2019-05-06	1102406012	f
IAA-0028	2000	2000	wn	2019-03-29	5904322454	f
JPL+0418	16000	2228	ho	2019-05-12	\N	f
UAO-0101	4000	4000	ff	2020-02-18	URV76361	f
flxbffhb	277044	69261	ho	2020-03-25	\N	f
EXTKE-04	5500	5500	ke	2020-07-01	Express Post	f
EXTYG-03	8000	8000	cd	2022-03-01	\N	f
SHAO-017	2000	1999	wn	2019-08-11	3146487945	f
HOB+0118	32000	14204	ho	2021-11-28	1668466866	f
EXTCD-01	8000	8000	cd	2021-01-29	express	f
HAY-0010	2000	2000	wn	2020-11-04	4220711305	f
EXTYG-01	7300	7300	ho	2022-03-01	8803630998	f
MED-0027	3200	3019	wn	2020-03-17	8235468603	f
MED-0026	2000	1505	wn	2019-12-12	9350820404	f
USN-0020	2000	1999	yg	2021-09-01	FBYZ50000091	f
WSRT-041	2000	1451	wn	2020-08-06	1847303662	f
NRAO-144	2000	2000	wn	2019-07-22	4595362892	f
USN-0094	4000	4000	wn	2020-03-17	7500351552	f
HOB+0106	16000	5212	ho	2021-08-02	5845516784	f
HOB+0051	6000	1090	ho	2019-04-13	\N	f
USN-0017	4000	4000	ke	2019-06-08	URV76354	f
IPA-0018	2000	1171	wn	2019-07-04	7419308816	f
NRAO-145	2000	2000	wn	2020-06-04	9946740646	f
HAY-0144	4000	4000	ke	2019-07-26	URV76371	f
NRAO-108	2000	2000	wn	2019-06-17	4887395450	f
USN-0064	2000	1535	wn	2019-12-12	9033420406	f
USN-0005	2000	883	ho	2020-06-02	7663703751	f
UVLBI-36	2000	1596	wn	2019-10-30	6674673655	f
HAY-0030	2000	779	wn	2020-04-16	4902236861	f
BKG+0137	2000	0	ho	2021-05-11	9566530385	f
EXTYG-06	3700	3700	ho	2022-03-01	\N	f
USN-0179	2000	1730	wn	2019-05-10	3891350131	f
EXTCD-02	6000	6000	cd	2020-06-04	express	f
EXTCD-05	2000	2000	ff	2020-05-11	\N	f
USN-0198	2000	2000	wn	2019-03-29	\N	f
USN-0174	2000	2000	wn	2019-03-29	\N	f
OSOD+050	2000	2000	wn	2019-03-29	\N	f
IAA-0031	2000	2000	wn	2019-03-29	\N	f
MED-0032	3200	3200	wn	2019-03-29	2579112093	f
JOD-0041	3200	3200	wn	2019-03-29	2579061833	f
JOD-0019	2000	2000	wn	2020-01-03	4062971614	f
BKG-0049	2000	2000	yg	2021-07-16	FBYZ50000077	f
EXTCD-03	6000	6000	cd	2019-09-17	URV76390	f
TR-00020	2000	2000	wn	2021-07-12	4940686100	f
USN-0175	2000	1697	wn	2020-06-04	1584222220	f
HOB+0069	8000	1138	ho	2020-03-13	2884714792	f
HOB+0021	6000	3390	wn	2020-02-28	6421531362	f
IAA-0040	2000	1717	yg	2022-01-20	FBYZ50000071	f
NRAO-172	2400	2400	wn	2020-07-09	\N	f
UAO-0016	2000	2000	wn	2020-06-23	5752780390	f
HAY-0001	960	960	ff	\N	\N	f
USN-0181	2000	2000	wn	2020-07-09	\N	f
HOB+0079	8000	8000	ho	2020-04-16	2928687716	f
USN-0192	2000	1442	wn	2020-03-17	5196487122	f
EXTKE-06	6000	6000	ke	2020-07-03	Express Post	f
flxbflyg	273315	273315	ho	\N	\N	f
OAN+0104	8000	7247	ho	2021-07-13	2756280623	f
USN-0095	4000	4000	wn	2020-10-16	4149039845	f
HOB+0042	16000	10598	ho	2021-10-14	4645680093	f
EXTCD-04	2000	2000	cd	2020-11-24	\N	f
EXTCD-07	1000	1000	cd	2020-06-04	express	f
flxbffke	293287	96785	ke	2020-05-26	\N	f
HOB+0109	16000	6042	ho	2020-06-02	3144867530	f
UAO-0014	2000	2000	wn	2021-07-12	7143736585	f
EXTYG-08	7300	7300	ho	2022-03-01	01004850048799590993	f
JPL-0060	4000	4000	td	2020-06-23	URV76400	f
HOB+0113	16000	6766	ho	2021-12-23	2207349270	f
JPL-0070	4000	4000	td	2020-06-23	URV76395	f
USN-0098	2000	1543	wn	2020-09-15	6102247045	f
HAY-0062	4000	4000	ff	2021-09-21	YG Graveyard	f
HAY-0056	6000	6000	ff	\N	\N	f
BKG-0041	2000	2000	wn	2020-09-15	2026408543	f
USN-0177	2000	2000	wn	2020-09-15	8397129661	f
USN-0130	4000	4000	ke	2019-08-07	URV76373	f
MED-0040	2560	2560	wn	2020-09-15	4064548412	f
EXTYG-07	7300	7300	ho	2022-03-01	00010048500487995709	f
USN-0193	2000	2000	wn	2020-02-28	6596308725	f
NOT-0001	960	960	ke	2019-05-07	URV76346	f
SHVL-012	2000	1588	wn	2019-06-17	6013389745	f
EXTKE-10	7300	7300	ke	2020-06-18	Express Post	f
WSRT-033	2000	2000	wn	2019-06-17	2347396181	f
HOB+0033	6000	461	ho	2022-03-02	FBYZ50000129	f
USN-0171	2000	2000	wn	2020-07-30	5507100734	f
USN-0062	4000	4000	ke	2019-09-13	URV76392	f
HAY-0028	960	960	ke	2019-05-17	URV76349	f
MED-0038	3200	3200	ke	2019-05-17	URV76349	f
BKG+0141	4000	3226	ho	2020-01-08	3408111976	f
HOB+0090	8000	3968	ho	2021-03-02	URV76449	f
EXTKE-03	5500	5500	ho	2020-08-17	Express Post	f
XYZ-8000	8000	1629	ho	\N	\N	f
TR-00022	2000	2000	ho	2022-01-20	4777623211	f
HOB+0125	32000	32002	ho	2022-01-20	8391905874	f
NRCAN-05	2000	2000	wn	2020-06-23	2657203640	f
HOB+0116	16000	9298	ho	2021-10-11	587187780403	f
BKG-0043	2000	2000	ke	\N	\N	f
BKG-0065	2000	2000	ke	\N	\N	f
HOB+0099	16000	4787	ho	2022-02-28	FBYZ50000137	f
IAA-0064	2000	2000	wn	2021-02-04	3061568506	f
CURT-102	2400	1587	wn	2019-07-04	7446724401	f
HOB+0092	8000	2200	ho	2022-02-24	6764273681	f
BKG-0045	2000	2000	wn	2020-06-23	\N	f
HOB+0056	8000	8000	ho	2022-01-20	3078586453	f
JPL-0019	2000	2000	td	2020-06-23	URV76319	f
NYAL-019	2000	2000	wn	2020-02-11	2246689362	f
HOB+0044	6000	6000	wn	2020-03-23	1382157232	f
BKG-0067	2000	1052	ho	2020-11-02	\N	f
USN-0131	4000	3852	wn	2019-10-30	????	f
OSOD-116	2000	1526	wn	2019-10-30	1113606690	f
JPL+0375	16000	8299	ho	2021-04-26	\N	f
BKG-0047	2000	2000	wn	2020-11-04	9196181481	f
WSRT-058	2000	2000	wn	2019-11-05	1576464971	f
OAN+0103	6000	6000	ff	2020-02-18	\N	f
UVLBI+83	6000	3997	ff	2020-02-18	\N	f
flxbffcd	84550	1691	cd	2020-03-25	\N	f
USN-0072	6000	6000	ff	\N	\N	f
flxbflke	224841	92185	ho	2020-03-25	\N	f
flxbffyg	288983	286094	yg	2020-03-25	\N	f
MAT+0003	8000	1846	ho	2020-08-26	4050281410	f
OSOD-351	4000	4000	ff	2020-02-18	\N	f
BKG-0069	1600	2400	ff	2021-09-21	YG Graveyard	f
JPL+0416	16000	16001	ho	\N	\N	f
BKG+0138	2000	1400	wn	2021-07-12	1375189244	f
EXTCD-06	2000	2000	cd	2020-06-04	express	f
SHAO-024	2000	2000	wn	2020-07-21	5555979634	f
EXTYG-04	3700	3700	ho	2022-03-01	\N	f
EXTKE-05	7300	7300	ke	2020-07-01	Express Post	f
EXTKE-02	7300	7300	ke	2020-07-01	Express Post	f
SSDYG-03	4000	4000	yg	2022-03-26	50060 60991	f
BKG-0040	2000	2000	ho	2020-11-24	1006019626	f
EXTKE-09	7300	7300	ho	2022-03-01	Express Post	f
HAY-0055	6000	4500	ff	2021-09-26	YG Graveyard	f
EXTKE-07	6000	6000	ho	2021-06-24	Express Post	f
SSDYG-01	4000	4000	ho	2022-03-24	1006060999	t
NRAO-177	2400	2400	ho	2022-01-20	6848630622	f
NAIC-003	2000	2000	wn	2020-09-07	1816388792	f
TXKED-12	48000	48000	ho	2020-09-23	\N	f
HOB+0047	6000	236	ho	2020-11-11	3612298222	f
NTO-0015	3200	3200	wn	2021-07-12	4357959815	f
BKG-0026	1480	1480	wn	2020-09-30	5503446605	f
USN-0069	2000	2000	wn	2020-09-30	5296834745	f
HOB+0108	16000	0	ho	2021-02-16	3448760033	f
HOB+0103	16000	536	ho	2021-02-02	URV76416	f
EXTYG-05	3700	3700	ho	2022-03-01	\N	f
USN-0093	4000	1362	ho	2021-05-25	3277304586	f
HOB+0132	16000	0	ho	2020-11-30	URV76412	f
TXKEA-06	24000	24000	ke	2020-10-26	\N	f
JPL+0419	16000	16000	td	2020-10-26	URV76412	f
USN-0142	2000	2000	wn	2021-07-12	2104919983	f
JIVE-057	2000	2000	wn	2021-04-20	6988793335	f
EXTKE-08	6000	6000	ho	2022-03-01	Express Post	f
JOD-0024	2000	1068	ho	2021-04-12	4536891704	f
GSFC+041	16000	16001	ho	2022-01-21	\N	f
HOB+1013	16000	1900	ho	2022-01-13	9879772604	f
GSFC+042	16000	13207	td	2022-03-01	FBYZ50000105	f
EXTYG-02	3700	3700	yg	2021-07-01	express post	f
HOB+0129	32000	32002	ho	2022-01-20	URV76403	f
EXTYG-09	4000	4000	ff	2021-07-08	\N	f
EXTYG-10	4000	4000	ff	2021-07-08	\N	f
EXTYG-11	4000	4000	ff	2021-07-08	\N	f
EXTYG-12	4000	4000	ff	2021-07-08	\N	f
OAN+0006	4000	4000	yg	2021-09-23	\N	f
ssdyg-01	4000	4000	ff	2021-11-03	\N	f
WW+21030	16000	7345	ho	2022-03-01	URV76461	f
USN-0197	2000	2000	yg	2021-09-01	FBYZ50000091	f
HOB+1008	16000	4220	ho	2022-03-28	6991079336	f
GSFC+039	16000	3456	td	2022-03-01	FBYZ50000113	f
GSFC+040	16000	14158	td	2022-03-01	FBYZ50000122	f
UVLBI-07	2400	2400	wn	2021-09-28	6064251944	f
SSDYG-02	4000	4000	ho	2022-03-20	0006060991	t
flxbf2hb	300000	300000	ho	2021-11-25	\N	f
flxbflcd	300000	10000	ho	2021-11-25	\N	f
HOB+0100	16000	1949	ho	2022-02-11	5055221824	f
ssdyg-02	4000	4000	ff	2022-03-01	\N	f
SSDYG-04	4000	4000	yg	2022-03-22	90060 60999	f
SSDYG-05	4	4	ho	2022-03-26	20060 60996	t
\.


                                                                                                                                                              2095.dat                                                                                            0000600 0004000 0002000 00000001420 14220762624 0014253 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        bfg16	20	131.217.63.209	/exports/bfg_internal16/	\N
AUSTRAL	747	131.217.63.248	/rd1/auscope/PRIVATE/AUSTRAL	\N
godzilla8	2	131.217.63.208	/exports/godzilla_internal8	\N
godzilla16	2	131.217.63.208	/exports/godzilla_internal16	\N
cornucopia	1	131.217.63.182	/exports/cornucopia_internal	\N
astro	100	131.217.63.248	/rd1/auscope/PRIVATE/astro	\N
IVS	200	131.217.63.248	/rd1/auscope/PRIVATE/IVS/	\N
LBA	80			\N
flexbuf3	200			\N
AUSTRAL1	50			\N
flxbflyg	\N	131.217.63.136	\N	273
bfg8	7	131.217.63.209	/exports/bfg_internal8/	\N
colossos	16	131.217.63.2	/exports/colossos	\N
flexbuf1	9	131.217.63.173	/mnt/disk1	\N
flxbffcd	1	131.217.61.145	\N	84
flxbflke	92	131.217.63.130	\N	224
flxbffke	96	131.217.61.31	\N	293
flxbffhb	69	131.217.63.173	\N	277
flxbffyg	286	131.217.61.85	\N	288
\.


                                                                                                                                                                                                                                                2092.dat                                                                                            0000600 0004000 0002000 00000000432 14220762624 0014252 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	bonn	195.37.231.36	2636	200	400	BONN
5	san01	198.116.24.178	46225	137	500	WASH
6	haystack	192.52.62.234	52100	9	400	HAYS
4	rzbonn	193.23.254.17	2637	84	500	BONN
7	cass-01-per	150.229.194.20	40050	2	500	CASS
8	202.127.24.97			5	300	SHAO
9	JIVE	192.42.120.46	4009	450	800	JIVE
\.


                                                                                                                                                                                                                                      2093.dat                                                                                            0000600 0004000 0002000 00000000041 14220762624 0014247 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        r
lba
cont
aus
ivs
rivs
spi
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               2088.dat                                                                                            0000600 0004000 0002000 00000540614 14220762624 0014272 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	2017-08-09 05:39:44.350223+00	1	data	1	[{"added": {}}]	10	1
2	2017-08-09 05:39:47.657705+00	1	BONN	1	[{"added": {}}]	7	1
3	2017-08-09 05:39:57.671777+00	1	r	1	[{"added": {}}]	11	1
4	2017-08-09 05:40:50.319697+00	1	HOB+0098	1	[{"added": {}}]	12	1
5	2017-08-09 05:40:53.157882+00	1	r1801	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "r1801ke"}}]	13	1
6	2017-08-15 03:07:07.744798+00	1	r1801	2	[{"deleted": {"name": "experiment instance", "object": "r1801ke"}}]	13	1
7	2017-08-25 01:09:01.862461+00	R6799	R6799	3		13	1
8	2017-09-04 02:49:05.579358+00	WASH	WASH	1	[{"added": {}}]	7	1
9	2017-09-04 02:50:28.081527+00	1	IVS	1	[{"added": {}}]	8	1
10	2017-09-04 02:50:47.878091+00	2	IVS	1	[{"added": {}}]	8	1
11	2017-09-04 02:51:04.283071+00	R4808	R4808	2	[{"changed": {"fields": ["correlator", "schedate"]}}, {"changed": {"object": "R4808ke", "name": "experiment instance", "fields": ["rec_size", "module", "raid"]}}, {"changed": {"object": "R4808yg", "name": "experiment instance", "fields": ["rec_size", "module", "raid"]}}]	13	1
12	2017-09-05 02:23:33.02444+00	BONN	BONN	1	[{"added": {}}]	7	1
13	2017-09-05 02:23:47.604055+00	HAYS	HAYS	1	[{"added": {}}]	7	1
14	2017-09-05 02:23:58.522932+00	SHAO	SHAO	1	[{"added": {}}]	7	1
15	2017-09-05 02:24:07.924661+00	VLBA	VLBA	1	[{"added": {}}]	7	1
16	2017-09-05 02:24:15.776667+00	GSI	GSI	1	[{"added": {}}]	7	1
17	2017-09-05 02:24:21.449835+00	VIEN	VIEN	1	[{"added": {}}]	7	1
18	2017-09-05 02:24:50.118806+00	R1802	R1802	2	[{"changed": {"fields": ["correlator"]}}]	13	1
19	2017-09-07 02:18:24.093134+00	R1802	R1802	3		13	1
20	2017-09-13 05:49:09.876938+00	2	IVS	3		8	1
21	2017-09-13 05:49:09.89785+00	1	IVS	3		8	1
22	2017-09-13 05:54:39.486881+00	IVS	IVS	1	[{"added": {}}]	8	1
23	2017-10-03 00:13:26.648787+00	2	HOB+0064	1	[{"added": {}}]	12	1
24	2017-10-03 00:13:33.562791+00	47	R4811yg	2	[{"changed": {"fields": ["rec_size", "module_to_raid", "raid", "transfer_to_correlator"]}}]	9	1
25	2017-10-03 00:15:02.300699+00	46	R4811ke	2	[{"changed": {"fields": ["rec_size", "module_to_raid", "raid"]}}]	9	1
26	2017-10-03 23:50:43.425789+00	3	HOB+0034	1	[{"added": {}}]	12	1
27	2017-10-05 22:32:06.934756+00	bfg8	bfg8	1	[{"added": {}}]	8	1
28	2017-10-05 22:32:37.37768+00	4	PKS+0034	1	[{"added": {}}]	12	1
29	2017-10-05 22:32:46.281272+00	AUA028	AUA028	1	[{"added": {}}, {"added": {"object": "AUA028ho", "name": "experiment instance"}}]	13	1
30	2017-10-05 22:43:19.817043+00	R1810	R1810	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1810ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1810yg"}}]	13	1
31	2017-10-05 22:43:48.18153+00	R1811	R1811	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1811ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1811yg"}}]	13	1
32	2017-10-05 22:44:17.076796+00	R1814	R1814	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1814ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1814yg"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1814ho"}}]	13	1
33	2017-10-05 22:44:35.068483+00	R1813	R1813	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1813ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R1813yg"}}]	13	1
34	2017-10-05 22:44:50.124222+00	AUA030	AUA030	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "AUA030ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "AUA030yg"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "AUA030ho"}}]	13	1
35	2017-10-05 22:45:11.533751+00	AUA029	AUA029	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "AUA029ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "AUA029yg"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "AUA029ho"}}]	13	1
36	2017-10-05 22:46:48.131186+00	R4811	R4811	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R4811ke"}}]	13	1
37	2017-10-05 22:46:57.864948+00	R4810	R4810	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R4810ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "R4810yg"}}]	13	1
38	2017-10-05 22:47:20.274432+00	R4809	R4809	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4809ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4809yg"}}]	13	1
39	2017-10-05 22:47:38.643968+00	R1809	R1809	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1809ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1809yg"}}]	13	1
40	2017-10-05 22:47:52.448061+00	R4808	R4808	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4808ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4808yg"}}]	13	1
41	2017-10-05 22:48:07.222246+00	R1808	R1808	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1808ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1808yg"}}]	13	1
42	2017-10-05 22:48:20.243551+00	R4807	R4807	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4807ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4807yg"}}]	13	1
43	2017-10-05 22:48:35.141994+00	R1807	R1807	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1807ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R1807yg"}}]	13	1
44	2017-10-05 22:48:52.669921+00	R4806	R4806	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4806ke"}}, {"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator", "data_status"], "object": "R4806yg"}}]	13	1
45	2017-10-05 22:49:25.359943+00	RD1708	RD1708	2	[{"changed": {"fields": ["correlator"]}}]	13	1
46	2017-10-05 22:49:37.679346+00	R4805	R4805	2	[{"changed": {"fields": ["correlator"]}}]	13	1
141	2018-10-11 00:53:05.885018+00	UVLBI-06	UVLBI-06	2	[]	12	1
142	2018-10-11 00:53:31.37887+00	HOB+0095	HOB+0095	2	[{"changed": {"fields": ["modified"]}}]	12	1
47	2017-10-05 22:53:36.149725+00	AUA029	AUA029	2	[{"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "AUA029ke"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "AUA029yg"}}]	13	1
48	2017-10-05 22:53:48.777962+00	AUA030	AUA030	2	[{"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "AUA030ke"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "AUA030yg"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "AUA030ho"}}]	13	1
49	2017-10-05 22:54:14.777197+00	R1813	R1813	2	[{"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R1813ke"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R1813yg"}}]	13	1
50	2017-10-05 22:54:31.069977+00	R1814	R1814	2	[{"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R1814ke"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R1814yg"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R1814ho"}}]	13	1
51	2017-10-05 22:55:02.971483+00	R4812	R4812	2	[{"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R4812ke"}}, {"changed": {"name": "experiment instance", "fields": ["module_to_raid"], "object": "R4812yg"}}]	13	1
52	2017-10-05 23:31:04.527756+00	CURT	CURT	1	[{"added": {}}]	7	1
53	2017-10-05 23:32:19.778307+00	lba	lba	1	[{"added": {}}]	11	1
54	2017-10-05 23:32:34.145894+00	V456B	V456B	1	[{"added": {}}]	13	1
55	2017-10-05 23:33:53.590397+00	V456B	V456B	2	[{"added": {"object": "V456Bke", "name": "experiment instance"}}, {"added": {"object": "V456Byg", "name": "experiment instance"}}, {"added": {"object": "V456Bho", "name": "experiment instance"}}]	13	1
56	2017-10-09 02:41:23.579286+00	70	R4813yg	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
57	2017-10-09 02:41:33.541409+00	67	APSG41ke	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
58	2017-10-09 02:41:43.900866+00	69	R4813ke	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
59	2017-10-09 02:41:57.096595+00	68	APSG41yg	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
60	2017-10-18 05:18:05.325242+00	48	R1812ho	2	[]	9	1
61	2017-10-23 03:57:01.816489+00	42	RD1709ho	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
62	2017-10-25 00:36:57.301882+00	V329G	V329G	2	[{"changed": {"fields": ["correlator", "type"]}}]	13	1
63	2017-10-25 00:38:44.533299+00	CURT+101	CURT+101	1	[{"added": {}}]	12	1
64	2017-10-25 00:40:33.142738+00	V329G	V329G	2	[{"added": {"name": "experiment instance", "object": "V329Gho"}}, {"added": {"name": "experiment instance", "object": "V329Gcd"}}, {"added": {"name": "experiment instance", "object": "V329Gke"}}]	13	1
65	2017-10-25 03:06:08.806476+00	73	V329Gke	2	[]	9	1
66	2017-10-25 03:06:27.884731+00	72	V329Gcd	2	[]	9	1
67	2017-10-29 22:09:52.923674+00	73	V329Gke	2	[{"changed": {"fields": ["module_to_raid"]}}]	9	1
68	2017-10-29 22:10:10.020267+00	72	V329Gcd	2	[{"changed": {"fields": ["module_to_raid"]}}]	9	1
69	2017-10-29 22:10:35.482586+00	71	V329Gho	2	[{"changed": {"fields": ["module_to_raid"]}}]	9	1
70	2017-11-01 03:31:29.599485+00	AUA027	AUA027	2	[{"changed": {"fields": ["module", "raid", "transfer_to_correlator"], "object": "AUA027yg", "name": "experiment instance"}}, {"changed": {"fields": ["module", "transfer_to_correlator"], "object": "AUA027ke", "name": "experiment instance"}}]	13	1
71	2017-11-01 03:48:15.377841+00	RD1710	RD1710	2	[{"changed": {"fields": ["transfer_to_correlator"], "name": "experiment instance", "object": "RD1710ho"}}]	13	1
72	2017-11-01 03:49:03.406627+00	CRDS91	CRDS91	2	[{"changed": {"fields": ["transfer_to_correlator"], "name": "experiment instance", "object": "CRDS91ho"}}, {"changed": {"fields": ["transfer_to_correlator"], "name": "experiment instance", "object": "CRDS91yg"}}]	13	1
73	2017-11-02 02:48:38.150525+00	71	V329Gho	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
74	2017-11-13 21:41:04.379075+00	R1815	R1815	2	[{"added": {"name": "experiment instance", "object": "R1815yg"}}, {"added": {"name": "experiment instance", "object": "R1815ke"}}]	13	1
75	2017-11-13 21:42:20.830498+00	R1816	R1816	2	[{"added": {"name": "experiment instance", "object": "R1816ke"}}, {"added": {"name": "experiment instance", "object": "R1816yg"}}]	13	1
76	2017-11-14 00:39:35.790678+00	AUSTRAL	AUSTRAL	1	[{"added": {}}]	8	1
77	2017-11-14 00:39:59.540866+00	R1888	R1888	2	[{"changed": {"fields": ["correlator"]}}, {"added": {"name": "experiment instance", "object": "R1888yg"}}]	13	1
78	2017-11-20 00:56:57.343088+00	T2112	T2112	3		13	1
79	2017-12-20 23:06:17.166005+00	C1714	C1714	2	[{"changed": {"object": "C1714ho", "fields": ["data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1714ke", "fields": ["data_status"], "name": "experiment instance"}}]	13	1
80	2017-12-20 23:07:21.686449+00	C1714	C1714	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
81	2017-12-20 23:08:19.121914+00	C1710	C1710	2	[{"changed": {"fields": ["correlator", "correlation_status"]}}, {"changed": {"object": "C1710ho", "fields": ["sched_size"], "name": "experiment instance"}}, {"changed": {"object": "C1710ke", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
82	2017-12-20 23:09:27.356538+00	C1707	C1707	2	[{"changed": {"fields": ["correlator", "correlation_status"]}}, {"changed": {"object": "C1707ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1707ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
83	2017-12-20 23:09:48.33554+00	C1703	C1703	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"object": "C1703ho", "fields": ["sched_size"], "name": "experiment instance"}}, {"changed": {"object": "C1703ke", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
84	2017-12-20 23:09:57.439909+00	C1703	C1703	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
85	2017-12-20 23:11:53.726404+00	C1701	C1701	2	[{"changed": {"fields": ["correlator", "correlation_status"]}}, {"changed": {"object": "C1701ho", "fields": ["sched_size", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1701ke", "fields": ["sched_size", "data_status"], "name": "experiment instance"}}]	13	1
86	2017-12-20 23:44:29.946316+00	cont	cont	1	[{"added": {}}]	11	1
87	2017-12-20 23:45:02.687053+00	C1712	C1712	2	[{"changed": {"fields": ["type"]}}]	13	1
88	2017-12-20 23:46:07.413273+00	C1701	C1701	2	[{"changed": {"fields": ["type"]}}, {"changed": {"object": "C1701ho", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}, {"changed": {"object": "C1701ke", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}]	13	1
89	2017-12-20 23:46:24.689429+00	C1710	C1710	2	[{"changed": {"fields": ["type"]}}, {"changed": {"object": "C1710ho", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}, {"changed": {"object": "C1710ke", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}]	13	1
90	2017-12-20 23:46:53.279684+00	C1703	C1703	2	[{"changed": {"fields": ["type"]}}, {"changed": {"object": "C1703ho", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}, {"changed": {"object": "C1703ke", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}]	13	1
91	2017-12-20 23:47:08.043811+00	C1707	C1707	2	[{"changed": {"fields": ["type"]}}]	13	1
92	2017-12-20 23:47:31.427487+00	C1714	C1714	2	[{"changed": {"fields": ["type"]}}, {"changed": {"object": "C1714ho", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}, {"changed": {"object": "C1714ke", "fields": ["transfer_to_correlator"], "name": "experiment instance"}}]	13	1
93	2017-12-20 23:48:18.036931+00	C1711	C1711	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "C1711ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1711ke", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
94	2017-12-20 23:48:52.513231+00	C1709	C1709	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "C1709ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1709ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
95	2017-12-20 23:49:28.615659+00	C1708	C1708	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"object": "C1708ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1708ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
96	2017-12-20 23:49:54.735588+00	C1706	C1706	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "C1706ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1706ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
97	2017-12-20 23:50:21.916821+00	C1705	C1705	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "C1705ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1705ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
98	2017-12-20 23:50:50.297401+00	C1704	C1704	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "C1704ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1704ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
99	2017-12-20 23:51:12.351276+00	C1702	C1702	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "C1702ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "C1702ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
100	2017-12-20 23:51:37.480035+00	aus	aus	1	[{"added": {}}]	11	1
101	2017-12-20 23:52:16.94219+00	AUA032	AUA032	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "AUA032ho", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "AUA032ke", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}, {"changed": {"object": "AUA032yg", "fields": ["sched_size", "transfer_to_correlator", "data_status"], "name": "experiment instance"}}]	13	1
102	2018-04-04 00:05:16.162395+00	VX99H	VX99H	3		13	1
103	2018-04-04 00:37:07.730949+00	V1701	V1701	3		13	1
104	2018-04-04 00:37:07.854959+00	V1702	V1702	3		13	1
105	2018-04-04 00:37:07.863037+00	V1703	V1703	3		13	1
106	2018-04-04 00:37:07.871394+00	V1704	V1704	3		13	1
107	2018-04-04 00:37:07.879726+00	V1705	V1705	3		13	1
108	2018-04-04 00:37:07.888048+00	V1706	V1706	3		13	1
109	2018-04-04 00:37:07.896389+00	V1707	V1707	3		13	1
110	2018-04-04 00:37:07.904722+00	V1708	V1708	3		13	1
111	2018-04-04 00:37:07.913051+00	V1709	V1709	3		13	1
112	2018-04-04 00:37:07.921388+00	V1710	V1710	3		13	1
113	2018-04-04 00:37:07.929722+00	V1711	V1711	3		13	1
114	2018-04-04 00:37:07.938031+00	V1712	V1712	3		13	1
115	2018-04-04 00:37:07.963124+00	V1713	V1713	3		13	1
116	2018-04-04 00:37:07.971452+00	V1714	V1714	3		13	1
117	2018-04-04 00:37:07.97977+00	V1715	V1715	3		13	1
118	2018-07-02 03:45:10.432185+00	T2126	T2126	3		13	1
119	2018-07-02 03:52:47.496693+00	T2126	T2126	3		13	1
120	2018-07-02 04:30:36.278858+00	T2126	T2126	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "T2126ke"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "T2126yg"}}]	13	1
121	2018-09-30 23:32:40.794074+00	IVS	IVS	2	[{"changed": {"fields": ["path"]}}]	8	1
122	2018-09-30 23:32:52.900006+00	AUSTRAL	AUSTRAL	2	[{"changed": {"fields": ["path"]}}]	8	1
123	2018-10-01 00:34:46.87804+00	461	R1854ke	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator", "data_status"]}}]	9	1
124	2018-10-01 00:35:28.542623+00	355	R1838yg	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator", "data_status"]}}]	9	1
125	2018-10-01 00:35:57.478682+00	354	R1838ke	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
126	2018-10-01 00:36:24.132795+00	353	R1837yg	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
127	2018-10-01 00:36:50.435837+00	151	R4820yg	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
128	2018-10-01 00:44:49.931548+00	352	R1837ke	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
129	2018-10-01 00:49:01.57693+00	323	R4832yg	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
130	2018-10-01 00:49:48.127852+00	322	R4832ke	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"]}}]	9	1
131	2018-10-02 00:22:02.674226+00	HOB	HOB	1	[{"added": {}}]	7	1
132	2018-10-02 00:22:09.566924+00	CASS	CASS	1	[{"added": {}}]	7	1
133	2018-10-02 02:19:55.732919+00	R1808	R1808	2	[{"changed": {"object": "R1808yg", "name": "experiment instance", "fields": ["raid"]}}]	13	1
134	2018-10-02 05:14:59.485535+00	513	R1861ke	2	[{"changed": {"fields": ["module_to_raid", "raid", "transfer_to_correlator"]}}]	9	1
135	2018-10-03 03:05:55.590095+00	PKS+0034	PKS+0034	2	[{"changed": {"fields": ["location"]}}]	12	1
136	2018-10-11 00:50:39.732487+00	USN-0137	USN-0137	2	[{"changed": {"fields": ["modified"]}}]	12	1
137	2018-10-11 00:51:17.879154+00	USN-0097	USN-0097	2	[{"changed": {"fields": ["modified"]}}]	12	1
138	2018-10-11 00:51:58.052015+00	PKS+0034	PKS+0034	2	[{"changed": {"fields": ["modified"]}}]	12	1
139	2018-10-11 00:52:45.977966+00	CURT+101	CURT+101	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
140	2018-10-11 00:52:55.68314+00	NYAL-019	NYAL-019	2	[{"changed": {"fields": ["modified"]}}]	12	1
143	2018-10-11 00:53:36.171424+00	HOB+0120	HOB+0120	2	[{"changed": {"fields": ["modified"]}}]	12	1
144	2018-10-11 00:53:40.03539+00	HOB+0123	HOB+0123	2	[{"changed": {"fields": ["modified"]}}]	12	1
145	2018-10-11 00:53:51.522571+00	HOB+0094	HOB+0094	2	[{"changed": {"fields": ["modified"]}}]	12	1
146	2018-10-11 00:55:08.161673+00	HOB+0130	HOB+0130	2	[{"changed": {"fields": ["modified"]}}]	12	1
147	2018-10-11 01:02:37.751997+00	HOB+0064	HOB+0064	2	[{"changed": {"fields": ["modified"]}}]	12	1
148	2018-10-11 01:02:54.438708+00	IPA-0028	IPA-0028	2	[{"changed": {"fields": ["modified"]}}]	12	1
149	2018-10-11 01:03:30.495038+00	MPI-0419	MPI-0419	2	[{"changed": {"fields": ["modified"]}}]	12	1
150	2018-10-11 01:03:40.879182+00	HOB+0133	HOB+0133	2	[{"changed": {"fields": ["modified"]}}]	12	1
151	2018-10-11 01:04:17.263989+00	HOB+0098	HOB+0098	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
152	2018-10-11 01:04:32.910372+00	HOB+0034	HOB+0034	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
153	2018-10-11 01:04:44.982257+00	HOB+0114	HOB+0114	2	[{"changed": {"fields": ["modified"]}}]	12	1
154	2018-10-11 01:04:54.974201+00	HOB+0096	HOB+0096	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
155	2018-10-11 01:05:19.950832+00	HOB+0115	HOB+0115	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
156	2018-10-15 23:21:48.646052+00	3	rzBonn	1	[{"added": {}}]	10	1
157	2018-10-15 23:23:43.297745+00	4	rzBonn	1	[{"added": {}}]	10	1
158	2018-10-15 23:24:06.59682+00	3	rzBonn	3		10	1
159	2018-10-15 23:24:57.873392+00	1	bonn	2	[{"changed": {"fields": ["correlator", "server_name", "ip", "port"]}}]	10	1
160	2018-10-16 00:15:54.725238+00	5	waco	1	[{"added": {}}]	10	1
161	2018-10-16 00:17:43.416098+00	5	san01	2	[{"changed": {"fields": ["server_name"]}}]	10	1
162	2018-10-16 00:19:01.195977+00	6	haystack	1	[{"added": {}}]	10	1
163	2018-10-16 00:19:29.197718+00	4	rzbonn	2	[{"changed": {"fields": ["server_name"]}}]	10	1
164	2018-10-16 00:40:47.490117+00	527	RD1808ho	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
165	2018-10-16 00:56:28.790638+00	CASS	CASS	2	[{"added": {"object": "cass-01-per", "name": "storage"}}]	7	1
166	2018-10-16 01:06:59.519068+00	RUSS	RUSS	1	[{"added": {}}]	7	1
167	2018-10-16 04:17:21.672452+00	SHAO	SHAO	2	[]	7	1
168	2018-10-16 04:19:33.628734+00	SHAO	SHAO	2	[{"added": {"name": "storage", "object": "202.127.24.97"}}]	7	1
169	2018-10-23 22:58:03.424792+00	IVS	IVS	2	[]	8	1
170	2018-10-23 22:59:32.644623+00	bfg8	bfg8	2	[{"changed": {"fields": ["ip", "path"]}}]	8	1
171	2018-10-23 22:59:54.830738+00	AUSTRAL	AUSTRAL	2	[]	8	1
172	2018-10-23 23:00:20.093446+00	bfg16	bfg16	1	[{"added": {}}]	8	1
173	2018-10-23 23:02:42.811457+00	colossos	colossos	1	[{"added": {}}]	8	1
174	2018-10-23 23:02:56.197154+00	AUSTRAL	AUSTRAL	2	[]	8	1
175	2018-10-23 23:04:00.075354+00	godzilla8	godzilla8	1	[{"added": {}}]	8	1
176	2018-10-23 23:04:26.82688+00	godzilla16	godzilla16	1	[{"added": {}}]	8	1
177	2018-10-23 23:14:09.62262+00	cornucopia	cornucopia	1	[{"added": {}}]	8	1
178	2018-10-23 23:16:12.405368+00	astro	astro	1	[{"added": {}}]	8	1
179	2018-10-23 23:28:10.235814+00	IVS	IVS	2	[]	8	1
180	2018-10-24 00:13:39.954226+00	IVS	IVS	2	[]	8	1
181	2018-10-24 00:27:15.256086+00	85	R1888yg	3		9	1
182	2018-10-30 07:42:00.345621+00	563	AOV028ke	1	[{"added": {}}]	9	1
183	2018-10-30 23:49:40.896502+00	HOB+1005	HOB+1005	2	[{"changed": {"fields": ["location"]}}]	12	1
184	2018-10-31 00:02:37.972114+00	HOB+1003	HOB+1003	2	[{"changed": {"fields": ["location"]}}]	12	1
185	2018-10-31 00:03:10.777116+00	HOB+0029	HOB+0029	2	[{"changed": {"fields": ["location"]}}]	12	1
186	2018-10-31 00:03:48.874562+00	HOB+0068	HOB+0068	2	[{"changed": {"fields": ["location"]}}]	12	1
187	2018-10-31 00:04:14.754736+00	HOB+0104	HOB+0104	2	[{"changed": {"fields": ["location"]}}]	12	1
188	2018-10-31 00:04:39.099192+00	HOB+0072	HOB+0072	2	[{"changed": {"fields": ["location"]}}]	12	1
189	2018-10-31 00:05:49.922211+00	HOB+0127	HOB+0127	2	[{"changed": {"fields": ["location"]}}]	12	1
190	2018-10-31 00:06:14.665566+00	HOB+0105	HOB+0105	2	[{"changed": {"fields": ["location"]}}]	12	1
191	2018-10-31 00:07:00.065597+00	HOB+0059	HOB+0059	2	[{"changed": {"fields": ["location"]}}]	12	1
192	2018-10-31 04:12:43.565163+00	1	stations	1	[{"added": {}}]	2	1
193	2018-10-31 04:14:09.513059+00	2	katherine	1	[{"added": {}}]	3	1
194	2018-10-31 04:19:53.31805+00	2	katherine	2	[{"changed": {"fields": ["email"]}}]	3	1
195	2018-10-31 04:20:26.278106+00	3	yarragadee	1	[{"added": {}}]	3	1
196	2018-10-31 04:21:15.592935+00	3	yarragadee	2	[{"changed": {"fields": ["email"]}}]	3	1
197	2018-10-31 04:21:48.035358+00	3	yarragadee	2	[]	3	1
198	2018-10-31 04:22:53.449339+00	1	data_master	2	[{"changed": {"fields": ["username", "first_name", "last_name"]}}]	3	1
199	2018-10-31 22:44:56.196781+00	OSOD-031	OSOD-031	1	[{"added": {}}]	12	1
200	2018-10-31 22:45:58.26458+00	HOB+0025	HOB+0025	1	[{"added": {}}]	12	1
201	2018-10-31 22:47:39.319934+00	HART-0015	HART-0015	1	[{"added": {}}]	12	1
202	2018-10-31 22:49:47.385961+00	HART-001	HART-001	2	[{"changed": {"fields": ["vsn"]}}]	12	1
203	2018-10-31 22:50:13.679572+00	HART-0015	HART-0015	3		12	1
204	2018-10-31 22:51:27.654761+00	HART-015	HART-015	2	[{"changed": {"fields": ["vsn"]}}]	12	1
205	2018-10-31 22:51:35.022375+00	HART-001	HART-001	3		12	1
206	2018-10-31 22:52:35.964687+00	CURT+102	CURT+102	1	[{"added": {}}]	12	1
207	2018-10-31 22:53:11.038838+00	HART-104	HART-104	1	[{"added": {}}]	12	1
208	2018-10-31 22:54:11.638596+00	USN+0220	USN+0220	1	[{"added": {}}]	12	1
209	2018-10-31 22:55:47.348938+00	OSOD+121	OSOD+121	1	[{"added": {}}]	12	1
210	2018-10-31 22:56:35.797642+00	USN+0224	USN+0224	1	[{"added": {}}]	12	1
211	2018-10-31 22:58:05.013114+00	HOB+0120	HOB+0120	2	[{"changed": {"fields": ["free", "location"]}}]	12	1
212	2018-10-31 22:58:57.586221+00	HOB+0110	HOB+0110	1	[{"added": {}}]	12	1
213	2018-11-01 01:19:29.778514+00	IAA-0031	IAA-0031	2	[{"changed": {"fields": ["location"]}}]	12	1
214	2018-11-01 01:20:05.577555+00	USN-0198	USN-0198	2	[{"changed": {"fields": ["location"]}}]	12	1
215	2018-11-01 01:22:59.920816+00	UVLBI-06	UVLBI-06	2	[{"changed": {"fields": ["location"]}}]	12	1
216	2018-11-01 01:25:17.695135+00	USN-0197	USN-0197	2	[{"changed": {"fields": ["location"]}}]	12	1
217	2018-11-01 01:27:02.142632+00	NRAO-175	NRAO-175	2	[{"changed": {"fields": ["location"]}}]	12	1
218	2018-11-01 03:17:52.611528+00	1	stations	2	[]	2	1
219	2018-11-02 01:10:52.4588+00	NRAO-144	NRAO-144	1	[{"added": {}}]	12	1
220	2018-11-02 01:11:54.358578+00	TR000-26	TR000-26	1	[{"added": {}}]	12	1
221	2018-11-02 01:12:52.695493+00	OSOD-0144	OSOD-0144	1	[{"added": {}}]	12	1
222	2018-11-02 01:18:20.149456+00	NYAL-019	NYAL-019	2	[{"changed": {"fields": ["location"]}}]	12	1
223	2018-11-02 01:18:31.245563+00	USN-0070	USN-0070	2	[{"changed": {"fields": ["location"]}}]	12	1
224	2018-11-02 01:18:42.662516+00	USN-0097	USN-0097	2	[{"changed": {"fields": ["location"]}}]	12	1
225	2018-11-02 01:19:03.39135+00	MPI-0419	MPI-0419	2	[{"changed": {"fields": ["location"]}}]	12	1
226	2018-11-02 01:22:53.636348+00	UVLBI-36	UVLBI-36	1	[{"added": {}}]	12	1
227	2018-11-02 01:23:31.325523+00	OSOD-144	OSOD-144	2	[{"changed": {"fields": ["vsn"]}}]	12	1
228	2018-11-02 01:23:39.884249+00	OSOD-0144	OSOD-0144	3		12	1
229	2018-11-02 01:24:46.69195+00	USN-0174	USN-0174	1	[{"added": {}}]	12	1
230	2018-11-02 01:25:35.162403+00	JIVE-064	JIVE-064	1	[{"added": {}}]	12	1
231	2018-11-02 01:26:13.643128+00	NRAO-180	NRAO-180	1	[{"added": {}}]	12	1
232	2018-11-02 01:27:11.979543+00	MPI-0405	MPI-0405	1	[{"added": {}}]	12	1
233	2018-11-02 01:28:10.168869+00	JOD-0036	JOD-0036	1	[{"added": {}}]	12	1
234	2018-11-02 01:28:27.402838+00	JOD-0034	JOD-0034	1	[{"added": {}}]	12	1
235	2018-11-02 01:29:01.282209+00	NRAO+257	NRAO+257	1	[{"added": {}}]	12	1
236	2018-11-02 01:44:21.806916+00	MPI-0419	MPI-0419	2	[{"changed": {"fields": ["location"]}}]	12	1
237	2018-11-02 01:44:38.078616+00	USN-0070	USN-0070	2	[{"changed": {"fields": ["location"]}}]	12	1
238	2018-11-02 01:46:14.847095+00	HOB+0015	HOB+0015	1	[{"added": {}}]	12	1
239	2018-11-02 01:46:50.636023+00	HOB+0043	HOB+0043	1	[{"added": {}}]	12	1
240	2018-11-02 02:15:23.608505+00	HOB+0022	HOB+0022	1	[{"added": {}}]	12	1
241	2018-11-02 02:15:57.249031+00	HART+101	HART+101	1	[{"added": {}}]	12	1
242	2018-11-02 02:16:44.304255+00	GSFC+015	GSFC+015	1	[{"added": {}}]	12	1
243	2018-11-02 02:17:35.360975+00	HOB+0067	HOB+0067	1	[{"added": {}}]	12	1
244	2018-11-02 02:18:05.408182+00	GSFC+011	GSFC+011	1	[{"added": {}}]	12	1
245	2018-11-02 02:18:30.279392+00	MAT+0008	MAT+0008	1	[{"added": {}}]	12	1
246	2018-11-05 02:49:53.717009+00	IPA-0028	IPA-0028	2	[{"changed": {"fields": ["location"]}}]	12	1
247	2018-11-05 02:58:00.307851+00	546	MV022ke	2	[{"changed": {"fields": ["sched_size", "module_to_raid"]}}]	9	1
248	2018-11-06 22:27:23.374809+00	USN-0137	USN-0137	2	[{"changed": {"fields": ["location"]}}]	12	1
249	2018-11-06 22:27:34.694509+00	USN-0150	USN-0150	2	[{"changed": {"fields": ["location"]}}]	12	1
250	2018-11-06 22:29:03.147922+00	NRAO-199	NRAO-199	1	[{"added": {}}]	12	1
251	2018-11-06 22:29:46.555249+00	NRAO-199	NRAO-199	2	[{"changed": {"fields": ["size", "free"]}}]	12	1
252	2018-11-06 22:31:06.571419+00	JOD-0019	JOD-0019	1	[{"added": {}}]	12	1
253	2018-11-06 22:32:17.818645+00	OSOD-005	OSOD-005	1	[{"added": {}}]	12	1
254	2018-11-06 22:58:06.002301+00	USN-0147	USN-0147	1	[{"added": {}}]	12	1
255	2018-11-07 05:25:50.751053+00	AUA042	AUA042	2	[{"changed": {"object": "AUA042ke", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "AUA042ho", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "AUA042yg", "name": "experiment instance", "fields": ["sched_size", "module"]}}]	13	1
256	2018-11-07 05:31:06.48986+00	CRF106	CRF106	2	[{"changed": {"object": "CRF106ke", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "CRF106yg", "name": "experiment instance", "fields": ["sched_size", "module"]}}]	13	1
257	2018-11-07 05:35:11.60339+00	AUA042	AUA042	2	[{"changed": {"object": "AUA042yg", "name": "experiment instance", "fields": ["module"]}}]	13	1
258	2018-11-12 21:49:03.54686+00	BKG-0039	BKG-0039	2	[{"changed": {"fields": ["location"]}}]	12	1
259	2018-11-12 21:49:29.188061+00	USN-0182	USN-0182	2	[{"changed": {"fields": ["location"]}}]	12	1
260	2018-11-12 21:49:59.488997+00	BKG-0039	BKG-0039	2	[{"changed": {"fields": ["modified"]}}]	12	1
261	2018-11-12 21:50:12.771684+00	USN-0182	USN-0182	2	[{"changed": {"fields": ["modified"]}}]	12	1
262	2018-11-12 22:01:02.04422+00	474	AUM001ke	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
263	2018-11-12 22:23:51.084427+00	471	AUM002yg	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
264	2018-11-12 22:27:41.960017+00	471	AUM002yg	2	[]	9	1
265	2018-11-12 22:28:21.129355+00	475	AUM002ke	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
266	2018-11-12 22:28:38.720132+00	474	AUM001ke	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
267	2018-11-12 22:28:51.784497+00	471	AUM002yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
268	2018-11-13 02:19:30.366672+00	217	T2123yg	2	[]	9	1
269	2018-11-13 02:20:09.175322+00	217	T2123yg	2	[]	9	1
270	2018-11-13 02:20:42.692959+00	214	OHG113yg	2	[]	9	1
271	2018-11-13 02:59:46.075137+00	455	APSG43ke	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
272	2018-11-13 03:03:01.076079+00	388	APSG42ke	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
273	2018-11-13 03:03:32.613106+00	388	APSG42ke	2	[]	9	1
274	2018-11-13 03:04:17.697802+00	392	AUA041ke	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
275	2018-11-13 03:07:28.418432+00	455	APSG43ke	2	[]	9	1
276	2018-11-13 03:14:42.829657+00	413	AUA043yg	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
277	2018-11-13 03:51:45.547483+00	426	AUA045yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
278	2018-11-13 03:56:34.393023+00	500	AUM007yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
279	2018-11-13 04:03:47.608806+00	USN-0174	USN-0174	2	[{"changed": {"fields": ["location"]}}]	12	1
280	2018-11-13 04:04:05.183865+00	OSOD-005	OSOD-005	2	[{"changed": {"fields": ["location"]}}]	12	1
281	2018-11-13 04:07:43.709429+00	ivs	ivs	1	[{"added": {}}]	11	1
282	2018-11-13 04:08:23.290384+00	OHG114	OHG114	2	[{"changed": {"fields": ["correlator", "schedate", "type"]}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "OHG114ho"}}]	13	1
283	2018-11-13 04:08:53.444072+00	OHG115	OHG115	2	[{"changed": {"fields": ["correlator", "schedate"]}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "OHG115ho"}}]	13	1
284	2018-11-13 04:13:59.832564+00	rivs	rivs	1	[{"added": {}}]	11	1
285	2018-11-13 04:16:42.206262+00	AOV028	AOV028	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"fields": ["raid"], "name": "experiment instance", "object": "AOV028ke"}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "AOV028ho"}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "AOV028yg"}}]	13	1
286	2018-11-13 04:25:21.374925+00	OSOD+050	OSOD+050	2	[{"changed": {"fields": ["location"]}}]	12	1
287	2018-11-13 04:42:35.135822+00	OHG109	OHG109	2	[{"added": {"name": "experiment instance", "object": "OHG109ho"}}]	13	1
288	2018-11-13 04:43:56.941555+00	OHG110	OHG110	2	[{"added": {"name": "experiment instance", "object": "OHG110ho"}}]	13	1
289	2018-11-13 04:44:15.065418+00	OHG109	OHG109	2	[{"changed": {"fields": ["module"], "name": "experiment instance", "object": "OHG109ho"}}]	13	1
290	2018-11-13 04:45:54.26726+00	568	OHG109ho	2	[{"changed": {"fields": ["module_to_raid"]}}]	9	1
291	2018-11-13 21:56:11.697874+00	533	AUM005yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
292	2018-11-13 22:00:19.01095+00	439	RD1804ho	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
293	2018-11-13 22:00:49.384778+00	450	RD1805ho	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
294	2018-11-13 22:01:56.973983+00	457	APSG43yg	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
295	2018-11-13 22:02:46.831296+00	459	AOV025ho	2	[{"changed": {"fields": ["sched_size", "raid"]}}]	9	1
296	2018-11-14 04:26:39.327125+00	2	katherine	2	[]	3	1
297	2018-11-14 04:26:57.433017+00	3	yarragadee	2	[]	3	1
298	2018-11-15 04:08:37.44978+00	570	S7615Bhb	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
299	2018-11-20 00:03:48.801393+00	HOB+1010	HOB+1010	2	[{"changed": {"fields": ["location"]}}]	12	1
300	2018-11-20 00:05:50.84229+00	HOB+0112	HOB+0112	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
301	2018-11-20 00:06:15.82726+00	HOB+1010	HOB+1010	2	[]	12	1
302	2018-11-20 00:56:32.688085+00	HOB+0112	HOB+0112	2	[{"changed": {"fields": ["location"]}}]	12	1
303	2018-11-20 04:10:49.105683+00	PKS+0020	PKS+0020	1	[{"added": {}}]	12	1
304	2018-11-20 04:11:14.733723+00	GSFC+017	GSFC+017	1	[{"added": {}}]	12	1
305	2018-11-21 01:21:30.526776+00	NRCAN-05	NRCAN-05	2	[{"changed": {"fields": ["location"]}}]	12	1
306	2018-11-21 01:21:47.806553+00	JOD-0041	JOD-0041	2	[{"changed": {"fields": ["location"]}}]	12	1
307	2018-11-21 23:44:46.876706+00	UVLBI-36	UVLBI-36	2	[{"changed": {"fields": ["location"]}}]	12	1
308	2018-11-21 23:45:23.858959+00	USN-0182	USN-0182	2	[{"changed": {"fields": ["modified", "location"]}}]	12	1
309	2018-11-21 23:46:39.946719+00	TR-00026	TR-00026	2	[{"changed": {"fields": ["vsn"]}}]	12	1
310	2018-11-21 23:47:06.188814+00	TR000-26	TR000-26	3		12	1
311	2018-11-21 23:51:46.472859+00	OSOD-144	OSOD-144	3		12	1
312	2018-11-21 23:51:58.577229+00	OSOD-114	OSOD-114	2	[{"changed": {"fields": ["modified"]}}]	12	1
313	2018-11-21 23:52:27.16455+00	OSOD-114	OSOD-114	2	[]	12	1
314	2018-11-22 00:39:52.181849+00	USN-0198	USN-0198	2	[{"changed": {"fields": ["free"]}}]	12	1
315	2018-11-22 00:39:59.342046+00	USN-0174	USN-0174	2	[{"changed": {"fields": ["free"]}}]	12	1
316	2018-11-22 00:40:07.131919+00	OSOD+050	OSOD+050	2	[{"changed": {"fields": ["free"]}}]	12	1
317	2018-11-22 00:40:14.199063+00	OSOD-005	OSOD-005	2	[{"changed": {"fields": ["free"]}}]	12	1
318	2018-11-22 00:40:19.447811+00	IAA-0031	IAA-0031	2	[{"changed": {"fields": ["free"]}}]	12	1
319	2018-11-22 00:40:25.02533+00	UVLBI-06	UVLBI-06	2	[{"changed": {"fields": ["free"]}}]	12	1
320	2018-11-23 00:47:30.877852+00	AOV029	AOV029	1	[{"added": {}}, {"added": {"object": "AOV029ho", "name": "experiment instance"}}, {"added": {"object": "AOV029ke", "name": "experiment instance"}}, {"added": {"object": "AOV029yg", "name": "experiment instance"}}]	13	1
321	2018-11-27 23:38:36.979375+00	CRF109	CRF109	2	[{"added": {"name": "experiment instance", "object": "CRF109ho"}}]	13	1
322	2018-11-27 23:43:31.903684+00	RD1809	RD1809	2	[{"changed": {"name": "experiment instance", "fields": ["module"], "object": "RD1809ho"}}]	13	1
323	2018-12-02 21:52:49.151111+00	584	AOV029ho	2	[{"changed": {"fields": ["scans", "rec_size", "module_to_raid", "raid"]}}]	9	1
324	2018-12-02 23:39:38.225877+00	591	AUA047yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
325	2018-12-02 23:40:28.94542+00	590	AUA047ke	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
326	2018-12-02 23:40:58.820847+00	592	AUA047ho	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
327	2018-12-05 23:38:34.902453+00	V252bo	V252bo	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V252boke"}}, {"added": {"name": "experiment instance", "object": "V252boyg"}}]	13	1
328	2018-12-06 04:50:48.839002+00	594	R4871yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
329	2018-12-06 04:51:20.262325+00	593	R4871ke	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
330	2018-12-06 04:53:13.234496+00	MV041	MV041	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"object": "MV041yg", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "MV041ke", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
331	2018-12-06 04:55:32.290261+00	596	R1872yg	3		9	1
332	2018-12-06 04:55:56.536326+00	595	R1872ke	3		9	1
333	2018-12-10 08:52:24.159857+00	600	RD1810ho	3		9	1
334	2018-12-10 22:29:37.44801+00	AOV030	AOV030	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "AOV030ke"}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "AOV030yg"}}, {"changed": {"fields": ["sched_size"], "name": "experiment instance", "object": "AOV030ho"}}]	13	1
335	2018-12-11 02:32:03.249074+00	HOB+0042	HOB+0042	2	[{"changed": {"fields": ["free", "modified"]}}]	12	1
336	2018-12-12 00:22:39.196299+00	HART+104	HART+104	2	[{"changed": {"fields": ["vsn"]}}]	12	1
337	2018-12-12 00:42:02.942411+00	HART-104	HART-104	3		12	1
338	2018-12-16 22:15:18.582677+00	LBA	LBA	1	[{"added": {}}]	8	1
339	2018-12-16 22:15:28.007669+00	609	V252BOke	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
340	2018-12-16 22:16:03.260515+00	615	V252BPyg	2	[{"changed": {"fields": ["sched_size", "transfer_to_correlator"]}}]	9	1
341	2018-12-16 22:16:21.867269+00	614	V252BOyg	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
342	2018-12-16 22:17:24.498324+00	591	AUA047yg	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
343	2018-12-16 22:17:37.162107+00	592	AUA047ho	2	[{"changed": {"fields": ["transfer_to_correlator"]}}]	9	1
344	2018-12-17 02:22:40.646392+00	601	R4872ke	3		9	1
345	2018-12-18 21:55:35.937404+00	V252BO	V252BO	2	[{"added": {"name": "experiment instance", "object": "V252BOcd"}}]	13	1
346	2018-12-20 03:31:07.468986+00	603	R1873ke	3		9	1
347	2019-01-08 04:08:33.946832+00	UAO-0014	UAO-0014	2	[{"changed": {"fields": ["size"]}}]	12	1
348	2019-01-08 23:41:43.571515+00	R4876	R4876	2	[{"changed": {"object": "R4876ke", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "R4876yg", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
349	2019-01-09 00:20:53.30718+00	AOV029	AOV029	2	[{"changed": {"object": "AOV029ke", "name": "experiment instance", "fields": ["transfer_to_correlator"]}}, {"changed": {"object": "AOV029yg", "name": "experiment instance", "fields": ["transfer_to_correlator"]}}, {"changed": {"object": "AOV029ho", "name": "experiment instance", "fields": ["transfer_to_correlator"]}}]	13	1
350	2019-01-09 00:21:38.941757+00	RD1809	RD1809	2	[{"changed": {"object": "RD1809ho", "name": "experiment instance", "fields": ["transfer_to_correlator"]}}]	13	1
351	2019-01-09 00:22:10.991073+00	CRF109	CRF109	2	[{"changed": {"object": "CRF109ho", "name": "experiment instance", "fields": ["transfer_to_correlator"]}}]	13	1
352	2019-01-09 00:23:15.71674+00	V252BP	V252BP	2	[{"changed": {"object": "V252BPke", "name": "experiment instance", "fields": ["transfer_to_correlator"]}}]	13	1
353	2019-01-09 02:48:34.376487+00	HAY-0041	HAY-0041	2	[{"changed": {"fields": ["free", "modified"]}}]	12	1
354	2019-01-09 02:53:31.533007+00	HOB+0121	HOB+0121	1	[{"added": {}}]	12	1
355	2019-01-09 02:56:20.308045+00	HOB+1004	HOB+1004	1	[{"added": {}}]	12	1
356	2019-01-09 03:14:40.868839+00	HOB+0051	HOB+0051	1	[{"added": {}}]	12	1
357	2019-01-10 00:04:19.937024+00	HOB+0101	HOB+0101	2	[{"changed": {"fields": ["vsn"]}}]	12	1
358	2019-01-10 00:06:18.699526+00	BKG+0101	BKG+0101	3		12	1
359	2019-01-10 00:06:43.924384+00	HOB+0101	HOB+0101	2	[{"changed": {"fields": ["modified"]}}]	12	1
360	2019-01-10 01:50:40.727719+00	SHAO-017	SHAO-017	2	[{"changed": {"fields": ["size"]}}]	12	1
361	2019-01-13 21:36:42.318932+00	JIVE-020	JIVE-020	2	[{"changed": {"fields": ["size", "modified"]}}]	12	1
362	2019-01-13 21:37:17.291068+00	WAZ+1001	WAZ+1001	3		12	1
363	2019-01-13 21:39:40.741849+00	641	R4877yg	2	[]	9	1
364	2019-01-13 21:44:06.637379+00	USN-0192	USN-0192	2	[{"changed": {"fields": ["vsn", "size"]}}]	12	1
365	2019-01-13 21:44:31.968852+00	usn-0192	usn-0192	3		12	1
366	2019-01-13 21:49:48.170005+00	631	R4876yg	2	[]	9	1
367	2019-01-15 01:50:14.141324+00	634	CRDS99ke	2	[]	9	1
368	2019-01-15 01:53:51.565959+00	635	CRDS99yg	2	[]	9	1
369	2019-01-15 23:45:34.331681+00	639	AUA048ho	3		9	1
370	2019-01-16 00:34:27.500105+00	636	CRDS99ho	3		9	1
371	2019-01-16 02:50:33.998457+00	634	CRDS99ke	2	[]	9	1
372	2019-01-16 02:52:34.844969+00	638	AUA048yg	2	[]	9	1
373	2019-01-16 23:06:14.491094+00	TR-00026	TR-00026	2	[{"changed": {"fields": ["free"]}}]	12	1
374	2019-01-16 23:06:32.722921+00	JOD-0019	JOD-0019	2	[{"changed": {"fields": ["free"]}}]	12	1
375	2019-01-16 23:06:42.205723+00	BKG-0049	BKG-0049	2	[{"changed": {"fields": ["free"]}}]	12	1
376	2019-01-16 23:08:05.491009+00	632	R1877ke	2	[]	9	1
377	2019-01-16 23:17:32.745067+00	USN-0194	USN-0194	2	[{"changed": {"fields": ["modified"]}}]	12	1
378	2019-01-16 23:22:01.682745+00	637	AUA048ke	3		9	1
379	2019-01-16 23:22:01.708034+00	634	CRDS99ke	3		9	1
380	2019-01-16 23:22:01.717842+00	632	R1877ke	3		9	1
381	2019-01-16 23:22:34.337198+00	640	R4877ke	3		9	1
382	2019-01-17 00:38:15.416937+00	868	R1877ke	3		9	1
383	2019-01-23 00:08:43.823958+00	OSOD-005	OSOD-005	2	[{"changed": {"fields": ["modified"]}}]	12	1
384	2019-01-23 00:12:06.264344+00	OSOD-005	OSOD-005	2	[{"changed": {"fields": ["free"]}}]	12	1
385	2019-01-24 23:34:01.347787+00	NRAO-144	NRAO-144	3		12	1
386	2019-01-24 23:59:47.211681+00	V560C	V560C	2	[{"added": {"name": "experiment instance", "object": "V560Ccd"}}]	13	1
387	2019-01-25 00:01:47.815618+00	V560C	V560C	2	[{"changed": {"name": "experiment instance", "fields": ["transfer_to_correlator"], "object": "V560Ccd"}}]	13	1
388	2019-01-25 00:05:18.68211+00	RK25AC	RK25AC	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "RK25ACcd"}}]	13	1
389	2019-01-25 00:05:48.339148+00	RK25AF	RK25AF	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "RK25AFcd"}}]	13	1
390	2019-01-25 00:06:12.098697+00	RK25AJ	RK25AJ	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "RK25AJcd"}}]	13	1
391	2019-01-25 00:06:33.049891+00	RK25AO	RK25AO	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "RK25AOcd"}}]	13	1
392	2019-01-25 00:06:54.880915+00	RK25AP	RK25AP	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "RK25APcd"}}]	13	1
393	2019-01-31 00:04:23.556105+00	MV023	MV023	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV023ke"}}, {"added": {"name": "experiment instance", "object": "MV023yg"}}]	13	1
394	2019-02-05 22:37:18.735474+00	JIVE-020	JIVE-020	2	[{"changed": {"fields": ["free"]}}]	12	1
395	2019-02-05 22:38:10.969069+00	JPL-0070	JPL-0070	2	[{"changed": {"fields": ["modified", "location", "ship", "transit"]}}]	12	1
396	2019-02-05 22:38:34.324838+00	JPL-0060	JPL-0060	2	[{"changed": {"fields": ["modified", "location", "ship", "transit"]}}]	12	1
397	2019-02-05 22:45:50.2875+00	USN-0097	USN-0097	2	[{"changed": {"fields": ["free", "modified", "location", "ship", "transit"]}}]	12	1
398	2019-02-05 23:25:08.085872+00	NYAL-019	NYAL-019	2	[{"changed": {"fields": ["free"]}}]	12	1
399	2019-02-06 00:19:13.134848+00	869	R1877ke	3		9	1
400	2019-02-06 00:19:41.469877+00	645	R1878ke	3		9	1
401	2019-02-06 00:20:52.700491+00	647	R4878ke	3		9	1
402	2019-02-06 00:58:02.805887+00	654	R4879ke	3		9	1
403	2019-02-06 04:13:21.95865+00	644	AOV031ho	3		9	1
404	2019-02-06 04:13:41.543225+00	642	AOV031ke	3		9	1
405	2019-02-08 01:14:53.378161+00	HAY-0144	HAY-0144	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
406	2019-02-08 01:15:11.668679+00	BKG+0142	BKG+0142	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
407	2019-02-08 03:36:38.679201+00	MV023	MV023	2	[{"changed": {"fields": ["schedate"]}}]	13	1
408	2019-02-19 22:57:02.542076+00	882	V252BPcd	1	[{"added": {}}]	9	1
409	2019-02-21 01:36:44.054029+00	GM074A	GM074A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "GM074Ake"}}, {"added": {"name": "experiment instance", "object": "GM074Aho"}}, {"added": {"name": "experiment instance", "object": "GM074Ayg"}}, {"added": {"name": "experiment instance", "object": "GM074Acd"}}, {"added": {"name": "experiment instance", "object": "GM074Ati"}}]	13	1
410	2019-02-21 01:39:29.448133+00	GM075B	GM075B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "GM075Bke"}}, {"added": {"name": "experiment instance", "object": "GM075Bcd"}}, {"added": {"name": "experiment instance", "object": "GM075Byg"}}, {"added": {"name": "experiment instance", "object": "GM075Bho"}}]	13	1
411	2019-02-21 01:40:21.198784+00	GM074C	GM074C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "GM074Cke"}}, {"added": {"name": "experiment instance", "object": "GM074Cyg"}}, {"added": {"name": "experiment instance", "object": "GM074Ccd"}}, {"added": {"name": "experiment instance", "object": "GM074Cho"}}]	13	1
412	2019-02-21 01:41:18.702322+00	888	GM074Ati	3		9	1
413	2019-02-21 01:43:34.020939+00	VX027A	VX027A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VX027Aho"}}, {"added": {"name": "experiment instance", "object": "VX027Acd"}}]	13	1
414	2019-02-21 01:44:38.380041+00	V252BQ	V252BQ	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V252BQke"}}, {"added": {"name": "experiment instance", "object": "V252BQyg"}}, {"added": {"name": "experiment instance", "object": "V252BQcd"}}, {"added": {"name": "experiment instance", "object": "V252BQho"}}]	13	1
415	2019-02-21 01:45:44.947488+00	V252BR	V252BR	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V252BRke"}}, {"added": {"name": "experiment instance", "object": "V252BRyg"}}, {"added": {"name": "experiment instance", "object": "V252BRho"}}, {"added": {"name": "experiment instance", "object": "V252BRcd"}}]	13	1
807	2020-08-19 02:38:02.93026+00	S004A	S004A	2	[{"added": {"object": "S004Ake", "name": "experiment instance"}}]	13	1
416	2019-02-21 01:46:39.37228+00	V255AG	V255AG	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V255AGho"}}, {"added": {"name": "experiment instance", "object": "V255AGcd"}}]	13	1
417	2019-02-21 01:47:45.143219+00	V452E	V452E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V452Eho"}}, {"added": {"name": "experiment instance", "object": "V452Ecd"}}]	13	1
418	2019-02-21 01:48:53.171067+00	V452F	V452F	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V452Fho"}}, {"added": {"name": "experiment instance", "object": "V452Fcd"}}]	13	1
419	2019-02-21 05:21:24.359393+00	GM075B	GM075B	3		13	1
420	2019-02-21 05:22:12.218169+00	GM074B	GM074B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "GM074Bke"}}]	13	1
421	2019-02-21 05:29:50.196254+00	GM074B	GM074B	2	[{"added": {"name": "experiment instance", "object": "GM074Byg"}}]	13	1
422	2019-02-21 05:30:40.283186+00	GM074C	GM074C	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "GM074Cyg"}}]	13	1
423	2019-02-21 05:36:35.935511+00	GM074B	GM074B	2	[{"added": {"name": "experiment instance", "object": "GM074Bcd"}}]	13	1
424	2019-02-21 05:37:35.616639+00	GM074B	GM074B	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "GM074Bcd"}}]	13	1
425	2019-02-21 05:38:13.225356+00	GM074C	GM074C	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "GM074Ccd"}}]	13	1
426	2019-02-22 01:49:58.926689+00	FLXBUFCD	FLXBUFCD	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
427	2019-02-22 01:56:42.985124+00	GM074B	GM074B	2	[{"added": {"name": "experiment instance", "object": "GM074Bho"}}]	13	1
428	2019-02-25 03:51:47.948956+00	V252BR	V252BR	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "V252BRyg"}}]	13	1
429	2019-02-25 03:53:54.371195+00	V252BR	V252BR	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "V252BRke"}}]	13	1
430	2019-02-26 00:24:56.554029+00	R4883	R4883	2	[{"changed": {"fields": ["type"]}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "R4883ke"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "R4883yg"}}]	13	1
431	2019-02-26 00:25:42.748893+00	CRDS99	CRDS99	2	[{"changed": {"name": "experiment instance", "fields": ["data_status"], "object": "CRDS99yg"}}]	13	1
432	2019-02-27 04:19:15.164768+00	MV025	MV025	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV025ke"}}, {"added": {"name": "experiment instance", "object": "MV025yg"}}]	13	1
433	2019-02-27 04:46:57.724754+00	MV024	MV024	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV024ke"}}, {"added": {"name": "experiment instance", "object": "MV024yg"}}]	13	1
434	2019-02-27 04:50:30.043592+00	MV025	MV025	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size", "rec_size"], "object": "MV025ke"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size", "rec_size"], "object": "MV025yg"}}]	13	1
435	2019-02-27 04:50:45.212185+00	MV024	MV024	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size", "rec_size"], "object": "MV024ke"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size", "rec_size"], "object": "MV024yg"}}]	13	1
436	2019-02-27 04:55:49.845397+00	MV023	MV023	2	[{"changed": {"name": "experiment instance", "fields": ["scans", "sched_size"], "object": "MV023yg"}}, {"changed": {"name": "experiment instance", "fields": ["scans", "sched_size"], "object": "MV023ke"}}]	13	1
437	2019-03-03 21:01:53.060806+00	TR-00011	TR-00011	1	[{"added": {}}]	12	1
438	2019-03-03 21:28:14.509906+00	usn-0094	usn-0094	3		12	1
439	2019-03-03 21:28:14.543905+00	usn-0017	usn-0017	3		12	1
440	2019-03-03 21:28:39.258336+00	USN-0094	USN-0094	1	[{"added": {}}]	12	1
441	2019-03-03 21:29:05.060469+00	USN-0017	USN-0017	1	[{"added": {}}]	12	1
442	2019-03-05 21:45:47.971603+00	V447H	V447H	2	[{"changed": {"fields": ["correlator"]}}]	13	1
443	2019-03-05 21:46:02.190856+00	VX026B	VX026B	2	[{"changed": {"fields": ["correlator"]}}]	13	1
444	2019-03-05 21:46:26.167619+00	VX026A	VX026A	2	[{"changed": {"fields": ["correlator"]}}]	13	1
445	2019-03-12 00:50:19.703607+00	689	AUA050ke	2	[]	9	1
446	2019-03-12 00:51:20.209759+00	689	AUA050ke	2	[]	9	1
447	2019-03-12 00:56:33.186855+00	692	R4885ke	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
448	2019-03-12 00:57:07.202674+00	693	R4885yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
449	2019-03-12 21:24:28.703833+00	690	AUA050yg	2	[]	9	1
450	2019-03-15 02:38:36.099316+00	V558C	V558C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V558Cho"}}]	13	1
451	2019-03-15 10:35:46.710289+00	MV026	MV026	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV026ke"}}, {"added": {"name": "experiment instance", "object": "MV026yg"}}, {"added": {"name": "experiment instance", "object": "MV026cd"}}]	13	1
452	2019-03-15 22:37:49.315232+00	933	MV026ke	2	[{"changed": {"fields": ["recorded", "sched_size", "rec_size"]}}]	9	1
453	2019-03-15 22:38:33.73277+00	MV026	MV026	2	[{"changed": {"fields": ["type"]}}, {"changed": {"name": "experiment instance", "fields": ["sched_size", "rec_size"], "object": "MV026yg"}}]	13	1
454	2019-03-15 22:39:47.258409+00	MV026	MV026	2	[{"changed": {"name": "experiment instance", "fields": ["recorded"], "object": "MV026yg"}}, {"changed": {"name": "experiment instance", "fields": ["recorded", "module"], "object": "MV026cd"}}]	13	1
455	2019-03-18 03:33:02.201459+00	MED-0026	MED-0026	2	[{"changed": {"fields": ["free"]}}]	12	1
456	2019-03-18 03:34:39.153918+00	MED-0026	MED-0026	2	[]	12	1
457	2019-03-19 03:30:47.129967+00	OAN+0104	OAN+0104	2	[{"changed": {"fields": ["size", "modified"]}}]	12	1
458	2019-03-19 03:31:54.308306+00	UVLBI-06	UVLBI-06	2	[{"changed": {"fields": ["free"]}}]	12	1
459	2019-03-19 22:45:21.984662+00	MV030	MV030	2	[{"deleted": {"name": "experiment instance", "object": "MV030cd"}}, {"deleted": {"name": "experiment instance", "object": "MV030yg"}}, {"deleted": {"name": "experiment instance", "object": "MV030ke"}}]	13	1
460	2019-03-19 22:45:49.624116+00	MV025	MV025	2	[{"deleted": {"name": "experiment instance", "object": "MV025ke"}}, {"deleted": {"name": "experiment instance", "object": "MV025yg"}}]	13	1
461	2019-03-21 04:03:13.312679+00	V558C	V558C	2	[{"added": {"name": "experiment instance", "object": "V558Ccd"}}]	13	1
462	2019-03-21 04:03:57.218148+00	V452E	V452E	2	[{"changed": {"name": "experiment instance", "fields": ["rec_size"], "object": "V452Ecd"}}]	13	1
463	2019-03-21 04:04:21.753742+00	V452F	V452F	2	[{"changed": {"name": "experiment instance", "fields": ["rec_size"], "object": "V452Fcd"}}]	13	1
464	2019-03-21 04:05:27.296437+00	GM074A	GM074A	2	[{"changed": {"name": "experiment instance", "fields": ["rec_size"], "object": "GM074Acd"}}]	13	1
465	2019-03-21 04:06:26.886546+00	GM074B	GM074B	2	[{"changed": {"name": "experiment instance", "fields": ["rec_size"], "object": "GM074Bcd"}}]	13	1
466	2019-03-21 04:07:02.499135+00	GM074C	GM074C	2	[{"changed": {"name": "experiment instance", "fields": ["rec_size"], "object": "GM074Ccd"}}]	13	1
467	2019-03-21 05:30:49.001601+00	VX026C	VX026C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VX026Cho"}}, {"added": {"name": "experiment instance", "object": "VX026Ccd"}}]	13	1
468	2019-03-22 08:33:41.392408+00	JIVE	JIVE	1	[{"added": {}}, {"added": {"object": "JIVE", "name": "storage"}}]	7	1
469	2019-03-22 08:35:53.652814+00	GM074A	GM074A	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"fields": ["transfer_to_correlator"], "object": "GM074Ake", "name": "experiment instance"}}]	13	1
470	2019-03-22 08:36:41.042552+00	GM074B	GM074B	2	[{"changed": {"fields": ["correlator"]}}]	13	1
471	2019-03-22 08:37:02.106572+00	GM074C	GM074C	2	[{"changed": {"fields": ["correlator"]}}]	13	1
472	2019-03-22 08:45:52.839278+00	V558C	V558C	2	[{"changed": {"fields": ["transfer_to_correlator"], "object": "V558Cho", "name": "experiment instance"}}]	13	1
473	2019-03-22 08:47:32.870128+00	V447H	V447H	2	[{"added": {"object": "V447Hho", "name": "experiment instance"}}]	13	1
474	2019-03-27 00:17:12.948067+00	USN-0179	USN-0179	2	[{"changed": {"fields": ["modified"]}}]	12	1
475	2019-03-27 00:17:20.186058+00	OSOD-117	OSOD-117	2	[{"changed": {"fields": ["modified"]}}]	12	1
476	2019-03-27 00:17:27.190626+00	HAY-0030	HAY-0030	2	[{"changed": {"fields": ["modified"]}}]	12	1
477	2019-03-27 03:55:18.56919+00	flexbuf1	flexbuf1	1	[{"added": {}}]	8	1
478	2019-03-27 04:56:14.548774+00	R1883	R1883	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["data_status"], "object": "R1883ke", "name": "experiment instance"}}, {"changed": {"fields": ["data_status"], "object": "R1883yg", "name": "experiment instance"}}]	13	1
479	2019-03-27 05:11:17.880405+00	V252BQ	V252BQ	2	[{"changed": {"fields": ["transfer_to_correlator"], "object": "V252BQke", "name": "experiment instance"}}]	13	1
480	2019-03-29 02:08:42.054424+00	MED-0036	MED-0036	3		12	1
481	2019-03-29 02:11:27.76979+00	MED-0026	MED-0026	2	[{"changed": {"fields": ["free"]}}]	12	1
482	2019-03-29 02:11:45.384622+00	MED-0026	MED-0026	2	[{"changed": {"fields": ["location", "transit"]}}]	12	1
483	2019-03-31 22:47:57.718776+00	GM074A	GM074A	2	[{"changed": {"fields": ["transfer_to_correlator"], "object": "GM074Aho", "name": "experiment instance"}}, {"changed": {"fields": ["module_to_raid"], "object": "GM074Ake", "name": "experiment instance"}}]	13	1
484	2019-03-31 22:48:17.725132+00	GM074B	GM074B	2	[{"changed": {"fields": ["transfer_to_correlator"], "object": "GM074Bho", "name": "experiment instance"}}]	13	1
485	2019-03-31 22:48:29.300418+00	GM074C	GM074C	2	[{"changed": {"fields": ["transfer_to_correlator"], "object": "GM074Cho", "name": "experiment instance"}}]	13	1
486	2019-03-31 22:49:51.965424+00	GM074A	GM074A	2	[{"changed": {"fields": ["module_to_raid", "transfer_to_correlator"], "object": "GM074Ake", "name": "experiment instance"}}]	13	1
487	2019-04-02 23:58:13.837211+00	717	OHG118yg	2	[]	9	1
488	2019-04-04 01:03:33.864118+00	JOD-0024	JOD-0024	1	[{"added": {}}]	12	1
489	2019-04-13 00:10:33.84323+00	MV027	MV027	1	[{"added": {}}, {"added": {"object": "MV027", "name": "experiment instance"}}, {"added": {"object": "MV027", "name": "experiment instance"}}, {"added": {"object": "MV027", "name": "experiment instance"}}, {"added": {"object": "MV027", "name": "experiment instance"}}]	13	1
490	2019-04-13 00:11:28.407902+00	MV027	MV027	2	[{"changed": {"fields": ["station"], "object": "MV027cd", "name": "experiment instance"}}, {"changed": {"fields": ["module", "station"], "object": "MV027ho", "name": "experiment instance"}}, {"changed": {"fields": ["station"], "object": "MV027ke", "name": "experiment instance"}}, {"changed": {"fields": ["station"], "object": "MV027yg", "name": "experiment instance"}}]	13	1
491	2019-04-22 04:34:29.990979+00	MV027	MV027	2	[{"changed": {"fields": ["module"], "object": "MV027ke", "name": "experiment instance"}}]	13	1
492	2019-04-29 00:12:03.04371+00	MV028	MV028	1	[{"added": {}}, {"added": {"object": "MV028ke", "name": "experiment instance"}}, {"added": {"object": "MV028yg", "name": "experiment instance"}}, {"added": {"object": "MV028ho", "name": "experiment instance"}}, {"added": {"object": "MV028cd", "name": "experiment instance"}}]	13	1
493	2019-04-29 00:12:54.855917+00	MV030	MV030	2	[{"changed": {"fields": ["correlation_status"]}}, {"added": {"object": "MV030", "name": "experiment instance"}}, {"added": {"object": "MV030", "name": "experiment instance"}}, {"added": {"object": "MV030", "name": "experiment instance"}}]	13	1
494	2019-04-29 00:13:11.718689+00	MV022	MV022	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
495	2019-04-29 00:13:20.372454+00	MV020	MV020	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["raid"], "object": "MV020yg", "name": "experiment instance"}}]	13	1
496	2019-04-29 00:13:27.325523+00	MV021	MV021	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["ship_to"], "object": "MV021ho", "name": "experiment instance"}}]	13	1
497	2019-04-29 00:13:32.945382+00	MV014	MV014	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["ship_to"], "object": "MV014ho", "name": "experiment instance"}}, {"changed": {"fields": ["raid"], "object": "MV014cd", "name": "experiment instance"}}]	13	1
498	2019-04-29 00:13:39.621842+00	MV013	MV013	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["ship_to"], "object": "MV013ho", "name": "experiment instance"}}]	13	1
499	2019-04-29 00:13:46.653777+00	MV012	MV012	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["raid", "ship_to"], "object": "MV012ho", "name": "experiment instance"}}, {"changed": {"fields": ["raid"], "object": "MV012cd", "name": "experiment instance"}}]	13	1
500	2019-04-29 00:13:52.974837+00	MV011	MV011	2	[{"changed": {"fields": ["correlation_status"]}}, {"changed": {"fields": ["raid", "ship_to"], "object": "MV011ho", "name": "experiment instance"}}]	13	1
501	2019-04-29 00:14:06.627721+00	MV023	MV023	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
502	2019-04-29 00:14:12.456192+00	MV041	MV041	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
503	2019-04-29 00:14:20.031159+00	MV024	MV024	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
504	2019-04-29 00:14:25.538824+00	MV025	MV025	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
505	2019-04-29 00:14:31.773988+00	MV026	MV026	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
506	2019-04-29 00:15:35.473736+00	MV027	MV027	2	[{"changed": {"fields": ["module_to_raid"], "object": "MV027cd", "name": "experiment instance"}}, {"changed": {"fields": ["module_to_raid"], "object": "MV027ho", "name": "experiment instance"}}, {"changed": {"fields": ["raid"], "object": "MV027ke", "name": "experiment instance"}}, {"changed": {"fields": ["raid"], "object": "MV027yg", "name": "experiment instance"}}]	13	1
507	2019-04-29 22:48:54.009386+00	BKG-0026	BKG-0026	1	[{"added": {}}]	12	1
508	2019-05-01 05:45:43.231449+00	R4892	R4892	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "R4892yg"}}]	13	1
509	2019-05-03 03:17:14.666061+00	V447I	V447I	1	[{"added": {}}, {"added": {"object": "V447Ike", "name": "experiment instance"}}, {"added": {"object": "V447Iyg", "name": "experiment instance"}}, {"added": {"object": "V447Iho", "name": "experiment instance"}}]	13	1
510	2019-05-03 03:19:13.626166+00	MV028	MV028	2	[{"changed": {"fields": ["type"]}}, {"changed": {"object": "MV028ke", "fields": ["sched_size", "rec_size"], "name": "experiment instance"}}, {"changed": {"object": "MV028yg", "fields": ["sched_size", "rec_size"], "name": "experiment instance"}}, {"changed": {"object": "MV028ho", "fields": ["sched_size", "rec_size"], "name": "experiment instance"}}, {"changed": {"object": "MV028cd", "fields": ["sched_size", "rec_size"], "name": "experiment instance"}}]	13	1
511	2019-05-03 03:22:15.771318+00	R4893	R4893	2	[{"added": {"object": "R4893ke", "name": "experiment instance"}}]	13	1
512	2019-05-13 00:43:34.906957+00	MV028	MV028	2	[{"changed": {"object": "MV028ho", "fields": ["module_to_raid", "transfer_to_correlator"], "name": "experiment instance"}}]	13	1
513	2019-05-13 01:34:10.327318+00	DYN001	DYN001	1	[{"added": {}}, {"added": {"object": "DYN001ke", "name": "experiment instance"}}, {"added": {"object": "DYN001yg", "name": "experiment instance"}}]	13	1
514	2019-05-13 01:34:44.501969+00	DYN002	DYN002	1	[{"added": {}}, {"added": {"object": "DYN002ke", "name": "experiment instance"}}, {"added": {"object": "DYN002yg", "name": "experiment instance"}}]	13	1
515	2019-05-13 01:35:31.31802+00	DYN003	DYN003	1	[{"added": {}}, {"added": {"object": "DYN003ke", "name": "experiment instance"}}, {"added": {"object": "DYN003yg", "name": "experiment instance"}}]	13	1
516	2019-05-13 01:36:34.944407+00	DYN001	DYN001	2	[{"changed": {"fields": ["schedate"]}}]	13	1
517	2019-05-13 01:36:50.846471+00	DYN002	DYN002	2	[{"changed": {"fields": ["schedate"]}}]	13	1
518	2019-05-13 01:37:17.792449+00	DYN003	DYN003	2	[{"changed": {"fields": ["schedate"]}}]	13	1
519	2019-05-13 03:44:05.783436+00	USN-0147	USN-0147	2	[{"changed": {"fields": ["free"]}}]	12	1
520	2019-05-13 04:13:35.523539+00	T2132	T2132	2	[{"added": {"object": "T2132ke", "name": "experiment instance"}}, {"changed": {"object": "T2132ho", "fields": ["ship_to"], "name": "experiment instance"}}]	13	1
521	2019-05-14 02:06:12.632574+00	MPI-0510	MPI-0510	2	[{"changed": {"fields": ["free"]}}]	12	1
522	2019-05-14 02:07:05.584877+00	MPI-0510	MPI-0510	2	[{"changed": {"fields": ["free"]}}]	12	1
523	2019-05-14 02:07:33.246693+00	MPI-0510	MPI-0510	2	[{"changed": {"fields": ["free"]}}]	12	1
524	2019-05-14 02:07:59.492957+00	MPI-0510	MPI-0510	2	[{"changed": {"fields": ["free"]}}]	12	1
525	2019-05-14 02:08:52.678519+00	MPI-0510	MPI-0510	2	[{"changed": {"fields": ["free"]}}]	12	1
526	2019-05-14 02:09:08.416753+00	MPI-0510	MPI-0510	2	[{"changed": {"fields": ["free"]}}]	12	1
527	2019-05-15 05:23:53.634393+00	V447I	V447I	2	[{"added": {"object": "V447Iti", "name": "experiment instance"}}]	13	1
528	2019-05-15 05:26:09.655076+00	762	T2132yg	2	[]	9	1
529	2019-05-15 05:26:36.241931+00	762	T2132yg	3		9	1
530	2019-05-15 05:39:21.248455+00	764	R4895yg	3		9	1
531	2019-05-15 05:39:49.280325+00	765	R1896yg	3		9	1
532	2019-05-15 23:11:19.741216+00	R4894	R4894	2	[{"added": {"object": "R4894ke", "name": "experiment instance"}}, {"changed": {"object": "R4894yg", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
533	2019-05-20 00:11:22.40904+00	VX028A	VX028A	1	[{"added": {}}, {"added": {"object": "VX028Aho", "name": "experiment instance"}}]	13	1
534	2019-05-20 00:11:42.35279+00	VX028A	VX028A	2	[{"changed": {"fields": ["schedate"]}}]	13	1
535	2019-05-20 00:13:16.100429+00	VX028A	VX028A	2	[{"changed": {"object": "VX028Aho", "fields": ["sched_size", "rec_size"], "name": "experiment instance"}}]	13	1
536	2019-05-22 03:55:54.303114+00	VX026A	VX026A	2	[{"added": {"object": "VX026Aho", "name": "experiment instance"}}]	13	1
537	2019-05-23 03:12:09.213856+00	R4895	R4895	2	[{"added": {"object": "R4895ke", "name": "experiment instance"}}]	13	1
538	2019-05-23 03:12:35.284247+00	R4896	R4896	2	[{"added": {"object": "R4896ke", "name": "experiment instance"}}, {"changed": {"object": "R4896yg", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
539	2019-05-23 03:12:56.99103+00	R4897	R4897	2	[{"added": {"object": "R4897ke", "name": "experiment instance"}}, {"changed": {"object": "R4897yg", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
540	2019-05-23 03:13:33.176169+00	R4898	R4898	2	[{"added": {"object": "R4898ke", "name": "experiment instance"}}, {"changed": {"object": "R4898yg", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
541	2019-05-23 03:13:54.501316+00	R4899	R4899	2	[{"added": {"object": "R4899ke", "name": "experiment instance"}}, {"changed": {"object": "R4899yg", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
542	2019-05-24 01:48:41.811646+00	VX026B	VX026B	2	[{"added": {"object": "VX026Bho", "name": "experiment instance"}}]	13	1
543	2019-05-27 00:46:30.827358+00	R1896	R1896	2	[{"added": {"object": "R1896ke", "name": "experiment instance"}}]	13	1
544	2019-05-28 02:33:59.747688+00	R1897	R1897	2	[{"added": {"object": "R1897ke", "name": "experiment instance"}}]	13	1
545	2019-05-28 02:34:25.672474+00	R1898	R1898	2	[{"added": {"object": "R1898ke", "name": "experiment instance"}}]	13	1
546	2019-05-28 02:34:45.310722+00	R1899	R1899	2	[{"added": {"object": "R1899ke", "name": "experiment instance"}}]	13	1
547	2019-05-28 02:35:57.888287+00	OHG119	OHG119	2	[{"added": {"object": "OHG119ke", "name": "experiment instance"}}, {"changed": {"object": "OHG119ho", "fields": ["ship_to"], "name": "experiment instance"}}]	13	1
548	2019-05-30 01:36:01.165484+00	CURT-001	CURT-001	3		12	1
549	2019-05-30 01:36:18.191756+00	CURT-102	CURT-102	2	[{"changed": {"fields": ["modified"]}}]	12	1
550	2019-05-30 05:33:48.721338+00	R4896	R4896	2	[{"changed": {"name": "experiment instance", "object": "R4896", "fields": ["station"]}}]	13	1
551	2019-06-04 23:52:56.052362+00	BKG-0041	BKG-0041	2	[{"changed": {"fields": ["free"]}}]	12	1
552	2019-06-05 04:21:51.388315+00	V447I	V447I	2	[{"added": {"name": "experiment instance", "object": "V447Icd"}}, {"changed": {"name": "experiment instance", "fields": ["raid"], "object": "V447Ike"}}]	13	1
553	2019-06-06 05:09:44.37273+00	flexbuf3	flexbuf3	1	[{"added": {}}]	8	1
554	2019-06-06 05:13:09.230756+00	AUSTRAL1	AUSTRAL1	1	[{"added": {}}]	8	1
555	2019-06-06 05:29:13.670704+00	AOV035	AOV035	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "AOV035ho"}}]	13	1
556	2019-06-07 00:38:42.046705+00	DYN005	DYN005	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN005ke"}}, {"added": {"name": "experiment instance", "object": "DYN005yg"}}, {"added": {"name": "experiment instance", "object": "DYN005hb"}}]	13	1
557	2019-06-07 00:39:32.835018+00	DYN005	DYN005	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "DYN005ke"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "DYN005yg"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "DYN005hb"}}]	13	1
558	2019-06-07 00:41:53.465142+00	DYN006	DYN006	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN006ke"}}, {"added": {"name": "experiment instance", "object": "DYN006yg"}}, {"added": {"name": "experiment instance", "object": "DYN006hb"}}]	13	1
559	2019-06-07 00:42:35.035479+00	DYN007	DYN007	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN007ke"}}, {"added": {"name": "experiment instance", "object": "DYN007yg"}}, {"added": {"name": "experiment instance", "object": "DYN007hb"}}]	13	1
560	2019-06-07 00:43:13.715681+00	DYN008	DYN008	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN008ke"}}, {"added": {"name": "experiment instance", "object": "DYN008yg"}}, {"added": {"name": "experiment instance", "object": "DYN008hb"}}]	13	1
561	2019-06-13 04:15:40.034557+00	HOB+0128	HOB+0128	2	[{"changed": {"fields": ["location", "transit"]}}]	12	1
562	2019-06-13 04:17:37.703327+00	MPI+0817	MPI+0817	2	[{"changed": {"fields": ["location", "transit"]}}]	12	1
563	2019-06-13 04:18:18.129086+00	MAT+0008	MAT+0008	2	[{"changed": {"fields": ["free", "location", "ship", "transit"]}}]	12	1
564	2019-06-13 04:19:18.784016+00	NTO-0023	NTO-0023	2	[{"changed": {"fields": ["free", "location", "transit"]}}]	12	1
565	2019-06-13 04:22:58.444504+00	NRAO-172	NRAO-172	1	[{"added": {}}]	12	1
566	2019-06-13 04:23:38.148772+00	HOB+0025	HOB+0025	2	[{"changed": {"fields": ["modified", "location", "transit"]}}]	12	1
567	2019-06-13 04:23:56.565165+00	HOB+0100	HOB+0100	2	[{"changed": {"fields": ["modified", "location", "transit"]}}]	12	1
568	2019-06-13 04:24:26.874093+00	HOB+0043	HOB+0043	2	[{"changed": {"fields": ["modified", "location", "ship", "transit"]}}]	12	1
569	2019-06-24 01:03:50.913364+00	HOB+0098	HOB+0098	2	[{"changed": {"fields": ["size"]}}]	12	1
570	2019-06-24 23:39:33.71202+00	782	CRD103yg	2	[{"changed": {"fields": ["ship_to"]}}]	9	1
571	2019-06-24 23:39:54.633509+00	1002	CRD103ke	2	[{"changed": {"fields": ["ship_to"]}}]	9	1
572	2019-06-24 23:41:46.600952+00	R4900	R4900	2	[{"added": {"name": "experiment instance", "object": "R4900ke"}}, {"changed": {"name": "experiment instance", "object": "R4900yg", "fields": ["sched_size"]}}]	13	1
573	2019-06-24 23:42:10.606974+00	R4901	R4901	2	[{"added": {"name": "experiment instance", "object": "R4901ke"}}]	13	1
574	2019-06-24 23:42:23.018889+00	R4902	R4902	2	[{"added": {"name": "experiment instance", "object": "R4902ke"}}]	13	1
575	2019-06-30 23:15:35.931257+00	DYN009	DYN009	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN009hb"}}, {"added": {"name": "experiment instance", "object": "DYN009ke"}}, {"added": {"name": "experiment instance", "object": "DYN009yg"}}]	13	1
576	2019-06-30 23:16:23.980041+00	DYN010	DYN010	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN010hb"}}, {"added": {"name": "experiment instance", "object": "DYN010ke"}}, {"added": {"name": "experiment instance", "object": "DYN010yg"}}]	13	1
577	2019-06-30 23:16:57.194194+00	DYN011	DYN011	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN011hb"}}, {"added": {"name": "experiment instance", "object": "DYN011ke"}}, {"added": {"name": "experiment instance", "object": "DYN011yg"}}]	13	1
578	2019-06-30 23:17:31.490662+00	DYN012	DYN012	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "DYN012hb"}}, {"added": {"name": "experiment instance", "object": "DYN012ke"}}, {"added": {"name": "experiment instance", "object": "DYN012yg"}}]	13	1
579	2019-06-30 23:18:26.881474+00	DYN011	DYN011	2	[{"changed": {"fields": ["schedate"]}}]	13	1
580	2019-06-30 23:18:42.690889+00	DYN012	DYN012	2	[{"changed": {"fields": ["schedate"]}}]	13	1
581	2019-07-08 03:33:14.352699+00	VX028A	VX028A	2	[{"added": {"name": "experiment instance", "object": "VX028Akb"}}, {"added": {"name": "experiment instance", "object": "VX028Ahi"}}, {"added": {"name": "experiment instance", "object": "VX028Aya"}}]	13	1
582	2019-07-08 04:18:46.889171+00	RUA031	RUA031	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "RUA031hb"}}]	13	1
583	2019-07-09 02:00:31.120833+00	BKG+1041	BKG+1041	3		12	1
584	2019-07-09 03:47:33.937993+00	AUA054	AUA054	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size", "ship_to"], "object": "AUA054ho"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "AUA054ke"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "AUA054yg"}}]	13	1
585	2019-07-22 23:40:08.287202+00	HOB+0113	HOB+0113	2	[{"changed": {"fields": ["free"]}}]	12	1
586	2019-07-26 04:15:05.16024+00	A0V037	A0V037	3		13	1
587	2019-08-01 01:55:41.09309+00	R1906	R1906	2	[{"added": {"name": "experiment instance", "object": "R1906ke"}}, {"changed": {"name": "experiment instance", "object": "R1906yg", "fields": ["sched_size"]}}]	13	1
588	2019-08-01 03:50:29.03085+00	MV013b	MV013b	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV013bke"}}, {"added": {"name": "experiment instance", "object": "MV013byg"}}, {"added": {"name": "experiment instance", "object": "MV013bcd"}}, {"added": {"name": "experiment instance", "object": "MV013bho"}}]	13	1
589	2019-08-01 03:51:42.208612+00	MV014B	MV014B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV014B"}}, {"added": {"name": "experiment instance", "object": "MV014B"}}, {"added": {"name": "experiment instance", "object": "MV014Bcd"}}, {"added": {"name": "experiment instance", "object": "MV014Bho"}}]	13	1
590	2019-08-01 03:52:13.764972+00	MV014B	MV014B	2	[{"changed": {"name": "experiment instance", "object": "MV014Bke", "fields": ["station"]}}, {"changed": {"name": "experiment instance", "object": "MV014Byg", "fields": ["station"]}}, {"changed": {"name": "experiment instance", "object": "MV014Bho", "fields": ["module"]}}]	13	1
591	2019-08-01 03:55:35.196411+00	MV013b	MV013b	2	[]	13	1
592	2019-08-01 03:58:46.629696+00	MV015	MV015	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "MV015ke"}}, {"added": {"name": "experiment instance", "object": "MV015yg"}}, {"added": {"name": "experiment instance", "object": "MV015cd"}}, {"added": {"name": "experiment instance", "object": "MV015ho"}}]	13	1
593	2019-08-01 04:05:20.271839+00	MV013b	MV013b	2	[{"changed": {"fields": ["schedate"]}}]	13	1
594	2019-08-01 04:05:42.840788+00	MV014B	MV014B	2	[{"changed": {"fields": ["schedate"]}}]	13	1
595	2019-08-01 04:06:00.409097+00	MV015	MV015	2	[{"changed": {"fields": ["schedate"]}}]	13	1
596	2019-08-02 02:02:39.364398+00	USN-0194	USN-0194	2	[{"changed": {"fields": ["free", "location", "ship", "transit"]}}]	12	1
597	2019-08-02 02:03:25.923694+00	USN-0130	USN-0130	2	[{"changed": {"fields": ["location", "ship", "transit"]}}]	12	1
598	2019-08-02 02:04:10.578077+00	HAY-0030	HAY-0030	2	[{"changed": {"fields": ["location", "ship", "transit"]}}]	12	1
599	2019-08-02 02:04:50.512763+00	BKG+0141	BKG+0141	2	[{"changed": {"fields": ["location", "ship", "transit"]}}]	12	1
600	2019-08-05 06:16:50.683321+00	CRD104	CRD104	2	[{"added": {"name": "experiment instance", "object": "CRD104ke"}}, {"changed": {"name": "experiment instance", "object": "CRD104ho", "fields": ["sched_size", "ship_to"]}}, {"changed": {"name": "experiment instance", "object": "CRD104yg", "fields": ["sched_size"]}}]	13	1
601	2019-08-09 00:31:02.529357+00	R1907	R1907	2	[{"added": {"object": "R1907ke", "name": "experiment instance"}}]	13	1
647	2019-11-29 04:06:05.883797+00	V560D	V560D	2	[{"added": {"object": "V560Dcd", "name": "experiment instance"}}, {"added": {"object": "V560Dho", "name": "experiment instance"}}]	13	1
602	2019-08-09 00:41:07.442895+00	MV042	MV042	1	[{"added": {}}, {"added": {"object": "MV042ke", "name": "experiment instance"}}, {"added": {"object": "MV042yg", "name": "experiment instance"}}, {"added": {"object": "MV042cd", "name": "experiment instance"}}, {"added": {"object": "MV042hb", "name": "experiment instance"}}, {"added": {"object": "MV042ho", "name": "experiment instance"}}]	13	1
603	2019-08-09 00:42:05.526461+00	MV042	MV042	2	[{"changed": {"fields": ["schedate"]}}]	13	1
604	2019-08-09 00:43:06.525798+00	OHG120	OHG120	2	[{"added": {"object": "OHG120ke", "name": "experiment instance"}}, {"changed": {"object": "OHG120ho", "fields": ["ship_to"], "name": "experiment instance"}}]	13	1
605	2019-08-13 03:36:12.613347+00	R1908	R1908	2	[{"added": {"object": "R1908ke", "name": "experiment instance"}}]	13	1
606	2019-08-15 02:16:32.78158+00	R1908	R1908	2	[{"changed": {"object": "R1908", "name": "experiment instance", "fields": ["station"]}}]	13	1
607	2019-09-09 05:54:36.068774+00	VX026D	VX026D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VX026Dho"}}, {"added": {"name": "experiment instance", "object": "VX026Dcd"}}]	13	1
608	2019-09-11 05:19:51.167654+00	AOV039	AOV039	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"name": "experiment instance", "fields": ["sched_size", "ship_to"], "object": "AOV039ho"}}, {"changed": {"name": "experiment instance", "fields": ["station"], "object": "AOV039"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "AOV039yg"}}]	13	1
609	2019-09-11 05:24:40.355077+00	R1912	R1912	2	[{"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "R1912yg"}}]	13	1
610	2019-09-16 04:07:13.327979+00	R4912	R4912	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4912yg"}}]	13	1
611	2019-09-23 04:02:12.263072+00	V252BS	V252BS	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V252BSho"}}, {"added": {"name": "experiment instance", "object": "V252BScd"}}]	13	1
612	2019-09-23 04:03:05.415146+00	V544E	V544E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V544Ecd"}}, {"added": {"name": "experiment instance", "object": "V544Eho"}}]	13	1
613	2019-09-23 04:03:55.90163+00	V252BS	V252BS	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "V252BSho"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "V252BScd"}}]	13	1
614	2019-09-23 04:04:50.657333+00	V576A	V576A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V576Acd"}}, {"added": {"name": "experiment instance", "object": "V576Aho"}}]	13	1
615	2019-10-02 04:13:59.123961+00	AUA057	AUA057	2	[{"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "AUA057ho"}}, {"changed": {"name": "experiment instance", "fields": ["station"], "object": "AUA057"}}]	13	1
616	2019-10-02 23:54:25.65156+00	R4914	R4914	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4914yg"}}]	13	1
617	2019-10-02 23:55:09.052185+00	R4915	R4915	2	[{"changed": {"fields": ["type"]}}, {"added": {"name": "experiment instance", "object": "R4915yg"}}, {"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "R4915ho"}}]	13	1
618	2019-10-03 00:05:46.39476+00	R4916	R4916	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4916yg"}}]	13	1
619	2019-10-03 00:06:13.776504+00	R4917	R4917	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4917yg"}}]	13	1
620	2019-10-03 00:06:47.165073+00	R4918	R4918	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4918yg"}}]	13	1
621	2019-10-03 00:07:43.03754+00	R4919	R4919	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4919yg"}}]	13	1
622	2019-10-03 00:08:29.653319+00	R4920	R4920	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4920yg"}}]	13	1
623	2019-10-03 00:10:01.463688+00	R4921	R4921	2	[{"added": {"name": "experiment instance", "object": "R4921yg"}}, {"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "R4921ho"}}]	13	1
624	2019-10-03 00:11:08.025117+00	R4922	R4922	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4922yg"}}]	13	1
625	2019-10-03 00:11:39.10858+00	R4923	R4923	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4923yg"}}]	13	1
626	2019-10-03 00:12:22.511237+00	R4924	R4924	2	[{"added": {"name": "experiment instance", "object": "R4924yg"}}, {"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "R4924ho"}}]	13	1
627	2019-10-03 00:13:02.904418+00	R4925	R4925	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R4925yg"}}]	13	1
628	2019-10-21 00:03:13.764113+00	R1918	R1918	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1918yg"}}]	13	1
629	2019-10-21 00:03:50.44815+00	R1919	R1919	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1919yg"}}]	13	1
630	2019-10-21 00:04:31.70973+00	R1920	R1920	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1920yg"}}]	13	1
631	2019-10-21 00:04:53.964012+00	R1921	R1921	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1921yg"}}]	13	1
632	2019-10-21 00:05:28.824515+00	R1922	R1922	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1922yg"}}]	13	1
633	2019-10-21 00:05:48.617091+00	R1923	R1923	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1923yg"}}]	13	1
634	2019-10-21 00:06:19.75541+00	R1924	R1924	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1924yg"}}]	13	1
635	2019-10-21 00:07:21.823226+00	R1925	R1925	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1925yg"}}]	13	1
636	2019-10-21 02:51:55.269847+00	4	grafana	1	[{"added": {}}]	3	1
637	2019-10-21 02:53:16.282101+00	4	grafana	2	[]	3	1
638	2019-10-21 03:48:16.079245+00	4	grafana	3		3	1
639	2019-10-30 03:09:35.972505+00	MPI-0153	MPI-0153	2	[{"changed": {"fields": ["free", "location", "ship", "transit"]}}]	12	1
640	2019-10-30 03:10:04.231766+00	HOB+0025	HOB+0025	2	[{"changed": {"fields": ["free", "location", "ship", "transit"]}}]	12	1
641	2019-10-30 03:10:29.743098+00	USN-0150	USN-0150	2	[{"changed": {"fields": ["free", "location", "ship", "transit"]}}]	12	1
642	2019-10-30 03:10:55.85387+00	UVLBI+83	UVLBI+83	2	[{"changed": {"fields": ["free", "modified", "location", "ship", "transit"]}}]	12	1
643	2019-11-05 22:21:23.679376+00	BKG-0141	BKG-0141	3		12	1
644	2019-11-05 22:27:18.974169+00	OHG122	OHG122	2	[{"changed": {"object": "OHG122yg", "fields": ["ship_to"], "name": "experiment instance"}}, {"changed": {"object": "OHG122ho", "fields": ["ship_to"], "name": "experiment instance"}}]	13	1
645	2019-11-06 04:01:21.552139+00	AOV041	AOV041	2	[{"changed": {"fields": ["correlator", "type"]}}, {"changed": {"object": "AOV041ho", "name": "experiment instance", "fields": ["ship_to"]}}, {"changed": {"object": "AOV041", "name": "experiment instance", "fields": ["sched_size", "station", "ship_to"]}}]	13	1
646	2019-11-17 22:41:35.642131+00	V558D	V558D	1	[{"added": {}}, {"added": {"object": "V558Dcd", "name": "experiment instance"}}, {"added": {"object": "V558Dho", "name": "experiment instance"}}]	13	1
648	2019-12-06 03:46:42.600757+00	T2136	T2136	2	[{"added": {"object": "T2136yg", "name": "experiment instance"}}, {"changed": {"object": "T2136ho", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
649	2019-12-09 02:12:22.094299+00	V447J	V447J	1	[{"added": {}}, {"added": {"object": "V447Jho", "name": "experiment instance"}}, {"added": {"object": "V447Jyg", "name": "experiment instance"}}, {"added": {"object": "V447Jke", "name": "experiment instance"}}, {"added": {"object": "V447Jcd", "name": "experiment instance"}}]	13	1
650	2019-12-09 02:14:17.596503+00	V447J	V447J	2	[{"changed": {"fields": ["schedate"]}}]	13	1
651	2019-12-09 02:20:05.470854+00	V447J	V447J	2	[{"changed": {"object": "V447Jho", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V447Jyg", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V447Jke", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V447Jcd", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
652	2019-12-12 01:36:16.085603+00	V255AH	V255AH	1	[{"added": {}}, {"added": {"object": "V255AHho", "name": "experiment instance"}}, {"added": {"object": "V255AHcd", "name": "experiment instance"}}]	13	1
653	2019-12-12 01:39:16.145461+00	V581A	V581A	1	[{"added": {}}, {"added": {"object": "V581Aho", "name": "experiment instance"}}, {"added": {"object": "V581Acd", "name": "experiment instance"}}]	13	1
654	2019-12-12 01:41:16.094596+00	V525F	V525F	1	[{"added": {}}, {"added": {"object": "V525Fho", "name": "experiment instance"}}, {"added": {"object": "V525Fcd", "name": "experiment instance"}}]	13	1
655	2019-12-18 04:16:53.759+00	1106	R1925yg	2	[{"changed": {"fields": ["sched_size"]}}]	9	1
656	2020-01-01 22:55:25.158367+00	HOB+0056	HOB+0056	2	[{"changed": {"fields": ["vsn", "modified"]}}]	12	1
657	2020-01-01 22:55:44.590138+00	HOB+0056	HOB+0056	2	[]	12	1
658	2020-01-01 22:56:05.567268+00	HOB=0056	HOB=0056	3		12	1
659	2020-01-01 23:43:18.351035+00	R1928	R1928	1	[{"added": {}}, {"added": {"object": "R1928yg", "name": "experiment instance"}}]	13	1
660	2020-01-01 23:47:06.577694+00	R4927	R4927	2	[{"changed": {"fields": ["type"]}}, {"changed": {"fields": ["sched_size"], "object": "R4927yg", "name": "experiment instance"}}]	13	1
661	2020-01-13 04:34:04.590802+00	WSRT-041	WSRT-041	2	[{"changed": {"fields": ["free"]}}]	12	1
662	2020-01-13 04:34:17.692545+00	USN-0070	USN-0070	2	[{"changed": {"fields": ["free"]}}]	12	1
663	2020-01-13 04:34:31.957923+00	TR-00011	TR-00011	2	[{"changed": {"fields": ["free"]}}]	12	1
664	2020-01-13 04:34:48.108587+00	HAY-0047	HAY-0047	2	[{"changed": {"fields": ["free"]}}]	12	1
665	2020-01-13 04:35:03.659187+00	BKG-0041	BKG-0041	2	[{"changed": {"fields": ["free"]}}]	12	1
666	2020-01-14 02:54:31.102148+00	UVLBI+83	UVLBI+83	2	[{"changed": {"fields": ["free", "modified", "ship"]}}]	12	1
667	2020-01-20 02:23:48.321303+00	V255AH	V255AH	2	[{"added": {"object": "V255AHke", "name": "experiment instance"}}]	13	1
668	2020-01-21 01:29:53.156637+00	V447J	V447J	2	[{"added": {"object": "V447Jke", "name": "experiment instance"}}, {"changed": {"object": "V447Jyg", "name": "experiment instance", "fields": ["raid"]}}, {"changed": {"object": "V447Jcd", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
669	2020-01-21 01:30:40.752331+00	V581A	V581A	2	[{"added": {"object": "V581Ake", "name": "experiment instance"}}]	13	1
670	2020-01-29 03:29:26.14154+00	AUM011	AUM011	1	[{"added": {}}, {"added": {"object": "AUM011yg", "name": "experiment instance"}}, {"added": {"object": "AUM011ke", "name": "experiment instance"}}, {"added": {"object": "AUM011hb", "name": "experiment instance"}}]	13	1
671	2020-02-03 05:39:23.591485+00	V253D	V253D	1	[{"added": {}}, {"added": {"object": "V253Dho", "name": "experiment instance"}}, {"added": {"object": "V253Dcd", "name": "experiment instance"}}, {"added": {"object": "V253Dyg", "name": "experiment instance"}}, {"added": {"object": "V253Dke", "name": "experiment instance"}}, {"added": {"object": "V253Dti", "name": "experiment instance"}}]	13	1
672	2020-02-03 05:41:14.954662+00	V191C	V191C	1	[{"added": {}}, {"added": {"object": "V191Cho", "name": "experiment instance"}}, {"added": {"object": "V191Ccd", "name": "experiment instance"}}, {"added": {"object": "V191Cke", "name": "experiment instance"}}, {"added": {"object": "V191Cyg", "name": "experiment instance"}}, {"added": {"object": "V191Cti", "name": "experiment instance"}}]	13	1
673	2020-02-03 05:42:43.654509+00	V252BT	V252BT	1	[{"added": {}}, {"added": {"object": "V252BTho", "name": "experiment instance"}}, {"added": {"object": "V252BTcd", "name": "experiment instance"}}, {"added": {"object": "V252BTke", "name": "experiment instance"}}, {"added": {"object": "V252BTyg", "name": "experiment instance"}}, {"added": {"object": "V252BTti", "name": "experiment instance"}}]	13	1
674	2020-02-03 05:43:50.924784+00	V587A	V587A	1	[{"added": {}}, {"added": {"object": "V587Aho", "name": "experiment instance"}}, {"added": {"object": "V587Acd", "name": "experiment instance"}}, {"added": {"object": "V587Ake", "name": "experiment instance"}}, {"added": {"object": "V587Ayg", "name": "experiment instance"}}, {"added": {"object": "V587Ati", "name": "experiment instance"}}]	13	1
675	2020-02-03 05:44:39.431512+00	V560E	V560E	1	[{"added": {}}, {"added": {"object": "V560Eho", "name": "experiment instance"}}, {"added": {"object": "V560Ecd", "name": "experiment instance"}}]	13	1
676	2020-02-06 03:28:46.695468+00	HOB+0044	HOB+0044	2	[{"changed": {"fields": ["size", "free", "modified", "location", "ship", "transit"]}}]	12	1
677	2020-02-06 03:29:54.471776+00	USN-0192	USN-0192	2	[{"changed": {"fields": ["free", "location", "ship", "transit"]}}]	12	1
678	2020-02-06 03:30:33.637443+00	HOB+0129	HOB+0129	2	[{"changed": {"fields": ["free", "modified", "location", "ship", "transit"]}}]	12	1
679	2020-02-06 03:53:09.925713+00	CRD105	CRD105	2	[{"changed": {"object": "CRD105yg", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
680	2020-02-06 03:53:36.277999+00	R4932	R4932	2	[]	13	1
681	2020-02-06 03:55:19.385009+00	T2123	T2123	2	[{"changed": {"object": "T2123ho", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
682	2020-02-06 03:55:57.535541+00	T2137	T2137	2	[{"changed": {"object": "T2137yg", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
683	2020-02-07 02:58:49.090044+00	HOB+0021	HOB+0021	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
684	2020-02-11 00:55:15.562411+00	HOB+0033	HOB+0033	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
685	2020-02-12 00:12:39.571752+00	ED045A	ED045A	1	[{"added": {}}, {"added": {"object": "ED045Aho", "name": "experiment instance"}}]	13	1
686	2020-02-12 00:13:18.098465+00	ED045B	ED045B	1	[{"added": {}}, {"added": {"object": "ED045B", "name": "experiment instance"}}]	13	1
687	2020-02-12 00:14:11.440363+00	ED045B	ED045B	2	[{"changed": {"object": "ED045Bho", "name": "experiment instance", "fields": ["station"]}}]	13	1
688	2020-02-12 00:19:01.756243+00	AOV044	AOV044	2	[{"changed": {"object": "AOV044yg", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
689	2020-02-13 23:43:26.915824+00	AUM012	AUM012	1	[{"added": {}}, {"added": {"object": "AUM012ke", "name": "experiment instance"}}, {"added": {"object": "AUM012yg", "name": "experiment instance"}}]	13	1
690	2020-02-13 23:44:06.970902+00	AUM013	AUM013	1	[{"added": {}}, {"added": {"object": "AUM013ke", "name": "experiment instance"}}, {"added": {"object": "AUM013yg", "name": "experiment instance"}}]	13	1
691	2020-02-13 23:44:40.600001+00	AUM014	AUM014	1	[{"added": {}}, {"added": {"object": "AUM014ke", "name": "experiment instance"}}, {"added": {"object": "AUM014yg", "name": "experiment instance"}}]	13	1
692	2020-02-13 23:49:03.854131+00	AUM014	AUM014	2	[{"changed": {"fields": ["schedate"]}}, {"changed": {"object": "AUM014ke", "name": "experiment instance", "fields": ["ship_to"]}}, {"changed": {"object": "AUM014yg", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
693	2020-02-13 23:49:30.023401+00	AUM013	AUM013	2	[{"changed": {"fields": ["schedate"]}}]	13	1
694	2020-02-13 23:49:51.790099+00	AUM012	AUM012	2	[]	13	1
695	2020-02-18 23:54:02.310551+00	V525F	V525F	2	[{"added": {"object": "V525Fke", "name": "experiment instance"}}]	13	1
696	2020-03-15 22:03:30.579545+00	AUA062	AUA062	2	[{"added": {"object": "AUA062hb", "name": "experiment instance"}}, {"added": {"object": "AUA062ke", "name": "experiment instance"}}, {"changed": {"object": "AUA062yg", "name": "experiment instance", "fields": ["ship_to"]}}, {"changed": {"object": "AUA062ho", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
697	2020-03-15 23:19:20.820067+00	R1936	R1936	2	[{"changed": {"object": "R1936", "name": "experiment instance", "fields": ["station"]}}]	13	1
698	2020-03-16 03:28:02.905318+00	V191D	V191D	1	[{"added": {}}, {"added": {"object": "V191Dho", "name": "experiment instance"}}, {"added": {"object": "V191Dcd", "name": "experiment instance"}}, {"added": {"object": "V191Dke", "name": "experiment instance"}}]	13	1
699	2020-03-16 03:29:54.979787+00	V253E	V253E	1	[{"added": {}}, {"added": {"object": "V253Eho", "name": "experiment instance"}}, {"added": {"object": "V253Ecd", "name": "experiment instance"}}, {"added": {"object": "V253Eke", "name": "experiment instance"}}]	13	1
700	2020-03-16 03:33:46.114506+00	V588E	V588E	1	[{"added": {}}, {"added": {"object": "V588Eho", "name": "experiment instance"}}, {"added": {"object": "V588Ecd", "name": "experiment instance"}}]	13	1
701	2020-03-16 03:36:44.772919+00	V589A	V589A	1	[{"added": {}}, {"added": {"object": "V589Aho", "name": "experiment instance"}}, {"added": {"object": "V589Acd", "name": "experiment instance"}}, {"added": {"object": "V589Ake", "name": "experiment instance"}}, {"added": {"object": "V589Ayg", "name": "experiment instance"}}]	13	1
702	2020-03-16 03:38:18.2717+00	V252BU	V252BU	1	[{"added": {}}, {"added": {"object": "V252BUho", "name": "experiment instance"}}, {"added": {"object": "V252BUcd", "name": "experiment instance"}}, {"added": {"object": "V252BUti", "name": "experiment instance"}}, {"added": {"object": "V252BUyg", "name": "experiment instance"}}, {"added": {"object": "V252BUke", "name": "experiment instance"}}]	13	1
703	2020-03-16 03:39:13.307989+00	V255AI	V255AI	1	[{"added": {}}, {"added": {"object": "V255AIho", "name": "experiment instance"}}, {"added": {"object": "V255AIcd", "name": "experiment instance"}}, {"added": {"object": "V255AIke", "name": "experiment instance"}}]	13	1
704	2020-03-16 03:40:57.988641+00	V589A	V589A	2	[{"changed": {"object": "V589Aho", "name": "experiment instance", "fields": ["scans", "sched_size"]}}, {"changed": {"object": "V589Acd", "name": "experiment instance", "fields": ["scans", "sched_size"]}}, {"changed": {"object": "V589Ake", "name": "experiment instance", "fields": ["scans", "sched_size"]}}]	13	1
705	2020-03-17 00:53:07.097217+00	V252BU	V252BU	2	[{"changed": {"object": "V252BUho", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V252BUcd", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V252BUti", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V252BUyg", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V252BUke", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
706	2020-03-17 00:54:53.663943+00	V589A	V589A	2	[{"changed": {"object": "V589Ayg", "name": "experiment instance", "fields": ["scans", "sched_size"]}}]	13	1
707	2020-03-17 01:05:43.109377+00	V255AI	V255AI	2	[{"changed": {"object": "V255AIho", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V255AIcd", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "V255AIke", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
708	2020-03-17 02:39:19.275932+00	AOV045	AOV045	2	[{"changed": {"object": "AOV045hb", "name": "experiment instance", "fields": ["sched_size"]}}, {"changed": {"object": "AOV045yg", "name": "experiment instance", "fields": ["sched_size"]}}]	13	1
709	2020-03-17 22:18:48.174853+00	HOB+0132	HOB+0132	2	[{"changed": {"fields": ["free"]}}]	12	1
710	2020-04-01 23:30:13.169384+00	AVS001	AVS001	1	[{"added": {}}, {"added": {"object": "AVS001ke", "name": "experiment instance"}}]	13	1
711	2020-04-15 01:15:52.2481+00	S001D	S001D	1	[{"added": {}}, {"added": {"object": "S001Dke", "name": "experiment instance"}}, {"added": {"object": "S001Dyg", "name": "experiment instance"}}, {"added": {"object": "S001Dho", "name": "experiment instance"}}]	13	1
712	2020-04-24 07:12:26.962014+00	S001E	S001E	1	[{"added": {}}]	13	1
713	2020-04-24 07:14:28.429819+00	S001E	S001E	2	[{"added": {"object": "S001Eke", "name": "experiment instance"}}, {"added": {"object": "S001Ehb", "name": "experiment instance"}}, {"added": {"object": "S001Ecd", "name": "experiment instance"}}]	13	1
714	2020-05-08 04:14:11.007655+00	V588E	V588E	3		13	1
715	2020-05-08 04:15:17.783005+00	V558E	V558E	1	[{"added": {}}, {"added": {"object": "V558Eho", "name": "experiment instance"}}, {"added": {"object": "V558Ecd", "name": "experiment instance"}}]	13	1
716	2020-05-11 06:16:31.908768+00	s001f	s001f	1	[{"added": {}}, {"added": {"object": "s001fke", "name": "experiment instance"}}, {"added": {"object": "s001fhb", "name": "experiment instance"}}, {"added": {"object": "s001fcd", "name": "experiment instance"}}]	13	1
717	2020-05-11 06:58:03.899293+00	s001f	s001f	3		13	1
718	2020-05-11 07:06:08.52992+00	S001F	S001F	1	[{"added": {}}, {"added": {"object": "S001Fke", "name": "experiment instance"}}, {"added": {"object": "S001Fhb", "name": "experiment instance"}}, {"added": {"object": "S001Fcd", "name": "experiment instance"}}]	13	1
719	2020-05-14 03:41:49.277868+00	S001D	S001D	2	[{"added": {"object": "S001Dcd", "name": "experiment instance"}}]	13	1
720	2020-05-22 05:46:28.689161+00	S003A	S003A	1	[{"added": {}}, {"added": {"object": "S003Ake", "name": "experiment instance"}}, {"added": {"object": "S003Ahb", "name": "experiment instance"}}, {"added": {"object": "S003Acd", "name": "experiment instance"}}]	13	1
721	2020-05-24 23:42:24.624113+00	AUM016	AUM016	1	[{"added": {}}, {"added": {"object": "AUM016yg", "name": "experiment instance"}}]	13	1
722	2020-05-24 23:58:37.409447+00	AUM016	AUM016	2	[{"added": {"object": "AUM016hb", "name": "experiment instance"}}, {"added": {"object": "AUM016ke", "name": "experiment instance"}}]	13	1
723	2020-05-29 07:02:44.960193+00	S003B	S003B	1	[{"added": {}}, {"added": {"object": "S003Bhb", "name": "experiment instance"}}, {"added": {"object": "S003Bke", "name": "experiment instance"}}, {"added": {"object": "S003Bcd", "name": "experiment instance"}}]	13	1
724	2020-06-01 23:34:16.215025+00	AUMCT1	AUMCT1	1	[{"added": {}}, {"added": {"object": "AUMCT1ke", "name": "experiment instance"}}, {"added": {"object": "AUMCT1yg", "name": "experiment instance"}}, {"added": {"object": "AUMCT1hb", "name": "experiment instance"}}]	13	1
725	2020-06-01 23:38:12.924828+00	AUMCT1	AUMCT1	2	[{"added": {"name": "experiment instance", "object": "AUMCT1ww"}}]	13	1
726	2020-06-02 02:23:47.692743+00	V586A	V586A	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"name": "experiment instance", "object": "V586Ati", "fields": ["raid"]}}, {"changed": {"name": "experiment instance", "object": "V586Ayg", "fields": ["raid"]}}]	13	1
727	2020-06-04 01:34:18.138131+00	V558E	V558E	2	[{"added": {"name": "experiment instance", "object": "V558Eke"}}]	13	1
728	2020-06-04 22:48:57.727739+00	S003C	S003C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S003Cke"}}, {"added": {"name": "experiment instance", "object": "S003Chb"}}, {"added": {"name": "experiment instance", "object": "S003Ccd"}}]	13	1
729	2020-06-04 22:50:39.592849+00	S003D	S003D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S003Dke"}}, {"added": {"name": "experiment instance", "object": "S003Dhb"}}, {"added": {"name": "experiment instance", "object": "S003Dcd"}}]	13	1
730	2020-06-12 03:49:57.538924+00	V586A	V586A	2	[{"added": {"name": "experiment instance", "object": "V586Acd"}}]	13	1
731	2020-06-12 03:50:52.096022+00	V583A	V583A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V583Acd"}}, {"added": {"name": "experiment instance", "object": "V583Aho"}}]	13	1
732	2020-06-12 04:13:47.735487+00	V586A	V586A	2	[{"changed": {"fields": ["schedate", "type"]}}]	13	1
733	2020-06-12 04:21:12.124636+00	S002A	S002A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S002Ake"}}]	13	1
734	2020-06-15 04:52:53.870477+00	CRF119	CRF119	2	[{"changed": {"fields": ["schedate"]}}]	13	1
735	2020-06-22 03:34:22.09897+00	HOB+0034	HOB+0034	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
736	2020-06-22 04:52:39.396998+00	MSC002	MSC002	1	[{"added": {}}, {"added": {"object": "MSC002ke", "name": "experiment instance"}}, {"added": {"object": "MSC002yg", "name": "experiment instance"}}, {"added": {"object": "MSC002hb", "name": "experiment instance"}}, {"added": {"object": "MSC002ww", "name": "experiment instance"}}]	13	1
737	2020-06-22 04:57:29.826697+00	MSC002	MSC002	2	[{"added": {"object": "MSC002cd", "name": "experiment instance"}}]	13	1
738	2020-06-23 01:45:32.607994+00	USN-0177	USN-0177	2	[{"changed": {"fields": ["vsn", "modified"]}}]	12	1
739	2020-06-23 01:45:51.2647+00	usn-0177	usn-0177	3		12	1
740	2020-06-23 01:47:20.210974+00	BKG-0045	BKG-0045	2	[{"changed": {"fields": ["vsn"]}}]	12	1
741	2020-06-23 01:47:46.959424+00	bkg-0045	bkg-0045	3		12	1
742	2020-06-23 02:42:48.171867+00	T2139	T2139	2	[{"changed": {"fields": ["type"]}}, {"changed": {"object": "T2139yg", "fields": ["ship_to"], "name": "experiment instance"}}]	13	1
743	2020-06-23 02:47:02.10571+00	NRAO-177	NRAO-177	2	[{"changed": {"fields": ["vsn", "modified"]}}]	12	1
744	2020-06-23 02:47:18.994238+00	nrao-177	nrao-177	3		12	1
745	2020-06-24 05:05:34.645351+00	SI0174	SI0174	1	[{"added": {}}, {"added": {"object": "SI0174yg", "name": "experiment instance"}}, {"added": {"object": "SI0174hb", "name": "experiment instance"}}]	13	1
746	2020-06-26 01:17:45.258795+00	V587B	V587B	1	[{"added": {}}, {"added": {"object": "V587Bho", "name": "experiment instance"}}, {"added": {"object": "V587Bcd", "name": "experiment instance"}}, {"added": {"object": "V587Bke", "name": "experiment instance"}}, {"added": {"object": "V587Byg", "name": "experiment instance"}}]	13	1
747	2020-06-26 01:21:22.81388+00	V560F	V560F	1	[{"added": {}}, {"added": {"object": "V560Fho", "name": "experiment instance"}}, {"added": {"object": "V560Fcd", "name": "experiment instance"}}]	13	1
748	2020-06-26 01:23:26.238468+00	V591A	V591A	1	[{"added": {}}, {"added": {"object": "V591Aho", "name": "experiment instance"}}, {"added": {"object": "V591Acd", "name": "experiment instance"}}]	13	1
749	2020-06-26 01:25:03.027151+00	V594A	V594A	1	[{"added": {}}, {"added": {"object": "V594Aho", "name": "experiment instance"}}, {"added": {"object": "V594Acd", "name": "experiment instance"}}]	13	1
750	2020-06-26 01:26:50.591219+00	V578A	V578A	1	[{"added": {}}, {"added": {"object": "V578Aho", "name": "experiment instance"}}, {"added": {"object": "V578Acd", "name": "experiment instance"}}]	13	1
751	2020-06-26 01:28:21.280226+00	v594B	v594B	1	[{"added": {}}, {"added": {"object": "v594Bho", "name": "experiment instance"}}, {"added": {"object": "v594Bcd", "name": "experiment instance"}}]	13	1
752	2020-06-26 01:30:47.283207+00	V255AJ	V255AJ	1	[{"added": {}}, {"added": {"object": "V255AJho", "name": "experiment instance"}}, {"added": {"object": "V255AJcd", "name": "experiment instance"}}, {"added": {"object": "V255AJke", "name": "experiment instance"}}]	13	1
753	2020-06-26 01:31:31.074317+00	V591A	V591A	2	[{"changed": {"fields": ["schedate"]}}]	13	1
754	2020-06-28 23:24:16.169192+00	CRF119	CRF119	2	[{"changed": {"object": "CRF119yg", "fields": ["ship_to"], "name": "experiment instance"}}]	13	1
755	2020-06-30 01:24:46.601302+00	V252BV	V252BV	1	[{"added": {}}, {"added": {"object": "V252BVho", "name": "experiment instance"}}, {"added": {"object": "V252BVcd", "name": "experiment instance"}}]	13	1
756	2020-06-30 01:25:43.620177+00	V590A	V590A	1	[{"added": {}}, {"added": {"object": "V590Aho", "name": "experiment instance"}}, {"added": {"object": "V590Acd", "name": "experiment instance"}}]	13	1
757	2020-06-30 01:26:27.234893+00	VT29A	VT29A	1	[{"added": {}}, {"added": {"object": "VT29A", "name": "experiment instance"}}, {"added": {"object": "VT29A", "name": "experiment instance"}}]	13	1
758	2020-06-30 01:27:30.206989+00	V252BW	V252BW	1	[{"added": {}}, {"added": {"object": "V252BWho", "name": "experiment instance"}}, {"added": {"object": "V252BWcd", "name": "experiment instance"}}, {"added": {"object": "V252BWke", "name": "experiment instance"}}, {"added": {"object": "V252BWyg", "name": "experiment instance"}}]	13	1
759	2020-06-30 01:28:29.569705+00	V590B	V590B	1	[{"added": {}}, {"added": {"object": "V590Bho", "name": "experiment instance"}}, {"added": {"object": "V590Bcd", "name": "experiment instance"}}, {"added": {"object": "V590Bke", "name": "experiment instance"}}, {"added": {"object": "V590Byg", "name": "experiment instance"}}]	13	1
760	2020-06-30 01:30:25.733213+00	V583B	V583B	1	[{"added": {}}, {"added": {"object": "V583Btd", "name": "experiment instance"}}, {"added": {"object": "V583Bho", "name": "experiment instance"}}, {"added": {"object": "V583Bcd", "name": "experiment instance"}}, {"added": {"object": "V583Bke", "name": "experiment instance"}}, {"added": {"object": "V583Byg", "name": "experiment instance"}}]	13	1
761	2020-06-30 01:32:14.010987+00	V578B	V578B	1	[{"added": {}}, {"added": {"object": "V578Bcd", "name": "experiment instance"}}, {"added": {"object": "V578Bke", "name": "experiment instance"}}, {"added": {"object": "V578Byg", "name": "experiment instance"}}, {"added": {"object": "V578Btd", "name": "experiment instance"}}]	13	1
806	2020-08-19 02:32:05.572412+00	S005B	S005B	2	[{"added": {"object": "S005Bhb", "name": "experiment instance"}}]	13	1
762	2020-06-30 01:33:13.605931+00	V591B	V591B	1	[{"added": {}}, {"added": {"object": "V591Bho", "name": "experiment instance"}}, {"added": {"object": "V591Bcd", "name": "experiment instance"}}, {"added": {"object": "V591Bke", "name": "experiment instance"}}, {"added": {"object": "V591Byg", "name": "experiment instance"}}]	13	1
763	2020-06-30 02:02:39.473821+00	V590B	V590B	2	[{"changed": {"fields": ["schedate"]}}]	13	1
764	2020-06-30 05:43:18.947321+00	SI0181	SI0181	1	[{"added": {}}, {"added": {"object": "SI0181yg", "name": "experiment instance"}}]	13	1
765	2020-06-30 23:31:57.904689+00	AUM017	AUM017	1	[{"added": {}}, {"added": {"object": "AUM017ke", "name": "experiment instance"}}, {"added": {"object": "AUM017yg", "name": "experiment instance"}}, {"added": {"object": "AUM017hb", "name": "experiment instance"}}]	13	1
766	2020-07-03 02:54:33.185509+00	V586A	V586A	2	[{"added": {"object": "V586Ake", "name": "experiment instance"}}]	13	1
767	2020-07-06 02:39:04.045256+00	SI0092	SI0092	1	[{"added": {}}, {"added": {"object": "SI0092yg", "name": "experiment instance"}}]	13	1
768	2020-07-06 02:48:55.598396+00	SI0188	SI0188	1	[{"added": {}}, {"added": {"object": "SI0188yg", "name": "experiment instance"}}]	13	1
769	2020-07-06 23:55:28.268438+00	AVS003	AVS003	1	[{"added": {}}, {"added": {"object": "AVS003hb", "name": "experiment instance"}}, {"added": {"object": "AVS003ke", "name": "experiment instance"}}]	13	1
770	2020-07-07 23:25:54.971074+00	AUM017	AUM017	2	[{"changed": {"object": "AUM017ke", "fields": ["sched_size"], "name": "experiment instance"}}, {"changed": {"object": "AUM017yg", "fields": ["sched_size"], "name": "experiment instance"}}, {"changed": {"object": "AUM017hb", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
771	2020-07-13 03:07:56.8848+00	V590B	V590B	2	[{"changed": {"fields": ["schedate"]}}]	13	1
772	2020-07-13 03:09:21.00636+00	V583B	V583B	2	[{"changed": {"fields": ["schedate"]}}]	13	1
773	2020-07-13 03:09:28.419941+00	V583B	V583B	2	[]	13	1
774	2020-07-13 05:05:41.787841+00	AUA066	AUA066	2	[{"added": {"object": "AUA066ke", "name": "experiment instance"}}, {"added": {"object": "AUA066yg", "name": "experiment instance"}}, {"added": {"object": "AUA066hb", "name": "experiment instance"}}, {"changed": {"object": "AUA066ho", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
775	2020-07-13 05:09:30.454012+00	AUA066	AUA066	2	[{"changed": {"object": "AUA066ke", "fields": ["sched_size"], "name": "experiment instance"}}]	13	1
776	2020-07-16 02:38:22.966601+00	VX028B	VX028B	1	[{"added": {}}, {"added": {"object": "VX028Bhb", "name": "experiment instance"}}]	13	1
777	2020-07-17 04:50:17.451905+00	SI0197	SI0197	1	[{"added": {}}, {"added": {"object": "SI0197hb", "name": "experiment instance"}}]	13	1
778	2020-07-20 04:31:47.367087+00	AVS002	AVS002	1	[{"added": {}}, {"added": {"object": "AVS002ke", "name": "experiment instance"}}, {"added": {"object": "AVS002hb", "name": "experiment instance"}}]	13	1
779	2020-07-21 02:34:05.407619+00	SI0202	SI0202	1	[{"added": {}}, {"added": {"object": "SI0202yg", "name": "experiment instance"}}, {"added": {"object": "SI0202ho", "name": "experiment instance"}}]	13	1
780	2020-07-21 02:34:41.310415+00	SI0209	SI0209	1	[{"added": {}}, {"added": {"object": "SI0209ho", "name": "experiment instance"}}, {"added": {"object": "SI0209yg", "name": "experiment instance"}}]	13	1
781	2020-07-21 02:52:45.169025+00	SI0216	SI0216	1	[{"added": {}}, {"added": {"object": "SI0216ho", "name": "experiment instance"}}, {"added": {"object": "SI0216yg", "name": "experiment instance"}}]	13	1
782	2020-07-21 02:53:34.698866+00	SI0224	SI0224	1	[{"added": {}}, {"added": {"object": "SI0224ho", "name": "experiment instance"}}, {"added": {"object": "SI0224yg", "name": "experiment instance"}}]	13	1
783	2020-07-21 02:54:56.476259+00	SI0237	SI0237	1	[{"added": {}}, {"added": {"object": "SI0237ho", "name": "experiment instance"}}, {"added": {"object": "SI0237yg", "name": "experiment instance"}}]	13	1
784	2020-07-21 02:56:07.843225+00	SI0225	SI0225	1	[{"added": {}}, {"added": {"object": "SI0225ho", "name": "experiment instance"}}, {"added": {"object": "SI0225yg", "name": "experiment instance"}}]	13	1
785	2020-07-21 02:58:41.030805+00	SI0244	SI0244	1	[{"added": {}}, {"added": {"object": "SI0244ho", "name": "experiment instance"}}, {"added": {"object": "SI0244yg", "name": "experiment instance"}}]	13	1
786	2020-07-21 03:03:29.503021+00	SI0195	SI0195	1	[{"added": {}}, {"added": {"object": "SI0195ho", "name": "experiment instance"}}, {"added": {"object": "SI0195yg", "name": "experiment instance"}}]	13	1
787	2020-07-24 04:15:55.145273+00	SI0202	SI0202	2	[{"changed": {"fields": ["station"], "object": "SI0202hb", "name": "experiment instance"}}]	13	1
788	2020-07-24 04:16:28.694991+00	SI0209	SI0209	2	[{"changed": {"fields": ["station"], "object": "SI0209hb", "name": "experiment instance"}}]	13	1
789	2020-07-24 04:16:41.814451+00	SI0216	SI0216	2	[{"changed": {"fields": ["station"], "object": "SI0216hb", "name": "experiment instance"}}]	13	1
790	2020-07-24 04:17:05.557335+00	SI0224	SI0224	2	[{"changed": {"fields": ["station"], "object": "SI0224hb", "name": "experiment instance"}}]	13	1
791	2020-07-24 04:17:27.568729+00	SI0225	SI0225	2	[{"changed": {"fields": ["station"], "object": "SI0225hb", "name": "experiment instance"}}]	13	1
792	2020-07-24 04:17:40.95688+00	SI0237	SI0237	2	[{"changed": {"fields": ["station"], "object": "SI0237hb", "name": "experiment instance"}}]	13	1
793	2020-07-24 04:17:54.259096+00	SI0244	SI0244	2	[{"changed": {"fields": ["station"], "object": "SI0244hb", "name": "experiment instance"}}]	13	1
794	2020-07-24 04:29:14.136999+00	SI0244	SI0244	2	[]	13	1
795	2020-08-06 23:06:57.363585+00	VT29A	VT29A	1	[{"added": {}}, {"added": {"object": "VT29Aho", "name": "experiment instance"}}, {"added": {"object": "VT29Acd", "name": "experiment instance"}}]	13	1
796	2020-08-07 01:54:42.977588+00	AUA067	AUA067	2	[{"added": {"object": "AUA067ke", "name": "experiment instance"}}, {"added": {"object": "AUA067yg", "name": "experiment instance"}}, {"added": {"object": "AUA067hb", "name": "experiment instance"}}]	13	1
797	2020-08-10 00:37:12.522189+00	R1959	R1959	2	[{"changed": {"fields": ["schedate"]}}]	13	1
798	2020-08-10 00:39:05.58358+00	SI0224	SI0224	2	[{"changed": {"fields": ["schedate"]}}]	13	1
799	2020-08-11 23:06:53.744685+00	RD2005	RD2005	2	[{"changed": {"fields": ["correlator"]}}]	13	1
800	2020-08-16 23:30:33.345033+00	V581B	V581B	1	[{"added": {}}, {"added": {"object": "V581Bho", "name": "experiment instance"}}, {"added": {"object": "V581Bcd", "name": "experiment instance"}}, {"added": {"object": "V581Bke", "name": "experiment instance"}}]	13	1
801	2020-08-19 02:20:32.522578+00	S004A	S004A	1	[{"added": {}}, {"added": {"object": "S004Acd", "name": "experiment instance"}}]	13	1
802	2020-08-19 02:22:13.33811+00	S004C	S004C	1	[{"added": {}}, {"added": {"object": "S004Ccd", "name": "experiment instance"}}]	13	1
803	2020-08-19 02:27:04.74008+00	S004C	S004C	2	[{"changed": {"fields": ["schedate"]}}, {"added": {"object": "S004Chb", "name": "experiment instance"}}]	13	1
804	2020-08-19 02:28:46.014167+00	S005A	S005A	1	[{"added": {}}, {"added": {"object": "S005Acd", "name": "experiment instance"}}]	13	1
805	2020-08-19 02:29:40.076562+00	S005B	S005B	1	[{"added": {}}, {"added": {"object": "S005Bcd", "name": "experiment instance"}}]	13	1
808	2020-08-19 02:40:19.015031+00	S004B	S004B	1	[{"added": {}}, {"added": {"object": "S004Bke", "name": "experiment instance"}}, {"added": {"object": "S004Bcd", "name": "experiment instance"}}]	13	1
809	2020-08-19 02:41:06.957533+00	S004C	S004C	2	[{"added": {"object": "S004Cke", "name": "experiment instance"}}]	13	1
810	2020-08-19 02:41:56.536649+00	S005A	S005A	2	[{"added": {"object": "S005Ake", "name": "experiment instance"}}]	13	1
811	2020-08-19 02:42:24.712902+00	S005B	S005B	2	[{"added": {"object": "S005Bke", "name": "experiment instance"}}]	13	1
812	2020-08-19 02:44:42.54242+00	S006A	S006A	1	[{"added": {}}, {"added": {"object": "S006Ahb", "name": "experiment instance"}}, {"added": {"object": "S006Ake", "name": "experiment instance"}}, {"added": {"object": "S006Acd", "name": "experiment instance"}}]	13	1
813	2020-08-19 02:49:39.921863+00	V581B	V581B	2	[{"changed": {"fields": ["sched_size"], "object": "V581Bho", "name": "experiment instance"}}, {"changed": {"fields": ["sched_size", "station"], "object": "V581Bke", "name": "experiment instance"}}]	13	1
814	2020-08-19 02:52:49.254958+00	AUM018	AUM018	2	[{"changed": {"fields": ["correlator"]}}, {"changed": {"fields": ["sched_size"], "object": "AUM018hb", "name": "experiment instance"}}, {"changed": {"fields": ["sched_size"], "object": "AUM018ke", "name": "experiment instance"}}, {"changed": {"fields": ["sched_size"], "object": "AUM018yg", "name": "experiment instance"}}]	13	1
815	2020-08-19 03:07:37.7027+00	S005C	S005C	1	[{"added": {}}, {"added": {"object": "S005Chb", "name": "experiment instance"}}, {"added": {"object": "S005Ccd", "name": "experiment instance"}}, {"added": {"object": "S005Cke", "name": "experiment instance"}}]	13	1
816	2020-08-19 03:08:27.623274+00	S006B	S006B	1	[{"added": {}}, {"added": {"object": "S006Bhb", "name": "experiment instance"}}, {"added": {"object": "S006Bcd", "name": "experiment instance"}}, {"added": {"object": "S006Bke", "name": "experiment instance"}}]	13	1
817	2020-08-19 03:10:07.499094+00	S007A	S007A	1	[{"added": {}}, {"added": {"object": "S007Ahb", "name": "experiment instance"}}, {"added": {"object": "S007Acd", "name": "experiment instance"}}, {"added": {"object": "S007Ake", "name": "experiment instance"}}]	13	1
818	2020-08-19 03:11:18.505757+00	S008A	S008A	1	[{"added": {}}, {"added": {"object": "S008Ahb", "name": "experiment instance"}}, {"added": {"object": "S008Acd", "name": "experiment instance"}}, {"added": {"object": "S008Ake", "name": "experiment instance"}}]	13	1
819	2020-08-19 03:13:55.094953+00	S007B	S007B	1	[{"added": {}}, {"added": {"object": "S007Bke", "name": "experiment instance"}}, {"added": {"object": "S007Bhb", "name": "experiment instance"}}, {"added": {"object": "S007Bcd", "name": "experiment instance"}}]	13	1
820	2020-08-19 03:14:30.657902+00	S008B	S008B	1	[{"added": {}}, {"added": {"object": "S008Bke", "name": "experiment instance"}}, {"added": {"object": "S008Bhb", "name": "experiment instance"}}, {"added": {"object": "S008Bcd", "name": "experiment instance"}}]	13	1
821	2020-08-19 03:17:12.527852+00	S009A	S009A	1	[{"added": {}}, {"added": {"object": "S009Ake", "name": "experiment instance"}}, {"added": {"object": "S009Ahb", "name": "experiment instance"}}, {"added": {"object": "S009Acd", "name": "experiment instance"}}]	13	1
822	2020-08-19 03:18:38.859605+00	S010A	S010A	1	[{"added": {}}, {"added": {"object": "S010Ahb", "name": "experiment instance"}}, {"added": {"object": "S010Ake", "name": "experiment instance"}}, {"added": {"object": "S010Acd", "name": "experiment instance"}}]	13	1
823	2020-08-19 03:19:17.996187+00	AVS004	AVS004	1	[{"added": {}}, {"added": {"object": "AVS004hb", "name": "experiment instance"}}, {"added": {"object": "AVS004ke", "name": "experiment instance"}}]	13	1
824	2020-08-19 03:20:31.970066+00	S011A	S011A	1	[{"added": {}}, {"added": {"object": "S011Ake", "name": "experiment instance"}}, {"added": {"object": "S011Ahb", "name": "experiment instance"}}, {"added": {"object": "S011Acd", "name": "experiment instance"}}]	13	1
825	2020-08-19 03:21:34.943049+00	S009B	S009B	1	[{"added": {}}, {"added": {"object": "S009Bke", "name": "experiment instance"}}, {"added": {"object": "S009Bhb", "name": "experiment instance"}}, {"added": {"object": "S009Bcd", "name": "experiment instance"}}]	13	1
826	2020-08-19 03:22:19.228929+00	s010B	s010B	1	[{"added": {}}, {"added": {"object": "s010Bke", "name": "experiment instance"}}, {"added": {"object": "s010Bhb", "name": "experiment instance"}}, {"added": {"object": "s010Bcd", "name": "experiment instance"}}]	13	1
827	2020-08-19 03:23:07.843923+00	S011B	S011B	1	[{"added": {}}, {"added": {"object": "S011Bke", "name": "experiment instance"}}, {"added": {"object": "S011Bhb", "name": "experiment instance"}}, {"added": {"object": "S011Bcd", "name": "experiment instance"}}]	13	1
828	2020-08-19 03:38:26.560134+00	S010B	S010B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S010Bke"}}, {"added": {"name": "experiment instance", "object": "S010Bhb"}}, {"added": {"name": "experiment instance", "object": "S010Bcd"}}]	13	1
829	2020-08-19 03:41:45.998071+00	spi	spi	1	[{"added": {}}]	11	1
830	2020-08-21 03:27:40.836781+00	V586A	V586A	2	[{"added": {"name": "experiment instance", "object": "V586Aho"}}]	13	1
831	2020-08-24 02:45:26.670698+00	SI0237	SI0237	2	[{"changed": {"fields": ["schedate"]}}]	13	1
832	2020-08-25 04:13:43.609094+00	bkg-0069	bkg-0069	3		12	1
833	2020-08-25 04:14:18.702409+00	BKG-0069	BKG-0069	1	[{"added": {}}]	12	1
834	2020-08-25 04:17:45.71177+00	R4961	R4961	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "R4961yg"}}]	13	1
835	2020-08-28 01:02:47.01373+00	hob+0047	hob+0047	3		12	1
836	2020-08-28 01:03:08.862042+00	HOB+0047	HOB+0047	1	[{"added": {}}]	12	1
837	2020-08-28 05:58:11.64278+00	SI0197	SI0197	3		13	1
838	2020-08-31 01:45:56.227757+00	BKG-0069	BKG-0069	2	[{"changed": {"fields": ["size", "free", "modified"]}}]	12	1
839	2020-09-07 04:28:19.382119+00	ST003	ST003	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "ST003hb"}}, {"added": {"name": "experiment instance", "object": "ST003ke"}}]	13	1
840	2020-09-08 03:29:20.146282+00	S008C	S008C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S008Cke"}}, {"added": {"name": "experiment instance", "object": "S008Chb"}}, {"added": {"name": "experiment instance", "object": "S008Ccd"}}]	13	1
841	2020-09-13 23:48:14.286202+00	SI0195	SI0195	2	[{"changed": {"name": "experiment instance", "fields": ["station"], "object": "SI0195hb"}}]	13	1
842	2020-09-14 00:39:47.670119+00	SI0252	SI0252	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0252yg"}}, {"added": {"name": "experiment instance", "object": "SI0252hb"}}]	13	1
843	2020-09-14 00:40:28.974083+00	SI0258	SI0258	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0258hb"}}, {"added": {"name": "experiment instance", "object": "SI0258yg"}}]	13	1
844	2020-09-14 00:41:25.1786+00	SI0272	SI0272	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0272hb"}}, {"added": {"name": "experiment instance", "object": "SI0272yg"}}]	13	1
845	2020-09-14 00:42:01.105238+00	SI0265	SI0265	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0265hb"}}, {"added": {"name": "experiment instance", "object": "SI0265yg"}}]	13	1
846	2020-09-14 00:42:45.009391+00	SI0273	SI0273	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0273hb"}}, {"added": {"name": "experiment instance", "object": "SI0273yg"}}]	13	1
847	2020-09-14 00:43:38.412032+00	SI0279	SI0279	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0279hb"}}, {"added": {"name": "experiment instance", "object": "SI0279yg"}}]	13	1
848	2020-09-14 00:44:20.058954+00	SI0287	SI0287	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0287hb"}}, {"added": {"name": "experiment instance", "object": "SI0287yg"}}]	13	1
849	2020-09-14 00:44:54.608297+00	SI0293	SI0293	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0293hb"}}, {"added": {"name": "experiment instance", "object": "SI0293yg"}}]	13	1
850	2020-09-14 00:45:07.715448+00	SI0293	SI0293	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "SI0293yg"}}]	13	1
851	2020-09-14 00:45:42.928269+00	SI0300	SI0300	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0300hb"}}, {"added": {"name": "experiment instance", "object": "SI0300yg"}}]	13	1
852	2020-09-17 08:24:47.048087+00	S010C	S010C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S010Cke"}}, {"added": {"name": "experiment instance", "object": "S010Chb"}}, {"added": {"name": "experiment instance", "object": "S010Ccd"}}]	13	1
853	2020-09-28 04:41:59.231522+00	S011C	S011C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S011Cke"}}, {"added": {"name": "experiment instance", "object": "S011Chb"}}, {"added": {"name": "experiment instance", "object": "S011Ccd"}}]	13	1
854	2020-09-28 23:17:33.08041+00	V447K	V447K	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V447Kcd"}}, {"added": {"name": "experiment instance", "object": "V447Kke"}}, {"added": {"name": "experiment instance", "object": "V447Khb"}}]	13	1
855	2020-09-28 23:40:27.720436+00	SI0265	SI0265	2	[{"changed": {"fields": ["schedate"]}}]	13	1
856	2020-09-28 23:41:28.28372+00	SI0293	SI0293	2	[{"changed": {"fields": ["schedate"]}}]	13	1
857	2020-09-29 03:02:40.058311+00	S004D	S004D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Dke"}}, {"added": {"name": "experiment instance", "object": "S004Dhb"}}, {"added": {"name": "experiment instance", "object": "S004Dcd"}}]	13	1
858	2020-10-06 23:29:34.836994+00	R4967	R4967	2	[{"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "R4967yg"}}]	13	1
859	2020-10-07 22:20:09.324434+00	HOB+0016	HOB+0016	2	[{"changed": {"fields": ["size", "free"]}}]	12	1
860	2020-10-08 01:24:00.791209+00	SI0174	SI0174	2	[{"changed": {"name": "experiment instance", "fields": ["path"], "object": "SI0174hb"}}, {"changed": {"name": "experiment instance", "fields": ["path", "raid"], "object": "SI0174yg"}}]	13	1
861	2020-10-11 23:19:05.275477+00	S012A	S012A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S012Ake"}}, {"added": {"name": "experiment instance", "object": "S012Ahb"}}, {"added": {"name": "experiment instance", "object": "S012Awa"}}]	13	1
862	2020-10-11 23:19:48.929996+00	S012A	S012A	2	[{"added": {"name": "experiment instance", "object": "S012Acd"}}]	13	1
863	2020-10-11 23:20:43.188667+00	S001G	S001G	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S001Gke"}}, {"added": {"name": "experiment instance", "object": "S001Ghb"}}, {"added": {"name": "experiment instance", "object": "S001Gcd"}}, {"added": {"name": "experiment instance", "object": "S001Gwa"}}]	13	1
864	2020-10-16 00:28:43.959641+00	R4968	R4968	2	[{"changed": {"name": "experiment instance", "fields": ["ship_to"], "object": "R4968yg"}}]	13	1
865	2020-10-20 02:55:38.267676+00	AUA069	AUA069	2	[{"changed": {"fields": ["schedate"]}}, {"added": {"name": "experiment instance", "object": "AUA069yg"}}, {"added": {"name": "experiment instance", "object": "AUA069hb"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "AUA069ho"}}]	13	1
866	2020-10-20 04:08:52.525948+00	SI0294	SI0294	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0294hb"}}, {"added": {"name": "experiment instance", "object": "SI0294ke"}}]	13	1
867	2020-10-20 04:11:59.328852+00	SI0294	SI0294	2	[{"changed": {"fields": ["schedate"]}}]	13	1
868	2020-10-23 02:24:05.787898+00	AUA068	AUA068	2	[{"added": {"name": "experiment instance", "object": "AUA068hb"}}]	13	1
869	2020-10-25 23:20:08.785378+00	S004C	S004C	2	[{"changed": {"name": "experiment instance", "fields": ["path"], "object": "S004Ccd"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size", "rec_size", "station"], "object": "S004C"}}, {"changed": {"name": "experiment instance", "fields": ["path"], "object": "S004Cke"}}]	13	1
870	2020-10-29 03:32:26.537811+00	SI0272	SI0272	3		13	1
871	2020-10-29 03:33:09.458431+00	SI0273	SI0273	2	[]	13	1
872	2020-10-29 03:58:57.92018+00	SI0272	SI0272	1	[{"added": {}}]	13	1
873	2020-11-03 04:30:25.865448+00	AVS005	AVS005	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "AVS005hb"}}, {"added": {"name": "experiment instance", "object": "AVS005ke"}}]	13	1
874	2020-11-03 22:27:37.243309+00	SI0308	SI0308	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0308yg"}}, {"added": {"name": "experiment instance", "object": "SI0308hb"}}]	13	1
875	2020-11-03 22:31:16.873857+00	S001H	S001H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S001Hhb"}}, {"added": {"name": "experiment instance", "object": "S001Hcd"}}]	13	1
876	2020-11-03 22:33:39.270234+00	S001I	S001I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S001Ihb"}}, {"added": {"name": "experiment instance", "object": "S001Icd"}}]	13	1
878	2020-11-03 23:58:38.649602+00	S001J	S001J	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S001Jhb"}}, {"added": {"name": "experiment instance", "object": "S001Jcd"}}]	13	1
879	2020-11-04 00:36:53.279482+00	SI0329	SI0329	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0329hb"}}, {"added": {"name": "experiment instance", "object": "SI0329yg"}}]	13	1
880	2020-11-04 00:55:09.928134+00	SI0321	SI0321	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0321hb"}}, {"added": {"name": "experiment instance", "object": "SI0321yg"}}]	13	1
881	2020-11-04 00:55:59.625011+00	SI0321	SI0321	2	[{"changed": {"fields": ["schedate"]}}]	13	1
882	2020-11-04 00:56:58.360377+00	SI0314	SI0314	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0314hb"}}, {"added": {"name": "experiment instance", "object": "SI0314yg"}}]	13	1
883	2020-11-04 01:00:08.588679+00	SI0335	SI0335	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0335hb"}}, {"added": {"name": "experiment instance", "object": "SI0335yg"}}]	13	1
884	2020-11-04 01:00:30.845187+00	SI0314	SI0314	2	[{"changed": {"fields": ["correlator"]}}]	13	1
885	2020-11-04 01:00:43.759698+00	SI0321	SI0321	2	[{"changed": {"fields": ["correlator"]}}]	13	1
886	2020-11-04 01:00:56.704617+00	SI0329	SI0329	2	[{"changed": {"fields": ["correlator"]}}]	13	1
887	2020-11-04 01:10:44.771954+00	SI0337	SI0337	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0337hb"}}, {"added": {"name": "experiment instance", "object": "SI0337yg"}}]	13	1
888	2020-11-04 01:11:52.005932+00	SI0342	SI0342	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0342hb"}}, {"added": {"name": "experiment instance", "object": "SI0342yg"}}]	13	1
889	2020-11-04 01:12:33.351892+00	SI0349	SI0349	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0349yg"}}, {"added": {"name": "experiment instance", "object": "SI0349hb"}}]	13	1
890	2020-11-04 01:13:17.063164+00	SI0356	SI0356	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0356hb"}}, {"added": {"name": "experiment instance", "object": "SI0356yg"}}]	13	1
891	2020-11-05 23:14:14.933641+00	S009C	S009C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S009Cke"}}, {"added": {"name": "experiment instance", "object": "S009Chb"}}, {"added": {"name": "experiment instance", "object": "S009Ccd"}}]	13	1
892	2020-11-05 23:21:32.834396+00	S001H	S001H	2	[{"added": {"name": "experiment instance", "object": "S001Hke"}}]	13	1
893	2020-11-05 23:21:46.062924+00	S001I	S001I	2	[{"added": {"name": "experiment instance", "object": "S001Ike"}}]	13	1
894	2020-11-05 23:21:59.525363+00	S001J	S001J	2	[{"added": {"name": "experiment instance", "object": "S001Jke"}}]	13	1
895	2020-11-05 23:22:28.100019+00	S001K	S001K	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S001Kcd"}}, {"added": {"name": "experiment instance", "object": "S001Khb"}}, {"added": {"name": "experiment instance", "object": "S001Kke"}}]	13	1
896	2020-11-09 02:23:16.617537+00	SI0342	SI0342	2	[{"changed": {"fields": ["schedate"]}}]	13	1
897	2020-11-11 22:34:42.662738+00	SI0316	SI0316	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI0316hb"}}, {"added": {"name": "experiment instance", "object": "SI0316yg"}}]	13	1
898	2020-11-16 04:27:54.514977+00	V600A	V600A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V600Atd"}}, {"added": {"name": "experiment instance", "object": "V600Ayg"}}, {"added": {"name": "experiment instance", "object": "V600Aho"}}, {"added": {"name": "experiment instance", "object": "V600Acd"}}]	13	1
899	2020-11-16 04:28:28.335974+00	V596A	V596A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V596Acd"}}, {"added": {"name": "experiment instance", "object": "V596Aho"}}, {"added": {"name": "experiment instance", "object": "V596Ayg"}}]	13	1
900	2020-11-16 04:28:58.621491+00	V252BX	V252BX	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V252BXyg"}}, {"added": {"name": "experiment instance", "object": "V252BXho"}}, {"added": {"name": "experiment instance", "object": "V252BXcd"}}]	13	1
901	2020-11-24 03:26:31.916641+00	HOB+1010	HOB+1010	2	[{"changed": {"fields": ["free"]}}]	12	1
902	2020-12-09 03:13:34.299832+00	HOB+0120	HOB+0120	2	[{"changed": {"fields": ["size", "free"]}}]	12	1
903	2020-12-09 03:13:42.357862+00	HOB+0120	HOB+0120	2	[]	12	1
904	2020-12-14 02:13:49.328156+00	SI0161	SI0161	2	[{"changed": {"fields": ["schedate"]}}, {"added": {"name": "experiment instance", "object": "SI0161hb"}}]	13	1
905	2020-12-17 01:17:07.347259+00	1729	T2143td	1	[{"added": {}}]	9	1
906	2021-01-04 05:49:37.886335+00	R1980	R1980	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "R1980yg"}}]	13	1
907	2021-01-07 22:59:20.446241+00	SI0224	SI0224	2	[{"added": {"name": "experiment instance", "object": "SI0224hb"}}]	13	1
908	2021-01-08 00:35:42.873146+00	SI0244	SI0244	2	[{"changed": {"fields": ["schedate"]}}, {"added": {"name": "experiment instance", "object": "SI0244hb"}}, {"added": {"name": "experiment instance", "object": "SI0244yg"}}]	13	1
909	2021-01-08 00:36:06.077629+00	SI0244	SI0244	2	[{"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "SI0244hb"}}, {"changed": {"name": "experiment instance", "fields": ["sched_size"], "object": "SI0244yg"}}]	13	1
910	2021-01-11 03:25:10.935188+00	V255AK	V255AK	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V255AKcd"}}, {"added": {"name": "experiment instance", "object": "V255AKho"}}]	13	1
911	2021-01-11 03:26:38.898205+00	V595A	V595A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V595Aho"}}]	13	1
912	2021-01-11 03:28:23.707849+00	V595A	V595A	2	[{"changed": {"name": "experiment instance", "fields": ["rec_size"], "object": "V595Aho"}}]	13	1
913	2021-01-18 23:57:46.10433+00	MPI-0419	MPI-0419	2	[{"changed": {"fields": ["free"]}}]	12	1
914	2021-01-18 23:58:11.316602+00	HART-015	HART-015	2	[{"changed": {"fields": ["free"]}}]	12	1
915	2021-01-18 23:58:27.094468+00	HAY-0055	HAY-0055	2	[{"changed": {"fields": ["free"]}}]	12	1
916	2021-01-18 23:58:47.599523+00	HAY-0055	HAY-0055	2	[{"changed": {"fields": ["free"]}}]	12	1
917	2021-01-22 00:49:03.047397+00	S004F	S004F	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Fwa"}}, {"added": {"name": "experiment instance", "object": "S004Fcd"}}, {"added": {"name": "experiment instance", "object": "S004Fhb"}}, {"added": {"name": "experiment instance", "object": "S004Fke"}}]	13	1
918	2021-01-22 00:49:33.02687+00	S004G	S004G	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Gwa"}}, {"added": {"name": "experiment instance", "object": "S004Ghb"}}, {"added": {"name": "experiment instance", "object": "S004Gcd"}}, {"added": {"name": "experiment instance", "object": "S004Gke"}}]	13	1
919	2021-01-22 00:50:07.101568+00	S004E	S004E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Eke"}}, {"added": {"name": "experiment instance", "object": "S004Ehb"}}, {"added": {"name": "experiment instance", "object": "S004Ecd"}}, {"added": {"name": "experiment instance", "object": "S004Ewa"}}]	13	1
920	2021-01-22 00:51:15.009378+00	S004H	S004H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Hke"}}, {"added": {"name": "experiment instance", "object": "S004Hhb"}}, {"added": {"name": "experiment instance", "object": "S004Hcd"}}, {"added": {"name": "experiment instance", "object": "S004Hwa"}}]	13	1
921	2021-01-28 04:49:27.530495+00	AUM024	AUM024	2	[{"added": {"name": "experiment instance", "object": "AUM024ke"}}]	13	1
922	2021-02-15 05:10:22.373963+00	S005D	S005D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Dcd"}}, {"added": {"name": "experiment instance", "object": "S005Dke"}}, {"added": {"name": "experiment instance", "object": "S005Dhb"}}]	13	1
923	2021-02-15 05:20:22.709692+00	S004H	S004H	2	[{"changed": {"fields": ["correlator"]}}]	13	1
924	2021-02-15 05:22:49.396679+00	S005E	S005E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Ecd"}}, {"added": {"name": "experiment instance", "object": "S005Eke"}}, {"added": {"name": "experiment instance", "object": "S005Ehb"}}]	13	1
925	2021-02-15 05:24:34.154525+00	S005F	S005F	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Fcd"}}, {"added": {"name": "experiment instance", "object": "S005Fke"}}, {"added": {"name": "experiment instance", "object": "S005Fhb"}}]	13	1
956	2021-04-13 23:22:31.55215+00	DPT03A	DPT03A	1	[{"added": {}}, {"added": {"object": "DPT03Acd", "name": "experiment instance"}}]	13	1
926	2021-02-15 05:27:06.972234+00	S004I	S004I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Icd"}}, {"added": {"name": "experiment instance", "object": "S004Ike"}}, {"added": {"name": "experiment instance", "object": "S004Ihb"}}]	13	1
927	2021-02-18 04:16:14.220346+00	S005G	S005G	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Gcd"}}, {"added": {"name": "experiment instance", "object": "S005Gke"}}, {"added": {"name": "experiment instance", "object": "S005Ghb"}}]	13	1
928	2021-02-18 04:17:38.723182+00	S006C	S006C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S006Ccd"}}, {"added": {"name": "experiment instance", "object": "S006Cke"}}, {"added": {"name": "experiment instance", "object": "S006Chb"}}]	13	1
929	2021-02-18 04:18:38.759626+00	S007C	S007C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S007Ccd"}}, {"added": {"name": "experiment instance", "object": "S007Cke"}}, {"added": {"name": "experiment instance", "object": "S007Chb"}}]	13	1
930	2021-02-18 04:19:30.559676+00	S008D	S008D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S008Dcd"}}, {"added": {"name": "experiment instance", "object": "S008Dke"}}, {"added": {"name": "experiment instance", "object": "S008Dhb"}}]	13	1
931	2021-02-18 04:20:30.475309+00	S005H	S005H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Hcd"}}, {"added": {"name": "experiment instance", "object": "S005Hke"}}, {"added": {"name": "experiment instance", "object": "S005Hhb"}}]	13	1
932	2021-02-18 04:21:38.870907+00	S006D	S006D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S006Dcd"}}, {"added": {"name": "experiment instance", "object": "S006Dke"}}, {"added": {"name": "experiment instance", "object": "S006Dhb"}}]	13	1
933	2021-02-20 22:57:55.601044+00	S003A	S003A	2	[{"changed": {"name": "experiment instance", "fields": ["data_status"], "object": "S003Ahb"}}, {"changed": {"name": "experiment instance", "fields": ["raid", "data_status"], "object": "S003Acd"}}, {"changed": {"name": "experiment instance", "fields": ["raid", "data_status"], "object": "S003Ake"}}]	13	1
934	2021-02-20 22:58:24.975091+00	S007C	S007C	2	[{"changed": {"fields": ["type"]}}]	13	1
935	2021-02-20 22:58:49.197704+00	S008D	S008D	2	[{"changed": {"fields": ["type"]}}]	13	1
936	2021-02-20 22:59:54.993246+00	S003A	S003A	2	[{"changed": {"fields": ["correlation_status"]}}]	13	1
937	2021-02-26 06:32:18.636923+00	V594B	V594B	1	[{"added": {}}, {"added": {"object": "V594Bho", "name": "experiment instance"}}, {"added": {"object": "V594Bcd", "name": "experiment instance"}}]	13	1
938	2021-03-09 02:48:22.735175+00	S006E	S006E	1	[{"added": {}}, {"added": {"object": "S006Ehb", "name": "experiment instance"}}, {"added": {"object": "S006Ecd", "name": "experiment instance"}}, {"added": {"object": "S006Eke", "name": "experiment instance"}}]	13	1
939	2021-03-10 23:44:03.124401+00	V592A	V592A	2	[{"changed": {"fields": ["schedate"]}}]	13	1
940	2021-03-10 23:44:33.547295+00	V252BY	V252BY	2	[{"changed": {"fields": ["schedate"]}}, {"changed": {"object": "V252BYtd", "name": "experiment instance", "fields": ["raid"]}}]	13	1
941	2021-03-19 02:33:30.595566+00	S007G	S007G	1	[{"added": {}}, {"added": {"object": "S007Gke", "name": "experiment instance"}}, {"added": {"object": "S007Ghb", "name": "experiment instance"}}, {"added": {"object": "S007Gcd", "name": "experiment instance"}}, {"added": {"object": "S007Gwa", "name": "experiment instance"}}]	13	1
942	2021-03-19 02:34:19.90947+00	S009F	S009F	1	[{"added": {}}, {"added": {"object": "S009Fke", "name": "experiment instance"}}, {"added": {"object": "S009Fcd", "name": "experiment instance"}}, {"added": {"object": "S009Fhb", "name": "experiment instance"}}, {"added": {"object": "S009Fwa", "name": "experiment instance"}}]	13	1
943	2021-03-19 02:35:03.187831+00	S007F	S007F	1	[{"added": {}}, {"added": {"object": "S007Fke", "name": "experiment instance"}}, {"added": {"object": "S007Fhb", "name": "experiment instance"}}, {"added": {"object": "S007Fcd", "name": "experiment instance"}}, {"added": {"object": "S007Fwa", "name": "experiment instance"}}]	13	1
944	2021-03-19 02:35:46.532954+00	S008G	S008G	1	[{"added": {}}, {"added": {"object": "S008Gke", "name": "experiment instance"}}, {"added": {"object": "S008Ghb", "name": "experiment instance"}}, {"added": {"object": "S008Gcd", "name": "experiment instance"}}, {"added": {"object": "S008Gwa", "name": "experiment instance"}}]	13	1
945	2021-03-19 02:36:31.054195+00	S006F	S006F	1	[{"added": {}}, {"added": {"object": "S006Fke", "name": "experiment instance"}}, {"added": {"object": "S006Fhb", "name": "experiment instance"}}, {"added": {"object": "S006Fcd", "name": "experiment instance"}}, {"added": {"object": "S006Fwa", "name": "experiment instance"}}]	13	1
946	2021-03-19 02:37:04.048048+00	S009E	S009E	1	[{"added": {}}, {"added": {"object": "S009Ecd", "name": "experiment instance"}}, {"added": {"object": "S009Ehb", "name": "experiment instance"}}, {"added": {"object": "S009Eke", "name": "experiment instance"}}, {"added": {"object": "S009Ewa", "name": "experiment instance"}}]	13	1
947	2021-03-19 02:37:44.023604+00	S008F	S008F	1	[{"added": {}}, {"added": {"object": "S008Fke", "name": "experiment instance"}}, {"added": {"object": "S008Fhb", "name": "experiment instance"}}, {"added": {"object": "S008Fcd", "name": "experiment instance"}}, {"added": {"object": "S008Fwa", "name": "experiment instance"}}]	13	1
948	2021-03-19 02:39:06.766735+00	S007E	S007E	1	[{"added": {}}, {"added": {"object": "S007Eke", "name": "experiment instance"}}, {"added": {"object": "S007Ehb", "name": "experiment instance"}}, {"added": {"object": "S007Ecd", "name": "experiment instance"}}, {"added": {"object": "S007Ewa", "name": "experiment instance"}}]	13	1
949	2021-03-19 02:40:53.649923+00	S009D	S009D	1	[{"added": {}}, {"added": {"object": "S009Dke", "name": "experiment instance"}}, {"added": {"object": "S009Dhb", "name": "experiment instance"}}, {"added": {"object": "S009Dcd", "name": "experiment instance"}}, {"added": {"object": "S009Dwa", "name": "experiment instance"}}]	13	1
950	2021-03-19 02:41:58.169383+00	S008E	S008E	1	[{"added": {}}, {"added": {"object": "S008Ehb", "name": "experiment instance"}}, {"added": {"object": "S008Ecd", "name": "experiment instance"}}, {"added": {"object": "S008Eke", "name": "experiment instance"}}, {"added": {"object": "S008Ewa", "name": "experiment instance"}}]	13	1
951	2021-03-19 02:42:31.147155+00	S007D	S007D	1	[{"added": {}}, {"added": {"object": "S007Dhb", "name": "experiment instance"}}, {"added": {"object": "S007Dke", "name": "experiment instance"}}, {"added": {"object": "S007Dcd", "name": "experiment instance"}}]	13	1
952	2021-03-25 00:16:23.709521+00	S004E	S004E	2	[{"added": {"object": "S004Ehb", "name": "experiment instance"}}]	13	1
953	2021-03-25 00:16:58.424127+00	S004F	S004F	2	[{"added": {"object": "S004Fhb", "name": "experiment instance"}}]	13	1
954	2021-04-06 20:47:52.882376+00	V456E	V456E	1	[{"added": {}}, {"added": {"object": "V456Eho", "name": "experiment instance"}}, {"added": {"object": "V456Eke", "name": "experiment instance"}}, {"added": {"object": "V456Ecd", "name": "experiment instance"}}]	13	1
955	2021-04-13 00:02:16.339643+00	S012B	S012B	1	[{"added": {}}, {"added": {"object": "S012Bke", "name": "experiment instance"}}, {"added": {"object": "S012Byg", "name": "experiment instance"}}, {"added": {"object": "S012Bhb", "name": "experiment instance"}}, {"added": {"object": "S012Bcd", "name": "experiment instance"}}]	13	1
957	2021-04-13 23:23:07.483904+00	DPT05A	DPT05A	1	[{"added": {}}, {"added": {"object": "DPT05Acd", "name": "experiment instance"}}]	13	1
958	2021-04-13 23:23:31.55349+00	DPT06A	DPT06A	1	[{"added": {}}, {"added": {"object": "DPT06Acd", "name": "experiment instance"}}]	13	1
959	2021-04-13 23:26:14.41211+00	DPT04A	DPT04A	2	[{"added": {"object": "DPT04Acd", "name": "experiment instance"}}]	13	1
960	2021-04-23 04:35:28.656531+00	S001L	S001L	1	[{"added": {}}, {"added": {"object": "S001Lke", "name": "experiment instance"}}, {"added": {"object": "S001Lhb", "name": "experiment instance"}}, {"added": {"object": "S001Lcd", "name": "experiment instance"}}, {"added": {"object": "S001Lwa", "name": "experiment instance"}}]	13	1
961	2021-04-23 04:36:41.512152+00	S010F	S010F	1	[{"added": {}}, {"added": {"object": "S010Fke", "name": "experiment instance"}}, {"added": {"object": "S010Fhb", "name": "experiment instance"}}, {"added": {"object": "S010Fcd", "name": "experiment instance"}}, {"added": {"object": "S010Fwa", "name": "experiment instance"}}]	13	1
962	2021-04-23 04:37:50.415542+00	S011F	S011F	1	[{"added": {}}, {"added": {"object": "S011Fke", "name": "experiment instance"}}, {"added": {"object": "S011Fhb", "name": "experiment instance"}}, {"added": {"object": "S011Fcd", "name": "experiment instance"}}, {"added": {"object": "S011Fwa", "name": "experiment instance"}}]	13	1
963	2021-04-23 04:38:51.452977+00	S001L	S001L	2	[{"changed": {"fields": ["schedate"]}}]	13	1
964	2021-04-26 03:19:42.184659+00	S010D	S010D	1	[{"added": {}}, {"added": {"object": "S010Dke", "name": "experiment instance"}}, {"added": {"object": "S010Dhb", "name": "experiment instance"}}, {"added": {"object": "S010Dcd", "name": "experiment instance"}}, {"added": {"object": "S010Dwa", "name": "experiment instance"}}]	13	1
965	2021-04-26 03:20:22.218996+00	S010E	S010E	1	[{"added": {}}, {"added": {"object": "S010Eke", "name": "experiment instance"}}, {"added": {"object": "S010Ehb", "name": "experiment instance"}}, {"added": {"object": "S010Ecd", "name": "experiment instance"}}, {"added": {"object": "S010Ewa", "name": "experiment instance"}}]	13	1
966	2021-04-26 03:21:03.462751+00	S011D	S011D	1	[{"added": {}}, {"added": {"object": "S011Dke", "name": "experiment instance"}}, {"added": {"object": "S011Dhb", "name": "experiment instance"}}, {"added": {"object": "S011Dcd", "name": "experiment instance"}}, {"added": {"object": "S011Dwa", "name": "experiment instance"}}]	13	1
967	2021-04-26 03:21:36.460755+00	S011E	S011E	1	[{"added": {}}, {"added": {"object": "S011Eke", "name": "experiment instance"}}, {"added": {"object": "S011Ehb", "name": "experiment instance"}}, {"added": {"object": "S011Ecd", "name": "experiment instance"}}, {"added": {"object": "S011Ewa", "name": "experiment instance"}}]	13	1
968	2021-04-26 05:10:43.613282+00	V456F	V456F	2	[{"changed": {"fields": ["schedate"]}}, {"added": {"object": "V456Fke", "name": "experiment instance"}}, {"added": {"object": "V456Fho", "name": "experiment instance"}}, {"added": {"object": "V456Fcd", "name": "experiment instance"}}, {"added": {"object": "V456Ftd", "name": "experiment instance"}}]	13	1
969	2021-04-26 05:12:22.478116+00	V456G	V456G	2	[{"added": {"object": "V456Gke", "name": "experiment instance"}}, {"added": {"object": "V456Gho", "name": "experiment instance"}}, {"added": {"object": "V456Gcd", "name": "experiment instance"}}, {"added": {"object": "V456Gtd", "name": "experiment instance"}}]	13	1
970	2021-05-06 00:13:48.905548+00	V255AL	V255AL	1	[{"added": {}}, {"added": {"object": "V255ALke", "name": "experiment instance"}}, {"added": {"object": "V255ALcd", "name": "experiment instance"}}, {"added": {"object": "V255ALho", "name": "experiment instance"}}]	13	1
971	2021-05-06 00:14:41.565804+00	V252BZ	V252BZ	1	[{"added": {}}, {"added": {"object": "V252BZke", "name": "experiment instance"}}, {"added": {"object": "V252BZho", "name": "experiment instance"}}, {"added": {"object": "V252BZyg", "name": "experiment instance"}}, {"added": {"object": "V252BZcd", "name": "experiment instance"}}]	13	1
972	2021-05-06 00:16:23.941099+00	V589B	V589B	1	[{"added": {}}, {"added": {"object": "V589Bke", "name": "experiment instance"}}, {"added": {"object": "V589Bho", "name": "experiment instance"}}, {"added": {"object": "V589Bcd", "name": "experiment instance"}}, {"added": {"object": "V589Byg", "name": "experiment instance"}}]	13	1
973	2021-05-06 00:17:07.692766+00	V592B	V592B	1	[{"added": {}}, {"added": {"object": "V592Bcd", "name": "experiment instance"}}, {"added": {"object": "V592Bho", "name": "experiment instance"}}, {"added": {"object": "V592Bke", "name": "experiment instance"}}, {"added": {"object": "V592Byg", "name": "experiment instance"}}]	13	1
974	2021-05-07 01:06:38.031379+00	R4997	R4997	2	[{"changed": {"object": "R4997yg", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
975	2021-05-12 03:32:09.260627+00	R4998	R4998	2	[{"changed": {"object": "R4998yg", "name": "experiment instance", "fields": ["ship_to"]}}]	13	1
976	2021-05-13 05:02:02.75291+00	SI1113	SI1113	2	[{"changed": {"fields": ["schedate"]}}, {"added": {"object": "SI1113yg", "name": "experiment instance"}}]	13	1
977	2021-05-25 05:40:15.652094+00	si1141	si1141	1	[{"added": {}}, {"added": {"object": "si1141hb", "name": "experiment instance"}}, {"added": {"object": "si1141yg", "name": "experiment instance"}}]	13	1
978	2021-05-25 05:40:52.39126+00	si1148	si1148	1	[{"added": {}}, {"added": {"object": "si1148hb", "name": "experiment instance"}}, {"added": {"object": "si1148yg", "name": "experiment instance"}}]	13	1
979	2021-05-25 05:41:35.803061+00	si1155	si1155	1	[{"added": {}}, {"added": {"object": "si1155hb", "name": "experiment instance"}}, {"added": {"object": "si1155yg", "name": "experiment instance"}}]	13	1
980	2021-05-25 05:42:08.298647+00	si1161	si1161	1	[{"added": {}}, {"added": {"object": "si1161hb", "name": "experiment instance"}}, {"added": {"object": "si1161yg", "name": "experiment instance"}}]	13	1
981	2021-05-25 05:43:29.410456+00	SI1169	SI1169	1	[{"added": {}}, {"added": {"object": "SI1169hb", "name": "experiment instance"}}, {"added": {"object": "SI1169yg", "name": "experiment instance"}}]	13	1
982	2021-05-25 05:45:06.239008+00	SI1141	SI1141	1	[{"added": {}}, {"added": {"object": "SI1141hb", "name": "experiment instance"}}, {"added": {"object": "SI1141yg", "name": "experiment instance"}}]	13	1
983	2021-05-25 05:45:53.020712+00	SI1148	SI1148	1	[{"added": {}}, {"added": {"object": "SI1148hb", "name": "experiment instance"}}, {"added": {"object": "SI1148yg", "name": "experiment instance"}}]	13	1
984	2021-05-25 05:46:16.195145+00	SI1155	SI1155	1	[{"added": {}}, {"added": {"object": "SI1155hb", "name": "experiment instance"}}, {"added": {"object": "SI1155yg", "name": "experiment instance"}}]	13	1
985	2021-05-25 05:46:55.421129+00	SI1161	SI1161	1	[{"added": {}}, {"added": {"object": "SI1161hb", "name": "experiment instance"}}, {"added": {"object": "SI1161yg", "name": "experiment instance"}}]	13	1
986	2021-05-25 05:48:44.476709+00	SI1176	SI1176	1	[{"added": {}}, {"added": {"object": "SI1176hb", "name": "experiment instance"}}, {"added": {"object": "SI1176yg", "name": "experiment instance"}}]	13	1
987	2021-05-25 05:49:12.649745+00	SI1183	SI1183	1	[{"added": {}}, {"added": {"object": "SI1183hb", "name": "experiment instance"}}, {"added": {"object": "SI1183yg", "name": "experiment instance"}}]	13	1
1024	2021-07-16 03:08:09.669567+00	FM013	FM013	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "FM013ke"}}]	13	1
988	2021-05-25 05:49:47.518676+00	SI1190	SI1190	1	[{"added": {}}, {"added": {"object": "SI1190hb", "name": "experiment instance"}}, {"added": {"object": "SI1190yg", "name": "experiment instance"}}]	13	1
989	2021-05-25 05:50:20.649922+00	SI1204	SI1204	1	[{"added": {}}, {"added": {"object": "SI1204hb", "name": "experiment instance"}}, {"added": {"object": "SI1204yg", "name": "experiment instance"}}]	13	1
990	2021-05-25 05:50:48.626533+00	SI1211	SI1211	1	[{"added": {}}, {"added": {"object": "SI1211hb", "name": "experiment instance"}}, {"added": {"object": "SI1211yg", "name": "experiment instance"}}]	13	1
991	2021-05-25 05:51:25.303565+00	SI1217	SI1217	1	[{"added": {}}, {"added": {"object": "SI1217hb", "name": "experiment instance"}}, {"added": {"object": "SI1217yg", "name": "experiment instance"}}]	13	1
992	2021-05-25 05:52:34.685402+00	SI1225	SI1225	1	[{"added": {}}, {"added": {"object": "SI1225hb", "name": "experiment instance"}}, {"added": {"object": "SI1225yg", "name": "experiment instance"}}]	13	1
993	2021-05-25 05:54:05.858949+00	SI1217	SI1217	2	[{"changed": {"fields": ["schedate"]}}]	13	1
994	2021-05-25 05:54:41.31237+00	SI1232	SI1232	1	[{"added": {}}, {"added": {"object": "SI1232hb", "name": "experiment instance"}}, {"added": {"object": "SI1232yg", "name": "experiment instance"}}]	13	1
995	2021-05-25 05:55:11.259666+00	SI1239	SI1239	1	[{"added": {}}, {"added": {"object": "SI1239hb", "name": "experiment instance"}}, {"added": {"object": "SI1239yg", "name": "experiment instance"}}]	13	1
996	2021-05-25 05:55:41.395599+00	SI1246	SI1246	1	[{"added": {}}, {"added": {"object": "SI1246hb", "name": "experiment instance"}}, {"added": {"object": "SI1246yg", "name": "experiment instance"}}]	13	1
997	2021-05-25 05:56:20.047331+00	SI1197	SI1197	1	[{"added": {}}, {"added": {"object": "SI1197hb", "name": "experiment instance"}}, {"added": {"object": "SI1197yg", "name": "experiment instance"}}]	13	1
998	2021-06-01 02:43:14.408274+00	S003E	S003E	1	[{"added": {}}, {"added": {"object": "S003Ecd", "name": "experiment instance"}}, {"added": {"object": "S003Ehb", "name": "experiment instance"}}, {"added": {"object": "S003Eke", "name": "experiment instance"}}]	13	1
999	2021-06-01 02:50:25.75593+00	S014A	S014A	1	[{"added": {}}, {"added": {"object": "S014Acd", "name": "experiment instance"}}, {"added": {"object": "S014Ahb", "name": "experiment instance"}}, {"added": {"object": "S014Ake", "name": "experiment instance"}}]	13	1
1000	2021-06-01 22:57:22.380355+00	S010G	S010G	1	[{"added": {}}, {"added": {"object": "S010Gke", "name": "experiment instance"}}, {"added": {"object": "S010Gcd", "name": "experiment instance"}}, {"added": {"object": "S010Ghb", "name": "experiment instance"}}]	13	1
1001	2021-06-02 00:34:26.406128+00	S011G	S011G	1	[{"added": {}}, {"added": {"object": "S011Gke", "name": "experiment instance"}}, {"added": {"object": "S011Gcd", "name": "experiment instance"}}, {"added": {"object": "S011Ghb", "name": "experiment instance"}}]	13	1
1002	2021-06-02 00:35:54.967442+00	S001M	S001M	1	[{"added": {}}, {"added": {"object": "S001Mke", "name": "experiment instance"}}, {"added": {"object": "S001Mcd", "name": "experiment instance"}}, {"added": {"object": "S001Mhb", "name": "experiment instance"}}]	13	1
1003	2021-06-08 03:29:57.484264+00	S014B	S014B	1	[{"added": {}}, {"added": {"object": "S014Bke", "name": "experiment instance"}}, {"added": {"object": "S014Bcd", "name": "experiment instance"}}, {"added": {"object": "S014Bhb", "name": "experiment instance"}}]	13	1
1004	2021-06-08 03:30:50.968101+00	S003F	S003F	1	[{"added": {}}, {"added": {"object": "S003Fke", "name": "experiment instance"}}, {"added": {"object": "S003Fcd", "name": "experiment instance"}}, {"added": {"object": "S003Fhb", "name": "experiment instance"}}]	13	1
1005	2021-06-08 03:33:43.890632+00	S009G	S009G	1	[{"added": {}}, {"added": {"object": "S009Gke", "name": "experiment instance"}}, {"added": {"object": "S009Gcd", "name": "experiment instance"}}, {"added": {"object": "S009Ghb", "name": "experiment instance"}}]	13	1
1006	2021-06-09 05:07:12.097239+00	FM005	FM005	1	[{"added": {}}, {"added": {"object": "FM005ke", "name": "experiment instance"}}]	13	1
1007	2021-06-09 05:07:33.130894+00	FM007	FM007	1	[{"added": {}}, {"added": {"object": "FM007ho", "name": "experiment instance"}}]	13	1
1008	2021-06-09 05:07:52.397825+00	FM008	FM008	1	[{"added": {}}, {"added": {"object": "FM008ke", "name": "experiment instance"}}]	13	1
1009	2021-06-09 05:08:18.029143+00	FM009	FM009	1	[{"added": {}}, {"added": {"object": "FM009ke", "name": "experiment instance"}}]	13	1
1010	2021-06-09 05:11:10.89747+00	FM007	FM007	2	[{"changed": {"object": "FM007ke", "name": "experiment instance", "fields": ["sched_size", "station"]}}]	13	1
1011	2021-06-09 05:11:46.702583+00	FM006	FM006	1	[{"added": {}}, {"added": {"object": "FM006ke", "name": "experiment instance"}}]	13	1
1012	2021-06-10 03:18:49.653724+00	VX029A	VX029A	2	[{"added": {"object": "VX029Acd", "name": "experiment instance"}}, {"added": {"object": "VX029Aho", "name": "experiment instance"}}, {"added": {"object": "VX029Ake", "name": "experiment instance"}}, {"changed": {"object": "VX029Atd", "name": "experiment instance", "fields": ["station", "raid"]}}]	13	1
1013	2021-06-15 01:25:18.631888+00	VX029A	VX029A	2	[{"changed": {"fields": ["schedate"]}}]	13	1
1014	2021-06-15 02:23:19.027064+00	S015A	S015A	1	[{"added": {}}, {"added": {"object": "S015Ake", "name": "experiment instance"}}, {"added": {"object": "S015Acd", "name": "experiment instance"}}, {"added": {"object": "S015Ahb", "name": "experiment instance"}}]	13	1
1015	2021-06-28 01:57:56.120523+00	V576B	V576B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V576Bho"}}, {"added": {"name": "experiment instance", "object": "V576Bcd"}}, {"added": {"name": "experiment instance", "object": "V576Btd"}}]	13	1
1016	2021-06-28 01:58:18.788951+00	V576C	V576C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V576Ccd"}}, {"added": {"name": "experiment instance", "object": "V576Cho"}}, {"added": {"name": "experiment instance", "object": "V576Ctd"}}]	13	1
1017	2021-06-28 04:14:59.017536+00	S015B	S015B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S015Bke"}}, {"added": {"name": "experiment instance", "object": "S015Bcd"}}, {"added": {"name": "experiment instance", "object": "S015Bhb"}}]	13	1
1018	2021-07-09 02:30:28.671907+00	S004K	S004K	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Kke"}}, {"added": {"name": "experiment instance", "object": "S004Khb"}}, {"added": {"name": "experiment instance", "object": "S004Kke"}}]	13	1
1019	2021-07-09 03:17:45.777523+00	S004J	S004J	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Jke"}}, {"added": {"name": "experiment instance", "object": "S004Jhb"}}, {"added": {"name": "experiment instance", "object": "S004Jcd"}}]	13	1
1020	2021-07-12 02:46:03.944604+00	S004K	S004K	2	[{"added": {"name": "experiment instance", "object": "S004Kcd"}}]	13	1
1021	2021-07-15 04:56:36.377308+00	FM004	FM004	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "FM004ke"}}]	13	1
1022	2021-07-15 04:56:52.848209+00	FM010	FM010	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "FM010ke"}}]	13	1
1023	2021-07-15 04:57:11.273224+00	FM012	FM012	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "FM012ke"}}]	13	1
1025	2021-07-16 03:08:29.764777+00	FM015	FM015	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "FM015ke"}}]	13	1
1026	2021-07-16 03:08:47.508208+00	FM017	FM017	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "FM017ke"}}]	13	1
1027	2021-07-19 04:19:47.976124+00	V596B	V596B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V596Bho"}}]	13	1
1028	2021-07-19 04:21:12.423958+00	V595B	V595B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V595Bho"}}]	13	1
1029	2021-07-19 04:21:41.327175+00	VX030A	VX030A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VX030Aho"}}]	13	1
1030	2021-07-19 04:22:11.070619+00	V560H	V560H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V560Hho"}}]	13	1
1031	2021-07-19 04:22:35.223108+00	V576D	V576D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V576Dho"}}]	13	1
1032	2021-07-19 04:23:53.430636+00	V606A	V606A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V606Ake"}}, {"added": {"name": "experiment instance", "object": "V606Ayg"}}, {"added": {"name": "experiment instance", "object": "V606Aho"}}, {"added": {"name": "experiment instance", "object": "V606Acd"}}]	13	1
1033	2021-07-19 04:24:29.048645+00	V605A	V605A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V605Ake"}}, {"added": {"name": "experiment instance", "object": "V605Ayg"}}, {"added": {"name": "experiment instance", "object": "V605Aho"}}, {"added": {"name": "experiment instance", "object": "V605Acd"}}]	13	1
1034	2021-07-19 04:25:25.062474+00	V596B	V596B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V596Bke"}}, {"added": {"name": "experiment instance", "object": "V596Byg"}}, {"added": {"name": "experiment instance", "object": "V596Bho"}}, {"added": {"name": "experiment instance", "object": "V596Bcd"}}]	13	1
1035	2021-07-19 04:26:18.363953+00	VX031A	VX031A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VX031Ake"}}, {"added": {"name": "experiment instance", "object": "VX031Ayg"}}, {"added": {"name": "experiment instance", "object": "VX031Aho"}}, {"added": {"name": "experiment instance", "object": "VX031Acd"}}]	13	1
1036	2021-07-19 04:32:35.993377+00	V605A	V605A	2	[{"changed": {"fields": ["module"], "name": "experiment instance", "object": "V605Ayg"}}]	13	1
1037	2021-07-21 04:05:31.747738+00	AAAMCD	AAAMCD	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "AAAMCDcd"}}]	13	1
1038	2021-08-13 00:28:03.6361+00	S016A	S016A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S016Ake"}}, {"added": {"name": "experiment instance", "object": "S016Ahb"}}, {"added": {"name": "experiment instance", "object": "S016Ake"}}]	13	1
1039	2021-08-13 00:29:01.383233+00	S016B	S016B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S016Bke"}}, {"added": {"name": "experiment instance", "object": "S016Bhb"}}]	13	1
1040	2021-08-13 00:29:44.921057+00	S005I	S005I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Ike"}}, {"added": {"name": "experiment instance", "object": "S005Ihb"}}, {"added": {"name": "experiment instance", "object": "S005Icd"}}]	13	1
1041	2021-08-13 00:30:29.429579+00	S017A	S017A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S017Ake"}}, {"added": {"name": "experiment instance", "object": "S017Ahb"}}, {"added": {"name": "experiment instance", "object": "S017Acd"}}]	13	1
1042	2021-08-13 00:31:18.988593+00	S006G	S006G	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S006Gke"}}, {"added": {"name": "experiment instance", "object": "S006Ghb"}}, {"added": {"name": "experiment instance", "object": "S006Gcd"}}]	13	1
1043	2021-08-13 00:31:57.419364+00	S016C	S016C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S016Cke"}}, {"added": {"name": "experiment instance", "object": "S016Chb"}}, {"added": {"name": "experiment instance", "object": "S016Ccd"}}]	13	1
1044	2021-08-13 00:32:32.505468+00	S005J	S005J	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Jke"}}, {"added": {"name": "experiment instance", "object": "S005Jhb"}}, {"added": {"name": "experiment instance", "object": "S005Jcd"}}]	13	1
1045	2021-08-13 00:33:02.025856+00	S007H	S007H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S007Hke"}}, {"added": {"name": "experiment instance", "object": "S007Hhb"}}, {"added": {"name": "experiment instance", "object": "S007Hcd"}}]	13	1
1046	2021-08-13 00:33:39.899586+00	S017B	S017B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S017Bke"}}, {"added": {"name": "experiment instance", "object": "S017Bhb"}}, {"added": {"name": "experiment instance", "object": "S017Bcd"}}]	13	1
1047	2021-08-13 00:34:35.448597+00	S006H	S006H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S006Hke"}}, {"added": {"name": "experiment instance", "object": "S006Hhb"}}, {"added": {"name": "experiment instance", "object": "S006Hcd"}}]	13	1
1048	2021-08-13 00:35:05.801955+00	S006I	S006I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S006Ike"}}, {"added": {"name": "experiment instance", "object": "S006Ihb"}}, {"added": {"name": "experiment instance", "object": "S006Icd"}}]	13	1
1049	2021-08-13 00:35:40.202309+00	S016D	S016D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S016Dke"}}, {"added": {"name": "experiment instance", "object": "S016Dhb"}}, {"added": {"name": "experiment instance", "object": "S016Dcd"}}]	13	1
1050	2021-08-13 00:36:36.183195+00	S008H	S008H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S008Hke"}}, {"added": {"name": "experiment instance", "object": "S008Hhb"}}, {"added": {"name": "experiment instance", "object": "S008Hcd"}}]	13	1
1051	2021-08-13 00:37:24.009728+00	S018A	S018A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S018Ake"}}, {"added": {"name": "experiment instance", "object": "S018Ahb"}}, {"added": {"name": "experiment instance", "object": "S018Acd"}}]	13	1
1052	2021-08-13 00:53:32.890184+00	S007I	S007I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S007Ike"}}, {"added": {"name": "experiment instance", "object": "S007Ihb"}}, {"added": {"name": "experiment instance", "object": "S007Icd"}}]	13	1
1053	2021-08-13 00:55:33.536423+00	S019A	S019A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S019Ake"}}, {"added": {"name": "experiment instance", "object": "S019Ahb"}}, {"added": {"name": "experiment instance", "object": "S019Acd"}}]	13	1
1054	2021-08-13 00:56:07.162184+00	S020A	S020A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S020Ake"}}, {"added": {"name": "experiment instance", "object": "S020Ahb"}}, {"added": {"name": "experiment instance", "object": "S020Acd"}}]	13	1
1055	2021-08-13 00:56:56.189875+00	S021A	S021A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S021Ake"}}, {"added": {"name": "experiment instance", "object": "S021Ahb"}}, {"added": {"name": "experiment instance", "object": "S021Acd"}}]	13	1
1056	2021-08-13 00:57:31.390342+00	S008I	S008I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S008Ike"}}, {"added": {"name": "experiment instance", "object": "S008Ihb"}}, {"added": {"name": "experiment instance", "object": "S008Icd"}}]	13	1
1057	2021-08-13 00:58:05.814035+00	S018B	S018B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S018Bke"}}, {"added": {"name": "experiment instance", "object": "S018Bhb"}}, {"added": {"name": "experiment instance", "object": "S018Bcd"}}]	13	1
1058	2021-08-13 00:58:54.907427+00	S019B	S019B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S019Bke"}}, {"added": {"name": "experiment instance", "object": "S019Bhb"}}, {"added": {"name": "experiment instance", "object": "S019Bcd"}}]	13	1
1059	2021-08-13 00:59:25.138059+00	S020B	S020B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S020Bke"}}, {"added": {"name": "experiment instance", "object": "S020Bhb"}}, {"added": {"name": "experiment instance", "object": "S020Bcd"}}]	13	1
1060	2021-08-16 03:05:50.568332+00	S017C	S017C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S017Cke"}}, {"added": {"name": "experiment instance", "object": "S017Chb"}}, {"added": {"name": "experiment instance", "object": "S017Ccd"}}]	13	1
1061	2021-09-12 23:03:29.812603+00	S005K	S005K	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S005Kke"}}, {"added": {"name": "experiment instance", "object": "S005Kcd"}}, {"added": {"name": "experiment instance", "object": "S005Khb"}}]	13	1
1062	2021-09-12 23:05:12.030166+00	S007J	S007J	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S007Jke"}}, {"added": {"name": "experiment instance", "object": "S007Jhb"}}, {"added": {"name": "experiment instance", "object": "S007Jcd"}}]	13	1
1063	2021-09-12 23:06:44.407457+00	S010H	S010H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S010Hke"}}, {"added": {"name": "experiment instance", "object": "S010Hhb"}}, {"added": {"name": "experiment instance", "object": "S010Hcd"}}]	13	1
1064	2021-09-12 23:07:12.552675+00	S011H	S011H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S011Hke"}}, {"added": {"name": "experiment instance", "object": "S011Hhb"}}, {"added": {"name": "experiment instance", "object": "S011Hcd"}}]	13	1
1065	2021-09-17 04:44:12.805327+00	SI1253	SI1253	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI1253hb"}}, {"added": {"name": "experiment instance", "object": "SI1253yg"}}]	13	1
1066	2021-09-17 04:45:45.7911+00	SI1260	SI1260	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI1260yg"}}, {"added": {"name": "experiment instance", "object": "SI1260hb"}}]	13	1
1067	2021-09-17 04:46:57.260065+00	SI1274	SI1274	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI1274yg"}}, {"added": {"name": "experiment instance", "object": "SI1274hb"}}]	13	1
1068	2021-09-29 23:30:45.685695+00	S017D	S017D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S017Dke"}}, {"added": {"name": "experiment instance", "object": "S017Dcd"}}, {"added": {"name": "experiment instance", "object": "S017Dhb"}}]	13	1
1069	2021-09-29 23:32:49.00977+00	S018E	S018E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S018Eke"}}, {"added": {"name": "experiment instance", "object": "S018Ehb"}}, {"added": {"name": "experiment instance", "object": "S018Ecd"}}]	13	1
1070	2021-09-29 23:33:44.057001+00	S017D	S017D	2	[{"changed": {"fields": ["schedate"]}}]	13	1
1071	2021-09-29 23:34:21.517217+00	S010J	S010J	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S010Jke"}}, {"added": {"name": "experiment instance", "object": "S010Jhb"}}, {"added": {"name": "experiment instance", "object": "S010Jcd"}}]	13	1
1072	2021-09-29 23:35:11.880757+00	S018F	S018F	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S018Fke"}}, {"added": {"name": "experiment instance", "object": "S018Fhb"}}, {"added": {"name": "experiment instance", "object": "S018Fcd"}}]	13	1
1073	2021-09-29 23:37:34.611337+00	S018C	S018C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S018Cke"}}, {"added": {"name": "experiment instance", "object": "S018Chb"}}, {"added": {"name": "experiment instance", "object": "S018Ccd"}}]	13	1
1074	2021-09-29 23:38:57.155331+00	S010I	S010I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S010Ike"}}, {"added": {"name": "experiment instance", "object": "S010Ihb"}}, {"added": {"name": "experiment instance", "object": "S010Icd"}}]	13	1
1075	2021-09-29 23:39:54.462582+00	S018D	S018D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S018Dke"}}, {"added": {"name": "experiment instance", "object": "S018Dhb"}}, {"added": {"name": "experiment instance", "object": "S018Dcd"}}]	13	1
1076	2021-09-29 23:41:11.961798+00	S019C	S019C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S019Cke"}}, {"added": {"name": "experiment instance", "object": "S019Chb"}}, {"added": {"name": "experiment instance", "object": "S019Ccd"}}]	13	1
1077	2021-09-29 23:42:46.695429+00	S011I	S011I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S011Ike"}}, {"added": {"name": "experiment instance", "object": "S011Ihb"}}, {"added": {"name": "experiment instance", "object": "S011Icd"}}]	13	1
1078	2021-09-29 23:48:06.771268+00	S019B	S019B	2	[{"changed": {"fields": ["schedate"]}}]	13	1
1079	2021-10-05 00:24:02.027366+00	S020B	S020B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S020Bke"}}, {"added": {"name": "experiment instance", "object": "S020Bcd"}}, {"added": {"name": "experiment instance", "object": "S020Bhb"}}]	13	1
1080	2021-10-05 02:23:10.038074+00	S020A	S020A	2	[{"added": {"name": "experiment instance", "object": "S020Acd"}}]	13	1
1081	2021-10-18 22:02:28.225967+00	V603A	V603A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V603Acd"}}]	13	1
1082	2021-10-25 23:27:19.616513+00	V603B	V603B	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V603Bcd"}}]	13	1
1083	2021-11-04 01:14:06.787869+00	SI1302	SI1302	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI1302yg"}}, {"added": {"name": "experiment instance", "object": "SI1302hb"}}]	13	1
1084	2021-11-04 01:14:35.476705+00	SI1309	SI1309	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "SI1309yg"}}, {"added": {"name": "experiment instance", "object": "SI1309hb"}}]	13	1
1085	2021-11-25 00:54:16.437691+00	VO1327	VO1327	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VO1327hb"}}]	13	1
1086	2021-11-25 00:56:30.33094+00	flxbf2hb	flxbf2hb	1	[{"added": {}}]	12	1
1087	2021-11-25 00:59:41.063188+00	flxbflcd	flxbflcd	1	[{"added": {}}]	12	1
1088	2021-11-30 02:57:01.742695+00	V255AM	V255AM	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V255AMke"}}, {"added": {"name": "experiment instance", "object": "V255AMcd"}}, {"added": {"name": "experiment instance", "object": "V255AMhb"}}]	13	1
1089	2021-12-17 01:15:59.07086+00	V252CA	V252CA	2	[{"changed": {"fields": ["correlator", "schedate"]}}, {"added": {"name": "experiment instance", "object": "V252CAke"}}, {"added": {"name": "experiment instance", "object": "V252CAhb"}}, {"added": {"name": "experiment instance", "object": "V252CAyg"}}, {"added": {"name": "experiment instance", "object": "V252CAcd"}}]	13	1
1090	2021-12-17 01:16:47.389237+00	V609A	V609A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V609Ahb"}}, {"added": {"name": "experiment instance", "object": "V609Acd"}}]	13	1
1091	2021-12-17 01:17:45.805075+00	V594C	V594C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V594Cke"}}, {"added": {"name": "experiment instance", "object": "V594Chb"}}, {"added": {"name": "experiment instance", "object": "V594Cyg"}}, {"added": {"name": "experiment instance", "object": "V594Ccd"}}]	13	1
1092	2021-12-17 01:18:27.888455+00	V594D	V594D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V594Dke"}}, {"added": {"name": "experiment instance", "object": "V594Dhb"}}, {"added": {"name": "experiment instance", "object": "V594Dyg"}}, {"added": {"name": "experiment instance", "object": "V594Dcd"}}]	13	1
1093	2021-12-17 01:19:04.683532+00	V515D	V515D	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V515Dke"}}, {"added": {"name": "experiment instance", "object": "V515Dhb"}}, {"added": {"name": "experiment instance", "object": "V515Dyg"}}, {"added": {"name": "experiment instance", "object": "V515Dcd"}}]	13	1
1094	2021-12-17 01:19:58.054983+00	V589C	V589C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V589Cke"}}, {"added": {"name": "experiment instance", "object": "V589Chb"}}, {"added": {"name": "experiment instance", "object": "V589Cyg"}}, {"added": {"name": "experiment instance", "object": "V589Ccd"}}]	13	1
1095	2021-12-17 01:20:25.040268+00	VX032A	VX032A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "VX032Ake"}}, {"added": {"name": "experiment instance", "object": "VX032Ahb"}}, {"added": {"name": "experiment instance", "object": "VX032Ayg"}}, {"added": {"name": "experiment instance", "object": "VX032Acd"}}]	13	1
1096	2022-01-04 00:14:50.154728+00	AUV004	AUV004	1	[{"added": {}}, {"added": {"object": "AUV004ke", "name": "experiment instance"}}, {"added": {"object": "AUV004hb", "name": "experiment instance"}}]	13	1
1097	2022-01-18 22:54:43.576486+00	S003H	S003H	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S003Hke"}}, {"added": {"name": "experiment instance", "object": "S003Hcd"}}, {"added": {"name": "experiment instance", "object": "S003Hhb"}}]	13	1
1098	2022-01-18 22:55:21.953367+00	S003I	S003I	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S003Ike"}}, {"added": {"name": "experiment instance", "object": "S003Icd"}}, {"added": {"name": "experiment instance", "object": "S003Ihb"}}]	13	1
1099	2022-01-18 22:56:07.720636+00	S004L	S004L	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S004Lke"}}, {"added": {"name": "experiment instance", "object": "S004Lcd"}}, {"added": {"name": "experiment instance", "object": "S004Lhb"}}]	13	1
1100	2022-01-18 22:56:52.352851+00	S014C	S014C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S014Cke"}}, {"added": {"name": "experiment instance", "object": "S014Ccd"}}, {"added": {"name": "experiment instance", "object": "S014Chb"}}]	13	1
1101	2022-01-18 22:57:33.170846+00	S014E	S014E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S014Eke"}}, {"added": {"name": "experiment instance", "object": "S014Ecd"}}, {"added": {"name": "experiment instance", "object": "S014Ehb"}}]	13	1
1102	2022-01-18 22:58:09.955592+00	S015C	S015C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "S015Cke"}}, {"added": {"name": "experiment instance", "object": "S015Ccd"}}, {"added": {"name": "experiment instance", "object": "S015Chb"}}]	13	1
1103	2022-02-08 23:12:01.521985+00	V252CB	V252CB	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V252CBhb"}}, {"added": {"name": "experiment instance", "object": "V252CBke"}}, {"added": {"name": "experiment instance", "object": "V252CByg"}}, {"added": {"name": "experiment instance", "object": "V252CBcd"}}, {"added": {"name": "experiment instance", "object": "V252CBtd"}}]	13	1
1104	2022-02-08 23:12:53.652963+00	V583C	V583C	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V583Cke"}}, {"added": {"name": "experiment instance", "object": "V583Chb"}}, {"added": {"name": "experiment instance", "object": "V583Cyg"}}, {"added": {"name": "experiment instance", "object": "V583Ccd"}}, {"added": {"name": "experiment instance", "object": "V583Ctd"}}]	13	1
1105	2022-02-08 23:13:35.099961+00	V515E	V515E	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V515Eke"}}, {"added": {"name": "experiment instance", "object": "V515Ehb"}}, {"added": {"name": "experiment instance", "object": "V515Eyg"}}, {"added": {"name": "experiment instance", "object": "V515Ecd"}}, {"added": {"name": "experiment instance", "object": "V515Etd"}}]	13	1
1106	2022-02-08 23:14:14.306556+00	V607A	V607A	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "V607Ake"}}, {"added": {"name": "experiment instance", "object": "V607Ahb"}}, {"added": {"name": "experiment instance", "object": "V607Ayg"}}, {"added": {"name": "experiment instance", "object": "V607Acd"}}, {"added": {"name": "experiment instance", "object": "V607Atd"}}]	13	1
1107	2022-02-18 03:38:36.018016+00	Z22045	Z22045	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "Z22045yg"}}, {"added": {"name": "experiment instance", "object": "Z22045hb"}}]	13	1
1108	2022-02-18 03:40:09.128738+00	Z22031	Z22031	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "Z22031hb"}}, {"added": {"name": "experiment instance", "object": "Z22031yg"}}]	13	1
1109	2022-02-18 03:41:45.788846+00	Z22038	Z22038	1	[{"added": {}}, {"added": {"name": "experiment instance", "object": "Z22038hb"}}, {"added": {"name": "experiment instance", "object": "Z22038yg"}}]	13	1
\.


                                                                                                                    2074.dat                                                                                            0000600 0004000 0002000 00000000421 14220762624 0014250 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	admin	logentry
2	auth	group
3	auth	user
4	auth	permission
5	contenttypes	contenttype
6	sessions	session
7	catalog	correlator
8	catalog	raid
9	catalog	experimentinstance
10	catalog	storage
11	catalog	type
12	catalog	module
13	catalog	experiment
14	catalog	vbs_record
\.


                                                                                                                                                                                                                                               2072.dat                                                                                            0000600 0004000 0002000 00000017625 14220762624 0014264 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	contenttypes	0001_initial	2017-08-09 05:29:48.9949+00
2	auth	0001_initial	2017-08-09 05:29:49.806232+00
3	admin	0001_initial	2017-08-09 05:29:49.997844+00
4	admin	0002_logentry_remove_auto_add	2017-08-09 05:29:50.072003+00
5	contenttypes	0002_remove_content_type_name	2017-08-09 05:29:50.130594+00
6	auth	0002_alter_permission_name_max_length	2017-08-09 05:29:50.356223+00
7	auth	0003_alter_user_email_max_length	2017-08-09 05:29:50.506913+00
8	auth	0004_alter_user_username_opts	2017-08-09 05:29:50.524112+00
9	auth	0005_alter_user_last_login_null	2017-08-09 05:29:50.548134+00
10	auth	0006_require_contenttypes_0002	2017-08-09 05:29:50.556545+00
11	auth	0007_alter_validators_add_error_messages	2017-08-09 05:29:50.574012+00
12	auth	0008_alter_user_username_max_length	2017-08-09 05:29:50.757975+00
13	catalog	0001_initial	2017-08-09 05:29:51.141543+00
14	catalog	0002_auto_20170601_1407	2017-08-09 05:29:51.300012+00
15	catalog	0003_auto_20170601_1428	2017-08-09 05:29:51.383682+00
16	catalog	0004_auto_20170601_1447	2017-08-09 05:29:51.566865+00
17	catalog	0005_auto_20170601_1459	2017-08-09 05:29:51.592019+00
18	catalog	0006_auto_20170601_1508	2017-08-09 05:29:51.66711+00
19	catalog	0007_auto_20170601_1542	2017-08-09 05:29:51.691764+00
20	catalog	0008_auto_20170601_1604	2017-08-09 05:29:51.725035+00
21	catalog	0009_experiment_correlation_status	2017-08-09 05:29:51.884473+00
22	catalog	0010_auto_20170602_1230	2017-08-09 05:29:51.916525+00
23	catalog	0011_auto_20170602_1406	2017-08-09 05:29:51.941931+00
24	catalog	0012_auto_20170602_1412	2017-08-09 05:29:51.966929+00
25	catalog	0013_auto_20170602_1454	2017-08-09 05:29:51.991958+00
26	catalog	0014_auto_20170602_1513	2017-08-09 05:29:52.042008+00
27	catalog	0015_auto_20170602_1517	2017-08-09 05:29:52.083358+00
28	catalog	0016_auto_20170602_1539	2017-08-09 05:29:52.259439+00
29	catalog	0017_auto_20170602_1546	2017-08-09 05:29:52.335145+00
30	catalog	0018_auto_20170605_0833	2017-08-09 05:29:52.576454+00
31	catalog	0019_auto_20170605_0836	2017-08-09 05:29:52.609557+00
32	catalog	0020_auto_20170606_1152	2017-08-09 05:29:52.693395+00
33	catalog	0021_auto_20170606_1207	2017-08-09 05:29:52.852268+00
34	catalog	0022_auto_20170606_1212	2017-08-09 05:29:52.943679+00
35	catalog	0023_auto_20170606_1218	2017-08-09 05:29:52.954543+00
36	catalog	0024_expinstance_scans	2017-08-09 05:29:52.976533+00
37	catalog	0025_auto_20170727_1147	2017-08-09 05:29:53.026676+00
38	sessions	0001_initial	2017-08-09 05:29:53.201987+00
39	catalog	0026_auto_20170815_1202	2017-08-15 02:03:18.347579+00
40	catalog	0027_auto_20170815_1237	2017-08-15 02:37:48.773163+00
41	catalog	0026_auto_20170815_1316	2017-08-15 03:16:32.156983+00
42	catalog	0027_auto_20170815_1508	2017-08-15 05:08:15.78986+00
43	catalog	0028_auto_20170816_0830	2017-08-15 22:30:38.836074+00
44	catalog	0029_experimentinstance	2017-08-15 22:46:17.850343+00
45	catalog	0030_auto_20170816_0908	2017-08-15 23:08:14.052911+00
46	catalog	0031_auto_20170816_1548	2017-08-16 05:49:11.545584+00
47	catalog	0032_auto_20170822_1452	2017-08-22 04:57:39.623235+00
48	catalog	0033_auto_20170822_1457	2017-08-22 04:57:40.002258+00
49	catalog	0034_auto_20170905_1130	2017-09-05 01:30:28.086449+00
50	catalog	0035_auto_20170905_1222	2017-09-05 02:22:33.395042+00
51	catalog	0036_auto_20170913_1534	2017-09-13 05:34:11.381174+00
52	catalog	0037_auto_20170913_1538	2017-09-13 05:52:39.118466+00
53	catalog	0038_auto_20170927_1022	2017-09-27 00:22:52.000766+00
54	catalog	0039_auto_20170927_1554	2017-09-27 05:54:16.140403+00
55	catalog	0040_auto_20171006_0906	2017-10-05 22:07:44.715274+00
56	catalog	0041_auto_20171006_0941	2017-10-05 22:42:03.079352+00
57	catalog	0042_auto_20171006_1030	2017-10-05 23:30:37.345277+00
58	catalog	0043_auto_20171006_1032	2017-10-05 23:32:09.586607+00
59	catalog	0044_auto_20171009_1535	2017-10-09 04:35:25.231149+00
60	catalog	0045_auto_20171011_1103	2017-10-11 00:03:54.79438+00
61	catalog	0046_auto_20171012_1639	2017-10-12 05:39:57.578334+00
62	catalog	0047_auto_20171012_1659	2017-10-12 06:07:03.748594+00
63	catalog	0048_auto_20171018_1446	2017-10-18 03:46:54.308314+00
64	catalog	0049_auto_20171018_1614	2017-10-18 05:14:35.465984+00
65	catalog	0050_auto_20171025_1228	2017-10-25 01:30:51.615163+00
66	catalog	0051_auto_20171025_1230	2017-10-25 01:30:51.669269+00
67	catalog	0052_auto_20171025_1239	2017-10-25 01:39:49.695485+00
68	catalog	0053_auto_20171025_1403	2017-10-25 03:03:40.310287+00
69	catalog	0054_auto_20171101_1440	2017-11-01 03:46:50.452922+00
70	catalog	0055_auto_20171101_1446	2017-11-01 03:46:50.511291+00
71	catalog	0056_auto_20171114_1206	2017-11-14 01:06:28.229296+00
72	catalog	0057_auto_20171115_1025	2017-11-14 23:25:41.760298+00
73	catalog	0058_auto_20171116_0932	2017-11-15 22:33:06.735391+00
74	catalog	0059_auto_20171221_1032	2017-12-20 23:32:51.907435+00
75	catalog	0060_auto_20180730_1148	2018-07-30 01:48:47.966687+00
76	catalog	0061_module_location	2018-08-03 05:27:58.355021+00
77	catalog	0062_auto_20180816_1248	2018-08-16 02:48:18.699994+00
78	catalog	0063_auto_20181001_0927	2018-09-30 23:28:00.593071+00
79	catalog	0064_auto_20181002_1029	2018-10-02 00:30:06.748048+00
80	catalog	0065_auto_20181009_0857	2018-10-08 21:58:00.490703+00
81	catalog	0066_module_updated	2018-10-09 00:41:17.100555+00
82	catalog	0067_remove_module_updated	2018-10-09 23:18:07.13278+00
83	catalog	0068_module_modified	2018-10-10 01:53:51.300128+00
84	catalog	0069_auto_20181010_1258	2018-10-10 01:58:58.459877+00
85	catalog	0070_remove_module_modified	2018-10-10 02:10:56.059489+00
86	catalog	0071_module_modified	2018-10-11 00:43:46.745996+00
87	catalog	0072_auto_20181012_1454	2018-10-12 03:55:05.692953+00
88	catalog	0073_auto_20181016_1206	2018-10-16 01:06:35.589801+00
89	catalog	0074_auto_20181016_1518	2018-10-16 04:19:08.716765+00
90	catalog	0075_auto_20181029_1011	2018-10-28 23:12:01.15583+00
91	catalog	0076_auto_20181029_1023	2018-10-28 23:23:24.826087+00
92	catalog	0077_auto_20181029_1025	2018-10-28 23:25:56.399951+00
93	catalog	0078_module_ship	2018-10-31 03:26:54.159004+00
94	catalog	0079_auto_20181101_0944	2018-10-31 22:44:21.142666+00
95	catalog	0080_auto_20181101_1416	2018-11-01 03:16:29.160574+00
96	catalog	0081_auto_20181114_1212	2018-11-14 01:12:38.027975+00
97	catalog	0082_auto_20181122_1712	2018-11-22 06:13:05.514098+00
98	catalog	0083_auto_20181127_1249	2018-11-27 01:49:45.894832+00
99	catalog	0084_auto_20181203_1201	2018-12-03 01:01:29.131339+00
100	catalog	0085_module_transit	2018-12-13 22:28:26.246091+00
101	catalog	0086_auto_20181214_0928	2018-12-13 22:28:26.26894+00
102	catalog	0087_auto_20181217_1207	2018-12-17 01:08:04.826535+00
103	catalog	0088_auto_20190114_0833	2019-01-13 21:33:44.000883+00
104	catalog	0089_experimentinstance_ship_to	2019-02-08 02:58:39.51422+00
105	catalog	0090_auto_20190208_1411	2019-02-08 03:11:47.561844+00
106	catalog	0091_auto_20190220_0928	2019-02-19 22:28:21.736789+00
107	catalog	0092_auto_20190322_1926	2019-03-22 08:26:38.635751+00
108	catalog	0093_auto_20190429_1252	2019-04-29 02:53:11.728295+00
109	catalog	0094_auto_20190708_1332	2019-07-08 03:32:32.838444+00
110	catalog	0095_vbs_record	2019-10-23 02:44:24.326452+00
111	catalog	0096_experimentinstance_vbs	2019-10-23 02:44:24.540954+00
112	catalog	0097_auto_20200218_1121	2020-02-18 00:21:24.572582+00
113	catalog	0098_auto_20200320_1542	2020-03-20 04:42:34.786245+00
114	catalog	0099_auto_20200320_1544	2020-03-20 04:44:56.645269+00
115	catalog	0100_auto_20200323_0857	2020-03-22 21:57:58.922831+00
116	catalog	0101_auto_20200323_0859	2020-03-22 21:59:22.018449+00
117	catalog	0102_auto_20200325_1204	2020-03-25 01:15:32.1288+00
118	catalog	0103_auto_20200325_1212	2020-03-25 01:15:32.175489+00
119	catalog	0104_auto_20200602_0936	2020-06-01 23:36:32.950189+00
120	catalog	0105_experimentinstance_path	2020-06-15 02:39:31.600213+00
121	catalog	0106_auto_20200717_1518	2020-07-17 05:22:22.127695+00
122	catalog	0107_auto_20200902_1030	2020-09-02 00:31:35.024716+00
123	catalog	0108_auto_20200902_1040	2020-09-02 00:40:24.939028+00
124	catalog	0109_auto_20210225_1038	2021-02-24 23:39:50.176724+00
\.


                                                                                                           2096.dat                                                                                            0000600 0004000 0002000 00000173311 14220762624 0014265 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        n7l1st1vtvlalamhy1lomzninu75hhk0	ZjNjZjAwYWFjNjlkMTA5OGEwNjA2MmNlMjBlMGUyNjMwODA1NjU2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-08-23 05:38:33.957108+00
lw1qf4p3huap976xicos2wkq7kkht2o7	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2017-09-08 01:08:10.875258+00
ky2wrl48tem4qwwlreuhrrqnhshslg8v	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-13 03:41:00.478577+00
nz0v6sd1cyuuyv10fjvguq9492bj5mst	ZjNjZjAwYWFjNjlkMTA5OGEwNjA2MmNlMjBlMGUyNjMwODA1NjU2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-10-19 22:37:56.460616+00
u12zke8ikefw1frlj06vs450qm5j2i9o	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-13 04:04:00.56803+00
zmus6n31i2kjevo4ghevjo612wuwg3ha	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-01-03 03:30:19.923179+00
lr4qvw2v71w0l580lagh0w0rswojrx1v	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-02-19 18:57:19.478508+00
hzx6jq5zwdqlfilnfmn9pitqoif2nt11	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-17 21:01:20.746396+00
bxnfx75o40olsvk9yvlzwgyecwmq7iyh	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2019-01-20 05:25:00.436435+00
12ndysz5c1c48k85kdrrx1h4zlujuqia	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-17 21:26:46.935763+00
h4a0wujxmepjamz5gn3cge1l6yqyqf25	MjlhM2JhNGRlNjMzN2QxZWJjMzBmN2MzZjk3ZjljNTFlZDRkMDg1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-12-19 05:41:00.89749+00
wdp74tnve7p1781imuz0tz72qgjkpovl	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2019-01-22 04:08:04.067048+00
p7d88iknm5djzp0tn5icyh9e4ptyoov0	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2018-07-16 03:43:11.150898+00
x9rw1wuhxdd4d1e10dg7w1f4qshzh4dz	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-03-22 22:06:15.447414+00
ff8nafk1n5gwyp56jcqdh3nwbjnnk01f	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-12-24 03:05:23.755423+00
377zbgfjsk81f73s93s0ji3uxnzs92oh	ZmM0NGYwZDljOTkxOGZlZDg1ODAwYWJjMzE3YTNmNTEyMWEzMTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-26 00:01:11.555005+00
fo2meo0lrwy2m5axo8ziq5n4s8415t8f	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-12-24 03:24:47.856937+00
28xmt3cwwnf2ugy4f5fd3hevl8keo9q5	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2018-12-24 03:39:19.463971+00
pe0e5i35gkdlg4opmyh34kc11eh57ewu	ZmM0NGYwZDljOTkxOGZlZDg1ODAwYWJjMzE3YTNmNTEyMWEzMTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2018-12-24 08:52:40.627887+00
91um04ggh0pbyov69hhnwsa31duylemw	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-02-04 05:21:29.551467+00
m04nldwxnv1ouqblf9vz5did8xitslri	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2018-12-27 01:30:25.186441+00
wm5t3rha47k4s2dbmgbu98mzuitqtfgl	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2018-12-27 21:24:25.975743+00
3kddmanwj96cg5v21p7e5dl4htlnnbxb	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-03-05 23:18:57.78066+00
o5xl0uqnooo5ha5txcxxn2ja0p2beojs	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-04-05 08:31:11.098159+00
ow80nmzy46avejkcsyayp3p6yf544itz	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-05-06 04:33:25.041925+00
k6mf95oce9r3exl9zlv4xghh2439d6f8	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-09 19:24:38.230024+00
8fhlved6zr6cl4ncun3p6l1yqfzgf9z2	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-05-27 00:43:07.280959+00
tapn9ltlmry96w229aoj9cp06tvppxj2	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-09-14 13:19:14.243581+00
xwhnl45xn1oxy3msrdk0u6x3sgir0aef	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-07-03 00:05:58.953662+00
n26y4w05ftjv4b3wrbtcppniqca4cfg2	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-15 19:22:23.528354+00
s4i4vkbkogvzqkojg5hmsdcw5xr9js72	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-01-01 04:15:18.604535+00
3w2c3wm2cmejeojnbj3a8zpwn9u1iriw	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-03-11 22:41:54.796585+00
c3b9vs81vxmwqsxi4oqhzopa4lqx3doj	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-04-05 21:40:38.752893+00
7bh9ho62103x7e5voritkykf286k1gio	NGI2YzY2MWRlYWU0ZDk2OGNhYmY2OTk5NTQwYmY4MGEyOTIxMTU2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIyNjYxYzFkYWU0YmJiMmMxM2JhOTk2NzM0MGQ0NGE0MDU3YjY2ZGIwIn0=	2020-04-29 05:57:45.507057+00
odnjhajuxyv7osau7lnm95yrslcr26r9	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-06-09 23:48:52.237607+00
qv9xk8v4090c662xk22rqk6slux92kid	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-11-23 02:21:57.83613+00
2dfkccxyo19qqs1bk9gmg7qyxzod6b62	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-07-23 03:56:24.518387+00
zz71dqxx4q851ohaujx5jisr5qwiox99	ZjNjZjAwYWFjNjlkMTA5OGEwNjA2MmNlMjBlMGUyNjMwODA1NjU2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2020-09-04 03:27:06.75507+00
ba7d9u4etgco1g22uur36ntie4zd5kvp	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-30 19:16:36.304484+00
dnltzb43mr1571xex2z1fw9obb0br2hh	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-02-16 00:28:11.688816+00
2eira4phw744znsm401vwjy9v1hgu2js	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-04-27 00:01:30.686152+00
37kafavq5dlazfp8m0931qtyqonf26dn	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-11-29 03:27:55.52539+00
9o4h7tlov316eecsuudmol9trc5wxxkt	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-04-14 22:47:10.168759+00
l08jii083i4oqkx2jj2u608mxvg4z1jh	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-07-31 07:14:57.126776+00
n4pv89wh7kycm5kz2nvgpcarwmj1kmp8	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-04-23 10:10:10.272288+00
qz9y1wvv117crc8k1bwvjzrcdxg9fgkm	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-03-17 18:35:16.556729+00
rztcmjqk2ibuqh6ha7ed5dvwo25qgw94	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2020-04-07 23:03:50.6794+00
fr8tf3xdwz5516oj7xx6zgeux8ygts9i	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-06-05 03:55:05.27939+00
s0eipvu2ii80vj8j0nya3yan7p1okesf	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2019-07-15 03:45:13.748876+00
95mrd34o3lb3e7l2yom7gg29pjzrgsdk	MjlhM2JhNGRlNjMzN2QxZWJjMzBmN2MzZjk3ZjljNTFlZDRkMDg1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-09-24 23:25:30.854717+00
ebzptqwi4nrzyqktinmubrgjwft2poux	MmY4MThjMDRhMTUwYjgzMTFkNTRiOTVjNjRhODBmYTEyMmFlYTI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-16 04:13:16.461729+00
dbwrybwd3g9lag5h1p4mk0429rya9vkj	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-11-12 02:56:34.379329+00
js63zv74ajgrbpj99wze8ixk80ozakdh	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-01-16 17:14:35.781082+00
a1u7qo9wvqrlfc9di8z25jc83o0vzu76	NGI2YzY2MWRlYWU0ZDk2OGNhYmY2OTk5NTQwYmY4MGEyOTIxMTU2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIyNjYxYzFkYWU0YmJiMmMxM2JhOTk2NzM0MGQ0NGE0MDU3YjY2ZGIwIn0=	2020-04-29 23:27:34.535065+00
thitqzhz6joxho628dr32tzv32vx13b0	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-02-18 18:30:22.249387+00
7o5mmz2rc1szbhiexutat7p2fmue9kbr	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-05-21 04:36:48.852694+00
ldvbz8qymifssrfgji6qadaiym7dg65v	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2020-09-04 18:38:09.454182+00
4ovv00e0hh46di4exw24lb6gs48tnewb	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-09-19 15:41:32.566737+00
d4m3urtp7u9uradwh9y91qt18xtcmmw0	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-03-05 07:52:29.101589+00
ib7gr5okbay1724r1igsea88ropjqotw	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-04-29 02:48:25.559752+00
g7cw6gu0dk9fqqvmx5inb0de1zp6juyw	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-07-04 20:14:27.282812+00
3lrynj33erplk1dxzw1czf0uvep9mqw5	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-08-26 01:55:02.89845+00
zeiiz1vo99cyafljte2cvt44f6nuzkwm	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-09-16 06:36:48.743325+00
1cpqlefeo3dbtp0bwxz5wx05ua62qm30	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-12-29 06:08:56.650258+00
0gm14r8hyr5qtkg2xe1n78s6b5vlegza	ZjNjZjAwYWFjNjlkMTA5OGEwNjA2MmNlMjBlMGUyNjMwODA1NjU2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2022-01-18 00:13:39.628735+00
vkkbal4r03zhvycv78xs5fe5tvn8ov4k	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-04-14 23:20:46.711723+00
2b5iyslmnsi5ttj7meuqytvm0moatvar	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-06-12 06:54:31.354068+00
fzrtljdhdz40jgiu4b3xyoyfrfdqj1xj	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2019-04-23 23:04:14.089613+00
1o1f57trkt891o9y8ke8erymjl87vt45	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-05-28 02:05:47.878304+00
w7f2s7b1uybljagp9snpq53m5x11k40k	MjlhM2JhNGRlNjMzN2QxZWJjMzBmN2MzZjk3ZjljNTFlZDRkMDg1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-21 04:40:49.387116+00
rklzseyrjf7xjt2ucf7ob5n4v5l9hcfg	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-07 08:23:38.844287+00
7dibd7qfl7kttltjz26qt62uqql78l0p	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-11-18 03:05:53.579062+00
rgaenk1h34trfqdm3exx79ixaimk2ym0	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-07-16 19:48:16.225676+00
x9y665rmyalamqc1j704n3gl408y0sie	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-01-10 20:29:28.448759+00
ne5ekspqissu18znj12nrdbxlqkxfbjg	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-01-18 05:47:31.71366+00
2bcxkrvk4x6xt0tte9wgyu1bdrulxhyv	MmY4MThjMDRhMTUwYjgzMTFkNTRiOTVjNjRhODBmYTEyMmFlYTI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-07-31 04:38:08.39775+00
vq4ee9jaqs8qsob3sckxq3vxntecfr04	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-05-05 04:44:39.384777+00
djxneiiyw5dg7nbk51ga6ksh5o6clymd	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-09-21 01:09:23.718855+00
q06itsonkopolys396beku2gmwpbuh30	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-03-12 06:28:51.234616+00
e3g1d0exp4ku4owvqibk3q2dfyqpnrfw	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-06-23 05:03:31.454303+00
pbmey7kxl1d6bz949kbr4u9dhkl0sd23	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-07-11 23:25:29.242812+00
bj7cw7gt8d9jwx63y3604x23oesfrr1c	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-09-01 19:00:01.919671+00
75x9vi74kw0864aln07i1pijphdo9aix	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-12-31 01:08:45.592674+00
njt3v8s23kgpgc690tkft6i2usuqu88v	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2022-01-26 04:42:23.130508+00
jixdjvllalhw2mm23x1zvij2se9afaug	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-08-27 03:35:52.891216+00
acvzhfjnx1wycxlagcei9aokfjpn117g	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-05-09 06:28:26.815976+00
fne1jsnkw6cd9j2uec85q2yp7i2gf5a8	MmY4MThjMDRhMTUwYjgzMTFkNTRiOTVjNjRhODBmYTEyMmFlYTI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-06-17 02:43:31.583096+00
42l5e1u0xartmscczxzd65gm571xujgh	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-21 21:59:51.367762+00
3yf0rd3weng68ii5j30fr405y0d7qpqc	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-03-22 22:36:40.216677+00
22xab8s8tkppomjdqdokiq7l38h8crch	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2019-08-09 04:13:46.039066+00
58bguzh2aar0ewzg4opvprbhmlkkx959	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-08 03:16:33.386228+00
wh48nopw7txpaiqcnykd9f53lmjvbtty	OGU2NmU1ZGZiNmE0ZDIwNzRkNTRmYWI3YjdhOTZkYzMwNGUyYjQ0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNjYxYzFkYWU0YmJiMmMxM2JhOTk2NzM0MGQ0NGE0MDU3YjY2ZGIwIn0=	2019-08-21 23:47:06.011167+00
wi73sc6pxjv0onus8lnf4e9yaiiacvt8	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2019-11-18 23:08:26.747042+00
vg2sj7vlx0opwexxzxf9at8xwdfvfk8r	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-01-15 22:54:49.12975+00
a5pjmkwew4y4ba3ovdskdy5mm5dp64m1	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-01-27 05:46:36.238728+00
o7918votj24nv086tibclscw2vuvxnzn	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-03-02 04:47:20.9699+00
3xvj98owpnuiikgza5x44hpkgd0ytsxm	ZmM0NGYwZDljOTkxOGZlZDg1ODAwYWJjMzE3YTNmNTEyMWEzMTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-01 02:22:58.969161+00
6s7nu4sizxkm7ha9hbhyp71w89v4piim	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-03-17 04:06:23.79061+00
7mlpuvvrk6d1guigd35icv2mcp5w6smx	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-05-13 16:52:26.049652+00
yvvzl71nirsz4deydw3xn829l6qyd752	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-07-19 02:41:40.836017+00
wsd48o1uglh8fkmbv2wme0lr7hq9ojin	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-09-07 22:59:16.815926+00
twsaqms17hji1p1qnnglsyfbdz964xrn	ZjNjZjAwYWFjNjlkMTA5OGEwNjA2MmNlMjBlMGUyNjMwODA1NjU2Mzp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-09-26 23:02:48.362316+00
m7b20iipjuato7ermxg3fqb2jyqbh7qx	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-10-13 23:29:49.709127+00
qadqatodudb8qhzmufdcipahm60vx86j	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-12-13 19:43:49.285844+00
1dbxlnoenn76u998841mkmiubd709vlz	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2022-01-27 22:28:37.525128+00
a7ule8l81x7h8d7p9x1wbpaxkpsxvijp	ZTYwMjM1MTM0YzI4YTFjOTM3NTUyMGY4Y2Q5ZmYzYjFhZDRkMmNlNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2022-03-22 04:04:17.397885+00
g33hzpd9460j7zp4ui37167upntdtwro	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-29 10:34:09.563734+00
nm6kdgw1g7x2vyv1iuhsb9ywbgiekf09	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-04-08 06:56:51.012318+00
udwn4xkwy5d28tdx19pcua6q6vmubceb	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-07-22 23:06:16.466864+00
26e6wesimoe3p0vq4zyb1pe45f2eirnc	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-05-25 06:03:37.174464+00
koa0p66q4moockhcdigj45xkscwjdfl8	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-26 01:01:13.012089+00
x513qvsek0hvxjvt0ll9lgdybyimmnp5	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-03-24 23:22:35.40241+00
jc51n99q0qfd8jegdn510ynfe3xglyrs	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-09 05:01:51.882613+00
k1abfzhx5eoxk5771x9or7f3qohslig6	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-07-08 20:29:43.933008+00
bfmwi8eaxrgdsizmbuyklzouswbozyh2	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-08-06 19:51:35.385582+00
i2ov1fiqczarbapro6kw0pcnvlb6kiz9	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-01-17 15:52:20.396476+00
2hd5chwqgmr416sht38wha5ngomvqk1g	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-01-31 00:33:25.222263+00
mc5lqp2jwf9d5ewlwsvejc1uvk5p4436	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-01 06:42:06.783338+00
oh5906sldfjzez7tjt6xm4wp06auapbz	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-03-04 04:12:02.636346+00
9otput2zfpp8o84ei9aetxdhc410g0ck	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-03-19 19:56:56.52344+00
m2zo6vmctaq62lvgnccys3vuzdhl00h9	NGI2YzY2MWRlYWU0ZDk2OGNhYmY2OTk5NTQwYmY4MGEyOTIxMTU2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIyNjYxYzFkYWU0YmJiMmMxM2JhOTk2NzM0MGQ0NGE0MDU3YjY2ZGIwIn0=	2021-05-19 00:00:36.373419+00
bdg2i0gksx6ag7nrwq3c09ihd3jy5s07	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-10-01 02:28:58.139984+00
afi4qriyhfyrbtmh9uf7uzsomtrclli1	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-12-14 02:48:28.18802+00
cnlm5u71h0pgrpa0nevz79r2ztrlapbi	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2022-02-10 19:14:08.619726+00
qdseghaeefe09te9rjrnwd665hesldow	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2022-03-28 02:54:09.89868+00
55vwt4b6epjp60dxt99d0w9hmlel21x5	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-05-13 00:04:06.749189+00
kz6tlmru928fcfr660t9qo2du308xmvd	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-06-18 02:16:44.008346+00
m2rpu1pwgex3rxqqdm1wu6vncbfqxk76	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2019-08-28 18:12:40.49001+00
rj4ux85gy90c801yea9kf20j77arv5f5	MjlhM2JhNGRlNjMzN2QxZWJjMzBmN2MzZjk3ZjljNTFlZDRkMDg1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-01 10:41:54.127501+00
gaczemb75ztlz64knyvcue7v5j25q64e	MmY4MThjMDRhMTUwYjgzMTFkNTRiOTVjNjRhODBmYTEyMmFlYTI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-25 02:08:56.340925+00
trs4mzdnaplulze15n8f266yd5zm5umu	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-12-03 17:20:43.02396+00
vzlbyzj9q6pp8c4xuqfqw373jwkwsxb3	MmY4MThjMDRhMTUwYjgzMTFkNTRiOTVjNjRhODBmYTEyMmFlYTI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-07-09 11:27:51.372268+00
y21qym1efa7x9vhuosm3s0z5axdbzl6j	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-02-01 02:27:00.973131+00
1195npjusz1pr0e0fqqd6ksdcsbdnh8d	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-04-21 04:02:17.275444+00
2860g7fdc6jsrh8umozreq43fh0imdml	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-05-11 22:49:31.905001+00
4936p5ihnan2rpw33f0gtg81ha0gyt6h	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-08-11 23:37:30.704186+00
pdlcz8mngqoi8clp898yapriswk5mbye	ZmM0NGYwZDljOTkxOGZlZDg1ODAwYWJjMzE3YTNmNTEyMWEzMTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-02-01 22:50:02.541338+00
c4w3ejbgiht9qgij1i593o0md72nzw5o	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-01 08:23:12.315722+00
gb54rzennxw5emrrjy2em4t10drg6wks	NGI2YzY2MWRlYWU0ZDk2OGNhYmY2OTk5NTQwYmY4MGEyOTIxMTU2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjIiLCJfYXV0aF91c2VyX2hhc2giOiIyNjYxYzFkYWU0YmJiMmMxM2JhOTk2NzM0MGQ0NGE0MDU3YjY2ZGIwIn0=	2021-03-24 02:52:45.17107+00
24glmathtjlqdfnufts5xjuz32v9lo72	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-05-20 00:11:52.840685+00
y0fb9j1su5xoroy9ionu7b53hzpiksf7	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-07-26 02:45:23.372889+00
b1zl8sku44zeiwoqjf2pbv9us47pwkoi	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-10-16 23:20:29.233733+00
bcuqw7aoetrudyyjhwavvchjenj0aus9	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-03-02 06:43:34.068744+00
dot68vmgbei4q4pfw96aeum23tcacinw	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-06-01 04:16:41.081266+00
vj9ptm405nz7re8pjv3rnjj0glm1oowz	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-07-01 03:12:57.788459+00
d7vqjmgpr0u066vbicu6wgbuhc4cpvto	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2019-04-17 23:12:06.802495+00
cz4g9cri2x0xmydlk418kprbmzmx7rtx	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-01 16:27:56.295877+00
tfay3dpz2s94bx53qjfq2iamkgmo4g00	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-11-01 22:37:55.286214+00
42nqcvdyt1boz1p5hq69zdamvottu9c0	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-22 05:54:05.47992+00
hmcxanb0uz4g7b5hmqth1t20679y17oi	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-12-16 00:50:39.797705+00
0q3fooguuzhnup95nuwhlqwugavy04bh	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-02-03 02:19:40.470857+00
vus1lh7ncgglbjx5xiet71mchpq1n2vi	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-04-02 02:30:35.021269+00
riszualurgshv462vkvad96ht6g3b61p	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-05-30 18:13:38.675594+00
0mtrnvzlxg7s0kijvei8en326eztk05k	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-08-02 22:59:39.134631+00
p8cmsh90msjy9s874mc5ws5e4ivv6p3a	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-10-28 01:00:35.085485+00
orxg219zqnopkpx57jr8byd7pfspjs5q	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2022-02-25 15:08:25.934678+00
kb96czv7p197szuqvpk2u6kfb084v640	NDVmNTRmYWJmYzM2Njk5OTJiNWI5ZTAxY2U5YzIwMjJmNGYxYjZiODp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2022-04-13 01:12:20.860787+00
v75a14ng6phqesmjik6a4fynytpz6f9l	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-30 03:24:31.99613+00
75kw6aenowjey705r866yeks1zv6ehat	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-06-20 05:07:01.128639+00
ve2kkcifsry7mw381fecfo7nijyzqlmn	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-11-11 23:11:41.029835+00
fcpsh0d0i44vzwrjhwgx0r29pw8dry51	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2019-08-14 18:01:01.579763+00
7pc0xwp9i9dt1bibn5r72c9g65uagjmg	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-06-24 16:36:16.910466+00
me07si44f9156h3rqzhky9t83mejxnw9	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-22 17:11:50.663317+00
t4nzj05agnxs629a75h47a4vrhg18hsy	MmY4MThjMDRhMTUwYjgzMTFkNTRiOTVjNjRhODBmYTEyMmFlYTI5ZDp7Il9hdXRoX3VzZXJfaGFzaCI6ImYwNDUyZDc4ZDlmMDM5YzBkNTVhMzI4OWI1ZTYwZjAzMjU2NTMzZDYiLCJfYXV0aF91c2VyX2lkIjoiMSIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-11-04 00:01:13.864156+00
2f083h7pbxry440nu016m7r7w41juemp	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-02-01 23:57:30.978227+00
l916jbybz4rpldxjbwzysqyr9bp66m7v	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-12-19 15:07:27.718463+00
s9moogoaqe5re57tq99d3a6pwpwdg6as	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-04-05 02:46:44.506115+00
bcm4r3typqjabhrha5vbb0v1scy8qg05	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-02-17 05:09:29.994058+00
t5nohpo4tkh9xp1j9be2837ssktf8ixe	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-08-21 00:26:45.414213+00
xu61zt8ihra0gzmtenubvjl4ifhk56gi	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-10-06 17:31:31.931942+00
fjv060yfhanlw63475ikgzfarxc7lyhf	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-06-02 16:56:40.968859+00
bxpe4mrvtuaxuurx7wan0bnyvwnyf8vx	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-08-18 00:11:09.761269+00
mfkfwi9tq66vdi7shb34nlz757k0yjld	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-10-31 04:44:49.136401+00
ji7rbhtnuwa4qe5914qyb9h0a9cn7m6v	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-03-31 22:47:00.21384+00
yehai5rinwz8sfvyjxeic7zby082660k	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2019-05-15 01:00:02.110627+00
n3lj4cwbcfeyll4kreu9yiuo81583v6e	ZTYwMjM1MTM0YzI4YTFjOTM3NTUyMGY4Y2Q5ZmYzYjFhZDRkMmNlNTp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2019-09-10 21:52:51.092414+00
3s0eqxuqyoljyfuozap7410ycbpeaj81	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-06-05 04:53:47.569475+00
0pq732mr0m0nf2vsl5b3rrix4xv8gvh7	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-07-02 08:40:02.243559+00
is4lcpx2kd1z2icmw79zepho147vycno	MjlhM2JhNGRlNjMzN2QxZWJjMzBmN2MzZjk3ZjljNTFlZDRkMDg1Yzp7Il9hdXRoX3VzZXJfaGFzaCI6IjI2NjFjMWRhZTRiYmIyYzEzYmE5OTY3MzQwZDQ0YTQwNTdiNjZkYjAiLCJfYXV0aF91c2VyX2lkIjoiMiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-10-05 00:44:35.279962+00
34oozmf56345zud99rq078q5fgwjal0m	ZmM0NGYwZDljOTkxOGZlZDg1ODAwYWJjMzE3YTNmNTEyMWEzMTFmNjp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2019-12-25 21:57:09.956393+00
9qxjg3ky4w4ir62bs496y1grx8r9rjyt	OGU2NmU1ZGZiNmE0ZDIwNzRkNTRmYWI3YjdhOTZkYzMwNGUyYjQ0Mzp7Il9hdXRoX3VzZXJfaWQiOiIyIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNjYxYzFkYWU0YmJiMmMxM2JhOTk2NzM0MGQ0NGE0MDU3YjY2ZGIwIn0=	2020-06-24 23:27:32.778878+00
7jiyszmhquedf5nsi0ojudjlo66tpcqq	NmMzZDM0YWY1NDliZTAzNjViODYxMWNiYjcwYjE3OTExNjE1MTk3NDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2021-02-04 14:00:35.991692+00
ac5v3fdg32do8tvolj2mzb9wpn4vq1jv	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-04-20 20:47:09.035612+00
v5dpcgpxqaih31f6itml571nj0o71a1f	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-06-07 03:16:17.883582+00
pxo99h5umny2ag6cnatks9sfx1bi3fc5	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2021-11-14 20:34:39.933689+00
rca1ib5x9uwmu6md4vpsw5uhr9zvmytp	YjQ4NTIzMGU0N2E2NjkyNTBmOTlkM2U4OTg0ZGZiNWI4ZDU3OTdhZjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2022-03-04 03:36:57.843605+00
8e6t8kvar32qir0699gywy3t7dol9hcr	MmVjNjA2OWRjYTFkNmUxNjMyM2YxYjZjY2I2MzJhMDQzOTdkNTMzNjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMjY2MWMxZGFlNGJiYjJjMTNiYTk5NjczNDBkNDRhNDA1N2I2NmRiMCIsIl9hdXRoX3VzZXJfaWQiOiIyIn0=	2019-04-01 03:46:29.314435+00
rd5ok3q4pwpwgcijcsv4rl2qdb4htcep	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-09-10 23:40:56.311887+00
kuhgd5n2t31d6dzbrcs2r6355l9uicbe	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2020-06-05 04:53:47.627776+00
p35odvn0de6en4dibtymmev699ypdq82	N2U5MmJiMzVlZDNkODM3NGEwNjJiM2VkNmY1YWMyZmE0MDI1ZmIwMjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjkwZDVhOGJmMTA0ZDhmZGQzNTZmZGVkY2VhYzkyYjEwMzZkNmVhYyIsIl9hdXRoX3VzZXJfaWQiOiIzIn0=	2019-05-25 20:06:52.086227+00
2h9ipom0yzpz9z6lwvya6csz5lbbj86c	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-11-18 04:13:47.13277+00
2gfgperlrbfm7iumr1fs08njg2v5a87l	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2019-06-03 00:18:28.638139+00
ck6b8ze8y4h3pqvh5849544cosstm0re	NGQ1NzgxODMzYjJlOWVhOGQ5NDg1ZDAzMDNkY2RiYTlhNjE2Njg5Njp7Il9hdXRoX3VzZXJfaGFzaCI6ImY5MGQ1YThiZjEwNGQ4ZmRkMzU2ZmRlZGNlYWM5MmIxMDM2ZDZlYWMiLCJfYXV0aF91c2VyX2lkIjoiMyIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-04-01 11:02:42.928402+00
hc5ywjs6rs28myppdoj5jv1t421q3prq	MGM0MzhkYzkwNDdkZTdjZmE3NjJlYTNhNTUwZGRkODI0MWRhMmNlZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=	2020-12-23 03:12:53.98968+00
1r5szeucz1bb68itg0z12i3x6nr6u07t	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-04-29 02:08:29.506091+00
3w5qpj6b8dxmrkw5yrjmite8te2c6ccq	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2020-05-21 00:53:37.895194+00
9j0mwdtz2mws888xotc6cnqgpy42fcy1	Y2RmZjIwZDRjMDE2YmZlY2RmYjIyODUwZjBiNTZmZDBkN2VmNDI2Mjp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2hhc2giOiJmMDQ1MmQ3OGQ5ZjAzOWMwZDU1YTMyODliNWU2MGYwMzI1NjUzM2Q2In0=	2021-04-20 20:47:10.318812+00
so80x4hkkx9ohtbdjp973in1zqva62bj	ZDI0YjgxMzU4ZDcxODY1YWFlMGE0NGVjMTU0MjJjNDA0NjA2MWExODp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6IjMiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2021-06-17 17:58:23.557012+00
ky4glxvj6anbjvh3vdi53k0v3c2tha9e	OGQ4NDdjZTI4M2VlNWY1NzU3NGRiMDIyM2RiOGFhY2EyMDRkMzRlNzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiZjA0NTJkNzhkOWYwMzljMGQ1NWEzMjg5YjVlNjBmMDMyNTY1MzNkNiIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2021-11-18 01:13:15.042136+00
whrz88xktqc5zy56wuhuqafokpmy0eez	N2M1ODRkNWI3OWE0MGM1MjgyMDM1ODA5ZDI0MTBlNzE4ZjI1YjUxNTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJmOTBkNWE4YmYxMDRkOGZkZDM1NmZkZWRjZWFjOTJiMTAzNmQ2ZWFjIn0=	2022-03-12 20:15:14.087222+00
\.


                                                                                                                                                                                                                                                                                                                       restore.sql                                                                                         0000600 0004000 0002000 00000153146 14220762624 0015403 0                                                                                                    ustar00 postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
ALTER TABLE ONLY public.catalog_storage DROP CONSTRAINT catalog_storage_correlator_id_c8c0a52a_fk_catalog_c;
ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentin_module_id_166f0e5c_fk_catalog_m;
ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentin_experimentinstance_i_b5df3430_fk_catalog_e;
ALTER TABLE ONLY public.catalog_experimentinstance DROP CONSTRAINT catalog_experimentin_experiment_id_1670b571_fk_catalog_e;
ALTER TABLE ONLY public.catalog_experiment DROP CONSTRAINT catalog_experiment_type_id_9b5043cb_fk;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
DROP TRIGGER update_module_modtime ON public.catalog_module;
DROP INDEX public.django_session_session_key_c0390e0f_like;
DROP INDEX public.django_session_expire_date_a5c62663;
DROP INDEX public.django_admin_log_user_id_c564eba6;
DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
DROP INDEX public.catalog_type_name_37240d35_like;
DROP INDEX public.catalog_storage_correlator_id_c8c0a52a_like;
DROP INDEX public.catalog_storage_correlator_id_c8c0a52a;
DROP INDEX public.catalog_raid_name_d5d71b4b_like;
DROP INDEX public.catalog_module_vsn_83f1ce2c_like;
DROP INDEX public.catalog_experimentinstance_raid_id_0a3f66e0;
DROP INDEX public.catalog_experimentinstance_module_module_id_166f0e5c_like;
DROP INDEX public.catalog_experimentinstance_module_module_id_166f0e5c;
DROP INDEX public.catalog_experimentinstance_experimentinstance_id_b5df3430;
DROP INDEX public.catalog_experimentinstance_experiment_id_1670b571_like;
DROP INDEX public.catalog_experimentinstance_experiment_id_1670b571;
DROP INDEX public.catalog_experiment_type_id_9b5043cb;
DROP INDEX public.catalog_experiment_name_58bd11be_like;
DROP INDEX public.catalog_experiment_correlator_id_f82cddd7;
DROP INDEX public.catalog_correlator_name_bcb8c46f_like;
DROP INDEX public.auth_user_username_6821ab7c_like;
DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
DROP INDEX public.auth_user_groups_group_id_97559544;
DROP INDEX public.auth_permission_content_type_id_2f476e4b;
DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
DROP INDEX public.auth_group_name_a6ea08ec_like;
ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
ALTER TABLE ONLY public.catalog_type DROP CONSTRAINT catalog_type_name_37240d35_uniq;
ALTER TABLE ONLY public.catalog_type DROP CONSTRAINT catalog_type_name_37240d35_pk;
ALTER TABLE ONLY public.catalog_storage DROP CONSTRAINT catalog_storage_pkey;
ALTER TABLE ONLY public.catalog_raid DROP CONSTRAINT catalog_raid_name_d5d71b4b_uniq;
ALTER TABLE ONLY public.catalog_raid DROP CONSTRAINT catalog_raid_name_d5d71b4b_pk;
ALTER TABLE ONLY public.catalog_module DROP CONSTRAINT catalog_module_vsn_83f1ce2c_uniq;
ALTER TABLE ONLY public.catalog_module DROP CONSTRAINT catalog_module_vsn_83f1ce2c_pk;
ALTER TABLE ONLY public.catalog_experimentinstance DROP CONSTRAINT catalog_experimentinstance_pkey;
ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentinstance_module_pkey;
ALTER TABLE ONLY public.catalog_experimentinstance_module DROP CONSTRAINT catalog_experimentinstan_experimentinstance_id_mo_69534f0d_uniq;
ALTER TABLE ONLY public.catalog_experiment DROP CONSTRAINT catalog_experiment_name_58bd11be_uniq;
ALTER TABLE ONLY public.catalog_experiment DROP CONSTRAINT catalog_experiment_name_58bd11be_pk;
ALTER TABLE ONLY public.catalog_correlator DROP CONSTRAINT catalog_correlator_name_bcb8c46f_uniq;
ALTER TABLE ONLY public.catalog_correlator DROP CONSTRAINT catalog_correlator_name_bcb8c46f_pk;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_storage ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_experimentinstance_module ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.catalog_experimentinstance ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
DROP TABLE public.django_session;
DROP SEQUENCE public.django_migrations_id_seq;
DROP TABLE public.django_migrations;
DROP SEQUENCE public.django_content_type_id_seq;
DROP TABLE public.django_content_type;
DROP SEQUENCE public.django_admin_log_id_seq;
DROP TABLE public.django_admin_log;
DROP TABLE public.catalog_type;
DROP SEQUENCE public.catalog_storage_id_seq;
DROP TABLE public.catalog_storage;
DROP TABLE public.catalog_raid;
DROP TABLE public.catalog_module;
DROP SEQUENCE public.catalog_experimentinstance_module_id_seq;
DROP TABLE public.catalog_experimentinstance_module;
DROP SEQUENCE public.catalog_experimentinstance_id_seq;
DROP TABLE public.catalog_experimentinstance;
DROP TABLE public.catalog_experiment;
DROP TABLE public.catalog_correlator;
DROP SEQUENCE public.auth_user_user_permissions_id_seq;
DROP TABLE public.auth_user_user_permissions;
DROP SEQUENCE public.auth_user_id_seq;
DROP SEQUENCE public.auth_user_groups_id_seq;
DROP TABLE public.auth_user_groups;
DROP TABLE public.auth_user;
DROP SEQUENCE public.auth_permission_id_seq;
DROP TABLE public.auth_permission;
DROP SEQUENCE public.auth_group_permissions_id_seq;
DROP TABLE public.auth_group_permissions;
DROP SEQUENCE public.auth_group_id_seq;
DROP TABLE public.auth_group;
DROP FUNCTION public.update_modified_column();
DROP EXTENSION plpgsql;
DROP SCHEMA public;
--
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: update_modified_column(); Type: FUNCTION; Schema: public; Owner: observer
--

CREATE FUNCTION update_modified_column() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
BEGIN
    NEW.modified = CURRENT_DATE;
    RETURN NEW;
END;
$$;


ALTER FUNCTION public.update_modified_column() OWNER TO observer;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO observer;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO observer;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO observer;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO observer;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO observer;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO observer;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO observer;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO observer;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO observer;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO observer;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO observer;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO observer;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: catalog_correlator; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_correlator (
    name character varying(4) NOT NULL
);


ALTER TABLE public.catalog_correlator OWNER TO observer;

--
-- Name: catalog_experiment; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_experiment (
    name character varying(6) NOT NULL,
    schedate date,
    correlator_id character varying(4),
    type_id character varying(4),
    correlation_status boolean DEFAULT false NOT NULL
);


ALTER TABLE public.catalog_experiment OWNER TO observer;

--
-- Name: catalog_experimentinstance; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_experimentinstance (
    id integer NOT NULL,
    recorded date,
    scans integer,
    sched_size integer,
    rec_size integer,
    station character varying(2) NOT NULL,
    "extract" character varying(1) DEFAULT 'p'::character varying NOT NULL,
    transfer character varying(1) DEFAULT 'p'::character varying NOT NULL,
    data_status character varying(1) DEFAULT 'n'::character varying NOT NULL,
    experiment_id character varying(6),
    raid_id character varying(16),
    ship_to character varying(24),
    path character varying(256),
    hobart character varying(1) NOT NULL
);


ALTER TABLE public.catalog_experimentinstance OWNER TO observer;

--
-- Name: catalog_experimentinstance_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE catalog_experimentinstance_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_experimentinstance_id_seq OWNER TO observer;

--
-- Name: catalog_experimentinstance_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE catalog_experimentinstance_id_seq OWNED BY catalog_experimentinstance.id;


--
-- Name: catalog_experimentinstance_module; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_experimentinstance_module (
    id integer NOT NULL,
    experimentinstance_id integer NOT NULL,
    module_id character varying(10) NOT NULL
);


ALTER TABLE public.catalog_experimentinstance_module OWNER TO observer;

--
-- Name: catalog_experimentinstance_module_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE catalog_experimentinstance_module_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_experimentinstance_module_id_seq OWNER TO observer;

--
-- Name: catalog_experimentinstance_module_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE catalog_experimentinstance_module_id_seq OWNED BY catalog_experimentinstance_module.id;


--
-- Name: catalog_module; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_module (
    vsn character varying(8) NOT NULL,
    size integer,
    free integer,
    location character varying(2),
    modified date,
    ship character varying(20),
    transit boolean NOT NULL
);


ALTER TABLE public.catalog_module OWNER TO observer;

--
-- Name: catalog_raid; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_raid (
    name character varying(16) NOT NULL,
    freespace integer,
    ip character varying(16) NOT NULL,
    path character varying(100),
    size integer
);


ALTER TABLE public.catalog_raid OWNER TO observer;

--
-- Name: catalog_storage; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_storage (
    id integer NOT NULL,
    server_name character varying(100) NOT NULL,
    ip character varying(100) NOT NULL,
    port character varying(100) NOT NULL,
    freespace integer,
    transferrate integer,
    correlator_id character varying(4)
);


ALTER TABLE public.catalog_storage OWNER TO observer;

--
-- Name: catalog_storage_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE catalog_storage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.catalog_storage_id_seq OWNER TO observer;

--
-- Name: catalog_storage_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE catalog_storage_id_seq OWNED BY catalog_storage.id;


--
-- Name: catalog_type; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE catalog_type (
    name character varying(4) NOT NULL
);


ALTER TABLE public.catalog_type OWNER TO observer;

--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO observer;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO observer;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO observer;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO observer;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO observer;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: observer
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO observer;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: observer
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: observer; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO observer;

--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_experimentinstance ALTER COLUMN id SET DEFAULT nextval('catalog_experimentinstance_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_experimentinstance_module ALTER COLUMN id SET DEFAULT nextval('catalog_experimentinstance_module_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_storage ALTER COLUMN id SET DEFAULT nextval('catalog_storage_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: observer
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY auth_group (id, name) FROM stdin;
\.
COPY auth_group (id, name) FROM '$$PATH$$/2078.dat';

--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, true);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.
COPY auth_group_permissions (id, group_id, permission_id) FROM '$$PATH$$/2080.dat';

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 2, true);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
\.
COPY auth_permission (id, name, content_type_id, codename) FROM '$$PATH$$/2076.dat';

--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('auth_permission_id_seq', 43, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.
COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM '$$PATH$$/2082.dat';

--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.
COPY auth_user_groups (id, user_id, group_id) FROM '$$PATH$$/2084.dat';

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 2, true);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('auth_user_id_seq', 4, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.
COPY auth_user_user_permissions (id, user_id, permission_id) FROM '$$PATH$$/2086.dat';

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 6, true);


--
-- Data for Name: catalog_correlator; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_correlator (name) FROM stdin;
\.
COPY catalog_correlator (name) FROM '$$PATH$$/2089.dat';

--
-- Data for Name: catalog_experiment; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_experiment (name, schedate, correlator_id, type_id, correlation_status) FROM stdin;
\.
COPY catalog_experiment (name, schedate, correlator_id, type_id, correlation_status) FROM '$$PATH$$/2090.dat';

--
-- Data for Name: catalog_experimentinstance; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_experimentinstance (id, recorded, scans, sched_size, rec_size, station, "extract", transfer, data_status, experiment_id, raid_id, ship_to, path, hobart) FROM stdin;
\.
COPY catalog_experimentinstance (id, recorded, scans, sched_size, rec_size, station, "extract", transfer, data_status, experiment_id, raid_id, ship_to, path, hobart) FROM '$$PATH$$/2098.dat';

--
-- Name: catalog_experimentinstance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('catalog_experimentinstance_id_seq', 2977, true);


--
-- Data for Name: catalog_experimentinstance_module; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_experimentinstance_module (id, experimentinstance_id, module_id) FROM stdin;
\.
COPY catalog_experimentinstance_module (id, experimentinstance_id, module_id) FROM '$$PATH$$/2100.dat';

--
-- Name: catalog_experimentinstance_module_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('catalog_experimentinstance_module_id_seq', 1557, true);


--
-- Data for Name: catalog_module; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_module (vsn, size, free, location, modified, ship, transit) FROM stdin;
\.
COPY catalog_module (vsn, size, free, location, modified, ship, transit) FROM '$$PATH$$/2094.dat';

--
-- Data for Name: catalog_raid; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_raid (name, freespace, ip, path, size) FROM stdin;
\.
COPY catalog_raid (name, freespace, ip, path, size) FROM '$$PATH$$/2095.dat';

--
-- Data for Name: catalog_storage; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_storage (id, server_name, ip, port, freespace, transferrate, correlator_id) FROM stdin;
\.
COPY catalog_storage (id, server_name, ip, port, freespace, transferrate, correlator_id) FROM '$$PATH$$/2092.dat';

--
-- Name: catalog_storage_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('catalog_storage_id_seq', 9, true);


--
-- Data for Name: catalog_type; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY catalog_type (name) FROM stdin;
\.
COPY catalog_type (name) FROM '$$PATH$$/2093.dat';

--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.
COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM '$$PATH$$/2088.dat';

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1109, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY django_content_type (id, app_label, model) FROM stdin;
\.
COPY django_content_type (id, app_label, model) FROM '$$PATH$$/2074.dat';

--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY django_migrations (id, app, name, applied) FROM stdin;
\.
COPY django_migrations (id, app, name, applied) FROM '$$PATH$$/2072.dat';

--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: observer
--

SELECT pg_catalog.setval('django_migrations_id_seq', 124, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: observer
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.
COPY django_session (session_key, session_data, expire_date) FROM '$$PATH$$/2096.dat';

--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: catalog_correlator_name_bcb8c46f_pk; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_correlator
    ADD CONSTRAINT catalog_correlator_name_bcb8c46f_pk PRIMARY KEY (name);


--
-- Name: catalog_correlator_name_bcb8c46f_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_correlator
    ADD CONSTRAINT catalog_correlator_name_bcb8c46f_uniq UNIQUE (name);


--
-- Name: catalog_experiment_name_58bd11be_pk; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_experiment
    ADD CONSTRAINT catalog_experiment_name_58bd11be_pk PRIMARY KEY (name);


--
-- Name: catalog_experiment_name_58bd11be_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_experiment
    ADD CONSTRAINT catalog_experiment_name_58bd11be_uniq UNIQUE (name);


--
-- Name: catalog_experimentinstan_experimentinstance_id_mo_69534f0d_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentinstan_experimentinstance_id_mo_69534f0d_uniq UNIQUE (experimentinstance_id, module_id);


--
-- Name: catalog_experimentinstance_module_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentinstance_module_pkey PRIMARY KEY (id);


--
-- Name: catalog_experimentinstance_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_experimentinstance
    ADD CONSTRAINT catalog_experimentinstance_pkey PRIMARY KEY (id);


--
-- Name: catalog_module_vsn_83f1ce2c_pk; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_module
    ADD CONSTRAINT catalog_module_vsn_83f1ce2c_pk PRIMARY KEY (vsn);


--
-- Name: catalog_module_vsn_83f1ce2c_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_module
    ADD CONSTRAINT catalog_module_vsn_83f1ce2c_uniq UNIQUE (vsn);


--
-- Name: catalog_raid_name_d5d71b4b_pk; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_raid
    ADD CONSTRAINT catalog_raid_name_d5d71b4b_pk PRIMARY KEY (name);


--
-- Name: catalog_raid_name_d5d71b4b_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_raid
    ADD CONSTRAINT catalog_raid_name_d5d71b4b_uniq UNIQUE (name);


--
-- Name: catalog_storage_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_storage
    ADD CONSTRAINT catalog_storage_pkey PRIMARY KEY (id);


--
-- Name: catalog_type_name_37240d35_pk; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_type
    ADD CONSTRAINT catalog_type_name_37240d35_pk PRIMARY KEY (name);


--
-- Name: catalog_type_name_37240d35_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY catalog_type
    ADD CONSTRAINT catalog_type_name_37240d35_uniq UNIQUE (name);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: observer; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: catalog_correlator_name_bcb8c46f_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_correlator_name_bcb8c46f_like ON catalog_correlator USING btree (name varchar_pattern_ops);


--
-- Name: catalog_experiment_correlator_id_f82cddd7; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experiment_correlator_id_f82cddd7 ON catalog_experiment USING btree (correlator_id);


--
-- Name: catalog_experiment_name_58bd11be_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experiment_name_58bd11be_like ON catalog_experiment USING btree (name varchar_pattern_ops);


--
-- Name: catalog_experiment_type_id_9b5043cb; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experiment_type_id_9b5043cb ON catalog_experiment USING btree (type_id);


--
-- Name: catalog_experimentinstance_experiment_id_1670b571; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experimentinstance_experiment_id_1670b571 ON catalog_experimentinstance USING btree (experiment_id);


--
-- Name: catalog_experimentinstance_experiment_id_1670b571_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experimentinstance_experiment_id_1670b571_like ON catalog_experimentinstance USING btree (experiment_id varchar_pattern_ops);


--
-- Name: catalog_experimentinstance_experimentinstance_id_b5df3430; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experimentinstance_experimentinstance_id_b5df3430 ON catalog_experimentinstance_module USING btree (experimentinstance_id);


--
-- Name: catalog_experimentinstance_module_module_id_166f0e5c; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experimentinstance_module_module_id_166f0e5c ON catalog_experimentinstance_module USING btree (module_id);


--
-- Name: catalog_experimentinstance_module_module_id_166f0e5c_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experimentinstance_module_module_id_166f0e5c_like ON catalog_experimentinstance_module USING btree (module_id varchar_pattern_ops);


--
-- Name: catalog_experimentinstance_raid_id_0a3f66e0; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_experimentinstance_raid_id_0a3f66e0 ON catalog_experimentinstance USING btree (raid_id);


--
-- Name: catalog_module_vsn_83f1ce2c_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_module_vsn_83f1ce2c_like ON catalog_module USING btree (vsn varchar_pattern_ops);


--
-- Name: catalog_raid_name_d5d71b4b_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_raid_name_d5d71b4b_like ON catalog_raid USING btree (name varchar_pattern_ops);


--
-- Name: catalog_storage_correlator_id_c8c0a52a; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_storage_correlator_id_c8c0a52a ON catalog_storage USING btree (correlator_id);


--
-- Name: catalog_storage_correlator_id_c8c0a52a_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_storage_correlator_id_c8c0a52a_like ON catalog_storage USING btree (correlator_id varchar_pattern_ops);


--
-- Name: catalog_type_name_37240d35_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX catalog_type_name_37240d35_like ON catalog_type USING btree (name varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: observer; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: update_module_modtime; Type: TRIGGER; Schema: public; Owner: observer
--

CREATE TRIGGER update_module_modtime BEFORE UPDATE ON catalog_module FOR EACH ROW EXECUTE PROCEDURE update_modified_column();


--
-- Name: auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_experiment_type_id_9b5043cb_fk; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_experiment
    ADD CONSTRAINT catalog_experiment_type_id_9b5043cb_fk FOREIGN KEY (type_id) REFERENCES catalog_type(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_experimentin_experiment_id_1670b571_fk_catalog_e; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_experimentinstance
    ADD CONSTRAINT catalog_experimentin_experiment_id_1670b571_fk_catalog_e FOREIGN KEY (experiment_id) REFERENCES catalog_experiment(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_experimentin_experimentinstance_i_b5df3430_fk_catalog_e; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentin_experimentinstance_i_b5df3430_fk_catalog_e FOREIGN KEY (experimentinstance_id) REFERENCES catalog_experimentinstance(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_experimentin_module_id_166f0e5c_fk_catalog_m; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_experimentinstance_module
    ADD CONSTRAINT catalog_experimentin_module_id_166f0e5c_fk_catalog_m FOREIGN KEY (module_id) REFERENCES catalog_module(vsn) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: catalog_storage_correlator_id_c8c0a52a_fk_catalog_c; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY catalog_storage
    ADD CONSTRAINT catalog_storage_correlator_id_c8c0a52a_fk_catalog_c FOREIGN KEY (correlator_id) REFERENCES catalog_correlator(name) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: observer
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
GRANT USAGE ON SCHEMA public TO nrao;


--
-- Name: auth_group; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE auth_group FROM PUBLIC;
REVOKE ALL ON TABLE auth_group FROM observer;
GRANT ALL ON TABLE auth_group TO observer;
GRANT SELECT ON TABLE auth_group TO grafanareader;


--
-- Name: auth_group_permissions; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE auth_group_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_group_permissions FROM observer;
GRANT ALL ON TABLE auth_group_permissions TO observer;
GRANT SELECT ON TABLE auth_group_permissions TO grafanareader;


--
-- Name: auth_permission; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE auth_permission FROM PUBLIC;
REVOKE ALL ON TABLE auth_permission FROM observer;
GRANT ALL ON TABLE auth_permission TO observer;
GRANT SELECT ON TABLE auth_permission TO grafanareader;


--
-- Name: auth_user; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE auth_user FROM PUBLIC;
REVOKE ALL ON TABLE auth_user FROM observer;
GRANT ALL ON TABLE auth_user TO observer;
GRANT SELECT ON TABLE auth_user TO grafanareader;


--
-- Name: auth_user_groups; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE auth_user_groups FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_groups FROM observer;
GRANT ALL ON TABLE auth_user_groups TO observer;
GRANT SELECT ON TABLE auth_user_groups TO grafanareader;


--
-- Name: auth_user_user_permissions; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE auth_user_user_permissions FROM PUBLIC;
REVOKE ALL ON TABLE auth_user_user_permissions FROM observer;
GRANT ALL ON TABLE auth_user_user_permissions TO observer;
GRANT SELECT ON TABLE auth_user_user_permissions TO grafanareader;


--
-- Name: catalog_correlator; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_correlator FROM PUBLIC;
REVOKE ALL ON TABLE catalog_correlator FROM observer;
GRANT ALL ON TABLE catalog_correlator TO observer;
GRANT SELECT ON TABLE catalog_correlator TO grafanareader;


--
-- Name: catalog_experiment; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_experiment FROM PUBLIC;
REVOKE ALL ON TABLE catalog_experiment FROM observer;
GRANT ALL ON TABLE catalog_experiment TO observer;
GRANT SELECT ON TABLE catalog_experiment TO grafanareader;


--
-- Name: catalog_experimentinstance; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_experimentinstance FROM PUBLIC;
REVOKE ALL ON TABLE catalog_experimentinstance FROM observer;
GRANT ALL ON TABLE catalog_experimentinstance TO observer;
GRANT SELECT ON TABLE catalog_experimentinstance TO grafanareader;


--
-- Name: catalog_experimentinstance_module; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_experimentinstance_module FROM PUBLIC;
REVOKE ALL ON TABLE catalog_experimentinstance_module FROM observer;
GRANT ALL ON TABLE catalog_experimentinstance_module TO observer;
GRANT SELECT ON TABLE catalog_experimentinstance_module TO grafanareader;


--
-- Name: catalog_module; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_module FROM PUBLIC;
REVOKE ALL ON TABLE catalog_module FROM observer;
GRANT ALL ON TABLE catalog_module TO observer;
GRANT SELECT ON TABLE catalog_module TO grafanareader;
GRANT SELECT ON TABLE catalog_module TO nrao;


--
-- Name: catalog_raid; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_raid FROM PUBLIC;
REVOKE ALL ON TABLE catalog_raid FROM observer;
GRANT ALL ON TABLE catalog_raid TO observer;
GRANT SELECT ON TABLE catalog_raid TO grafanareader;


--
-- Name: catalog_storage; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_storage FROM PUBLIC;
REVOKE ALL ON TABLE catalog_storage FROM observer;
GRANT ALL ON TABLE catalog_storage TO observer;
GRANT SELECT ON TABLE catalog_storage TO grafanareader;


--
-- Name: catalog_type; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE catalog_type FROM PUBLIC;
REVOKE ALL ON TABLE catalog_type FROM observer;
GRANT ALL ON TABLE catalog_type TO observer;
GRANT SELECT ON TABLE catalog_type TO grafanareader;


--
-- Name: django_admin_log; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE django_admin_log FROM PUBLIC;
REVOKE ALL ON TABLE django_admin_log FROM observer;
GRANT ALL ON TABLE django_admin_log TO observer;
GRANT SELECT ON TABLE django_admin_log TO grafanareader;


--
-- Name: django_content_type; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE django_content_type FROM PUBLIC;
REVOKE ALL ON TABLE django_content_type FROM observer;
GRANT ALL ON TABLE django_content_type TO observer;
GRANT SELECT ON TABLE django_content_type TO grafanareader;


--
-- Name: django_migrations; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE django_migrations FROM PUBLIC;
REVOKE ALL ON TABLE django_migrations FROM observer;
GRANT ALL ON TABLE django_migrations TO observer;
GRANT SELECT ON TABLE django_migrations TO grafanareader;


--
-- Name: django_session; Type: ACL; Schema: public; Owner: observer
--

REVOKE ALL ON TABLE django_session FROM PUBLIC;
REVOKE ALL ON TABLE django_session FROM observer;
GRANT ALL ON TABLE django_session TO observer;
GRANT SELECT ON TABLE django_session TO grafanareader;


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          