--------------------------------------------------------
--  Constraints for Table RECORDS
--------------------------------------------------------

  ALTER TABLE "RECORDS" MODIFY ("BORROWDETAIL_ID" NOT NULL ENABLE);
  ALTER TABLE "RECORDS" ADD CONSTRAINT "RECORDS_PK" PRIMARY KEY ("BORROWDETAIL_ID")
  USING INDEX  ENABLE;
