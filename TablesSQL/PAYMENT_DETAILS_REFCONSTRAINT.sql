--------------------------------------------------------
--  Ref Constraints for Table PAYMENT_DETAILS
--------------------------------------------------------

  ALTER TABLE "PAYMENT_DETAILS" ADD CONSTRAINT "PAYMENT_DETAILS_FK1" FOREIGN KEY ("PAYMENT_ID")
	  REFERENCES "PAYMENT_METHOD" ("PM_ID") ON DELETE CASCADE ENABLE;
