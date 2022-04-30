--------------------------------------------------------
--  Constraints for Table PUBLISHERS
--------------------------------------------------------

  ALTER TABLE "PUBLISHERS" MODIFY ("PUBLISHER_ID" NOT NULL ENABLE);
  ALTER TABLE "PUBLISHERS" ADD CONSTRAINT "PUBLISHERS_PK" PRIMARY KEY ("PUBLISHER_ID")
  USING INDEX  ENABLE;
