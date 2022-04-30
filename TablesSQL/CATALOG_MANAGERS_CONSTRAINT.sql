--------------------------------------------------------
--  Constraints for Table CATALOG_MANAGERS
--------------------------------------------------------

  ALTER TABLE "CATALOG_MANAGERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CATALOG_MANAGERS" ADD CONSTRAINT "CATALOG_MANAGERS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
