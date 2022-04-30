--------------------------------------------------------
--  Ref Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "MEMBER" ADD CONSTRAINT "MEMBER_FK1" FOREIGN KEY ("MEM_ID")
	  REFERENCES "PERSON" ("ID") ON DELETE CASCADE ENABLE;
