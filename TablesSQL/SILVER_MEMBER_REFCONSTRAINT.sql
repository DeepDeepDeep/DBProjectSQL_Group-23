--------------------------------------------------------
--  Ref Constraints for Table SILVER_MEMBER
--------------------------------------------------------

  ALTER TABLE "SILVER_MEMBER" ADD CONSTRAINT "SILVER_MEMBER_FK1" FOREIGN KEY ("ID")
	  REFERENCES "MEMBER" ("MEM_ID") ON DELETE CASCADE ENABLE;
