--------------------------------------------------------
--  Ref Constraints for Table AUTHORS
--------------------------------------------------------

  ALTER TABLE "AUTHORS" ADD CONSTRAINT "AUTHORS_FK1" FOREIGN KEY ("BOOK_ID")
	  REFERENCES "BOOKS" ("BOOK_ID") ON DELETE CASCADE ENABLE;
