--------------------------------------------------------
--  Constraints for Table PAYMENT_METHOD
--------------------------------------------------------

  ALTER TABLE "PAYMENT_METHOD" MODIFY ("PM_ID" NOT NULL ENABLE);
  ALTER TABLE "PAYMENT_METHOD" ADD CONSTRAINT "PAYMENT_METHOD_PK" PRIMARY KEY ("PM_ID")
  USING INDEX  ENABLE;
