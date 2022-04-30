--------------------------------------------------------
--  Constraints for Table EMPLOYEE
--------------------------------------------------------

  ALTER TABLE "EMPLOYEE" MODIFY ("EMP_ID" NOT NULL ENABLE);
  ALTER TABLE "EMPLOYEE" ADD CONSTRAINT "EMPLOYEE_PK" PRIMARY KEY ("EMP_ID")
  USING INDEX  ENABLE;
