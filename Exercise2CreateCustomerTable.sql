-- Table: public.Customer

-- DROP TABLE IF EXISTS public."Customer";

CREATE TABLE IF NOT EXISTS public."Customer"
(
    customer_id integer NOT NULL,
    customer_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    phone_number integer NOT NULL,
    CONSTRAINT "Customer_pkey" PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Customer"
    OWNER to postgres;