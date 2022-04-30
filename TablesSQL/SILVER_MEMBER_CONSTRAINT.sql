--------------------------------------------------------
--  Constraints for Table SILVER_MEMBER
--------------------------------------------------------

  ALTER TABLE "SILVER_MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "SILVER_MEMBER" ADD CONSTRAINT "SILVER_MEMBER_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
