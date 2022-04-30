--------------------------------------------------------
--  Ref Constraints for Table LIBRARY_CARD
--------------------------------------------------------

  ALTER TABLE "LIBRARY_CARD" ADD CONSTRAINT "LIBRARY_CARD_FK1" FOREIGN KEY ("PERSON_ID")
	  REFERENCES "MEMBER" ("MEM_ID") ON DELETE CASCADE ENABLE;
