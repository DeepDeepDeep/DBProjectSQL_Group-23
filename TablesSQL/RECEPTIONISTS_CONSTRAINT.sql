--------------------------------------------------------
--  Constraints for Table RECEPTIONISTS
--------------------------------------------------------

  ALTER TABLE "RECEPTIONISTS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "RECEPTIONISTS" ADD CONSTRAINT "RECEPTIONISTS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
