-- Table: public.Authors

-- DROP TABLE IF EXISTS public."Authors";

CREATE TABLE IF NOT EXISTS public."Authors"
(
    author_id integer NOT NULL,
    author_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Authors_pkey" PRIMARY KEY (author_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Authors"
    OWNER to postgres;