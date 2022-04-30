--------------------------------------------------------
--  Constraints for Table PAYMENT_DETAILS
--------------------------------------------------------

  ALTER TABLE "PAYMENT_DETAILS" MODIFY ("PAYMENT_ID" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT_DETAILS" ADD CONSTRAINT "PAYMENT_DETAILS_PK" PRIMARY KEY ("PAYMENT_ID")
  USING INDEX  ENABLE;
