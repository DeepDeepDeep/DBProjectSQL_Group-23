--------------------------------------------------------
--  Ref Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_FK1" FOREIGN KEY ("EMP_ID")
	  REFERENCES "PERSON" ("ID") ON DELETE CASCADE ENABLE;
