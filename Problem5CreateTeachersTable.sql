-- Table: public.Teachers

-- DROP TABLE IF EXISTS public."Teachers";

CREATE TABLE IF NOT EXISTS public."Teachers"
(
    teacher_id integer NOT NULL,
    teacher_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    course_id integer NOT NULL,
    CONSTRAINT "Teachers_pkey" PRIMARY KEY (teacher_id),
    CONSTRAINT course_fkey FOREIGN KEY (course_id)
        REFERENCES public."Courses" (course_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Teachers"
    OWNER to postgres;