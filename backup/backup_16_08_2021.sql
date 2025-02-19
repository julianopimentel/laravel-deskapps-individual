PGDMP     $    &                y            tenant    10.16    13.2 �   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    31070    tenant    DATABASE     f   CREATE DATABASE tenant WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Portuguese_Brazil.1252';
    DROP DATABASE tenant;
                postgres    false                        2615    31992 !   igreja_batista_blumenau/sc_100003    SCHEMA     3   CREATE SCHEMA "igreja_batista_blumenau/sc_100003";
 1   DROP SCHEMA "igreja_batista_blumenau/sc_100003";
                postgres    false                        2615    31823 &   igreja_batista_florianopolis/sc_100002    SCHEMA     8   CREATE SCHEMA "igreja_batista_florianopolis/sc_100002";
 6   DROP SCHEMA "igreja_batista_florianopolis/sc_100002";
                postgres    false                        2615    31993    igreja_batista_manaus/am_100004    SCHEMA     1   CREATE SCHEMA "igreja_batista_manaus/am_100004";
 /   DROP SCHEMA "igreja_batista_manaus/am_100004";
                postgres    false                        2615    31991 !   igreja_batista_sao_jose/sc_100001    SCHEMA     3   CREATE SCHEMA "igreja_batista_sao_jose/sc_100001";
 1   DROP SCHEMA "igreja_batista_sao_jose/sc_100001";
                postgres    false            (           1259    36157    balances    TABLE     �   CREATE TABLE "igreja_batista_blumenau/sc_100003".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 9   DROP TABLE "igreja_batista_blumenau/sc_100003".balances;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            %           1259    36149    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".balances_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    296            �           0    0    balances_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".balances_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".balances.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    293            &           1259    36151    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".config_meta_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6            )           1259    36164    config_meta    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_blumenau/sc_100003".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp(6) without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 <   DROP TABLE "igreja_batista_blumenau/sc_100003".config_meta;
    !   igreja_batista_blumenau/sc_100003            postgres    false    294    6            �            1259    32002    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".config_system_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6            �            1259    32032    config_system    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".config_system (
    id bigint DEFAULT nextval('"igreja_batista_blumenau/sc_100003".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer,
    edit_group boolean
);
 >   DROP TABLE "igreja_batista_blumenau/sc_100003".config_system;
    !   igreja_batista_blumenau/sc_100003            postgres    false    248    6            �            1259    32036    email_template    TABLE     ,  CREATE TABLE "igreja_batista_blumenau/sc_100003".email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 ?   DROP TABLE "igreja_batista_blumenau/sc_100003".email_template;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            �            1259    32006    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".email_template_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    254    6            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".email_template_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".email_template.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    249            �            1259    32043    events    TABLE       CREATE TABLE "igreja_batista_blumenau/sc_100003".events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 7   DROP TABLE "igreja_batista_blumenau/sc_100003".events;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            �            1259    32008    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".events_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    255            �           0    0    events_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".events_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".events.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    250            9           1259    36465    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".groups_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6            @           1259    37715    groups    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".groups (
    id bigint DEFAULT nextval('"igreja_batista_blumenau/sc_100003".groups_id_seq'::regclass) NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id bigint,
    type character varying(64),
    deleted_at date,
    status_id bigint,
    created_at date,
    note character varying(255),
    updated_at date,
    count smallint DEFAULT 0
);
 7   DROP TABLE "igreja_batista_blumenau/sc_100003".groups;
    !   igreja_batista_blumenau/sc_100003            postgres    false    313    6            *           1259    36201 	   historics    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 :   DROP TABLE "igreja_batista_blumenau/sc_100003".historics;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            '           1259    36153    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 D   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".historics_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    298    6            �           0    0    historics_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".historics_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".historics.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    295                        1259    32098    notes    TABLE     �  CREATE TABLE "igreja_batista_blumenau/sc_100003".notes (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 6   DROP TABLE "igreja_batista_blumenau/sc_100003".notes;
    !   igreja_batista_blumenau/sc_100003            postgres    false    6            �            1259    32026    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".notes_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6    256            �           0    0    notes_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_blumenau/sc_100003".notes_id_seq OWNED BY "igreja_batista_blumenau/sc_100003".notes.id;
       !   igreja_batista_blumenau/sc_100003          postgres    false    251            �            1259    32028    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".people_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6                       1259    32105    people    TABLE     +  CREATE TABLE "igreja_batista_blumenau/sc_100003".people (
    id bigint DEFAULT nextval('"igreja_batista_blumenau/sc_100003".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer NOT NULL,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying,
    user_id integer
);
 7   DROP TABLE "igreja_batista_blumenau/sc_100003".people;
    !   igreja_batista_blumenau/sc_100003            postgres    false    252    6            ?           1259    37697    people_group_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_blumenau/sc_100003".people_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_blumenau/sc_100003".people_group_id_seq;
    !   igreja_batista_blumenau/sc_100003          postgres    false    6            A           1259    37725    people_group    TABLE       CREATE TABLE "igreja_batista_blumenau/sc_100003".people_group (
    id bigint DEFAULT nextval('"igreja_batista_blumenau/sc_100003".people_group_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    registered timestamp(6) without time zone
);
 =   DROP TABLE "igreja_batista_blumenau/sc_100003".people_group;
    !   igreja_batista_blumenau/sc_100003            postgres    false    319    6                       1259    33061    balances    TABLE     �   CREATE TABLE "igreja_batista_florianopolis/sc_100002".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 >   DROP TABLE "igreja_batista_florianopolis/sc_100002".balances;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5                       1259    33057    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 H   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".balances_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    284    5            �           0    0    balances_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".balances_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".balances.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    282            "           1259    33178    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 H   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".config_meta_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5                       1259    32483    config_meta    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 A   DROP TABLE "igreja_batista_florianopolis/sc_100002".config_meta;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    290    5            �            1259    31824    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 J   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".config_system_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            �            1259    31852    config_system    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".config_system (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer,
    edit_group boolean
);
 C   DROP TABLE "igreja_batista_florianopolis/sc_100002".config_system;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    238    5            �            1259    31856    email_template    TABLE     1  CREATE TABLE "igreja_batista_florianopolis/sc_100002".email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 D   DROP TABLE "igreja_batista_florianopolis/sc_100002".email_template;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31828    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 N   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".email_template_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    243            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".email_template_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".email_template.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    239            �            1259    31996    events    TABLE       CREATE TABLE "igreja_batista_florianopolis/sc_100002".events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 <   DROP TABLE "igreja_batista_florianopolis/sc_100002".events;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31994    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".events_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    247    5            �           0    0    events_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".events_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".events.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    246            <           1259    36490    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".groups_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5                       1259    32894    groups    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".groups (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".groups_id_seq'::regclass) NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id bigint,
    type character varying(64),
    deleted_at date,
    status_id bigint,
    created_at date,
    note character varying(255),
    updated_at date,
    count smallint DEFAULT 0
);
 <   DROP TABLE "igreja_batista_florianopolis/sc_100002".groups;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    316    5                       1259    33066 	   historics    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 ?   DROP TABLE "igreja_batista_florianopolis/sc_100002".historics;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5                       1259    33059    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 I   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".historics_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    285    5            �           0    0    historics_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".historics_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".historics.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    283            �            1259    31914    notes    TABLE     �  CREATE TABLE "igreja_batista_florianopolis/sc_100002".notes (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 ;   DROP TABLE "igreja_batista_florianopolis/sc_100002".notes;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    5            �            1259    31846    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".notes_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5    244            �           0    0    notes_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_florianopolis/sc_100002".notes_id_seq OWNED BY "igreja_batista_florianopolis/sc_100002".notes.id;
       &   igreja_batista_florianopolis/sc_100002          postgres    false    240            �            1259    31848    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 F   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".people_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            �            1259    31921    people    TABLE     5  CREATE TABLE "igreja_batista_florianopolis/sc_100002".people (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer NOT NULL,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying,
    user_id integer
);
 <   DROP TABLE "igreja_batista_florianopolis/sc_100002".people;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    241    5            >           1259    37676    people_group_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_florianopolis/sc_100002".people_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 L   DROP SEQUENCE "igreja_batista_florianopolis/sc_100002".people_group_id_seq;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    5            =           1259    37664    people_group    TABLE     #  CREATE TABLE "igreja_batista_florianopolis/sc_100002".people_group (
    id bigint DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".people_group_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    registered timestamp(6) without time zone
);
 B   DROP TABLE "igreja_batista_florianopolis/sc_100002".people_group;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    318    5            4           1259    36291    balances    TABLE     �   CREATE TABLE "igreja_batista_manaus/am_100004".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 7   DROP TABLE "igreja_batista_manaus/am_100004".balances;
       igreja_batista_manaus/am_100004            postgres    false    11            1           1259    36283    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_manaus/am_100004".balances_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    308            �           0    0    balances_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_manaus/am_100004".balances_id_seq OWNED BY "igreja_batista_manaus/am_100004".balances.id;
          igreja_batista_manaus/am_100004          postgres    false    305            2           1259    36285    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_manaus/am_100004".config_meta_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            5           1259    36298    config_meta    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_manaus/am_100004".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp(6) without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 :   DROP TABLE "igreja_batista_manaus/am_100004".config_meta;
       igreja_batista_manaus/am_100004            postgres    false    306    11                       1259    32303    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_manaus/am_100004".config_system_seq;
       igreja_batista_manaus/am_100004          postgres    false    11                       1259    32333    config_system    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".config_system (
    id bigint DEFAULT nextval('"igreja_batista_manaus/am_100004".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer,
    edit_group boolean
);
 <   DROP TABLE "igreja_batista_manaus/am_100004".config_system;
       igreja_batista_manaus/am_100004            postgres    false    268    11                       1259    32337    email_template    TABLE     *  CREATE TABLE "igreja_batista_manaus/am_100004".email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 =   DROP TABLE "igreja_batista_manaus/am_100004".email_template;
       igreja_batista_manaus/am_100004            postgres    false    11                       1259    32307    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_manaus/am_100004".email_template_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    274    11            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_manaus/am_100004".email_template_id_seq OWNED BY "igreja_batista_manaus/am_100004".email_template.id;
          igreja_batista_manaus/am_100004          postgres    false    269                       1259    32344    events    TABLE       CREATE TABLE "igreja_batista_manaus/am_100004".events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 5   DROP TABLE "igreja_batista_manaus/am_100004".events;
       igreja_batista_manaus/am_100004            postgres    false    11                       1259    32309    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_manaus/am_100004".events_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    275            �           0    0    events_id_seq    SEQUENCE OWNED BY     u   ALTER SEQUENCE "igreja_batista_manaus/am_100004".events_id_seq OWNED BY "igreja_batista_manaus/am_100004".events.id;
          igreja_batista_manaus/am_100004          postgres    false    270            ;           1259    36482    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_manaus/am_100004".groups_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            C           1259    37738    groups    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".groups (
    id bigint DEFAULT nextval('"igreja_batista_manaus/am_100004".groups_id_seq'::regclass) NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id bigint,
    type character varying(64),
    deleted_at date,
    status_id bigint,
    created_at date,
    note character varying(255),
    updated_at date,
    count smallint DEFAULT 0
);
 5   DROP TABLE "igreja_batista_manaus/am_100004".groups;
       igreja_batista_manaus/am_100004            postgres    false    315    11            6           1259    36335 	   historics    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 8   DROP TABLE "igreja_batista_manaus/am_100004".historics;
       igreja_batista_manaus/am_100004            postgres    false    11            3           1259    36287    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 B   DROP SEQUENCE "igreja_batista_manaus/am_100004".historics_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    310    11            �           0    0    historics_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE "igreja_batista_manaus/am_100004".historics_id_seq OWNED BY "igreja_batista_manaus/am_100004".historics.id;
          igreja_batista_manaus/am_100004          postgres    false    307                       1259    32399    notes    TABLE     �  CREATE TABLE "igreja_batista_manaus/am_100004".notes (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 4   DROP TABLE "igreja_batista_manaus/am_100004".notes;
       igreja_batista_manaus/am_100004            postgres    false    11                       1259    32327    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 >   DROP SEQUENCE "igreja_batista_manaus/am_100004".notes_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11    276            �           0    0    notes_id_seq    SEQUENCE OWNED BY     s   ALTER SEQUENCE "igreja_batista_manaus/am_100004".notes_id_seq OWNED BY "igreja_batista_manaus/am_100004".notes.id;
          igreja_batista_manaus/am_100004          postgres    false    271                       1259    32329    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ?   DROP SEQUENCE "igreja_batista_manaus/am_100004".people_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11                       1259    32406    people    TABLE     '  CREATE TABLE "igreja_batista_manaus/am_100004".people (
    id bigint DEFAULT nextval('"igreja_batista_manaus/am_100004".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer NOT NULL,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying,
    user_id integer
);
 5   DROP TABLE "igreja_batista_manaus/am_100004".people;
       igreja_batista_manaus/am_100004            postgres    false    272    11            B           1259    37736    people_group_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_manaus/am_100004".people_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_manaus/am_100004".people_group_id_seq;
       igreja_batista_manaus/am_100004          postgres    false    11            D           1259    37748    people_group    TABLE       CREATE TABLE "igreja_batista_manaus/am_100004".people_group (
    id bigint DEFAULT nextval('"igreja_batista_manaus/am_100004".people_group_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    registered timestamp(6) without time zone
);
 ;   DROP TABLE "igreja_batista_manaus/am_100004".people_group;
       igreja_batista_manaus/am_100004            postgres    false    322    11            .           1259    36224    balances    TABLE     �   CREATE TABLE "igreja_batista_sao_jose/sc_100001".balances (
    id integer NOT NULL,
    user_id integer NOT NULL,
    amount double precision DEFAULT '0'::double precision NOT NULL
);
 9   DROP TABLE "igreja_batista_sao_jose/sc_100001".balances;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7            +           1259    36216    balances_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".balances_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".balances_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    302    7            �           0    0    balances_id_seq    SEQUENCE OWNED BY     }   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".balances_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".balances.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    299            ,           1259    36218    config_meta_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".config_meta_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 C   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".config_meta_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            /           1259    36231    config_meta    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".config_meta (
    id bigint DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".config_meta_seq'::regclass) NOT NULL,
    visitante_mes integer DEFAULT 0,
    batismo_mes integer DEFAULT 0,
    conversao_mes integer DEFAULT 0,
    pessoa_mes integer DEFAULT 0,
    visualizacao_mes integer DEFAULT 0,
    comentario_mes integer DEFAULT 0,
    grupo_ativo_ano integer DEFAULT 0,
    visitante_ano integer DEFAULT 0,
    batismo_ano integer DEFAULT 0,
    conversao_ano integer DEFAULT 0,
    pessoa_ano integer DEFAULT 0,
    visualizacao_ano integer DEFAULT 0,
    comentario_ano integer DEFAULT 0,
    grupo_ativo_mes integer DEFAULT 0,
    updated_at timestamp(6) without time zone,
    publicacao_ano integer DEFAULT 0,
    publicacao_mes integer DEFAULT 0,
    ano character varying,
    fin_dizimo_mes integer DEFAULT 0,
    fin_oferta_mes integer DEFAULT 0,
    fin_despesa_mes integer DEFAULT 0,
    fin_acao_mes integer DEFAULT 0,
    fin_dizimo_ano integer DEFAULT 0,
    fin_oferta_ano integer DEFAULT 0,
    fin_acao_ano integer DEFAULT 0,
    fin_despesa_ano integer DEFAULT 0,
    created_at timestamp(0) without time zone,
    user_id integer
);
 <   DROP TABLE "igreja_batista_sao_jose/sc_100001".config_meta;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    300    7                       1259    32151    config_system_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".config_system_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".config_system_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7                       1259    32181    config_system    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".config_system (
    id bigint DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".config_system_seq'::regclass) NOT NULL,
    delete_institution boolean DEFAULT true,
    delete_people boolean DEFAULT true,
    delete_note boolean DEFAULT true,
    delete_group boolean DEFAULT true,
    delete_financial boolean DEFAULT true,
    delete_calendar boolean DEFAULT true,
    view_periodo boolean DEFAULT true,
    view_dash boolean DEFAULT true,
    view_detail boolean DEFAULT true,
    add_people boolean DEFAULT true,
    add_institution boolean DEFAULT true,
    add_group boolean DEFAULT true,
    edit_people boolean DEFAULT true,
    updated_at timestamp(0) without time zone,
    edit_institution boolean DEFAULT true,
    created_at timestamp(0) without time zone,
    view_resumo_financeiro boolean DEFAULT true,
    user_id integer,
    edit_group boolean
);
 >   DROP TABLE "igreja_batista_sao_jose/sc_100001".config_system;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    258    7                       1259    32185    email_template    TABLE     ,  CREATE TABLE "igreja_batista_sao_jose/sc_100001".email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 ?   DROP TABLE "igreja_batista_sao_jose/sc_100001".email_template;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7                       1259    32155    email_template_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 I   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".email_template_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    264    7            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".email_template_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".email_template.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    259            	           1259    32192    events    TABLE       CREATE TABLE "igreja_batista_sao_jose/sc_100001".events (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    start date NOT NULL,
    "end" date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 7   DROP TABLE "igreja_batista_sao_jose/sc_100001".events;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7                       1259    32157    events_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".events_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    265            �           0    0    events_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".events_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".events.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    260            :           1259    36468    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".groups_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            F           1259    37761    groups    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".groups (
    id bigint DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".groups_id_seq'::regclass) NOT NULL,
    name_group character varying(255) NOT NULL,
    user_id bigint,
    type character varying(64),
    deleted_at date,
    status_id bigint,
    created_at date,
    note character varying(255),
    updated_at date,
    count smallint DEFAULT 0
);
 7   DROP TABLE "igreja_batista_sao_jose/sc_100001".groups;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    314    7            0           1259    36268 	   historics    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".historics (
    id integer NOT NULL,
    user_id integer NOT NULL,
    type character varying(255) NOT NULL,
    amount double precision NOT NULL,
    total_before double precision NOT NULL,
    total_after double precision NOT NULL,
    user_id_transaction integer,
    date date NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    tipo character varying(255),
    observacao character varying(255),
    pag character varying(255),
    CONSTRAINT historics_type_check CHECK (((type)::text = ANY (ARRAY[('I'::character varying)::text, ('O'::character varying)::text, ('T'::character varying)::text])))
);
 :   DROP TABLE "igreja_batista_sao_jose/sc_100001".historics;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7            -           1259    36220    historics_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".historics_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 D   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".historics_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    304    7            �           0    0    historics_id_seq    SEQUENCE OWNED BY        ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".historics_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".historics.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    301            
           1259    32247    notes    TABLE     �  CREATE TABLE "igreja_batista_sao_jose/sc_100001".notes (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    note_type character varying(255) NOT NULL,
    applies_to_date date NOT NULL,
    users_id integer NOT NULL,
    status_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 6   DROP TABLE "igreja_batista_sao_jose/sc_100001".notes;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    7                       1259    32175    notes_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".notes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 @   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".notes_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7    266            �           0    0    notes_id_seq    SEQUENCE OWNED BY     w   ALTER SEQUENCE "igreja_batista_sao_jose/sc_100001".notes_id_seq OWNED BY "igreja_batista_sao_jose/sc_100001".notes.id;
       !   igreja_batista_sao_jose/sc_100001          postgres    false    261                       1259    32177    people_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".people_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".people_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7                       1259    32254    people    TABLE     +  CREATE TABLE "igreja_batista_sao_jose/sc_100001".people (
    id bigint DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".people_id_seq'::regclass) NOT NULL,
    name character varying(255),
    email character varying(255),
    mobile character varying(255),
    birth_at date,
    address character varying(255),
    country character varying(255),
    state character varying(255),
    city character varying(255),
    role character varying(255),
    is_active boolean DEFAULT true,
    is_verify boolean,
    is_visitor boolean,
    is_transferred boolean,
    is_responsible boolean,
    is_conversion boolean,
    is_baptism boolean,
    is_newvisitor boolean,
    note character varying(255),
    username character varying(255),
    password character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    status_id integer NOT NULL,
    cep character varying(10),
    sex character varying(1) DEFAULT NULL::character varying,
    user_id integer
);
 7   DROP TABLE "igreja_batista_sao_jose/sc_100001".people;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    262    7            E           1259    37759    people_group_id_seq    SEQUENCE     �   CREATE SEQUENCE "igreja_batista_sao_jose/sc_100001".people_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 G   DROP SEQUENCE "igreja_batista_sao_jose/sc_100001".people_group_id_seq;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    7            G           1259    37771    people_group    TABLE       CREATE TABLE "igreja_batista_sao_jose/sc_100001".people_group (
    id bigint DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".people_group_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    group_id bigint NOT NULL,
    registered timestamp(6) without time zone
);
 =   DROP TABLE "igreja_batista_sao_jose/sc_100001".people_group;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    325    7            �            1259    31085    accounts_id_seq    SEQUENCE     x   CREATE SEQUENCE public.accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.accounts_id_seq;
       public          postgres    false            �            1259    31155    accounts    TABLE     �  CREATE TABLE public.accounts (
    id bigint DEFAULT nextval('public.accounts_id_seq'::regclass) NOT NULL,
    name_company character varying(255) NOT NULL,
    integrador bigint NOT NULL,
    email character varying(255),
    mobile character varying(255),
    address1 character varying(255),
    address2 character varying(255),
    created_at timestamp(0) without time zone,
    tenant character varying(255),
    status_id integer,
    deleted_at timestamp(0) without time zone,
    doc character varying(255),
    cep character varying(255),
    state character varying(255),
    city character varying(255),
    country character varying(255),
    updated_at timestamp(0) without time zone,
    expired date
);
    DROP TABLE public.accounts;
       public            postgres    false    206            �            1259    31115    email_template    TABLE       CREATE TABLE public.email_template (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    content text NOT NULL,
    name character varying(255) NOT NULL,
    subject character varying(255) NOT NULL
);
 "   DROP TABLE public.email_template;
       public            postgres    false            �            1259    31073    email_template_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.email_template_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.email_template_id_seq;
       public          postgres    false    217            �           0    0    email_template_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.email_template_id_seq OWNED BY public.email_template.id;
          public          postgres    false    200            �            1259    31122    example    TABLE       CREATE TABLE public.example (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    description character varying(255) NOT NULL,
    status_id integer NOT NULL
);
    DROP TABLE public.example;
       public            postgres    false            �            1259    31075    example_id_seq    SEQUENCE     w   CREATE SEQUENCE public.example_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.example_id_seq;
       public          postgres    false    218            �           0    0    example_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.example_id_seq OWNED BY public.example.id;
          public          postgres    false    201            �            1259    31129    failed_jobs    TABLE     �   CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public            postgres    false            �            1259    31077    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          postgres    false    219            �           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          postgres    false    202            �            1259    31137    folder    TABLE     �   CREATE TABLE public.folder (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    folder_id integer,
    resource boolean
);
    DROP TABLE public.folder;
       public            postgres    false            �            1259    31079    folder_id_seq    SEQUENCE     v   CREATE SEQUENCE public.folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.folder_id_seq;
       public          postgres    false    220            �           0    0    folder_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.folder_id_seq OWNED BY public.folder.id;
          public          postgres    false    203            �            1259    31141    form    TABLE     {  CREATE TABLE public.form (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    table_name character varying(255) NOT NULL,
    read boolean NOT NULL,
    edit boolean NOT NULL,
    add boolean NOT NULL,
    delete boolean NOT NULL,
    pagination integer NOT NULL
);
    DROP TABLE public.form;
       public            postgres    false            �            1259    31148 
   form_field    TABLE        CREATE TABLE public.form_field (
    id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    browse boolean NOT NULL,
    read boolean NOT NULL,
    edit boolean NOT NULL,
    add boolean NOT NULL,
    relation_table character varying(255),
    relation_column character varying(255),
    form_id integer NOT NULL,
    column_name character varying(255) NOT NULL
);
    DROP TABLE public.form_field;
       public            postgres    false            �            1259    31081    form_field_id_seq    SEQUENCE     z   CREATE SEQUENCE public.form_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.form_field_id_seq;
       public          postgres    false    222            �           0    0    form_field_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.form_field_id_seq OWNED BY public.form_field.id;
          public          postgres    false    204            �            1259    31083    form_id_seq    SEQUENCE     t   CREATE SEQUENCE public.form_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.form_id_seq;
       public          postgres    false    221            �           0    0    form_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.form_id_seq OWNED BY public.form.id;
          public          postgres    false    205            !           1259    33175    user_likes_id_seq    SEQUENCE     z   CREATE SEQUENCE public.user_likes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.user_likes_id_seq;
       public          postgres    false                       1259    33159    likes    TABLE     F  CREATE TABLE public.likes (
    id integer DEFAULT nextval('public.user_likes_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    likeable_id bigint NOT NULL,
    likeable_type character varying,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    account_id integer
);
    DROP TABLE public.likes;
       public            postgres    false    289            �            1259    31162    media    TABLE     �  CREATE TABLE public.media (
    id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL,
    collection_name character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    file_name character varying(255) NOT NULL,
    mime_type character varying(255),
    disk character varying(255) NOT NULL,
    conversions_disk character varying(255) NOT NULL,
    size bigint NOT NULL,
    uuid bigint NOT NULL,
    manipulations json NOT NULL,
    custom_properties json NOT NULL,
    responsive_images json NOT NULL,
    order_column integer,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.media;
       public            postgres    false            �            1259    31087    media_id_seq    SEQUENCE     u   CREATE SEQUENCE public.media_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.media_id_seq;
       public          postgres    false    224            �           0    0    media_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.media_id_seq OWNED BY public.media.id;
          public          postgres    false    207            �            1259    31169 	   menu_role    TABLE     �   CREATE TABLE public.menu_role (
    id bigint NOT NULL,
    role_name character varying(255) NOT NULL,
    menus_id integer NOT NULL
);
    DROP TABLE public.menu_role;
       public            postgres    false            �            1259    31089    menu_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.menu_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.menu_role_id_seq;
       public          postgres    false    225            �           0    0    menu_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.menu_role_id_seq OWNED BY public.menu_role.id;
          public          postgres    false    208            �            1259    31173    menulist    TABLE     c   CREATE TABLE public.menulist (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.menulist;
       public            postgres    false            �            1259    31091    menulist_id_seq    SEQUENCE     x   CREATE SEQUENCE public.menulist_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.menulist_id_seq;
       public          postgres    false    226            �           0    0    menulist_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.menulist_id_seq OWNED BY public.menulist.id;
          public          postgres    false    209            �            1259    31177    menus    TABLE     1  CREATE TABLE public.menus (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    href character varying(255),
    icon character varying(255),
    slug character varying(255) NOT NULL,
    parent_id integer,
    menu_id integer NOT NULL,
    sequence integer NOT NULL,
    new integer
);
    DROP TABLE public.menus;
       public            postgres    false            �            1259    31093    menus_id_seq    SEQUENCE     u   CREATE SEQUENCE public.menus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.menus_id_seq;
       public          postgres    false    227            �           0    0    menus_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.menus_id_seq OWNED BY public.menus.id;
          public          postgres    false    210            �            1259    31184 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public            postgres    false            �            1259    31095    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    228            �           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    211            �            1259    31188    model_has_permissions    TABLE     �   CREATE TABLE public.model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 )   DROP TABLE public.model_has_permissions;
       public            postgres    false            �            1259    31191    model_has_roles    TABLE     �   CREATE TABLE public.model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(255) NOT NULL,
    model_id bigint NOT NULL
);
 #   DROP TABLE public.model_has_roles;
       public            postgres    false            �            1259    31201    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public            postgres    false            �            1259    31216    permissions    TABLE     �   CREATE TABLE public.permissions (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.permissions;
       public            postgres    false            �            1259    31101    permissions_id_seq    SEQUENCE     {   CREATE SEQUENCE public.permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.permissions_id_seq;
       public          postgres    false    232            �           0    0    permissions_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.permissions_id_seq OWNED BY public.permissions.id;
          public          postgres    false    212                        1259    33169    posts    TABLE     �   CREATE TABLE public.posts (
    id integer NOT NULL,
    title character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    user_id integer
);
    DROP TABLE public.posts;
       public            postgres    false                       1259    33167    posts_id_seq    SEQUENCE     }   CREATE SEQUENCE public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    MAXVALUE 2147483647
    CACHE 1;
 #   DROP SEQUENCE public.posts_id_seq;
       public          postgres    false    288            �           0    0    posts_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.posts_id_seq OWNED BY public.posts.id;
          public          postgres    false    287            $           1259    36075 	   reactions    TABLE     .  CREATE TABLE public.reactions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    reactable_type character varying(255) NOT NULL,
    reactable_id bigint NOT NULL,
    type character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.reactions;
       public            postgres    false            #           1259    36073    reactions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.reactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.reactions_id_seq;
       public          postgres    false    292            �           0    0    reactions_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.reactions_id_seq OWNED BY public.reactions.id;
          public          postgres    false    291                       1259    32477 
   rev_id_seq    SEQUENCE     s   CREATE SEQUENCE public.rev_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.rev_id_seq;
       public          postgres    false            �            1259    31223    role_has_permissions    TABLE     m   CREATE TABLE public.role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);
 (   DROP TABLE public.role_has_permissions;
       public            postgres    false            �            1259    31226    role_hierarchy    TABLE     }   CREATE TABLE public.role_hierarchy (
    id bigint NOT NULL,
    role_id integer NOT NULL,
    hierarchy integer NOT NULL
);
 "   DROP TABLE public.role_hierarchy;
       public            postgres    false            �            1259    31103    role_hierarchy_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.role_hierarchy_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.role_hierarchy_id_seq;
       public          postgres    false    234            �           0    0    role_hierarchy_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.role_hierarchy_id_seq OWNED BY public.role_hierarchy.id;
          public          postgres    false    213            �            1259    31230    roles    TABLE     �   CREATE TABLE public.roles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    guard_name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.roles;
       public            postgres    false            �            1259    31105    roles_id_seq    SEQUENCE     u   CREATE SEQUENCE public.roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.roles_id_seq;
       public          postgres    false    235            �           0    0    roles_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.roles_id_seq OWNED BY public.roles.id;
          public          postgres    false    214            �            1259    31237    status    TABLE     �   CREATE TABLE public.status (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    class character varying(255) NOT NULL,
    type character varying(64)
);
    DROP TABLE public.status;
       public            postgres    false            �            1259    31107    status_id_seq    SEQUENCE     v   CREATE SEQUENCE public.status_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.status_id_seq;
       public          postgres    false    236            �           0    0    status_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.status_id_seq OWNED BY public.status.id;
          public          postgres    false    215            �            1259    31244    users    TABLE     �  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    menuroles character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    mobile character varying(255),
    license bigint,
    doc character varying(255),
    theme_dark boolean DEFAULT true,
    sidebar_minimal boolean DEFAULT false,
    profile_image character varying,
    master boolean DEFAULT false,
    country character varying(255)
);
    DROP TABLE public.users;
       public            postgres    false            8           1259    36459    users_account_id_seq    SEQUENCE     }   CREATE SEQUENCE public.users_account_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.users_account_id_seq;
       public          postgres    false            7           1259    36446    users_account    TABLE     �   CREATE TABLE public.users_account (
    id bigint DEFAULT nextval('public.users_account_id_seq'::regclass) NOT NULL,
    user_id bigint NOT NULL,
    account_id bigint NOT NULL
);
 !   DROP TABLE public.users_account;
       public            postgres    false    312                       1259    32464 	   users_aud    TABLE     �  CREATE TABLE public.users_aud (
    id bigint,
    name character varying(255),
    email character varying(255),
    email_verified_at timestamp(0) without time zone,
    password character varying(255),
    menuroles character varying(255),
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    mobile character varying(255),
    license bigint,
    doc character varying(255),
    expire time(0) without time zone,
    theme_dark boolean DEFAULT true,
    sidebar_minimal boolean DEFAULT true,
    image character varying(255),
    rev bigint DEFAULT nextval('public.rev_id_seq'::regclass)
);
    DROP TABLE public.users_aud;
       public            postgres    false    279            �            1259    31109    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    237            �           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    216            �           2604    36160    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".balances_id_seq'::regclass);
 W   ALTER TABLE "igreja_batista_blumenau/sc_100003".balances ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    296    293    296            S           2604    36463    email_template id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".email_template ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".email_template_id_seq'::regclass);
 ]   ALTER TABLE "igreja_batista_blumenau/sc_100003".email_template ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    254    249    254            T           2604    36464 	   events id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".events ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".events_id_seq'::regclass);
 U   ALTER TABLE "igreja_batista_blumenau/sc_100003".events ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    250    255    255            �           2604    36204    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".historics_id_seq'::regclass);
 X   ALTER TABLE "igreja_batista_blumenau/sc_100003".historics ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    295    298    298            U           2604    36477    notes id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".notes ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_blumenau/sc_100003".notes_id_seq'::regclass);
 T   ALTER TABLE "igreja_batista_blumenau/sc_100003".notes ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_blumenau/sc_100003          postgres    false    251    256    256            �           2604    33064    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".balances_id_seq'::regclass);
 \   ALTER TABLE "igreja_batista_florianopolis/sc_100002".balances ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    282    284    284            =           2604    31859    email_template id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".email_template ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq'::regclass);
 b   ALTER TABLE "igreja_batista_florianopolis/sc_100002".email_template ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    243    239    243            B           2604    31999 	   events id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".events ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".events_id_seq'::regclass);
 Z   ALTER TABLE "igreja_batista_florianopolis/sc_100002".events ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    246    247    247            �           2604    33069    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".historics_id_seq'::regclass);
 ]   ALTER TABLE "igreja_batista_florianopolis/sc_100002".historics ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    285    283    285            >           2604    31917    notes id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".notes ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_florianopolis/sc_100002".notes_id_seq'::regclass);
 Y   ALTER TABLE "igreja_batista_florianopolis/sc_100002".notes ALTER COLUMN id DROP DEFAULT;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    244    240    244            �           2604    36294    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".balances_id_seq'::regclass);
 U   ALTER TABLE "igreja_batista_manaus/am_100004".balances ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    305    308    308                       2604    36485    email_template id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".email_template ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".email_template_id_seq'::regclass);
 [   ALTER TABLE "igreja_batista_manaus/am_100004".email_template ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    269    274    274            �           2604    36486 	   events id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".events ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".events_id_seq'::regclass);
 S   ALTER TABLE "igreja_batista_manaus/am_100004".events ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    270    275    275            �           2604    36338    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".historics_id_seq'::regclass);
 V   ALTER TABLE "igreja_batista_manaus/am_100004".historics ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    310    307    310            �           2604    36488    notes id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".notes ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_manaus/am_100004".notes_id_seq'::regclass);
 R   ALTER TABLE "igreja_batista_manaus/am_100004".notes ALTER COLUMN id DROP DEFAULT;
       igreja_batista_manaus/am_100004          postgres    false    271    276    276            �           2604    36227    balances id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".balances ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".balances_id_seq'::regclass);
 W   ALTER TABLE "igreja_batista_sao_jose/sc_100001".balances ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    299    302    302            i           2604    36471    email_template id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".email_template ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".email_template_id_seq'::regclass);
 ]   ALTER TABLE "igreja_batista_sao_jose/sc_100001".email_template ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    264    259    264            j           2604    36472 	   events id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".events ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".events_id_seq'::regclass);
 U   ALTER TABLE "igreja_batista_sao_jose/sc_100001".events ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    265    260    265            �           2604    36271    historics id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".historics ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".historics_id_seq'::regclass);
 X   ALTER TABLE "igreja_batista_sao_jose/sc_100001".historics ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    304    301    304            k           2604    36480    notes id    DEFAULT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".notes ALTER COLUMN id SET DEFAULT nextval('"igreja_batista_sao_jose/sc_100001".notes_id_seq'::regclass);
 T   ALTER TABLE "igreja_batista_sao_jose/sc_100001".notes ALTER COLUMN id DROP DEFAULT;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    266    261    266                       2604    31118    email_template id    DEFAULT     v   ALTER TABLE ONLY public.email_template ALTER COLUMN id SET DEFAULT nextval('public.email_template_id_seq'::regclass);
 @   ALTER TABLE public.email_template ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    200    217    217                       2604    31125 
   example id    DEFAULT     h   ALTER TABLE ONLY public.example ALTER COLUMN id SET DEFAULT nextval('public.example_id_seq'::regclass);
 9   ALTER TABLE public.example ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    218    218                       2604    31132    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    219    219                       2604    31140 	   folder id    DEFAULT     f   ALTER TABLE ONLY public.folder ALTER COLUMN id SET DEFAULT nextval('public.folder_id_seq'::regclass);
 8   ALTER TABLE public.folder ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    203    220                       2604    31144    form id    DEFAULT     b   ALTER TABLE ONLY public.form ALTER COLUMN id SET DEFAULT nextval('public.form_id_seq'::regclass);
 6   ALTER TABLE public.form ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    205    221                       2604    31151    form_field id    DEFAULT     n   ALTER TABLE ONLY public.form_field ALTER COLUMN id SET DEFAULT nextval('public.form_field_id_seq'::regclass);
 <   ALTER TABLE public.form_field ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    222    222                        2604    31165    media id    DEFAULT     d   ALTER TABLE ONLY public.media ALTER COLUMN id SET DEFAULT nextval('public.media_id_seq'::regclass);
 7   ALTER TABLE public.media ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    224    224            !           2604    31172    menu_role id    DEFAULT     l   ALTER TABLE ONLY public.menu_role ALTER COLUMN id SET DEFAULT nextval('public.menu_role_id_seq'::regclass);
 ;   ALTER TABLE public.menu_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    208    225            "           2604    31176    menulist id    DEFAULT     j   ALTER TABLE ONLY public.menulist ALTER COLUMN id SET DEFAULT nextval('public.menulist_id_seq'::regclass);
 :   ALTER TABLE public.menulist ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    226    226            #           2604    31180    menus id    DEFAULT     d   ALTER TABLE ONLY public.menus ALTER COLUMN id SET DEFAULT nextval('public.menus_id_seq'::regclass);
 7   ALTER TABLE public.menus ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    227    227            $           2604    31187    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    228    228            %           2604    31219    permissions id    DEFAULT     p   ALTER TABLE ONLY public.permissions ALTER COLUMN id SET DEFAULT nextval('public.permissions_id_seq'::regclass);
 =   ALTER TABLE public.permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    232    232            �           2604    36493    posts id    DEFAULT     d   ALTER TABLE ONLY public.posts ALTER COLUMN id SET DEFAULT nextval('public.posts_id_seq'::regclass);
 7   ALTER TABLE public.posts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    287    288    288            �           2604    36078    reactions id    DEFAULT     l   ALTER TABLE ONLY public.reactions ALTER COLUMN id SET DEFAULT nextval('public.reactions_id_seq'::regclass);
 ;   ALTER TABLE public.reactions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    292    291    292            &           2604    31229    role_hierarchy id    DEFAULT     v   ALTER TABLE ONLY public.role_hierarchy ALTER COLUMN id SET DEFAULT nextval('public.role_hierarchy_id_seq'::regclass);
 @   ALTER TABLE public.role_hierarchy ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    234    234            '           2604    31233    roles id    DEFAULT     d   ALTER TABLE ONLY public.roles ALTER COLUMN id SET DEFAULT nextval('public.roles_id_seq'::regclass);
 7   ALTER TABLE public.roles ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    235    235            (           2604    31240 	   status id    DEFAULT     f   ALTER TABLE ONLY public.status ALTER COLUMN id SET DEFAULT nextval('public.status_id_seq'::regclass);
 8   ALTER TABLE public.status ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    236    215    236            )           2604    31247    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    216    237            {          0    36157    balances 
   TABLE DATA           T   COPY "igreja_batista_blumenau/sc_100003".balances (id, user_id, amount) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    296   �y      |          0    36164    config_meta 
   TABLE DATA           �  COPY "igreja_batista_blumenau/sc_100003".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    297   �y      P          0    32032    config_system 
   TABLE DATA           [  COPY "igreja_batista_blumenau/sc_100003".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, updated_at, edit_institution, created_at, view_resumo_financeiro, user_id, edit_group) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    253   �y      Q          0    32036    email_template 
   TABLE DATA           y   COPY "igreja_batista_blumenau/sc_100003".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    254   z      R          0    32043    events 
   TABLE DATA           n   COPY "igreja_batista_blumenau/sc_100003".events (id, title, start, "end", created_at, updated_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    255   �}      �          0    37715    groups 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".groups (id, name_group, user_id, type, deleted_at, status_id, created_at, note, updated_at, count) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    320   &~      }          0    36201 	   historics 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    298   C~      S          0    32098    notes 
   TABLE DATA           �   COPY "igreja_batista_blumenau/sc_100003".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    256   `~      T          0    32105    people 
   TABLE DATA           M  COPY "igreja_batista_blumenau/sc_100003".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex, user_id) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    257   �~      �          0    37725    people_group 
   TABLE DATA           f   COPY "igreja_batista_blumenau/sc_100003".people_group (id, user_id, group_id, registered) FROM stdin;
 !   igreja_batista_blumenau/sc_100003          postgres    false    321   �~      o          0    33061    balances 
   TABLE DATA           Y   COPY "igreja_batista_florianopolis/sc_100002".balances (id, user_id, amount) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    284         k          0    32483    config_meta 
   TABLE DATA           �  COPY "igreja_batista_florianopolis/sc_100002".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    280   ;      E          0    31852    config_system 
   TABLE DATA           `  COPY "igreja_batista_florianopolis/sc_100002".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, created_at, edit_institution, updated_at, view_resumo_financeiro, user_id, edit_group) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    242   @�      F          0    31856    email_template 
   TABLE DATA           ~   COPY "igreja_batista_florianopolis/sc_100002".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    243   #�      J          0    31996    events 
   TABLE DATA           s   COPY "igreja_batista_florianopolis/sc_100002".events (id, title, start, "end", created_at, updated_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    247   ��      l          0    32894    groups 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".groups (id, name_group, user_id, type, deleted_at, status_id, created_at, note, updated_at, count) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    281   %�      p          0    33066 	   historics 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    285   ͈      G          0    31914    notes 
   TABLE DATA           �   COPY "igreja_batista_florianopolis/sc_100002".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    244   ׏      H          0    31921    people 
   TABLE DATA           R  COPY "igreja_batista_florianopolis/sc_100002".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex, user_id) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    245   i�      �          0    37664    people_group 
   TABLE DATA           k   COPY "igreja_batista_florianopolis/sc_100002".people_group (id, user_id, group_id, registered) FROM stdin;
 &   igreja_batista_florianopolis/sc_100002          postgres    false    317   H�      �          0    36291    balances 
   TABLE DATA           R   COPY "igreja_batista_manaus/am_100004".balances (id, user_id, amount) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    308   �      �          0    36298    config_meta 
   TABLE DATA           �  COPY "igreja_batista_manaus/am_100004".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    309   ��      d          0    32333    config_system 
   TABLE DATA           Y  COPY "igreja_batista_manaus/am_100004".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, updated_at, edit_institution, created_at, view_resumo_financeiro, user_id, edit_group) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    273   Y�      e          0    32337    email_template 
   TABLE DATA           w   COPY "igreja_batista_manaus/am_100004".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    274   ��      f          0    32344    events 
   TABLE DATA           l   COPY "igreja_batista_manaus/am_100004".events (id, title, start, "end", created_at, updated_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    275   P�      �          0    37738    groups 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".groups (id, name_group, user_id, type, deleted_at, status_id, created_at, note, updated_at, count) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    323   ͸      �          0    36335 	   historics 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    310   +�      g          0    32399    notes 
   TABLE DATA           �   COPY "igreja_batista_manaus/am_100004".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    276   H�      h          0    32406    people 
   TABLE DATA           K  COPY "igreja_batista_manaus/am_100004".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex, user_id) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    277   �      �          0    37748    people_group 
   TABLE DATA           d   COPY "igreja_batista_manaus/am_100004".people_group (id, user_id, group_id, registered) FROM stdin;
    igreja_batista_manaus/am_100004          postgres    false    324   ��      �          0    36224    balances 
   TABLE DATA           T   COPY "igreja_batista_sao_jose/sc_100001".balances (id, user_id, amount) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    302   �      �          0    36231    config_meta 
   TABLE DATA           �  COPY "igreja_batista_sao_jose/sc_100001".config_meta (id, visitante_mes, batismo_mes, conversao_mes, pessoa_mes, visualizacao_mes, comentario_mes, grupo_ativo_ano, visitante_ano, batismo_ano, conversao_ano, pessoa_ano, visualizacao_ano, comentario_ano, grupo_ativo_mes, updated_at, publicacao_ano, publicacao_mes, ano, fin_dizimo_mes, fin_oferta_mes, fin_despesa_mes, fin_acao_mes, fin_dizimo_ano, fin_oferta_ano, fin_acao_ano, fin_despesa_ano, created_at, user_id) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    303   5�      Z          0    32181    config_system 
   TABLE DATA           [  COPY "igreja_batista_sao_jose/sc_100001".config_system (id, delete_institution, delete_people, delete_note, delete_group, delete_financial, delete_calendar, view_periodo, view_dash, view_detail, add_people, add_institution, add_group, edit_people, updated_at, edit_institution, created_at, view_resumo_financeiro, user_id, edit_group) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    263   q�      [          0    32185    email_template 
   TABLE DATA           y   COPY "igreja_batista_sao_jose/sc_100001".email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    264   ��      \          0    32192    events 
   TABLE DATA           n   COPY "igreja_batista_sao_jose/sc_100001".events (id, title, start, "end", created_at, updated_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    265   N�      �          0    37761    groups 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".groups (id, name_group, user_id, type, deleted_at, status_id, created_at, note, updated_at, count) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    326   ��      �          0    36268 	   historics 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".historics (id, user_id, type, amount, total_before, total_after, user_id_transaction, date, created_at, updated_at, tipo, observacao, pag) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    304   ��      ]          0    32247    notes 
   TABLE DATA           �   COPY "igreja_batista_sao_jose/sc_100001".notes (id, title, content, note_type, applies_to_date, users_id, status_id, created_at, updated_at) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    266   3�      ^          0    32254    people 
   TABLE DATA           M  COPY "igreja_batista_sao_jose/sc_100001".people (id, name, email, mobile, birth_at, address, country, state, city, role, is_active, is_verify, is_visitor, is_transferred, is_responsible, is_conversion, is_baptism, is_newvisitor, note, username, password, created_at, updated_at, deleted_at, status_id, cep, sex, user_id) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    267   
�      �          0    37771    people_group 
   TABLE DATA           f   COPY "igreja_batista_sao_jose/sc_100001".people_group (id, user_id, group_id, registered) FROM stdin;
 !   igreja_batista_sao_jose/sc_100001          postgres    false    327   ��      2          0    31155    accounts 
   TABLE DATA           �   COPY public.accounts (id, name_company, integrador, email, mobile, address1, address2, created_at, tenant, status_id, deleted_at, doc, cep, state, city, country, updated_at, expired) FROM stdin;
    public          postgres    false    223   ��      ,          0    31115    email_template 
   TABLE DATA           \   COPY public.email_template (id, created_at, updated_at, content, name, subject) FROM stdin;
    public          postgres    false    217   ��      -          0    31122    example 
   TABLE DATA           [   COPY public.example (id, created_at, updated_at, name, description, status_id) FROM stdin;
    public          postgres    false    218   X      .          0    31129    failed_jobs 
   TABLE DATA           [   COPY public.failed_jobs (id, connection, queue, payload, exception, failed_at) FROM stdin;
    public          postgres    false    219         /          0    31137    folder 
   TABLE DATA           W   COPY public.folder (id, created_at, updated_at, name, folder_id, resource) FROM stdin;
    public          postgres    false    220   1      0          0    31141    form 
   TABLE DATA           q   COPY public.form (id, created_at, updated_at, name, table_name, read, edit, add, delete, pagination) FROM stdin;
    public          postgres    false    221   �      1          0    31148 
   form_field 
   TABLE DATA           �   COPY public.form_field (id, created_at, updated_at, name, type, browse, read, edit, add, relation_table, relation_column, form_id, column_name) FROM stdin;
    public          postgres    false    222         q          0    33159    likes 
   TABLE DATA           l   COPY public.likes (id, user_id, likeable_id, likeable_type, created_at, updated_at, account_id) FROM stdin;
    public          postgres    false    286   �
      3          0    31162    media 
   TABLE DATA           �   COPY public.media (id, model_type, model_id, collection_name, name, file_name, mime_type, disk, conversions_disk, size, uuid, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) FROM stdin;
    public          postgres    false    224   M      4          0    31169 	   menu_role 
   TABLE DATA           <   COPY public.menu_role (id, role_name, menus_id) FROM stdin;
    public          postgres    false    225   j      5          0    31173    menulist 
   TABLE DATA           ,   COPY public.menulist (id, name) FROM stdin;
    public          postgres    false    226   t      6          0    31177    menus 
   TABLE DATA           ^   COPY public.menus (id, name, href, icon, slug, parent_id, menu_id, sequence, new) FROM stdin;
    public          postgres    false    227   �      7          0    31184 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          postgres    false    228   
      8          0    31188    model_has_permissions 
   TABLE DATA           T   COPY public.model_has_permissions (permission_id, model_type, model_id) FROM stdin;
    public          postgres    false    229   8      9          0    31191    model_has_roles 
   TABLE DATA           H   COPY public.model_has_roles (role_id, model_type, model_id) FROM stdin;
    public          postgres    false    230   U      :          0    31201    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          postgres    false    231   �      ;          0    31216    permissions 
   TABLE DATA           S   COPY public.permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    232   �      s          0    33169    posts 
   TABLE DATA           K   COPY public.posts (id, title, created_at, updated_at, user_id) FROM stdin;
    public          postgres    false    288   �      w          0    36075 	   reactions 
   TABLE DATA           l   COPY public.reactions (id, user_id, reactable_type, reactable_id, type, created_at, updated_at) FROM stdin;
    public          postgres    false    292         <          0    31223    role_has_permissions 
   TABLE DATA           F   COPY public.role_has_permissions (permission_id, role_id) FROM stdin;
    public          postgres    false    233   +      =          0    31226    role_hierarchy 
   TABLE DATA           @   COPY public.role_hierarchy (id, role_id, hierarchy) FROM stdin;
    public          postgres    false    234   �      >          0    31230    roles 
   TABLE DATA           M   COPY public.roles (id, name, guard_name, created_at, updated_at) FROM stdin;
    public          postgres    false    235   �      ?          0    31237    status 
   TABLE DATA           7   COPY public.status (id, name, class, type) FROM stdin;
    public          postgres    false    236   D      @          0    31244    users 
   TABLE DATA           �   COPY public.users (id, name, email, email_verified_at, password, menuroles, remember_token, created_at, updated_at, deleted_at, mobile, license, doc, theme_dark, sidebar_minimal, profile_image, master, country) FROM stdin;
    public          postgres    false    237   �      �          0    36446    users_account 
   TABLE DATA           @   COPY public.users_account (id, user_id, account_id) FROM stdin;
    public          postgres    false    311   �      i          0    32464 	   users_aud 
   TABLE DATA           �   COPY public.users_aud (id, name, email, email_verified_at, password, menuroles, remember_token, created_at, updated_at, deleted_at, mobile, license, doc, expire, theme_dark, sidebar_minimal, image, rev) FROM stdin;
    public          postgres    false    278   �      �           0    0    balances_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".balances_id_seq', 2, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    293            �           0    0    config_meta_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".config_meta_seq', 10, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    294            �           0    0    config_system_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".config_system_seq', 18, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    248            �           0    0    email_template_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".email_template_id_seq', 4, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    249            �           0    0    events_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".events_id_seq', 55, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    250            �           0    0    groups_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".groups_id_seq', 11, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    313            �           0    0    historics_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".historics_id_seq', 62, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    295            �           0    0    notes_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".notes_id_seq', 103, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    251            �           0    0    people_group_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".people_group_id_seq', 26, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    319            �           0    0    people_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_blumenau/sc_100003".people_id_seq', 186, true);
       !   igreja_batista_blumenau/sc_100003          postgres    false    252            �           0    0    balances_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".balances_id_seq', 2, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    282            �           0    0    config_meta_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".config_meta_seq', 11, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    290            �           0    0    config_system_seq    SEQUENCE SET     b   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".config_system_seq', 18, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    238            �           0    0    email_template_id_seq    SEQUENCE SET     e   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".email_template_id_seq', 4, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    239            �           0    0    events_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".events_id_seq', 55, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    246            �           0    0    groups_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".groups_id_seq', 16, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    316            �           0    0    historics_id_seq    SEQUENCE SET     a   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".historics_id_seq', 63, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    283            �           0    0    notes_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".notes_id_seq', 103, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    240            �           0    0    people_group_id_seq    SEQUENCE SET     d   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".people_group_id_seq', 63, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    318            �           0    0    people_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_florianopolis/sc_100002".people_id_seq', 186, true);
       &   igreja_batista_florianopolis/sc_100002          postgres    false    241            �           0    0    balances_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".balances_id_seq', 2, true);
          igreja_batista_manaus/am_100004          postgres    false    305            �           0    0    config_meta_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".config_meta_seq', 11, true);
          igreja_batista_manaus/am_100004          postgres    false    306            �           0    0    config_system_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".config_system_seq', 18, true);
          igreja_batista_manaus/am_100004          postgres    false    268            �           0    0    email_template_id_seq    SEQUENCE SET     ^   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".email_template_id_seq', 4, true);
          igreja_batista_manaus/am_100004          postgres    false    269            �           0    0    events_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".events_id_seq', 55, true);
          igreja_batista_manaus/am_100004          postgres    false    270            �           0    0    groups_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".groups_id_seq', 13, true);
          igreja_batista_manaus/am_100004          postgres    false    315            �           0    0    historics_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".historics_id_seq', 62, true);
          igreja_batista_manaus/am_100004          postgres    false    307            �           0    0    notes_id_seq    SEQUENCE SET     W   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".notes_id_seq', 103, true);
          igreja_batista_manaus/am_100004          postgres    false    271            �           0    0    people_group_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".people_group_id_seq', 28, true);
          igreja_batista_manaus/am_100004          postgres    false    322            �           0    0    people_id_seq    SEQUENCE SET     X   SELECT pg_catalog.setval('"igreja_batista_manaus/am_100004".people_id_seq', 187, true);
          igreja_batista_manaus/am_100004          postgres    false    272            �           0    0    balances_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".balances_id_seq', 2, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    299            �           0    0    config_meta_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".config_meta_seq', 10, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    300            �           0    0    config_system_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".config_system_seq', 18, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    258            �           0    0    email_template_id_seq    SEQUENCE SET     `   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".email_template_id_seq', 4, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    259            �           0    0    events_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".events_id_seq', 55, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    260            �           0    0    groups_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".groups_id_seq', 11, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    314            �           0    0    historics_id_seq    SEQUENCE SET     \   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".historics_id_seq', 62, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    301            �           0    0    notes_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".notes_id_seq', 103, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    261            �           0    0    people_group_id_seq    SEQUENCE SET     _   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".people_group_id_seq', 26, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    325            �           0    0    people_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('"igreja_batista_sao_jose/sc_100001".people_id_seq', 186, true);
       !   igreja_batista_sao_jose/sc_100001          postgres    false    262            �           0    0    accounts_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.accounts_id_seq', 100008, true);
          public          postgres    false    206            �           0    0    email_template_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.email_template_id_seq', 2, true);
          public          postgres    false    200            �           0    0    example_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.example_id_seq', 27, true);
          public          postgres    false    201            �           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 2, false);
          public          postgres    false    202            �           0    0    folder_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.folder_id_seq', 6, true);
          public          postgres    false    203            �           0    0    form_field_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.form_field_id_seq', 46, true);
          public          postgres    false    204            �           0    0    form_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.form_id_seq', 5, true);
          public          postgres    false    205            �           0    0    media_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.media_id_seq', 2, false);
          public          postgres    false    207            �           0    0    menu_role_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.menu_role_id_seq', 299, true);
          public          postgres    false    208            �           0    0    menulist_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.menulist_id_seq', 3, true);
          public          postgres    false    209            �           0    0    menus_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.menus_id_seq', 81, true);
          public          postgres    false    210            �           0    0    migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.migrations_id_seq', 104, true);
          public          postgres    false    211            �           0    0    permissions_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.permissions_id_seq', 21, true);
          public          postgres    false    212            �           0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 3, false);
          public          postgres    false    287            �           0    0    reactions_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.reactions_id_seq', 1, false);
          public          postgres    false    291            �           0    0 
   rev_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('public.rev_id_seq', 1, false);
          public          postgres    false    279            �           0    0    role_hierarchy_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.role_hierarchy_id_seq', 5, true);
          public          postgres    false    213                        0    0    roles_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.roles_id_seq', 5, true);
          public          postgres    false    214                       0    0    status_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.status_id_seq', 10, true);
          public          postgres    false    215                       0    0    user_likes_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.user_likes_id_seq', 32, true);
          public          postgres    false    289                       0    0    users_account_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.users_account_id_seq', 11, true);
          public          postgres    false    312                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 13, true);
          public          postgres    false    216            x           2606    36163    balances balances_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".balances DROP CONSTRAINT balances_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    296            z           2606    36188 $   config_meta config_system_copy1_pkey 
   CONSTRAINT        ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_meta DROP CONSTRAINT config_system_copy1_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    297            H           2606    32124 "   email_template email_template_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".email_template DROP CONSTRAINT email_template_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    254            J           2606    32126    events events_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".events DROP CONSTRAINT events_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    255            �           2606    37730    people_group groups_copy1_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people_group
    ADD CONSTRAINT groups_copy1_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people_group DROP CONSTRAINT groups_copy1_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    321            |           2606    36210    historics historics_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".historics DROP CONSTRAINT historics_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    298            L           2606    32146    notes notes_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".notes DROP CONSTRAINT notes_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    256            N           2606    32148    people people_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people DROP CONSTRAINT people_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    257            F           2606    32122    config_system status_copy1_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".config_system DROP CONSTRAINT status_copy1_pkey;
    !   igreja_batista_blumenau/sc_100003            postgres    false    253            �           2606    37724    groups status_copy1_pkey1 
   CONSTRAINT     t   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".groups
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 `   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".groups DROP CONSTRAINT status_copy1_pkey1;
    !   igreja_batista_blumenau/sc_100003            postgres    false    320            j           2606    33071    balances balances_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".balances DROP CONSTRAINT balances_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    284            f           2606    32488 $   config_meta config_system_copy1_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 p   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_meta DROP CONSTRAINT config_system_copy1_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    280            >           2606    31940 "   email_template email_template_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 n   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".email_template DROP CONSTRAINT email_template_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    243            D           2606    32001    events events_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".events DROP CONSTRAINT events_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    247            �           2606    37669    people_group groups_copy1_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people_group
    ADD CONSTRAINT groups_copy1_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people_group DROP CONSTRAINT groups_copy1_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    317            l           2606    33074    historics historics_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".historics DROP CONSTRAINT historics_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    285            @           2606    31960    notes notes_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".notes DROP CONSTRAINT notes_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    244            B           2606    31962    people people_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people DROP CONSTRAINT people_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    245            <           2606    31938    config_system status_copy1_pkey 
   CONSTRAINT        ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".config_system DROP CONSTRAINT status_copy1_pkey;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    242            h           2606    32901    groups status_copy1_pkey1 
   CONSTRAINT     y   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".groups
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 e   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".groups DROP CONSTRAINT status_copy1_pkey1;
    &   igreja_batista_florianopolis/sc_100002            postgres    false    281            �           2606    36297    balances balances_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 [   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".balances DROP CONSTRAINT balances_pkey;
       igreja_batista_manaus/am_100004            postgres    false    308            �           2606    36322 $   config_meta config_system_copy1_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_meta DROP CONSTRAINT config_system_copy1_pkey;
       igreja_batista_manaus/am_100004            postgres    false    309            \           2606    32425 "   email_template email_template_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 g   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".email_template DROP CONSTRAINT email_template_pkey;
       igreja_batista_manaus/am_100004            postgres    false    274            ^           2606    32427    events events_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".events DROP CONSTRAINT events_pkey;
       igreja_batista_manaus/am_100004            postgres    false    275            �           2606    37753    people_group groups_copy1_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people_group
    ADD CONSTRAINT groups_copy1_pkey PRIMARY KEY (id);
 c   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people_group DROP CONSTRAINT groups_copy1_pkey;
       igreja_batista_manaus/am_100004            postgres    false    324            �           2606    36344    historics historics_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".historics DROP CONSTRAINT historics_pkey;
       igreja_batista_manaus/am_100004            postgres    false    310            `           2606    32447    notes notes_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".notes DROP CONSTRAINT notes_pkey;
       igreja_batista_manaus/am_100004            postgres    false    276            b           2606    32449    people people_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people DROP CONSTRAINT people_pkey;
       igreja_batista_manaus/am_100004            postgres    false    277            Z           2606    32423    config_system status_copy1_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".config_system DROP CONSTRAINT status_copy1_pkey;
       igreja_batista_manaus/am_100004            postgres    false    273            �           2606    37747    groups status_copy1_pkey1 
   CONSTRAINT     r   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".groups
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 ^   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".groups DROP CONSTRAINT status_copy1_pkey1;
       igreja_batista_manaus/am_100004            postgres    false    323            ~           2606    36230    balances balances_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".balances
    ADD CONSTRAINT balances_pkey PRIMARY KEY (id);
 ]   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".balances DROP CONSTRAINT balances_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    302            �           2606    36255 $   config_meta config_system_copy1_pkey 
   CONSTRAINT        ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_meta
    ADD CONSTRAINT config_system_copy1_pkey PRIMARY KEY (id);
 k   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_meta DROP CONSTRAINT config_system_copy1_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    303            R           2606    32273 "   email_template email_template_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 i   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".email_template DROP CONSTRAINT email_template_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    264            T           2606    32275    events events_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".events
    ADD CONSTRAINT events_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".events DROP CONSTRAINT events_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    265            �           2606    37776    people_group groups_copy1_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people_group
    ADD CONSTRAINT groups_copy1_pkey PRIMARY KEY (id);
 e   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people_group DROP CONSTRAINT groups_copy1_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    327            �           2606    36277    historics historics_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".historics
    ADD CONSTRAINT historics_pkey PRIMARY KEY (id);
 _   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".historics DROP CONSTRAINT historics_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    304            V           2606    32295    notes notes_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".notes
    ADD CONSTRAINT notes_pkey PRIMARY KEY (id);
 W   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".notes DROP CONSTRAINT notes_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    266            X           2606    32297    people people_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);
 Y   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people DROP CONSTRAINT people_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    267            P           2606    32271    config_system status_copy1_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_system
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".config_system DROP CONSTRAINT status_copy1_pkey;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    263            �           2606    37770    groups status_copy1_pkey1 
   CONSTRAINT     t   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".groups
    ADD CONSTRAINT status_copy1_pkey1 PRIMARY KEY (id);
 `   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".groups DROP CONSTRAINT status_copy1_pkey1;
    !   igreja_batista_sao_jose/sc_100001            postgres    false    326                       2606    31267    accounts companies_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT companies_pkey PRIMARY KEY (id);
 A   ALTER TABLE ONLY public.accounts DROP CONSTRAINT companies_pkey;
       public            postgres    false    223                       2606    31254 "   email_template email_template_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.email_template
    ADD CONSTRAINT email_template_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.email_template DROP CONSTRAINT email_template_pkey;
       public            postgres    false    217                       2606    31256    example example_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.example
    ADD CONSTRAINT example_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.example DROP CONSTRAINT example_pkey;
       public            postgres    false    218                       2606    31258    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            postgres    false    219                       2606    31260    folder folder_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.folder
    ADD CONSTRAINT folder_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.folder DROP CONSTRAINT folder_pkey;
       public            postgres    false    220                       2606    31264    form_field form_field_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.form_field
    ADD CONSTRAINT form_field_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.form_field DROP CONSTRAINT form_field_pkey;
       public            postgres    false    222                       2606    31262    form form_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.form
    ADD CONSTRAINT form_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.form DROP CONSTRAINT form_pkey;
       public            postgres    false    221            n           2606    33182    likes likes_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.likes
    ADD CONSTRAINT likes_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.likes DROP CONSTRAINT likes_pkey;
       public            postgres    false    286                       2606    31270    media media_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.media DROP CONSTRAINT media_pkey;
       public            postgres    false    224                       2606    31272    menu_role menu_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.menu_role
    ADD CONSTRAINT menu_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.menu_role DROP CONSTRAINT menu_role_pkey;
       public            postgres    false    225            !           2606    31274    menulist menulist_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.menulist
    ADD CONSTRAINT menulist_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.menulist DROP CONSTRAINT menulist_pkey;
       public            postgres    false    226            #           2606    31276    menus menus_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.menus
    ADD CONSTRAINT menus_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.menus DROP CONSTRAINT menus_pkey;
       public            postgres    false    227            %           2606    31278    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            postgres    false    228            (           2606    31281 0   model_has_permissions model_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);
 Z   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_pkey;
       public            postgres    false    229    229    229            +           2606    31284 $   model_has_roles model_has_roles_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);
 N   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_pkey;
       public            postgres    false    230    230    230            .           2606    31291    permissions permissions_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.permissions DROP CONSTRAINT permissions_pkey;
       public            postgres    false    232            p           2606    33174    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    288            r           2606    36086    reactions react_user_unique 
   CONSTRAINT     w   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT react_user_unique UNIQUE (reactable_type, reactable_id, user_id);
 E   ALTER TABLE ONLY public.reactions DROP CONSTRAINT react_user_unique;
       public            postgres    false    292    292    292            t           2606    36083    reactions reactions_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.reactions
    ADD CONSTRAINT reactions_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.reactions DROP CONSTRAINT reactions_pkey;
       public            postgres    false    292            0           2606    31293 .   role_has_permissions role_has_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);
 X   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_pkey;
       public            postgres    false    233    233            2           2606    31295 "   role_hierarchy role_hierarchy_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.role_hierarchy
    ADD CONSTRAINT role_hierarchy_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.role_hierarchy DROP CONSTRAINT role_hierarchy_pkey;
       public            postgres    false    234            4           2606    31297    roles roles_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.roles DROP CONSTRAINT roles_pkey;
       public            postgres    false    235            �           2606    36454    users_account status_copy1_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.users_account
    ADD CONSTRAINT status_copy1_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY public.users_account DROP CONSTRAINT status_copy1_pkey;
       public            postgres    false    311            6           2606    31299    status status_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.status
    ADD CONSTRAINT status_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.status DROP CONSTRAINT status_pkey;
       public            postgres    false    236            d           2606    32476    users_aud users_copy1_email_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.users_aud
    ADD CONSTRAINT users_copy1_email_key UNIQUE (email);
 I   ALTER TABLE ONLY public.users_aud DROP CONSTRAINT users_copy1_email_key;
       public            postgres    false    278            8           2606    31301    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            postgres    false    237            :           2606    31303    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    237                       1259    31265    institution_id    INDEX     H   CREATE UNIQUE INDEX institution_id ON public.accounts USING btree (id);
 "   DROP INDEX public.institution_id;
       public            postgres    false    223                       1259    31268    media_model_type_model_id_index    INDEX     a   CREATE INDEX media_model_type_model_id_index ON public.media USING btree (model_type, model_id);
 3   DROP INDEX public.media_model_type_model_id_index;
       public            postgres    false    224    224            &           1259    31279 /   model_has_permissions_model_id_model_type_index    INDEX     �   CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);
 C   DROP INDEX public.model_has_permissions_model_id_model_type_index;
       public            postgres    false    229    229            )           1259    31282 )   model_has_roles_model_id_model_type_index    INDEX     u   CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);
 =   DROP INDEX public.model_has_roles_model_id_model_type_index;
       public            postgres    false    230    230            ,           1259    31287    password_resets_email_index    INDEX     X   CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);
 /   DROP INDEX public.password_resets_email_index;
       public            postgres    false    231            u           1259    36084 +   reactions_reactable_type_reactable_id_index    INDEX     y   CREATE INDEX reactions_reactable_type_reactable_id_index ON public.reactions USING btree (reactable_type, reactable_id);
 ?   DROP INDEX public.reactions_reactable_type_reactable_id_index;
       public            postgres    false    292    292            v           1259    36087    reactions_user_id_index    INDEX     P   CREATE INDEX reactions_user_id_index ON public.reactions USING btree (user_id);
 +   DROP INDEX public.reactions_user_id_index;
       public            postgres    false    292            �           2606    37731    people ref_user    FK CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people
    ADD CONSTRAINT ref_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 V   ALTER TABLE ONLY "igreja_batista_blumenau/sc_100003".people DROP CONSTRAINT ref_user;
    !   igreja_batista_blumenau/sc_100003          postgres    false    3386    257    237                       0    0    CONSTRAINT ref_user ON people    COMMENT     f   COMMENT ON CONSTRAINT ref_user ON "igreja_batista_blumenau/sc_100003".people IS 'referencia no user';
       !   igreja_batista_blumenau/sc_100003          postgres    false    3487            �           2606    37692    people ref_user    FK CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people
    ADD CONSTRAINT ref_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 [   ALTER TABLE ONLY "igreja_batista_florianopolis/sc_100002".people DROP CONSTRAINT ref_user;
    &   igreja_batista_florianopolis/sc_100002          postgres    false    3386    237    245                       0    0    CONSTRAINT ref_user ON people    COMMENT     k   COMMENT ON CONSTRAINT ref_user ON "igreja_batista_florianopolis/sc_100002".people IS 'referencia no user';
       &   igreja_batista_florianopolis/sc_100002          postgres    false    3486            �           2606    37754    people ref_user    FK CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people
    ADD CONSTRAINT ref_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 T   ALTER TABLE ONLY "igreja_batista_manaus/am_100004".people DROP CONSTRAINT ref_user;
       igreja_batista_manaus/am_100004          postgres    false    237    3386    277                       0    0    CONSTRAINT ref_user ON people    COMMENT     d   COMMENT ON CONSTRAINT ref_user ON "igreja_batista_manaus/am_100004".people IS 'referencia no user';
          igreja_batista_manaus/am_100004          postgres    false    3489            �           2606    37777    people ref_user    FK CONSTRAINT     �   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people
    ADD CONSTRAINT ref_user FOREIGN KEY (user_id) REFERENCES public.users(id);
 V   ALTER TABLE ONLY "igreja_batista_sao_jose/sc_100001".people DROP CONSTRAINT ref_user;
    !   igreja_batista_sao_jose/sc_100001          postgres    false    3386    267    237                       0    0    CONSTRAINT ref_user ON people    COMMENT     f   COMMENT ON CONSTRAINT ref_user ON "igreja_batista_sao_jose/sc_100001".people IS 'referencia no user';
       !   igreja_batista_sao_jose/sc_100001          postgres    false    3488            �           2606    31967 %   accounts integrador_tenant_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts
    ADD CONSTRAINT integrador_tenant_id_foreign FOREIGN KEY (integrador) REFERENCES public.users(id) ON UPDATE CASCADE ON DELETE CASCADE;
 O   ALTER TABLE ONLY public.accounts DROP CONSTRAINT integrador_tenant_id_foreign;
       public          postgres    false    3386    223    237            �           2606    31304 A   model_has_permissions model_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 k   ALTER TABLE ONLY public.model_has_permissions DROP CONSTRAINT model_has_permissions_permission_id_foreign;
       public          postgres    false    229    3374    232            �           2606    31309 /   model_has_roles model_has_roles_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.model_has_roles DROP CONSTRAINT model_has_roles_role_id_foreign;
       public          postgres    false    230    3380    235            �           2606    31314 ?   role_has_permissions role_has_permissions_permission_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES public.permissions(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_permission_id_foreign;
       public          postgres    false    232    233    3374            �           2606    31319 9   role_has_permissions role_has_permissions_role_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES public.roles(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.role_has_permissions DROP CONSTRAINT role_has_permissions_role_id_foreign;
       public          postgres    false    3380    235    233            {      x������ � �      |      x�3�4�c�`^����� ���      P   '   x�3�,�	��u�u���(�G\1z\\\ ��+      Q   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      R   m   x����� Dk<E ����9R�I�d%i E�����D��Y�!���X�p�LN�����E;�Cra��t���؎������L��o{��1r��5`�B�ND)�>�      �      x������ � �      }      x������ � �      S   a   x�3�I-.IUHIU((M��LN<����|�h�Bnf^F�BAQfnjfQ"��DNCKK#]]#KNCCNc�?N##C]s]c##+c#+Ss�=... �x |      T      x������ � �      �      x������ � �      o       x�3�4�4200�2�4�4512����� +�q      k   �   x����� ��f�,���B�d�9��zM��UI#!dz|2I�H �D��DC��)�/g�C,��|�D*kH)�7;��|��{��e��B�z1�-�����DCrM�H�1�e�A��	��\c9y�A�xC�	K�ȯ�7F$���<�b��^�ܑ�G�R��"iAe\��]	*�I�<�$��J|Ki7j�n��/�ǔ�dW�V��L�w,]M��/Z�O#{Mz���k�]a�      E   �   x����� �g����
��	|f��?�ȁ�R��"��'�R��-~�=��ִ-N�%n���b�d��Us�p�Mm"i$c�ZN��OB�h�W�FC�vL�6W{��3X�8M�n8W������l�v?+`#gI�WnO��������]} r��%���M�D�G8�i�����c-�Q;D^	�y�t1�Z��ۅ���֗R��G�      F   q  x��X�o�6N�����E���M���6�m-�yaȓM�E9N���;�v�$�6	�e#��������]�>��������^��k5�t��Q���t���Zd���;ͮFπϘ�Џ�����s6҆igs�ץu>n�GC��R��X�\r̛��Q3�����|����5cuɼ�R�u1�)f�b�"ge�0�btN����s��u�y/�4b��^��b�42:^^�JW�&�֕7�oL��b����ڈ�[e��(�_RZ+ѓf%�5sSi��+�jo�
%��j4��3�әB���9)�GGق� �^�>���)T��^u�\I��g�Σ
��6�B��i.��% �6�[�-WX�a'��\�F�4��s���^$�ە7I�>G#���c)���A���W���2/�$xo�?h���1!�j���8a��S~�;f �-<.|.�[G�R"0����1��y��((��g�L�TPF���`t�Z�G�B�W!����q��.�իј�'�Y�dY�D@���Oh&�6���j�j�'�A\��n����3R�e�gN�LU��P��������J1�-588AHVj2IIR*I��쬙N���
چ�Z
�?���־a��(S"HW;\a 8,��P�tcnU]�}H�+�E��J��C��z*�ހ���ڥ͸Xp,=�*i<X�r:�ץ̇	��Y)�1:��6�Q�V%@�-
�%�����
f���$|+����GQ��=���r/�	���Ks��)��,eũ0@�a�� )�P8���L����A6��ƭ\
):�
j���V.�lj�2�X���,��Et<���E����h��Oe�Jm�+���oY_��픱
�&=<j ������ȯctL�PKo��AQp�do5��E��Tw.�_��N�y�>�?^Ov������`ns.q�����8���L��Nd7ҍ�sIN#�aD9�G��$RD�s�5a�s
1!��9�Μ@+p�=v���>=��{J��a��2�����8�jn���F��ȏd����5�ޞa�3k�����]}��:���?_��[��ї<>׌�bA~�v�ŀ��������Ժ���f����N���������� Z��      J   q  x���Kn�@���S�.�)��+���������@��B]� �Xi�Ѽ8;�7���ϡ%;2ɥX�r���J[HU[Ki��xz=�>�?
�C��T5/)b�����=���O_JE����ZJJiX�vz�}.�O���_��/�/��!&|�J��jYEi K֮<D�P�	�����\F���$*Ji�]p�C����@YE���cH�.4����X�	D��%X���Oc���
��0w[�Ĭp��J0w��7誁�)�wB50�i�L���1�S�2���Eح��%F�8oU�=N�&��X��9�������T)'�SAc(�,3�{'3��re�j�E̱~-���U�4В=�v�g�O�iIj�U�~��U��������@1��@�c���1/e@�v�ݒԐ�C�g*��&��C����4Ж�����P<�i7��D��c�Φ�@W��M����\��\�8_��/;ǘ/�7r� �N�ܺ�i7���(=��%#"�خ�>(�P������n�i�i�ݪ�Ʈ�����J6;Q��Vn�C��X`� 6h�/]�G{�Ow�1l�\�s۶���0�q�4|�_�b��8C�7s��� ���|      l   �   x�34�qqU����45��8c�8M8��u,t�8�S YЈ����ܐ���]�)���c0��4�I-.I�4�I)�)�G�kQ���_����׌�*1�ؘ3+�,5ӀD7���l�����iga�(��3����� wICl      p   �  x����n�F���S�)��Iry3�R�N��C.���P������ɋuv�Cj-�I�a�v4���P�E,�qJ#�S�O��o� r��ɖ%蒰$�<�a�1{#S&��1RR�������7�-U[N���4S*�IP��;��� �pb�X�X1��jl�q�X2��r�a�$0TP�Q��օ,F�UrnO1�#�\dLf���5mg"�7,vh��h�%�NtHrz4,	jc���Y�RY�/G�����f�=�6a�U�sS�Ո��\�	�I�t���c3�NRH*��6�Y�eWu�\׈צXSǋ�#�E�­|V5�6���1����VqGesɍp�eWu�8��6��-����}ݹ��[�bˮ�dԦ�K�ދ��Ԗ��No�Ԭ�� m��N�N������-W���*�������- �?qٺ�����Gm�����Z`.p�L���k��ƝA��.����:�qP���~��֎�W�O� ���W�鴩����6P[�f=H��u=x⭏����cv�=�.q#2]lHӣc&�08���8�j�yK7\bh����)[`��:�A&:/9��w9��7���M��i6�Ȣ�C{�E�����ڴO�+��&�%�Dc�`�0�{�s	p|i=�=F���'��pQ@}/�(�E�k����~y��@?��ᓭ@��Ic�3��I%o-�'�.��܎e�\e��W��2jSR�*�����tth������c�NVh��0��C�͙P��xn
�X�2A\5[�RIKv�٩g�;�`��YP��s��%��1�����k#jQr�'Z�S��R�XÈ3��c��9�������om�ܘ�^�n*}7��zG�^�#�}b�_5���7y��Ȑ��{\T�(�&������'N�^��I��nBɧ�1gR\��LuY7�-:��M����5��t}C�Cq)�}Q=Sݎ�u�[S�}KLO��/s��I�_
S��,������������c_����h	�ᶦh�vGLe򊼀�O}	a�r�)�����c�/@~O�uY�?EE��se����6��E���h��󾱨�\ VS�N�7�Xe��+���aa���Dzǃ[訍�kl�7���x�x�C^��ۃ�e�#��=�s��<i�.���	��w) ˱���B�J��5��Ue�����E��H{.]u���x�ǚ7�d#�8.�	�2�r�ɵ�ym0�t#���:��wJ��ʔ�f����$��
ϕ����kz��d#F�����G�#�i�����ꁎ@HǪ G���<,5?n���8�C�%���*�^��x?z���\u�O{MGv �3�e������7�]�o��p���;��L�Vٷ�6�XQ�.�ǅAm�y��G�!H��c���>ҝ�%uߑע;���9�;���������ɫ�����Gr4O��0-3�+y=�Ɛ���A��H�Μ�_LC�x���ՁTuW����� ��ʐK�l`��a�}{�˒���O����ni�xܱ��0�;
���/����¼^�#��YU{E��%i��<OyC
���%u���.S	�*�6�Am~Z�C��<���h\j:�P�(�n�Q�r��o�!f� [͵������.��W�n����e�,�wv ������D�c�O�/���2��t���5�K��?I�����r��Z¯e-4In�����E�p��O��Z�m�"5�ep8xP��� p����ϩ>�'i�m��l�?��      G      x��\�rI�|����1x�����qĎg|�yڗYw�H��n�?� H ���V���x�B�DU�i�qh����|I��Gzn�:u��������|����������ߚ�p���/���y��5��M��SKo??/}��'�1�3�D��#���O�ùӯ9�g�a����K�������= � U��fq7]�ͧլZV��|v7�����l����_�y���-�է����~��9���'zf�I��k����s}l�95��[���N���ti�']CS��Sj�&��Sm�7����;���ۆ^�v��GZ��E_G?�7�����]_��%}K�}G_7d��d[~TZ%aO���˻��V:������ۖTwC�o_�3��D�uÑ���������tJlV2�?����>�'^5?ᱧ�#�/u%�KG�n�[����LL�2ȯ����>�'CM��S���Yn"�t���÷�;1Uͻ}i��y׺�4Ю�o���h�)�n[���|5f�E��<�>�%�"[��-�����%��yb�џl	��I�{�=&<ݱ%_o��b���A��;�t�Q����phN}KQp<���^��=y�T�b���S�胻����mG�;��=?-�0����X�,����t���'�f�����6�By��z� 6ç��Ų�j^���t�zB�I��yi�S���!u����`!?��`LC6n���G��'ƙ���Ȑ�􆖞3>]��$�O���)OڱgsЊC�֑��.ؗ5}����g�%zYG����y�?�����M��.��Q���-Go	�����}�q9�>0|��Г4m�@�FA���~@�{.6	�����gr��ⶡ��:�#��ӂ^�]ג���Bm�L��K^!��nJ����|h��X$OL{O�����\��ڞVy)"Z�����`�\�7�(ѦEOwj��ϴ�hKig��� �mSghs�����"|R�B7���1[T���1>�(!&r��0��$x��YΓ��(�$y�����<��{q��pkYϤ��W��uє7� ��mS����Q��gc0�/-?:���ܒ��3�^{� KJڸ �{Ҏ�=�(������=S^$	!zOΫI8���r��K^zG���&�r��QC&N*�=[h��q�]���Y�����ɍ)���讽?p<!�" ��}{�����ᧁ:�,
��M�-����:vϓ����a��� �hT�}*��e&��E�>�2��Psv�� �D��N�zz���-�a`+2#����NGH�!	r��ޖz�z}�{MuJ�D;�,���b!Nq�.�ӈ$�SN����P9��`��؞[J?6�E���s�pJԕ��H�b#�k���LE�n�oҞ~��e.k��Y�2�䐞�>0g�،ʝ�p�!Ԁ�;2Ԍq��ܭ���#�#�!&�����cZ4d`p��wК�ؒJ�/�E&>2�C�4�U�Gf��C�Ӄ�F�]������=�D�,��K����U�=������3����1�I��I����}w7#$���تz/�S�$��`HFgh|2w1�%�1����c������8� �f�@���ɜ��f0vAƓ����M�)�)��_����gzI�8N��$����ɷ�� oh9*& �y(��y9�� �!�o/�p�@�fxA6,���%4��J�RIˏG@R~2n).������M��^x�P�dōO$?J8�XoȂ=$��"��=-�ſ���<�8����M*�ʆ׸���o5*EH�H�ֵ+WlYjKnG#�R���k^��(vR)�+�����cLg0����<��L��Ē)�ltowKNB^���r���J�l�n!��\%ҔR��p7I#!��n���j�����Pib1�㗇$ߟ{I+��N n:�Qf��o&�.Ye�a��-�L+����i?ȯ#K]<�iinm�Ԏ���Zv5c���~�*���K ~��b�y�o��0�[+���5��٘��T� ���!�����2�1����Vcb�p0�V׸zAԍ��I���������L��8֟t1��"ނ��J�����b�a�.xoP ��0��`.)�e$����-�0���+X�݌Y�p��)vzȕ��D)XHl�z�6k�ƪXHW=�����d6�E�
H�sn�KSa�j@3y��o(]Y2�"�P"�p��-W���|�i�!�˙�=';K�gW1�dIf�G�����2+��I��OV-A�87�@��zO`��E��D5p8�Cs��Ql߆�]K��F �B
z0bcu}��d� kA1p��r�ff)�>� � /W�!�3kA��U.|�7���U���K�gd�A���I6R��q���iQ�(+0G��S�b7)�셓�\�s��E"��2��m�r������-`MY?�8��S�knC)��-QV������ǔ��z��_�n0K�eA��ӝ'�+��)@:�[�̤��+�2�h�!+2�m%d��%����(�/jëBԷC�\͆�FQ����b�C�oc�ž�E�%�y�5�� c E\|0�5Rv�6֩Qvox�rU�U�=2����X��+&{��'��|R��9�(Q��-�ɿ�ay+8�{����n�ǖ��9=�G�����������="-�V�t��$
Y�ɦPq.��z�N��kX�=M-�곕M������p1eX�^���e9����, �,�:�PbO��e��;�����X<�����x�M"}��*g�ҭ �XcI���T�pXu���p&Y6fZ�-Tfޖ2�b�6 -��[ ƛ�M�[��a|V��:W�m�PM&��M��^7�<������L(q�g�|%P�>5&))�����C�ؤ��f���6�J��V�db`FE'���Y�F�u�5j�I���&mk�8X����ң)@P�V�Ǿ�V�N�2�p��rTq�R��jKc=���wy[|5��G�2�\S�ٱ�O�r��9�0mb&$�G��0�'.c�A)�yV����w�C!�W�pj�c�Y��ҏ,�n*hTKp� ;�90�5��� {�^ֲ�=�����fݦ���#!��VCj�Ա���CI{��S��� �`�����3v��H���&�����B�ZX�'GB�p�Mj�{�J��A�F������r�'9I:(��W;��:jv�Ar/ �;6��g$���~�T�'T�����K�;��17����ΈX	@���q]3����դ�)��1� ��X>�w_���fF���9b�����և�l���i�6
�In+8>΂�\��ch&����_��4��m"�C@�������������j��T���>��m�(+ڰ�M��C5k9[��`+�v�r����k��%_>����#����w�%%sX{{�jZ�%�|m`�g7ep���Zb�ǅZ�{�[�"|uE��^�X��W�Й�mXb�#j��b������wt��=�4P� �"�3YP&+8GG���|�ؐ&V�Mli��#N�l,J��7�Y2M2Ō��L��
�6XH����e��D�ٌ��-�&�p(\�c}E4�I��1+]M/�Tdz��(��Ski�o�Po��q50;��4�8F��)R1�bb��o��J3vh)�ޒ�ծ)6\�$<\Ĵ�:Y�Q�1�˵3$ �ע`��;�Y�I�kP�d�@���'J��*�P��7p��m����o(l�Ψ��oʄ�ތ�ch���Oħ����OЂ%�� |���]��CÃY��wC�bJY��W�Yr�����Q���4[ѣF�b�y�ǂ'��f�\����1I+�K��E�p�c �=S(�qE[r1���5����}5BۛJ�_��&�V�舳Ʊ��s�c���L[�$ƿ�Ӹ�yŃ �a���Q�S�BF�0h��Ǐ��b�,��K"��b�W�����;���9E�䀒����au�8�R(��v�l��b�:SR4U��U����X���AG������GU:!?����f��	ӊ���9c�*a����,����Я1]�{�H��=�b`~ }  ��+m�/(�Z֞"Z$�@�f��a�z!�b�"�Υ=é?�_�N�	�(D� ]�qyl���D(������EW��v��o6�󷚁�S8� d"(j�!3d
Pp %JIz���H�n��W%�J%���B��s�_��v�}&0z(�t�ZefK]��c�>�:��Jm"���Xr.����>��� ����!���A�N��c=���������ކ�m�x.Z��ϓg� 
w�U%D�C�(�̣r��T�>�r(C� �򄐝!��A7B�*���z�JN�W����؝W������iRlBF���'xG�Q������k?�{�A�S�(����&���5m�l!�|����V{=�c�x�b�Į��x��~q��L�3@���
�GY��Z�*�;[c�y�C���� ��	�֊?��R֙+9A05#8�cj�"���ePy+�����4-뜎KX��GS�"Һ꧜�;���5�V�G?����ʌ���b3I��RIh(�Ϙ�� �y��[��,(m�+r�[ �!�eɊ_@���̥��l7[.��*]�ZyaD��+\���(p�.WWFy}�n�Yb��Z\�8*�C�m��ϝu�|a;L=��YT�k�M#�$�@�A�YsXR�IW���B���3� �A!_b0�F�H���"T$�C�C�J�aZ&^�%*��ȧh�t����vU}��V�U���Ou<�|��c�g)����+��m	��Lp���+��.�tQ����i�ݓ���-�!g̕��u6*�H{EcFKB��偌�&>���[���E����b�����!ɼ�R��y%�|���O�܎S)
�6�ex�C�7��:-������ˢ.�dk�����O�φ��\�c=d�T����D���:܅�+��񳣣J�jS� �v�FH�}1�)B�V�����Y6*��W���4AG�ޏܼq�l'C�!Iڧ�v���ҡ`kg3	���q�X�52��`�]%M2�,���ٷ��P��.}}x��"|�%��CY���J����f��螇��2���3���+G��Ϟ*%G�6z��Fq�%��%��)�g*�3�xǫ� �n��z3�>�3����(AO�`c��q�Y~F��쏷�J�Hd�f�N��/d]X�!M���Jt�k	c����X��C�1m�M���o�vw='{�c]8�@:v�P���.�����*�CƼ��]	s���G���Y��8&�/�Y�@�m*�����ZDG���,��RSz�E�FZ��6��oA[�	ZH����ɽ�5�G��v2�`):AQ8h��_J?��w�\��V�FdmbO�J\ר�G�	Q��#���l���IL�	B`���2@6~bp��t{;�=�9 -��v*�0��eL?�PM�\vt��8��bk�~�L�!Yw���� i���H�$Ն��r3���*�l^A��������Kծ��qf���! �Z���P3�%'����hE�7�y��2A ���_?�����Z���!$dx����s��hʵ���ނJ�Z
;Z}�:)�o���� 7�������8���at=S-T���C�0��Ԣ^���`EA4\UJC���&+�yzZ�������e�t��o�Q�`j�C�?�G��>��挮�W��z�f|pk��Us@Ҡ(d� ��P��
]Ҹ>�8u;��1�Q4�`�|I �6���XX�yn���H��։B��1r��f���r�ֹ��7f�Jp�r�+44=%l�n��� ��O=��(�ԏ�=e�`�F�����z�z�,����t���|5F��H@%�F�Ck�6���l�/�����G}#���%����'3�x�-zK���I��YV�:�ʬ���y>(�	M0y�kU�q��
UA/ee�v�n�M���z��`��x��e���	�b[�1�1P;V:�H;�� �z`����KI�����o>l�hc��5�5�vo���c$���q�+��Ռ�����>1���������Y� ��?�_\���3��Z�Ng����~�h���N�T��F�~=�J�&mi�W������ַ��J�u������b�G�����!G�g(�n��R������NK�nZ�q�|��k.���Ie�*T�o��dK�~V��'�72�<\in��"da�W��ɼ����xͽ�ί��v��#VL��3�ƨL02���ݾR����bpdc�#o������x�hY�`�<��p!�����I���P�>�=�.�z�v���+h�uȫc"� �n��0A^*��.:�(����o4��X��ҌI��(cQ�=��8ح��K�@��R�� ��@�zA \$8��˿�]�w���N՜;�%�8�����&���G�N%�
���\�W�Y�[ �z)p�2���v�O��r�״���9|ׯ�uURr��鑁���ѝ��*��F��Z(WL~0���).�R�Q�a���᧺����>���������i8�H%����%��(|�1��%���G�p�I��,tϲn ���ҟ��-Z>��"�N����̖�`�r�%ב،p��I1�"4�*g�E��.���/Y����1�~j�">k�QSy߼qw��T-��z��ԣ�FŘSxϡ8Ι�@��|���i�J7G�-��aZ��1mb�����D*�����H��Ϣe!u���*�nT"!��؇�C�¸n����n���?��*HX�R��c��2��`!v��`v�@m�ZҔ�1����)��78��C��B.Ƥ]Dgxq�C�&yM��j��҅B���w�{+�K�p� N���sN�o�(�X�ߥ��Ys��)[���-sE�dm.��a����L|�h�mdL�]ΟW���S
�M.�������2����a�-NM���r{�����T��LRJ�Ĉ��]� ��a�$��2nX(	z�~��8�vG���TKC<л �:�g��r"Ć]ח7J������?��2�����/6ˠ�!��TȐ+҈�ª�S�$+�@U����C��b��7EF�e��Y"���\WW�s�3�w��)d]]��(n���찞^ ��5�v���i��ٱ'=n����RP�wn��=\���! ���<�8��~U\S*'1
�����M~������      H   �  x��Y�V�H}.���a�M*w�(B�0�hBe�Z����`H4l�������T�n���M�
j�S���{����L]xnx�����d�[?;�y�y|��
�)tLݵ������܅���k7j�$��h�,���:���K8ʖ$qB"��4!IvG����BRsJ�8]�a�>����
5Mᤎ"�<�5M�pb)��<"�<�o���c� o�8��#��8� �D;o��y�m�����z������*$�0μ�4����(�lC�皓}KUѻ�e6|T*�8�w8��#�k]I�"��r��j�;�01����z����Z/h���}u����"^�<?��݅�t�����^b��D����!���4<�UV�9�-�rM�	��M|����/׼���� ѫx?�M��(�L�7��dYfiIʬ�����)-w�!�:��q����w�:`�\:���/C^�BW���L⻻��s�N��O\�}�l��.�3�Z�m�%M�U朕�{�I�$E�
�yUE;�"���ck�=�DH�b��*�t������օ��97�/�]-0݅��bPV��k̸fs��on��*����3u�L�<�k�J N4�Z�[�	���������!���|v��O�D��-�o@;�L�e$�&�n ����:�������u-�3�9Iø��4e�fEI��i������Zp<��^z�|v�#�=<������W�9s8%�.Ɖn����^Uw�c�\�R�p���Qv�}7�b@�(����C�G/u8�V�4�93XҢ�������4��*�P_s��W���'�5N�:2R����{���>������vi���g���KX.�>#k���rc�0�s��_��]3��}��Z \�T!)H���Z��OA��sE.S,ӭ�����+�W�
����$OH�s���t84<����0z�����&���T����IZ]sgJ�'�v�T	�>�{�!��-h�`���*��ѫ�?TM��kg�^���<����Ϊ�8�w"���3ZTS��jaxj%��6UT%}Dy%.FS�Q$k�i���=k9Q|r0N�!��Z�OqCd}q�
��}�M�
���<؛����K�Xث[0�5Z��2��K�
s�Cֲ��2{a;y�21a:R1��k��ֺ=0?K����� ����/j2ER��	7vƮVUgIˬ�->�S�迓'�Q��_�չkV	MH��}{���T�mIN�M�ceTE����"۴nXK��b8�gLű����S�| <�,YMr{y���n��~�~\O���͚�t��ظ��\5�Ug%L,����8�k�80��u���4�h7�x	8$���?�P�����Y�r�uH}�=s���Y�eQ���9���p�4e\�<
H@�]� �,X�}��۴0hẓ |�v\ʁ��.	=��Wy���)����K4K�.݈�ⱿA��ܩ�S\ϬL	��R���G�9'چ36,@�:]}9+=��U���
6G���RWT��L��]hj�\;�a���3[My=���1u3h��ҁ���V�L#0�)�$��Z���	����-���ߝ���yES�)0�pE�naZt�ܩ��!KpQ���k�qI#藤��غzuz�����o����p)���{�8�ӫ[y,+�oͻ�G�q�}#�]>T�~F��߯�'''H/�S      �   �   x�m���0�oq
/�B�a;�%��Q;@���u�]҄UL������ڏ0D�F!��Ѥ���َ��teA�qn��|w������K���>���L���^�0����,z?a��,�+l4������Xu������@�      �      x������ � �      �   K   x�3�4���u,�H�������ЄX��F�1~\��(�@*��A�lh�`hfD&�pq�6!+6����� ߑ\      d   D   x�3�,A�iP�FF���F
V`��#.C�����ͬL-�Lp��L����� ��L      e   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      f   m   x����� Dk<E ����9R�I�d%i E�����D��Y�!���X�p�LN�����E;�Cra��t���؎������L��o{��1r��5`�B�ND)�>�      �   N   x�34�qq�41���/K����44�4202�5��54�,I-.IE0�24�tut�46�LML��@�p��qqq �6�      �      x������ � �      g      x�u\ے�F�|���?0}�<�J���X˒e�i_8�%�}I�>� HܪG'«�f�IVH$(.��ʹ[���r=�m7�?ƶ{=~��ro����˹?vϷv�/���g*m�wN��}?���8�����<����^�o��=�η׶;�������Ys���e���|����fݬ��}��~Y6�˹\���'9ޮ=G�Wz��ocw�'�B�q:�t|ծ-����δ����X^ˬ����_J;���^�?=ni��a|�.�������]o�Y�4E���_��W�*�x���Bt�m��~�Ǯ�c<���:k�qh����:wۇ��a�jV��U����JW�e9��8�ʬ��z*�0������W��{y�{�|�r���3�m/���t��6N6�6��?������9��n:uױ��Ȃ���3�\7��]x��K����������ׯ��7_XLD�A&���^gMw��E4����L�m��_7u�yu/�t��Y�y��z��Yn�k��oWv�����I�o�q�>>����p���ؕc�BL��.�6X�V�f�,��6͇iݏ��y"_f��"/��n�q���|���//�ԏl8Y絰i���]�J?���g�š��GG���=�:�ݱ����VN#�<��p��m~������ԋg�����wF�埰�d+de�t�ەnO�x��L�^.�AMK(�ɩZ�رMn�~t'�����y*����cg#�О��݉�V7�+�/����B�>�.���lC�zӬ��ӆ��!9�v�y���#�0|^�7k>�	�4��tfC� Å����Qb���y*9��W/��Y��l���d��/��{�~��/���C�Y�t6��v�k9�t��YS�;��a������{��K!�ŏ®dXc�|�'�.������}����S:*���? +?�v��0��2���]۱���(A���|��dÙ/����k!��{Κ����P�t�xC9���U>�wx�k!O�hO��No���J�$W�/�֒���q�@TӪ��d=�d�[���7c���Uh�Jd�]����!w0��W�:l��4�F����+V���8:i���\�I�Y�J�Ղ�g}F8���	IHRi���%�7��ve(x@Z _7��Ϛ�ɣ��x���|A���eA��iJp��8������7�����{�U~,�L�w���J�П&�Oi	��_58m	n#�٧m��	)�����������%C�k"bH��H�t!�Cc����Z,9[<VX�_��	38x��225Ze����1�̊E�),-JT�(����1J�'��ް��|����G���{!d�(]%�����_��;#	)�7�f��R�_X�P��`v�6�[x	���������d�������=�{���[��j>�n��Q�-�G�����I�o�^꾃@�P�Y�xTrN��.�UD���ir�@�	 ��f�3���'$��qԆ��i6�{ur�l{xN�"�:HcنQG�x�X���T�tJ6*O�/^���$�/�TqŌ@�)UFE��gvr^լ�F�!����*�`��>Kj��1k�=qt
�X؜i!�r�k�����g���*�ʄ��{J	�X�(0�Y��uxX�Z4;'V�����ĳ��	����s��"������<�3���g�F�.#`NDL���}9H`����#y�LO7��_�Q^��,t�KZ��4�-���`C{��.U�W����+3#',_PeGuh��>i��[��X�z���'U�c����+���}������o+Ii�*o��Ĳ���}��d��#T�{[�q������7. �iI�*�.��ĩ�i����I����6����Qo�ȋZq�����r�.Ɇ�,�|`Ú;ݜnj���%R^�=���Y�`�����!ˎH/��V��h��\�`���k�Ff傘���8�%�����SYѐ���%5C����{=jj�y�XνI�@�ğ��r�E!��ݝ�s�5(vw����!��l4V!�0�A`���:Y�����"��cZr�=@�����B3�-�(
1z�Y��e���Bn��.UA��d���M�����|S��;����6�,�w��K�iW��EI�M�`�T�!P�L��o�)"OqA�C�=ܠ�W6�ů%U=�P�֪Fx�bI_b�Ő)~��Dn�E�gD@�߯��\��9��6��#9qQ�*���R��;+�ED��9E� "�{) �Pqa�!��2%.J��V�Uy/�j�Y0X&x�0R�h!Y'@�Õk]H��M4�X��	�̉�����cT����d�5�jVf%E�c^���Ix����f�"��P�̲��5L����<0�DM�Ͽcu$�r���9��0�Xe�!��l4��LEx�d�C9)D, ڏ�
�|�.�����*�C����pvt
�(��.��ì�hdF�}�t��+O9��t�3���\�{�s&=Ր03'���ڍ9mk~騤��rKI�e�������4*1Ű6kB^�d���a���������/R�ߋ x]7�r�\�f,��p���m��I���0UgA��ݰz�[[���!)���*5�
�&W���Ρ����k��}R�'k�f"����)������f�3���n�t�"씋���3�oKY�װ�����ʅ��v��������قJ^�i����s��_\7p���bC|�g�'�@��xl�H�y��׀Ų4��
�j����HE%��	�zCCMG���ohC��B�0G"$����{d+S#����cq����JJG�+G�B�0˄�U���Dڋ��YF�:�|T=�L�O�ҮT(�
�`��8��I�2��E�2f�§Û�ݴbw��2j�z=��H4�f��Z�6qt��ꞏ̩5(�RT6iJ��<�/�3iq�Y��:n*��eK��<�!2%�����k-�����l��\��Ҭ�AKP�Ҕ3]�a3�C���Z��S��� �5}m�q"B��Y�EاܽE�h�e�r ?��\r�-�b�m�A��
n�U�3	��*6%&�?f�./�!d��N�v��Y�%��ԥZÑS�I)L`B�W�&�Ů�d��ٔ��h	A�~H��U������BA8�o�����%
'��V]8?�U7�X흉�J���F�f�������ގN!�^I��m9�� `w�j'���ۻhoħ��YHf�@�y�f�:��޳���:4��W��z�p>��%nW�Dc-*�? Ӧ�pk]4I	���CE 
݈���*I�	0_9a��iHq���d%��L������͆+����z�uqΘ��-H�X�	-O�~V�}�ұ�;:�4�!��T}�m<�d��--{����Xq9Gu�6��c�=���\T�n�&H�?V�RRO���
H�'Z=^aۓw:��)���TH����,�㛲��J4�Y�`���v�l o�-������]�g�fĤÍ��M��������4��W�\#�V�*�MwR1s�U`����x)���i����|�ओ��D!�,��~�\td&�zI�D,�����uj�����: <�%�����ե>G�KF���Ũx�փ��he����>��������7$�4l����%�ڳ�$����B��i��IFr�ٷ��F�~$@��֒?��.L�U�(���U�f����0AQ�~������K�Wd�֦��J��������lI������C�]M��*��x��x�xǍ�3H+�^(̌CRh�qƗM�"�Ո_����[�}��Yo4u-Rm��Sz�;�r�i&l�<�酖��s���2�P�yj����}˰k�����%���(�+��4�.e�R��§]��'�XG��U)�%�봤E>'%W�T5вӋXfH�h:k�e��;�\�hM���g����Y�U�$���'v�ɝ�P����#�)��"�qfM�:�dI�$�ͼ��J�xKݘ�{�ݬI۱�;(�Drp�d���.W�?i��(c��k�C#���)x���
Vn�5I�^� �e�����$�sA�ٺY�t��'?4o�p �  Q���L��ךF7TX�xY�e� V���y?]yqZ�qV.4�޺Y�hJ��i��B�d�R��`4CǬr���`e./uΰ�j�B������峩�w5�hˏ��P�y�p��8��m��m�Ѩ0�)r�ϕ\�3���G�)�T�R����y44�Bc��j~�C�MC�>a�5�]��F�p�������WgI�
��h:�b�Tu�X��z��Zz�մܩWy©�S�>me>��m�^�S%|�4�i�km��6�MC`�U!��^�lC��C��X����b�]���l�f��Nw1��Y�Gt=���z�T�IA�
��}�o�~���Hm3B�c���M����)E�N�@�ͿkO���K��)��H���g����-7����9��I��Y�J;���E�c�[���}�:��
	�����d��C�0���]�`��Y:%���Q�:�r���1�l�u�XU�S!<�q�����U�٫$뚄h`�'By@����i�����QU�I��Ph��Ut�KeFLl�`��
