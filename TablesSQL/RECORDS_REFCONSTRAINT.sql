--------------------------------------------------------
--  Ref Constraints for Table RECORDS
--------------------------------------------------------

  ALTER TABLE "RECORDS" ADD CONSTRAINT "RECORDS_FK1" FOREIGN KEY ("BORROWDETAIL_ID")
	  REFERENCES "BORROW_DETAILS" ("BORROW_ID") ON DELETE CASCADE ENABLE;
