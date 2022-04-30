--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_UK1" UNIQUE ("LIBRARY_CARD_ID")
  USING INDEX  ENABLE;
  ALTER TABLE "MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_PK" PRIMARY KEY ("MEM_ID")
  USING INDEX  ENABLE;
