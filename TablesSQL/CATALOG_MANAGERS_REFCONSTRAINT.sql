--------------------------------------------------------
--  Ref Constraints for Table CATALOG_MANAGERS
--------------------------------------------------------

  ALTER TABLE "CATALOG_MANAGERS" ADD CONSTRAINT "CATALOG_MANAGERS_FK1" FOREIGN KEY ("ID")
	  REFERENCES "PERSON" ("ID") ON DELETE CASCADE ENABLE;
