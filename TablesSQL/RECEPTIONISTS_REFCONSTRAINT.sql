--------------------------------------------------------
--  Ref Constraints for Table RECEPTIONISTS
--------------------------------------------------------

  ALTER TABLE "RECEPTIONISTS" ADD CONSTRAINT "RECEPTIONISTS_FK1" FOREIGN KEY ("ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ON DELETE CASCADE ENABLE;
