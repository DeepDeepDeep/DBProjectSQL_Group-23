--------------------------------------------------------
--  Constraints for Table GUEST
--------------------------------------------------------

  ALTER TABLE "GUEST" MODIFY ("GUEST_ID" NOT NULL ENABLE);
  ALTER TABLE "GUEST" MODIFY ("GOLD_ID" NOT NULL ENABLE);
  ALTER TABLE "GUEST" ADD CONSTRAINT "GUEST_PK" PRIMARY KEY ("GUEST_ID", "GOLD_ID")
  USING INDEX  ENABLE;
