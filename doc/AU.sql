PGDMP         6                 w            auction-jd2    10.5    10.5 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    62029    auction-jd2    DATABASE     �   CREATE DATABASE "auction-jd2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE "auction-jd2";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    62201    admin_communication    TABLE     
  CREATE TABLE public.admin_communication (
    id integer NOT NULL,
    theme character varying NOT NULL,
    user_from_id integer NOT NULL,
    text text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
 '   DROP TABLE public.admin_communication;
       public         postgres    false    3            �            1259    62199    admin_communication_id_seq    SEQUENCE     �   CREATE SEQUENCE public.admin_communication_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.admin_communication_id_seq;
       public       postgres    false    225    3            �           0    0    admin_communication_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.admin_communication_id_seq OWNED BY public.admin_communication.id;
            public       postgres    false    224            �            1259    62140    auction_duration    TABLE     �   CREATE TABLE public.auction_duration (
    id integer NOT NULL,
    day integer NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
 $   DROP TABLE public.auction_duration;
       public         postgres    false    3            �            1259    62138    auction_duration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auction_duration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auction_duration_id_seq;
       public       postgres    false    214    3            �           0    0    auction_duration_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auction_duration_id_seq OWNED BY public.auction_duration.id;
            public       postgres    false    213            �            1259    62188    auction_rule    TABLE       CREATE TABLE public.auction_rule (
    id integer NOT NULL,
    index character varying NOT NULL,
    theme character varying NOT NULL,
    text text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
     DROP TABLE public.auction_rule;
       public         postgres    false    3            �            1259    62186    auction_rule_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auction_rule_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.auction_rule_id_seq;
       public       postgres    false    223    3            �           0    0    auction_rule_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.auction_rule_id_seq OWNED BY public.auction_rule.id;
            public       postgres    false    222            �            1259    62150    bid    TABLE     $  CREATE TABLE public.bid (
    id integer NOT NULL,
    item_id integer NOT NULL,
    price_bid numeric NOT NULL,
    user_bid_id integer NOT NULL,
    status_bid character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
    DROP TABLE public.bid;
       public         postgres    false    3            �            1259    62148 
   bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 !   DROP SEQUENCE public.bid_id_seq;
       public       postgres    false    3    216            �           0    0 
   bid_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE public.bid_id_seq OWNED BY public.bid.id;
            public       postgres    false    215            �            1259    62077    category    TABLE     �   CREATE TABLE public.category (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
    DROP TABLE public.category;
       public         postgres    false    3            �            1259    62075    category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.category_id_seq;
       public       postgres    false    204    3            �           0    0    category_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.category_id_seq OWNED BY public.category.id;
            public       postgres    false    203            �            1259    62090    composition    TABLE     �   CREATE TABLE public.composition (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
    DROP TABLE public.composition;
       public         postgres    false    3            �            1259    62088    composition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.composition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.composition_id_seq;
       public       postgres    false    206    3            �           0    0    composition_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.composition_id_seq OWNED BY public.composition.id;
            public       postgres    false    205            �            1259    62064 	   condition    TABLE     �   CREATE TABLE public.condition (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
    DROP TABLE public.condition;
       public         postgres    false    3            �            1259    62062    condition_id_seq    SEQUENCE     �   CREATE SEQUENCE public.condition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.condition_id_seq;
       public       postgres    false    202    3            �           0    0    condition_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.condition_id_seq OWNED BY public.condition.id;
            public       postgres    false    201            �            1259    62175    country_origin    TABLE     �   CREATE TABLE public.country_origin (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
 "   DROP TABLE public.country_origin;
       public         postgres    false    3            �            1259    62173    country_origin_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_origin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.country_origin_id_seq;
       public       postgres    false    3    221            �           0    0    country_origin_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.country_origin_id_seq OWNED BY public.country_origin.id;
            public       postgres    false    220            �            1259    62212    deferred_bid    TABLE     -  CREATE TABLE public.deferred_bid (
    id integer NOT NULL,
    item_id integer NOT NULL,
    price_bid numeric NOT NULL,
    user_bid_id integer NOT NULL,
    status_bid character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
     DROP TABLE public.deferred_bid;
       public         postgres    false    3            �            1259    62210    deferred_bid_id_seq    SEQUENCE     �   CREATE SEQUENCE public.deferred_bid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.deferred_bid_id_seq;
       public       postgres    false    227    3            �           0    0    deferred_bid_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.deferred_bid_id_seq OWNED BY public.deferred_bid.id;
            public       postgres    false    226            �            1259    62129    feedback    TABLE     �  CREATE TABLE public.feedback (
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
    DROP TABLE public.feedback;
       public         postgres    false    3            �            1259    62127    feedback_id_seq    SEQUENCE     �   CREATE SEQUENCE public.feedback_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.feedback_id_seq;
       public       postgres    false    3    212            �           0    0    feedback_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.feedback_id_seq OWNED BY public.feedback.id;
            public       postgres    false    211            �            1259    62045    item    TABLE     v  CREATE TABLE public.item (
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
    DROP TABLE public.item;
       public         postgres    false    3            �            1259    62656    item_2_payment_method    TABLE     t   CREATE TABLE public.item_2_payment_method (
    payment_method_id integer NOT NULL,
    item_id integer NOT NULL
);
 )   DROP TABLE public.item_2_payment_method;
       public         postgres    false    3            �            1259    62643    item_2_shipping_method    TABLE     v   CREATE TABLE public.item_2_shipping_method (
    shipping_method_id integer NOT NULL,
    item_id integer NOT NULL
);
 *   DROP TABLE public.item_2_shipping_method;
       public         postgres    false    3            �            1259    62043    item_id_seq    SEQUENCE     �   CREATE SEQUENCE public.item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 "   DROP SEQUENCE public.item_id_seq;
       public       postgres    false    3    199            �           0    0    item_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE public.item_id_seq OWNED BY public.item.id;
            public       postgres    false    198            �            1259    62164    message    TABLE     ?  CREATE TABLE public.message (
    id integer NOT NULL,
    item_id integer NOT NULL,
    theme character varying NOT NULL,
    user_from_id integer NOT NULL,
    user_whom_id integer NOT NULL,
    text text NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
    DROP TABLE public.message;
       public         postgres    false    3            �            1259    62162    message_id_seq    SEQUENCE     �   CREATE SEQUENCE public.message_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.message_id_seq;
       public       postgres    false    219    3            �           0    0    message_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.message_id_seq OWNED BY public.message.id;
            public       postgres    false    218            �            1259    62116    payment_method    TABLE     �   CREATE TABLE public.payment_method (
    id integer NOT NULL,
    name character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
 "   DROP TABLE public.payment_method;
       public         postgres    false    3            �            1259    62114    payment_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.payment_method_id_seq;
       public       postgres    false    3    210            �           0    0    payment_method_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.payment_method_id_seq OWNED BY public.payment_method.id;
            public       postgres    false    209            �            1259    62054    personal_data    TABLE     �  CREATE TABLE public.personal_data (
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
 !   DROP TABLE public.personal_data;
       public         postgres    false    3            �            1259    62103    shipping_method    TABLE       CREATE TABLE public.shipping_method (
    id integer NOT NULL,
    name character varying NOT NULL,
    delivery_time character varying NOT NULL,
    cost numeric NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
 #   DROP TABLE public.shipping_method;
       public         postgres    false    3            �            1259    62101    shipping_method_id_seq    SEQUENCE     �   CREATE SEQUENCE public.shipping_method_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.shipping_method_id_seq;
       public       postgres    false    3    208            �           0    0    shipping_method_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.shipping_method_id_seq OWNED BY public.shipping_method.id;
            public       postgres    false    207            �            1259    62223 
   step_block    TABLE     V  CREATE TABLE public.step_block (
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
    DROP TABLE public.step_block;
       public         postgres    false    3            �            1259    62221    step_block_id_seq    SEQUENCE     �   CREATE SEQUENCE public.step_block_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.step_block_id_seq;
       public       postgres    false    229    3            �           0    0    step_block_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.step_block_id_seq OWNED BY public.step_block.id;
            public       postgres    false    228            �            1259    62159    user_2_item    TABLE     `   CREATE TABLE public.user_2_item (
    item_id integer NOT NULL,
    user_id integer NOT NULL
);
    DROP TABLE public.user_2_item;
       public         postgres    false    3            �            1259    62032    user_account    TABLE       CREATE TABLE public.user_account (
    id integer NOT NULL,
    role character varying NOT NULL,
    email character varying NOT NULL,
    password character varying NOT NULL,
    created timestamp without time zone NOT NULL,
    updated timestamp without time zone NOT NULL
);
     DROP TABLE public.user_account;
       public         postgres    false    3            �            1259    62030    user_account_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_account_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.user_account_id_seq;
       public       postgres    false    3    197            �           0    0    user_account_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.user_account_id_seq OWNED BY public.user_account.id;
            public       postgres    false    196            �
           2604    62204    admin_communication id    DEFAULT     �   ALTER TABLE ONLY public.admin_communication ALTER COLUMN id SET DEFAULT nextval('public.admin_communication_id_seq'::regclass);
 E   ALTER TABLE public.admin_communication ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    224    225            �
           2604    62143    auction_duration id    DEFAULT     z   ALTER TABLE ONLY public.auction_duration ALTER COLUMN id SET DEFAULT nextval('public.auction_duration_id_seq'::regclass);
 B   ALTER TABLE public.auction_duration ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    214    214            �
           2604    62191    auction_rule id    DEFAULT     r   ALTER TABLE ONLY public.auction_rule ALTER COLUMN id SET DEFAULT nextval('public.auction_rule_id_seq'::regclass);
 >   ALTER TABLE public.auction_rule ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    222    223    223            �
           2604    62153    bid id    DEFAULT     `   ALTER TABLE ONLY public.bid ALTER COLUMN id SET DEFAULT nextval('public.bid_id_seq'::regclass);
 5   ALTER TABLE public.bid ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    215    216    216            �
           2604    62080    category id    DEFAULT     j   ALTER TABLE ONLY public.category ALTER COLUMN id SET DEFAULT nextval('public.category_id_seq'::regclass);
 :   ALTER TABLE public.category ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            �
           2604    62093    composition id    DEFAULT     p   ALTER TABLE ONLY public.composition ALTER COLUMN id SET DEFAULT nextval('public.composition_id_seq'::regclass);
 =   ALTER TABLE public.composition ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            �
           2604    62067    condition id    DEFAULT     l   ALTER TABLE ONLY public.condition ALTER COLUMN id SET DEFAULT nextval('public.condition_id_seq'::regclass);
 ;   ALTER TABLE public.condition ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            �
           2604    62178    country_origin id    DEFAULT     v   ALTER TABLE ONLY public.country_origin ALTER COLUMN id SET DEFAULT nextval('public.country_origin_id_seq'::regclass);
 @   ALTER TABLE public.country_origin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            �
           2604    62215    deferred_bid id    DEFAULT     r   ALTER TABLE ONLY public.deferred_bid ALTER COLUMN id SET DEFAULT nextval('public.deferred_bid_id_seq'::regclass);
 >   ALTER TABLE public.deferred_bid ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    226    227            �
           2604    62132    feedback id    DEFAULT     j   ALTER TABLE ONLY public.feedback ALTER COLUMN id SET DEFAULT nextval('public.feedback_id_seq'::regclass);
 :   ALTER TABLE public.feedback ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    212    212            �
           2604    62048    item id    DEFAULT     b   ALTER TABLE ONLY public.item ALTER COLUMN id SET DEFAULT nextval('public.item_id_seq'::regclass);
 6   ALTER TABLE public.item ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    62167 
   message id    DEFAULT     h   ALTER TABLE ONLY public.message ALTER COLUMN id SET DEFAULT nextval('public.message_id_seq'::regclass);
 9   ALTER TABLE public.message ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            �
           2604    62119    payment_method id    DEFAULT     v   ALTER TABLE ONLY public.payment_method ALTER COLUMN id SET DEFAULT nextval('public.payment_method_id_seq'::regclass);
 @   ALTER TABLE public.payment_method ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    209    210            �
           2604    62106    shipping_method id    DEFAULT     x   ALTER TABLE ONLY public.shipping_method ALTER COLUMN id SET DEFAULT nextval('public.shipping_method_id_seq'::regclass);
 A   ALTER TABLE public.shipping_method ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    208    208            �
           2604    62226    step_block id    DEFAULT     n   ALTER TABLE ONLY public.step_block ALTER COLUMN id SET DEFAULT nextval('public.step_block_id_seq'::regclass);
 <   ALTER TABLE public.step_block ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    229    228    229            �
           2604    62035    user_account id    DEFAULT     r   ALTER TABLE ONLY public.user_account ALTER COLUMN id SET DEFAULT nextval('public.user_account_id_seq'::regclass);
 >   ALTER TABLE public.user_account ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197            �          0    62201    admin_communication 
   TABLE DATA                     public       postgres    false    225   -�       �          0    62140    auction_duration 
   TABLE DATA                     public       postgres    false    214   G�       �          0    62188    auction_rule 
   TABLE DATA                     public       postgres    false    223   �       �          0    62150    bid 
   TABLE DATA                     public       postgres    false    216   ��       �          0    62077    category 
   TABLE DATA                     public       postgres    false    204   R�       �          0    62090    composition 
   TABLE DATA                     public       postgres    false    206   Ͻ       �          0    62064 	   condition 
   TABLE DATA                     public       postgres    false    202   X�       �          0    62175    country_origin 
   TABLE DATA                     public       postgres    false    221   ׾       �          0    62212    deferred_bid 
   TABLE DATA                     public       postgres    false    227   ]�       �          0    62129    feedback 
   TABLE DATA                     public       postgres    false    212   w�       �          0    62045    item 
   TABLE DATA                     public       postgres    false    199   _�       �          0    62656    item_2_payment_method 
   TABLE DATA                     public       postgres    false    231   C�       �          0    62643    item_2_shipping_method 
   TABLE DATA                     public       postgres    false    230   ��       �          0    62164    message 
   TABLE DATA                     public       postgres    false    219   J�       �          0    62116    payment_method 
   TABLE DATA                     public       postgres    false    210   d�       �          0    62054    personal_data 
   TABLE DATA                     public       postgres    false    200   ,�       �          0    62103    shipping_method 
   TABLE DATA                     public       postgres    false    208   ��       �          0    62223 
   step_block 
   TABLE DATA                     public       postgres    false    229   ��       �          0    62159    user_2_item 
   TABLE DATA                     public       postgres    false    217   ��       �          0    62032    user_account 
   TABLE DATA                     public       postgres    false    197   ��       �           0    0    admin_communication_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.admin_communication_id_seq', 1, false);
            public       postgres    false    224            �           0    0    auction_duration_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auction_duration_id_seq', 3, true);
            public       postgres    false    213            �           0    0    auction_rule_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.auction_rule_id_seq', 2, true);
            public       postgres    false    222            �           0    0 
   bid_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('public.bid_id_seq', 3, true);
            public       postgres    false    215            �           0    0    category_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.category_id_seq', 1, true);
            public       postgres    false    203                        0    0    composition_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.composition_id_seq', 1, true);
            public       postgres    false    205                       0    0    condition_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.condition_id_seq', 1, true);
            public       postgres    false    201                       0    0    country_origin_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.country_origin_id_seq', 1, true);
            public       postgres    false    220                       0    0    deferred_bid_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.deferred_bid_id_seq', 1, false);
            public       postgres    false    226                       0    0    feedback_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.feedback_id_seq', 18, true);
            public       postgres    false    211                       0    0    item_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('public.item_id_seq', 23, true);
            public       postgres    false    198                       0    0    message_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.message_id_seq', 3, true);
            public       postgres    false    218                       0    0    payment_method_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.payment_method_id_seq', 4, true);
            public       postgres    false    209                       0    0    shipping_method_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.shipping_method_id_seq', 3, true);
            public       postgres    false    207            	           0    0    step_block_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.step_block_id_seq', 1, false);
            public       postgres    false    228            
           0    0    user_account_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.user_account_id_seq', 14, true);
            public       postgres    false    196            '           2606    62209 *   admin_communication admin_communication_pk 
   CONSTRAINT     h   ALTER TABLE ONLY public.admin_communication
    ADD CONSTRAINT admin_communication_pk PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.admin_communication DROP CONSTRAINT admin_communication_pk;
       public         postgres    false    225                       2606    62147 )   auction_duration auction_duration_day_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.auction_duration
    ADD CONSTRAINT auction_duration_day_key UNIQUE (day);
 S   ALTER TABLE ONLY public.auction_duration DROP CONSTRAINT auction_duration_day_key;
       public         postgres    false    214                       2606    62145 $   auction_duration auction_duration_pk 
   CONSTRAINT     b   ALTER TABLE ONLY public.auction_duration
    ADD CONSTRAINT auction_duration_pk PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auction_duration DROP CONSTRAINT auction_duration_pk;
       public         postgres    false    214            #           2606    62198 #   auction_rule auction_rule_index_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auction_rule
    ADD CONSTRAINT auction_rule_index_key UNIQUE (index);
 M   ALTER TABLE ONLY public.auction_rule DROP CONSTRAINT auction_rule_index_key;
       public         postgres    false    223            %           2606    62196    auction_rule auction_rule_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.auction_rule
    ADD CONSTRAINT auction_rule_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.auction_rule DROP CONSTRAINT auction_rule_pk;
       public         postgres    false    223                       2606    62158 
   bid bid_pk 
   CONSTRAINT     H   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_pk PRIMARY KEY (id);
 4   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_pk;
       public         postgres    false    216                       2606    62087    category category_name_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_name_key UNIQUE (name);
 D   ALTER TABLE ONLY public.category DROP CONSTRAINT category_name_key;
       public         postgres    false    204                       2606    62085    category category_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.category
    ADD CONSTRAINT category_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.category DROP CONSTRAINT category_pk;
       public         postgres    false    204            	           2606    62100     composition composition_name_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.composition
    ADD CONSTRAINT composition_name_key UNIQUE (name);
 J   ALTER TABLE ONLY public.composition DROP CONSTRAINT composition_name_key;
       public         postgres    false    206                       2606    62098    composition composition_pk 
   CONSTRAINT     X   ALTER TABLE ONLY public.composition
    ADD CONSTRAINT composition_pk PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.composition DROP CONSTRAINT composition_pk;
       public         postgres    false    206                       2606    62074    condition condition_name_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.condition
    ADD CONSTRAINT condition_name_key UNIQUE (name);
 F   ALTER TABLE ONLY public.condition DROP CONSTRAINT condition_name_key;
       public         postgres    false    202                       2606    62072    condition condition_pk 
   CONSTRAINT     T   ALTER TABLE ONLY public.condition
    ADD CONSTRAINT condition_pk PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.condition DROP CONSTRAINT condition_pk;
       public         postgres    false    202                       2606    62185 &   country_origin country_origin_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.country_origin
    ADD CONSTRAINT country_origin_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.country_origin DROP CONSTRAINT country_origin_name_key;
       public         postgres    false    221            !           2606    62183     country_origin country_origin_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.country_origin
    ADD CONSTRAINT country_origin_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.country_origin DROP CONSTRAINT country_origin_pk;
       public         postgres    false    221            )           2606    62220    deferred_bid deferred_bid_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.deferred_bid
    ADD CONSTRAINT deferred_bid_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.deferred_bid DROP CONSTRAINT deferred_bid_pk;
       public         postgres    false    227                       2606    62137    feedback feedback_pk 
   CONSTRAINT     R   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pk PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_pk;
       public         postgres    false    212            �
           2606    62053    item item_pk 
   CONSTRAINT     J   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_pk PRIMARY KEY (id);
 6   ALTER TABLE ONLY public.item DROP CONSTRAINT item_pk;
       public         postgres    false    199                       2606    62172    message message_pk 
   CONSTRAINT     P   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_pk PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.message DROP CONSTRAINT message_pk;
       public         postgres    false    219                       2606    62126 &   payment_method payment_method_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_name_key UNIQUE (name);
 P   ALTER TABLE ONLY public.payment_method DROP CONSTRAINT payment_method_name_key;
       public         postgres    false    210                       2606    62124     payment_method payment_method_pk 
   CONSTRAINT     ^   ALTER TABLE ONLY public.payment_method
    ADD CONSTRAINT payment_method_pk PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.payment_method DROP CONSTRAINT payment_method_pk;
       public         postgres    false    210            �
           2606    62061    personal_data personal_data_pk 
   CONSTRAINT     \   ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_pk PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.personal_data DROP CONSTRAINT personal_data_pk;
       public         postgres    false    200                       2606    62113 (   shipping_method shipping_method_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT shipping_method_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT shipping_method_name_key;
       public         postgres    false    208                       2606    62111 "   shipping_method shipping_method_pk 
   CONSTRAINT     `   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT shipping_method_pk PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT shipping_method_pk;
       public         postgres    false    208            +           2606    62233    step_block step_block_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.step_block
    ADD CONSTRAINT step_block_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.step_block DROP CONSTRAINT step_block_name_key;
       public         postgres    false    229            -           2606    62231    step_block step_block_pk 
   CONSTRAINT     V   ALTER TABLE ONLY public.step_block
    ADD CONSTRAINT step_block_pk PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.step_block DROP CONSTRAINT step_block_pk;
       public         postgres    false    229            �
           2606    62042 #   user_account user_account_email_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_email_key UNIQUE (email);
 M   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_email_key;
       public         postgres    false    197            �
           2606    62040    user_account user_account_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.user_account
    ADD CONSTRAINT user_account_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.user_account DROP CONSTRAINT user_account_pk;
       public         postgres    false    197            ?           2606    62319 +   admin_communication admin_communication_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.admin_communication
    ADD CONSTRAINT admin_communication_fk0 FOREIGN KEY (user_from_id) REFERENCES public.user_account(id);
 U   ALTER TABLE ONLY public.admin_communication DROP CONSTRAINT admin_communication_fk0;
       public       postgres    false    197    225    2811            8           2606    62284    bid bid_fk0    FK CONSTRAINT     i   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);
 5   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_fk0;
       public       postgres    false    2813    216    199            9           2606    62289    bid bid_fk1    FK CONSTRAINT     u   ALTER TABLE ONLY public.bid
    ADD CONSTRAINT bid_fk1 FOREIGN KEY (user_bid_id) REFERENCES public.user_account(id);
 5   ALTER TABLE ONLY public.bid DROP CONSTRAINT bid_fk1;
       public       postgres    false    197    2811    216            @           2606    62324    deferred_bid deferred_bid_fk0    FK CONSTRAINT     {   ALTER TABLE ONLY public.deferred_bid
    ADD CONSTRAINT deferred_bid_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);
 G   ALTER TABLE ONLY public.deferred_bid DROP CONSTRAINT deferred_bid_fk0;
       public       postgres    false    2813    199    227            A           2606    62329    deferred_bid deferred_bid_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.deferred_bid
    ADD CONSTRAINT deferred_bid_fk1 FOREIGN KEY (user_bid_id) REFERENCES public.user_account(id);
 G   ALTER TABLE ONLY public.deferred_bid DROP CONSTRAINT deferred_bid_fk1;
       public       postgres    false    197    227    2811            5           2606    62269    feedback feedback_fk0    FK CONSTRAINT     s   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);
 ?   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_fk0;
       public       postgres    false    199    2813    212            6           2606    62274    feedback feedback_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_fk1 FOREIGN KEY (user_from_id) REFERENCES public.user_account(id);
 ?   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_fk1;
       public       postgres    false    2811    212    197            7           2606    62279    feedback feedback_fk2    FK CONSTRAINT     �   ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_fk2 FOREIGN KEY (user_whom_id) REFERENCES public.user_account(id);
 ?   ALTER TABLE ONLY public.feedback DROP CONSTRAINT feedback_fk2;
       public       postgres    false    197    212    2811            D           2606    62659 /   item_2_payment_method item_2_payment_method_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_2_payment_method
    ADD CONSTRAINT item_2_payment_method_fk0 FOREIGN KEY (payment_method_id) REFERENCES public.payment_method(id);
 Y   ALTER TABLE ONLY public.item_2_payment_method DROP CONSTRAINT item_2_payment_method_fk0;
       public       postgres    false    2835    231    210            E           2606    62664 /   item_2_payment_method item_2_payment_method_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_2_payment_method
    ADD CONSTRAINT item_2_payment_method_fk1 FOREIGN KEY (item_id) REFERENCES public.item(id);
 Y   ALTER TABLE ONLY public.item_2_payment_method DROP CONSTRAINT item_2_payment_method_fk1;
       public       postgres    false    231    2813    199            B           2606    62646 1   item_2_shipping_method item_2_shipping_method_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_2_shipping_method
    ADD CONSTRAINT item_2_shipping_method_fk0 FOREIGN KEY (shipping_method_id) REFERENCES public.shipping_method(id);
 [   ALTER TABLE ONLY public.item_2_shipping_method DROP CONSTRAINT item_2_shipping_method_fk0;
       public       postgres    false    230    2831    208            C           2606    62651 1   item_2_shipping_method item_2_shipping_method_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.item_2_shipping_method
    ADD CONSTRAINT item_2_shipping_method_fk1 FOREIGN KEY (item_id) REFERENCES public.item(id);
 [   ALTER TABLE ONLY public.item_2_shipping_method DROP CONSTRAINT item_2_shipping_method_fk1;
       public       postgres    false    230    2813    199            .           2606    62234    item item_fk0    FK CONSTRAINT     {   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk0 FOREIGN KEY (duration_id) REFERENCES public.auction_duration(id);
 7   ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk0;
       public       postgres    false    2841    199    214            /           2606    62239    item item_fk1    FK CONSTRAINT     s   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk1 FOREIGN KEY (category_id) REFERENCES public.category(id);
 7   ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk1;
       public       postgres    false    199    204    2823            0           2606    62244    item item_fk2    FK CONSTRAINT        ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk2 FOREIGN KEY (country_origin_id) REFERENCES public.country_origin(id);
 7   ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk2;
       public       postgres    false    2849    199    221            1           2606    62249    item item_fk3    FK CONSTRAINT     u   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk3 FOREIGN KEY (condition_id) REFERENCES public.condition(id);
 7   ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk3;
       public       postgres    false    2819    202    199            2           2606    62254    item item_fk4    FK CONSTRAINT     y   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk4 FOREIGN KEY (composition_id) REFERENCES public.composition(id);
 7   ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk4;
       public       postgres    false    2827    206    199            3           2606    62259    item item_fk5    FK CONSTRAINT     u   ALTER TABLE ONLY public.item
    ADD CONSTRAINT item_fk5 FOREIGN KEY (seller_id) REFERENCES public.user_account(id);
 7   ALTER TABLE ONLY public.item DROP CONSTRAINT item_fk5;
       public       postgres    false    2811    199    197            <           2606    62304    message message_fk0    FK CONSTRAINT     q   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);
 =   ALTER TABLE ONLY public.message DROP CONSTRAINT message_fk0;
       public       postgres    false    2813    199    219            =           2606    62309    message message_fk1    FK CONSTRAINT     ~   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_fk1 FOREIGN KEY (user_from_id) REFERENCES public.user_account(id);
 =   ALTER TABLE ONLY public.message DROP CONSTRAINT message_fk1;
       public       postgres    false    219    197    2811            >           2606    62314    message message_fk2    FK CONSTRAINT     ~   ALTER TABLE ONLY public.message
    ADD CONSTRAINT message_fk2 FOREIGN KEY (user_whom_id) REFERENCES public.user_account(id);
 =   ALTER TABLE ONLY public.message DROP CONSTRAINT message_fk2;
       public       postgres    false    2811    219    197            4           2606    62264    personal_data personal_data_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.personal_data
    ADD CONSTRAINT personal_data_fk0 FOREIGN KEY (id) REFERENCES public.user_account(id);
 I   ALTER TABLE ONLY public.personal_data DROP CONSTRAINT personal_data_fk0;
       public       postgres    false    200    197    2811            :           2606    62294    user_2_item user_2_item_fk0    FK CONSTRAINT     y   ALTER TABLE ONLY public.user_2_item
    ADD CONSTRAINT user_2_item_fk0 FOREIGN KEY (item_id) REFERENCES public.item(id);
 E   ALTER TABLE ONLY public.user_2_item DROP CONSTRAINT user_2_item_fk0;
       public       postgres    false    199    217    2813            ;           2606    62299    user_2_item user_2_item_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public.user_2_item
    ADD CONSTRAINT user_2_item_fk1 FOREIGN KEY (user_id) REFERENCES public.user_account(id);
 E   ALTER TABLE ONLY public.user_2_item DROP CONSTRAINT user_2_item_fk1;
       public       postgres    false    2811    197    217            �   
   x���          �   �   x���v
Q���W((M��L�K,M.��ϋO)-J142StR+u��RKR��҂CS!��'�5XA�PG�ԍ-uu���L����MM��HiZsyR�F@G�b��\����+ RTt�����6��L�,��*t rjf      �   �   x�}�A
�0D����T�!�Ԯ
u!����F�Ѐ&����@Wo�7LU7壅�nﰸ~�n�R��qB$GR����q���`PXܥ[Fbx��ϲ�(%r��7!�_.Zu�ژD���M;�V�Q?H���?,+��,���S?��7J      �   �   x���=� Ew���D	�g������I�]�
IM���/خu�tϻ��u}{�u���_rA��I��4b=�M.b�=Z-6O{��d���&&#���bx^�����&@q#��]�:q����RLR�)��hr��8��s����}��]9��\6�����&�o��a�      �   m   x���v
Q���W((M��L�KN,IM�/�T��L�Q�K�M�QH.J���) ��B��O�k������zr~f�:�620��50�50S02�25�2��3�4�'�i��� B�"A      �   y   x���v
Q���W((M��L�K��-�/�,���S��L�Q�K�M�QH.JM,IrKR@M�0G�P�`C��Ԓ�u ����R��P��L��������L�������������5 !�$      �   o   x���v
Q���W((M��L�K��K�,���S��L�Q�K�M�QH.JM,IrKR@M�0G�P�`C����u md`h�k`�k`�`d`ej`el�g`h�OJӚ�� v�"�      �   v   x���v
Q���W((M��L�K�/�+)���/�L��S��L�Q�K�M�QH.JM,IrKR@M�0G�P�`Cu�ԜĢ�bu ����R��P��L�����L�LL�IiZsqq ,�%�      �   
   x���          �   �   x�Ր���@�{�b:5Y������� 1���\F�(�Y���.�M����L�����t�]lv��vk���J�?!�\]`L�Xe��Z4��4w+_N5U�դrKM͠-Ik�ϙ�
V��9c�ZZ`���H�k���bA���a��/�0���g ���>��\�S.����ɏHx����S4���/z@��|<�����0	���E|����Fl��      �   �  x��V�o�H~����pR�
�.��{�6��l��^��5,����������ڧ{���2�3����|�i�,!��s�w�m�ie+v����N(���-�ꫨДw�_�|�rٖ���^���x+6�<��%��j�R�rS������Y���͏�r�7��[L �[!�r�]�������D����{��g� �w�V��/��,�e���@	���࣬��벺:�L%�JP�#�gZ�]�2�L���q�8�+�9%E�:�`�idBe\�U�vX�<wr҇�	A^ûe�p�߃�?p�Ui����cYe%�BTVm�����QT��0��B�;.Kі���{ٴF�1�|�?�AU��<���nx�Kcĺz��(|��g=��0�a<>�~|�d~�� JP��l���N�c�)��a�	��� f�nz=�}���L#'V`�sVd�B���kS5�D��e�j���������ľ)�NVxN���v9
8���G��8�?�h�70 �򬅮��V�fp�,�[�����r�w�������ަ\oq�ӿ`��!_2F��L�UƸx�� ���ȄE�J��ǟ�1��0	V�ٔB��)Z>��i0��Ə��mD�1۱���LsN�#��s�Q��p�Z5	�T�\e�M-�k^���h,���0��U�"��Eu>!�Rxח�/��7������Dl��"^u���[!wH�~�3��EZn��K�u��kL���]���=���xM-�hY�6��c���I�I�S�g���W`�'a
Vn?����� Q`$��,P�6�'�}�b�G�Gu�}R*�%a��Z��0זj�z���0U&�P�s�9&����٤��k�Y�f�Q�0�">��t	��N
&�>�q �4\DA�t�7�O&�2����e�)��~�%�P${��N��ػ��C�e���
>���d���Փ9Lg~<I_���k���#�+z;����,�'��#�tt�u�3k��'��9sM'ӹi� �(.�I�rhkl@jG��VTw��i�&$�XO����W�u�\G��+v@�� �� V5��C����/��E-�|�\J{/*�&^�o�AJ�:��\����� �u�MrPR9�@9�����}o����c~�I�OB�Gí�Ր�H��=S`���y��qbsL��E�f���ڈ�_����j�B�3���h��I�!      �   w   x���v
Q���W((M��L��,I͍7�/H��M�+��M-��OQ�@��g��(�Uf�h*�9���+h�(�kZsyR�TC��
r��M5��� �Z�ĭ�7�VZ�#Z�l* �3�      �   p   x���v
Q���W((M��L��,I͍7�/��,(��K��M-��OQ�@��L�Q ��L�Ts�	uV�0�Q04״�򤲹�44׌�͵��{ia.(�,h�^#��\\ ���      �   
   x���          �   �   x���K�@F����SA�yh8��p!�IZ�*FP�E)�o�ˬ�}��8�'Yt�!N��s�6%���~zur��
��r��t�|K1Iu�c�6��[��E0�H�b�E1�.&.�@i�p�Dx�C�ވ�I�ʢ:RѮ�C�#:�]
S���+�=�\���m��)�Q|�U�O�w:�B�O^�`      �   t  x�͕MO�0��|�ހd4}k=�AB�hx�#�[Յ������ݘ1d�6k��/M���Η��
L�{�˟�8�;ml��d)�@/�<�[mR��=��6UN�OT���z 4Z9]��EUc�/�,O�����h�/AOx������ �f 3ɩDb�գ�z6���UgڒF��!2!��e�f.	�xxN��ڬ3�L@�x=�֠3��K� �]�α��MTz�	�� ɱ�>�$h@�EiV�k�(��n���V�Sf[ͮ��#��K�@2
�Г2V}��!+N-j��x�&:3����C�'M��I	�)��FN�q��Z�c�n�����m��NE�O:y	*B�0`��L��CިTE��t� �H"�      �   �   x����
�@ �O17t�Yw3�S��Һ��K-XIZ�۷Bݤ[�����U�n
�V��ǡ�G֜m]��i1���a`u ��bЦ�Os�[۵�[Ӻx7ek�ͣ�]1��t�Ms� �t��.ɐt�j\C�݌#%!R�8W�P4fH���N��br����:C���e�8RB0!��T2f���#�;����q�x��p,��
#6&މ=��ڑ�      �   
   x���          �   
   x���          �   �  x���]o�0���+|�VM]�4)IۭHi��lZvS9�4,����dSE������ym=z�9��7�����W�$aUh���0������,�c����1�UQ2[�C�U��ʣ&8?���7p���DE&NO��JUl�G3I⢄�:&����~>���p��Ks}>/��g�;���y�xUB�W�>7�	���� �$�$��C�K:�4��#u�晦���D����?�@o_���ߢ/��0�]�_��|C��w0׿��$?�ղ���cIȉ�%F&Zd����K�a0��J� vX�4F-�B���eafz!#2!��������*ݵ��?ɸ$b�#�7i82�"{R־��+����.i86�b+��m��s%�1H��k�����9��s�qq@��DR�Gt���Li�����צ�q���z�7�	!��㸍F @X:�     