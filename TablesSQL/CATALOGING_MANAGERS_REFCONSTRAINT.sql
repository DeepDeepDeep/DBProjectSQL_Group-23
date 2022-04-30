--------------------------------------------------------
--  Ref Constraints for Table CATALOGING_MANAGERS
--------------------------------------------------------

  ALTER TABLE "CATALOGING_MANAGERS" ADD CONSTRAINT "CATALOGING_MANAGERS_FK1" FOREIGN KEY ("ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ON DELETE CASCADE ENABLE;
