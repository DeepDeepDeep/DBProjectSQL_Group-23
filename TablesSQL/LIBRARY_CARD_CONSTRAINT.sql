--------------------------------------------------------
--  Constraints for Table LIBRARY_CARD
--------------------------------------------------------

  ALTER TABLE "LIBRARY_CARD" MODIFY ("CARD_ID" NOT NULL ENABLE);
  ALTER TABLE "LIBRARY_CARD" ADD CONSTRAINT "LIBRARY_CARD_PK" PRIMARY KEY ("CARD_ID")
  USING INDEX  ENABLE;
