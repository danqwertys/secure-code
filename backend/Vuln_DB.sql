ALTER DATABASE vuln OWNER TO postgres;


CREATE TABLE public.products (
    product_id integer NOT NULL,
    product_name character varying(255) NOT NULL,
    product_description character varying(255) NOT NULL,
    product_owner character varying(255) NOT NULL
);

CREATE TABLE public.users (
    user_id integer NOT NULL,
    email character varying(255) NOT NULL,
    password character varying(255) NOT NULL
);

ALTER TABLE public.products OWNER TO postgres;

ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 16516)
-- Name: products_product_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_product_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.products_product_id_seq OWNER TO postgres;

--
-- TOC entry 4844 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_product_id_seq OWNED BY public.products.product_id;


--
-- TOC entry 4690 (class 2604 OID 16520)
-- Name: products product_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN product_id SET DEFAULT nextval('public.products_product_id_seq'::regclass);


--
-- TOC entry 4837 (class 0 OID 16517)
-- Dependencies: 217
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.products VALUES (1, 'SECRET PRODUCT', 'THIS IS SECRET PRODUCT, NO ONE CAN ACCESS THIS', 'superadmin@gdn-commerce.com');
INSERT INTO public.products VALUES (2, 'Iphone', 'Iphone 16 PRO MAX', 'muhammad.muis@gdn-commerce.com');
INSERT INTO public.products VALUES (3, 'Samsung', 'Samsung S24 Ultra', 'muhammad.muis@gdn-commerce.com');
INSERT INTO public.products VALUES (4, 'Acer', 'Acer Laptop A256U', 'muhammad.muis@gdn-commerce.com');
INSERT INTO public.products VALUES (5, 'Blackberry', 'Blackberry Blueberry', 'muhammad.muis@gdn-commerce.com');
INSERT INTO public.products VALUES (100, 'SUPER SECRET PRODUCT', 'IF YOU CAN SEE THIS, ITS SUPER SECRET', 'superadmin@gdn-commerce.com');

INSERT INTO public.users VALUES (1, 'superadmin@gdn-commerce.com', 'a3876fafbc8b9b9d3820b6e3a610e3d2');
INSERT INTO public.users VALUES (2, 'muhammad.muis@gdn-commerce.com', '9a8896ebf2e4a99e4b1c0174504c898a');

--
-- TOC entry 4845 (class 0 OID 0)
-- Dependencies: 216
-- Name: products_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_product_id_seq', 5, true);


--
-- TOC entry 4692 (class 2606 OID 16524)
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (product_id);


-- Completed on 2024-05-28 10:57:27

--
-- PostgreSQL database dump complete
--

