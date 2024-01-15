PGDMP                       |            car_rent_db    16.0    16.0 m    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    17233    car_rent_db    DATABASE     �   CREATE DATABASE car_rent_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Kazakhstan.1251';
    DROP DATABASE car_rent_db;
                postgres    false            \           0    0    DATABASE car_rent_db    COMMENT     @   COMMENT ON DATABASE car_rent_db IS 'tursunbaev and nurpeisov
';
                   postgres    false    4955                        3079    17402    pgcrypto 	   EXTENSION     <   CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA public;
    DROP EXTENSION pgcrypto;
                   false            ]           0    0    EXTENSION pgcrypto    COMMENT     <   COMMENT ON EXTENSION pgcrypto IS 'cryptographic functions';
                        false    2            �            1259    17256    car_characteristics    TABLE     �   CREATE TABLE public.car_characteristics (
    car_characteristics_id integer NOT NULL,
    engine text,
    date_of_issue date,
    engine_capacity integer,
    fuel_type text,
    car_color text
);
 '   DROP TABLE public.car_characteristics;
       public         heap    postgres    false            �            1259    17255 .   car_characteristics_car_characteristics_id_seq    SEQUENCE     �   CREATE SEQUENCE public.car_characteristics_car_characteristics_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 E   DROP SEQUENCE public.car_characteristics_car_characteristics_id_seq;
       public          postgres    false    221            ^           0    0 .   car_characteristics_car_characteristics_id_seq    SEQUENCE OWNED BY     �   ALTER SEQUENCE public.car_characteristics_car_characteristics_id_seq OWNED BY public.car_characteristics.car_characteristics_id;
          public          postgres    false    220            �            1259    17279    cars_category    TABLE     |   CREATE TABLE public.cars_category (
    cars_category_id integer NOT NULL,
    rental_id integer,
    payment_id integer
);
 !   DROP TABLE public.cars_category;
       public         heap    postgres    false            �            1259    17278 "   cars_category_cars_category_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cars_category_cars_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.cars_category_cars_category_id_seq;
       public          postgres    false    227            _           0    0 "   cars_category_cars_category_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.cars_category_cars_category_id_seq OWNED BY public.cars_category.cars_category_id;
          public          postgres    false    226            �            1259    17301    clients    TABLE     �   CREATE TABLE public.clients (
    client_id integer NOT NULL,
    client_name text,
    client_surname text,
    client_number integer
);
    DROP TABLE public.clients;
       public         heap    postgres    false            �            1259    17300    clients_client_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_client_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.clients_client_id_seq;
       public          postgres    false    229            `           0    0    clients_client_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.clients_client_id_seq OWNED BY public.clients.client_id;
          public          postgres    false    228            �            1259    17329    discounts_n_promotions    TABLE     �   CREATE TABLE public.discounts_n_promotions (
    discount_id integer NOT NULL,
    discounts_in_percentage text,
    cars_category_id integer
);
 *   DROP TABLE public.discounts_n_promotions;
       public         heap    postgres    false            �            1259    17328 &   discounts_n_promotions_discount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.discounts_n_promotions_discount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.discounts_n_promotions_discount_id_seq;
       public          postgres    false    233            a           0    0 &   discounts_n_promotions_discount_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.discounts_n_promotions_discount_id_seq OWNED BY public.discounts_n_promotions.discount_id;
          public          postgres    false    232            �            1259    17235 	   employers    TABLE     �   CREATE TABLE public.employers (
    employer_id integer NOT NULL,
    employer_name text,
    employer_surname text,
    employer_position text,
    employer_salary text,
    employer_contact_information text
);
    DROP TABLE public.employers;
       public         heap    postgres    false            �            1259    17234    employers_employer_id_seq    SEQUENCE     �   CREATE SEQUENCE public.employers_employer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.employers_employer_id_seq;
       public          postgres    false    217            b           0    0    employers_employer_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.employers_employer_id_seq OWNED BY public.employers.employer_id;
          public          postgres    false    216            �            1259    17371    managers    TABLE     �   CREATE TABLE public.managers (
    manager_id integer NOT NULL,
    employer_id integer,
    manager_name text,
    manager_surname text
);
    DROP TABLE public.managers;
       public         heap    postgres    false            �            1259    17370    managers_manager_id_seq    SEQUENCE     �   CREATE SEQUENCE public.managers_manager_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.managers_manager_id_seq;
       public          postgres    false    239            c           0    0    managers_manager_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.managers_manager_id_seq OWNED BY public.managers.manager_id;
          public          postgres    false    238            �            1259    17244 	   mechanics    TABLE     ]   CREATE TABLE public.mechanics (
    mechanic_id integer NOT NULL,
    employer_id integer
);
    DROP TABLE public.mechanics;
       public         heap    postgres    false            �            1259    17243    mechanics_mechanic_id_seq    SEQUENCE     �   CREATE SEQUENCE public.mechanics_mechanic_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.mechanics_mechanic_id_seq;
       public          postgres    false    219            d           0    0    mechanics_mechanic_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.mechanics_mechanic_id_seq OWNED BY public.mechanics.mechanic_id;
          public          postgres    false    218            �            1259    17343    ordered_goods    TABLE     �   CREATE TABLE public.ordered_goods (
    ordered_goods_id integer NOT NULL,
    order_id integer,
    client_name text,
    client_surname text
);
 !   DROP TABLE public.ordered_goods;
       public         heap    postgres    false            �            1259    17342 "   ordered_goods_ordered_goods_id_seq    SEQUENCE     �   CREATE SEQUENCE public.ordered_goods_ordered_goods_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.ordered_goods_ordered_goods_id_seq;
       public          postgres    false    235            e           0    0 "   ordered_goods_ordered_goods_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.ordered_goods_ordered_goods_id_seq OWNED BY public.ordered_goods.ordered_goods_id;
          public          postgres    false    234            �            1259    17310    orders    TABLE     �   CREATE TABLE public.orders (
    order_id integer NOT NULL,
    order_amount integer,
    cars_category_id integer,
    client_id integer,
    order_status text
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    17309    orders_order_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orders_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.orders_order_id_seq;
       public          postgres    false    231            f           0    0    orders_order_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.orders_order_id_seq OWNED BY public.orders.order_id;
          public          postgres    false    230            �            1259    17265    payment    TABLE     o   CREATE TABLE public.payment (
    payment_id integer NOT NULL,
    amount_sum integer,
    amount_date date
);
    DROP TABLE public.payment;
       public         heap    postgres    false            �            1259    17264    payment_payment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.payment_payment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.payment_payment_id_seq;
       public          postgres    false    223            g           0    0    payment_payment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.payment_payment_id_seq OWNED BY public.payment.payment_id;
          public          postgres    false    222            �            1259    17272    rental    TABLE     �   CREATE TABLE public.rental (
    rental_id integer NOT NULL,
    start_date date,
    end_date date,
    rental_rate_id integer,
    insurance_charge_id integer
);
    DROP TABLE public.rental;
       public         heap    postgres    false            �            1259    17271    rental_rental_id_seq    SEQUENCE     �   CREATE SEQUENCE public.rental_rental_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.rental_rental_id_seq;
       public          postgres    false    225            h           0    0    rental_rental_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.rental_rental_id_seq OWNED BY public.rental.rental_id;
          public          postgres    false    224            �            1259    17385    service_station    TABLE     �   CREATE TABLE public.service_station (
    service_station_id integer NOT NULL,
    mechanic_id integer,
    cars_category_id integer
);
 #   DROP TABLE public.service_station;
       public         heap    postgres    false            �            1259    17384 &   service_station_service_station_id_seq    SEQUENCE     �   CREATE SEQUENCE public.service_station_service_station_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.service_station_service_station_id_seq;
       public          postgres    false    241            i           0    0 &   service_station_service_station_id_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.service_station_service_station_id_seq OWNED BY public.service_station.service_station_id;
          public          postgres    false    240            �            1259    17357    stock    TABLE     �   CREATE TABLE public.stock (
    stock_id integer NOT NULL,
    name_of_product text,
    quantity_of_stock integer,
    unit_cost integer,
    ordered_goods_id integer
);
    DROP TABLE public.stock;
       public         heap    postgres    false            �            1259    17356    stock_stock_id_seq    SEQUENCE     �   CREATE SEQUENCE public.stock_stock_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.stock_stock_id_seq;
       public          postgres    false    237            j           0    0    stock_stock_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.stock_stock_id_seq OWNED BY public.stock.stock_id;
          public          postgres    false    236            }           2604    17259 *   car_characteristics car_characteristics_id    DEFAULT     �   ALTER TABLE ONLY public.car_characteristics ALTER COLUMN car_characteristics_id SET DEFAULT nextval('public.car_characteristics_car_characteristics_id_seq'::regclass);
 Y   ALTER TABLE public.car_characteristics ALTER COLUMN car_characteristics_id DROP DEFAULT;
       public          postgres    false    221    220    221            �           2604    17282    cars_category cars_category_id    DEFAULT     �   ALTER TABLE ONLY public.cars_category ALTER COLUMN cars_category_id SET DEFAULT nextval('public.cars_category_cars_category_id_seq'::regclass);
 M   ALTER TABLE public.cars_category ALTER COLUMN cars_category_id DROP DEFAULT;
       public          postgres    false    227    226    227            �           2604    17304    clients client_id    DEFAULT     v   ALTER TABLE ONLY public.clients ALTER COLUMN client_id SET DEFAULT nextval('public.clients_client_id_seq'::regclass);
 @   ALTER TABLE public.clients ALTER COLUMN client_id DROP DEFAULT;
       public          postgres    false    229    228    229            �           2604    17332 "   discounts_n_promotions discount_id    DEFAULT     �   ALTER TABLE ONLY public.discounts_n_promotions ALTER COLUMN discount_id SET DEFAULT nextval('public.discounts_n_promotions_discount_id_seq'::regclass);
 Q   ALTER TABLE public.discounts_n_promotions ALTER COLUMN discount_id DROP DEFAULT;
       public          postgres    false    233    232    233            {           2604    17238    employers employer_id    DEFAULT     ~   ALTER TABLE ONLY public.employers ALTER COLUMN employer_id SET DEFAULT nextval('public.employers_employer_id_seq'::regclass);
 D   ALTER TABLE public.employers ALTER COLUMN employer_id DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    17374    managers manager_id    DEFAULT     z   ALTER TABLE ONLY public.managers ALTER COLUMN manager_id SET DEFAULT nextval('public.managers_manager_id_seq'::regclass);
 B   ALTER TABLE public.managers ALTER COLUMN manager_id DROP DEFAULT;
       public          postgres    false    238    239    239            |           2604    17247    mechanics mechanic_id    DEFAULT     ~   ALTER TABLE ONLY public.mechanics ALTER COLUMN mechanic_id SET DEFAULT nextval('public.mechanics_mechanic_id_seq'::regclass);
 D   ALTER TABLE public.mechanics ALTER COLUMN mechanic_id DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    17346    ordered_goods ordered_goods_id    DEFAULT     �   ALTER TABLE ONLY public.ordered_goods ALTER COLUMN ordered_goods_id SET DEFAULT nextval('public.ordered_goods_ordered_goods_id_seq'::regclass);
 M   ALTER TABLE public.ordered_goods ALTER COLUMN ordered_goods_id DROP DEFAULT;
       public          postgres    false    234    235    235            �           2604    17313    orders order_id    DEFAULT     r   ALTER TABLE ONLY public.orders ALTER COLUMN order_id SET DEFAULT nextval('public.orders_order_id_seq'::regclass);
 >   ALTER TABLE public.orders ALTER COLUMN order_id DROP DEFAULT;
       public          postgres    false    231    230    231            ~           2604    17268    payment payment_id    DEFAULT     x   ALTER TABLE ONLY public.payment ALTER COLUMN payment_id SET DEFAULT nextval('public.payment_payment_id_seq'::regclass);
 A   ALTER TABLE public.payment ALTER COLUMN payment_id DROP DEFAULT;
       public          postgres    false    223    222    223                       2604    17275    rental rental_id    DEFAULT     t   ALTER TABLE ONLY public.rental ALTER COLUMN rental_id SET DEFAULT nextval('public.rental_rental_id_seq'::regclass);
 ?   ALTER TABLE public.rental ALTER COLUMN rental_id DROP DEFAULT;
       public          postgres    false    225    224    225            �           2604    17388 "   service_station service_station_id    DEFAULT     �   ALTER TABLE ONLY public.service_station ALTER COLUMN service_station_id SET DEFAULT nextval('public.service_station_service_station_id_seq'::regclass);
 Q   ALTER TABLE public.service_station ALTER COLUMN service_station_id DROP DEFAULT;
       public          postgres    false    241    240    241            �           2604    17360    stock stock_id    DEFAULT     p   ALTER TABLE ONLY public.stock ALTER COLUMN stock_id SET DEFAULT nextval('public.stock_stock_id_seq'::regclass);
 =   ALTER TABLE public.stock ALTER COLUMN stock_id DROP DEFAULT;
       public          postgres    false    237    236    237            A          0    17256    car_characteristics 
   TABLE DATA           �   COPY public.car_characteristics (car_characteristics_id, engine, date_of_issue, engine_capacity, fuel_type, car_color) FROM stdin;
    public          postgres    false    221   �       G          0    17279    cars_category 
   TABLE DATA           P   COPY public.cars_category (cars_category_id, rental_id, payment_id) FROM stdin;
    public          postgres    false    227   1�       I          0    17301    clients 
   TABLE DATA           X   COPY public.clients (client_id, client_name, client_surname, client_number) FROM stdin;
    public          postgres    false    229   W�       M          0    17329    discounts_n_promotions 
   TABLE DATA           h   COPY public.discounts_n_promotions (discount_id, discounts_in_percentage, cars_category_id) FROM stdin;
    public          postgres    false    233   �       =          0    17235 	   employers 
   TABLE DATA           �   COPY public.employers (employer_id, employer_name, employer_surname, employer_position, employer_salary, employer_contact_information) FROM stdin;
    public          postgres    false    217   P�       S          0    17371    managers 
   TABLE DATA           Z   COPY public.managers (manager_id, employer_id, manager_name, manager_surname) FROM stdin;
    public          postgres    false    239   �       ?          0    17244 	   mechanics 
   TABLE DATA           =   COPY public.mechanics (mechanic_id, employer_id) FROM stdin;
    public          postgres    false    219   �       O          0    17343    ordered_goods 
   TABLE DATA           `   COPY public.ordered_goods (ordered_goods_id, order_id, client_name, client_surname) FROM stdin;
    public          postgres    false    235   I�       K          0    17310    orders 
   TABLE DATA           c   COPY public.orders (order_id, order_amount, cars_category_id, client_id, order_status) FROM stdin;
    public          postgres    false    231   ��       C          0    17265    payment 
   TABLE DATA           F   COPY public.payment (payment_id, amount_sum, amount_date) FROM stdin;
    public          postgres    false    223   ��       E          0    17272    rental 
   TABLE DATA           f   COPY public.rental (rental_id, start_date, end_date, rental_rate_id, insurance_charge_id) FROM stdin;
    public          postgres    false    225   ��       U          0    17385    service_station 
   TABLE DATA           \   COPY public.service_station (service_station_id, mechanic_id, cars_category_id) FROM stdin;
    public          postgres    false    241   ߭       Q          0    17357    stock 
   TABLE DATA           j   COPY public.stock (stock_id, name_of_product, quantity_of_stock, unit_cost, ordered_goods_id) FROM stdin;
    public          postgres    false    237   ��       k           0    0 .   car_characteristics_car_characteristics_id_seq    SEQUENCE SET     ]   SELECT pg_catalog.setval('public.car_characteristics_car_characteristics_id_seq', 1, false);
          public          postgres    false    220            l           0    0 "   cars_category_cars_category_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.cars_category_cars_category_id_seq', 1, false);
          public          postgres    false    226            m           0    0    clients_client_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.clients_client_id_seq', 1, false);
          public          postgres    false    228            n           0    0 &   discounts_n_promotions_discount_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.discounts_n_promotions_discount_id_seq', 1, false);
          public          postgres    false    232            o           0    0    employers_employer_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.employers_employer_id_seq', 1800, true);
          public          postgres    false    216            p           0    0    managers_manager_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.managers_manager_id_seq', 1, false);
          public          postgres    false    238            q           0    0    mechanics_mechanic_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.mechanics_mechanic_id_seq', 1, true);
          public          postgres    false    218            r           0    0 "   ordered_goods_ordered_goods_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.ordered_goods_ordered_goods_id_seq', 1, false);
          public          postgres    false    234            s           0    0    orders_order_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.orders_order_id_seq', 1, false);
          public          postgres    false    230            t           0    0    payment_payment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.payment_payment_id_seq', 1, false);
          public          postgres    false    222            u           0    0    rental_rental_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.rental_rental_id_seq', 1, false);
          public          postgres    false    224            v           0    0 &   service_station_service_station_id_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.service_station_service_station_id_seq', 1, false);
          public          postgres    false    240            w           0    0    stock_stock_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.stock_stock_id_seq', 1, false);
          public          postgres    false    236            �           2606    17263 ,   car_characteristics car_characteristics_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.car_characteristics
    ADD CONSTRAINT car_characteristics_pkey PRIMARY KEY (car_characteristics_id);
 V   ALTER TABLE ONLY public.car_characteristics DROP CONSTRAINT car_characteristics_pkey;
       public            postgres    false    221            �           2606    17284     cars_category cars_category_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.cars_category
    ADD CONSTRAINT cars_category_pkey PRIMARY KEY (cars_category_id);
 J   ALTER TABLE ONLY public.cars_category DROP CONSTRAINT cars_category_pkey;
       public            postgres    false    227            �           2606    17308    clients clients_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (client_id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public            postgres    false    229            �           2606    17336 2   discounts_n_promotions discounts_n_promotions_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY public.discounts_n_promotions
    ADD CONSTRAINT discounts_n_promotions_pkey PRIMARY KEY (discount_id);
 \   ALTER TABLE ONLY public.discounts_n_promotions DROP CONSTRAINT discounts_n_promotions_pkey;
       public            postgres    false    233            �           2606    17242    employers employers_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.employers
    ADD CONSTRAINT employers_pkey PRIMARY KEY (employer_id);
 B   ALTER TABLE ONLY public.employers DROP CONSTRAINT employers_pkey;
       public            postgres    false    217            �           2606    17378    managers managers_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.managers
    ADD CONSTRAINT managers_pkey PRIMARY KEY (manager_id);
 @   ALTER TABLE ONLY public.managers DROP CONSTRAINT managers_pkey;
       public            postgres    false    239            �           2606    17249    mechanics mechanics_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.mechanics
    ADD CONSTRAINT mechanics_pkey PRIMARY KEY (mechanic_id);
 B   ALTER TABLE ONLY public.mechanics DROP CONSTRAINT mechanics_pkey;
       public            postgres    false    219            �           2606    17350     ordered_goods ordered_goods_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.ordered_goods
    ADD CONSTRAINT ordered_goods_pkey PRIMARY KEY (ordered_goods_id);
 J   ALTER TABLE ONLY public.ordered_goods DROP CONSTRAINT ordered_goods_pkey;
       public            postgres    false    235            �           2606    17317    orders orders_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (order_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    231            �           2606    17270    payment payment_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (payment_id);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    223            �           2606    17277    rental rental_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY public.rental
    ADD CONSTRAINT rental_pkey PRIMARY KEY (rental_id);
 <   ALTER TABLE ONLY public.rental DROP CONSTRAINT rental_pkey;
       public            postgres    false    225            �           2606    17390 $   service_station service_station_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.service_station
    ADD CONSTRAINT service_station_pkey PRIMARY KEY (service_station_id);
 N   ALTER TABLE ONLY public.service_station DROP CONSTRAINT service_station_pkey;
       public            postgres    false    241            �           2606    17364    stock stock_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT stock_pkey PRIMARY KEY (stock_id);
 :   ALTER TABLE ONLY public.stock DROP CONSTRAINT stock_pkey;
       public            postgres    false    237            �           2606    17318    orders car_cat_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT car_cat_key FOREIGN KEY (cars_category_id) REFERENCES public.cars_category(cars_category_id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT car_cat_key;
       public          postgres    false    4755    231    227            �           2606    17337 "   discounts_n_promotions car_cat_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.discounts_n_promotions
    ADD CONSTRAINT car_cat_key FOREIGN KEY (cars_category_id) REFERENCES public.cars_category(cars_category_id);
 L   ALTER TABLE ONLY public.discounts_n_promotions DROP CONSTRAINT car_cat_key;
       public          postgres    false    227    4755    233            �           2606    17396    service_station car_cat_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_station
    ADD CONSTRAINT car_cat_key FOREIGN KEY (cars_category_id) REFERENCES public.cars_category(cars_category_id);
 E   ALTER TABLE ONLY public.service_station DROP CONSTRAINT car_cat_key;
       public          postgres    false    227    241    4755            �           2606    17323    orders client_key    FK CONSTRAINT     {   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT client_key FOREIGN KEY (client_id) REFERENCES public.clients(client_id);
 ;   ALTER TABLE ONLY public.orders DROP CONSTRAINT client_key;
       public          postgres    false    229    231    4757            �           2606    17250    mechanics emp_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.mechanics
    ADD CONSTRAINT emp_key FOREIGN KEY (employer_id) REFERENCES public.employers(employer_id);
 ;   ALTER TABLE ONLY public.mechanics DROP CONSTRAINT emp_key;
       public          postgres    false    4745    219    217            �           2606    17379    managers emp_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.managers
    ADD CONSTRAINT emp_key FOREIGN KEY (employer_id) REFERENCES public.employers(employer_id);
 :   ALTER TABLE ONLY public.managers DROP CONSTRAINT emp_key;
       public          postgres    false    4745    239    217            �           2606    17391    service_station mech_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_station
    ADD CONSTRAINT mech_key FOREIGN KEY (mechanic_id) REFERENCES public.mechanics(mechanic_id);
 B   ALTER TABLE ONLY public.service_station DROP CONSTRAINT mech_key;
       public          postgres    false    4747    241    219            �           2606    17351    ordered_goods order_key    FK CONSTRAINT     ~   ALTER TABLE ONLY public.ordered_goods
    ADD CONSTRAINT order_key FOREIGN KEY (order_id) REFERENCES public.orders(order_id);
 A   ALTER TABLE ONLY public.ordered_goods DROP CONSTRAINT order_key;
       public          postgres    false    235    231    4759            �           2606    17365    stock ordered_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.stock
    ADD CONSTRAINT ordered_key FOREIGN KEY (ordered_goods_id) REFERENCES public.ordered_goods(ordered_goods_id);
 ;   ALTER TABLE ONLY public.stock DROP CONSTRAINT ordered_key;
       public          postgres    false    235    4763    237            �           2606    17295    cars_category paym_key    FK CONSTRAINT     �   ALTER TABLE ONLY public.cars_category
    ADD CONSTRAINT paym_key FOREIGN KEY (payment_id) REFERENCES public.payment(payment_id);
 @   ALTER TABLE ONLY public.cars_category DROP CONSTRAINT paym_key;
       public          postgres    false    223    4751    227            �           2606    17285    cars_category rent_key    FK CONSTRAINT        ALTER TABLE ONLY public.cars_category
    ADD CONSTRAINT rent_key FOREIGN KEY (rental_id) REFERENCES public.rental(rental_id);
 @   ALTER TABLE ONLY public.cars_category DROP CONSTRAINT rent_key;
       public          postgres    false    227    225    4753            A     x�mWIn1<w���ڟ�8�\�4�Av0��>"E�D� >��T�*iX�.h l�m������~\���ן�c_q��Fo���f�f�b�������j�1W�a96,�X~|>]//�2�����P�\���X^����_}�7��������u_�|�d��x:��k\d���؟_/���~���4�f3�(v��~\~�k�*.?�Gfj�`mb0i<!xK�Roy�\� �-8R�°Ƨ�D/�%�*p���HN$��
C��kT=���nL'��)?J�|	��V~_��q0\%��:Ge
*�庿���(VH��E��Ti���Y[�F�%����*/.��{�5ƍm`�������і��^����(�/��V��%A�� +[�Q�L������,���5J�����!�b۰�L��^��m��ܙ����T��UX����Of�Nq����9=�p͟����6KWE=;�UIL�U�g�I����6$9��ݝؙZ�t���r�kс|B�YKS�Q����@�a��3�9U7�/��a��kV��͎p��dj�5�碲j�N�k�UrP�u���妆�J����KH)�����!E��p{����ph'��Jh��1��*^�D1dŰ_#`���@�����&=�'wȾMC�]7@�q��0�=��p>�}��7�9
|͕y�0���d��Đ�	�ىkL�ynݮ�S+?�f�@�y��ʆ���BD�<;B�ix�rV5y$���^�-A2;?����5����_�أD
�NY�z�	�Gv�n^D���2mi���	�!���P�.���!U3�ᥖ�=-1�u�R�H��̴�=*;�=	KM���O8J����Ζ�i���{��}�����[���K�ACҞ���4h��q�rYi�3-k��Iyҽ�B;���:��:�>�u���S:���m�?�4`H?&�О�ݴsA]��z,f��a��f���VH*fs�g��pZ[�lw�䆆��������y��z�3��0�3E
M�;���˺����	      G     x��ˍ� �uU0#�\^�q\����݅B�r�q�sspsrsqss�p�|���X*ai���AX&aY�e�CX?�Z�=�cm���AX'a]�u�C�>�V[%l�ޏ��A�&a[�m�C�?�^{%썰ߏ��a��}�M���G!�p4��	��c�c�E86�8��#��pV��g'��p�qx��pn�y�G�
᪄��N�ᚄ����ڄ��p�]	w#ܝp�=	�"�w��!<�)���Fx:��g�Ex6�[��My{��ߟ�`m�(      I   z  x�UVKr�6]7N�� ȥ�=�L���&��$� �I+���MV.������$=������dG]#j���O�����Դ�鄢��9:�3F?�T����C����2�.����^��싧M�N�T�f-D���$�VXz=��t�cD95RY#Zڄ�i���Ϥ�����2�q��&�&O��BV��/nm���c��ԶR�[��]
(�|��R�RȚ�j�ͥ�,#�
�HE��z�ط��IM7��`�?]�G��]���M�e���=$�����4���.A���2��f^���D�1(nBJ�����)�eSU����+����λ�>��V��N36t���{0E��ZԒ�O��Z���֊����Kp��K	��im�ZԊ�;�.�����R���m.��]�Mt��;����?���t :m'�n�<=�q� G6F���!��!���)�m�w���uB�F޺���̸��'�w��jY	Uѽ/3�p�ׂ��+T���vT�T*��!���aZ�]�2�+��QJ�����0��
��2�tS��q�P�
*����)�PuZ(�����(�����J����ž�:�$F��b� q��{���M�F芮�y����84��F-����fO�����/�υĳ��AU�6B+��sf�e�֌�c�xp@�ڠ(���'F̈́np�2��x����[
<.��k����-��g2��-������m�uBw`�g�����Sѓ�.����sU�F�3Ӵ�"\�U����c�4 �4`1a���	m�fO`�.�?Ja�g�{��	��~���k
k�~��c�j��t5�nt�w��p���ʷp@ԁ��t ��azʗSx'#��5¦��k� ^|r�D�hjz	�V ��b�h�Q�@��`�w��h�0T�+�S-⇩�Οp3��n��?�i�Ǳn����W����эHM܋H�;��-���2�I;L:gzZ����1���5�0�]	vBIX�KP<B�m���AD����=��Q��p�1���ͦF�kd4�^w������9"�|)�'d",Ț�xU����.���ՙ'�FA�²�
l�!��\<�",;�3�z�&����&�r qύ[d�RV)s��J��h݂'�C�$;bG��/��o�sbǭ�1s�̧p8�� �@��
�����q ;�O�l�8�������w���4���89��C$���<_����^���o.��I�����$�� //i��4G�]Mo��{��+Y+:�� ����V�)eCŐ�o�W]w�yg@��%|LG~���P�#�,��u�n��u9�x�k�g�XDG���7�: >f���TH5Y!�P���'�p��߅�N}y�      M   _  x�-T۱c1�F�x�����ױ���d<�!���KQ������3&��wB)��U%]�Z��pi<�����3Oz��{��RG���g��\�vjD�y��Mi;�wB��'ɮ�-���hC�x�!΃��aAv%�Đ?L�c7�X_^f ����qX,|�X��q����bK��Sc״�=�1!�`#���8pN��A\P#�%�
���S���7���z����<��p�e%y�WmPj����#���A����"t5͖P���Q	)���6r�>�z (�,^$�gYE!8�O�Dc��a%b�ꃼ4�ܒ�X]�S����!���a�#I����Q_�v����s��篿Aә��C�gwH�
����E�����*w�2�Af�Q�.У��x�:�[_��
՛2�S��Ʀ��X_�j�wS�h�ū�'Њ�=��)�����ѱ�<c�@��6q�`�� +ͣ�ʌ��ѿ�|?0�tK�R��.�.y
;a8��GZ�9�/N#/�v�a8_�}��Yx��.�x�o�����\���R6ssA`�I�Q��˺a����;�U#�r�{;��:�\N�G��]Ӡ�?a����6����\�/�; �7O�b      =   �
  x�]�Ks�F�σO�������(K�\��MY��e/	�(��$%˟~M%�CR�
��������Ө�=w�Z]NӼ���0�*i��nJRY�:x[�`le�Ů�V�{�u�m7���?�hm��Q���`������ƱW�0��^ݶc��XH%��X�RJu*�v6�ʫ�����=���$o�q��EnH9�E{[u�m���v�n�.��~hǃr�Ƥ����W�R��񹥔y<�<�DU��*;[�bk㵩��2����8���v٦�c(M�ʅT[_jj,UVWݰ��v��ӯř�}��1N����tb�UQ������=р��Keƫ�t�-7��+����C�����y�~x�Ev&��gU���que����u7���7���a�`5\R���Pj틫�U��<��OSh�U�9&Vjc��x�ݶ��V��݆��ݸx�s1;פ�ba
��.[�o��kgu;7�C?���hc�͎.с: ��uA������~<L�g��΂*�A��6��DuIy��'}��n���G7?�{)λ�L����0ҁ�y}R��}'�ng�u>e�de��}
�ɑd~�W;������0Ђ�Kr�)�F3]G�\�����u��|꺱]�Ne��� �{q2��p����Vw8�o����xXX��|ySY���3�}7M<i��l�wE��L�s���N[��z=�+u7�F��[aAk*k,�4 ��:Ƣ+���]m���S���&qO�10)Ϋ�#�{<�Շ���v�9gNN$(1P^P7O�Ҹ��~�y�@b�&4!s��#��}e����ܯ��~�D�ήH�x��$�!d�<�pC��f�����Wz%Wxq���4�&T6�=O��ǡ��j�Nm��Y�^��U��|�,zԯ�������$鰃j���;���s?t������f�sr)�l۬Af����2��Wu���׷����M)J�j�����1���Н�$��&ZUxII%TΩ��L]hӸ���-��6Y0l�+�}p��X��t�o��]\�q��+��~���/_]\��!�G�ywD��z��U����ݮ{}y�޸�,�n�ߦ��ێ�[H���S~S�7�j��l�%{:�ջ������ߌg�7�9�"-�4�D,��
^��Իv�v�s+
9x�D/�0�1��U^�t��[��8D�΋���trU��[�똰Ho��c�j��~�p~�cvF S|ˮ�O�xޟ��4�=ӰgJ��(-�u)"��v|5���^���s)���4U��F�8q�!�t@�Lk��`�X0n_l�!R�<�o����Hm�U�R�E�I!���hBx���ƚ�v�M�~Mobi�
�"ؓ�fpT��a�����k�� 0�8�f���:�:eu�Ǿ��]N�+�X&1EM��~�Vԗ��nZ�����ԠO2�+�*;B�b�=4��v���3��|� ����fS�onї�iz ���DD��|��8f3A'�Nv´���\��F'�0��_��*8����岛���"H
���1��T!/x����4��9'Y���'��D��Es�o��a~��풋���=��$��LV �)_&������!b�"g���Nޟ��|\a�w�҆%��$	�C���Y2d�������g:i
i�����:�*�ڟ����9ݭM�ঙD�ki/i:VQ��4GjA�����A��X�6D��I�B�w����Ƿ8h�E��7�P`�~���Vџk��4o��%���_��x�%�!�H��㟟�EkCn'�I�m3Փ��z�d���l�xAC 2VФŪ]��(ϩ/�����6���'�
y2[#�tDr/�C���8��������.�6-�Ġ�hu?na4���l<��Pl3��]��\ݼ�=��0QXN��!Th��a{�.~���q��j���1HԀ�ĩ*i$}�]��O����\�H1y�4`�[:�*�v��}����/�+6��!q�Zg�de��t��Y��eWcgs�֒��j�z�v��X4��3���j���,T�q�W��'X��U@Z��d�ܠ!�"2y5��e6C+n�=�ny(�$�,�N��,�Ib�};v��a�޷Һ�\b�P(��?��49���8�m�O] �d�Zٰ�8����A}m�i�d(��S���Y�6��o�۳�y�4�u�Kh����,\?e�o���c�Gp����B�u��S�HUW��$[��u�����f�-N�%��	�k��<���^B�D�ۿ�9��(Vm���r�ʎ�H�в��޺LR|�)�D��2���~]`�u�g��:���"�1��K�r8)�$����N��ԅ$�N�)h�_��rdWx�@ۮ�K�d~S&�$l3}m�)p�%/d���\f����iop��y5�~�	t����vX�K��	�<)@;恥3�~�%kݟ驋ȋ$&#�|�SU�K:!9�RyA���8<���������%�������\�Qvْ�YU9q�?��z��D�����U�͞;p)T�*/�|���߯������G�����H�0!�9W������y~}9�E���z�bV;��L��0ƛ���˹�_�?X����H!h����/0���΄�(�&ILP���<{9��u�g��Ͱ�K&l{^��1���*��JV�C����C?�߂�XO����H:	��#�^#@�aZ.2�8Yd<���V3H�DTH}j������*� धfq�@'���ߦ���e�F�      S   �  x�=��n�8����b�`�ۗ��Ig��Et���0�Q�B�[x�~�2�����I�<�2dX�p2/�G�#�^B�-޴X�
�9�+�� 7U���m��o��B���7q�U���Lg3��'��O�Kc���?�E����1vZ>uP��Z��OrU�d�P8��~
*�@��2��0�ĩ,Y�0��q��� YJ0���N������U��`%a�Z�*�@��2���g�*�A�Ɲ�ϓtN����=�ai'�� /2Y�q��0���y�Q�y�O7�/@D���Vy���7zз[T9[���iY�?VF�Qy���~��t�N�%�s�4�y��4�~Py�<��F+�/'��1H�7��yv/�b�y3��M�^�C0�:�� Lr�*̼Ow �/�4+����* O��S+�)��@~�ȓ��^9��'���t;QZ�V�o�V荩�RE	��d�SܢB�w��vb�TQ�<��I"|4�I8���˚('=b4��Ђ�y��tJ��(_nl��ճ* kK=�^�����C��Vfl�Ĩ�d�Sg������*/w��J�I��(�=ZCo���ϟ�aY�����'_#�*�K%.V�!���Ve���:u�V�g��@��U�ڃؓg9�3��@�8F��P��O��+����r�o�&�1h*��	�
�Wց.����4iU	�g�{�F����.� *��C�g��5���JrWR�gTUr�9��'iV-����Dz����Ȑ���C=��?�3O���~���@ֆò��&�9��:�c}|Ѯ��0p��9����d5���)WV��@�L������*���j�3��\�[֤n@����g�;�nA�i!���&�ف��9"�f�ӱ�T� 9��VV�:�ީ&I)����R̨�Ѥ��_g���RMrH�<��\ϔE�(M	�db��Z��ePMr�!`3�Q55G���+�}C�ts/�lit�IIM�*���Rz��d;9w�j .����k�f �s�ϊ�bU��<r��TܵO��-@v܂3�����nK��P�8���V oIT8��[��A��d����F�$y�T˖OO�o�GG>l�K��@~�e2��xM�n���Ω���Qu���@�q�ˌ�T��,o�=�:����V�����&?���D��P�1p�O�a*�5�n<5Ca�몫Ah��Ȉ�S`�]j�֖i>��L�-�F�.m﯑��:�����]��eZ�w�>K:-��ټ�?�R�ZYL      ?   ,  x��Yq Qþ-0��;�R�8�E`[��p9� ���V3V��'{��s�c!,e�����56��V��������y�)O�䅷�����O~�S<�F��k��"I���V41�!V��)�|�G��HW:�o�72�R��&G9�*�<�QO�(S�*�BT�>B��Z�Ԩ�Z�R�:��mj�]�t��Nuҥ��~���Ы^���<�cLc�k�	M0�I�4Ŵ���f5˜�ا}�i�u���6�ɖ���6;���'w���t�3�q�s.t��.��׺�F7��g|�����9�?�SrW      O   (  x�-�MS�8�������n*���$�04i(���Y�����,1�M����(�V=p�y�G	u��mPΩ^K�?���SxԪ댖�L{2��w����ȱ��zŽZ�I
8z��N�Ӥ��(���V\�.h�)*̤-7��i�AK�[��[?�e³G�&i�`7�Z��~vJ��/���Y�f3I����y6�^�AONK���=���ڣ$�U�.�_������_�� ��5��O��8I
�[5Y�z�}XN��H�G5��$�.��mųr��Jj����ݢ�͒4 fJb�d����&����Z�C��{s�֟9��)��,Q��A���[G�$i�SaT�$���� �������<���qmW�/�HZ��sTO������}y�.���N��Z:���X}I����+�w]�|�yR��ýi[�B�%K@.5���T<V��<�9xgbq���c$��2�>�
�%t�d9�AY�5i^ݩ�@r������e򟒕 �"����� Y�C��*�W¾��KV��Ƀ������$Y�����C}h�7 �|8i�k>>��	�VM��uXgߞ$OA�h�ص�.U�3���x��|����Tt�a7R�%���6�����'y	��v�PxY���p>�r}X%�A�U��Ѫ�~����?��4�Rl@v�;�np)�}�
r�n�)�M�c�5m���@�"��p��� t��1G���%
DAS��1'�p���R� /f����*��ErGs�h�+Y� [�X,��j�sE�d�e4O�_����/�;L��.�����\R& 7ښ�x��)S�1�hÃ�HL������L/e�W6>soT3�,@8��u�|ck��26����A�RV O~�B������e�TP�5&���(�[��>���ڀ���3+��v`Z�R% w�eǵ��o[� /LJ�X�k��rUswūq-�P� ����� v}U�<�0�wechPF�J�}��ޥ�R1۫Xu�u���8�yTo��÷?n��R5 ��y���0�ޠ�wb=|�-6*������K�=�3��NA�Ӭ?��1��K��M��{��dZ�s��D'?��g����I]�P�8T���� σ��t��;U ��7���{S�����_��Vqq*U7 �5_:ڈ���4�I�٭F��Q�$ +)6�;k��Z��ſ�9�lb�I��<Ϫ幾�!�&��O̺�^����Mr탺XK�%���st	�[x� �䓦�iBɁ���]���d�;zn˗��;��^�6
��)>0�&���x͓�ݞ�LR������x�      K   	  x�]��j1�k���ֻ�O�,m �K}�~g��J��P4��N���yy���y|<^n�F-�9������b�T+���������(n������D�Y��g��=Y�lٰ���\�����l/�Z3�<?~����K�A��8%���b)[�� mK�MT�S	U.�h�ٜ�h�h"J"��rAFm��:Oa���ą�����!��� I�|�8�ݠ딋u��@()u:�A h7nB�	A[�Ԥ!uy�l87�+�,E$S��Na؅m�P�B�B�dst�J,b!�I�e!�	��]���g�l�n�J0��E�J��H���JU��X�5�AL!I���{2��8�%d
p�@U�h�,�4�$���U��[�����&�~6z=nd��,�E���Rbʞ�7Z�iS����w�Bط5��(X���%�E��+9b���jq�4��e�Vtla'�i��B��6I$�v�Nw3u�&�r�����Pa��˙9�	�}�x�]��&D��j��t!Z�z��D_䌟#�BpZ�aÅ�>��Ɖ+���+�$,!���N\�m#m%!,v��{ag��7)	4b����.D��2�[�u#��@B#�7Ti�pa�&��ᙴ���;�sWra�]vN��z��SK�*,Z/H��c�!ԔA3n��)׆��R;�h��B���vN�؝~"�)�����p�%�,,!���(,!��:���t�7��ݙ�S��<FF�9c(ڑ9��=S�2F+$z	��w�����8�v5���n-�!z      C   S  x�U�K�$9D��]rL��.}�sѝ%��r���'w�!G���9J����G��_���{>r����9
���M:%�{xJ5�~��F߯���w[%1��d��[|����;�����~p��~k!��Q��$8oч���+���l$�U��d0H�ES.Ǔ2��Z0�`ڽ�#��{�	�>E3���`�H�d0��1)z�����c�
Tn[N�1\����uu�U]H�(Oф�
4)��R��5J���A�0~���VS�QT��ok3�;��a�un��/�3�K��\�$+Xݢ��5lI�9?�sU�.�p�ޞ �\玑+\W�$7�Ω(�,�n��%�"O �m*�׎C�7��qgJ��ݨ�mB�KS(B}Ra��:�/�����2���)
Q[tj4�W��<�%Փ�/��R�;�cv*R��AiH�]f=ґ~O<5׹���j�t��,d]��#���t��:�P1�QJ%(�"����˕�l�p�:�7�T��[C�F�~�R5�i-Ǥ4jw4�~�N�Ѽ�UjA�H焢us���6����9�X��D�wN�r]�%���y���_�<O����D�?2l      E   �  x�mVK�$+[���؀�.���Q�iQ�/�%��hŪ���W5-gi��و����x�]�����֋G�l��jv���[�{�/oe�������j+�LD�k�^F	<�8��vYea�����_��.����O�'V��5�
�0�ixb�^miּh��0�>�>���(H��|���iK�1�?�v���037�B,G�aĂ��o�uf��Q-
21q&}��7.NN�����{��$���%��WE�t�_���&�������3K�#˴�T�'F.	�����ܨ���E���$��H `K����Z��,Z�vrB`ë\[J	�R�b-c\Gop����$����w`q*��;�g`Y��d��w��կ'�Q��bM�F�	���Og��$�������ǂkdϿ��G�UkW]�p���6��c�@o�&�e�	%����O�#�c6�ls�u�������rxרyR�Uk9[�[9�t]��A���^���ƨ��5��9�Q1.ww�f7��kQ�pQ���1z*ϔ؉����
֕[b�n`�>�L@cb<���%�T#0��V`���X[Y��+��ؘJSֹ������M�g��jmݬ���ZK��iA�1�ZV�:A�S�v�f���uq����91C�i���.0Wr��,L�VD�_T�U��L]#q�]��[�Q�\���׺Q���i!��X{�� 1r�)�t�@�T4z�0F���U�n<�t>b�i:pI �j,��9�`��&7H�U�t�ٕ[�h�t�+�Č���낦r�`u��g����XC)Q�Y���?v�n�=)Xb�t�1%_j�J	O��º��w�G���̧\�`_�k:���`�?���/�a_�.d�؎����%<ʷd������c����1S���ľnF�ǵ�`�ֲ���������/9'��+����=w���[�� /H	      U      x������ � �      Q     x�eUˎE<g���y�H�|Cp�b�#�������'z��gv9�NUu>""#�ޝ>�vz8=}����_j
�"a�??�P��.R6����9It����ۯϟ����L����>��B�("r�O�_��'!k/J�K� �)*�#�P�x5ϥ
Y$x4�<����O;]Gp�"�Ұr%��*�\�@Y��3"��X�޼���B|��%^E.tZ��,�7[�fF�,E??~�������>!�H&ΤX�>�:'��}���ϏO_HiJ��0?���a�J�XeOR"?<�9��&xJRe�JE+�ύ��rF�X+H�5�KF���`ĻFh614Yk/O�,��T_��U��U3jk
�m���)s�c���nRJ,(фM�t>+zȠF��
��+�����=p��ed�7iAȸ@�ly��5�>��#�G0�b�k:��* a�6�z�t|��v��!ޭ�T��hs�Ƥ˃\B�+)�re�3���f��1n~H_ z���� �,mx�����jP�'c�0�tn{_r���J�f�c���Q�Ǻ�P_���X�99�	Y�2(��9H# &�*ǥ%PS!���	���䈽y�ن'�qqc�-�y$G]9����֦��D4��M�i�纴Zc����U�x9P1p���h�!���KAP[K㼲��nks?缲!�Y�	����S ]r�qX�6�������(�fp|�x�A�9\�8��
��9e����; �1���H�j˸V"O9ß���,�F\y.U6v�Z�-Wݑ�>c���
�Š��j���վ�z��n���x1���`�+7�3���Fh�"`��5u 4Wa(�`�&����s�JM��p�}[��6W2��9v!5�\߭LCy��n�9���1�=^^��@(�Y�K��}����D�0屛��ct��l��|�e2�p��ᖳ�'xv��Vn�&O��������
���>�#�MN��ٖ�ڷ�᝞EĿ~����	�|     