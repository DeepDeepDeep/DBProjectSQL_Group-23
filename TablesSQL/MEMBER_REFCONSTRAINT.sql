--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_FK1" FOREIGN KEY ("MEM_ID")
	  REFERENCES "PERSON" ("ID") ON DELETE CASCADE ENABLE;
  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_FK2" FOREIGN KEY ("LIBRARY_CARD_ID")
	  REFERENCES "LIBRARY_CARD" ("CARD_ID") ON DELETE CASCADE ENABLE;