�C�ٷ��e'�Ӈ2ї�sPr;�-���O���8��\���Q7tR���&Ft�.ʤq,��c����b��׳�_�L�6�W��$��J��\�?E{V�M2d㭌Tm�ga�*�l�L�.�4,��w�ɐ�˼o\k���*ޠ�,s٬�yh��8`LRȊ�ϖڵ�Z�l�O紶ƪ�lW��мx�����"�^��1��P��0�"o�O��s�U�m���T�4���A�)�)�-��}�����m��|��"o����&=���N�k��!,�.�9Xg����S�	��ci�PW�� �mrF:8Ơ�5�$��i͉kn���]);+����ńC�Ƽ?��jz�Ƣ���Jݢ(�cǦ�Ej��v��������Z�Qw�6��]
u1�����NzxĻ��5J�+ ^�@��us�$�e΀�:��tJ�����e�h܊��>�wfP�˩���h��b� Ϡ��hF%L�]>��)�.��Ϫ�)z����rS?S��LQ�'�O��|$�!j^�����	9C'p:Ki��)�iw�������i��P�S+ �r�?�b������� �(��̩RB�KX�.6ƣb�G��ฮ1@.Fp�����1*��Tض������dA^���&\��#��-H��{�K��`Ռ��O��㤛��4����Uj����(���
�J�m��/^�ȑ2I*����'I;���X����g�H�ߋ��K*�nA�@:�v1�R""C�0"��88h��ҙ�o�ޓ�)CG��-g��R�.�%�u�O�#r�̉(5���NU���r��y�Tz������HZ�ԀHK���c�&��}��E��L�ТvK6�7SJ\� �j�������{�h��I~VG�BM2�ӓ�FvoX��Nv�)�|o}sh>-�"G�N/���] ��������K��`����%�!M��.�u�b+�VR��#W�>ǖx�o�[7q(�L1�0k~�����)�%�J�H�N<����[5������;n�����%�b��3�Δr��p$.��E�mma��Ck$�,<��璤��pU����0br�����ׂ{����\��Q͕�ڇT��ڍTL�YN_�B�������&��S$����X�mկ+Hr�d�0�M�Y�\��ҝ�
ݻw, y�Xzj���ڝ�D�X�e�\o� ��gӨ��=n����T�y��Գ�|)�T���c9 ��6�<��󌽩�C��a(��~§]�H�� 
��ġ�����=���I�����y���S{t�w|a�_��!�{�U^-� ��AK|T�8�%5_$O�	������6�,Q�1fG�s�TA�8��O���wyBEM���!v�:�N�a��\�~��2�4��2 ��0�M���1=yC�$��=g6�^}7�~D�n ���|����7�.p�'�BeY��P�U��$k��+�'�޾%$��Ul^�\`7�Ʀ�o��q�-��
���8�2�+c��1�f����N	�n��.W3J�2����� ��O��scq4��������棂�T��"�9����� /�U��Ѡ���7��X��h&�~�Ͷrj�DK'����0IP�>��Yۯ+���`x��Y;Ά�!Ɩ8�>�g���$ڨtع�[��}vP�t�{�}S6�o]`m̏U�;��N���s�Z�D���� �"���T(��'t�쑜�N��
�wsKrl��-uJ��:��L�/"�����UPW?�d��]���s8^�
�Q̔O���ptQ��2��N�9��xC�թi0�־=ݻח6Esr��s���>���Rg�Q����5��|W�����-5���/���U��������Ov�xI�7�s�ԡ��I�d�ln�Ɛ�~�hiw�C���һ{���~�G�޽����Qc�T�Y������<�MJ�� ���\�m	C0c<����2���D��a#���*ԅL,W��~�7��q>��%X����R�VxU��~�%K���D��wMIc�j>x��̒�wЉw�Z,Dv=,e��mL�#��g?��L�����6�� UI��*r�6Np�J���p���Op�	Ӫ�2{���'d����"'�� ����-�H���`���s���V�2z��!��8ō����/X��D�P�8f�!vJ��G���;��Q{�Y����m*8kգ���	�|��U�U�2d�'|oRX�S��sV���C)��������Ħ�X��`[x���L��@ފ1_�p�O�A��Z 3u��{��_hU��=���[�����?uj� p��C򪕷-�-$c��C�m��B�Bwi�� 8��t�"�;ރ(�d�(��U#@_m�Bz��a��;�Ҹ�)a�Zr�zA�*�M6JW�O��g�*I�[��1���kIp���xM���s�F���þy���X��a��&;��t1��!�������WM?D+��rS}�+�1{�Y�?���mJT0�<L±�tvu��/��zԉ�k�7so�X��Z�*�t�~�Hw�,���S��t��0�!Z^B�[�*O~���x���!�q2��8�d��-������FגZ�Y����=��&U�86T�4���W	I��j۵�!f��{c�x��ADq[��f������Tw      h   �  x�ŔMs�0���W��C{0H��-N|�p�Ph��"�l���~}�@R�C¡����g�~�]�4�rE��Se��G
��ն]��������
!&l���#��U���!*��4�����s��3�g�CS�� P����Z Wx������u����P��uB��|����,���,L�L84�z�,JH1R��"� �j�-����H;mܚ���x��2�S�d	S��v�	�����i�-��<E�d��GNW&�d>��:foԱ7���r��|�wz�߻P��A��9�I�yBAt��mi	m�XY�&�XfSW���K��ʎ�^k��L̚���<���\-�=;�o��֔p����d6�F.����~ziմӕ��P��7�ʰ]�A�k�Y��0�T��(�u��l:�P�Xq�G�H*���ѵ��N�R&�?ge���G#�I;�7�j�&��'�h
xՈ)g1��-*��+Z���W7EZ_��V�Y�r�W�2�woO�����&�ڴX�tַެ�\�;�l��7{N-�ٶ;�n擼�M`��LWi��0�D�����L?�L�̆��;V&�o�1XeiA���3��ۭ��� �tc��!<E�Td�ѽF={ �c�ٽ�ugz[?���+�j!�Ҵ�ߴ�^p_����P��j�Й��      �   3   x�32�41�44�4202�5��54S04�2��24�2��43�.i����� Z`
�      �      x�3�4�440������ 
�      �   ,   x�3�4���u,�H��������,�G��?�=... ��       Z   *   x�3�,�	��u,�H���������h�q��qqq �      [   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      \   m   x����� Dk<E ����9R�I�d%i E�����D��Y�!���X�p�LN�����E;�Cra��t���؎������L��o{��1r��5`�B�ND)�>�      �      x������ � �      �   ;   x�35�4���440�4 ��F�FF��@��T04�22�20�*f���ih����� WyY      ]      x�u\ے�F�|���?0}�<�J���X˒e�i_8�%�}I�>� HܪG'«�f�IVH$(.��ʹ[���r=�m7�?ƶ{=~��ro����˹?vϷv�/���g*m�wN��}?���8�����<����^�o��=�η׶;�������Ys���e���|����fݬ��}��~Y6�˹\���'9ޮ=G�Wz��ocw�'�B�q:�t|ծ-����δ����X^ˬ����_J;���^�?=ni��a|�.�������]o�Y�4E���_��W�*�x���Bt�m��~�Ǯ�c<���:k�qh����:wۇ��a�jV��U����JW�e9��8�ʬ��z*�0������W��{y�{�|�r���3�m/���t��6N6�6��?������9��n:uױ��Ȃ���3�\7��]x��K����������ׯ��7_XLD�A&���^gMw��E4����L�m��_7u�yu/�t��Y�y��z��Yn�k��oWv�����I�o�q�>>����p���ؕc�BL��.�6X�V�f�,��6͇iݏ��y"_f��"/��n�q���|���//�ԏl8Y絰i���]�J?���g�š��GG���=�:�ݱ����VN#�<��p��m~������ԋg�����wF�埰�d+de�t�ەnO�x��L�^.�AMK(�ɩZ�رMn�~t'�����y*����cg#�О��݉�V7�+�/����B�>�.���lC�zӬ��ӆ��!9�v�y���#�0|^�7k>�	�4��tfC� Å����Qb���y*9��W/��Y��l���d��/��{�~��/���C�Y�t6��v�k9�t��YS�;��a������{��K!�ŏ®dXc�|�'�.������}����S:*���? +?�v��0��2���]۱���(A���|��dÙ/����k!��{Κ����P�t�xC9���U>�wx�k!O�hO��No���J�$W�/�֒���q�@TӪ��d=�d�[���7c���Uh�Jd�]����!w0��W�:l��4�F����+V���8:i���\�I�Y�J�Ղ�g}F8���	IHRi���%�7��ve(x@Z _7��Ϛ�ɣ��x���|A���eA��iJp��8������7�����{�U~,�L�w���J�П&�Oi	��_58m	n#�٧m��	)�����������%C�k"bH��H�t!�Cc����Z,9[<VX�_��	38x��225Ze����1�̊E�),-JT�(����1J�'��ް��|����G���{!d�(]%�����_��;#	)�7�f��R�_X�P��`v�6�[x	���������d�������=�{���[��j>�n��Q�-�G�����I�o�^꾃@�P�Y�xTrN��.�UD���ir�@�	 ��f�3���'$��qԆ��i6�{ur�l{xN�"�:HcنQG�x�X���T�tJ6*O�/^���$�/�TqŌ@�)UFE��gvr^լ�F�!����*�`��>Kj��1k�=qt
�X؜i!�r�k�����g���*�ʄ��{J	�X�(0�Y��uxX�Z4;'V�����ĳ��	����s��"������<�3���g�F�.#`NDL���}9H`����#y�LO7��_�Q^��,t�KZ��4�-���`C{��.U�W����+3#',_PeGuh��>i��[��X�z���'U�c����+���}������o+Ii�*o��Ĳ���}��d��#T�{[�q������7. �iI�*�.��ĩ�i����I����6����Qo�ȋZq�����r�.Ɇ�,�|`Ú;ݜnj���%R^�=���Y�`�����!ˎH/��V��h��\�`���k�Ff傘���8�%�����SYѐ���%5C����{=jj�y�XνI�@�ğ��r�E!��ݝ�s�5(vw����!��l4V!�0�A`���:Y�����"��cZr�=@�����B3�-�(
1z�Y��e���Bn��.UA��d���M�����|S��;����6�,�w��K�iW��EI�M�`�T�!P�L��o�)"OqA�C�=ܠ�W6�ů%U=�P�֪Fx�bI_b�Ő)~��Dn�E�gD@�߯��\��9��6��#9qQ�*���R��;+�ED��9E� "�{) �Pqa�!��2%.J��V�Uy/�j�Y0X&x�0R�h!Y'@�Õk]H��M4�X��	�̉�����cT����d�5�jVf%E�c^���Ix����f�"��P�̲��5L����<0�DM�Ͽcu$�r���9��0�Xe�!��l4��LEx�d�C9)D, ڏ�
�|�.�����*�C����pvt
�(��.��ì�hdF�}�t��+O9��t�3���\�{�s&=Ր03'���ڍ9mk~騤��rKI�e�������4*1Ű6kB^�d���a���������/R�ߋ x]7�r�\�f,��p���m��I���0UgA��ݰz�[[���!)���*5�
�&W���Ρ����k��}R�'k�f"����)������f�3���n�t�"씋���3�oKY�װ�����ʅ��v��������قJ^�i����s��_\7p���bC|�g�'�@��xl�H�y��׀Ų4��
�j����HE%��	�zCCMG���ohC��B�0G"$����{d+S#����cq����JJG�+G�B�0˄�U���Dڋ��YF�:�|T=�L�O�ҮT(�
�`��8��I�2��E�2f�§Û�ݴbw��2j�z=��H4�f��Z�6qt��ꞏ̩5(�RT6iJ��<�/�3iq�Y��:n*��eK��<�!2%�����k-�����l��\��Ҭ�AKP�Ҕ3]�a3�C���Z��S��� �5}m�q"B��Y�EاܽE�h�e�r ?��\r�-�b�m�A��
n�U�3	��*6%&�?f�./�!d��N�v��Y�%��ԥZÑS�I)L`B�W�&�Ů�d��ٔ��h	A�~H��U������BA8�o�����%
'��V]8?�U7�X흉�J���F�f�������ގN!�^I��m9�� `w�j'���ۻhoħ��YHf�@�y�f�:��޳���:4��W��z�p>��%nW�Dc-*�? Ӧ�pk]4I	���CE 
݈���*I�	0_9a��iHq���d%��L������͆+����z�uqΘ��-H�X�	-O�~V�}�ұ�;:�4�!��T}�m<�d��--{����Xq9Gu�6��c�=���\T�n�&H�?V�RRO���
H�'Z=^aۓw:��)���TH����,�㛲��J4�Y�`���v�l o�-������]�g�fĤÍ��M��������4��W�\#�V�*�MwR1s�U`����x)���i����|�ओ��D!�,��~�\td&�zI�D,�����uj�����: <�%�����ե>G�KF���Ũx�փ��he����>��������7$�4l����%�ڳ�$����B��i��IFr�ٷ��F�~$@��֒?��.L�U�(���U�f����0AQ�~������K�Wd�֦��J��������lI������C�]M��*��x��x�xǍ�3H+�^(̌CRh�qƗM�"�Ո_����[�}��Yo4u-Rm��Sz�;�r�i&l�<�酖��s���2�P�yj����}˰k�����%���(�+��4�.e�R��§]��'�XG��U)�%�봤E>'%W�T5вӋXfH�h:k�e��;�\�hM���g����Y�U�$���'v�ɝ�P����#�)��"�qfM�:�dI�$�ͼ��J�xKݘ�{�ݬI۱�;(�Drp�d���.W�?i��(c��k�C#���)x���
Vn�5I�^� �e�����$�sA�ٺY�t��'?4o�p �  Q���L��ךF7TX�xY�e� V���y?]yqZ�qV.4�޺Y�hJ��i��B�d�R��`4CǬr���`e./uΰ�j�B������峩�w5�hˏ��P�y�p��8��m��m�Ѩ0�)r�ϕ\�3���G�)�T�R����y44�Bc��j~�C�MC�>a�5�]��F�p�������WgI�
��h:�b�Tu�X��z��Zz�մܩWy©�S�>me>��m�^�S%|�4�i�km��6�MC`�U!��^�lC��C��X����b�]���l�f��Nw1��Y�Gt=���z�T�IA�
��}�o�~���Hm3B�c���M����)E�N�@�ͿkO���K��)��H���g����-7����9��I��Y�J;���E�c�[���}�:��
	�����d��C�0���]�`��Y:%���Q�:�r���1�l�u�XU�S!<�q�����U�٫$뚄h`�'By@����i�����QU�I��Ph��Ut�KeFLl�`��
�C�ٷ��e'�Ӈ2ї�sPr;�-���O���8��\���Q7tR���&Ft�.ʤq,��c����b��׳�_�L�6�W��$��J��\�?E{V�M2d㭌Tm�ga�*�l�L�.�4,��w�ɐ�˼o\k���*ޠ�,s٬�yh��8`LRȊ�ϖڵ�Z�l�O紶ƪ�lW��мx�����"�^��1��P��0�"o�O��s�U�m���T�4���A�)�)�-��}�����m��|��"o����&=���N�k��!,�.�9Xg����S�	��ci�PW�� �mrF:8Ơ�5�$��i͉kn���]);+����ńC�Ƽ?��jz�Ƣ���Jݢ(�cǦ�Ej��v��������Z�Qw�6��]
u1�����NzxĻ��5J�+ ^�@��us�$�e΀�:��tJ�����e�h܊��>�wfP�˩���h��b� Ϡ��hF%L�]>��)�.��Ϫ�)z����rS?S��LQ�'�O��|$�!j^�����	9C'p:Ki��)�iw�������i��P�S+ �r�?�b������� �(��̩RB�KX�.6ƣb�G��ฮ1@.Fp�����1*��Tض������dA^���&\��#��-H��{�K��`Ռ��O��㤛��4����Uj����(���
�J�m��/^�ȑ2I*����'I;���X����g�H�ߋ��K*�nA�@:�v1�R""C�0"��88h��ҙ�o�ޓ�)CG��-g��R�.�%�u�O�#r�̉(5���NU���r��y�Tz������HZ�ԀHK���c�&��}��E��L�ТvK6�7SJ\� �j�������{�h��I~VG�BM2�ӓ�FvoX��Nv�)�|o}sh>-�"G�N/���] ��������K��`����%�!M��.�u�b+�VR��#W�>ǖx�o�[7q(�L1�0k~�����)�%�J�H�N<����[5������;n�����%�b��3�Δr��p$.��E�mma��Ck$�,<��璤��pU����0br�����ׂ{����\��Q͕�ڇT��ڍTL�YN_�B�������&��S$����X�mկ+Hr�d�0�M�Y�\��ҝ�
ݻw, y�Xzj���ڝ�D�X�e�\o� ��gӨ��=n����T�y��Գ�|)�T���c9 ��6�<��󌽩�C��a(��~§]�H�� 
��ġ�����=���I�����y���S{t�w|a�_��!�{�U^-� ��AK|T�8�%5_$O�	������6�,Q�1fG�s�TA�8��O���wyBEM���!v�:�N�a��\�~��2�4��2 ��0�M���1=yC�$��=g6�^}7�~D�n ���|����7�.p�'�BeY��P�U��$k��+�'�޾%$��Ul^�\`7�Ʀ�o��q�-��
���8�2�+c��1�f����N	�n��.W3J�2����� ��O��scq4��������棂�T��"�9����� /�U��Ѡ���7��X��h&�~�Ͷrj�DK'����0IP�>��Yۯ+���`x��Y;Ά�!Ɩ8�>�g���$ڨtع�[��}vP�t�{�}S6�o]`m̏U�;��N���s�Z�D���� �"���T(��'t�쑜�N��
�wsKrl��-uJ��:��L�/"�����UPW?�d��]���s8^�
�Q̔O���ptQ��2��N�9��xC�թi0�־=ݻח6Esr��s���>���Rg�Q����5��|W�����-5���/���U��������Ov�xI�7�s�ԡ��I�d�ln�Ɛ�~�hiw�C���һ{���~�G�޽����Qc�T�Y������<�MJ�� ���\�m	C0c<����2���D��a#���*ԅL,W��~�7��q>��%X����R�VxU��~�%K���D��wMIc�j>x��̒�wЉw�Z,Dv=,e��mL�#��g?��L�����6�� UI��*r�6Np�J���p���Op�	Ӫ�2{���'d����"'�� ����-�H���`���s���V�2z��!��8ō����/X��D�P�8f�!vJ��G���;��Q{�Y����m*8kգ���	�|��U�U�2d�'|oRX�S��sV���C)��������Ħ�X��`[x���L��@ފ1_�p�O�A��Z 3u��{��_hU��=���[�����?uj� p��C򪕷-�-$c��C�m��B�Bwi�� 8��t�"�;ރ(�d�(��U#@_m�Bz��a��;�Ҹ�)a�Zr�zA�*�M6JW�O��g�*I�[��1���kIp���xM���s�F���þy���X��a��&;��t1��!�������WM?D+��rS}�+�1{�Y�?���mJT0�<L±�tvu��/��zԉ�k�7so�X��Z�*�t�~�Hw�,���S��t��0�!Z^B�[�*O~���x���!�q2��8�d��-������FגZ�Y����=��&U�86T�4���W	I��j۵�!f��{c�x��ADq[��f������Tw      ^   �  x�őOO�0��/��z�iK�QN�3� �aå��[&+5�w��"�L�6�sh��އa�h\�R�t¦Z��v�bo��W��������^0�s�a��!Օ�*��]i��`�
�J4[���!����@��7�Oz���<2��"��y7�4{X1���qo���bw�'�V��@E������v(��ޤuj��F�B$���9�be�'�I�^�2�+�����C�y<�0�Nv��N�����&��J��ǧ�p{xvAG�{��d��|~;]���뽍W��?���n%,깵� @�J�u����u.��3i}�*�����`��Nj4)^��`j�>��M���
�y�;�ފjn�	�S���U����U��� �Z�      �      x������ � �      2   �  x������0���S��:��q�T��J���u�j�pI�7�:���IZ	Z8�R|�����<��k�F:Ɲ;��Ύ?<}����pvO�,}�Ý�l���mH*�#�Rc4W,�B�ie�ҵ���K<ڽ-����;"8�%I�\)���/���~����r}*���t�y��\�C�5����ٔtI�ؔ��k<�26�x�b<ЅL�T�g�q̀���5�+l���$�ֶ�j�m[�0ll���dQ_?5Hj��.,=]!����ز���6���S��4�N��?�6ڀA!�Ӆ�/ml�0����v.2���Dڻ0�f�\���.�e��
���х����jT�}g����Ғ���x���	ݦ�V�>6��Z��r����i.����)��)PIfD�����VrU �"����V~�K">}�����> �A����p���񔉌rS�����_���-�x~���݊-�O��d0�ۑ�      ,   �  x��XMo7=ǿb�Fo^I��&P%E�C���!Z���]¯rIYN����J����&� ��83��43����_�s����^����5l�ѫ�pe��Z�����m�a�B=yҞ��V��H�*_>���
��bGx�]�Hg#Z��&�K�;�X���P�}�%�-�?�w?����"�F㽸o�KT5+�ؾ�k,5���F�X�\0"F�uO^����z/YL�N�&���q���h��|_��*��.�O���i��h�C���5�9��D�n�����c�x�To��g���[q���X��1��l6Ρ���|D�,�ӟ��u���p�%��� � �6#�;�Vj��|oG���h��c�a��%r1t�~�6�B�Q���8b�x-n�@��x��|�iY�>�{3��vAa(�P��9\�H���9��6�Y`T�����B�WXǅ�:������F��SA���ŅP�WP��n��v��E��F��M�,n�Kw�j=��_\@�d@e4����.Wo��Ab4�{jd��~o�{��;�gɀP`(���V�3���0�MI�1H�-��F:pX8و��)ib'�ƀ"���l����\)D�|�'�ι�v��9p�D��1 }�-Z�-c�o�N��C�_�[<\ H��9LP��D�o��+�&��4�{�>b
А��(9�L���9"��#Ń�4ɶIɤ��@��*�$@a�!��s�"#N�op&3�%t�����#3$��g�eDƔ�D�ɍ2�	*v �
�r��<�-��b���VI�TF'��AO���p�Јڊ��D/Ny}1e?Rt����zx��9���m��6�Zm�Tq߈�X����%�(��<|V!����<�ZϷc1�I�c�꜠X����gǟ�.� �`{r5999�<���      -   �  x�]V�n�6<�|�@�����hd'����&���Hm���E��秺IJ� �G�duUu�N����ͻ!�a�K���]�;��<'J<��H~�$�L3�r��b�����3�#.�-��p:��C�r�%��0rLBх9Ip2cqw�Vw%��[w<c�y�%�A�����seqo9�W�=�=��������kXf@�*���p���I��Ȯ'����DZ���ZQXF�ǻ��}�y�	w�
p�x�Q���&\���>�1�iR|B��q`!ׇi
��f�� }s�T���ߋ��{Hد�2�wQ�6�m�>��o<�����[TF2q�ě.Jq�ͬ����z6���n(�3b�V�^�{X�y2���x	�ї���U@�k���Q�o��Po�t�R���08� �{l�]ԗ���n��YvC������Ԥ��B����{�����a:RQ=�JD�tO��s�e�՚
�f���I���\-��$�SXM=�EQ�΄͟��qw<�TO��x�n]����5)�W;xy�q���y�WSu�l�V�O$[{���P������jbTd���¯8�a���',)��`���cޒ������a��5��[�5�C��>ςZ�[E��X*��$�E=��B���m�J�I���,�cg� �;����d���Qz�
����M)RsYs�(Ⱦ�֕�DS<-d�Em��R9Ŗ��1���Y=�#慐��u���s��Ӛ�*]*B��Z�j�r�*5Pm��V������F��j|�]>0fv6�a=�Nӫ��<�y�|����i*�X�0٩_V�4�0)F���c���3 ��F`���R���˰�:�,sj�ZX��-r~��,C9`����0K�������z��:�m�Y,��V\˗�u�!�.?'7�E�N$o�`]���\	 �k^�PZ���~h���$S
nZ����5_Tγ�>�$6�*+�@�޻i��T�^��c�LЧ��@Ym���
�}V�C��*�>d˨*��E�r���|�3Բ�6)w�˷�%[�~7�Wi��ҝw�^Q���Ko��!1i7V"[l^ǬMF3�T�%�JV�%�z{�ËX�'.�
o`:pk/�T���fx.�z��<��{^�nr�*�nY���w������u�W{�iE�7?u�k��>��e���j � PCM��A���x�͹ܺ      .      x������ � �      /   M   x�3��������&�Z�_Z���i�Y�eL�O.�M�+)�՚@�Ӌ22����P�����"�P� A�Z      0   t   x�3��!׊�܂�T�T(]��\F�FF��f��F
FV��V��(b�V@dl��Z\��X�Y���0"��Ѐ�M����������)�g^qIfIiIf~^1g&�5lZ� `-�      1   �  x����n�0Eל���0):튶�.�M� ��8!"QI���%)K�eK���a�^�$g��X	~���^eW�6�d��a���<�{ֿ�3�93�As�DWZ��5��BYTg�jtA6����;f�V�X8���q��	��W�+�b�qq�������9_��UeѹPhͶ	�=�(��42�*Ot7C�ݑ�?�f����L�������oO "_���~�L0�W��o-+��|ٴ�b�:� ��
�[e���j�~�	�� �Z��&�Х�| V��ּ�uq�)?���'�7*�{�,�GL�'cc��2��DF���Q���(��d�o_��Q�^=*I �d�N9���*N:��
/�/Aܐ۩���]fD�(�ڴ�]�*z��_� =ve�p�U\�U�r�u��Q��E�}Ym�u~S?Y��R���{��!X��\y��&��(��r��>i�M�:O�m<>YU�-�d �b:����rEF�j�����a���ɰ?�F�;F=�#ɚ$=�1y�Sޫ@�9��t�u=�g��MaZf���p0 =�m���)�W��p5܅.��A��cto����;����f����o����R���~$�v�U���+�̪���d�9;�;pz<�e��~,���8=%����f��� ���      q   �   x���1�@D��>E.d{vɲ � .C��H��"E
Y��OSH������X��{w���C&��L��A��]��d�t���M��	��֎�L�X[������GX�(ҁ����4n���3�)k�      3      x������ � �      4   �   x�E�Kn�@C��a��J3w�&@�"�dQ'�/e��ݣAhHZ�����ښXP��2�Lr
�s��\s���]�l���wrݞ��M�h3�6g]6W�cb���'m�l% ����hr�y
)M㔳�S���
�x�es�j�t�j�Z5'kN�q�vQn�㳊��sT�&ʃ�2��p~2�@�����羿O�69G�>c���}�S���ߙ�|�ÕyL��T�"?��.D�d)+��|Űb�f��%"��8�<      5   "   x�3�,�LIMJ,R�M�+�2�,�/�0c���� ��		      6   T  x�}�Kn�0���S��d+z-���&��eC��L�&�j��t�=�/V�P�%�(lhH���Ù!�
����d^�@I�Y[�*?_�)�t�5Jx.����y��E��N�N	h�Z���z�M��8t�� �wB4������������z�hQ���.N�V�Z��r3��VE/B1w�m%���3v�4'f�|�o�Ѵ����3��+Ӓ�${g��\E�[س������
�|��na��R�+���zpk:n~�@V� %��&���˯����Iݎ��&�]'	J�r��y�K�����z�I���Ʋ��sC��� >�����Q�g��n���7K����h��I�;�gJh~�J��̷e�&l�W�e�Ƈ�D�"�#�4f������7͘�i���/\��_dR�� ��_$1��-`o���~p�h��� ���z�]S���*��0Vt&��WIJ�N3׉��V#�c��Zn8��T�2���-�ڳ���qw��`|	�t��rI�E� B��s5E]��,���x���i<N"�vvӌ(�m����~�c���O�a�C̯�����w�₢��~Z�V�/�[      7     x��X�R�0�-s��»\U*JTt�-`����v�$â�Xײ�	3�}`�rE��L��G=FOF]F3�jҏ'�@3�i <�q����h&G�gJ��T�g@y�����tp~��W�@\�/x�O���R�`\~�IO�,nH�,�0��/dk:XZ ���_p�O�b�;�a�R�=��mƱ�+zx�ఌ����O�8YiJX�ڂ�[[��ژAO���B��`! ^%g��U�O��9(�Cr�Қ���[$���q�D�V=7�T;8��Y �@��ڙݞ�2��ͯ��ܭִ�5 �Zʭ5*(�QK�L�;kN��j�e[���9,#�����մ`�����8�7���((}��T��2�f4�[[�1v���%���譓��%�,`y�&���-��Z' ����L�}���EyY&YNp��N �4x�P�A����H�ھ6'���e�i`|i�?���0:���t3� E:yU��us�#b����19�䰰�pTis�2�7�:�O��U�;u`ws�)���{n^��9�,pJ�3RJ����$�V��#VJ�'2�8�t����ߡ����R�h��
��e;q��IS2�(|ög���߰�jī��xn&=���r���E��$����@̹�X]3e7N�t����G<���*��57���݆f�@���z�+�E��\-8,V��ךF�8`�Hċ�
�] �Z3W�.�k�r���97���(��C�*$rX�O5'�ܟf���U���Zn,W��s�0W����Q�\���iHsU�稜�U���Z~�+y�h�\�.s%�k�+y�\�\I�[��⩌:��C��Ѓy�G`�q�g���F�x�$b�;�)���Ý�a8%b�{W���K�}��(K���ʆ	��W�{��WH ���B�q�jlLTHp��G��8E�J��,����y�V#��y�V��Bt=N�� �xw���L���l�P(]��i^:�n>a�}�脒m�
�a%[��-$���x\'J�3s9�����>�|�����,����Z      8      x������ � �      9   G   x�3�t,(����OI�)��	-N-�4�2"Z���1VQ���XEͰ��c��*j��؅q�٘+F��� ��]W      :      x������ � �      ;   �   x���1
�0��:�/�"ɱ��,]�P(��\�����e��!����幽���:On��cd�0u<���1j���34�Z��)ڻ�MZѕ����gu�dS,0�G�q�4jmS6zm��C�Ʀ)�$�U5ɮ��<&-�2Z�+�m�e��e�nZ��#gf-�2Z1.�m�e��[�M�. ����      s   h   x�3�(M��LN<����|CN##C]s]Cc#+K+Clbf���\F�z�8c�@(c�*c����2G�1GȘ�ʘ!dLQeL2&�2&cTc�L� ��K�      w      x������ � �      <   m   x���� �����������Q*aX0(��|�>vp�DN���)�s���,fѵ�V�����g�������������������{�O�<����*�E�~���t��      =   %   x�3�4�4�2�4�4�2�4�4�2�4�4����� 5w      >   W   x�3�LL����,OM�4202�50�50V04�20�20�&�e�YZ�ZD�c��������p�&��Ydh�`hiedle`�M�+F��� Ol,�      ?   N  x���MN�0�דS����]�!Vp 6S{���x�픖� ����p鏂�4�ҼO�of���L�d�D�Q�wޕ������G_��.R����� ��(s�7�J)r�L��%�v�Zsx�I?�ź�j�a�<��cs0��pD&�+���tf8Sx�YS��1��R��B  5ŘGI^Vd=^�%�
�?���%��_�)��^����Y[�
Ub��$%SX���,���~ɾg��&;������MF�IL�n[������VO�y]Yn�s�־��{��ۮ�5���<oZ�]zI~C��ل�ڴ7���'��>��_�tM�      @     x����n�0@��+X�%���1+PH	�QiU�
��$Np����PZ	�{��,�ƣ�A<b��:�	K��|d?��#S�"bT�F�Ud4!jB��`���ϡ�4h$��]��Š#�1�#�Sm8�����ik��(a[];.�<A�����X�#|9*&m�2�����r�z�g��?l2����^������g�1��*2����xw�UJ1�uS� @LP��4 ��
]+���@���v��j�%�6l�;��F_F9����˧��y{lM��t�im�Qlq�d��\(�����l|{��+�z��&�]��x���r���2���-ۺ����䛕6h?�A)���5�H��0��C�,A(<	6L6�RJPJ���86� �d`]UMbe�mJ�W}��i�[���EZ�h��PRv���v0�C�tu,��t���1�J�������^a�{����/�MW<$�_��m�r�ML���^�2�W��T*�?]J��      �   )   x�3�44�44 #.SN8��4�2�1M�aLC�=... W	      i      x������ � �     