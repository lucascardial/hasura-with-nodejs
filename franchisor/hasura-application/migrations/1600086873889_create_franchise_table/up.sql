CREATE TABLE public.franchise (
    id uuid DEFAULT public.gen_random_uuid() NOT NULL,
    "franchisorId" uuid NOT NULL,
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

ALTER TABLE ONLY public.franchise
    ADD CONSTRAINT franchise_pkey PRIMARY KEY (id);
    
ALTER TABLE ONLY public.franchise
    ADD CONSTRAINT "franchise_franchisorId_fkey" FOREIGN KEY ("franchisorId") REFERENCES public.franchisor(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
