--------------------------------------------------------
--  Constraints for Table AUTHORS
--------------------------------------------------------

  ALTER TABLE "AUTHORS" MODIFY ("AUTHOR_ID" NOT NULL ENABLE);
  ALTER TABLE "AUTHORS" MODIFY ("BOOK_ID" NOT NULL ENABLE);
  ALTER TABLE "AUTHORS" ADD CONSTRAINT "AUTHORS_PK" PRIMARY KEY ("AUTHOR_ID", "BOOK_ID")
  USING INDEX  ENABLE;
