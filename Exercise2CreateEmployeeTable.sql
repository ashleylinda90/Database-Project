-- Table: public.Employee

-- DROP TABLE IF EXISTS public."Employee";

CREATE TABLE IF NOT EXISTS public."Employee"
(
    employee_id integer NOT NULL,
    employee_name character varying(64) COLLATE pg_catalog."default" NOT NULL,
    phone_number integer NOT NULL,
    address character varying(64) COLLATE pg_catalog."default" NOT NULL,
    pay_rate integer NOT NULL,
    CONSTRAINT "Employee_pkey" PRIMARY KEY (employee_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Employee"
    OWNER to postgres;