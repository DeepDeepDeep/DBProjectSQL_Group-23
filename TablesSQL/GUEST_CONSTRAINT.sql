--------------------------------------------------------
--  Constraints for Table GUEST
--------------------------------------------------------

  ALTER TABLE "GUEST" MODIFY ("GUEST_ID" NOT NULL ENABLE);
  ALTER TABLE "GUEST" MODIFY ("GOLDCARD_ID" NOT NULL ENABLE);
  ALTER TABLE "GUEST" ADD CONSTRAINT "GUEST_PK" PRIMARY KEY ("GUEST_ID", "GOLDCARD_ID")
  USING INDEX  ENABLE;
