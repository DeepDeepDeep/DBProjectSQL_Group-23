--------------------------------------------------------
--  Constraints for Table BOOKS
--------------------------------------------------------

  ALTER TABLE "BOOKS" MODIFY ("BOOK_ID" NOT NULL ENABLE);
  ALTER TABLE "BOOKS" ADD CONSTRAINT "BOOKS_PK" PRIMARY KEY ("BOOK_ID")
  USING INDEX  ENABLE;
