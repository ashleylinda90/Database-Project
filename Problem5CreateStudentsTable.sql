-- Table: public.Students

-- DROP TABLE IF EXISTS public."Students";

CREATE TABLE IF NOT EXISTS public."Students"
(
    student_id integer NOT NULL,
    student_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Students_pkey" PRIMARY KEY (student_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Students"
    OWNER to postgres;