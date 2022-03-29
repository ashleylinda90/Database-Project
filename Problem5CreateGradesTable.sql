-- Table: public.Grades

-- DROP TABLE IF EXISTS public."Grades";

CREATE TABLE IF NOT EXISTS public."Grades"
(
    grade_id integer NOT NULL,
    student_id integer NOT NULL,
    course_id integer NOT NULL,
    teacher_id integer NOT NULL,
    grade integer NOT NULL,
    CONSTRAINT "Grades_pkey" PRIMARY KEY (grade_id, student_id, course_id),
    CONSTRAINT course_fkey FOREIGN KEY (course_id)
        REFERENCES public."Courses" (course_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT student_fkey FOREIGN KEY (student_id)
        REFERENCES public."Students" (student_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT teacher_fkey FOREIGN KEY (teacher_id)
        REFERENCES public."Teachers" (teacher_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Grades"
    OWNER to postgres;