CREATE SEQUENCE my_pg_table_id_seq;

CREATE OR REPLACE TABLE public.my_pg_table
(
    id INTEGER NOT NULL DEFAULT nextval('my_pg_table_id_seq') PRIMARY KEY,
    data JSONB NOT NULL,
    updated TIMESTAMP WITHOUT TIME ZONE DEFAULT now()
);
ALTER SEQUENCE my_pg_table_id_seq OWNED BY public.my_pg_table.id;

INSERT INTO public.my_pg_table(data) VALUES('{"name": "John", "age": 60}');
INSERT INTO public.my_pg_table(data) VALUES('{"name": "Trump", "age": 60}');
INSERT INTO public.my_pg_table(data) VALUES('{"name": "Xi Jinping", "age": 60}');
INSERT INTO public.my_pg_table(data) VALUES('{"name": "NPT", "age": 60}');