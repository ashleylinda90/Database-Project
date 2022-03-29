-- Table: public.Service

-- DROP TABLE IF EXISTS public."Service";

CREATE TABLE IF NOT EXISTS public."Service"
(
    service_id integer NOT NULL,
    service_type character varying(64) COLLATE pg_catalog."default" NOT NULL,
    service_price integer NOT NULL,
    CONSTRAINT "Service_pkey" PRIMARY KEY (service_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Service"
    OWNER to postgres;