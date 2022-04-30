--------------------------------------------------------
--  Constraints for Table GOLD_MEMBER
--------------------------------------------------------

  ALTER TABLE "GOLD_MEMBER" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "GOLD_MEMBER" ADD CONSTRAINT "GOLD_MEMBER_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
