-- Table: public.Genres

-- DROP TABLE IF EXISTS public."Genres";

CREATE TABLE IF NOT EXISTS public."Genres"
(
    genre_id integer NOT NULL,
    genre_name character varying(32) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Genres_pkey" PRIMARY KEY (genre_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Genres"
    OWNER to postgres;