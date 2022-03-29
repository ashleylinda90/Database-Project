-- Table: public.Appointments

-- DROP TABLE IF EXISTS public."Appointments";

CREATE TABLE IF NOT EXISTS public."Appointments"
(
    appt_id integer NOT NULL,
    customer_id integer NOT NULL,
    employee_id integer NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    product_id integer,
    service_id integer NOT NULL,
    CONSTRAINT "Appointments_pkey" PRIMARY KEY (appt_id, customer_id, employee_id),
    CONSTRAINT customer_fkey FOREIGN KEY (customer_id)
        REFERENCES public."Customer" (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT employee_fkey FOREIGN KEY (employee_id)
        REFERENCES public."Employee" (employee_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT product_fkey FOREIGN KEY (product_id)
        REFERENCES public."Products" (product_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT service_fkey FOREIGN KEY (service_id)
        REFERENCES public."Service" (service_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Appointments"
    OWNER to postgres;