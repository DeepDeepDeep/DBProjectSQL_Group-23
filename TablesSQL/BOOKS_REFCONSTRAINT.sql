--------------------------------------------------------
--  Ref Constraints for Table BOOKS
--------------------------------------------------------

  ALTER TABLE "BOOKS" ADD CONSTRAINT "BOOKS_FK1" FOREIGN KEY ("PUBLISHER_ID")
	  REFERENCES "PUBLISHERS" ("PUBLISHER_ID") ON DELETE CASCADE ENABLE;
