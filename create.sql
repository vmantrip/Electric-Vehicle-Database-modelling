-- Table: public.dol_table

-- DROP TABLE IF EXISTS public.dol_table;

CREATE TABLE IF NOT EXISTS public.dol_table
(
    "DOL Vehicle ID" integer,
    "VIN (1-10)" character varying(20) COLLATE pg_catalog."default",
    "Vehicle Location" character varying(40) COLLATE pg_catalog."default",
    county character varying(20) COLLATE pg_catalog."default",
    city character varying(70) COLLATE pg_catalog."default",
    state character varying(20) COLLATE pg_catalog."default",
    "Postal Code" integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dol_table
    OWNER to postgres;





-- Table: public.dol_data_bcnf

-- DROP TABLE IF EXISTS public.dol_data_bcnf;

CREATE TABLE IF NOT EXISTS public.dol_data_bcnf
(
    "DOL Vehicle ID" integer NOT NULL,
    "VIN (1-10)" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "Vehicle Location" character varying(40) COLLATE pg_catalog."default" NOT NULL,
    "County" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "City" character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "State" character varying(20) COLLATE pg_catalog."default" NOT NULL,
    "Postal Code" integer NOT NULL,
    CONSTRAINT dol_data_bcnf_pkey PRIMARY KEY ("DOL Vehicle ID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.dol_data_bcnf
    OWNER to postgres;

INSERT INTO dol_data_bcnf ("DOL Vehicle ID", "VIN (1-10)", "Vehicle Location", "County", "City", "State", "Postal Code")
SELECT DISTINCT "DOL Vehicle ID", "VIN (1-10)", "Vehicle Location", "county", "city", "state", "Postal Code"
FROM dol_table;

-- Table: public.postal_code_bcnf

-- DROP TABLE IF EXISTS public.postal_code_bcnf;

CREATE TABLE IF NOT EXISTS public.postal_code_bcnf
(
    county character varying(20) COLLATE pg_catalog."default" NOT NULL,
    state character varying(20) COLLATE pg_catalog."default" NOT NULL,
    city character varying(70) COLLATE pg_catalog."default" NOT NULL,
    "Postal Code" integer
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.postal_code_bcnf
    OWNER to postgres;