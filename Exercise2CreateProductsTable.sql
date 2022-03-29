-- Table: public.Products

-- DROP TABLE IF EXISTS public."Products";

CREATE TABLE IF NOT EXISTS public."Products"
(
    product_id integer NOT NULL,
    product_name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    product_cost integer NOT NULL,
    current_stock integer NOT NULL,
    number_sold integer NOT NULL,
    CONSTRAINT "Products_pkey" PRIMARY KEY (product_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Products"
    OWNER to postgres;