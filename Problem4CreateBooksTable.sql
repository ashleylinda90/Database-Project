-- Table: public.Books

-- DROP TABLE IF EXISTS public."Books";

CREATE TABLE IF NOT EXISTS public."Books"
(
    user_id integer NOT NULL,
    genre_id integer NOT NULL,
    author_id integer NOT NULL,
    CONSTRAINT "Books_pkey" PRIMARY KEY (user_id, genre_id, author_id),
    CONSTRAINT authors_fkey FOREIGN KEY (author_id)
        REFERENCES public."Authors" (author_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT genres_fkey FOREIGN KEY (genre_id)
        REFERENCES public."Genres" (genre_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT users_fkey FOREIGN KEY (user_id)
        REFERENCES public."Users" (user_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."Books"
    OWNER to postgres;