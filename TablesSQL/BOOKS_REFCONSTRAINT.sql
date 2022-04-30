--------------------------------------------------------
--  Ref Constraints for Table BOOKS
--------------------------------------------------------

  ALTER TABLE "BOOKS" ADD CONSTRAINT "BOOKS_FK_PID" FOREIGN KEY ("PUBLISHER_ID")
	  REFERENCES "PUBLISHERS" ("PUBLISHER_ID") ON DELETE SET NULL ENABLE;
