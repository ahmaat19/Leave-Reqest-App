PGDMP                         x            LeaveRequestAPP    12.3    12.3 �    7           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            8           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            9           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            :           1262    24838    LeaveRequestAPP    DATABASE     �   CREATE DATABASE "LeaveRequestAPP" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
 !   DROP DATABASE "LeaveRequestAPP";
                postgres    false            �            1259    24972    account_emailaddress    TABLE     �   CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         heap    postgres    false            �            1259    24970    account_emailaddress_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public          postgres    false    219            ;           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;
          public          postgres    false    218            �            1259    24982    account_emailconfirmation    TABLE     �   CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         heap    postgres    false            �            1259    24980     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public          postgres    false    221            <           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;
          public          postgres    false    220            �            1259    24914    accounts_customuser    TABLE     �  CREATE TABLE public.accounts_customuser (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    email character varying(254) NOT NULL,
    full_name character varying(100) NOT NULL
);
 '   DROP TABLE public.accounts_customuser;
       public         heap    postgres    false            �            1259    24927    accounts_customuser_groups    TABLE     �   CREATE TABLE public.accounts_customuser_groups (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    group_id integer NOT NULL
);
 .   DROP TABLE public.accounts_customuser_groups;
       public         heap    postgres    false            �            1259    24925 !   accounts_customuser_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_customuser_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.accounts_customuser_groups_id_seq;
       public          postgres    false    215            =           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.accounts_customuser_groups_id_seq OWNED BY public.accounts_customuser_groups.id;
          public          postgres    false    214            �            1259    24912    accounts_customuser_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_customuser_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.accounts_customuser_id_seq;
       public          postgres    false    213            >           0    0    accounts_customuser_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.accounts_customuser_id_seq OWNED BY public.accounts_customuser.id;
          public          postgres    false    212            �            1259    24935 $   accounts_customuser_user_permissions    TABLE     �   CREATE TABLE public.accounts_customuser_user_permissions (
    id integer NOT NULL,
    customuser_id integer NOT NULL,
    permission_id integer NOT NULL
);
 8   DROP TABLE public.accounts_customuser_user_permissions;
       public         heap    postgres    false            �            1259    24933 +   accounts_customuser_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.accounts_customuser_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE public.accounts_customuser_user_permissions_id_seq;
       public          postgres    false    217            ?           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE OWNED BY     {   ALTER SEQUENCE public.accounts_customuser_user_permissions_id_seq OWNED BY public.accounts_customuser_user_permissions.id;
          public          postgres    false    216            �            1259    24870 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    24868    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    209            @           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    208            �            1259    24880    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    24878    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    211            A           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    210            �            1259    24862    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    24860    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    207            B           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    206            �            1259    25031    authtoken_token    TABLE     �   CREATE TABLE public.authtoken_token (
    key character varying(40) NOT NULL,
    created timestamp with time zone NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.authtoken_token;
       public         heap    postgres    false            �            1259    25009    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         heap    postgres    false            �            1259    25007    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    223            C           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    222            �            1259    24852    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    24850    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    205            D           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    204            �            1259    24841    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    24839    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    203            E           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    202            �            1259    25238    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    25250    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         heap    postgres    false            �            1259    25248    django_site_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public          postgres    false    235            F           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
          public          postgres    false    234            �            1259    25051    leave_department    TABLE     �   CREATE TABLE public.leave_department (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 $   DROP TABLE public.leave_department;
       public         heap    postgres    false            �            1259    25049    leave_department_id_seq    SEQUENCE     �   CREATE SEQUENCE public.leave_department_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.leave_department_id_seq;
       public          postgres    false    226            G           0    0    leave_department_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.leave_department_id_seq OWNED BY public.leave_department.id;
          public          postgres    false    225            �            1259    25059    leave_employee    TABLE     q  CREATE TABLE public.leave_employee (
    id integer NOT NULL,
    emp_id character varying(10) NOT NULL,
    name character varying(50) NOT NULL,
    gender character varying(8) NOT NULL,
    mobile character varying(15) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    department_id integer NOT NULL
);
 "   DROP TABLE public.leave_employee;
       public         heap    postgres    false            �            1259    25057    leave_employee_id_seq    SEQUENCE     �   CREATE SEQUENCE public.leave_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.leave_employee_id_seq;
       public          postgres    false    228            H           0    0    leave_employee_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.leave_employee_id_seq OWNED BY public.leave_employee.id;
          public          postgres    false    227            �            1259    25075    leave_leave_request    TABLE     :  CREATE TABLE public.leave_leave_request (
    id integer NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    description text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    employee_id integer NOT NULL,
    leave_id integer NOT NULL
);
 '   DROP TABLE public.leave_leave_request;
       public         heap    postgres    false            �            1259    25073    leave_leave_request_id_seq    SEQUENCE     �   CREATE SEQUENCE public.leave_leave_request_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.leave_leave_request_id_seq;
       public          postgres    false    232            I           0    0    leave_leave_request_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.leave_leave_request_id_seq OWNED BY public.leave_leave_request.id;
          public          postgres    false    231            �            1259    25067    leave_leave_type    TABLE     �   CREATE TABLE public.leave_leave_type (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 $   DROP TABLE public.leave_leave_type;
       public         heap    postgres    false            �            1259    25065    leave_leave_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.leave_leave_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.leave_leave_type_id_seq;
       public          postgres    false    230            J           0    0    leave_leave_type_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.leave_leave_type_id_seq OWNED BY public.leave_leave_type.id;
          public          postgres    false    229            �            1259    25261    socialaccount_socialaccount    TABLE     D  CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         heap    postgres    false            �            1259    25259 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public          postgres    false    237            K           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;
          public          postgres    false    236            �            1259    25272    socialaccount_socialapp    TABLE     #  CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         heap    postgres    false            �            1259    25270    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public          postgres    false    239            L           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;
          public          postgres    false    238            �            1259    25280    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         heap    postgres    false            �            1259    25278 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public          postgres    false    241            M           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;
          public          postgres    false    240            �            1259    25288    socialaccount_socialtoken    TABLE     �   CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         heap    postgres    false            �            1259    25286     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public          postgres    false    243            N           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;
          public          postgres    false    242            	           2604    24975    account_emailaddress id    DEFAULT     �   ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    219    219            
           2604    24985    account_emailconfirmation id    DEFAULT     �   ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221                       2604    24917    accounts_customuser id    DEFAULT     �   ALTER TABLE ONLY public.accounts_customuser ALTER COLUMN id SET DEFAULT nextval('public.accounts_customuser_id_seq'::regclass);
 E   ALTER TABLE public.accounts_customuser ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213                       2604    24930    accounts_customuser_groups id    DEFAULT     �   ALTER TABLE ONLY public.accounts_customuser_groups ALTER COLUMN id SET DEFAULT nextval('public.accounts_customuser_groups_id_seq'::regclass);
 L   ALTER TABLE public.accounts_customuser_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    215    215                       2604    24938 '   accounts_customuser_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.accounts_customuser_user_permissions_id_seq'::regclass);
 V   ALTER TABLE public.accounts_customuser_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    216    217                       2604    24873    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    208    209                       2604    24883    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211                       2604    24865    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207                       2604    25012    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    223    223                       2604    24855    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205                       2604    24844    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203                       2604    25253    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    235    234    235                       2604    25054    leave_department id    DEFAULT     z   ALTER TABLE ONLY public.leave_department ALTER COLUMN id SET DEFAULT nextval('public.leave_department_id_seq'::regclass);
 B   ALTER TABLE public.leave_department ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    225    226    226                       2604    25062    leave_employee id    DEFAULT     v   ALTER TABLE ONLY public.leave_employee ALTER COLUMN id SET DEFAULT nextval('public.leave_employee_id_seq'::regclass);
 @   ALTER TABLE public.leave_employee ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228                       2604    25078    leave_leave_request id    DEFAULT     �   ALTER TABLE ONLY public.leave_leave_request ALTER COLUMN id SET DEFAULT nextval('public.leave_leave_request_id_seq'::regclass);
 E   ALTER TABLE public.leave_leave_request ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    232    231    232                       2604    25070    leave_leave_type id    DEFAULT     z   ALTER TABLE ONLY public.leave_leave_type ALTER COLUMN id SET DEFAULT nextval('public.leave_leave_type_id_seq'::regclass);
 B   ALTER TABLE public.leave_leave_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    229    230    230                       2604    25264    socialaccount_socialaccount id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    237    236    237                       2604    25275    socialaccount_socialapp id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    239    238    239                       2604    25283     socialaccount_socialapp_sites id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    241    240    241                       2604    25291    socialaccount_socialtoken id    DEFAULT     �   ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    243    242    243                      0    24972    account_emailaddress 
   TABLE DATA           W   COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public          postgres    false    219   �%                0    24982    account_emailconfirmation 
   TABLE DATA           ]   COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public          postgres    false    221   S&                0    24914    accounts_customuser 
   TABLE DATA           �   COPY public.accounts_customuser (id, password, last_login, is_superuser, first_name, last_name, is_staff, is_active, date_joined, email, full_name) FROM stdin;
    public          postgres    false    213   p&                0    24927    accounts_customuser_groups 
   TABLE DATA           Q   COPY public.accounts_customuser_groups (id, customuser_id, group_id) FROM stdin;
    public          postgres    false    215   �'                0    24935 $   accounts_customuser_user_permissions 
   TABLE DATA           `   COPY public.accounts_customuser_user_permissions (id, customuser_id, permission_id) FROM stdin;
    public          postgres    false    217   �'                0    24870 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    209   �'                0    24880    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    211   �'                0    24862    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    207   (      !          0    25031    authtoken_token 
   TABLE DATA           @   COPY public.authtoken_token (key, created, user_id) FROM stdin;
    public          postgres    false    224   �*                 0    25009    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    223   -+                0    24852    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    205   ",                0    24841    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    203   �,      *          0    25238    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    233   70      ,          0    25250    django_site 
   TABLE DATA           7   COPY public.django_site (id, domain, name) FROM stdin;
    public          postgres    false    235   *2      #          0    25051    leave_department 
   TABLE DATA           L   COPY public.leave_department (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    226   Y2      %          0    25059    leave_employee 
   TABLE DATA           q   COPY public.leave_employee (id, emp_id, name, gender, mobile, created_at, updated_at, department_id) FROM stdin;
    public          postgres    false    228   }3      )          0    25075    leave_leave_request 
   TABLE DATA           �   COPY public.leave_leave_request (id, start_date, end_date, description, created_at, updated_at, employee_id, leave_id) FROM stdin;
    public          postgres    false    232   �4      '          0    25067    leave_leave_type 
   TABLE DATA           L   COPY public.leave_leave_type (id, name, created_at, updated_at) FROM stdin;
    public          postgres    false    230   s6      .          0    25261    socialaccount_socialaccount 
   TABLE DATA           v   COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public          postgres    false    237   7      0          0    25272    socialaccount_socialapp 
   TABLE DATA           ]   COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public          postgres    false    239   87      2          0    25280    socialaccount_socialapp_sites 
   TABLE DATA           R   COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public          postgres    false    241   U7      4          0    25288    socialaccount_socialtoken 
   TABLE DATA           l   COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public          postgres    false    243   r7      O           0    0    account_emailaddress_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 2, true);
          public          postgres    false    218            P           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);
          public          postgres    false    220            Q           0    0 !   accounts_customuser_groups_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.accounts_customuser_groups_id_seq', 1, false);
          public          postgres    false    214            R           0    0    accounts_customuser_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.accounts_customuser_id_seq', 2, true);
          public          postgres    false    212            S           0    0 +   accounts_customuser_user_permissions_id_seq    SEQUENCE SET     Z   SELECT pg_catalog.setval('public.accounts_customuser_user_permissions_id_seq', 1, false);
          public          postgres    false    216            T           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    208            U           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    210            V           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 68, true);
          public          postgres    false    206            W           0    0    django_admin_log_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 4, true);
          public          postgres    false    222            X           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 17, true);
          public          postgres    false    204            Y           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 44, true);
          public          postgres    false    202            Z           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
          public          postgres    false    234            [           0    0    leave_department_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.leave_department_id_seq', 12, true);
          public          postgres    false    225            \           0    0    leave_employee_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.leave_employee_id_seq', 6, true);
          public          postgres    false    227            ]           0    0    leave_leave_request_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.leave_leave_request_id_seq', 7, true);
          public          postgres    false    231            ^           0    0    leave_leave_type_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.leave_leave_type_id_seq', 5, true);
          public          postgres    false    229            _           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);
          public          postgres    false    236            `           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);
          public          postgres    false    238            a           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);
          public          postgres    false    240            b           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);
          public          postgres    false    242            ?           2606    25005 3   account_emailaddress account_emailaddress_email_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public            postgres    false    219            A           2606    24977 .   account_emailaddress account_emailaddress_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public            postgres    false    219            F           2606    24989 ;   account_emailconfirmation account_emailconfirmation_key_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public            postgres    false    221            H           2606    24987 8   account_emailconfirmation account_emailconfirmation_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public            postgres    false    221            .           2606    24924 1   accounts_customuser accounts_customuser_email_key 
   CONSTRAINT     m   ALTER TABLE ONLY public.accounts_customuser
    ADD CONSTRAINT accounts_customuser_email_key UNIQUE (email);
 [   ALTER TABLE ONLY public.accounts_customuser DROP CONSTRAINT accounts_customuser_email_key;
       public            postgres    false    213            3           2606    24943 Z   accounts_customuser_groups accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq UNIQUE (customuser_id, group_id);
 �   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq;
       public            postgres    false    215    215            6           2606    24932 :   accounts_customuser_groups accounts_customuser_groups_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_pkey;
       public            postgres    false    215            0           2606    24922 ,   accounts_customuser accounts_customuser_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.accounts_customuser
    ADD CONSTRAINT accounts_customuser_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.accounts_customuser DROP CONSTRAINT accounts_customuser_pkey;
       public            postgres    false    213            8           2606    24957 d   accounts_customuser_user_permissions accounts_customuser_user_customuser_id_permission_9632a709_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser_user_customuser_id_permission_9632a709_uniq UNIQUE (customuser_id, permission_id);
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser_user_customuser_id_permission_9632a709_uniq;
       public            postgres    false    217    217            <           2606    24940 N   accounts_customuser_user_permissions accounts_customuser_user_permissions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser_user_permissions_pkey PRIMARY KEY (id);
 x   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser_user_permissions_pkey;
       public            postgres    false    217            #           2606    24910    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    209            (           2606    24896 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    211    211            +           2606    24885 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    211            %           2606    24875    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    209                       2606    24887 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    207    207                        2606    24867 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    207            O           2606    25035 $   authtoken_token authtoken_token_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_pkey PRIMARY KEY (key);
 N   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_pkey;
       public            postgres    false    224            Q           2606    25037 +   authtoken_token authtoken_token_user_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_key UNIQUE (user_id);
 U   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_key;
       public            postgres    false    224            K           2606    25018 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    223                       2606    24859 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    205    205                       2606    24857 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    205                       2606    24849 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    203            _           2606    25245 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    233            c           2606    25257 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public            postgres    false    235            e           2606    25255    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public            postgres    false    235            S           2606    25056 &   leave_department leave_department_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.leave_department
    ADD CONSTRAINT leave_department_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.leave_department DROP CONSTRAINT leave_department_pkey;
       public            postgres    false    226            V           2606    25064 "   leave_employee leave_employee_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.leave_employee
    ADD CONSTRAINT leave_employee_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.leave_employee DROP CONSTRAINT leave_employee_pkey;
       public            postgres    false    228            \           2606    25083 ,   leave_leave_request leave_leave_request_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.leave_leave_request
    ADD CONSTRAINT leave_leave_request_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.leave_leave_request DROP CONSTRAINT leave_leave_request_pkey;
       public            postgres    false    232            X           2606    25072 &   leave_leave_type leave_leave_type_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.leave_leave_type
    ADD CONSTRAINT leave_leave_type_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.leave_leave_type DROP CONSTRAINT leave_leave_type_pkey;
       public            postgres    false    230            g           2606    25269 <   socialaccount_socialaccount socialaccount_socialaccount_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public            postgres    false    237            i           2606    25300 R   socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public            postgres    false    237    237            n           2606    25308 Y   socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public            postgres    false    241    241            l           2606    25277 4   socialaccount_socialapp socialaccount_socialapp_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public            postgres    false    239            p           2606    25285 @   socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public            postgres    false    241            v           2606    25298 S   socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public            postgres    false    243    243            x           2606    25296 8   socialaccount_socialtoken socialaccount_socialtoken_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public            postgres    false    243            =           1259    25006 (   account_emailaddress_email_03be32b2_like    INDEX     ~   CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public            postgres    false    219            B           1259    24996 %   account_emailaddress_user_id_2c513194    INDEX     i   CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public            postgres    false    219            C           1259    25003 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     �   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public            postgres    false    221            D           1259    25002 +   account_emailconfirmation_key_f43612bd_like    INDEX     �   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public            postgres    false    221            ,           1259    24941 '   accounts_customuser_email_4fd8e7ce_like    INDEX     |   CREATE INDEX accounts_customuser_email_4fd8e7ce_like ON public.accounts_customuser USING btree (email varchar_pattern_ops);
 ;   DROP INDEX public.accounts_customuser_email_4fd8e7ce_like;
       public            postgres    false    213            1           1259    24954 1   accounts_customuser_groups_customuser_id_bc55088e    INDEX     �   CREATE INDEX accounts_customuser_groups_customuser_id_bc55088e ON public.accounts_customuser_groups USING btree (customuser_id);
 E   DROP INDEX public.accounts_customuser_groups_customuser_id_bc55088e;
       public            postgres    false    215            4           1259    24955 ,   accounts_customuser_groups_group_id_86ba5f9e    INDEX     w   CREATE INDEX accounts_customuser_groups_group_id_86ba5f9e ON public.accounts_customuser_groups USING btree (group_id);
 @   DROP INDEX public.accounts_customuser_groups_group_id_86ba5f9e;
       public            postgres    false    215            9           1259    24968 ;   accounts_customuser_user_permissions_customuser_id_0deaefae    INDEX     �   CREATE INDEX accounts_customuser_user_permissions_customuser_id_0deaefae ON public.accounts_customuser_user_permissions USING btree (customuser_id);
 O   DROP INDEX public.accounts_customuser_user_permissions_customuser_id_0deaefae;
       public            postgres    false    217            :           1259    24969 ;   accounts_customuser_user_permissions_permission_id_aea3d0e5    INDEX     �   CREATE INDEX accounts_customuser_user_permissions_permission_id_aea3d0e5 ON public.accounts_customuser_user_permissions USING btree (permission_id);
 O   DROP INDEX public.accounts_customuser_user_permissions_permission_id_aea3d0e5;
       public            postgres    false    217            !           1259    24911    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    209            &           1259    24907 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    211            )           1259    24908 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    211                       1259    24893 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    207            M           1259    25043 !   authtoken_token_key_10f0b77e_like    INDEX     p   CREATE INDEX authtoken_token_key_10f0b77e_like ON public.authtoken_token USING btree (key varchar_pattern_ops);
 5   DROP INDEX public.authtoken_token_key_10f0b77e_like;
       public            postgres    false    224            I           1259    25029 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    223            L           1259    25030 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    223            ]           1259    25247 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    233            `           1259    25246 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    233            a           1259    25258     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public            postgres    false    235            T           1259    25089 %   leave_employee_department_id_ff8f5c6c    INDEX     i   CREATE INDEX leave_employee_department_id_ff8f5c6c ON public.leave_employee USING btree (department_id);
 9   DROP INDEX public.leave_employee_department_id_ff8f5c6c;
       public            postgres    false    228            Y           1259    25100 (   leave_leave_request_employee_id_b83654f9    INDEX     o   CREATE INDEX leave_leave_request_employee_id_b83654f9 ON public.leave_leave_request USING btree (employee_id);
 <   DROP INDEX public.leave_leave_request_employee_id_b83654f9;
       public            postgres    false    232            Z           1259    25101 %   leave_leave_request_leave_id_839dc45e    INDEX     i   CREATE INDEX leave_leave_request_leave_id_839dc45e ON public.leave_leave_request USING btree (leave_id);
 9   DROP INDEX public.leave_leave_request_leave_id_839dc45e;
       public            postgres    false    232            j           1259    25306 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     w   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public            postgres    false    237            q           1259    25320 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     {   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public            postgres    false    241            r           1259    25319 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     �   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public            postgres    false    241            s           1259    25331 -   socialaccount_socialtoken_account_id_951f210e    INDEX     y   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public            postgres    false    243            t           1259    25332 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     q   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public            postgres    false    243            �           2606    24990 T   account_emailaddress account_emailaddress_user_id_2c513194_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_accounts_customuser_id;
       public          postgres    false    219    213    2864            �           2606    24997 U   account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public          postgres    false    2881    219    221            ~           2606    24958 ]   accounts_customuser_user_permissions accounts_customuser__customuser_id_0deaefae_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser__customuser_id_0deaefae_fk_accounts_ FOREIGN KEY (customuser_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser__customuser_id_0deaefae_fk_accounts_;
       public          postgres    false    2864    213    217            |           2606    24944 S   accounts_customuser_groups accounts_customuser__customuser_id_bc55088e_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser__customuser_id_bc55088e_fk_accounts_ FOREIGN KEY (customuser_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser__customuser_id_bc55088e_fk_accounts_;
       public          postgres    false    215    2864    213                       2606    24963 ]   accounts_customuser_user_permissions accounts_customuser__permission_id_aea3d0e5_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_user_permissions
    ADD CONSTRAINT accounts_customuser__permission_id_aea3d0e5_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_user_permissions DROP CONSTRAINT accounts_customuser__permission_id_aea3d0e5_fk_auth_perm;
       public          postgres    false    2848    207    217            }           2606    24949 X   accounts_customuser_groups accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.accounts_customuser_groups
    ADD CONSTRAINT accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.accounts_customuser_groups DROP CONSTRAINT accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id;
       public          postgres    false    2853    215    209            {           2606    24902 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    211    207    2848            z           2606    24897 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    209    2853    211            y           2606    24888 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    205    207    2843            �           2606    25044 J   authtoken_token authtoken_token_user_id_35299eff_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.authtoken_token
    ADD CONSTRAINT authtoken_token_user_id_35299eff_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.authtoken_token DROP CONSTRAINT authtoken_token_user_id_35299eff_fk_accounts_customuser_id;
       public          postgres    false    224    213    2864            �           2606    25019 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2843    223    205            �           2606    25024 L   django_admin_log django_admin_log_user_id_c564eba6_fk_accounts_customuser_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_customuser_id FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_accounts_customuser_id;
       public          postgres    false    223    213    2864            �           2606    25107 K   leave_employee leave_employee_department_id_ff8f5c6c_fk_leave_department_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_employee
    ADD CONSTRAINT leave_employee_department_id_ff8f5c6c_fk_leave_department_id FOREIGN KEY (department_id) REFERENCES public.leave_department(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.leave_employee DROP CONSTRAINT leave_employee_department_id_ff8f5c6c_fk_leave_department_id;
       public          postgres    false    226    2899    228            �           2606    25090 Q   leave_leave_request leave_leave_request_employee_id_b83654f9_fk_leave_employee_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_leave_request
    ADD CONSTRAINT leave_leave_request_employee_id_b83654f9_fk_leave_employee_id FOREIGN KEY (employee_id) REFERENCES public.leave_employee(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.leave_leave_request DROP CONSTRAINT leave_leave_request_employee_id_b83654f9_fk_leave_employee_id;
       public          postgres    false    228    232    2902            �           2606    25095 P   leave_leave_request leave_leave_request_leave_id_839dc45e_fk_leave_leave_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.leave_leave_request
    ADD CONSTRAINT leave_leave_request_leave_id_839dc45e_fk_leave_leave_type_id FOREIGN KEY (leave_id) REFERENCES public.leave_leave_type(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.leave_leave_request DROP CONSTRAINT leave_leave_request_leave_id_839dc45e_fk_leave_leave_type_id;
       public          postgres    false    232    230    2904            �           2606    25321 O   socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public          postgres    false    243    237    2919            �           2606    25326 K   socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public          postgres    false    243    2924    239            �           2606    25314 P   socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public          postgres    false    235    241    2917            �           2606    25309 U   socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public          postgres    false    241    2924    239            �           2606    25301 N   socialaccount_socialaccount socialaccount_social_user_id_8146e70c_fk_accounts_    FK CONSTRAINT     �   ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_social_user_id_8146e70c_fk_accounts_ FOREIGN KEY (user_id) REFERENCES public.accounts_customuser(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_social_user_id_8146e70c_fk_accounts_;
       public          postgres    false    213    2864    237               D   x�3�L��ML,1�tH�M���K���,BC.#Ό�\��Ģ���Ԝ̌��̒���|�#�=... ���            x������ � �           x�m��j�@����*\d'�s&3f(��P�
j�`B�L�1�d�h�A��f'���8�~�PR�e��戀�Ol� ��Ά���U	{^7<�1��Y�q��g��Z���uuنW�{ (�� �����8�KrBn����u(x����8��E�2���*LS�VVNc���s�1M�,/�faG�cR˙��?I5���Y=���0���������(�u"�!-	���,=�B��G���a��Oe��lџ�T��3�X_�eY��L_q            x������ � �            x������ � �            x������ � �            x������ � �         �  x�}�ݎ�0F����Tk~��B/+U��[�X [���13�Y�.��8cg�7���^O�����ezg��_�3=ڌ��Oӿ{�BI�������P� ��� �
����{7��Л�Ԥ`+- �)��~���bϢ$9*�[�O�c49	�o�޴\|�^�8��a$����w�v�u�N�s�� .m�
���l|�����D4���z��}Xے��ɺ���=w�c��eo�&Y�ۍ~}o*�Y��6�=߳#0�aF��G���L��-��aA֟6�1�q)��f .j��uh�^��{�ݶ_Ӻ.�L
T��a�S��03�&Xj�S�����u�~wӽY���"-�͋cIP7����Q��ma�J{K�� �ԎڮYפm�G�����A�*m��琈Ã!�M�P(zo"a�0����k�8��G[d_u�	�f�_u�!�f�N0����NN����T?a���$	}q�~ݙ��?�_u(Q�'�x�~2.�s�c^��V�%��׊��4�\�N�΀H�kD1��~l��W�Tl	{Q6�4�n��S�j?#K����95ކ��ƕ|<�g[��Tl?�"y�3H���a�z�'�p|�DJv��7�띵]�.܂R�~?�߄@ǯBE�C`ç�"��v�?��^+a.ڪ::� h��h�2 �gΩ�J�"���?ۏ��      !   K   x���� ��V�F� Q��|���KȮ���1���pV�D�e�3]��~��+Ћx�-HmF�$�O�9���          �   x�}�MK�@Eד_1�V;�7_��J��;���g'm2�$)��ݤAEDw�.�9�"S�`~��T�F�n@3d'b�u���L��Y��u���>�m�s#�}���r-n�X��Ӓ��˖��[�*i���Z��d�#��Äk�V����QՄ�?P.�2%��~A�7����u�&e�L�g�1����o͡�u�+���Y��i�_��3\��,^dQO�`U         �   x�m�[j1E��Ŕ(�v/�"f��įZr`v�����b���&�1�>]$Z�p\�
YJp�.E�=ɥ��qC��Fmʢ�@�;t9�[-�$BW<�:k�Y�xR��y�Ҍ���-��J`�7�4��2����s;g�����Z�[2ۛ�Z
U� ���F�\,�qx1	٧I��"]��g�iŊ�WQ��/D| �"�         0  x���ˎ�0Eי�辨!�z�[
F�I�:v��`��KK���
��7����(�n�wS���Ɲ|�5SS�;(~�C�7P?%�DY�@�wAo�!���y�7��O�(eQ�)�����YqU	���!W}�Na��0��ql�.V���ӷ�;�W%)$��(�U�.J�ȏp�����͢�Wy��<�j��4>�0�"aV	u+�������p_s[�Zԋ�]E4o�߹�݈���h�K/n�0��|�ms��~}}8�0��Oa�cxЖ���U��y�3W%X��ơW�H(��M�W)������d�p�V���g�(���~ݤ����k�o�zo�W۲�R��0����MOO���&L��{F�
�H�<4��rbt��LJ*pT��{^���hF�e�C����S�m�|E$W�QE�,���O��xo����}1�,&� :�)�S�'�ЉZ̋��aZ<
�Q{��4)���Bڵ��Ϫ�Jht6�l���$��D���+��2�T�.E�
/M��[���԰���Wq>�ɸ�ⶀ�
@ǐ�͸���-oH�]�����[ANĴ�ȸ��J�qN��C����q�:�i�qŗyw�ci��ҥ�S�Ϲ{���:H�s� �q"UƵv�yʩ��z���8�)��S$Kλ�߫4�)��S�WVH��lr��>u���x�VC��ۍ�r�<9�rF����Q�����Ji�$d�zz�靟���\��c�T�tK܍���v�0+�5Yڲ��t��P
��U�jg��|7*���4Ԟ�f~��zn'h�SY�/D��W�������      *   �  x�=�I��@  �����`
��]��|P�)��b,�BN�ۤ��O��W���Ý�q�F,i��y������t�o:��Q�vo�Q?,y��P���cT�T�|��[̻��B���;Ơ��ŧ�$�s�ڦ)�`V�B�N��&I�K�9��e�N$���g4	������S3�
�G���$���A�I�6�v��[љ�e-Lx� �]Ԭ�J��
�Aѹ�]~�U� ��Pz�i��`��F^[º�� �0���V����(��J�\�U;��H��;Y��в�Ŕ�,uӿ"�oQ���c��/pny���h��r�[�����u�zf����v�ۉ1�����{�w%e.=eW�$�]�-`4s"١�w��$@�b媦�**���s��jS�F��:2��,�}!��*o�9�5�B�!�.V�w��sp��c�<h�(D�a�&-�hs7-�17�};��!|�xn�JKY@Q>C����q"��      ,      x�3�L,J��M���K��E�q��qqq ܂P      #     x�}�=O�0@�_��z�?bg-K$�&7�D�U�¿'����==������Sa��mm�fC���p�����)�1��g���[�+��"nJ�!1w���BG{r��bgI��c�����V4<���YR����n�ӑ��W2�ǻ�b�i����%�
���%Sy]�`M��kl�~�H����L��[�S�)x���\�hC�9o�bgI�����ͥ�6B��_�gI���nt-��
���Dا��}��l��ۚ������(�"�h«T      %   5  x����j�0���S�^bv��Y�f(%��=zQ����	Ę�<}��m'P{��|̌��`+�T�Z��Օz껴wu�6� ��	��
)F�[
D7@��(�C6�|���T�{U6#o��ĳ!�Z��6?,�=��]��v�����j%� Ad�ȹ٧���r��������x�;���`o��WxsU����ƀm:����M!O�C�s;?�(8�h�*�7�Ȉ��}n69�Z��z٧��G<3�B$W8�8G^�N�c>�V��2����H��I:@�L��t��5E0�מ�����s!��n��      )   �  x���Ms�0���+to��e0�^rꭝɥ�ڻ��>Z����ِ�v�����G�&(PDy��5����4��:�w(�=�:�B�g��]�S�����f�1e�_����`����"��4����o� ��B�O�q����_=�C���r�=�8� �+�WFW��P��G��*ʼC	�YT$�W�W�?DA�j��Mw���.3m��`U��*�o~�}i;��q�Z]������1�1J��S Yd�Ј�i��l!��q1{�������O�u��fF��e�0� L��sDWx&��/7�18]~QKS\w����s�-��Ú���i�v��
.�&~�Gb��QY���^�)�Ŗsg����@���f�ovs�Gn���%H3�9]�F�{�?U���g���_~:�      '   �   x�}�1�0F�ܯp��������"�.A���ԡ�^�j�·�����Н����!k�W>�ȯ��k���m��Q���H����(�ە�r�q��	�y%�wf�ۗ$�ak)�\I|R�n{���\��H���hXf4s������;sD x��G�      .      x������ � �      0      x������ � �      2      x������ � �      4      x������ � �     