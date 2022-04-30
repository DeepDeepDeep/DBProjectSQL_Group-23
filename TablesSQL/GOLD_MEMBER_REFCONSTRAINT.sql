--------------------------------------------------------
--  Ref Constraints for Table GOLD_MEMBER
--------------------------------------------------------

  ALTER TABLE "GOLD_MEMBER" ADD CONSTRAINT "GOLD_MEMBER_FK1" FOREIGN KEY ("ID")
	  REFERENCES "MEMBER" ("MEM_ID") ON DELETE CASCADE ENABLE;
