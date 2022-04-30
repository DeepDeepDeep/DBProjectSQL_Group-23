--------------------------------------------------------
--  Constraints for Table CATALOGING_MANAGERS
--------------------------------------------------------

  ALTER TABLE "CATALOGING_MANAGERS" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "CATALOGING_MANAGERS" ADD CONSTRAINT "CATALOGING_MANAGERS_PK" PRIMARY KEY ("ID")
  USING INDEX  ENABLE;
