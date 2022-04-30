--------------------------------------------------------
--  Constraints for Table LIBRARY_SUPERVISORS
--------------------------------------------------------

  ALTER TABLE "LIBRARY_SUPERVISORS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_SUPERVISORS" ADD CONSTRAINT "LIBRARY_SUPERVISORS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
