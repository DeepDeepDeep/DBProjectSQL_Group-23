--------------------------------------------------------
--  Ref Constraints for Table GUEST
--------------------------------------------------------

  ALTER TABLE "GUEST" ADD CONSTRAINT "GUEST_FK1" FOREIGN KEY ("GOLDCARD_ID")
	  REFERENCES "LIBRARY_CARD" ("CARD_ID") ON DELETE CASCADE ENABLE;
