-- Table: public.Courses

-- DROP TABLE IF EXISTS public."Courses";

CREATE TABLE IF NOT EXISTS public."Courses"
(
    course_id integer NOT NULL,
    course_name character varying(16) COLLATE pg_catalog."default" NOT NULL,
    CONSTRAINT "Courses_pkey" PRIMARY KEY (course_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Courses"
    OWNER to postgres;