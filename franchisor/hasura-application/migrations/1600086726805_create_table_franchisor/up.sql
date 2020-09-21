CREATE TABLE public.franchisor (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    "addressId" uuid,
    title character varying NOT NULL,
    name character varying NOT NULL,
    "createdAt" timestamp without time zone DEFAULT now() NOT NULL,
    "updatedAt" timestamp without time zone DEFAULT now() NOT NULL,
    "referenceId" character varying,
    "isActive" boolean DEFAULT true NOT NULL,
    "createdAccountId" uuid,
    "updatedAccountId" uuid
);

ALTER TABLE ONLY public.franchisor
    ADD CONSTRAINT franchisor_pkey PRIMARY KEY (id);
