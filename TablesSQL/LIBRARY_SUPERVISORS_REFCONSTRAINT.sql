--------------------------------------------------------
--  Ref Constraints for Table LIBRARY_SUPERVISORS
--------------------------------------------------------

  ALTER TABLE "LIBRARY_SUPERVISORS" ADD CONSTRAINT "LIBRARY_SUPERVISORS_FK1" FOREIGN KEY ("ID")
	  REFERENCES "EMPLOYEE" ("EMP_ID") ON DELETE CASCADE ENABLE;
