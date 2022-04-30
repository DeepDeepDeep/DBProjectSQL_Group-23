--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "MEMBER" 
   (	"MEM_ID" VARCHAR2(20 BYTE), 
	"LIBRARY_CARD_ID" VARCHAR2(20 BYTE), 
	"ENROLLMENT_DATE" DATE
   ) ;

   COMMENT ON COLUMN "MEMBER"."LIBRARY_CARD_ID" IS 'FK to LibraryCard';
